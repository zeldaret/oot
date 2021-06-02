glabel func_809BD768
/* 00B08 809BD768 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B0C 809BD76C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B10 809BD770 0C03F66B */  jal     Rand_ZeroOne
              ## Rand.Next() float
/* 00B14 809BD774 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B18 809BD778 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00B1C 809BD77C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00B20 809BD780 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B24 809BD784 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00B28 809BD788 4604003C */  c.lt.s  $f0, $f4                   
/* 00B2C 809BD78C 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 00B30 809BD790 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00B34 809BD794 24053908 */  addiu   $a1, $zero, 0x3908         ## $a1 = 00003908
/* 00B38 809BD798 45020004 */  bc1fl   .L809BD7AC                 
/* 00B3C 809BD79C A08F0194 */  sb      $t7, 0x0194($a0)           ## 00000194
/* 00B40 809BD7A0 10000002 */  beq     $zero, $zero, .L809BD7AC   
/* 00B44 809BD7A4 A08E0194 */  sb      $t6, 0x0194($a0)           ## 00000194
/* 00B48 809BD7A8 A08F0194 */  sb      $t7, 0x0194($a0)           ## 00000194
.L809BD7AC:
/* 00B4C 809BD7AC 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 00B50 809BD7B0 908802FC */  lbu     $t0, 0x02FC($a0)           ## 000002FC
/* 00B54 809BD7B4 A480019A */  sh      $zero, 0x019A($a0)         ## 0000019A
/* 00B58 809BD7B8 0301C824 */  and     $t9, $t8, $at              
/* 00B5C 809BD7BC 01014824 */  and     $t1, $t0, $at              
/* 00B60 809BD7C0 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 00B64 809BD7C4 A08902FC */  sb      $t1, 0x02FC($a0)           ## 000002FC
/* 00B68 809BD7C8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B6C 809BD7CC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B70 809BD7D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B74 809BD7D4 3C0A809C */  lui     $t2, %hi(func_809BE4A4)    ## $t2 = 809C0000
/* 00B78 809BD7D8 254AE4A4 */  addiu   $t2, $t2, %lo(func_809BE4A4) ## $t2 = 809BE4A4
/* 00B7C 809BD7DC AC8A0190 */  sw      $t2, 0x0190($a0)           ## 00000190
/* 00B80 809BD7E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B84 809BD7E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B88 809BD7E8 03E00008 */  jr      $ra                        
/* 00B8C 809BD7EC 00000000 */  nop
