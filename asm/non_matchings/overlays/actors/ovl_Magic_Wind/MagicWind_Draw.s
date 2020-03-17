glabel MagicWind_Draw
/* 006AC 80B8B7AC 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 006B0 80B8B7B0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 006B4 80B8B7B4 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 006B8 80B8B7B8 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 006BC 80B8B7BC AFA50054 */  sw      $a1, 0x0054($sp)           
/* 006C0 80B8B7C0 8CB00000 */  lw      $s0, 0x0000($a1)           ## 00000000
/* 006C4 80B8B7C4 3C0680B9 */  lui     $a2, %hi(D_80B8CE98)       ## $a2 = 80B90000
/* 006C8 80B8B7C8 24C6CE98 */  addiu   $a2, $a2, %lo(D_80B8CE98)  ## $a2 = 80B8CE98
/* 006CC 80B8B7CC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 006D0 80B8B7D0 24070295 */  addiu   $a3, $zero, 0x0295         ## $a3 = 00000295
/* 006D4 80B8B7D4 0C031AB1 */  jal     func_800C6AC4              
/* 006D8 80B8B7D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006DC 80B8B7DC 8FB80050 */  lw      $t8, 0x0050($sp)           
/* 006E0 80B8B7E0 3C0F80B9 */  lui     $t7, %hi(func_80B8B3C8)    ## $t7 = 80B90000
/* 006E4 80B8B7E4 25EFB3C8 */  addiu   $t7, $t7, %lo(func_80B8B3C8) ## $t7 = 80B8B3C8
/* 006E8 80B8B7E8 8F190170 */  lw      $t9, 0x0170($t8)           ## 00000170
/* 006EC 80B8B7EC 24050019 */  addiu   $a1, $zero, 0x0019         ## $a1 = 00000019
/* 006F0 80B8B7F0 11F9000E */  beq     $t7, $t9, .L80B8B82C       
/* 006F4 80B8B7F4 00000000 */  nop
/* 006F8 80B8B7F8 0C024DDD */  jal     func_80093774              
/* 006FC 80B8B7FC 8E0402D0 */  lw      $a0, 0x02D0($s0)           ## 000002D0
/* 00700 80B8B800 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 00704 80B8B804 AE0202D0 */  sw      $v0, 0x02D0($s0)           ## 000002D0
/* 00708 80B8B808 3C0780B9 */  lui     $a3, %hi(func_80B8B5F4)    ## $a3 = 80B90000
/* 0070C 80B8B80C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00710 80B8B810 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00714 80B8B814 24E7B5F4 */  addiu   $a3, $a3, %lo(func_80B8B5F4) ## $a3 = 80B8B5F4
/* 00718 80B8B818 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0071C 80B8B81C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00720 80B8B820 8FA50054 */  lw      $a1, 0x0054($sp)           
/* 00724 80B8B824 0C01B3DB */  jal     func_8006CF6C              
/* 00728 80B8B828 2486014C */  addiu   $a2, $a0, 0x014C           ## $a2 = 0000014C
.L80B8B82C:
/* 0072C 80B8B82C 3C0680B9 */  lui     $a2, %hi(D_80B8CEAC)       ## $a2 = 80B90000
/* 00730 80B8B830 24C6CEAC */  addiu   $a2, $a2, %lo(D_80B8CEAC)  ## $a2 = 80B8CEAC
/* 00734 80B8B834 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 00738 80B8B838 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0073C 80B8B83C 0C031AD5 */  jal     func_800C6B54              
/* 00740 80B8B840 240702A1 */  addiu   $a3, $zero, 0x02A1         ## $a3 = 000002A1
/* 00744 80B8B844 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00748 80B8B848 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 0074C 80B8B84C 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00750 80B8B850 03E00008 */  jr      $ra                        
/* 00754 80B8B854 00000000 */  nop
/* 00758 80B8B858 00000000 */  nop
/* 0075C 80B8B85C 00000000 */  nop

