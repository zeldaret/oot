glabel func_80A3B0BC
/* 0096C 80A3B0BC 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00970 80A3B0C0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 00974 80A3B0C4 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00978 80A3B0C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0097C 80A3B0CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00980 80A3B0D0 11C00003 */  beq     $t6, $zero, .L80A3B0E0     
/* 00984 80A3B0D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00988 80A3B0D8 10000002 */  beq     $zero, $zero, .L80A3B0E4   
/* 0098C 80A3B0DC 24020005 */  addiu   $v0, $zero, 0x0005         ## $v0 = 00000005
.L80A3B0E0:
/* 00990 80A3B0E0 24020011 */  addiu   $v0, $zero, 0x0011         ## $v0 = 00000011
.L80A3B0E4:
/* 00994 80A3B0E4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00998 80A3B0E8 14410003 */  bne     $v0, $at, .L80A3B0F8       
/* 0099C 80A3B0EC 3C0F8012 */  lui     $t7, %hi(gBitFlags+0x24)
/* 009A0 80A3B0F0 10000017 */  beq     $zero, $zero, .L80A3B150   
/* 009A4 80A3B0F4 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A3B0F8:
/* 009A8 80A3B0F8 8DEF7144 */  lw      $t7, %lo(gBitFlags+0x24)($t7)
/* 009AC 80A3B0FC 9478009C */  lhu     $t8, 0x009C($v1)           ## 8015E6FC
/* 009B0 80A3B100 01F8C824 */  and     $t9, $t7, $t8              
/* 009B4 80A3B104 53200004 */  beql    $t9, $zero, .L80A3B118     
/* 009B8 80A3B108 84680034 */  lh      $t0, 0x0034($v1)           ## 8015E694
/* 009BC 80A3B10C 10000010 */  beq     $zero, $zero, .L80A3B150   
/* 009C0 80A3B110 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 009C4 80A3B114 84680034 */  lh      $t0, 0x0034($v1)           ## 8015E694
.L80A3B118:
/* 009C8 80A3B118 84A901C8 */  lh      $t1, 0x01C8($a1)           ## 000001C8
/* 009CC 80A3B11C 0109082A */  slt     $at, $t0, $t1              
/* 009D0 80A3B120 10200003 */  beq     $at, $zero, .L80A3B130     
/* 009D4 80A3B124 00000000 */  nop
/* 009D8 80A3B128 10000009 */  beq     $zero, $zero, .L80A3B150   
/* 009DC 80A3B12C 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3B130:
/* 009E0 80A3B130 0C0218E2 */  jal     Item_CheckObtainability              
/* 009E4 80A3B134 24040042 */  addiu   $a0, $zero, 0x0042         ## $a0 = 00000042
/* 009E8 80A3B138 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 009EC 80A3B13C 54410004 */  bnel    $v0, $at, .L80A3B150       
/* 009F0 80A3B140 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 009F4 80A3B144 10000002 */  beq     $zero, $zero, .L80A3B150   
/* 009F8 80A3B148 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 009FC 80A3B14C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3B150:
/* 00A00 80A3B150 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A04 80A3B154 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A08 80A3B158 03E00008 */  jr      $ra                        
/* 00A0C 80A3B15C 00000000 */  nop
