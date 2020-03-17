.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80145180
    .asciz "vtx_cnt=%d\n"
    .balign 4

glabel D_8014518C
    .asciz "spvtx_cnt=%d\n"
    .balign 4

glabel D_8014519C
    .asciz "tri1_cnt=%d\n"
    .balign 4

glabel D_801451AC
    .asciz "tri2_cnt=%d\n"
    .balign 4

glabel D_801451BC
    .asciz "quad_cnt=%d\n"
    .balign 4

glabel D_801451CC
    .asciz "line_cnt=%d\n"
    .balign 4

glabel D_801451DC
    .asciz "sync_err=%d\n"
    .balign 4

glabel D_801451EC
    .asciz "loaducode_cnt=%d\n"
    .balign 4

glabel D_80145200
    .asciz "dl_depth=%d\n"
    .balign 4

glabel D_80145210
    .asciz "dl_cnt=%d\n"
    .balign 4

glabel D_8014521C
    .asciz "../graph.c"
    .balign 4

glabel D_80145228
    .asciz "game_init_func = %08x\n"
    .balign 4

glabel D_80145240
    .asciz "\x1b[31m"
    .balign 4

glabel D_80145248
    .asciz "RCPが帰ってきませんでした。"
    .balign 4

glabel D_80145264
    .asciz "\x1b[m"
    .balign 4

glabel D_80145268
    .asciz "RCP is HUNG UP!!"
    .balign 4

glabel D_8014527C
    .asciz "Oh! MY GOD!!"
    .balign 4

glabel D_8014528C
    .asciz "../graph.c"
    .balign 4

glabel D_80145298
    .asciz "../graph.c"
    .balign 4

glabel D_801452A4
    .asciz "../graph.c"
    .balign 4

glabel D_801452B0
    .asciz "WORK_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452C0
    .asciz "POLY_OPA_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452D4
    .asciz "POLY_XLU_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452E8
    .asciz "OVERLAY_DISP 開始"
    # EUC-JP: 開始 | Start
    .balign 4

glabel D_801452FC
    .asciz "../graph.c"
    .balign 4

glabel D_80145308
    .asciz "../graph.c"
    .balign 4

glabel D_80145314
    .asciz "WORK_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145324
    .asciz "POLY_OPA_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145338
    .asciz "POLY_XLU_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_8014534C
    .asciz "OVERLAY_DISP 終了"
    # EUC-JP: 終了 | End
    .balign 4

glabel D_80145360
    .asciz "../graph.c"
    .balign 4

glabel D_8014536C
    .asciz "../graph.c"
    .balign 4

glabel D_80145378
    .asciz "../graph.c"
    .balign 4

glabel D_80145384
    .asciz "do_count_fault"
    .balign 4

glabel D_80145394
    .asciz "%c"
    .balign 4

glabel D_80145398
    .asciz "\x1b[41;37mダイナミック領域先頭が破壊されています\n\x1b[m"
    #ダイナミック領域先頭が破壊されています | Dynamic area head is destroyed
    .balign 4

glabel D_801453CC
    .asciz "../graph.c"
    .balign 4

glabel D_801453D8
    .asciz "%c"
    .balign 4

glabel D_801453DC
    .asciz "\x1b[41;37mダイナミック領域末尾が破壊されています\n\x1b[m"
    # EUC-JP: ダイナミック領域末尾が破壊されています | Dynamic region tail is destroyed
    .balign 4

glabel D_80145410
    .asciz "../graph.c"
    .balign 4

glabel D_8014541C
    .asciz "%c"
    .balign 4

glabel D_80145420
    .asciz "\x1b[41;37mゼルダ0は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ0は死んでしまった | 'Zelda 0 is dead'?
    .balign 4

glabel D_8014545C
    .asciz "%c"
    .balign 4

glabel D_80145460
    .asciz "\x1b[41;37mゼルダ1は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ1は死んでしまった | 'Zelda 1 is dead'?
    .balign 4

glabel D_8014549C
    .asciz "%c"
    .balign 4

glabel D_801454A0
    .asciz "\x1b[41;37mゼルダ4は死んでしまった(graph_alloc is empty)\n\x1b[m"
    # EUC-JP: ゼルダ4は死んでしまった | 'Zelda 4 is dead'?
    .balign 4

glabel D_801454DC
    .asciz "\x1b[43;30mPRE-NMIによりリセットモードに移行します\n\x1b[m"
    # EUC-JP: によりリセットモードに移行します | To reset mode
    .balign 4

glabel D_80145510
    .asciz "グラフィックスレッド実行開始\n"
    # EUC-JP: グラフィックスレッド実行開始 | Start graphic thread execution
    .balign 4

glabel D_80145530
    .asciz "クラスサイズ＝%dバイト\n"
    # EUC-JP: クラスサイズ＝%dバイト | Class size =%d bytes
    .balign 4

glabel D_80145548
    .asciz "../graph.c"
    .balign 4

glabel D_80145554
    .asciz "確保失敗\n"
    # EUC-JP: 確保失敗 | Failure to secure
    .balign 4

glabel D_80145560
    .asciz "CLASS SIZE= %d bytes"
    .balign 4

glabel D_80145578
    .asciz "GAME CLASS MALLOC FAILED"
    .balign 4

glabel D_80145594
    .asciz "../graph.c"
    .balign 4

glabel D_801455A0
    .asciz "グラフィックスレッド実行終了\n"
    # EUC-JP: グラフィックスレッド実行終了 | End of graphic thread execution
    .balign 4

glabel D_801455C0
    .asciz "graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n"
    .balign 4

glabel D_80145604
    .asciz "graph_alloc siz=%d thga size=%08x bufp=%08x head=%08x tail=%08x\n"
    .balign 4
