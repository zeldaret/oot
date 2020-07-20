.rdata
glabel D_80A08B70
    .asciz "\n\n"
    .balign 4

glabel D_80A08B74
    .asciz "\x1b[32m☆☆☆☆☆ デスマウンテンエンカウント２セットされました ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

glabel D_80A08BC4
    .asciz "\n\n"
    .balign 4

glabel D_80A08BC8
    .asciz "\x1b[32m☆☆☆☆☆ ガノンタワー脱出エンカウント２セットされました ☆☆☆☆☆ %d\n\x1b[m"
    .balign 4

.text
glabel EnEncount2_Init
/* 00000 80A07990 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00004 80A07994 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A07998 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A0799C 84AE00A4 */  lh      $t6, 0x00A4($a1)           ## 000000A4
/* 00010 80A079A0 24010060 */  addiu   $at, $zero, 0x0060         ## $at = 00000060
/* 00014 80A079A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80A079A8 11C10002 */  beq     $t6, $at, .L80A079B4       
/* 0001C 80A079AC 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00020 80A079B0 A48F015A */  sh      $t7, 0x015A($a0)           ## 0000015A
.L80A079B4:
/* 00024 80A079B4 8618015A */  lh      $t8, 0x015A($s0)           ## 0000015A
/* 00028 80A079B8 3C0480A1 */  lui     $a0, %hi(D_80A08BC4)       ## $a0 = 80A10000
/* 0002C 80A079BC 17000015 */  bne     $t8, $zero, .L80A07A14     
/* 00030 80A079C0 00000000 */  nop
/* 00034 80A079C4 3C0480A1 */  lui     $a0, %hi(D_80A08B70)       ## $a0 = 80A10000
/* 00038 80A079C8 0C00084C */  jal     osSyncPrintf
              
/* 0003C 80A079CC 24848B70 */  addiu   $a0, $a0, %lo(D_80A08B70)  ## $a0 = 80A08B70
/* 00040 80A079D0 3C0480A1 */  lui     $a0, %hi(D_80A08B74)       ## $a0 = 80A10000
/* 00044 80A079D4 24848B74 */  addiu   $a0, $a0, %lo(D_80A08B74)  ## $a0 = 80A08B74
/* 00048 80A079D8 0C00084C */  jal     osSyncPrintf
              
/* 0004C 80A079DC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00050 80A079E0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00054 80A079E4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00058 80A079E8 8C590004 */  lw      $t9, 0x0004($v0)           ## 8015E664
/* 0005C 80A079EC 1720000F */  bne     $t9, $zero, .L80A07A2C     
/* 00060 80A079F0 00000000 */  nop
/* 00064 80A079F4 94480EDC */  lhu     $t0, 0x0EDC($v0)           ## 8015F53C
/* 00068 80A079F8 31090200 */  andi    $t1, $t0, 0x0200           ## $t1 = 00000000
/* 0006C 80A079FC 1120000B */  beq     $t1, $zero, .L80A07A2C     
/* 00070 80A07A00 00000000 */  nop
/* 00074 80A07A04 0C00B55C */  jal     Actor_Kill
              
/* 00078 80A07A08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0007C 80A07A0C 10000007 */  beq     $zero, $zero, .L80A07A2C   
/* 00080 80A07A10 00000000 */  nop
.L80A07A14:
/* 00084 80A07A14 0C00084C */  jal     osSyncPrintf
              
/* 00088 80A07A18 24848BC4 */  addiu   $a0, $a0, %lo(D_80A08BC4)  ## $a0 = FFFF8BC4
/* 0008C 80A07A1C 3C0480A1 */  lui     $a0, %hi(D_80A08BC8)       ## $a0 = 80A10000
/* 00090 80A07A20 24848BC8 */  addiu   $a0, $a0, %lo(D_80A08BC8)  ## $a0 = 80A08BC8
/* 00094 80A07A24 0C00084C */  jal     osSyncPrintf
              
/* 00098 80A07A28 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80A07A2C:
/* 0009C 80A07A2C 3C0A80A0 */  lui     $t2, %hi(func_80A07A4C)    ## $t2 = 80A00000
/* 000A0 80A07A30 254A7A4C */  addiu   $t2, $t2, %lo(func_80A07A4C) ## $t2 = 80A07A4C
/* 000A4 80A07A34 AE0A014C */  sw      $t2, 0x014C($s0)           ## 0000014C
/* 000A8 80A07A38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000AC 80A07A3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000B0 80A07A40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000B4 80A07A44 03E00008 */  jr      $ra                        
/* 000B8 80A07A48 00000000 */  nop
