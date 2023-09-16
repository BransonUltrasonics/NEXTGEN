// $Header:   D:/databases/VMdb/archives/EN13849/Printf.c_v   1.11   09 Apr 2015 17:13:16   ewomack  $
/****************************************************************************/
/*                                                                          */
/*                                                                          */
/*      Copyright (c) Branson Ultrasonics Corporation, 2010-11              */
/*     This program is the property of Branson Ultrasonics Corporation      */
/*   Copying of this software is expressly forbidden, without the prior     */
/*   written consent of Branson Ultrasonics Corporation.                    */
/*                                                                          */
/*                                                                          */
/*                                                                          */
/*************************                         **************************/
/*--------------------------- MODULE DESCRIPTION ---------------------------

This is the module for diagnostics printf on serial port.

Module name: Printf

Filename:    Printf.c

--------------------------- TECHNICAL NOTES -------------------------------

This module implements printf function, but without all the overhead in the
Wind River tools library. Currently printf doesn't support floating point
values. Taken from Freescale sample code, used as per their license.
------------------------------ REVISIONS ---------------------------------
$Log:   D:/databases/VMdb/archives/EN13849/Printf.c_v  $
 * 
 *    Rev 1.11   09 Apr 2015 17:13:16   ewomack
 * Compiler warning cleanup.
 * 
 *    Rev 1.10   24 Aug 2011 11:24:54   ASharma6
 * For IW+ only - if in part contact state, if palm buttons are still pressed then stay in that state and the horn position becomes the new reference for collapse until the hands are released.
 * 
 *    Rev 1.8   10 Aug 2011 12:30:58   ASharma6
 * Printf returns without doing anything.
 * 
 *    Rev 1.7   20 Jul 2011 16:58:26   ASharma6
 * Modifications for review comments
 * 
 *    Rev 1.6   05 Jul 2011 11:00:38   ASharma6
 * ULS, CM changes
 * 
 *    Rev 1.3   22 Jun 2011 18:10:42   ASharma6
 * LE Fault reset allowed in horn up state
 * Part contact lost made more resilient
 * Cross monitoring detects other processor was reset and resets itself
 * SBeam diagnostics is more resilient
 * 
 *    Rev 1.2   31 Mar 2011 12:12:32   PDwivedi
 * Fixes after review.
 * 
 *    Rev 1.1   25 Mar 2011 09:07:02   ygupta
 * Initial Version with File and Function Headers. 
-------------------------------------------------------------------------*/

#include "stdio.h"
#include "string.h"
#include "Serial.h"

/********************************************************************/
tUINT32 PrintfEnabled = FALSE;

typedef struct PRINTK_INFO
{
    int dest;
    void (*func)(tSINT32);
    char *loc;
} PRINTK_INFO;

/********************************************************************/
enum PrintfConfiguration
{
    DEST_CONSOLE = 1,
    DEST_STRING = 2,
    FLAGS_MINUS = 0x01,
    FLAGS_PLUS = 0x02,
    FLAGS_SPACE = 0x04,
    FLAGS_ZERO = 0x08,
    FLAGS_POUND = 0x10,
    LENMOD_h = 0x01,
    LENMOD_l = 0x02,
    LENMOD_L = 0x04,
    FMT_d = 0x0001,
    FMT_o = 0x0002,
    FMT_x = 0x0004,
    FMT_X = 0x0008,
    FMT_u = 0x0010,
    FMT_c = 0x0020,
    FMT_s = 0x0040,
    FMT_p = 0x0080,
    FMT_n = 0x0100,
};

#define IS_FLAG_MINUS(a)    (a & FLAGS_MINUS)
#define IS_FLAG_PLUS(a)     (a & FLAGS_PLUS)
#define IS_FLAG_SPACE(a)    (a & FLAGS_SPACE)
#define IS_FLAG_ZERO(a)     (a & FLAGS_ZERO)
#define IS_FLAG_POUND(a)    (a & FLAGS_POUND)

#define IS_LENMOD_h(a)      (a & LENMOD_h)
#define IS_LENMOD_l(a)      (a & LENMOD_l)
#define IS_LENMOD_L(a)      (a & LENMOD_L)

#define IS_FMT_d(a)         (a & FMT_d)
#define IS_FMT_o(a)         (a & FMT_o)
#define IS_FMT_x(a)         (a & FMT_x)
#define IS_FMT_X(a)         (a & FMT_X)
#define IS_FMT_u(a)         (a & FMT_u)
#define IS_FMT_c(a)         (a & FMT_c)
#define IS_FMT_s(a)         (a & FMT_s)
#define IS_FMT_p(a)         (a & FMT_p)
#define IS_FMT_n(a)         (a & FMT_n)

