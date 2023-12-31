/*
 * Please do not edit this file.
 * It was generated using rpcgen.
 */

#ifndef _XDR_MNT3_H_RPCGEN
#define	_XDR_MNT3_H_RPCGEN

#include <rpc/rpc.h>
#include <nfs/xdr_mnt_common.h>

#ifdef __cplusplus
extern "C" {
#endif

#define	FHSIZE3 64

typedef struct {
	u_int fhandle3_len;
	char *fhandle3_val;
} fhandle3;

enum mountstat3 {
	MNT3_OK = 0,
	MNT3ERR_PERM = 1,
	MNT3ERR_NOENT = 2,
	MNT3ERR_IO = 5,
	MNT3ERR_ACCES = 13,
	MNT3ERR_NOTDIR = 20,
	MNT3ERR_INVAL = 22,
	MNT3ERR_NAMETOOLONG = 63,
	MNT3ERR_NOTSUPP = 10004,
	MNT3ERR_SERVERFAULT = 10006
};
typedef enum mountstat3 mountstat3;

struct mountres3_ok {
	fhandle3 fhandle;
	struct {
		u_int auth_flavors_len;
		int *auth_flavors_val;
	} auth_flavors;
};
typedef struct mountres3_ok mountres3_ok;

struct mountres3 {
	mountstat3 fhs_status;
	union {
		mountres3_ok mountinfo;
	} mountres3_u;
};
typedef struct mountres3 mountres3;

#define	MOUNT_V3	3

/* 
 * Mount (3) procedure prototypes. The procedure numbers
 * are defined in xdr_mnt_common.h file
 */

#if defined(__STDC__) || defined(__cplusplus)

extern  void * mountproc_null_3(void);
extern  mountres3 * mountproc_mnt_3(dirpath *, struct svc_req *);
extern  mountlist * mountproc_dump_3(void);
extern  void * mountproc_umnt_3(dirpath *, struct svc_req *);
extern  void * mountproc_umntall_3(char *, struct svc_req *);
extern  exports * mountproc_export_3(void);
extern int mount_program_3_freeresult (SVCXPRT *, xdrproc_t, caddr_t);

#else /* __STDC__ */
extern  void * mountproc_null_3();
extern  mountres3 * mountproc_mnt_3();
extern  mountlist * mountproc_dump_3();
extern  void * mountproc_umnt_3();
extern  void * mountproc_umntall_3();
extern  exports * mountproc_export_3();
extern int mount_program_3_freeresult();

#endif /* __STDC__ */

/* the xdr functions */

#if defined(__STDC__) || defined(__cplusplus)
extern  bool_t xdr_fhandle3 (XDR *, fhandle3*);
extern  bool_t xdr_mountstat3 (XDR *, mountstat3*);
extern  bool_t xdr_mountres3_ok (XDR *, mountres3_ok*);
extern  bool_t xdr_mountres3 (XDR *, mountres3*);

#else /* __STDC__ */
extern bool_t xdr_fhandle3();
extern bool_t xdr_mountstat3();
extern bool_t xdr_mountres3_ok();
extern bool_t xdr_mountres3();

#endif /* __STDC__ */

#ifdef __cplusplus
}
#endif

#endif /* !_XDR_MNT3_H_RPCGEN */
