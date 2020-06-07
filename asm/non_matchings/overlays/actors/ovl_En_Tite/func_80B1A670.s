glabel func_80B1A670
/* 01BF0 80B1A670 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01BF4 80B1A674 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01BF8 80B1A678 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01BFC 80B1A67C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01C00 80B1A680 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 01C04 80B1A684 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01C08 80B1A688 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 01C0C 80B1A68C 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 01C10 80B1A690 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01C14 80B1A694 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01C18 80B1A698 2406386E */  addiu   $a2, $zero, 0x386E         ## $a2 = 0000386E
/* 01C1C 80B1A69C 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01C20 80B1A6A0 0C00AA7D */  jal     func_8002A9F4              
/* 01C24 80B1A6A4 24A500E4 */  addiu   $a1, $a1, 0x00E4           ## $a1 = 000000E4
/* 01C28 80B1A6A8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01C2C 80B1A6AC 24180005 */  addiu   $t8, $zero, 0x0005         ## $t8 = 00000005
/* 01C30 80B1A6B0 3C0580B2 */  lui     $a1, %hi(func_80B1A6E4)    ## $a1 = 80B20000
/* 01C34 80B1A6B4 24A5A6E4 */  addiu   $a1, $a1, %lo(func_80B1A6E4) ## $a1 = 80B1A6E4
/* 01C38 80B1A6B8 0C2C62A0 */  jal     func_80B18A80              
/* 01C3C 80B1A6BC A09802BC */  sb      $t8, 0x02BC($a0)           ## 000002BC
/* 01C40 80B1A6C0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 01C44 80B1A6C4 24050018 */  addiu   $a1, $zero, 0x0018         ## $a1 = 00000018
/* 01C48 80B1A6C8 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 01C4C 80B1A6CC 0C00CB89 */  jal     func_80032E24              
/* 01C50 80B1A6D0 248402C4 */  addiu   $a0, $a0, 0x02C4           ## $a0 = 000002C4
/* 01C54 80B1A6D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01C58 80B1A6D8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01C5C 80B1A6DC 03E00008 */  jr      $ra                        
/* 01C60 80B1A6E0 00000000 */  nop
