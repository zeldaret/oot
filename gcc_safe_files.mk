# This file defines the objects able to be compiled with GCC. This file is normally generated
# by write_safe_files.py however due to GCC support being incomplete.

# The following files have not yet been listed on here:

# NOTE: For now, overlays have been de-listed from this list as there are a ton of non working
# overlays and it is not certain if they are working at all due to possible align issues or
# possible reloc ZAP2 issues. TODO: Investigate more thoroughly

# * Anything in src/buffers/ due to bss reordering.
# * src/code/main.o due to bss reordering.
# * src/boot/boot_main.o due to bss reordering.
# * src/code/z_play.o which is due to an incorrect prototype in Gameplay_Draw. This has already been resolved in a pending PR.

SAFE_C_FILES :=    \
    build/src/boot/yaz0.o    \
    build/src/boot/z_std_dma.o    \
    build/src/boot/viconfig.o    \
    build/src/boot/idle.o    \
    build/src/boot/boot_data.o    \
    build/src/boot/stackcheck.o    \
    build/src/boot/build.o    \
    build/src/boot/is_debug.o    \
    build/src/boot/logutils.o    \
    build/src/boot/assert.o    \
    build/src/boot/missing_gcc_functions.o    \
    build/src/boot/z_locale.o    \
    build/src/code/z_player_call.o    \
    build/src/code/z_scene.o    \
    build/src/code/z_prenmi_buff.o    \
    build/src/code/code_800FD970.o    \
    build/src/code/game.o    \
    build/src/code/z_jpeg.o    \
    build/src/code/z_kanfont.o    \
    build/src/code/z_lights.o    \
    build/src/code/gfxprint.o    \
    build/src/code/z_msgevent.o    \
    build/src/code/code_80097A00.o    \
    build/src/code/z_fcurve_data_skelanime.o    \
    build/src/code/z_camera.o    \
    build/src/code/logseverity.o    \
    build/src/code/z_map_exp.o    \
    build/src/code/sys_math_atan.o    \
    build/src/code/z_parameter.o    \
    build/src/code/z_skelanime.o    \
    build/src/code/z_construct.o    \
    build/src/code/padmgr.o    \
    build/src/code/code_8006C3A0.o    \
    build/src/code/z_common_data.o    \
    build/src/code/z_effect_soft_sprite.o    \
    build/src/code/code_800D2E30.o    \
    build/src/code/z_fbdemo_wipe1.o    \
    build/src/code/sys_ucode.o    \
    build/src/code/code_800FC620.o    \
    build/src/code/z_face_reaction.o    \
    build/src/code/fault_drawer.o    \
    build/src/code/z_camera_data.o    \
    build/src/code/title_setup.o    \
    build/src/code/z_effect_soft_sprite_dlftbls.o    \
    build/src/code/code_800AD920.o    \
    build/src/code/shrink_window.o    \
    build/src/code/code_8006BA00.o    \
    build/src/code/z_eff_blure.o    \
    build/src/code/z_kaleido_scope_call.o    \
    build/src/code/z_actor_dlftbls.o    \
    build/src/code/sys_math3d.o    \
    build/src/code/audioMgr.o    \
    build/src/code/z_DLF.o    \
    build/src/code/z_eff_ss_dead.o    \
    build/src/code/z_map_data.o    \
    build/src/code/z_scene_table.o    \
    build/src/code/relocation.o    \
    build/src/code/z_elf_message.o    \
    build/src/code/z_en_a_keep.o    \
    build/src/code/__osMalloc.o    \
    build/src/code/TwoHeadArena.o    \
    build/src/code/z_collision_btltbls.o    \
    build/src/code/sched.o    \
    build/src/code/z_skin_matrix.o    \
    build/src/code/padsetup.o    \
    build/src/code/code_801067F0.o    \
    build/src/code/z_fbdemo.o    \
    build/src/code/code_8006C510.o    \
    build/src/code/main_data.o    \
    build/src/code/code_80069420.o    \
    build/src/code/z_path.o    \
    build/src/code/code_800FCE80.o    \
    build/src/code/graph.o    \
    build/src/code/z_room.o    \
    build/src/code/z_fbdemo_triforce.o    \
    build/src/code/code_800ACE70.o    \
    build/src/code/z_demo.o    \
    build/src/code/z_fbdemo_circle.o    \
    build/src/code/z_fbdemo_fade.o    \
    build/src/code/z_debug.o    \
    build/src/code/audio_playback.o    \
    build/src/code/z_map_mark.o    \
    build/src/code/z_en_item00.o    \
    build/src/code/sleep.o    \
    build/src/code/sys_cfb.o    \
    build/src/code/z_cheap_proc.o    \
    build/src/code/z_eff_shield_particle.o    \
    build/src/code/code_800D31A0.o    \
    build/src/code/z_ss_sram.o    \
    build/src/code/gamealloc.o    \
    build/src/code/irqmgr.o    \
    build/src/code/jpegdecoder.o    \
    build/src/code/code_80106860.o    \
    build/src/code/code_8008E6A0.o    \
    build/src/code/fault.o    \
    build/src/code/code_800FBCE0.o    \
    build/src/code/z_view.o    \
    build/src/code/z_lifemeter.o    \
    build/src/code/z_vismono.o    \
    build/src/code/audio_effects.o    \
    build/src/code/listalloc.o    \
    build/src/code/printutils.o    \
    build/src/code/mtxuty-cvt.o    \
    build/src/code/z_olib.o    \
    build/src/code/z_debug_display.o    \
    build/src/code/z_player_lib.o    \
    build/src/code/z_game_dlftbls.o    \
    build/src/code/z_actor.o    \
    build/src/code/code_801068B0.o    \
    build/src/code/speed_meter.o    \
    build/src/code/z_draw.o    \
    build/src/code/z_horse.o    \
    build/src/code/sys_matrix.o    \
    build/src/code/z_sample.o    \
    build/src/code/code_800A9F30.o    \
    build/src/code/audio_heap.o    \
    build/src/code/z_moji.o    \
    build/src/code/padutils.o    \
    build/src/code/z_effect.o    \
    build/src/code/debug_malloc.o    \
    build/src/code/mempak.o    \
    build/src/code/code_800C3C20.o    \
    build/src/code/z_eff_spark.o    \
    build/src/code/z_quake.o    \
    build/src/code/z_kaleido_setup.o    \
    build/src/code/loadfragment2.o    \
    build/src/code/z_sram.o    \
    build/src/code/jpegutils.o    \
    build/src/code/z_prenmi.o    \
    build/src/code/z_rcp.o    \
    build/src/code/z_malloc.o    \
    build/src/code/code_800A9D40.o    \
    build/src/code/z_effect_soft_sprite_old_init.o    \
    build/src/code/z_vr_box_draw.o    \
    build/src/code/system_malloc.o    \
    build/src/code/flg_set.o    \
    build/src/code/z_kaleido_manager.o    \
    build/src/code/sys_math.o    \
    build/src/code/z_lib.o    \
