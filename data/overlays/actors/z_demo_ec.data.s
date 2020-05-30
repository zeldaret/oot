.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80970350
 .word 0x00C00088, 0x013300FC, 0x00FD010C, 0x01070115, 0x010D0121, 0x01220122, 0x01220122, 0x00FC00FD, 0x01160116, 0x011600FE, 0x00FF00FB, 0x00130013, 0x00130110, 0x0159013E, 0x015B0165, 0x00C900C9, 0x00C900C9, 0x00D00000
glabel D_80970398
 .word 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A015A, 0x015A0126, 0x00D00000
glabel D_809703E0
 .word 0x008246FF
glabel D_809703E4
 .word 0x6EAA14FF
glabel D_809703E8
 .word 0x06000F4C, 0x06001A0C, 0x06001E0C
glabel D_809703F4
 .word 0x46BE3CFF
glabel D_809703F8
 .word 0x641E00FF
glabel D_809703FC
 .word 0x060005FC, 0x060009FC, 0x06000DFC
glabel D_80970408
 .word 0x003264FF
glabel D_8097040C
 .word 0x0032A0FF
glabel D_80970410
 .word 0x0600057C, 0x0600067C, 0x0600077C
glabel D_8097041C
 .word 0xFFFFFFFF
glabel D_80970420
 .word 0xFFFFFFFF
glabel D_80970424
 .word 0x060007C8, 0x06000FC8, 0x060017C8
glabel D_80970430
 .word 0x06000708, 0x06000F08, 0x06001708
glabel D_8097043C
 .word 0x06003E40, 0x06004640, 0x06004E40
glabel D_80970448
 .word 0x06001470, 0x06001870, 0x06001C70, 0x06002070
glabel D_80970458
 .word 0x06004FF0, 0x06005930, 0x06005D30, 0x06006130
glabel D_80970468
 .word 0x060008C8, 0x060010C8, 0x060018C8
glabel D_80970474
 .word 0x060030D8, 0x060034D8, 0x060038D8
glabel D_80970480
 .word 0x06009250, 0x06009650, 0x06009A50
glabel D_8097048C
 .word 0x06003968, 0x06003D68, 0x06004168
glabel D_80970498
 .word 0x0600CE80, 0x0600D280, 0x0600D680
glabel D_809704A4
 .word 0x06002570, 0x06002C70, 0x06003070
glabel D_809704B0
 .word func_8096DE94
.word func_8096DF9C
.word func_8096E0A4
.word func_8096E1AC
.word func_8096E380
.word func_8096E56C
.word func_8096E69C
.word func_8096E7CC
.word func_8096E8E4
.word func_8096E9E8
.word func_8096EAE8
.word func_8096EAE8
.word func_8096EAE8
.word func_8096EAE8
.word func_8096E244
.word func_8096E418
.word func_8096EDFC
.word func_8096EDFC
.word func_8096EDFC
.word func_8096F010
.word func_8096F12C
.word func_8096F454
.word func_8096F6D8
.word func_8096F6D8
.word func_8096F6D8
.word func_8096F808
.word func_8096F924
.word func_8096FA40
.word func_8096FB48
.word func_8096FCEC
.word func_8096FE08
.word func_8096FE08
.word func_8096FE08
.word func_8096FE08
.word func_8096FFBC
glabel D_8097053C
 .word func_80970140
.word func_8096DF2C
.word func_8096E034
.word func_8096E13C
.word func_8096E2E0
.word func_8096E4B4
.word func_8096E604
.word func_8096E734
.word func_8096E864
.word func_8096E97C
.word func_8096EA80
.word func_8096EB80
.word func_8096E31C
.word func_8096E4F8
.word func_8096EE98
.word func_8096F0AC
.word func_8096F314
.word func_8096F378
.word func_8096F3D4
.word func_8096F5DC
.word func_8096F640
.word func_8096F7A0
.word func_8096F8A4
.word func_8096F9C0
.word func_8096FADC
.word func_8096FBE4
.word func_8096FD88
.word func_8096FF38
.word func_80970058
glabel D_809705B0
 .word func_809702B0
.word func_8096DF68
.word func_8096E070
.word func_8096E178
.word func_8096E33C
.word func_8096E518
.word func_8096E648
.word func_8096E778
.word func_8096E8A8
.word func_8096E9B8
.word func_8096EABC
.word func_8096EDC0
.word func_8096EFCC
.word func_8096F0F0
.word func_8096F418
.word func_8096F69C
.word func_8096F7DC
.word func_8096F8E8
.word func_8096FA04
.word func_8096FB18
.word func_8096FCA8
.word func_8096FDCC
.word func_8096FF7C
.word func_8097009C
glabel Demo_Ec_InitVars
 .word 0x01820400, 0x00000010, 0x015A0000, 0x000001A8
.word DemoEc_Init
.word DemoEc_Destroy
.word DemoEc_Update
.word DemoEc_Draw

