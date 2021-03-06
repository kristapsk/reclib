#ifndef _MBSTR_H
#define _MBSTR_H

#include <___int.h>

#define MBMAXLEN (6)

typedef unsigned __int64 mbchar_t;

#ifdef __cplusplus
extern "C" {
#endif

char* mbschr (char* str, mbchar_t c);

#ifdef __cplusplus
}
#endif

#endif
