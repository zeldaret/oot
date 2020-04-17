glabel func_80A1BDFC
/* 0145C 80A1BDFC 3C0E80A2 */  lui     $t6, %hi(D_80A1CFF0)       ## $t6 = 80A20000
/* 01460 80A1BE00 91CECFF0 */  lbu     $t6, %lo(D_80A1CFF0)($t6)  
/* 01464 80A1BE04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01468 80A1BE08 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 0146C 80A1BE0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01470 80A1BE10 15C1001D */  bne     $t6, $at, .L80A1BE88       
/* 01474 80A1BE14 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 01478 80A1BE18 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0147C 80A1BE1C 9442F54E */  lhu     $v0, -0x0AB2($v0)          ## 8015F54E
/* 01480 80A1BE20 3C0D80A2 */  lui     $t5, %hi(func_80A1BE98)    ## $t5 = 80A20000
/* 01484 80A1BE24 25ADBE98 */  addiu   $t5, $t5, %lo(func_80A1BE98) ## $t5 = 80A1BE98
/* 01488 80A1BE28 304F0002 */  andi    $t7, $v0, 0x0002           ## $t7 = 00000000
/* 0148C 80A1BE2C 11E00014 */  beq     $t7, $zero, .L80A1BE80     
/* 01490 80A1BE30 30580004 */  andi    $t8, $v0, 0x0004           ## $t8 = 00000000
/* 01494 80A1BE34 13000012 */  beq     $t8, $zero, .L80A1BE80     
/* 01498 80A1BE38 30590010 */  andi    $t9, $v0, 0x0010           ## $t9 = 00000000
/* 0149C 80A1BE3C 13200010 */  beq     $t9, $zero, .L80A1BE80     
/* 014A0 80A1BE40 30480008 */  andi    $t0, $v0, 0x0008           ## $t0 = 00000000
/* 014A4 80A1BE44 1100000E */  beq     $t0, $zero, .L80A1BE80     
/* 014A8 80A1BE48 30490020 */  andi    $t1, $v0, 0x0020           ## $t1 = 00000000
/* 014AC 80A1BE4C 1120000C */  beq     $t1, $zero, .L80A1BE80     
/* 014B0 80A1BE50 304A0040 */  andi    $t2, $v0, 0x0040           ## $t2 = 00000000
/* 014B4 80A1BE54 1140000A */  beq     $t2, $zero, .L80A1BE80     
/* 014B8 80A1BE58 3C0B80A2 */  lui     $t3, %hi(func_80A1C1E4)    ## $t3 = 80A20000
/* 014BC 80A1BE5C 256BC1E4 */  addiu   $t3, $t3, %lo(func_80A1C1E4) ## $t3 = 80A1C1E4
/* 014C0 80A1BE60 240C0006 */  addiu   $t4, $zero, 0x0006         ## $t4 = 00000006
/* 014C4 80A1BE64 AC8B0354 */  sw      $t3, 0x0354($a0)           ## 00000354
/* 014C8 80A1BE68 A08C0382 */  sb      $t4, 0x0382($a0)           ## 00000382
/* 014CC 80A1BE6C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 014D0 80A1BE70 0C042DA0 */  jal     func_8010B680              
/* 014D4 80A1BE74 240540AB */  addiu   $a1, $zero, 0x40AB         ## $a1 = 000040AB
/* 014D8 80A1BE78 10000004 */  beq     $zero, $zero, .L80A1BE8C   
/* 014DC 80A1BE7C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1BE80:
/* 014E0 80A1BE80 A0C00382 */  sb      $zero, 0x0382($a2)         ## 00000382
/* 014E4 80A1BE84 ACCD0354 */  sw      $t5, 0x0354($a2)           ## 00000354
.L80A1BE88:
/* 014E8 80A1BE88 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1BE8C:
/* 014EC 80A1BE8C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014F0 80A1BE90 03E00008 */  jr      $ra                        
/* 014F4 80A1BE94 00000000 */  nop
