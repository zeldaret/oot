.rdata
glabel D_801549EC
    .asciz "msgno=%d\n"
    .balign 4

glabel D_801549F8
    # Message found！！！ = %x
    .asciz " メッセージが,見つかった！！！ = %x\n"
    .balign 4

glabel D_80154A20
    .asciz "dxpos=%d   dypos=%d  dypos1  dypos2=%d\n"
    .balign 4

glabel D_80154A48
    .asciz "message->msg_disp_type=%x\n"
    .balign 4

glabel D_80154A64
    .asciz "OCARINA_MODE=%d -> "
    .balign 4

glabel D_80154A78
    .asciz "InRaceSeq=%d(%d) OCARINA_MODE=%d  -->  "
    .balign 4

glabel D_80154AA0
    .asciz "OCARINA_MODE=%d\n"
    .balign 4

glabel D_80154AB4
    .asciz "select=%d\n"
    .balign 4

glabel D_80154AC0
    .asciz "\x1b[32m"
    .balign 4

glabel D_80154AC8
    .asciz "day_time=%x  active_camera=%d  "
    .balign 4

glabel D_80154AE8
    .asciz "=== day_time=%x "
    .balign 4

glabel D_80154AFC
    .asciz "\x1b[m"
    .balign 4

glabel D_80154B00
    .asciz "OCARINA_MODE=%d   chk_ocarina_no=%d\n"
    .balign 4

.late_rodata
glabel jtbl_80154CC4
    .word L8010F8F8
    .word L8010FCE0
    .word L8010FCF0
    .word L8010FD24
    .word L8010FD80
    .word L8010FDB0
    .word L8010FE10
    .word L8010FE58

