/* svc.h, Server-side remote procedure call interface. */

/* Copyright 1984-2005, 2006-2010 Wind River Systems, Inc. */
/*
 * Sun RPC is a product of Sun Microsystems, Inc. and is provided for
 * unrestricted use provided that this legend is included on all tape
 * media and as a part of the software program in whole or part.  Users
 * may copy or modify Sun RPC without charge, but are not authorized
 * to license or distribute it to anyone else except as part of a product or
 * program developed by the user.
 *
 * SUN RPC IS PROVIDED AS IS WITH NO WARRANTIES OF ANY KIND INCLUDING THE
 * WARRANTIES OF DESIGN, MERCHANTIBILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE, OR ARISING FROM A COURSE OF DEALING, USAGE OR TRADE PRACTICE.
 *
 * Sun RPC is provided with no support and without any obligation on the
 * part of Sun Microsystems, Inc. to assist in its use, correction,
 * modification or enhancement.
 *
 * SUN MICROSYSTEMS, INC. SHALL HAVE NO LIABILITY WITH RESPECT TO THE
 * INFRINGEMENT OF COPYRIGHTS, TRADE SECRETS OR ANY PATENTS BY SUN RPC
 * OR ANY PART THEREOF.
 *
 * In no event will Sun Microsystems, Inc. be liable for any lost revenue
 * or profits or other special, indirect and consequential damages, even if
 * Sun has been advised of the possibility of such damages.
 *
 * Sun Microsystems, Inc.
 * 2550 Garcia Avenue
 * Mountain View, California  94043
 */
/*      @(#)svc.h 1.1 86/02/03 SMI      */

/*
 * svc.h, Server-side remote procedure call interface.
 *
 * Copyright (C) 1984, Sun Microsystems, Inc.
 */

/*
modification history
--------------------
01r,29apr10,pad  Moved extern C statement after include statements.
01q,23jan10,y_t Add LP64 support.
01p,21jul05,vvv  fixed C++ build problem (SPR #99889)
01o,24jun04,vvv  changed prototype for svcudp_enablecache()
01n,12sep03,skp  Added support for server reply cache.
01m,24feb97,bjl  moved struct xp_ops declaration outside of SVCXPRT 
		 to make struct xp_ops globally visible for c++
01l,15sep93,kdl  changed prototype of svcudp_create() (SPR #2427).
01k,22sep92,rrr  added support for c++
01j,26may92,rrr  the tree shuffle
01i,19nov91,rrr  shut up some ansi warnings.
01h,04oct91,rrr  passed through the ansification filter
		  -fixed broken prototype
		  -fixed #else and #endif
		  -changed copyright notice
01g,08may91,kdl  fixed ANSI prototype of svc_register().
01f,10jan91,shl  fixed prototype of registerrpc().
01e,25oct90,dnw  added missing definition of svc_fds.
01d,24oct90,shl  deleted redundant function declarations.
01c,05oct90,shl  added ANSI function prototypes.
                 added copyright notice.
01b,26oct89,hjb  upgraded to release 4.0
*/

#ifndef __INCsvch
#define __INCsvch

#include <rpc/rpc_msg.h>

