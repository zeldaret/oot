glabel func_80A3B160
/* 00A10 80A3B160 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00A14 80A3B164 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00A18 80A3B168 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00A1C 80A3B16C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A20 80A3B170 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A24 80A3B174 11C00003 */  beq     $t6, $zero, .L80A3B184     
/* 00A28 80A3B178 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00A2C 80A3B17C 10000002 */  beq     $zero, $zero, .L80A3B188   
/* 00A30 80A3B180 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80A3B184:
/* 00A34 80A3B184 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L80A3B188:
/* 00A38 80A3B188 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A3C 80A3B18C 14410003 */  bne     $v0, $at, .L80A3B19C       
/* 00A40 80A3B190 3C0F8012 */  lui     $t7, %hi(gBitFlags+0x28)
/* 00A44 80A3B194 10000017 */  beq     $zero, $zero, .L80A3B1F4   
/* 00A48 80A3B198 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3B19C:
/* 00A4C 80A3B19C 8DEF7148 */  lw      $t7, %lo(gBitFlags+0x28)($t7)
/* 00A50 80A3B1A0 9478009C */  lhu     $t8, 0x009C($v1)           ## 8015E6FC
/* 00A54 80A3B1A4 01F8C824 */  and     $t9, $t7, $t8              
/* 00A58 80A3B1A8 53200004 */  beql    $t9, $zero, .L80A3B1BC     
/* 00A5C 80A3B1AC 84680034 */  lh      $t0, 0x0034($v1)           ## 8015E694
/* 00A60 80A3B1B0 10000010 */  beq     $zero, $zero, .L80A3B1F4   
/* 00A64 80A3B1B4 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00A68 80A3B1B8 84680034 */  lh      $t0, 0x0034($v1)           ## 8015E694
.L80A3B1BC:
/* 00A6C 80A3B1BC 84A901C8 */  lh      $t1, 0x01C8($a1)           ## 000001C8
/* 00A70 80A3B1C0 0109082A */  slt     $at, $t0, $t1              
/* 00A74 80A3B1C4 10200003 */  beq     $at, $zero, .L80A3B1D4     
/* 00A78 80A3B1C8 00000000 */  nop
/* 00A7C 80A3B1CC 10000009 */  beq     $zero, $zero, .L80A3B1F4   
/* 00A80 80A3B1D0 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B1D4:
/* 00A84 80A3B1D4 0C0218E2 */  jal     Item_CheckObtainability              
/* 00A88 80A3B1D8 24040043 */  addiu   $a0, $zero, 0x0043         ## $a0 = 00000043
/* 00A8C 80A3B1DC 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00A90 80A3B1E0 54410004 */  bnel    $v0, $at, .L80A3B1F4       
/* 00A94 80A3B1E4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A98 80A3B1E8 10000002 */  beq     $zero, $zero, .L80A3B1F4   
/* 00A9C 80A3B1EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AA0 80A3B1F0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B1F4:
/* 00AA4 80A3B1F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AA8 80A3B1F8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AAC 80A3B1FC 03E00008 */  jr      $ra                        
/* 00AB0 80A3B200 00000000 */  nop
