glabel func_8086CB10
/* 00E70 8086CB10 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E74 8086CB14 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E78 8086CB18 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E7C 8086CB1C 0C010D5B */  jal     func_8004356C              
/* 00E80 8086CB20 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00E84 8086CB24 10400015 */  beq     $v0, $zero, .L8086CB7C     
/* 00E88 8086CB28 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00E8C 8086CB2C 90E50168 */  lbu     $a1, 0x0168($a3)           ## 00000168
/* 00E90 8086CB30 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00E94 8086CB34 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00E98 8086CB38 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00E9C 8086CB3C 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00EA0 8086CB40 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00EA4 8086CB44 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00EA8 8086CB48 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 00EAC 8086CB4C 3C0F8087 */  lui     $t7, %hi(func_8086CB8C)    ## $t7 = 80870000
/* 00EB0 8086CB50 240E0032 */  addiu   $t6, $zero, 0x0032         ## $t6 = 00000032
/* 00EB4 8086CB54 46062201 */  sub.s   $f8, $f4, $f6              
/* 00EB8 8086CB58 25EFCB8C */  addiu   $t7, $t7, %lo(func_8086CB8C) ## $t7 = 8086CB8C
/* 00EBC 8086CB5C A4EE016A */  sh      $t6, 0x016A($a3)           ## 0000016A
/* 00EC0 8086CB60 ACEF0164 */  sw      $t7, 0x0164($a3)           ## 00000164
/* 00EC4 8086CB64 E4E8000C */  swc1    $f8, 0x000C($a3)           ## 0000000C
/* 00EC8 8086CB68 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00ECC 8086CB6C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00ED0 8086CB70 24050C1C */  addiu   $a1, $zero, 0x0C1C         ## $a1 = 00000C1C
/* 00ED4 8086CB74 0C02003E */  jal     func_800800F8              
/* 00ED8 8086CB78 24060033 */  addiu   $a2, $zero, 0x0033         ## $a2 = 00000033
.L8086CB7C:
/* 00EDC 8086CB7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EE0 8086CB80 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00EE4 8086CB84 03E00008 */  jr      $ra                        
/* 00EE8 8086CB88 00000000 */  nop


