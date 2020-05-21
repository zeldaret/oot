.rdata
glabel D_808B9150
    .asciz "Error : リンク年齢不詳 (%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B9184
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

glabel D_808B919C
    .asciz "出現しない Object (0x%04x)\n"
    .balign 4

glabel D_808B91B8
    .asciz "Error : Obj出現判定が設定されていない(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B91F8
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

glabel D_808B9210
    .asciz "Error : Obj出現判定失敗(%s %d)(arg_data 0x%04x)\n"
    .balign 4

glabel D_808B9244
    .asciz "../z_bg_spot18_obj.c"
    .balign 4

.text
glabel func_808B8910
/* 00000 808B8910 3C038016 */  lui     $v1, %hi(gSaveContext+4)
/* 00004 808B8914 8C63E664 */  lw      $v1, %lo(gSaveContext+4)($v1)
/* 00008 808B8918 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0000C 808B891C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 808B8920 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00014 808B8924 10600003 */  beq     $v1, $zero, .L808B8934     
/* 00018 808B8928 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0001C 808B892C 10000002 */  beq     $zero, $zero, .L808B8938   
/* 00020 808B8930 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L808B8934:
/* 00024 808B8934 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L808B8938:
/* 00028 808B8938 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 0002C 808B893C 14410003 */  bne     $v0, $at, .L808B894C       
/* 00030 808B8940 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 00034 808B8944 10000013 */  beq     $zero, $zero, .L808B8994   
/* 00038 808B8948 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
.L808B894C:
/* 0003C 808B894C 10600003 */  beq     $v1, $zero, .L808B895C     
/* 00040 808B8950 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00044 808B8954 10000002 */  beq     $zero, $zero, .L808B8960   
/* 00048 808B8958 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L808B895C:
/* 0004C 808B895C 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L808B8960:
/* 00050 808B8960 14410003 */  bne     $v0, $at, .L808B8970       
/* 00054 808B8964 3C04808C */  lui     $a0, %hi(D_808B9150)       ## $a0 = 808C0000
/* 00058 808B8968 1000000A */  beq     $zero, $zero, .L808B8994   
/* 0005C 808B896C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L808B8970:
/* 00060 808B8970 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 00064 808B8974 3C05808C */  lui     $a1, %hi(D_808B9184)       ## $a1 = 808C0000
/* 00068 808B8978 24A59184 */  addiu   $a1, $a1, %lo(D_808B9184)  ## $a1 = 808B9184
/* 0006C 808B897C 24849150 */  addiu   $a0, $a0, %lo(D_808B9150)  ## $a0 = 808B9150
/* 00070 808B8980 240600B6 */  addiu   $a2, $zero, 0x00B6         ## $a2 = 000000B6
/* 00074 808B8984 0C00084C */  jal     osSyncPrintf
              
/* 00078 808B8988 85C7001C */  lh      $a3, 0x001C($t6)           ## 0000001C
/* 0007C 808B898C 1000002F */  beq     $zero, $zero, .L808B8A4C   
/* 00080 808B8990 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B8994:
/* 00084 808B8994 85E7001C */  lh      $a3, 0x001C($t7)           ## 0000001C
/* 00088 808B8998 3C03808C */  lui     $v1, %hi(D_808B90F0)       ## $v1 = 808C0000
/* 0008C 808B899C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00090 808B89A0 30F8000F */  andi    $t8, $a3, 0x000F           ## $t8 = 00000000
/* 00094 808B89A4 0018C840 */  sll     $t9, $t8,  1               
/* 00098 808B89A8 03264021 */  addu    $t0, $t9, $a2              
/* 0009C 808B89AC 00681821 */  addu    $v1, $v1, $t0              
/* 000A0 808B89B0 906390F0 */  lbu     $v1, %lo(D_808B90F0)($v1)  
/* 000A4 808B89B4 10600007 */  beq     $v1, $zero, .L808B89D4     
/* 000A8 808B89B8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 808C0000
/* 000AC 808B89BC 10410005 */  beq     $v0, $at, .L808B89D4       
/* 000B0 808B89C0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 000B4 808B89C4 10410014 */  beq     $v0, $at, .L808B8A18       
/* 000B8 808B89C8 3C04808C */  lui     $a0, %hi(D_808B91B8)       ## $a0 = 808C0000
/* 000BC 808B89CC 10000019 */  beq     $zero, $zero, .L808B8A34   
/* 000C0 808B89D0 3C04808C */  lui     $a0, %hi(D_808B9210)       ## $a0 = 808C0000
.L808B89D4:
/* 000C4 808B89D4 1460000E */  bne     $v1, $zero, .L808B8A10     
/* 000C8 808B89D8 3C04808C */  lui     $a0, %hi(D_808B919C)       ## $a0 = 808C0000
/* 000CC 808B89DC 2484919C */  addiu   $a0, $a0, %lo(D_808B919C)  ## $a0 = 808B919C
/* 000D0 808B89E0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 000D4 808B89E4 0C00084C */  jal     osSyncPrintf
              