/********************************************************************/
static void printk_putc(int c, int *count, PRINTK_INFO *info)
{
    switch (info->dest)
    {
    case DEST_CONSOLE:
        if (c == '\n')
        {
            info->func('\r');
            *count += 1;
        }
        info->func((char) c);
        break;
    case DEST_STRING:
        *(info->loc) = (unsigned char) c;
        ++(info->loc);
        break;
    default:
        break;
    }
    *count += 1;
}

/********************************************************************/
static int printk_mknumstr(char *numstr, void *nump, int neg, int radix)
{
    int a, b, c;
    unsigned int ua, ub, uc;

    int nlen;
    char *nstrp;

    nlen = 0;
    nstrp = numstr;
    *nstrp++ = '\0';

    if (neg)
    {
        a = *(int *) nump;
        if (a == 0)
        {
            *nstrp = '0';
            ++nlen;
            goto done;
        }
        while (a != 0)
        {
            b = (int) a / (int) radix;
            c = (int) a - ((int) b * (int) radix);
            if (c < 0)
            {
                c = ~c + 1 + '0';
            }
            else
            {
                c = c + '0';
            }
            a = b;
            *nstrp++ = (char) c;
            ++nlen;
        }
    }
    else
    {
        ua = *(unsigned int *) nump;
        if (ua == 0)
        {
            *nstrp = '0';
            ++nlen;
            goto done;
        }
        while (ua != 0)
        {
            ub = (unsigned int) ua / (unsigned int) radix;
            uc = (unsigned int) ua - ((unsigned int) ub * (unsigned int) radix);
            if (uc < 10)
            {
                uc = uc + '0';
            }
            else
            {
                uc = uc - 10 + 'A';
            }
            ua = ub;
            *nstrp++ = (char) uc;
            ++nlen;
        }
    }
    done: return nlen;
}

/********************************************************************/
static void printk_pad_zero(int curlen, int field_width, int *count,
        PRINTK_INFO *info)
{
    int i;

    for (i = curlen; i < field_width; i++)
    {
        printk_putc('0', count, info);
    }
}

/********************************************************************/
static void printk_pad_space(int curlen, int field_width, int *count,
        PRINTK_INFO *info)
{
    int i;

    for (i = curlen; i < field_width; i++)
    {
        printk_putc(' ', count, info);
    }
}

