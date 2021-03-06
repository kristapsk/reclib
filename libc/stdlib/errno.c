#define _RESCLIB_SOURCE
#include <errno.h>
#include <stdlib.h>
#include "../intern.h"

#ifdef __cplusplus
extern "C" {
#endif

static /*__thread*/ int _errno;

int* __errno_location (void)
{
    return &_errno;
}

errno_t ___get_errno (int* pvalue)
{
    if (pvalue == NULL) {
        _errno = EINVAL;
        return EINVAL;
    }
    *pvalue = _errno;
    return 0;
}

errno_t _get_errno (int* pvalue) \
    _WEAK_ALIAS_OF("___get_errno");

errno_t ___set_errno (int value)
{
    _errno = value;
    return 0;
}

errno_t _set_errno (int value) \
    _WEAK_ALIAS_OF("___set_errno");

#ifdef __cplusplus
}
#endif
