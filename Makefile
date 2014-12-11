
include config.mk

include mkfiles/${CPU_ARCH}.mk

CFLAGS += -nostdinc -I include/

BUILDDIR=build/$(CPU_ARCH)-$(OS_ARCH)
LIBC=$(BUILDDIR)/reclibc.a

all: $(BUILDIR) $(LIBC)

.c.o:
	$(CC) $(CFLAGS) -c -o $@ $<

$(BUILDDIR):
	$(MKDIR) $(BUILDDIR)

LIBC_OBJS=libc/memory/bcopy.o \
	libc/memory/bzero.o \
	libc/memory/memchr.o \
	libc/memory/memcmp.o \
	libc/memory/memcpy.o \
	libc/memory/memcpy_s.o \
	libc/memory/memmove.o \
	libc/memory/memmove_s.o \
	libc/memory/memset.o \
	libc/memory/wmemchr.o \
	libc/memory/wmemcmp.o \
	libc/memory/wmemcpy.o \
	libc/memory/wmemcpy_s.o \
	libc/memory/wmemmove.o \
	libc/memory/wmemmove_s.o \
	libc/memory/wmemset.o \
	libc/stdlib/abs.o \
	libc/stdlib/labs.o \
	libc/stdlib/llabs.o \
	libc/stdlib/mblen.o

$(LIBC): $(LIBC_OBJS) $(BUILDDIR)
	$(AR) cru $@ $(LIBC_OBJS)

clean:
	$(RM) $(LIBC)
	$(RM) $(LIBC_OBJS)
