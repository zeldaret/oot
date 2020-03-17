glabel func_808BF078
/* 00338 808BF078 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0033C 808BF07C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00340 808BF080 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00344 808BF084 908E017D */  lbu     $t6, 0x017D($a0)           ## 0000017D
/* 00348 808BF088 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0034C 808BF08C 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00350 808BF090 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 00354 808BF094 11E00014 */  beq     $t7, $zero, .L808BF0E8     
/* 00358 808BF098 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 0035C 808BF09C 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00360 808BF0A0 A498016A */  sh      $t8, 0x016A($a0)           ## 0000016A
/* 00364 808BF0A4 90E50168 */  lbu     $a1, 0x0168($a3)           ## 00000168
/* 00368 808BF0A8 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 0036C 808BF0AC 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00370 808BF0B0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00374 808BF0B4 0C01E221 */  jal     func_80078884              
/* 00378 808BF0B8 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 0037C 808BF0BC 8FA70020 */  lw      $a3, 0x0020($sp)           
/* 00380 808BF0C0 3C19808C */  lui     $t9, %hi(func_808BF108)    ## $t9 = 808C0000
/* 00384 808BF0C4 2739F108 */  addiu   $t9, $t9, %lo(func_808BF108) ## $t9 = 808BF108
/* 00388 808BF0C8 ACF90164 */  sw      $t9, 0x0164($a3)           ## 00000164
/* 0038C 808BF0CC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00390 808BF0D0 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00394 808BF0D4 24050BC2 */  addiu   $a1, $zero, 0x0BC2         ## $a1 = 00000BC2
/* 00398 808BF0D8 0C02003E */  jal     func_800800F8              
/* 0039C 808BF0DC 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 003A0 808BF0E0 10000006 */  beq     $zero, $zero, .L808BF0FC   
/* 003A4 808BF0E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BF0E8:
/* 003A8 808BF0E8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 003AC 808BF0EC 24E6016C */  addiu   $a2, $a3, 0x016C           ## $a2 = 0000016C
/* 003B0 808BF0F0 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 003B4 808BF0F4 00812821 */  addu    $a1, $a0, $at              
/* 003B8 808BF0F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808BF0FC:
/* 003BC 808BF0FC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 003C0 808BF100 03E00008 */  jr      $ra                        
/* 003C4 808BF104 00000000 */  nop


