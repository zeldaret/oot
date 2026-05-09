beginseg
    name "ovl_title"
    compress
    flags OVERLAY
    address 0x80800000
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_title/z_title.o"
endseg

beginseg
    name "ovl_select"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_select/z_select.o"
endseg

beginseg
    name "ovl_opening"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_opening/z_opening.o"
endseg

beginseg
    name "ovl_file_choose"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_nameset_data.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_copy_erase.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_nameset.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_choose.o"
endseg

beginseg
    name "ovl_kaleido_scope"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_collect.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_debug.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_equipment.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_item.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_map.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_prompt.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_kaleido_scope.o"
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_lmap_mark.o"
#if !OOT_MQ
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_lmap_mark_data.o"
#else
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/z_lmap_mark_data_mq.o"
#endif
endseg

beginseg
    name "ovl_player_actor"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/actors/ovl_player_actor/z_player.o"
endseg

beginseg
    name "ovl_map_mark_data"
    compress
    flags OVERLAY
#if !OOT_MQ
    include "$(BUILD_DIR)/src/overlays/misc/ovl_map_mark_data/z_map_mark_data.o"
#else
    include "$(BUILD_DIR)/src/overlays/misc/ovl_map_mark_data/z_map_mark_data_mq.o"
#endif
endseg

beginseg
    name "ovl_En_Test"
    compress
    flags OVERLAY
    include "$(BUILD_DIR)/src/overlays/actors/ovl_En_Test/z_en_test.o"
endseg

// Overlays for most actors and effects are reordered between versions. On N64 and iQue,
// the overlays are in some arbitrary order, while on GameCube they are sorted alphabetically.
#if !PLATFORM_GC
#include "overlays_n64_ique.inc"
#else
#include "overlays_gc.inc"
#endif
