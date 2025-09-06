.PHONY: all flex flex-launcher hide-dyld adblock
TWEAKS := flex flex-launcher hide-dyld adblock

all: $(TWEAKS)

$(TWEAKS): %: lib/%.dylib

define TWEAK_template
lib/$(1).dylib: $(1)/lib/$(1).dylib
	mkdir -p lib
	cp $$< $$@

$(1)/lib/$(1).dylib:
	$$(MAKE) -C $(1)
endef
$(foreach t,$(TWEAKS),$(eval $(call TWEAK_template,$(t))))
