glabel func_809E4A7C
/* 0075C 809E4A7C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00760 809E4A80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00764 809E4A84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00768 809E4A88 0C2791FB */  jal     func_809E47EC              
/* 0076C 809E4A8C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00770 809E4A90 0C02927F */  jal     SkelAnime_Update
              
/* 00774 809E4A94 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00778 809E4A98 10400004 */  beq     $v0, $zero, .L809E4AAC     
/* 0077C 809E4A9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00780 809E4AA0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00784 809E4AA4 0C2790C8 */  jal     func_809E4320              
/* 00788 809E4AA8 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
.L809E4AAC:
/* 0078C 809E4AAC 8E0E01E0 */  lw      $t6, 0x01E0($s0)           ## 000001E0
/* 00790 809E4AB0 51C00014 */  beql    $t6, $zero, .L809E4B04     
/* 00794 809E4AB4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00798 809E4AB8 96020200 */  lhu     $v0, 0x0200($s0)           ## 00000200
/* 0079C 809E4ABC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A0 809E4AC0 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 007A4 809E4AC4 304F0008 */  andi    $t7, $v0, 0x0008           ## $t7 = 00000000
/* 007A8 809E4AC8 55E00005 */  bnel    $t7, $zero, .L809E4AE0     
/* 007AC 809E4ACC 30580800 */  andi    $t8, $v0, 0x0800           ## $t8 = 00000000
/* 007B0 809E4AD0 0C2790C8 */  jal     func_809E4320              
/* 007B4 809E4AD4 260601EC */  addiu   $a2, $s0, 0x01EC           ## $a2 = 000001EC
/* 007B8 809E4AD8 96020200 */  lhu     $v0, 0x0200($s0)           ## 00000200
/* 007BC 809E4ADC 30580800 */  andi    $t8, $v0, 0x0800           ## $t8 = 00000000
.L809E4AE0:
/* 007C0 809E4AE0 17000005 */  bne     $t8, $zero, .L809E4AF8     
/* 007C4 809E4AE4 3C0A809E */  lui     $t2, %hi(func_809E49A8)    ## $t2 = 809E0000
/* 007C8 809E4AE8 34480200 */  ori     $t0, $v0, 0x0200           ## $t0 = 00000200
/* 007CC 809E4AEC A6080200 */  sh      $t0, 0x0200($s0)           ## 00000200
/* 007D0 809E4AF0 3109FEFF */  andi    $t1, $t0, 0xFEFF           ## $t1 = 00000200
/* 007D4 809E4AF4 A6090200 */  sh      $t1, 0x0200($s0)           ## 00000200
.L809E4AF8:
/* 007D8 809E4AF8 254A49A8 */  addiu   $t2, $t2, %lo(func_809E49A8) ## $t2 = 809E49A8
/* 007DC 809E4AFC AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 007E0 809E4B00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E4B04:
/* 007E4 809E4B04 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007E8 809E4B08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 007EC 809E4B0C 03E00008 */  jr      $ra                        
/* 007F0 809E4B10 00000000 */  nop
