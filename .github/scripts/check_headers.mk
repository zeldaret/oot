include Makefile

SKIPPED_H_FILES := \
    include/audio/aseq.h \
    include/ultra64/abi.h include/ultra64/gbi.h include/ultra64/gs2dex.h

H_FILES := $(shell find include -path include/tables -prune -o -name '*.h' -print)
H_FILES := $(filter-out $(SKIPPED_H_FILES),$(H_FILES))
FAKE_OUT_FILES := $(H_FILES:%.h=$(BUILD_DIR)/check_headers/%.o)

$(BUILD_DIR)/check_headers/%.o: %.h
	@mkdir -p $(@D)
	$(CC_CHECK) $< -o $@

check_headers: $(FAKE_OUT_FILES)

.PHONY: check_headers
