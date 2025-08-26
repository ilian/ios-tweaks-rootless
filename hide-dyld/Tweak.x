%config(generator=internal);

#include "vendor/fishhook/fishhook.h"

static const char (*_dyld_get_image_name_orig)(uint32_t);

// Bypass Jailbreak detection
// https://github.com/securing/IOSSecuritySuite/blob/eafc3f1aec25606ca99dd73c5a77a153c99903f9/IOSSecuritySuite/JailbreakChecker.swift#L367
const char* _dyld_get_image_name_new(uint32_t i) {
    return "";
}

%ctor {
    rebind_symbols((struct rebinding[1]) {
      {"_dyld_get_image_name", (void *)_dyld_get_image_name_new, (void**)&_dyld_get_image_name_orig}
    }, 1);
}
