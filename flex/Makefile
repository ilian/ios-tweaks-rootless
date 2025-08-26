.PHONY: all clean

PROJECT := vendor/FLEX/FLEX.xcodeproj
SCHEME := FLEX
CONFIGURATION := Release
DESTINATION := "generic/platform=iOS"
DEPLOYMENT_TARGET := 14.0

BUILD_DIR := build
OUT_DIR := lib
OUT_FILE := $(OUT_DIR)/flex.dylib

all: $(OUT_FILE)

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

$(OUT_FILE): | $(OUT_DIR)
	xcodebuild \
	  -project "$(PROJECT)" \
	  -scheme "$(SCHEME)" \
	  -configuration "$(CONFIGURATION)" \
	  -destination "$(DESTINATION)" \
	  -derivedDataPath "$(BUILD_DIR)" \
	  IPHONEOS_DEPLOYMENT_TARGET=$(DEPLOYMENT_TARGET) \
	  clean build
	cp build/Build/Products/Release-iphoneos/FLEX.framework/FLEX $@

clean:
	rm -rf "$(BUILD_DIR)" "$(OUT_DIR)"
