export ARCHS = arm64
TARGET := iphone:clang:latest:14.0

THEOS_PACKAGE_SCHEME=rootless

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = hide-dyld

hide-dyld_FILES = Tweak.x vendor/fishhook/fishhook.c
hide-dyld_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

all:: copy-to-lib

.PHONY: copy-to-lib
copy-to-lib:
	@mkdir -p lib
	@dylib="$$(find $(THEOS_OBJ_DIR) -name '$(TWEAK_NAME).dylib' -print -quit)"; \
	cp "$$dylib" lib/
