glabel func_8095586C
/* 065AC 8095586C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 065B0 80955870 AFB00028 */  sw      $s0, 0x0028($sp)
/* 065B4 80955874 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 065B8 80955878 AFBF002C */  sw      $ra, 0x002C($sp)
/* 065BC 8095587C 3C040602 */  lui     $a0, 0x0602                ## $a0 = 06020000
/* 065C0 80955880 AFA50044 */  sw      $a1, 0x0044($sp)
/* 065C4 80955884 0C028800 */  jal     Animation_GetLastFrame

/* 065C8 80955888 24848D18 */  addiu   $a0, $a0, 0x8D18           ## $a0 = 06018D18
/* 065CC 8095588C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 065D0 80955890 00000000 */  nop
/* 065D4 80955894 468021A0 */  cvt.s.w $f6, $f4
/* 065D8 80955898 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 065DC 8095589C E7A6003C */  swc1    $f6, 0x003C($sp)
/* 065E0 809558A0 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 065E4 809558A4 E7A00034 */  swc1    $f0, 0x0034($sp)
/* 065E8 809558A8 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 065EC 809558AC 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 065F0 809558B0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 065F4 809558B4 44819000 */  mtc1    $at, $f18                  ## $f18 = 3.00
/* 065F8 809558B8 C7A80034 */  lwc1    $f8, 0x0034($sp)
/* 065FC 809558BC 3C01C0C0 */  lui     $at, 0xC0C0                ## $at = C0C00000
/* 06600 809558C0 46120102 */  mul.s   $f4, $f0, $f18
/* 06604 809558C4 460A4400 */  add.s   $f16, $f8, $f10
/* 06608 809558C8 44814000 */  mtc1    $at, $f8                   ## $f8 = -6.00
/* 0660C 809558CC C7A6003C */  lwc1    $f6, 0x003C($sp)
/* 06610 809558D0 3C050602 */  lui     $a1, 0x0602                ## $a1 = 06020000
/* 06614 809558D4 44068000 */  mfc1    $a2, $f16
/* 06618 809558D8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 0661C 809558DC 44072000 */  mfc1    $a3, $f4
/* 06620 809558E0 AFAE0014 */  sw      $t6, 0x0014($sp)
/* 06624 809558E4 24A58D18 */  addiu   $a1, $a1, 0x8D18           ## $a1 = 06018D18
/* 06628 809558E8 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 0662C 809558EC E7A60010 */  swc1    $f6, 0x0010($sp)
/* 06630 809558F0 0C029468 */  jal     Animation_Change

/* 06634 809558F4 E7A80018 */  swc1    $f8, 0x0018($sp)
/* 06638 809558F8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 0663C 809558FC 3C058095 */  lui     $a1, %hi(func_80955940)    ## $a1 = 80950000
/* 06640 80955900 A2000195 */  sb      $zero, 0x0195($s0)         ## 00000195
/* 06644 80955904 000F0823 */  subu    $at, $zero, $t7
/* 06648 80955908 0001C080 */  sll     $t8, $at,  2
/* 0664C 8095590C 0301C023 */  subu    $t8, $t8, $at
/* 06650 80955910 0018C040 */  sll     $t8, $t8,  1
/* 06654 80955914 27190012 */  addiu   $t9, $t8, 0x0012           ## $t9 = 00000012
/* 06658 80955918 A619019C */  sh      $t9, 0x019C($s0)           ## 0000019C
/* 0665C 8095591C A60001B0 */  sh      $zero, 0x01B0($s0)         ## 000001B0
/* 06660 80955920 24A55940 */  addiu   $a1, $a1, %lo(func_80955940) ## $a1 = 80955940
/* 06664 80955924 0C253CB0 */  jal     func_8094F2C0
/* 06668 80955928 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0666C 8095592C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 06670 80955930 8FB00028 */  lw      $s0, 0x0028($sp)
/* 06674 80955934 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 06678 80955938 03E00008 */  jr      $ra
/* 0667C 8095593C 00000000 */  nop
