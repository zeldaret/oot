glabel func_80A33704
/* 00B34 80A33704 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00B38 80A33708 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00B3C 80A3370C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00B40 80A33710 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00B44 80A33714 848E008A */  lh      $t6, 0x008A($a0)           ## 0000008A
/* 00B48 80A33718 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B4C 80A3371C 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00B50 80A33720 AFAE0030 */  sw      $t6, 0x0030($sp)           
/* 00B54 80A33724 849800B6 */  lh      $t8, 0x00B6($a0)           ## 000000B6
/* 00B58 80A33728 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00B5C 80A3372C 87A50032 */  lh      $a1, 0x0032($sp)           
/* 00B60 80A33730 01D81023 */  subu    $v0, $t6, $t8              
/* 00B64 80A33734 00021400 */  sll     $v0, $v0, 16               
/* 00B68 80A33738 00021403 */  sra     $v0, $v0, 16               
/* 00B6C 80A3373C 04400003 */  bltz    $v0, .L80A3374C            
/* 00B70 80A33740 00021823 */  subu    $v1, $zero, $v0            
/* 00B74 80A33744 10000001 */  beq     $zero, $zero, .L80A3374C   
/* 00B78 80A33748 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80A3374C:
/* 00B7C 80A3374C 28614001 */  slti    $at, $v1, 0x4001           
/* 00B80 80A33750 10200013 */  beq     $at, $zero, .L80A337A0     
/* 00B84 80A33754 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 00B88 80A33758 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 00B8C 80A3375C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B90 80A33760 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00B94 80A33764 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00B98 80A33768 8E0A0038 */  lw      $t2, 0x0038($s0)           ## 00000038
/* 00B9C 80A3376C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00BA0 80A33770 A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
/* 00BA4 80A33774 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00BA8 80A33778 8E09003C */  lw      $t1, 0x003C($s0)           ## 0000003C
/* 00BAC 80A3377C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00BB0 80A33780 260602E8 */  addiu   $a2, $s0, 0x02E8           ## $a2 = 000002E8
/* 00BB4 80A33784 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 00BB8 80A33788 8E0A0040 */  lw      $t2, 0x0040($s0)           ## 00000040
/* 00BBC 80A3378C 260702EE */  addiu   $a3, $s0, 0x02EE           ## $a3 = 000002EE
/* 00BC0 80A33790 0C00E0A4 */  jal     func_80038290              
/* 00BC4 80A33794 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00BC8 80A33798 1000001C */  beq     $zero, $zero, .L80A3380C   
/* 00BCC 80A3379C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A337A0:
/* 00BD0 80A337A0 0441000A */  bgez    $v0, .L80A337CC            
/* 00BD4 80A337A4 260402EA */  addiu   $a0, $s0, 0x02EA           ## $a0 = 000002EA
/* 00BD8 80A337A8 240B0100 */  addiu   $t3, $zero, 0x0100         ## $t3 = 00000100
/* 00BDC 80A337AC AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00BE0 80A337B0 260402EA */  addiu   $a0, $s0, 0x02EA           ## $a0 = 000002EA
/* 00BE4 80A337B4 2405E000 */  addiu   $a1, $zero, 0xE000         ## $a1 = FFFFE000
/* 00BE8 80A337B8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00BEC 80A337BC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00BF0 80A337C0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00BF4 80A337C4 10000008 */  beq     $zero, $zero, .L80A337E8   
/* 00BF8 80A337C8 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80A337CC:
/* 00BFC 80A337CC 240C0100 */  addiu   $t4, $zero, 0x0100         ## $t4 = 00000100
/* 00C00 80A337D0 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 00C04 80A337D4 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 00C08 80A337D8 24060006 */  addiu   $a2, $zero, 0x0006         ## $a2 = 00000006
/* 00C0C 80A337DC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C10 80A337E0 24071838 */  addiu   $a3, $zero, 0x1838         ## $a3 = 00001838
/* 00C14 80A337E4 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
.L80A337E8:
/* 00C18 80A337E8 240D0064 */  addiu   $t5, $zero, 0x0064         ## $t5 = 00000064
/* 00C1C 80A337EC AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00C20 80A337F0 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00C24 80A337F4 2406000C */  addiu   $a2, $zero, 0x000C         ## $a2 = 0000000C
/* 00C28 80A337F8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C2C 80A337FC 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00C30 80A33800 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 00C34 80A33804 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 00C38 80A33808 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A3380C:
/* 00C3C 80A3380C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00C40 80A33810 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00C44 80A33814 03E00008 */  jr      $ra                        
/* 00C48 80A33818 00000000 */  nop