/********************************************************************/
static int printk(PRINTK_INFO *info, const char *fmt, va_list ap)
{
    /* va_list ap; */
    char *p;
    int c;

    char vstr[33];
    char *vstrp;
    int vlen;

    int done;
    int count = 0;

    int flags_used;
    int field_width;
#if 0
    int precision_used;
    int precision_width;
    int length_modifier;
#endif

    int ival;
    int schar, dschar;
    int *ivalp;
    char *sval;
    int cval;
    unsigned int uval;

    /*
     * Start parsing apart the format string and display appropriate
     * formats and data.
     */
    for (p = (char *) fmt; (c = *p) != 0; p++)
    {
        /*
         * All formats begin with a '%' marker.  Special chars like
         * '\n' or '\t' are normally converted to the appropriate
         * character by the __compiler__.  Thus, no need for this
         * routine to account for the '\' character.
         */
        if (c != '%')
        {
            printk_putc(c, &count, info);
            continue;
        }

        /*
         * First check for specification modifier flags.
         */
        flags_used = 0;
        done = 0;
        while (!done)
        {
            switch (/* c = */*++p)
            {
            case '-':
                flags_used |= FLAGS_MINUS;
                break;
            case '+':
                flags_used |= FLAGS_PLUS;
                break;
            case ' ':
                flags_used |= FLAGS_SPACE;
                break;
            case '0':
                flags_used |= FLAGS_ZERO;
                break;
            case '#':
                flags_used |= FLAGS_POUND;
                break;
            default:
                /* we've gone one char too far */
                --p;
                done = 1;
                break;
            }
        }

        /*
         * Next check for minimum field width.
         */
        field_width = 0;
        done = 0;
        while (!done)
        {
            switch (c = *++p)
            {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                field_width = (field_width * 10) + (c - '0');
                break;
            default:
                /* we've gone one char too far */
                --p;
                done = 1;
                break;
            }
        }

        /*
         * Next check for the width and precision field separator.
         */
        if (/* (c = *++p) */*++p == '.')
        {
            /* precision_used = 1; */

            /*
             * Must get precision field width, if present.
             */
            /* precision_width = 0; */
            done = 0;
            while (!done)
            {
                switch (/* c = uncomment if used below */*++p)
                {
                case '0':
                case '1':
                case '2':
                case '3':
                case '4':
                case '5':
                case '6':
                case '7':
                case '8':
                case '9':
#if 0
                    precision_width = (precision_width * 10) +
                    (c - '0');
#endif
                    break;
                default:
                    /* we've gone one char too far */
                    --p;
                    done = 1;
                    break;
                }
            }
        }
        else
        {
            /* we've gone one char too far */
            --p;
#if 0
            precision_used = 0;
            precision_width = 0;
#endif
        }

        /*
         * Check for the length modifier.
         */
        /* length_modifier = 0; */
        switch (/* c = */*++p)
        {
        case 'h':
            /* length_modifier |= LENMOD_h; */
            break;
        case 'l':
            /* length_modifier |= LENMOD_l; */
            break;
        case 'L':
            /* length_modifier |= LENMOD_L; */
            break;
        default:
            /* we've gone one char too far */
            --p;
            break;
        }

        /*
         * Now we're ready to examine the format.
         */
        switch (c = *++p)
        {
        case 'd':
        case 'i':
            ival = (int) va_arg(ap, int);
            vlen = printk_mknumstr(vstr, &ival, 1, 10);
            vstrp = &vstr[vlen];

            if (ival < 0)
            {
                schar = '-';
                ++vlen;
            }
            else
            {
                if (IS_FLAG_PLUS(flags_used))
                {
                    schar = '+';
                    ++vlen;
                }
                else
                {
                    if (IS_FLAG_SPACE(flags_used))
                    {
                        schar = ' ';
                        ++vlen;
                    }
                    else
                    {
                        schar = 0;
                    }
                }
            }
            dschar = 0;

            /*
             * do the ZERO pad.
             */
            if (IS_FLAG_ZERO(flags_used))
            {
                if (schar)
                    printk_putc(schar, &count, info);
                dschar = 1;

                printk_pad_zero(vlen, field_width, &count, info);
                vlen = field_width;
            }
            else
            {
                if (!IS_FLAG_MINUS(flags_used))
                {
                    printk_pad_space(vlen, field_width, &count, info);

                    if (schar)
                        printk_putc(schar, &count, info);
                    dschar = 1;
                }
            }

            /* the string was built in reverse order, now display in */
            /* correct order */
            if (!dschar && schar)
            {
                printk_putc(schar, &count, info);
            }
            goto cont_xd;

        case 'x':
        case 'X':
            uval = (unsigned int) va_arg(ap, unsigned int);
            vlen = printk_mknumstr(vstr, &uval, 0, 16);
            vstrp = &vstr[vlen];

            dschar = 0;
            if (IS_FLAG_ZERO(flags_used))
            {
                if (IS_FLAG_POUND(flags_used))
                {
                    printk_putc('0', &count, info);
                    printk_putc('x', &count, info);
                    /*vlen += 2;*/
                    dschar = 1;
                }
                printk_pad_zero(vlen, field_width, &count, info);
                vlen = field_width;
            }
            else
            {
                if (!IS_FLAG_MINUS(flags_used))
                {
                    if (IS_FLAG_POUND(flags_used))
                    {
                        vlen += 2;
                    }
                    printk_pad_space(vlen, field_width, &count, info);
                    if (IS_FLAG_POUND(flags_used))
                    {
                        printk_putc('0', &count, info);
                        printk_putc('x', &count, info);
                        dschar = 1;
                    }
                }
            }

            if ((IS_FLAG_POUND(flags_used)) && !dschar)
            {
                printk_putc('0', &count, info);
                printk_putc('x', &count, info);
                vlen += 2;
            }
            goto cont_xd;

        case 'o':
            uval = (unsigned int) va_arg(ap, unsigned int);
            vlen = printk_mknumstr(vstr, &uval, 0, 8);
            goto cont_u;
        case 'b':
            uval = (unsigned int) va_arg(ap, unsigned int);
            vlen = printk_mknumstr(vstr, &uval, 0, 2);
            goto cont_u;
        case 'p':
            uval = (unsigned int) va_arg(ap, void *);
            vlen = printk_mknumstr(vstr, &uval, 0, 16);
            goto cont_u;
        case 'u':
            uval = (unsigned int) va_arg(ap, unsigned int);
            vlen = printk_mknumstr(vstr, &uval, 0, 10);

            cont_u: vstrp = &vstr[vlen];

            if (IS_FLAG_ZERO(flags_used))
            {
                printk_pad_zero(vlen, field_width, &count, info);
                vlen = field_width;
            }
            else
            {
                if (!IS_FLAG_MINUS(flags_used))
                {
                    printk_pad_space(vlen, field_width, &count, info);
                }
            }

            cont_xd: while (*vstrp)
                printk_putc(*vstrp--, &count, info);

            if (IS_FLAG_MINUS(flags_used))
            {
                printk_pad_space(vlen, field_width, &count, info);
            }
            break;

        case 'c':
            cval = (char) va_arg(ap, unsigned int);
            printk_putc(cval, &count, info);
            break;
        case 's':
            sval = (char *) va_arg(ap, char *);
            if (sval)
            {
                vlen = strlen(sval);
                if (!IS_FLAG_MINUS(flags_used))
                {
                    printk_pad_space(vlen, field_width, &count, info);
                }
                while (*sval)
                {
                    if (*sval == '\n')
                        printk_putc('\r', &count, info);
                    printk_putc(*sval++, &count, info);
                }
                if (IS_FLAG_MINUS(flags_used))
                {
                    printk_pad_space(vlen, field_width, &count, info);
                }
            }
            break;
        case 'n':
            ivalp = (int *) va_arg(ap, int *);
            *ivalp = count;
            break;
        default:
            printk_putc(c, &count, info);
            break;
        }
    }
    return count;
}
/**
 * printf: Print a formatted string to the terminal. When multiple tasks print
 * to the terminal at same time, higher priority task will put its output first.
 * @param fmt Format.
 * @param ... The values.
 * @return int Character count.
 */
