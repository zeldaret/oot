beginseg
    name "ovl_title"
    compress
    address 0x80800000
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_title/z_title.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_title/ovl_title_reloc.o"
endseg

beginseg
    name "ovl_select"
    compress
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_select/z_select.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_select/ovl_select_reloc.o"
endseg

beginseg
    name "ovl_opening"
    compress
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_opening/z_opening.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_opening/ovl_opening_reloc.o"
endseg

beginseg
    name "ovl_file_choose"
    compress
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_nameset_data.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_copy_erase.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_nameset.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/z_file_choose.o"
    include "$(BUILD_DIR)/src/overlays/gamestates/ovl_file_choose/ovl_file_choose_reloc.o"
endseg

beginseg
    name "ovl_kaleido_scope"
    compress
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
    include "$(BUILD_DIR)/src/overlays/misc/ovl_kaleido_scope/ovl_kaleido_scope_reloc.o"
endseg

beginseg
    name "ovl_player_actor"
    compress
    include "$(BUILD_DIR)/src/overlays/actors/ovl_player_actor/z_player.o"
    include "$(BUILD_DIR)/src/overlays/actors/ovl_player_actor/ovl_player_actor_reloc.o"
endseg

beginseg
    name "ovl_map_mark_data"
    compress
#if !OOT_MQ
    include "$(BUILD_DIR)/src/overlays/misc/ovl_map_mark_data/z_map_mark_data.o"
#else
    include "$(BUILD_DIR)/src/overlays/misc/ovl_map_mark_data/z_map_mark_data_mq.o"
#endif
    include "$(BUILD_DIR)/src/overlays/misc/ovl_map_mark_data/ovl_map_mark_data_reloc.o"
endseg

beginseg
    name "ovl_En_Test"
    compress
    include "$(BUILD_DIR)/src/overlays/actors/ovl_En_Test/z_en_test.o"
    include "$(BUILD_DIR)/src/overlays/actors/ovl_En_Test/ovl_En_Test_reloc.o"
endseg

// Overlays for most actors and effects are reordered between versions. On N64 and iQue,
// the overlays are in some arbitrary order, while on GameCube they are sorted alphabetically.
#if !PLATFORM_GC
#include "overlays_n64_ique.inc"
#else
#include "overlays_gc.inc"
#endif
