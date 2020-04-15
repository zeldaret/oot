glabel func_8083EB44
/* 0C934 8083EB44 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0C938 8083EB48 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0C93C 8083EB4C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0C940 8083EB50 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0C944 8083EB54 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 0C948 8083EB58 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0C94C 8083EB5C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0C950 8083EB60 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 0C954 8083EB64 11E00027 */  beq     $t7, $zero, .L8083EC04     
/* 0C958 8083EB68 00000000 */  nop
/* 0C95C 8083EB6C 8C8603AC */  lw      $a2, 0x03AC($a0)           ## 000003AC
/* 0C960 8083EB70 3C188086 */  lui     $t8, %hi(D_80858AB4)       ## $t8 = 80860000
/* 0C964 8083EB74 10C00023 */  beq     $a2, $zero, .L8083EC04     
/* 0C968 8083EB78 00000000 */  nop
/* 0C96C 8083EB7C 8F188AB4 */  lw      $t8, %lo(D_80858AB4)($t8)  
/* 0C970 8083EB80 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0C974 8083EB84 9719000C */  lhu     $t9, 0x000C($t8)           ## 8086000C
/* 0C978 8083EB88 3328C007 */  andi    $t0, $t9, 0xC007           ## $t0 = 00000000
/* 0C97C 8083EB8C 1100001D */  beq     $t0, $zero, .L8083EC04     
/* 0C980 8083EB90 00000000 */  nop
/* 0C984 8083EB94 0C20D591 */  jal     func_80835644              
/* 0C988 8083EB98 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0C98C 8083EB9C 14400017 */  bne     $v0, $zero, .L8083EBFC     
/* 0C990 8083EBA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0C994 8083EBA4 0C20FABC */  jal     func_8083EAF0              
/* 0C998 8083EBA8 8E0503AC */  lw      $a1, 0x03AC($s0)           ## 000003AC
/* 0C99C 8083EBAC 14400011 */  bne     $v0, $zero, .L8083EBF4     
/* 0C9A0 8083EBB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0C9A4 8083EBB4 3C068084 */  lui     $a2, %hi(func_808464B0)    ## $a2 = 80840000
/* 0C9A8 8083EBB8 24C664B0 */  addiu   $a2, $a2, %lo(func_808464B0) ## $a2 = 808464B0
/* 0C9AC 8083EBBC 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0C9B0 8083EBC0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0C9B4 8083EBC4 0C20D716 */  jal     func_80835C58              
/* 0C9B8 8083EBC8 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 0C9BC 8083EBCC 9209015B */  lbu     $t1, 0x015B($s0)           ## 0000015B
/* 0C9C0 8083EBD0 3C068085 */  lui     $a2, %hi(D_80853BE4)       ## $a2 = 80850000
/* 0C9C4 8083EBD4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0C9C8 8083EBD8 00095080 */  sll     $t2, $t1,  2               
/* 0C9CC 8083EBDC 00CA3021 */  addu    $a2, $a2, $t2              
/* 0C9D0 8083EBE0 8CC63BE4 */  lw      $a2, %lo(D_80853BE4)($a2)  
/* 0C9D4 8083EBE4 0C20C899 */  jal     func_80832264              
/* 0C9D8 8083EBE8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0C9DC 8083EBEC 10000005 */  beq     $zero, $zero, .L8083EC04   
/* 0C9E0 8083EBF0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083EBF4:
/* 0C9E4 8083EBF4 0C20FAA5 */  jal     func_8083EA94              
/* 0C9E8 8083EBF8 8FA50024 */  lw      $a1, 0x0024($sp)           
.L8083EBFC:
/* 0C9EC 8083EBFC 10000001 */  beq     $zero, $zero, .L8083EC04   
/* 0C9F0 8083EC00 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083EC04:
/* 0C9F4 8083EC04 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0C9F8 8083EC08 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0C9FC 8083EC0C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0CA00 8083EC10 03E00008 */  jr      $ra                        
/* 0CA04 8083EC14 00000000 */  nop