.text
glabel func_8010F6F0
/* B86890 8010F6F0 27BDFFA8 */  addiu $sp, $sp, -0x58
/* B86894 8010F6F4 AFBF001C */  sw    $ra, 0x1c($sp)
/* B86898 8010F6F8 AFA40058 */  sw    $a0, 0x58($sp)
/* B8689C 8010F6FC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B868A0 8010F700 8C8F1C44 */  lw    $t7, 0x1c44($a0)
/* B868A4 8010F704 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B868A8 8010F708 8D260000 */  lw    $a2, ($t1)
/* B868AC 8010F70C AFAF004C */  sw    $t7, 0x4c($sp)
/* B868B0 8010F710 24820014 */  addiu $v0, $a0, 0x14
/* B868B4 8010F714 84D812D4 */  lh    $t8, 0x12d4($a2)
/* B868B8 8010F718 5300004E */  beql  $t8, $zero, .L8010F854
/* B868BC 8010F71C 8FB80058 */   lw    $t8, 0x58($sp)
/* B868C0 8010F720 9459000C */  lhu   $t9, 0xc($v0)
/* B868C4 8010F724 2401FBFF */  li    $at, -1025
/* B868C8 8010F728 03215027 */  nor   $t2, $t9, $at
/* B868CC 8010F72C 5540001D */  bnezl $t2, .L8010F7A4
/* B868D0 8010F730 84D90530 */   lh    $t9, 0x530($a2)
/* B868D4 8010F734 944B0000 */  lhu   $t3, ($v0)
/* B868D8 8010F738 2401FFDF */  li    $at, -33
/* B868DC 8010F73C 3C048015 */  lui   $a0, %hi(D_801549EC) # $a0, 0x8015
/* B868E0 8010F740 01616027 */  nor   $t4, $t3, $at
/* B868E4 8010F744 15800016 */  bnez  $t4, .L8010F7A0
/* B868E8 8010F748 248449EC */   addiu $a0, %lo(D_801549EC) # addiu $a0, $a0, 0x49ec
/* B868EC 8010F74C 3C058015 */  lui   $a1, %hi(D_80153D78) # $a1, 0x8015
/* B868F0 8010F750 0C00084C */  jal   osSyncPrintf
/* B868F4 8010F754 94A53D78 */   lhu   $a1, %lo(D_80153D78)($a1)
/* B868F8 8010F758 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B868FC 8010F75C 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86900 8010F760 8D2D0000 */  lw    $t5, ($t1)
/* B86904 8010F764 8FA40058 */  lw    $a0, 0x58($sp)
/* B86908 8010F768 00003025 */  move  $a2, $zero
/* B8690C 8010F76C 0C042DA0 */  jal   func_8010B680
/* B86910 8010F770 95A50532 */   lhu   $a1, 0x532($t5)
/* B86914 8010F774 3C0F8015 */  lui   $t7, %hi(D_80153D78) # $t7, 0x8015
/* B86918 8010F778 95EF3D78 */  lhu   $t7, %lo(D_80153D78)($t7)
/* B8691C 8010F77C 2401000A */  li    $at, 10
/* B86920 8010F780 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86924 8010F784 25F80001 */  addiu $t8, $t7, 1
/* B86928 8010F788 0301001A */  div   $zero, $t8, $at
/* B8692C 8010F78C 00007010 */  mfhi  $t6
/* B86930 8010F790 3C018015 */  lui   $at, %hi(D_80153D78) # $at, 0x8015
/* B86934 8010F794 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86938 8010F798 A42E3D78 */  sh    $t6, %lo(D_80153D78)($at)
/* B8693C 8010F79C 8D260000 */  lw    $a2, ($t1)
.L8010F7A0:
/* B86940 8010F7A0 84D90530 */  lh    $t9, 0x530($a2)
.L8010F7A4:
/* B86944 8010F7A4 5320002B */  beql  $t9, $zero, .L8010F854
/* B86948 8010F7A8 8FB80058 */   lw    $t8, 0x58($sp)
/* B8694C 8010F7AC 84C50532 */  lh    $a1, 0x532($a2)
/* B86950 8010F7B0 34078000 */  li    $a3, 32768
/* B86954 8010F7B4 3C088015 */  lui   $t0, %hi(D_801538F0) # $t0, 0x8015
/* B86958 8010F7B8 10E50025 */  beq   $a3, $a1, .L8010F850
/* B8695C 8010F7BC 250838F0 */   addiu $t0, %lo(D_801538F0) # addiu $t0, $t0, 0x38f0
/* B86960 8010F7C0 3404FFFD */  li    $a0, 65533
/* B86964 8010F7C4 8D020000 */  lw    $v0, ($t0)
.L8010F7C8:
/* B86968 8010F7C8 24AF0001 */  addiu $t7, $a1, 1
/* B8696C 8010F7CC 94430000 */  lhu   $v1, ($v0)
/* B86970 8010F7D0 5083001B */  beql  $a0, $v1, .L8010F840
/* B86974 8010F7D4 A4CF0532 */   sh    $t7, 0x532($a2)
.L8010F7D8:
/* B86978 8010F7D8 54650015 */  bnel  $v1, $a1, .L8010F830
/* B8697C 8010F7DC 94430008 */   lhu   $v1, 8($v0)
/* B86980 8010F7E0 3C048015 */  lui   $a0, %hi(D_801549F8) # $a0, 0x8015
/* B86984 8010F7E4 0C00084C */  jal   osSyncPrintf
/* B86988 8010F7E8 248449F8 */   addiu $a0, %lo(D_801549F8) # addiu $a0, $a0, 0x49f8
/* B8698C 8010F7EC 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86990 8010F7F0 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86994 8010F7F4 8D2A0000 */  lw    $t2, ($t1)
/* B86998 8010F7F8 8FA40058 */  lw    $a0, 0x58($sp)
/* B8699C 8010F7FC 00003025 */  move  $a2, $zero
/* B869A0 8010F800 0C042DA0 */  jal   func_8010B680
/* B869A4 8010F804 95450532 */   lhu   $a1, 0x532($t2)
/* B869A8 8010F808 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B869AC 8010F80C 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B869B0 8010F810 8D260000 */  lw    $a2, ($t1)
/* B869B4 8010F814 84CB0532 */  lh    $t3, 0x532($a2)
/* B869B8 8010F818 256C0001 */  addiu $t4, $t3, 1
/* B869BC 8010F81C A4CC0532 */  sh    $t4, 0x532($a2)
/* B869C0 8010F820 8D2D0000 */  lw    $t5, ($t1)
/* B869C4 8010F824 100002F5 */  b     .L801103FC
/* B869C8 8010F828 A5A00530 */   sh    $zero, 0x530($t5)
/* B869CC 8010F82C 94430008 */  lhu   $v1, 8($v0)
.L8010F830:
/* B869D0 8010F830 24420008 */  addiu $v0, $v0, 8
/* B869D4 8010F834 1483FFE8 */  bne   $a0, $v1, .L8010F7D8
/* B869D8 8010F838 00000000 */   nop   
/* B869DC 8010F83C A4CF0532 */  sh    $t7, 0x532($a2)
.L8010F840:
/* B869E0 8010F840 8D260000 */  lw    $a2, ($t1)
/* B869E4 8010F844 84C50532 */  lh    $a1, 0x532($a2)
/* B869E8 8010F848 54E5FFDF */  bnel  $a3, $a1, .L8010F7C8
/* B869EC 8010F84C 8D020000 */   lw    $v0, ($t0)
.L8010F850:
/* B869F0 8010F850 8FB80058 */  lw    $t8, 0x58($sp)
.L8010F854:
/* B869F4 8010F854 34018000 */  li    $at, 32768
/* B869F8 8010F858 270E20D8 */  addiu $t6, $t8, 0x20d8
/* B869FC 8010F85C AFAE0030 */  sw    $t6, 0x30($sp)
/* B86A00 8010F860 01C14021 */  addu  $t0, $t6, $at
/* B86A04 8010F864 8D196300 */  lw    $t9, 0x6300($t0)
/* B86A08 8010F868 532002E5 */  beql  $t9, $zero, .L80110400
/* B86A0C 8010F86C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86A10 8010F870 91056304 */  lbu   $a1, 0x6304($t0)
/* B86A14 8010F874 28A10036 */  slti  $at, $a1, 0x36
/* B86A18 8010F878 14200008 */  bnez  $at, .L8010F89C
/* B86A1C 8010F87C 24010036 */   li    $at, 54
/* B86A20 8010F880 10A1020A */  beq   $a1, $at, .L801100AC
/* B86A24 8010F884 8FAC0030 */   lw    $t4, 0x30($sp)
/* B86A28 8010F888 24010037 */  li    $at, 55
/* B86A2C 8010F88C 50A102DC */  beql  $a1, $at, .L80110400
/* B86A30 8010F890 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86A34 8010F894 100002D6 */  b     .L801103F0
/* B86A38 8010F898 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F89C:
/* B86A3C 8010F89C 28A10035 */  slti  $at, $a1, 0x35
/* B86A40 8010F8A0 14200005 */  bnez  $at, .L8010F8B8
/* B86A44 8010F8A4 24010035 */   li    $at, 53
/* B86A48 8010F8A8 50A10185 */  beql  $a1, $at, .L8010FEC0
/* B86A4C 8010F8AC 910263E4 */   lbu   $v0, 0x63e4($t0)
/* B86A50 8010F8B0 100002CF */  b     .L801103F0
/* B86A54 8010F8B4 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F8B8:
/* B86A58 8010F8B8 28A10009 */  slti  $at, $a1, 9
/* B86A5C 8010F8BC 14200006 */  bnez  $at, .L8010F8D8
/* B86A60 8010F8C0 24AAFFFF */   addiu $t2, $a1, -1
/* B86A64 8010F8C4 24010034 */  li    $at, 52
/* B86A68 8010F8C8 10A1016F */  beq   $a1, $at, .L8010FE88
/* B86A6C 8010F8CC 8FA40058 */   lw    $a0, 0x58($sp)
/* B86A70 8010F8D0 100002C7 */  b     .L801103F0
/* B86A74 8010F8D4 8FAC0030 */   lw    $t4, 0x30($sp)
.L8010F8D8:
/* B86A78 8010F8D8 2D410008 */  sltiu $at, $t2, 8
/* B86A7C 8010F8DC 102002C3 */  beqz  $at, .L801103EC
/* B86A80 8010F8E0 000A5080 */   sll   $t2, $t2, 2
/* B86A84 8010F8E4 3C018015 */  lui   $at, %hi(jtbl_80154CC4)
/* B86A88 8010F8E8 002A0821 */  addu  $at, $at, $t2
/* B86A8C 8010F8EC 8C2A4CC4 */  lw    $t2, %lo(jtbl_80154CC4)($at)
/* B86A90 8010F8F0 01400008 */  jr    $t2
/* B86A94 8010F8F4 00000000 */   nop   
glabel L8010F8F8
/* B86A98 8010F8F8 3C048015 */  lui   $a0, %hi(D_8014B2F4) # $a0, 0x8015
/* B86A9C 8010F8FC 2484B2F4 */  addiu $a0, %lo(D_8014B2F4) # addiu $a0, $a0, -0x4d0c
/* B86AA0 8010F900 908B0000 */  lbu   $t3, ($a0)
/* B86AA4 8010F904 24010040 */  li    $at, 64
/* B86AA8 8010F908 00001825 */  move  $v1, $zero
/* B86AAC 8010F90C 256C0001 */  addiu $t4, $t3, 1
/* B86AB0 8010F910 A08C0000 */  sb    $t4, ($a0)
/* B86AB4 8010F914 84C204B2 */  lh    $v0, 0x4b2($a2)
/* B86AB8 8010F918 318D00FF */  andi  $t5, $t4, 0xff
/* B86ABC 8010F91C 14410005 */  bne   $v0, $at, .L8010F934
/* B86AC0 8010F920 29A10004 */   slti  $at, $t5, 4
/* B86AC4 8010F924 14200013 */  bnez  $at, .L8010F974
/* B86AC8 8010F928 00000000 */   nop   
/* B86ACC 8010F92C 10000011 */  b     .L8010F974
/* B86AD0 8010F930 24030001 */   li    $v1, 1
.L8010F934:
/* B86AD4 8010F934 14400005 */  bnez  $v0, .L8010F94C
/* B86AD8 8010F938 8FAF0058 */   lw    $t7, 0x58($sp)
/* B86ADC 8010F93C 85F800A4 */  lh    $t8, 0xa4($t7)
/* B86AE0 8010F940 24010045 */  li    $at, 69
/* B86AE4 8010F944 57010004 */  bnel  $t8, $at, .L8010F958
/* B86AE8 8010F948 908E0000 */   lbu   $t6, ($a0)
.L8010F94C:
/* B86AEC 8010F94C 10000009 */  b     .L8010F974
/* B86AF0 8010F950 24030001 */   li    $v1, 1
/* B86AF4 8010F954 908E0000 */  lbu   $t6, ($a0)
.L8010F958:
/* B86AF8 8010F958 29C10004 */  slti  $at, $t6, 4
/* B86AFC 8010F95C 50200005 */  beql  $at, $zero, .L8010F974
/* B86B00 8010F960 24030001 */   li    $v1, 1
/* B86B04 8010F964 8D196408 */  lw    $t9, 0x6408($t0)
/* B86B08 8010F968 17200002 */  bnez  $t9, .L8010F974
/* B86B0C 8010F96C 00000000 */   nop   
/* B86B10 8010F970 24030001 */  li    $v1, 1
.L8010F974:
/* B86B14 8010F974 506002A2 */  beql  $v1, $zero, .L80110400
/* B86B18 8010F978 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86B1C 8010F97C 8D0A6408 */  lw    $t2, 0x6408($t0)
/* B86B20 8010F980 8FA40058 */  lw    $a0, 0x58($sp)
/* B86B24 8010F984 27A70040 */  addiu $a3, $sp, 0x40
/* B86B28 8010F988 5140002E */  beql  $t2, $zero, .L8010FA44
/* B86B2C 8010F98C 84D90B24 */   lh    $t9, 0xb24($a2)
/* B86B30 8010F990 8C851C44 */  lw    $a1, 0x1c44($a0)
/* B86B34 8010F994 AFA80024 */  sw    $t0, 0x24($sp)
/* B86B38 8010F998 0C00BCDD */  jal   func_8002F374
/* B86B3C 8010F99C 27A60044 */   addiu $a2, $sp, 0x44
/* B86B40 8010F9A0 8FA80024 */  lw    $t0, 0x24($sp)
/* B86B44 8010F9A4 8FA40058 */  lw    $a0, 0x58($sp)
/* B86B48 8010F9A8 27A60044 */  addiu $a2, $sp, 0x44
/* B86B4C 8010F9AC 27A7003E */  addiu $a3, $sp, 0x3e
/* B86B50 8010F9B0 0C00BCDD */  jal   func_8002F374
/* B86B54 8010F9B4 8D056408 */   lw    $a1, 0x6408($t0)
/* B86B58 8010F9B8 87A2003E */  lh    $v0, 0x3e($sp)
/* B86B5C 8010F9BC 87A70040 */  lh    $a3, 0x40($sp)
/* B86B60 8010F9C0 8FA80024 */  lw    $t0, 0x24($sp)
/* B86B64 8010F9C4 00E2082A */  slt   $at, $a3, $v0
/* B86B68 8010F9C8 14200009 */  bnez  $at, .L8010F9F0
/* B86B6C 8010F9CC 0047C023 */   subu  $t8, $v0, $a3
/* B86B70 8010F9D0 00E26023 */  subu  $t4, $a3, $v0
/* B86B74 8010F9D4 05810003 */  bgez  $t4, .L8010F9E4
/* B86B78 8010F9D8 000C6843 */   sra   $t5, $t4, 1
/* B86B7C 8010F9DC 25810001 */  addiu $at, $t4, 1
/* B86B80 8010F9E0 00016843 */  sra   $t5, $at, 1
.L8010F9E4:
/* B86B84 8010F9E4 01A27821 */  addu  $t7, $t5, $v0
/* B86B88 8010F9E8 10000009 */  b     .L8010FA10
/* B86B8C 8010F9EC A7AF0042 */   sh    $t7, 0x42($sp)
.L8010F9F0:
/* B86B90 8010F9F0 07010003 */  bgez  $t8, .L8010FA00
/* B86B94 8010F9F4 00187043 */   sra   $t6, $t8, 1
/* B86B98 8010F9F8 27010001 */  addiu $at, $t8, 1
/* B86B9C 8010F9FC 00017043 */  sra   $t6, $at, 1
.L8010FA00:
/* B86BA0 8010FA00 01C72021 */  addu  $a0, $t6, $a3
/* B86BA4 8010FA04 00042400 */  sll   $a0, $a0, 0x10
/* B86BA8 8010FA08 00042403 */  sra   $a0, $a0, 0x10
/* B86BAC 8010FA0C A7A40042 */  sh    $a0, 0x42($sp)
.L8010FA10:
/* B86BB0 8010FA10 3C048015 */  lui   $a0, %hi(D_80154A20) # $a0, 0x8015
/* B86BB4 8010FA14 24844A20 */  addiu $a0, %lo(D_80154A20) # addiu $a0, $a0, 0x4a20
/* B86BB8 8010FA18 87A50044 */  lh    $a1, 0x44($sp)
/* B86BBC 8010FA1C 87A60042 */  lh    $a2, 0x42($sp)
/* B86BC0 8010FA20 AFA20010 */  sw    $v0, 0x10($sp)
/* B86BC4 8010FA24 0C00084C */  jal   osSyncPrintf
/* B86BC8 8010FA28 AFA80024 */   sw    $t0, 0x24($sp)
/* B86BCC 8010FA2C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86BD0 8010FA30 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86BD4 8010FA34 87A40042 */  lh    $a0, 0x42($sp)
/* B86BD8 8010FA38 10000007 */  b     .L8010FA58
/* B86BDC 8010FA3C 8FA80024 */   lw    $t0, 0x24($sp)
/* B86BE0 8010FA40 84D90B24 */  lh    $t9, 0xb24($a2)
.L8010FA44:
/* B86BE4 8010FA44 A4D90F14 */  sh    $t9, 0xf14($a2)
/* B86BE8 8010FA48 8D260000 */  lw    $a2, ($t1)
/* B86BEC 8010FA4C 84CA0B26 */  lh    $t2, 0xb26($a2)
/* B86BF0 8010FA50 A4CA0F16 */  sh    $t2, 0xf16($a2)
/* B86BF4 8010FA54 87A40042 */  lh    $a0, 0x42($sp)
.L8010FA58:
/* B86BF8 8010FA58 910262FE */  lbu   $v0, 0x62fe($t0)
/* B86BFC 8010FA5C 910362FD */  lbu   $v1, 0x62fd($t0)
/* B86C00 8010FA60 24010001 */  li    $at, 1
/* B86C04 8010FA64 1440003E */  bnez  $v0, .L8010FB60
/* B86C08 8010FA68 00000000 */   nop   
/* B86C0C 8010FA6C 8D260000 */  lw    $a2, ($t1)
/* B86C10 8010FA70 8FAC0058 */  lw    $t4, 0x58($sp)
/* B86C14 8010FA74 84CB04B2 */  lh    $t3, 0x4b2($a2)
/* B86C18 8010FA78 55600006 */  bnezl $t3, .L8010FA94
/* B86C1C 8010FA7C 84CD0B4C */   lh    $t5, 0xb4c($a2)
/* B86C20 8010FA80 858200A4 */  lh    $v0, 0xa4($t4)
/* B86C24 8010FA84 24010045 */  li    $at, 69
/* B86C28 8010FA88 54410011 */  bnel  $v0, $at, .L8010FAD0
/* B86C2C 8010FA8C 24010020 */   li    $at, 32
/* B86C30 8010FA90 84CD0B4C */  lh    $t5, 0xb4c($a2)
.L8010FA94:
/* B86C34 8010FA94 00031040 */  sll   $v0, $v1, 1
/* B86C38 8010FA98 3C188015 */  lui   $t8, %hi(D_80153D18)
/* B86C3C 8010FA9C 008D082A */  slt   $at, $a0, $t5
/* B86C40 8010FAA0 10200007 */  beqz  $at, .L8010FAC0
/* B86C44 8010FAA4 0302C021 */   addu  $t8, $t8, $v0
/* B86C48 8010FAA8 00031040 */  sll   $v0, $v1, 1
/* B86C4C 8010FAAC 3C0F8015 */  lui   $t7, %hi(D_80153D0C)
/* B86C50 8010FAB0 01E27821 */  addu  $t7, $t7, $v0
/* B86C54 8010FAB4 85EF3D0C */  lh    $t7, %lo(D_80153D0C)($t7)
/* B86C58 8010FAB8 10000041 */  b     .L8010FBC0
/* B86C5C 8010FABC A4CF0B26 */   sh    $t7, 0xb26($a2)
.L8010FAC0:
/* B86C60 8010FAC0 87183D18 */  lh    $t8, %lo(D_80153D18)($t8)
/* B86C64 8010FAC4 1000003E */  b     .L8010FBC0
/* B86C68 8010FAC8 A4D80B26 */   sh    $t8, 0xb26($a2)
/* B86C6C 8010FACC 24010020 */  li    $at, 32
.L8010FAD0:
/* B86C70 8010FAD0 10410005 */  beq   $v0, $at, .L8010FAE8
/* B86C74 8010FAD4 24010021 */   li    $at, 33
/* B86C78 8010FAD8 10410003 */  beq   $v0, $at, .L8010FAE8
/* B86C7C 8010FADC 24010022 */   li    $at, 34
/* B86C80 8010FAE0 54410011 */  bnel  $v0, $at, .L8010FB28
/* B86C84 8010FAE4 84CB0B50 */   lh    $t3, 0xb50($a2)
.L8010FAE8:
/* B86C88 8010FAE8 84CE0B4E */  lh    $t6, 0xb4e($a2)
/* B86C8C 8010FAEC 00031040 */  sll   $v0, $v1, 1
/* B86C90 8010FAF0 3C0A8015 */  lui   $t2, %hi(D_80153D18)
/* B86C94 8010FAF4 008E082A */  slt   $at, $a0, $t6
/* B86C98 8010FAF8 10200007 */  beqz  $at, .L8010FB18
/* B86C9C 8010FAFC 01425021 */   addu  $t2, $t2, $v0
/* B86CA0 8010FB00 00031040 */  sll   $v0, $v1, 1
/* B86CA4 8010FB04 3C198015 */  lui   $t9, %hi(D_80153D0C)
/* B86CA8 8010FB08 0322C821 */  addu  $t9, $t9, $v0
/* B86CAC 8010FB0C 87393D0C */  lh    $t9, %lo(D_80153D0C)($t9)
/* B86CB0 8010FB10 1000002B */  b     .L8010FBC0
/* B86CB4 8010FB14 A4D90B26 */   sh    $t9, 0xb26($a2)
.L8010FB18:
/* B86CB8 8010FB18 854A3D18 */  lh    $t2, %lo(D_80153D18)($t2)
/* B86CBC 8010FB1C 10000028 */  b     .L8010FBC0
/* B86CC0 8010FB20 A4CA0B26 */   sh    $t2, 0xb26($a2)
/* B86CC4 8010FB24 84CB0B50 */  lh    $t3, 0xb50($a2)
.L8010FB28:
/* B86CC8 8010FB28 00031040 */  sll   $v0, $v1, 1
/* B86CCC 8010FB2C 3C0D8015 */  lui   $t5, %hi(D_80153D18)
/* B86CD0 8010FB30 008B082A */  slt   $at, $a0, $t3
/* B86CD4 8010FB34 10200007 */  beqz  $at, .L8010FB54
/* B86CD8 8010FB38 01A26821 */   addu  $t5, $t5, $v0
/* B86CDC 8010FB3C 00031040 */  sll   $v0, $v1, 1
/* B86CE0 8010FB40 3C0C8015 */  lui   $t4, %hi(D_80153D0C)
/* B86CE4 8010FB44 01826021 */  addu  $t4, $t4, $v0
/* B86CE8 8010FB48 858C3D0C */  lh    $t4, %lo(D_80153D0C)($t4)
/* B86CEC 8010FB4C 1000001C */  b     .L8010FBC0
/* B86CF0 8010FB50 A4CC0B26 */   sh    $t4, 0xb26($a2)
.L8010FB54:
/* B86CF4 8010FB54 85AD3D18 */  lh    $t5, %lo(D_80153D18)($t5)
/* B86CF8 8010FB58 10000019 */  b     .L8010FBC0
/* B86CFC 8010FB5C A4CD0B26 */   sh    $t5, 0xb26($a2)
.L8010FB60:
/* B86D00 8010FB60 14410008 */  bne   $v0, $at, .L8010FB84
/* B86D04 8010FB64 00402025 */   move  $a0, $v0
/* B86D08 8010FB68 00031040 */  sll   $v0, $v1, 1
/* B86D0C 8010FB6C 3C0F8015 */  lui   $t7, %hi(D_80153D18)
/* B86D10 8010FB70 01E27821 */  addu  $t7, $t7, $v0
/* B86D14 8010FB74 85EF3D18 */  lh    $t7, %lo(D_80153D18)($t7)
/* B86D18 8010FB78 8D380000 */  lw    $t8, ($t1)
/* B86D1C 8010FB7C 10000010 */  b     .L8010FBC0
/* B86D20 8010FB80 A70F0B26 */   sh    $t7, 0xb26($t8)
.L8010FB84:
/* B86D24 8010FB84 24010002 */  li    $at, 2
/* B86D28 8010FB88 14810008 */  bne   $a0, $at, .L8010FBAC
/* B86D2C 8010FB8C 00031040 */   sll   $v0, $v1, 1
/* B86D30 8010FB90 00031040 */  sll   $v0, $v1, 1
/* B86D34 8010FB94 3C0E8015 */  lui   $t6, %hi(D_80153D24)
/* B86D38 8010FB98 01C27021 */  addu  $t6, $t6, $v0
/* B86D3C 8010FB9C 85CE3D24 */  lh    $t6, %lo(D_80153D24)($t6)
/* B86D40 8010FBA0 8D390000 */  lw    $t9, ($t1)
/* B86D44 8010FBA4 10000006 */  b     .L8010FBC0
/* B86D48 8010FBA8 A72E0B26 */   sh    $t6, 0xb26($t9)
.L8010FBAC:
/* B86D4C 8010FBAC 3C0A8015 */  lui   $t2, %hi(D_80153D0C)
/* B86D50 8010FBB0 01425021 */  addu  $t2, $t2, $v0
/* B86D54 8010FBB4 854A3D0C */  lh    $t2, %lo(D_80153D0C)($t2)
/* B86D58 8010FBB8 8D2B0000 */  lw    $t3, ($t1)
/* B86D5C 8010FBBC A56A0B26 */  sh    $t2, 0xb26($t3)
.L8010FBC0:
/* B86D60 8010FBC0 3C0C8015 */  lui   $t4, %hi(D_80153D00)
/* B86D64 8010FBC4 01826021 */  addu  $t4, $t4, $v0
/* B86D68 8010FBC8 858C3D00 */  lh    $t4, %lo(D_80153D00)($t4)
/* B86D6C 8010FBCC 8D2D0000 */  lw    $t5, ($t1)
/* B86D70 8010FBD0 3C188015 */  lui   $t8, %hi(D_80153D30)
/* B86D74 8010FBD4 0302C021 */  addu  $t8, $t8, $v0
/* B86D78 8010FBD8 A5AC0B24 */  sh    $t4, 0xb24($t5)
/* B86D7C 8010FBDC 8D260000 */  lw    $a2, ($t1)
/* B86D80 8010FBE0 87183D30 */  lh    $t8, %lo(D_80153D30)($t8)
/* B86D84 8010FBE4 3C048015 */  lui   $a0, %hi(D_80154A48) # $a0, 0x8015
/* B86D88 8010FBE8 84CF0B26 */  lh    $t7, 0xb26($a2)
/* B86D8C 8010FBEC 24844A48 */  addiu $a0, %lo(D_80154A48) # addiu $a0, $a0, 0x4a48
/* B86D90 8010FBF0 01F87021 */  addu  $t6, $t7, $t8
/* B86D94 8010FBF4 A4CE0B16 */  sh    $t6, 0xb16($a2)
/* B86D98 8010FBF8 8D260000 */  lw    $a2, ($t1)
/* B86D9C 8010FBFC 84D90B26 */  lh    $t9, 0xb26($a2)
/* B86DA0 8010FC00 272A0014 */  addiu $t2, $t9, 0x14
/* B86DA4 8010FC04 A4CA0B1A */  sh    $t2, 0xb1a($a2)
/* B86DA8 8010FC08 8D260000 */  lw    $a2, ($t1)
/* B86DAC 8010FC0C 84CB0B26 */  lh    $t3, 0xb26($a2)
/* B86DB0 8010FC10 256C0020 */  addiu $t4, $t3, 0x20
/* B86DB4 8010FC14 A4CC0B1C */  sh    $t4, 0xb1c($a2)
/* B86DB8 8010FC18 8D260000 */  lw    $a2, ($t1)
/* B86DBC 8010FC1C 84CD0B26 */  lh    $t5, 0xb26($a2)
/* B86DC0 8010FC20 25AF002C */  addiu $t7, $t5, 0x2c
/* B86DC4 8010FC24 A4CF0B1E */  sh    $t7, 0xb1e($a2)
/* B86DC8 8010FC28 910562FC */  lbu   $a1, 0x62fc($t0)
/* B86DCC 8010FC2C AFA80024 */  sw    $t0, 0x24($sp)
/* B86DD0 8010FC30 0C00084C */  jal   osSyncPrintf
/* B86DD4 8010FC34 30A500F0 */   andi  $a1, $a1, 0xf0
/* B86DD8 8010FC38 8FA80024 */  lw    $t0, 0x24($sp)
/* B86DDC 8010FC3C 3C098016 */  lui   $t1, %hi(gGameInfo) # $t1, 0x8016
/* B86DE0 8010FC40 24010004 */  li    $at, 4
/* B86DE4 8010FC44 910262FD */  lbu   $v0, 0x62fd($t0)
/* B86DE8 8010FC48 2529FA90 */  addiu $t1, %lo(gGameInfo) # addiu $t1, $t1, -0x570
/* B86DEC 8010FC4C 8FAE0030 */  lw    $t6, 0x30($sp)
/* B86DF0 8010FC50 10410002 */  beq   $v0, $at, .L8010FC5C
/* B86DF4 8010FC54 24010005 */   li    $at, 5
/* B86DF8 8010FC58 14410015 */  bne   $v0, $at, .L8010FCB0
.L8010FC5C:
/* B86DFC 8010FC5C 24180003 */   li    $t8, 3
/* B86E00 8010FC60 25C17FFF */  addiu $at, $t6, 0x7fff
/* B86E04 8010FC64 A0386305 */  sb    $t8, 0x6305($at)
/* B86E08 8010FC68 8D260000 */  lw    $a2, ($t1)
/* B86E0C 8010FC6C 240B0100 */  li    $t3, 256
/* B86E10 8010FC70 240D0040 */  li    $t5, 64
/* B86E14 8010FC74 84D90B24 */  lh    $t9, 0xb24($a2)
/* B86E18 8010FC78 24020200 */  li    $v0, 512
/* B86E1C 8010FC7C A4D90F14 */  sh    $t9, 0xf14($a2)
/* B86E20 8010FC80 8D260000 */  lw    $a2, ($t1)
/* B86E24 8010FC84 84CA0B26 */  lh    $t2, 0xb26($a2)
/* B86E28 8010FC88 A4CA0F16 */  sh    $t2, 0xf16($a2)
/* B86E2C 8010FC8C 8D2C0000 */  lw    $t4, ($t1)
/* B86E30 8010FC90 A58B04C0 */  sh    $t3, 0x4c0($t4)
/* B86E34 8010FC94 8D2F0000 */  lw    $t7, ($t1)
/* B86E38 8010FC98 A5ED04C2 */  sh    $t5, 0x4c2($t7)
/* B86E3C 8010FC9C 8D380000 */  lw    $t8, ($t1)
/* B86E40 8010FCA0 A70204B4 */  sh    $v0, 0x4b4($t8)
/* B86E44 8010FCA4 8D2E0000 */  lw    $t6, ($t1)
/* B86E48 8010FCA8 100001D4 */  b     .L801103FC
/* B86E4C 8010FCAC A5C204B6 */   sh    $v0, 0x4b6($t6)
.L8010FCB0:
/* B86E50 8010FCB0 0C041C91 */  jal   func_80107244
/* B86E54 8010FCB4 8FA40030 */   lw    $a0, 0x30($sp)
/* B86E58 8010FCB8 0C03DA47 */  jal   func_800F691C
/* B86E5C 8010FCBC 00002025 */   move  $a0, $zero
/* B86E60 8010FCC0 8FB90030 */  lw    $t9, 0x30($sp)
/* B86E64 8010FCC4 240A0002 */  li    $t2, 2
/* B86E68 8010FCC8 27217FFF */  addiu $at, $t9, 0x7fff
/* B86E6C 8010FCCC A02063E8 */  sb    $zero, 0x63e8($at)
/* B86E70 8010FCD0 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86E74 8010FCD4 25617FFF */  addiu $at, $t3, 0x7fff
/* B86E78 8010FCD8 100001C8 */  b     .L801103FC
/* B86E7C 8010FCDC A02A6305 */   sb    $t2, 0x6305($at)
glabel L8010FCE0
/* B86E80 8010FCE0 0C041C91 */  jal   func_80107244
/* B86E84 8010FCE4 8FA40030 */   lw    $a0, 0x30($sp)
/* B86E88 8010FCE8 100001C5 */  b     .L80110400
/* B86E8C 8010FCEC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FCF0
/* B86E90 8010FCF0 8FAD0030 */  lw    $t5, 0x30($sp)
/* B86E94 8010FCF4 240C0004 */  li    $t4, 4
/* B86E98 8010FCF8 25A17FFF */  addiu $at, $t5, 0x7fff
/* B86E9C 8010FCFC A02C6305 */  sb    $t4, 0x6305($at)
/* B86EA0 8010FD00 8D2F0000 */  lw    $t7, ($t1)
/* B86EA4 8010FD04 8FA40058 */  lw    $a0, 0x58($sp)
/* B86EA8 8010FD08 85F804D2 */  lh    $t8, 0x4d2($t7)
/* B86EAC 8010FD0C 570001BC */  bnezl $t8, .L80110400
/* B86EB0 8010FD10 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86EB4 8010FD14 0C021BC0 */  jal   Interface_SetDoAction
/* B86EB8 8010FD18 24050010 */   li    $a1, 16
/* B86EBC 8010FD1C 100001B8 */  b     .L80110400
/* B86EC0 8010FD20 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FD24
/* B86EC4 8010FD24 8FA40058 */  lw    $a0, 0x58($sp)
/* B86EC8 8010FD28 0C0426CF */  jal   func_80109B3C
/* B86ECC 8010FD2C AFA80024 */   sw    $t0, 0x24($sp)
/* B86ED0 8010FD30 3C0E8015 */  lui   $t6, %hi(D_8014B2F0) # $t6, 0x8015
/* B86ED4 8010FD34 85CEB2F0 */  lh    $t6, %lo(D_8014B2F0)($t6)
/* B86ED8 8010FD38 8FA80024 */  lw    $t0, 0x24($sp)
/* B86EDC 8010FD3C 24040001 */  li    $a0, 1
/* B86EE0 8010FD40 11C00004 */  beqz  $t6, .L8010FD54
/* B86EE4 8010FD44 00000000 */   nop   
/* B86EE8 8010FD48 0C020978 */  jal   Interface_ChangeAlpha
/* B86EEC 8010FD4C AFA80024 */   sw    $t0, 0x24($sp)
/* B86EF0 8010FD50 8FA80024 */  lw    $t0, 0x24($sp)
.L8010FD54:
/* B86EF4 8010FD54 3C198015 */  lui   $t9, %hi(D_80153D74) # $t9, 0x8015
/* B86EF8 8010FD58 93393D74 */  lbu   $t9, %lo(D_80153D74)($t9)
/* B86EFC 8010FD5C 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86F00 8010FD60 532001A7 */  beql  $t9, $zero, .L80110400
/* B86F04 8010FD64 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F08 8010FD68 950A63D4 */  lhu   $t2, 0x63d4($t0)
/* B86F0C 8010FD6C 25617FFF */  addiu $at, $t3, 0x7fff
/* B86F10 8010FD70 A42A63D3 */  sh    $t2, 0x63d3($at)
/* B86F14 8010FD74 3C018015 */  lui   $at, %hi(D_80153D74) # $at, 0x8015
/* B86F18 8010FD78 100001A0 */  b     .L801103FC
/* B86F1C 8010FD7C A0203D74 */   sb    $zero, %lo(D_80153D74)($at)
glabel L8010FD80
/* B86F20 8010FD80 910C63E7 */  lbu   $t4, 0x63e7($t0)
/* B86F24 8010FD84 8FAF0030 */  lw    $t7, 0x30($sp)
/* B86F28 8010FD88 258DFFFF */  addiu $t5, $t4, -1
/* B86F2C 8010FD8C 25E17FFF */  addiu $at, $t7, 0x7fff
/* B86F30 8010FD90 A02D63E8 */  sb    $t5, 0x63e8($at)
/* B86F34 8010FD94 911863E7 */  lbu   $t8, 0x63e7($t0)
/* B86F38 8010FD98 57000199 */  bnezl $t8, .L80110400
/* B86F3C 8010FD9C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F40 8010FDA0 0C0426CF */  jal   func_80109B3C
/* B86F44 8010FDA4 8FA40058 */   lw    $a0, 0x58($sp)
/* B86F48 8010FDA8 10000195 */  b     .L80110400
/* B86F4C 8010FDAC 8FBF001C */   lw    $ra, 0x1c($sp)
glabel L8010FDB0
/* B86F50 8010FDB0 910E62FD */  lbu   $t6, 0x62fd($t0)
/* B86F54 8010FDB4 24010004 */  li    $at, 4
/* B86F58 8010FDB8 51C10191 */  beql  $t6, $at, .L80110400
/* B86F5C 8010FDBC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F60 8010FDC0 84D904D2 */  lh    $t9, 0x4d2($a2)
/* B86F64 8010FDC4 8FAA0058 */  lw    $t2, 0x58($sp)
/* B86F68 8010FDC8 5720018D */  bnezl $t9, .L80110400
/* B86F6C 8010FDCC 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F70 8010FDD0 954B0020 */  lhu   $t3, 0x20($t2)
/* B86F74 8010FDD4 2401BFFF */  li    $at, -16385
/* B86F78 8010FDD8 01616027 */  nor   $t4, $t3, $at
/* B86F7C 8010FDDC 55800188 */  bnezl $t4, .L80110400
/* B86F80 8010FDE0 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F84 8010FDE4 950D63D6 */  lhu   $t5, 0x63d6($t0)
/* B86F88 8010FDE8 240F0001 */  li    $t7, 1
/* B86F8C 8010FDEC 3C018015 */  lui   $at, %hi(D_8014B300) # $at, 0x8015
/* B86F90 8010FDF0 55A00183 */  bnezl $t5, .L80110400
/* B86F94 8010FDF4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86F98 8010FDF8 8FAE0030 */  lw    $t6, 0x30($sp)
/* B86F9C 8010FDFC A02FB300 */  sb    $t7, %lo(D_8014B300)($at)
/* B86FA0 8010FE00 951863D4 */  lhu   $t8, 0x63d4($t0)
/* B86FA4 8010FE04 25C17FFF */  addiu $at, $t6, 0x7fff
/* B86FA8 8010FE08 1000017C */  b     .L801103FC
/* B86FAC 8010FE0C A43863D3 */   sh    $t8, 0x63d3($at)
glabel L8010FE10
/* B86FB0 8010FE10 84D904D2 */  lh    $t9, 0x4d2($a2)
/* B86FB4 8010FE14 8FA40058 */  lw    $a0, 0x58($sp)
/* B86FB8 8010FE18 57200179 */  bnezl $t9, .L80110400
/* B86FBC 8010FE1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B86FC0 8010FE20 0C041AF2 */  jal   func_80106BC8
/* B86FC4 8010FE24 AFA80024 */   sw    $t0, 0x24($sp)
/* B86FC8 8010FE28 10400174 */  beqz  $v0, .L801103FC
/* B86FCC 8010FE2C 8FA80024 */   lw    $t0, 0x24($sp)
/* B86FD0 8010FE30 8FAB0030 */  lw    $t3, 0x30($sp)
/* B86FD4 8010FE34 240A0006 */  li    $t2, 6
/* B86FD8 8010FE38 25617FFF */  addiu $at, $t3, 0x7fff
/* B86FDC 8010FE3C A02A6305 */  sb    $t2, 0x6305($at)
/* B86FE0 8010FE40 8FAF0030 */  lw    $t7, 0x30($sp)
/* B86FE4 8010FE44 950C63D2 */  lhu   $t4, 0x63d2($t0)
/* B86FE8 8010FE48 25E17FFF */  addiu $at, $t7, 0x7fff
/* B86FEC 8010FE4C 258D0001 */  addiu $t5, $t4, 1
/* B86FF0 8010FE50 1000016A */  b     .L801103FC
/* B86FF4 8010FE54 A42D63D3 */   sh    $t5, 0x63d3($at)
glabel L8010FE58
/* B86FF8 8010FE58 911863E7 */  lbu   $t8, 0x63e7($t0)
/* B86FFC 8010FE5C 8FB90030 */  lw    $t9, 0x30($sp)
/* B87000 8010FE60 270EFFFF */  addiu $t6, $t8, -1
/* B87004 8010FE64 27217FFF */  addiu $at, $t9, 0x7fff
/* B87008 8010FE68 A02E63E8 */  sb    $t6, 0x63e8($at)
/* B8700C 8010FE6C 910A63E7 */  lbu   $t2, 0x63e7($t0)
/* B87010 8010FE70 8FAC0030 */  lw    $t4, 0x30($sp)
/* B87014 8010FE74 15400161 */  bnez  $t2, .L801103FC
/* B87018 8010FE78 25817FFF */   addiu $at, $t4, 0x7fff
/* B8701C 8010FE7C 240B0004 */  li    $t3, 4
/* B87020 8010FE80 1000015E */  b     .L801103FC
/* B87024 8010FE84 A02B6305 */   sb    $t3, 0x6305($at)
.L8010FE88:
/* B87028 8010FE88 0C041AF2 */  jal   func_80106BC8
/* B8702C 8010FE8C AFA80024 */   sw    $t0, 0x24($sp)
/* B87030 8010FE90 1040015A */  beqz  $v0, .L801103FC
/* B87034 8010FE94 8FA80024 */   lw    $t0, 0x24($sp)
/* B87038 8010FE98 8FA20030 */  lw    $v0, 0x30($sp)
/* B8703C 8010FE9C 240D0004 */  li    $t5, 4
/* B87040 8010FEA0 24417FFF */  addiu $at, $v0, 0x7fff
/* B87044 8010FEA4 A02D6305 */  sb    $t5, 0x6305($at)
/* B87048 8010FEA8 A42063D7 */  sh    $zero, 0x63d7($at)
/* B8704C 8010FEAC 950F63CE */  lhu   $t7, 0x63ce($t0)
/* B87050 8010FEB0 25F80001 */  addiu $t8, $t7, 1
/* B87054 8010FEB4 10000151 */  b     .L801103FC
/* B87058 8010FEB8 A43863CF */   sh    $t8, 0x63cf($at)
/* B8705C 8010FEBC 910263E4 */  lbu   $v0, 0x63e4($t0)
.L8010FEC0:
/* B87060 8010FEC0 24010060 */  li    $at, 96
/* B87064 8010FEC4 8FAA0030 */  lw    $t2, 0x30($sp)
/* B87068 8010FEC8 5441000D */  bnel  $v0, $at, .L8010FF00
/* B8706C 8010FECC 24010040 */   li    $at, 64
/* B87070 8010FED0 910E63E7 */  lbu   $t6, 0x63e7($t0)
/* B87074 8010FED4 25417FFF */  addiu $at, $t2, 0x7fff
/* B87078 8010FED8 25D9FFFF */  addiu $t9, $t6, -1
/* B8707C 8010FEDC A03963E8 */  sb    $t9, 0x63e8($at)
/* B87080 8010FEE0 910B63E7 */  lbu   $t3, 0x63e7($t0)
/* B87084 8010FEE4 55600146 */  bnezl $t3, .L80110400
/* B87088 8010FEE8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B8708C 8010FEEC 0C041B33 */  jal   func_80106CCC
/* B87090 8010FEF0 8FA40058 */   lw    $a0, 0x58($sp)
/* B87094 8010FEF4 10000142 */  b     .L80110400
/* B87098 8010FEF8 8FBF001C */   lw    $ra, 0x1c($sp)
/* B8709C 8010FEFC 24010040 */  li    $at, 64
.L8010FF00:
/* B870A0 8010FF00 1041013E */  beq   $v0, $at, .L801103FC
/* B870A4 8010FF04 24010050 */   li    $at, 80
/* B870A8 8010FF08 5041013D */  beql  $v0, $at, .L80110400
/* B870AC 8010FF0C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B870B0 8010FF10 84CC04D2 */  lh    $t4, 0x4d2($a2)
/* B870B4 8010FF14 24010010 */  li    $at, 16
/* B870B8 8010FF18 55800139 */  bnezl $t4, .L80110400
/* B870BC 8010FF1C 8FBF001C */   lw    $ra, 0x1c($sp)
/* B870C0 8010FF20 14410034 */  bne   $v0, $at, .L8010FFF4
/* B870C4 8010FF24 8FAD0058 */   lw    $t5, 0x58($sp)
/* B870C8 8010FF28 3C010001 */  lui   $at, 1
/* B870CC 8010FF2C 01A11021 */  addu  $v0, $t5, $at
/* B870D0 8010FF30 944F04C6 */  lhu   $t7, 0x4c6($v0)
/* B870D4 8010FF34 24010001 */  li    $at, 1
/* B870D8 8010FF38 01A02025 */  move  $a0, $t5
/* B870DC 8010FF3C 55E1002E */  bnel  $t7, $at, .L8010FFF8
/* B870E0 8010FF40 8FA40058 */   lw    $a0, 0x58($sp)
/* B870E4 8010FF44 AFA20030 */  sw    $v0, 0x30($sp)
/* B870E8 8010FF48 0C041AF2 */  jal   func_80106BC8
/* B870EC 8010FF4C AFA80024 */   sw    $t0, 0x24($sp)
/* B870F0 8010FF50 1040012A */  beqz  $v0, .L801103FC
/* B870F4 8010FF54 8FA80024 */   lw    $t0, 0x24($sp)
/* B870F8 8010FF58 8FB80030 */  lw    $t8, 0x30($sp)
/* B870FC 8010FF5C 3C048015 */  lui   $a0, %hi(D_80154A64) # $a0, 0x8015
/* B87100 8010FF60 24844A64 */  addiu $a0, %lo(D_80154A64) # addiu $a0, $a0, 0x4a64
/* B87104 8010FF64 970504C6 */  lhu   $a1, 0x4c6($t8)
/* B87108 8010FF68 0C00084C */  jal   osSyncPrintf
/* B8710C 8010FF6C AFA80024 */   sw    $t0, 0x24($sp)
/* B87110 8010FF70 8FA80024 */  lw    $t0, 0x24($sp)
/* B87114 8010FF74 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87118 8010FF78 3C048015 */  lui   $a0, %hi(D_80154A78) # $a0, 0x8015
/* B8711C 8010FF7C 910E63E5 */  lbu   $t6, 0x63e5($t0)
/* B87120 8010FF80 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87124 8010FF84 8FAC0058 */  lw    $t4, 0x58($sp)
/* B87128 8010FF88 15C00007 */  bnez  $t6, .L8010FFA8
/* B8712C 8010FF8C 24844A78 */   addiu $a0, %lo(D_80154A78) # addiu $a0, $a0, 0x4a78
/* B87130 8010FF90 8FAA0058 */  lw    $t2, 0x58($sp)
/* B87134 8010FF94 3C010001 */  lui   $at, 1
/* B87138 8010FF98 24190002 */  li    $t9, 2
/* B8713C 8010FF9C 002A0821 */  addu  $at, $at, $t2
/* B87140 8010FFA0 10000005 */  b     .L8010FFB8
/* B87144 8010FFA4 A43904C6 */   sh    $t9, 0x4c6($at)
.L8010FFA8:
/* B87148 8010FFA8 3C010001 */  lui   $at, 1
/* B8714C 8010FFAC 002C0821 */  addu  $at, $at, $t4
/* B87150 8010FFB0 240B0004 */  li    $t3, 4
/* B87154 8010FFB4 A42B04C6 */  sh    $t3, 0x4c6($at)
.L8010FFB8:
/* B87158 8010FFB8 946513FA */  lhu   $a1, 0x13fa($v1)
/* B8715C 8010FFBC 8FAF0030 */  lw    $t7, 0x30($sp)
/* B87160 8010FFC0 24060001 */  li    $a2, 1
/* B87164 8010FFC4 30A5000F */  andi  $a1, $a1, 0xf
/* B87168 8010FFC8 0C00084C */  jal   osSyncPrintf
/* B8716C 8010FFCC 95E704C6 */   lhu   $a3, 0x4c6($t7)
/* B87170 8010FFD0 0C041B33 */  jal   func_80106CCC
/* B87174 8010FFD4 8FA40058 */   lw    $a0, 0x58($sp)
/* B87178 8010FFD8 8FAD0030 */  lw    $t5, 0x30($sp)
/* B8717C 8010FFDC 3C048015 */  lui   $a0, %hi(D_80154AA0) # $a0, 0x8015
/* B87180 8010FFE0 24844AA0 */  addiu $a0, %lo(D_80154AA0) # addiu $a0, $a0, 0x4aa0
/* B87184 8010FFE4 0C00084C */  jal   osSyncPrintf
/* B87188 8010FFE8 95A504C6 */   lhu   $a1, 0x4c6($t5)
/* B8718C 8010FFEC 10000104 */  b     .L80110400
/* B87190 8010FFF0 8FBF001C */   lw    $ra, 0x1c($sp)
.L8010FFF4:
/* B87194 8010FFF4 8FA40058 */  lw    $a0, 0x58($sp)
.L8010FFF8:
/* B87198 8010FFF8 0C041B22 */  jal   func_80106C88
/* B8719C 8010FFFC AFA80024 */   sw    $t0, 0x24($sp)
/* B871A0 80110000 104000FE */  beqz  $v0, .L801103FC
/* B871A4 80110004 8FA80024 */   lw    $t0, 0x24($sp)
/* B871A8 80110008 3C048015 */  lui   $a0, %hi(D_80154AB4) # $a0, 0x8015
/* B871AC 8011000C 910563E4 */  lbu   $a1, 0x63e4($t0)
/* B871B0 80110010 AFA80024 */  sw    $t0, 0x24($sp)
/* B871B4 80110014 0C00084C */  jal   osSyncPrintf
/* B871B8 80110018 24844AB4 */   addiu $a0, %lo(D_80154AB4) # addiu $a0, $a0, 0x4ab4
/* B871BC 8011001C 8FA80024 */  lw    $t0, 0x24($sp)
/* B871C0 80110020 24010030 */  li    $at, 48
/* B871C4 80110024 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B871C8 80110028 911863E4 */  lbu   $t8, 0x63e4($t0)
/* B871CC 8011002C 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B871D0 80110030 24044808 */  li    $a0, 18440
/* B871D4 80110034 17010012 */  bne   $t8, $at, .L80110080
/* B871D8 80110038 3C058013 */   lui   $a1, %hi(D_801333D4)
/* B871DC 8011003C 3C078013 */  lui   $a3, %hi(D_801333E0) # $a3, 0x8013
/* B871E0 80110040 3C0E8013 */  lui   $t6, %hi(D_801333E8) # $t6, 0x8013
/* B871E4 80110044 24E733E0 */  addiu $a3, %lo(D_801333E0) # addiu $a3, $a3, 0x33e0
/* B871E8 80110048 25CE33E8 */  addiu $t6, %lo(D_801333E8) # addiu $t6, $t6, 0x33e8
/* B871EC 8011004C 3C058013 */  lui   $a1, %hi(D_801333D4) # $a1, 0x8013
/* B871F0 80110050 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B871F4 80110054 AFAE0014 */  sw    $t6, 0x14($sp)
/* B871F8 80110058 AFA70010 */  sw    $a3, 0x10($sp)
/* B871FC 8011005C 24044818 */  li    $a0, 18456
/* B87200 80110060 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B87204 80110064 24060004 */   li    $a2, 4
/* B87208 80110068 3C058015 */  lui   $a1, %hi(D_8014B304) # $a1, 0x8015
/* B8720C 8011006C 94A5B304 */  lhu   $a1, %lo(D_8014B304)($a1)
/* B87210 80110070 0C042DC8 */  jal   func_8010B720
/* B87214 80110074 8FA40058 */   lw    $a0, 0x58($sp)
/* B87218 80110078 100000E1 */  b     .L80110400
/* B8721C 8011007C 8FBF001C */   lw    $ra, 0x1c($sp)
.L80110080:
/* B87220 80110080 3C198013 */  lui   $t9, %hi(D_801333E8) # $t9, 0x8013
/* B87224 80110084 273933E8 */  addiu $t9, %lo(D_801333E8) # addiu $t9, $t9, 0x33e8
/* B87228 80110088 AFB90014 */  sw    $t9, 0x14($sp)
/* B8722C 8011008C 24A533D4 */  addiu $a1, %lo(D_801333D4) # addiu $a1, $a1, 0x33d4
/* B87230 80110090 24060004 */  li    $a2, 4
/* B87234 80110094 0C03DCE3 */  jal   Audio_PlaySoundGeneral
/* B87238 80110098 AFA70010 */   sw    $a3, 0x10($sp)
/* B8723C 8011009C 0C041B33 */  jal   func_80106CCC
/* B87240 801100A0 8FA40058 */   lw    $a0, 0x58($sp)
/* B87244 801100A4 100000D6 */  b     .L80110400
/* B87248 801100A8 8FBF001C */   lw    $ra, 0x1c($sp)
.L801100AC:
/* B8724C 801100AC 910A63E7 */  lbu   $t2, 0x63e7($t0)
/* B87250 801100B0 25817FFF */  addiu $at, $t4, 0x7fff
/* B87254 801100B4 254BFFFF */  addiu $t3, $t2, -1
/* B87258 801100B8 A02B63E8 */  sb    $t3, 0x63e8($at)
/* B8725C 801100BC 910F63E7 */  lbu   $t7, 0x63e7($t0)
/* B87260 801100C0 55E000CF */  bnezl $t7, .L80110400
/* B87264 801100C4 8FBF001C */   lw    $ra, 0x1c($sp)
/* B87268 801100C8 950262F8 */  lhu   $v0, 0x62f8($t0)
/* B8726C 801100CC 284100C2 */  slti  $at, $v0, 0xc2
/* B87270 801100D0 14200002 */  bnez  $at, .L801100DC
/* B87274 801100D4 284100C7 */   slti  $at, $v0, 0xc7
/* B87278 801100D8 14200004 */  bnez  $at, .L801100EC
.L801100DC:
/* B8727C 801100DC 284100FA */   slti  $at, $v0, 0xfa
/* B87280 801100E0 14200007 */  bnez  $at, .L80110100
/* B87284 801100E4 284100FE */   slti  $at, $v0, 0xfe
/* B87288 801100E8 10200005 */  beqz  $at, .L80110100
.L801100EC:
/* B8728C 801100EC 3C038016 */   lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87290 801100F0 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87294 801100F4 240D0140 */  li    $t5, 320
/* B87298 801100F8 A46D1424 */  sh    $t5, 0x1424($v1)
/* B8729C 801100FC 950262F8 */  lhu   $v0, 0x62f8($t0)
.L80110100:
/* B872A0 80110100 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B872A4 80110104 2401301F */  li    $at, 12319
/* B872A8 80110108 10410011 */  beq   $v0, $at, .L80110150
/* B872AC 8011010C 2463E660 */   addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B872B0 80110110 2401000A */  li    $at, 10
/* B872B4 80110114 1041000E */  beq   $v0, $at, .L80110150
/* B872B8 80110118 2401000C */   li    $at, 12
/* B872BC 8011011C 1041000C */  beq   $v0, $at, .L80110150
/* B872C0 80110120 240100CF */   li    $at, 207
/* B872C4 80110124 1041000A */  beq   $v0, $at, .L80110150
/* B872C8 80110128 2401021C */   li    $at, 540
/* B872CC 8011012C 10410008 */  beq   $v0, $at, .L80110150
/* B872D0 80110130 24010009 */   li    $at, 9
/* B872D4 80110134 10410006 */  beq   $v0, $at, .L80110150
/* B872D8 80110138 24014078 */   li    $at, 16504
/* B872DC 8011013C 10410004 */  beq   $v0, $at, .L80110150
/* B872E0 80110140 24012015 */   li    $at, 8213
/* B872E4 80110144 10410002 */  beq   $v0, $at, .L80110150
/* B872E8 80110148 24013040 */   li    $at, 12352
/* B872EC 8011014C 14410002 */  bne   $v0, $at, .L80110158
.L80110150:
/* B872F0 80110150 24180032 */   li    $t8, 50
/* B872F4 80110154 A47813EE */  sh    $t8, 0x13ee($v1)
.L80110158:
/* B872F8 80110158 8FAE0058 */  lw    $t6, 0x58($sp)
/* B872FC 8011015C 3C048015 */  lui   $a0, %hi(D_80154AC0) # $a0, 0x8015
/* B87300 80110160 24844AC0 */  addiu $a0, %lo(D_80154AC0) # addiu $a0, $a0, 0x4ac0
/* B87304 80110164 91D91D6C */  lbu   $t9, 0x1d6c($t6)
/* B87308 80110168 1720003E */  bnez  $t9, .L80110264
/* B8730C 8011016C 00000000 */   nop   
/* B87310 80110170 0C00084C */  jal   osSyncPrintf
/* B87314 80110174 AFA80024 */   sw    $t0, 0x24($sp)
/* B87318 80110178 8FAA0058 */  lw    $t2, 0x58($sp)
/* B8731C 8011017C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87320 80110180 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B87324 80110184 3C048015 */  lui   $a0, %hi(D_80154AC8) # $a0, 0x8015
/* B87328 80110188 24844AC8 */  addiu $a0, %lo(D_80154AC8) # addiu $a0, $a0, 0x4ac8
/* B8732C 8011018C 8C650008 */  lw    $a1, 8($v1)
/* B87330 80110190 0C00084C */  jal   osSyncPrintf
/* B87334 80110194 854607A0 */   lh    $a2, 0x7a0($t2)
/* B87338 80110198 8FA80024 */  lw    $t0, 0x24($sp)
/* B8733C 8011019C 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87340 801101A0 24012061 */  li    $at, 8289
/* B87344 801101A4 950262F8 */  lhu   $v0, 0x62f8($t0)
/* B87348 801101A8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B8734C 801101AC 1041002D */  beq   $v0, $at, .L80110264
/* B87350 801101B0 24012025 */   li    $at, 8229
/* B87354 801101B4 1041002B */  beq   $v0, $at, .L80110264
/* B87358 801101B8 2401208C */   li    $at, 8332
/* B8735C 801101BC 10410029 */  beq   $v0, $at, .L80110264
/* B87360 801101C0 2841088D */   slti  $at, $v0, 0x88d
/* B87364 801101C4 14200005 */  bnez  $at, .L801101DC
/* B87368 801101C8 28410893 */   slti  $at, $v0, 0x893
/* B8736C 801101CC 50200004 */  beql  $at, $zero, .L801101E0
/* B87370 801101D0 24013055 */   li    $at, 12373
/* B87374 801101D4 910B63E5 */  lbu   $t3, 0x63e5($t0)
/* B87378 801101D8 11600022 */  beqz  $t3, .L80110264
.L801101DC:
/* B8737C 801101DC 24013055 */   li    $at, 12373
.L801101E0:
/* B87380 801101E0 10410020 */  beq   $v0, $at, .L80110264
/* B87384 801101E4 00000000 */   nop   
/* B87388 801101E8 8C620008 */  lw    $v0, 8($v1)
/* B8738C 801101EC 3401FFF0 */  li    $at, 65520
/* B87390 801101F0 3C048015 */  lui   $a0, %hi(D_80154AE8) # $a0, 0x8015
/* B87394 801101F4 0041082A */  slt   $at, $v0, $at
/* B87398 801101F8 1020001A */  beqz  $at, .L80110264
/* B8739C 801101FC 00402825 */   move  $a1, $v0
/* B873A0 80110200 24844AE8 */  addiu $a0, %lo(D_80154AE8) # addiu $a0, $a0, 0x4ae8
/* B873A4 80110204 0C00084C */  jal   osSyncPrintf
/* B873A8 80110208 AFA80024 */   sw    $t0, 0x24($sp)
/* B873AC 8011020C 8FAC0058 */  lw    $t4, 0x58($sp)
/* B873B0 80110210 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B873B4 80110214 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B873B8 80110218 858F07A0 */  lh    $t7, 0x7a0($t4)
/* B873BC 8011021C 8FA80024 */  lw    $t0, 0x24($sp)
/* B873C0 80110220 15E00010 */  bnez  $t7, .L80110264
/* B873C4 80110224 00000000 */   nop   
/* B873C8 80110228 946413EE */  lhu   $a0, 0x13ee($v1)
/* B873CC 8011022C 24010001 */  li    $at, 1
/* B873D0 80110230 240D0032 */  li    $t5, 50
/* B873D4 80110234 50800006 */  beql  $a0, $zero, .L80110250
/* B873D8 80110238 A46D13EE */   sh    $t5, 0x13ee($v1)
/* B873DC 8011023C 10810003 */  beq   $a0, $at, .L8011024C
/* B873E0 80110240 24010002 */   li    $at, 2
/* B873E4 80110244 54810004 */  bnel  $a0, $at, .L80110258
/* B873E8 80110248 A46013EA */   sh    $zero, 0x13ea($v1)
.L8011024C:
/* B873EC 8011024C A46D13EE */  sh    $t5, 0x13ee($v1)
.L80110250:
/* B873F0 80110250 31A4FFFF */  andi  $a0, $t5, 0xffff
/* B873F4 80110254 A46013EA */  sh    $zero, 0x13ea($v1)
.L80110258:
/* B873F8 80110258 0C020978 */  jal   Interface_ChangeAlpha
/* B873FC 8011025C AFA80024 */   sw    $t0, 0x24($sp)
/* B87400 80110260 8FA80024 */  lw    $t0, 0x24($sp)
.L80110264:
/* B87404 80110264 3C048015 */  lui   $a0, %hi(D_80154AFC) # $a0, 0x8015
/* B87408 80110268 24844AFC */  addiu $a0, %lo(D_80154AFC) # addiu $a0, $a0, 0x4afc
/* B8740C 8011026C 0C00084C */  jal   osSyncPrintf
/* B87410 80110270 AFA80024 */   sw    $t0, 0x24($sp)
/* B87414 80110274 8FA40030 */  lw    $a0, 0x30($sp)
/* B87418 80110278 8FA70058 */  lw    $a3, 0x58($sp)
/* B8741C 8011027C 8FA80024 */  lw    $t0, 0x24($sp)
/* B87420 80110280 24817FFF */  addiu $at, $a0, 0x7fff
/* B87424 80110284 AC206301 */  sw    $zero, 0x6301($at)
/* B87428 80110288 A0206305 */  sb    $zero, 0x6305($at)
/* B8742C 8011028C 3C010001 */  lui   $at, (0x000104F0 >> 16) # lui $at, 1
/* B87430 80110290 342104F0 */  ori   $at, (0x000104F0 & 0xFFFF) # ori $at, $at, 0x4f0
/* B87434 80110294 00E11021 */  addu  $v0, $a3, $at
/* B87438 80110298 A44001FC */  sh    $zero, 0x1fc($v0)
/* B8743C 8011029C 845801FC */  lh    $t8, 0x1fc($v0)
/* B87440 801102A0 24817FFF */  addiu $at, $a0, 0x7fff
/* B87444 801102A4 3C038016 */  lui   $v1, %hi(gSaveContext) # $v1, 0x8016
/* B87448 801102A8 A45801FA */  sh    $t8, 0x1fa($v0)
/* B8744C 801102AC A02063E8 */  sb    $zero, 0x63e8($at)
/* B87450 801102B0 910E63E7 */  lbu   $t6, 0x63e7($t0)
/* B87454 801102B4 3C050001 */  lui   $a1, 1
/* B87458 801102B8 2463E660 */  addiu $v1, %lo(gSaveContext) # addiu $v1, $v1, -0x19a0
/* B8745C 801102BC A42E62F9 */  sh    $t6, 0x62f9($at)
/* B87460 801102C0 911963E4 */  lbu   $t9, 0x63e4($t0)
/* B87464 801102C4 24010040 */  li    $at, 64
/* B87468 801102C8 240A0002 */  li    $t2, 2
/* B8746C 801102CC 17210007 */  bne   $t9, $at, .L801102EC
/* B87470 801102D0 00A72821 */   addu  $a1, $a1, $a3
/* B87474 801102D4 24817FFF */  addiu $at, $a0, 0x7fff
/* B87478 801102D8 A02063E5 */  sb    $zero, 0x63e5($at)
/* B8747C 801102DC 3C010001 */  lui   $at, 1
/* B87480 801102E0 00270821 */  addu  $at, $at, $a3
/* B87484 801102E4 10000003 */  b     .L801102F4
/* B87488 801102E8 A42A04C6 */   sh    $t2, 0x4c6($at)
.L801102EC:
/* B8748C 801102EC 24817FFF */  addiu $at, $a0, 0x7fff
/* B87490 801102F0 A02063E5 */  sb    $zero, 0x63e5($at)
.L801102F4:
/* B87494 801102F4 8C6200A4 */  lw    $v0, 0xa4($v1)
/* B87498 801102F8 3C01F000 */  lui   $at, 0xf000
/* B8749C 801102FC 3C048015 */  lui   $a0, %hi(D_80154B00) # $a0, 0x8015
/* B874A0 80110300 00415824 */  and   $t3, $v0, $at
/* B874A4 80110304 3C014000 */  lui   $at, 0x4000
/* B874A8 80110308 1561000A */  bne   $t3, $at, .L80110334
/* B874AC 8011030C 24844B00 */   addiu $a0, %lo(D_80154B00) # addiu $a0, $a0, 0x4b00
/* B874B0 80110310 846F002E */  lh    $t7, 0x2e($v1)
/* B874B4 80110314 84780030 */  lh    $t8, 0x30($v1)
/* B874B8 80110318 3C014000 */  lui   $at, 0x4000
/* B874BC 8011031C 00416026 */  xor   $t4, $v0, $at
/* B874C0 80110320 25ED0010 */  addiu $t5, $t7, 0x10
/* B874C4 80110324 270E0010 */  addiu $t6, $t8, 0x10
/* B874C8 80110328 AC6C00A4 */  sw    $t4, 0xa4($v1)
/* B874CC 8011032C A46D002E */  sh    $t5, 0x2e($v1)
/* B874D0 80110330 A46E0030 */  sh    $t6, 0x30($v1)
.L80110334:
/* B874D4 80110334 950363F0 */  lhu   $v1, 0x63f0($t0)
/* B874D8 80110338 24010031 */  li    $at, 49
/* B874DC 8011033C 3C198015 */  lui   $t9, %hi(D_8014B310) # $t9, 0x8015
/* B874E0 80110340 50610023 */  beql  $v1, $at, .L801103D0
/* B874E4 80110344 240A00FF */   li    $t2, 255
/* B874E8 80110348 8739B310 */  lh    $t9, %lo(D_8014B310)($t9)
/* B874EC 8011034C 24010006 */  li    $at, 6
/* B874F0 80110350 8FAB004C */  lw    $t3, 0x4c($sp)
/* B874F4 80110354 17210009 */  bne   $t9, $at, .L8011037C
/* B874F8 80110358 240AFF20 */   li    $t2, -224
/* B874FC 8011035C A56A0690 */  sh    $t2, 0x690($t3)
/* B87500 80110360 8FAC004C */  lw    $t4, 0x4c($sp)
/* B87504 80110364 3C010001 */  lui   $at, 1
/* B87508 80110368 8D82068C */  lw    $v0, 0x68c($t4)
/* B8750C 8011036C 8C4F0004 */  lw    $t7, 4($v0)
/* B87510 80110370 01E16825 */  or    $t5, $t7, $at
/* B87514 80110374 AC4D0004 */  sw    $t5, 4($v0)
/* B87518 80110378 950363F0 */  lhu   $v1, 0x63f0($t0)
.L8011037C:
/* B8751C 8011037C 24010029 */  li    $at, 41
/* B87520 80110380 14610012 */  bne   $v1, $at, .L801103CC
/* B87524 80110384 3C020001 */   lui   $v0, 1
/* B87528 80110388 00471021 */  addu  $v0, $v0, $a3
/* B8752C 8011038C 944204C6 */  lhu   $v0, 0x4c6($v0)
/* B87530 80110390 24010001 */  li    $at, 1
/* B87534 80110394 24180004 */  li    $t8, 4
/* B87538 80110398 10410002 */  beq   $v0, $at, .L801103A4
/* B8753C 8011039C 2401000B */   li    $at, 11
/* B87540 801103A0 1441000A */  bne   $v0, $at, .L801103CC
.L801103A4:
/* B87544 801103A4 3C010001 */   lui   $at, 1
/* B87548 801103A8 00270821 */  addu  $at, $at, $a3
/* B8754C 801103AC A43804C6 */  sh    $t8, 0x4c6($at)
/* B87550 801103B0 950E63F2 */  lhu   $t6, 0x63f2($t0)
/* B87554 801103B4 24010009 */  li    $at, 9
/* B87558 801103B8 24190001 */  li    $t9, 1
/* B8755C 801103BC 15C10003 */  bne   $t6, $at, .L801103CC
/* B87560 801103C0 3C010001 */   lui   $at, 1
/* B87564 801103C4 00270821 */  addu  $at, $at, $a3
/* B87568 801103C8 A43904C6 */  sh    $t9, 0x4c6($at)
.L801103CC:
/* B8756C 801103CC 240A00FF */  li    $t2, 255
.L801103D0:
/* B87570 801103D0 3C018015 */  lui   $at, %hi(D_8014B310) # $at, 0x8015
/* B87574 801103D4 A42AB310 */  sh    $t2, %lo(D_8014B310)($at)
/* B87578 801103D8 950663F2 */  lhu   $a2, 0x63f2($t0)
/* B8757C 801103DC 0C00084C */  jal   osSyncPrintf
/* B87580 801103E0 94A504C6 */   lhu   $a1, 0x4c6($a1)
/* B87584 801103E4 10000006 */  b     .L80110400
/* B87588 801103E8 8FBF001C */   lw    $ra, 0x1c($sp)
.L801103EC:
/* B8758C 801103EC 8FAC0030 */  lw    $t4, 0x30($sp)
.L801103F0:
/* B87590 801103F0 240B00FF */  li    $t3, 255
/* B87594 801103F4 25817FFF */  addiu $at, $t4, 0x7fff
/* B87598 801103F8 A02B6411 */  sb    $t3, 0x6411($at)
.L801103FC:
/* B8759C 801103FC 8FBF001C */  lw    $ra, 0x1c($sp)
.L80110400:
/* B875A0 80110400 27BD0058 */  addiu $sp, $sp, 0x58
/* B875A4 80110404 03E00008 */  jr    $ra
/* B875A8 80110408 00000000 */   nop   