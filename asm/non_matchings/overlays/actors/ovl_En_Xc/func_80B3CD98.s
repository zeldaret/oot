.rdata
glabel D_80B41FB0
    .asciz "ブーツを取った!!!!!!!!!!!!!!!!!!\n"
    .balign 4
glabel D_80B41FD4
    .asciz "はやくブーツを取るべし!!!!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel func_80B3CD98
/* 00BB8 80B3CD98 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00BBC 80B3CD9C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00BC0 80B3CDA0 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00BC4 80B3CDA4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00BC8 80B3CDA8 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00BCC 80B3CDAC 15C1002E */  bne     $t6, $at, .L80B3CE68       
/* 00BD0 80B3CDB0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00BD4 80B3CDB4 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00BD8 80B3CDB8 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 00BDC 80B3CDBC 931871F3 */  lbu     $t8, 0x71F3($t8)           ## 801271F3
/* 00BE0 80B3CDC0 8DEF7124 */  lw      $t7, 0x7124($t7)           ## 80127124
/* 00BE4 80B3CDC4 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00BE8 80B3CDC8 9468009C */  lhu     $t0, 0x009C($v1)           ## 8015E6FC
/* 00BEC 80B3CDCC 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00BF0 80B3CDD0 030FC804 */  sllv    $t9, $t7, $t8              
/* 00BF4 80B3CDD4 03284824 */  and     $t1, $t9, $t0              
/* 00BF8 80B3CDD8 1120001E */  beq     $t1, $zero, .L80B3CE54     
/* 00BFC 80B3CDDC 8C44067C */  lw      $a0, 0x067C($v0)           ## 0000067D
/* 00C00 80B3CDE0 946A0EDE */  lhu     $t2, 0x0EDE($v1)           ## 8015F53E
/* 00C04 80B3CDE4 00046080 */  sll     $t4, $a0,  2               
/* 00C08 80B3CDE8 314B0004 */  andi    $t3, $t2, 0x0004           ## $t3 = 00000000
/* 00C0C 80B3CDEC 15600019 */  bne     $t3, $zero, .L80B3CE54     
/* 00C10 80B3CDF0 00000000 */  nop
/* 00C14 80B3CDF4 05800017 */  bltz    $t4, .L80B3CE54            
/* 00C18 80B3CDF8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C1C 80B3CDFC 0C02FF21 */  jal     func_800BFC84              
/* 00C20 80B3CE00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00C24 80B3CE04 14400013 */  bne     $v0, $zero, .L80B3CE54     
/* 00C28 80B3CE08 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C2C 80B3CE0C 3C050200 */  lui     $a1, 0x0200                ## $a1 = 02000000
/* 00C30 80B3CE10 0C01A4F6 */  jal     Cutscene_SetSegment
              
/* 00C34 80B3CE14 24A50330 */  addiu   $a1, $a1, 0x0330           ## $a1 = 02000330
/* 00C38 80B3CE18 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00C3C 80B3CE1C 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00C40 80B3CE20 946E0EDE */  lhu     $t6, 0x0EDE($v1)           ## 8015F53E
/* 00C44 80B3CE24 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00C48 80B3CE28 A06D1414 */  sb      $t5, 0x1414($v1)           ## 8015FA74
/* 00C4C 80B3CE2C 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 00C50 80B3CE30 A46F0EDE */  sh      $t7, 0x0EDE($v1)           ## 8015F53E
/* 00C54 80B3CE34 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00C58 80B3CE38 0C021344 */  jal     Item_Give              
/* 00C5C 80B3CE3C 2405005C */  addiu   $a1, $zero, 0x005C         ## $a1 = 0000005C
/* 00C60 80B3CE40 3C0480B4 */  lui     $a0, %hi(D_80B41FB0)       ## $a0 = 80B40000
/* 00C64 80B3CE44 0C00084C */  jal     osSyncPrintf
              
/* 00C68 80B3CE48 24841FB0 */  addiu   $a0, $a0, %lo(D_80B41FB0)  ## $a0 = 80B41FB0
/* 00C6C 80B3CE4C 10000006 */  beq     $zero, $zero, .L80B3CE68   
/* 00C70 80B3CE50 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B3CE54:
/* 00C74 80B3CE54 3C0480B4 */  lui     $a0, %hi(D_80B41FD4)       ## $a0 = 80B40000
/* 00C78 80B3CE58 0C00084C */  jal     osSyncPrintf
              
/* 00C7C 80B3CE5C 24841FD4 */  addiu   $a0, $a0, %lo(D_80B41FD4)  ## $a0 = 80B41FD4
/* 00C80 80B3CE60 10000001 */  beq     $zero, $zero, .L80B3CE68   
/* 00C84 80B3CE64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B3CE68:
/* 00C88 80B3CE68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00C8C 80B3CE6C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00C90 80B3CE70 03E00008 */  jr      $ra                        
/* 00C94 80B3CE74 00000000 */  nop
