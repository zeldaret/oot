.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_80144D10
    .asciz "last_button=%04x\n"
    .balign 4

glabel D_80144D24
    .asciz "%08x"
    .balign 4

glabel D_80144D2C
    .asciz "%c"
    .balign 4

glabel D_80144D30
    .incbin "baserom.z64", 0xBBBED0, 0x20 

glabel D_80144D50
    .asciz "../game.c"
    .balign 4

glabel D_80144D5C
    .asciz "ハイラル滅亡まであと %08x バイト(game_alloc)\n"
    # EUC-JP: ハイラル滅亡まであと %08x バイト(game_alloc) | % 08x bytes (game_alloc) remaining until Hailal's demise
    .balign 4

glabel D_80144D8C
    .asciz "../game.c"
    .balign 4

glabel D_80144D98
    .asciz "../game.c"
    .balign 4

glabel D_80144DA4
    .asciz "../game.c"
    .balign 4

glabel D_80144DB0
    .asciz "../game.c"
    .balign 4

glabel D_80144DBC
    .asciz "../game.c"
    .balign 4

glabel D_80144DC8
    .asciz "ハイラル確保 サイズ＝%u バイト\n"
    # EUC-JP: ハイラル確保 サイズ＝%u バイト  | Hyal secured size =% u bytes
    .balign 4

glabel D_80144DE8
    .asciz "../game.c"
    .balign 4

glabel D_80144DF4
    .asciz "ハイラル確保成功\n"
    # EUC-JP: ハイラル確保成功 | Success in securing hyal
    .balign 4

glabel D_80144E08
    .asciz "ハイラル確保失敗\n"
    # EUC-JP: ハイラル確保失敗 | Hyal securing failure
    .balign 4

glabel D_80144E1C
    .asciz "../game.c"
    .balign 4

glabel D_80144E28
    .asciz "ハイラル一時解放!!\n"
    # EUC-JP: ハイラル一時解放!! | Hyal temporary release!
    .balign 4

glabel D_80144E3C
    .asciz "%c"
    .balign 4

glabel D_80144E40
    .asciz "\x1b[31m"
    .balign 4

glabel D_80144E48
    .asciz "メモリが足りません。ハイラルサイズを可能な最大値に変更します\n"
    # EUC-JP: メモリが足りません。ハイラルサイズを可能な最大値に変更します | Not enough memory. Change Hyrule size to maximum possible
    .balign 4

glabel D_80144E88
    .asciz "(hyral=%08x max=%08x free=%08x alloc=%08x)\n"
    .balign 4

glabel D_80144EB4
    .asciz "\x1b[m"
    .balign 4

glabel D_80144EB8
    .asciz "ハイラル再確保 サイズ＝%u バイト\n"
    # EUC-JP: ハイラル再確保 サイズ＝%u バイト | Hyal re-allocation size =%u bytes
    .balign 4

glabel D_80144EDC
    .asciz "../game.c"
    .balign 4

glabel D_80144EE8
    .asciz "ハイラル再確保成功\n"
    # EUC-JP: ハイラル再確保成功 | Successful Hyal Reacquisition
    .balign 4

glabel D_80144EFC
    .asciz "ハイラル再確保失敗\n"
    # EUC-JP: ハイラル再確保失敗 | Hyal reacquisition failure
    .balign 4

glabel D_80144F10
    .asciz "../game.c"
    .balign 4

glabel D_80144F1C
    .asciz "game コンストラクタ開始\n"
    # EUC-JP: コンストラクタ開始 | Constructor start
    .balign 4

glabel D_80144F38
    .asciz "game_set_next_game_null 処理時間 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F60
    .asciz "gamealloc_init 処理時間 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F80
    .asciz "init 処理時間 %d us\n"
    # EUC-JP: 処理時間 | Processing time
    .balign 4

glabel D_80144F98
    .asciz "this->cleanup"
    .balign 4

glabel D_80144FA8
    .asciz "../game.c"
    .balign 4

glabel D_80144FB4
    .asciz "その他初期化 処理時間 %d us\n"
    # EUC-JP: その他初期化 処理時間 | processing time
    .balign 4

glabel D_80144FD4
    .asciz "game コンストラクタ終了\n"
    # EUC-JP: コンストラクタ終了 | Constructor end
    .balign 4

glabel D_80144FF0
    .asciz "game デストラクタ開始\n"
    # EUC-JP: デストラクタ開始 | Destructor start
    .balign 4

glabel D_80145008
    .asciz "this->cleanup"
    .balign 4

glabel D_80145018
    .asciz "../game.c"
    .balign 4

glabel D_80145024
    .asciz "game デストラクタ終了\n"
    # EUC-JP: デストラクタ終了 | Destructor end
    .balign 4

glabel D_8014503C
    .asciz "ハイラルは滅亡している\n"
    # EUC-JP: ハイラルは滅亡している | Hyrule is gone
    .balign 4

glabel D_80145054
    .asciz "滅亡寸前のハイラルには %d バイトの余力もない（滅亡まであと %d バイト）\n"
    # EUC-JP: 滅亡寸前のハイラルには %d バイトの余力もない（滅亡まであと %d バイト）| Hailal on the verge of destruction has% d bytes of reserve (% d bytes left before destruction)
    .balign 4

glabel D_8014509C
    .asciz "ハイラルは滅亡してしまった\n"
    # EUC-JP: ハイラルは滅亡してしまった | Hyrule has perished
    .balign 4

glabel D_801450B8
    .asciz "\x1b[32m"
    .balign 4

glabel D_801450C0
    .asciz "game_alloc(%08x) %08x-%08x [%s:%d]\n"
    .balign 4

glabel D_801450E4
    .asciz "\x1b[m"
    .balign 4

glabel D_801450E8
    .float 0.833
