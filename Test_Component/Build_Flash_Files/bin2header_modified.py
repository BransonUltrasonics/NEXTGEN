import sys, os, array, binascii
from datetime import datetime

def PrintUsage():
    executable = os.path.basename(__file__)
    print u'\nbin2header version 0.1.1 (python)\n2017 Jordan Irwin <antumdeluge@gmail.com>\n\n\tUsage:\t{} file\n'.format(executable)

def chunks(s, n):
    """Produce `n`-character chunks from `s`."""
    for start in range(0, len(s), n):
        yield s[start:start+n]

def Bin2Header(argv):
    if not os.path.isfile(argv[1]):
        print u'\nFile "{}" does not exist'.format(argv[1])
        PrintUsage()
        sys.exit(1)
    path = argv[1]
    data = array.array('B', open(path, 'rb').read())
    hex_bytes = str(binascii.hexlify(data))
    text = '    '
    i = 0
    for chunk in chunks(hex_bytes, 2):
        text += '0x'+chunk+', '
        i += 1
        if i%12 == 0:
    	    text += '\n    '

    filename = list(os.path.basename(path))
    filename = u''.join(filename)
    filename_str=str(filename)
    filename_w_ext = filename_str.split(".")[0].split("/")[-1] 
    statinfo = os.stat(argv[1])
    hname = list(filename_w_ext)
    if len(sys.argv) < 2:
		filename = filename_w_ext+'.h'
    else:
	filename = argv[2]
    hname = u''.join(hname)
    ### Uppercase Name for Header ###
    hname_upper = hname.upper()
    hname_upper += u'_H'
    text1 = u'#ifndef {}\n#define {}\n\nstatic const unsigned char {}[] = {}\n'.format(hname_upper, hname_upper, hname, u'{')
    text5 = statinfo.st_size
    text3 = '\n\n#define ksize_'+ hname +'\t'+ str(text5)
    text5 = statinfo.st_size
    text2 = u'\n};'+text3
    test4 = '\n\n#endif\n'
    text = text[:-2] #replace last two characters that are comma and new line
    text3 = '\n\n#define ksize_'+ hname
    text = text1 + text + text2 + test4
    out = open(filename, 'w')
    out.write(text)
    out.close()

if __name__ == '__main__':
    if len(sys.argv) < 2:
        PrintUsage()
        sys.exit(1)
    print str(datetime.now()) + " ===== Start converting bin to header===="
    Bin2Header(sys.argv)
    print str(datetime.now()) + " ===== End ===="
