glabel func_80B8F65C
/* 00BDC 80B8F65C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00BE0 80B8F660 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00BE4 80B8F664 3C0E80B9 */  lui     $t6, %hi(func_80B8F6CC)    ## $t6 = 80B90000
/* 00BE8 80B8F668 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BEC 80B8F66C 25CEF6CC */  addiu   $t6, $t6, %lo(func_80B8F6CC) ## $t6 = 80B8F6CC
/* 00BF0 80B8F670 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BF4 80B8F674 AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
/* 00BF8 80B8F678 2404000C */  addiu   $a0, $zero, 0x000C         ## $a0 = 0000000C
/* 00BFC 80B8F67C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C00 80B8F680 24050028 */  addiu   $a1, $zero, 0x0028         ## $a1 = 00000028
/* 00C04 80B8F684 A60201C0 */  sh      $v0, 0x01C0($s0)           ## 000001C0
/* 00C08 80B8F688 240400C8 */  addiu   $a0, $zero, 0x00C8         ## $a0 = 000000C8
/* 00C0C 80B8F68C 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C10 80B8F690 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 00C14 80B8F694 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 00C18 80B8F698 A60201C4 */  sh      $v0, 0x01C4($s0)           ## 000001C4
/* 00C1C 80B8F69C A60F01C6 */  sh      $t7, 0x01C6($s0)           ## 000001C6
/* 00C20 80B8F6A0 24040064 */  addiu   $a0, $zero, 0x0064         ## $a0 = 00000064
/* 00C24 80B8F6A4 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C28 80B8F6A8 24050320 */  addiu   $a1, $zero, 0x0320         ## $a1 = 00000320
/* 00C2C 80B8F6AC 24180014 */  addiu   $t8, $zero, 0x0014         ## $t8 = 00000014
/* 00C30 80B8F6B0 A60201CA */  sh      $v0, 0x01CA($s0)           ## 000001CA
/* 00C34 80B8F6B4 A61801CC */  sh      $t8, 0x01CC($s0)           ## 000001CC
/* 00C38 80B8F6B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C3C 80B8F6BC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C40 80B8F6C0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C44 80B8F6C4 03E00008 */  jr      $ra                        
/* 00C48 80B8F6C8 00000000 */  nop