/* 000D8 808B89E8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 000DC 808B89EC 8FA90020 */  lw      $t1, 0x0020($sp)           
/* 000E0 808B89F0 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 000E4 808B89F4 3C03808C */  lui     $v1, %hi(D_808B90F0)       ## $v1 = 808C0000
/* 000E8 808B89F8 852A001C */  lh      $t2, 0x001C($t1)           ## 0000001C
/* 000EC 808B89FC 314B000F */  andi    $t3, $t2, 0x000F           ## $t3 = 00000000
/* 000F0 808B8A00 000B6040 */  sll     $t4, $t3,  1               
/* 000F4 808B8A04 01866821 */  addu    $t5, $t4, $a2              
/* 000F8 808B8A08 006D1821 */  addu    $v1, $v1, $t5              
/* 000FC 808B8A0C 906390F0 */  lbu     $v1, %lo(D_808B90F0)($v1)  
.L808B8A10:
/* 00100 808B8A10 1000000E */  beq     $zero, $zero, .L808B8A4C   
/* 00104 808B8A14 00601025 */  or      $v0, $v1, $zero            ## $v0 = 808C0000
.L808B8A18:
/* 00108 808B8A18 3C05808C */  lui     $a1, %hi(D_808B91F8)       ## $a1 = 808C0000
/* 0010C 808B8A1C 24A591F8 */  addiu   $a1, $a1, %lo(D_808B91F8)  ## $a1 = 808B91F8
/* 00110 808B8A20 248491B8 */  addiu   $a0, $a0, %lo(D_808B91B8)  ## $a0 = FFFF91B8
/* 00114 808B8A24 0C00084C */  jal     osSyncPrintf
              
/* 00118 808B8A28 240600CA */  addiu   $a2, $zero, 0x00CA         ## $a2 = 000000CA
/* 0011C 808B8A2C 10000007 */  beq     $zero, $zero, .L808B8A4C   
/* 00120 808B8A30 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B8A34:
/* 00124 808B8A34 3C05808C */  lui     $a1, %hi(D_808B9244)       ## $a1 = 808C0000
/* 00128 808B8A38 24A59244 */  addiu   $a1, $a1, %lo(D_808B9244)  ## $a1 = 808B9244
/* 0012C 808B8A3C 24849210 */  addiu   $a0, $a0, %lo(D_808B9210)  ## $a0 = FFFF9210
/* 00130 808B8A40 0C00084C */  jal     osSyncPrintf
              
/* 00134 808B8A44 240600D2 */  addiu   $a2, $zero, 0x00D2         ## $a2 = 000000D2
/* 00138 808B8A48 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B8A4C:
/* 0013C 808B8A4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00140 808B8A50 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00144 808B8A54 03E00008 */  jr      $ra                        
/* 00148 808B8A58 00000000 */  nop
