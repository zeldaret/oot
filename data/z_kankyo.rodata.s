.include "macro.inc"

# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

.align 4

glabel D_8013C240
    .asciz "\x1b[43;30m\n\nフィールド常駐以外、太陽設定！よって強制解除！\n\x1b[m"
    # EUC-JP: フィールド常駐以外、太陽設定！よって強制解除！ | "Sun setting except field resident! So forced release!"?
    .balign 4

glabel D_8013C280
    .asciz "\x1b[41;37m\nend_frameとstart_frameのフレーム関係がおかしい!!!\x1b[m"
    # EUC-JP: とstart_frameのフレーム関係がおかしい!!! | The frame relation between end_frame and start_frame is wrong
    .balign 4

glabel D_8013C2C0
    .asciz "\x1b[41;37m\nby get_parcent_forAccelBrake!!!!!!!!!\x1b[m"
    .balign 4

glabel D_8013C2F4
    .asciz "\x1b[41;37m\n環境ＶＲデータ取得失敗！ ささきまでご報告を！\x1b[m"
    # EUC-JP: 環境ＶＲデータ取得失敗！ ささきまでご報告を！ | Environment VR data acquisition failed! Report to Sasaki!
    .balign 4

glabel D_8013C330
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C340
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C350
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C360
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C370
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C380
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C390
    .asciz "\x1b[43;30m\n水ポリゴンデータに水中カラーが設定されておりません!\x1b[m"
    # EUC-JP: 水ポリゴンデータに水中カラーが設定されておりません | Underwater color is not set in the water poly data
    .balign 4

glabel D_8013C3D0
    .asciz "T%03d "
    .balign 4

glabel D_8013C3D8
    .asciz "E%03d"
    .balign 4

glabel D_8013C3E0
    .asciz "%s"
    .balign 4

glabel D_8013C3E4
    .asciz "ZELDATIME "
    .balign 4

glabel D_8013C3F0
    .asciz "%02d"
    .balign 4

glabel D_8013C3F8
    .asciz "%s"
    .balign 4

glabel D_8013C3FC
    .asciz ":"
    .balign 4

glabel D_8013C400
    .asciz "%s"
    .balign 4

glabel D_8013C404
    .asciz " "
    .balign 4

glabel D_8013C408
    .asciz "%02d"
    .balign 4

glabel D_8013C410
    .asciz "%s"
    .balign 4

glabel D_8013C414
    .asciz "VRBOXTIME "
    .balign 4

glabel D_8013C420
    .asciz "%02d"
    .balign 4

glabel D_8013C428
    .asciz "%s"
    .balign 4

glabel D_8013C42C
    .asciz ":"
    .balign 4

glabel D_8013C430
    .asciz "%s"
    .balign 4

glabel D_8013C434
    .asciz " "
    .balign 4

glabel D_8013C438
    .asciz "%02d"
    .balign 4

glabel D_8013C440
    .asciz "%s"
    .balign 4

glabel D_8013C444
    .asciz "YORU"
    .balign 4

glabel D_8013C44C
    .asciz "%s"
    .balign 4

glabel D_8013C450
    .asciz "HIRU"
    .balign 4

glabel D_8013C458
    .asciz "\nnext_zelda_time=[%x]"
    .balign 4

glabel D_8013C470
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C480
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C490
    .asciz "\x1b[41;37m\nカラーパレットの設定がおかしいようです！\x1b[m"
    # EUC-JP: カラーパレットの設定がおかしいようです！ | The color palette settings seem to be wrong!
    .balign 4

glabel D_8013C4C8
    .asciz "\x1b[41;37m\n設定パレット＝[%d] 最後パレット番号＝[%d]\n\x1b[m"
    # EUC-JP: 設定パレット＝[%d] 最後パレット番号＝ | Set pallet = [% d] Last pallet number =
    .balign 4

glabel D_8013C500
    .asciz "\n\x1b[31mカラーパレットがおかしいようです！"
    # EUC-JP: カラーパレットがおかしいようです！ | The color palette seems strange!
    .balign 4

glabel D_8013C52C
    .asciz "\n\x1b[33m設定パレット＝[%d] パレット数＝[%d]\n\x1b[m"
    # EUC-JP: 設定パレット＝[%d] パレット数＝[%d] | Set pallet = [% d] Number of pallets = [% d]
    .balign 4

glabel D_8013C55C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C56C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C57C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C58C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C59C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5AC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5BC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5CC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5DC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5EC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C5FC
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C60C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C61C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C62C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C63C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C64C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C65C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C66C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C67C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C68C
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C69C
    .asciz "\n\n\nBGM設定game_play->sound_info.BGM=[%d] old_bgm=[%d]\n\n"
    # EUC-JP: 設定 | Configuration
    .balign 4

glabel D_8013C6D4
    .asciz "\n-----------------\n"
    .balign 4

glabel D_8013C6E8
    .asciz "\n 強制ＢＧＭ=[%d]"
    # EUC-JP: 強制ＢＧＭ | Forced BGM
    .balign 4

glabel D_8013C6FC
    .asciz "\n     ＢＧＭ=[%d]"
    # EUC-JP: ＢＧＭ
    .balign 4

glabel D_8013C710
    .asciz "\n     エンブ=[%d]"
    # EUC-JP: エンブ | Emblem?
    .balign 4

glabel D_8013C724
    .asciz "\n     status=[%d]"
    .balign 4

glabel D_8013C738
    .asciz "\n\n\nNa_StartMorinigBgm\n\n"
    .balign 4

glabel D_8013C750
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C760
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C770
    .asciz "../z_kankyo.c"
    .balign 4

glabel D_8013C780
    .asciz "../z_kankyo.c"
    .balign 4

glabel jtbl_8013C790
    .word L8006F4A8
    .word L8006F4CC
    .word L8006F4CC
    .word L8006F4CC
    .word L8006F4F0

glabel D_8013C7A4
    .float 0.001

glabel D_8013C7A8
    .float 0.005

glabel D_8013C7AC
    .float 0.8

glabel D_8013C7B0
    .float 0.8

glabel D_8013C7B4
    .float 0.8

glabel D_8013C7B8
    .float 630

    .balign 8
glabel D_8013C7C0
    .double 0.001

glabel D_8013C7C8
    .float 1.0E-4

glabel D_8013C7CC
    .float 0.001

glabel D_8013C7D0
    .float 0.001

glabel D_8013C7D4
    .float 0.1

glabel D_8013C7D8
    .float 0.1

glabel D_8013C7DC
    .float 0.4

glabel D_8013C7E0
    .float 0.7

glabel D_8013C7E4
    .float 1.5707964 # M_PI / 2

glabel D_8013C7E8
    .float 1.2

glabel D_8013C7EC
    .float 0.1

glabel D_8013C7F0
    .float 0.02

glabel D_8013C7F4
    .float 0.02

glabel D_8013C7F8
    .float 0.1

glabel D_8013C7FC
    .float 2.9

glabel D_8013C800
    .float 5000

glabel D_8013C804
    .float 9500

glabel D_8013C808
    .float 0.017453292

glabel jtbl_8013C80C
   .word L80075B84
   .word L80075BD8
   .word L80075C30
   .word L80075C6C
   .word L80075CB4
   .word L80075CE0
   .word L80075D30
   .word L80075DE4
   .word L80075E34

glabel D_8013C830
    .float 0.16666667

glabel D_8013C834
    .float 1.8333334