int printf(const char *fmt, ...)
{
   if (PrintfEnabled == TRUE)
   {
      va_list ap;
      int rvalue;
      PRINTK_INFO info;

      /*
      * This function just returns so that the printfs in the application
      * used for debugging are virtually stubbed out.
      */

      info.dest = DEST_CONSOLE;
      info.func = SerialOutChar;
      /*
      * Initialize the pointer to the variable length argument list.
      */
      va_start(ap, fmt);
      rvalue = printk(&info, fmt, ap);
      /*
      * Cleanup the variable length argument list.
      */
      va_end(ap);

      return rvalue;
   }
   else
   {
      return 0;
   }
}

/**
 * sprintf: Format a string. No attempt is made to verify if output would
 * actually fit into the string.
 * @param s String where to put the data.
 * @param fmt Format string.
 * @param ... All the values.
 * @return int Resulting string length.
 */

int sprintf(char *s, const char *fmt, ...)
{
   if (PrintfEnabled == TRUE)
   {
      va_list ap;
      int rvalue = 0;
      PRINTK_INFO info;

      /*
      * Initialize the pointer to the variable length argument list.
      */
      if (s != 0)
      {
         info.dest = DEST_STRING;
         info.loc = s;
         va_start(ap, fmt);
         rvalue = printk(&info, fmt, ap);
         *info.loc = '\0';
         va_end(ap);
      }
      return rvalue;
   }
   else
   {
      return 1;
   }
}

/**
 * puts: Print a string, append new line. The main reason to implement this
 * function was because of the compiler printf() optimization. When GCC sees
 * printf of a string terminated with line feed, and the format string contains
 * no format specifiers, it strips the line feed and calls this function on the
 * string, assuming that puts takes much less time than printf with no variables
 * in the format string.
 * @param string Output string.
 * @return int Always returns 1.
 */
int puts(const char * string)
{
   if (PrintfEnabled == TRUE)
   {
      while (*string)
      {
         int ch = *string++;
         if (ch == '\n')
            SerialOutChar('\r');
         SerialOutChar(ch);
      }
      SerialOutChar('\r');
      SerialOutChar('\n');
      return 1;
   }
   else
   {
      return 0;
   }
}

#ifdef putchar
#undef putchar
#endif

/**
 * putchar: Print a character. The main reason to implement this function was
 * because of the compiler printf() optimization. When GCC sees printf of a
 * one-character string it replaces the function call with a call to this
 * function.
 * @param ch Character to be written.
 * @return Function returns the character written.
 */
int putchar(int ch)
{
   if (PrintfEnabled == TRUE)
   {
      if (ch == '\n')
         SerialOutChar('\r');
      SerialOutChar(ch);
      return ch;
   }
   else
   {
      return 0;
   }
}

