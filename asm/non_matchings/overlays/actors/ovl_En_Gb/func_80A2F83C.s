glabel func_80A2F83C
/* 006BC 80A2F83C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 006C0 80A2F840 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006C4 80A2F844 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 006C8 80A2F848 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 006CC 80A2F84C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 006D0 80A2F850 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006D4 80A2F854 0C28BDD8 */  jal     func_80A2F760              
/* 006D8 80A2F858 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 006DC 80A2F85C 1440000A */  bne     $v0, $zero, .L80A2F888     
/* 006E0 80A2F860 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E4 80A2F864 86020382 */  lh      $v0, 0x0382($s0)           ## 00000382
/* 006E8 80A2F868 10400003 */  beq     $v0, $zero, .L80A2F878     
/* 006EC 80A2F86C 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 006F0 80A2F870 10000005 */  beq     $zero, $zero, .L80A2F888   
/* 006F4 80A2F874 A6180382 */  sh      $t8, 0x0382($s0)           ## 00000382
.L80A2F878:
/* 006F8 80A2F878 0C28BDF0 */  jal     func_80A2F7C0              
/* 006FC 80A2F87C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00700 80A2F880 1000002E */  beq     $zero, $zero, .L80A2F93C   
/* 00704 80A2F884 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A2F888:
/* 00708 80A2F888 0C00BC65 */  jal     func_8002F194              
/* 0070C 80A2F88C 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00710 80A2F890 1040001E */  beq     $v0, $zero, .L80A2F90C     
/* 00714 80A2F894 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00718 80A2F898 0C00BCDA */  jal     func_8002F368              
/* 0071C 80A2F89C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00720 80A2F8A0 10400008 */  beq     $v0, $zero, .L80A2F8C4     
/* 00724 80A2F8A4 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 00728 80A2F8A8 1041000C */  beq     $v0, $at, .L80A2F8DC       
/* 0072C 80A2F8AC 240870F6 */  addiu   $t0, $zero, 0x70F6         ## $t0 = 000070F6
/* 00730 80A2F8B0 2401001C */  addiu   $at, $zero, 0x001C         ## $at = 0000001C
/* 00734 80A2F8B4 1041000F */  beq     $v0, $at, .L80A2F8F4       
/* 00738 80A2F8B8 240B70F7 */  addiu   $t3, $zero, 0x70F7         ## $t3 = 000070F7
/* 0073C 80A2F8BC 1000001F */  beq     $zero, $zero, .L80A2F93C   
/* 00740 80A2F8C0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A2F8C4:
/* 00744 80A2F8C4 0C28BC60 */  jal     func_80A2F180              
/* 00748 80A2F8C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0074C 80A2F8CC 3C1980A3 */  lui     $t9, %hi(func_80A2F94C)    ## $t9 = 80A30000
/* 00750 80A2F8D0 2739F94C */  addiu   $t9, $t9, %lo(func_80A2F94C) ## $t9 = 80A2F94C
/* 00754 80A2F8D4 10000018 */  beq     $zero, $zero, .L80A2F938   
/* 00758 80A2F8D8 AE190238 */  sw      $t9, 0x0238($s0)           ## 00000238
.L80A2F8DC:
/* 0075C 80A2F8DC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00760 80A2F8E0 3C0A80A3 */  lui     $t2, %hi(func_80A2F9C0)    ## $t2 = 80A30000
/* 00764 80A2F8E4 254AF9C0 */  addiu   $t2, $t2, %lo(func_80A2F9C0) ## $t2 = 80A2F9C0
/* 00768 80A2F8E8 A528010E */  sh      $t0, 0x010E($t1)           ## 0000010E
/* 0076C 80A2F8EC 10000012 */  beq     $zero, $zero, .L80A2F938   
/* 00770 80A2F8F0 AE0A0238 */  sw      $t2, 0x0238($s0)           ## 00000238
.L80A2F8F4:
/* 00774 80A2F8F4 8FAC0024 */  lw      $t4, 0x0024($sp)           
/* 00778 80A2F8F8 3C0D80A3 */  lui     $t5, %hi(func_80A2FA50)    ## $t5 = 80A30000
/* 0077C 80A2F8FC 25ADFA50 */  addiu   $t5, $t5, %lo(func_80A2FA50) ## $t5 = 80A2FA50
/* 00780 80A2F900 A58B010E */  sh      $t3, 0x010E($t4)           ## 0000010E
/* 00784 80A2F904 1000000C */  beq     $zero, $zero, .L80A2F938   
/* 00788 80A2F908 AE0D0238 */  sw      $t5, 0x0238($s0)           ## 00000238
.L80A2F90C:
/* 0078C 80A2F90C 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.00
/* 00790 80A2F910 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00794 80A2F914 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00798 80A2F918 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0079C 80A2F91C 4600203C */  c.lt.s  $f4, $f0                   
/* 007A0 80A2F920 00000000 */  nop
/* 007A4 80A2F924 45020005 */  bc1fl   .L80A2F93C                 
/* 007A8 80A2F928 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007AC 80A2F92C 44060000 */  mfc1    $a2, $f0                   
/* 007B0 80A2F930 0C00BCA6 */  jal     func_8002F298              
/* 007B4 80A2F934 2407001B */  addiu   $a3, $zero, 0x001B         ## $a3 = 0000001B
.L80A2F938:
/* 007B8 80A2F938 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A2F93C:
/* 007BC 80A2F93C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 007C0 80A2F940 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007C4 80A2F944 03E00008 */  jr      $ra                        
/* 007C8 80A2F948 00000000 */  nop