#ifdef __cplusplus
extern "C" {
#endif

/*
 * This interface must manage two items concerning remote procedure calling:
 *
 * 1) An arbitrary number of transport connections upon which rpc requests
 * are received.  The two most notable transports are TCP and UDP;  they are
 * created and registered by routines in svc_tcp.c and svc_udp.c, respectively;
 * they in turn call xprt_register and xprt_unregister.
 *
 * 2) An arbitrary number of locally registered services.  Services are
 * described by the following four data: program number, version number,
 * "service dispatch" function, a transport handle, and a boolean that
 * indicates whether or not the exported program should be registered with a
 * local binder service;  if true the program's number and version and the
 * port number from the transport handle are registered with the binder.
 * These data are registered with the rpc svc system via svc_register.
 *
 * A service's dispatch function is called whenever an rpc request comes in
 * on a transport.  The request's program and version numbers must match
 * those of the registered service.  The dispatch function is passed two
 * parameters, struct svc_req * and SVCXPRT *, defined below.
 */

enum xprt_stat {
	XPRT_DIED,
	XPRT_MOREREQS,
	XPRT_IDLE
};

/*
 * Server side transport handle
 */
typedef struct {
	int		xp_sock;
	u_short		xp_port;	 /* associated port number */
	struct xp_ops   *xp_ops;
	int		xp_addrlen;	 /* length of remote address */
	struct sockaddr_in xp_raddr;	 /* remote address */
	struct opaque_auth xp_verf;	 /* raw response verifier */
	caddr_t		xp_p1;		 /* private */
	caddr_t		xp_p2;		 /* private */
} SVCXPRT;

struct xp_ops {
#if defined(__STDC__) || defined(__cplusplus)
    bool_t	(*xp_recv)(SVCXPRT *, struct rpc_msg *); /* receive incoming requests */
    enum xprt_stat (*xp_stat)(SVCXPRT *); /* get transport status */
    bool_t	(*xp_getargs)(SVCXPRT *, xdrproc_t xargs, caddr_t argsp); /* get arguments */
    bool_t	(*xp_reply)(SVCXPRT *, struct rpc_msg*); /* send reply */
    bool_t	(*xp_freeargs)(SVCXPRT *, xdrproc_t xargs, caddr_t argsp); /* free mem allocated for args */
    void	(*xp_destroy)(SVCXPRT *); /* destroy this struct */
#else
    bool_t	(*xp_recv)(); /* receive incoming requests */
    enum xprt_stat (*xp_stat)(); /* get transport status */
    bool_t	(*xp_getargs)(); /* get arguments */
    bool_t	(*xp_reply)(); /* send reply */
    bool_t	(*xp_freeargs)(); /* free mem allocated for args */
    void	(*xp_destroy)(); /* destroy this struct */
#endif
}; 

/*
 *  Approved way of getting address of caller
 */
#define svc_getcaller(x) (&(x)->xp_raddr)

/*
 * Operations defined on an SVCXPRT handle
 *
 * SVCXPRT		*xprt;
 * struct rpc_msg	*msg;
 * xdrproc_t		 xargs;
 * caddr_t		 argsp;
 */
#define SVC_RECV(xprt, msg)				\
	(*(xprt)->xp_ops->xp_recv)((xprt), (msg))
#define svc_recv(xprt, msg)				\
	(*(xprt)->xp_ops->xp_recv)((xprt), (msg))

#define SVC_STAT(xprt)					\
	(*(xprt)->xp_ops->xp_stat)(xprt)
#define svc_stat(xprt)					\
	(*(xprt)->xp_ops->xp_stat)(xprt)

#define SVC_GETARGS(xprt, xargs, argsp)			\
	(*(xprt)->xp_ops->xp_getargs)((xprt), (xargs), (argsp))
#define svc_getargs(xprt, xargs, argsp)			\
	(*(xprt)->xp_ops->xp_getargs)((xprt), (xargs), (argsp))

#define SVC_REPLY(xprt, msg)				\
	(*(xprt)->xp_ops->xp_reply) ((xprt), (msg))
#define svc_reply(xprt, msg)				\
	(*(xprt)->xp_ops->xp_reply) ((xprt), (msg))

#define SVC_FREEARGS(xprt, xargs, argsp)		\
	(*(xprt)->xp_ops->xp_freeargs)((xprt), (xargs), (argsp))
#define svc_freeargs(xprt, xargs, argsp)		\
	(*(xprt)->xp_ops->xp_freeargs)((xprt), (xargs), (argsp))

#define SVC_DESTROY(xprt)				\
	(*(xprt)->xp_ops->xp_destroy)(xprt)
#define svc_destroy(xprt)				\
	(*(xprt)->xp_ops->xp_destroy)(xprt)

/*
 * Service request
 */
struct svc_req {
	u_int		rq_prog;	/* service program number */
	u_int		rq_vers;	/* service protocol version */
	u_int		rq_proc;	/* the desired procedure */
	struct opaque_auth rq_cred;	/* raw creds from the wire */
	caddr_t		rq_clntcred;	/* read only cooked cred */
	SVCXPRT	*rq_xprt;		/* associated transport */
};

/*
 * Service registration
 *
 * svc_register(xprt, prog, vers, dispatch, protocol)
 *	SVCXPRT *xprt;
 *	u_long prog;
 *	u_long vers;
 *	void (*dispatch)();
 *	int protocol;  /@ like TCP or UDP, zero means do not register @/
 */

/*
 * Service un-registration
 *
 * svc_unregister(prog, vers)
 *	u_long prog;
 *	u_long vers;
 */

/*
 * Transport registration.
 *
 * xprt_register(xprt)
 *	SVCXPRT *xprt;
 */

/*
 * Transport un-register
 *
 * xprt_unregister(xprt)
 *	SVCXPRT *xprt;
 */

/*
 * When the service routine is called, it must first check to see if it
 * knows about the procedure;  if not, it should call svcerr_noproc
 * and return.  If so, it should deserialize its arguments via
 * SVC_GETARGS (defined above).  If the deserialization does not work,
 * svcerr_decode should be called followed by a return.  Successful
 * decoding of the arguments should be followed the execution of the
 * procedure's code and a call to svc_sendreply.
 *
 * Also, if the service refuses to execute the procedure due to too-
 * weak authentication parameters, svcerr_weakauth should be called.
 * Note: do not confuse access-control failure with weak authentication!
 *
 * NB: In pure implementations of rpc, the caller always waits for a reply
 * msg.  This message is sent when svc_sendreply is called.
 * Therefore pure service implementations should always call
 * svc_sendreply even if the function logically returns void;  use
 * xdr.h - xdr_void for the xdr routine.  HOWEVER, tcp based rpc allows
 * for the abuse of pure rpc via batched calling or pipelining.  In the
 * case of a batched call, svc_sendreply should NOT be called since
 * this would send a return message, which is what batching tries to avoid.
 * It is the service/protocol writer's responsibility to know which calls are
 * batched and which are not.  Warning: responding to batch calls may
 * deadlock the caller and server processes!
 */

/*
 * Lowest level dispatching -OR- who owns this process anyway.
 * Somebody has to wait for incoming requests and then call the correct
 * service routine.  The routine svc_run does infinite waiting; i.e.,
 * svc_run never returns.
 * Since another (co-existant) package may wish to selectively wait for
 * incoming calls or other events outside of the rpc architecture, the
 * routine svc_getreq is provided.  It must be passed readfds, the
 * "in-place" results of a select system call (see select, section 2).
 */

/*
 * Global keeper of rpc service descriptors in use
 * dynamic; must be inspected before each call to select
 */
#ifdef FD_SETSIZE
extern fd_set svc_fdset;
#define svc_fds svc_fdset.fds_bits[0]	/* compatibility */
#else
extern int svc_fds;
#endif	/* def FD_SETSIZE */

/*
 * a small program implemented by the svc_rpc implementation itself;
 * also see clnt.h for protocol numbers.
 */
extern void rpctest_service();

/*
 * Socket to use on svcxxx_create call to get default socket
 */
#define	RPC_ANYSOCK	-1

/*
 * These are the existing service side transport implementations
 */

/*
 * Memory based rpc for testing and timing.
 */

/* extern SVCXPRT *svcraw_create(); */

/*
 * Udp based rpc.
 */

/*
extern SVCXPRT *svcudp_create();
extern SVCXPRT *svcudp_bufcreate();
*/

/*
 * Tcp based rpc.
 */

/*
extern SVCXPRT *svctcp_create();
*/

/* function declarations */

#if defined(__STDC__) || defined(__cplusplus)

extern	  void	       xprt_register (SVCXPRT *xprt);
extern	  void	       xprt_unregister (SVCXPRT *xprt);
extern	  bool_t       svc_register (SVCXPRT *xprt, u_int prog, u_int vers,
				     void (*dispatch) (struct svc_req *, SVCXPRT *),
				     int protocol);
extern	  void	       svc_unregister (u_int prog, u_int vers);
extern	  struct       svc_callout *svc_find (u_int prog, u_int vers,
					      struct svc_callout **prev);
extern	  bool_t       svc_sendreply (SVCXPRT *xprt, xdrproc_t xdr_results,
				      caddr_t xdr_location);
extern	  void	       svcerr_noproc (SVCXPRT *xprt);
extern	  void	       svcerr_decode (SVCXPRT *xprt);
extern	  void	       svcerr_systemerr (SVCXPRT *xprt);
extern	  void	       svcerr_auth (SVCXPRT *xprt, enum auth_stat why);
extern	  void	       svcerr_weakauth (SVCXPRT *xprt);
extern	  void	       svcerr_noprog (SVCXPRT *xprt);
extern	  void	       svcerr_progvers (SVCXPRT *xprt, u_int low_vers,
					u_int high_vers);
extern	  void	       svc_getreq (int rdfds);
extern	  void	       svc_getreqset (fd_set *rdfds);
extern	  void	       svc_run (void);
extern	  SVCXPRT *    svcraw_create (void);
extern	  int	       registerrpc (int prognum, int versnum, int procnum,
				    char *(*progname)(), xdrproc_t inproc,
				    xdrproc_t outproc);
extern	  SVCXPRT *    svctcp_create (int sock, u_int sendsize, u_int recvsize);
extern	  SVCXPRT *    svcfd_create (int fd, u_int sendsize, u_int recvsize);
extern	  SVCXPRT *    svcudp_bufcreate (int sock, u_int sendsz, u_int recvsz);
extern	  SVCXPRT *    svcudp_create (int sock);
extern	  int	       svcudp_enablecache (SVCXPRT *transp, int prog, int vers, u_int size, BOOL partial);
extern	  void	       cache_fillparams (SVCXPRT *transp, void *nfsCache, 
			int prognum, int versnum, int procnum);

#else

extern	  void	       xprt_register ();
extern	  void	       xprt_unregister ();
extern	  bool_t       svc_register ();
extern	  void	       svc_unregister ();
extern	  struct       svc_callout *svc_find ();
extern	  bool_t       svc_sendreply ();
extern	  void	       svcerr_noproc ();
extern	  void	       svcerr_decode ();
extern	  void	       svcerr_systemerr ();
extern	  void	       svcerr_auth ();
extern	  void	       svcerr_weakauth ();
extern	  void	       svcerr_noprog ();
extern	  void	       svcerr_progvers ();
extern	  void	       svc_getreq ();
extern	  void	       svc_getreqset ();
extern	  void	       svc_run ();
extern	  SVCXPRT *    svcraw_create ();
extern	  int	       registerrpc ();
extern	  SVCXPRT *    svctcp_create ();
extern	  SVCXPRT *    svcfd_create ();
extern	  SVCXPRT *    svcudp_bufcreate ();
extern	  SVCXPRT *    svcudp_create ();
extern	  int	       svcudp_enablecache ();
extern	  void	       cache_fillparams ();

#endif	/* __STDC__ */

#ifdef __cplusplus
}
#endif

#endif /* __INCsvch */
