#include "stdimpl.h"

#ifdef __cplusplus
extern "C" {
#endif

int __abs (int x)
    _IMPLEMENT_ABS(int, x)

int abs (int x)
    _WEAK_ALIAS_OF("__abs");

#ifdef __cplusplus
}
#endif
