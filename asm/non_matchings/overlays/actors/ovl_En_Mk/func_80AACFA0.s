glabel func_80AACFA0
/* 006A0 80AACFA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 006A4 80AACFA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006A8 80AACFA8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 006AC 80AACFAC 0C00BD04 */  jal     Actor_HasParent              
/* 006B0 80AACFB0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 006B4 80AACFB4 1040000B */  beq     $v0, $zero, .L80AACFE4     
/* 006B8 80AACFB8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 006BC 80AACFBC 3C0E80AB */  lui     $t6, %hi(func_80AACA40)    ## $t6 = 80AB0000
/* 006C0 80AACFC0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 006C4 80AACFC4 25CECA40 */  addiu   $t6, $t6, %lo(func_80AACA40) ## $t6 = 80AACA40
/* 006C8 80AACFC8 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 006CC 80AACFCC AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 006D0 80AACFD0 AC8E0284 */  sw      $t6, 0x0284($a0)           ## 00000284
/* 006D4 80AACFD4 944F0EF2 */  lhu     $t7, 0x0EF2($v0)           ## 8015F552
/* 006D8 80AACFD8 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 006DC 80AACFDC 10000009 */  beq     $zero, $zero, .L80AAD004   
/* 006E0 80AACFE0 A4580EF2 */  sh      $t8, 0x0EF2($v0)           ## 8015F552
.L80AACFE4:
/* 006E4 80AACFE4 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 006E8 80AACFE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 50.00
/* 006EC 80AACFEC 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 006F0 80AACFF0 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 006F4 80AACFF4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 006F8 80AACFF8 2406003E */  addiu   $a2, $zero, 0x003E         ## $a2 = 0000003E
/* 006FC 80AACFFC 0C00BD0D */  jal     func_8002F434              
/* 00700 80AAD000 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80AAD004:
/* 00704 80AAD004 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00708 80AAD008 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0070C 80AAD00C 03E00008 */  jr      $ra                        
/* 00710 80AAD010 00000000 */  nop
