include $(SRC_PATH)build/x86-common.mk
SHAREDLIB_DIR = $(PREFIX)/bin
SHAREDLIBSUFFIX = dll
SHAREDLIBSUFFIXVER=$(SHAREDLIBSUFFIX)
EXTRA_LIBRARY=$(LIBPREFIX)$(PROJECT_NAME).dll.a
SHLDFLAGS = -Wl,--out-implib,$(EXTRA_LIBRARY)
CFLAGS += -MMD -MP
LDFLAGS +=
ifeq ($(ENABLE64BIT), Yes)
ASMFLAGS += -f win64
ASMFLAGS_PLATFORM = -DWIN64
CC = x86_64-w64-mingw32-gcc
CXX = x86_64-w64-mingw32-g++
AR = x86_64-w64-mingw32-ar
else
ASMFLAGS += -f win32 -DPREFIX
endif
EXEEXT = .exe

