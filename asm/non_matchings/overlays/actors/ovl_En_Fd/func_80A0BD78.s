glabel func_80A0BD78
/* 006B8 80A0BD78 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 006BC 80A0BD7C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 006C0 80A0BD80 AFB40028 */  sw      $s4, 0x0028($sp)           
/* 006C4 80A0BD84 AFB30024 */  sw      $s3, 0x0024($sp)           
/* 006C8 80A0BD88 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 006CC 80A0BD8C AFB1001C */  sw      $s1, 0x001C($sp)           
/* 006D0 80A0BD90 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 006D4 80A0BD94 8CB01C4C */  lw      $s0, 0x1C4C($a1)           ## 00001C4C
/* 006D8 80A0BD98 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 006DC 80A0BD9C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 006E0 80A0BDA0 1200001B */  beq     $s0, $zero, .L80A0BE10     
/* 006E4 80A0BDA4 24140001 */  addiu   $s4, $zero, 0x0001         ## $s4 = 00000001
/* 006E8 80A0BDA8 24130010 */  addiu   $s3, $zero, 0x0010         ## $s3 = 00000010
/* 006EC 80A0BDAC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
.L80A0BDB0:
/* 006F0 80A0BDB0 15C00004 */  bne     $t6, $zero, .L80A0BDC4     
/* 006F4 80A0BDB4 00000000 */  nop
/* 006F8 80A0BDB8 8E0F0118 */  lw      $t7, 0x0118($s0)           ## 00000118
/* 006FC 80A0BDBC 51E00004 */  beql    $t7, $zero, .L80A0BDD0     
/* 00700 80A0BDC0 86180000 */  lh      $t8, 0x0000($s0)           ## 00000000
.L80A0BDC4:
/* 00704 80A0BDC4 10000010 */  beq     $zero, $zero, .L80A0BE08   
/* 00708 80A0BDC8 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
/* 0070C 80A0BDCC 86180000 */  lh      $t8, 0x0000($s0)           ## 00000000
.L80A0BDD0:
/* 00710 80A0BDD0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00714 80A0BDD4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00718 80A0BDD8 12780003 */  beq     $s3, $t8, .L80A0BDE8       
/* 0071C 80A0BDDC 00000000 */  nop
/* 00720 80A0BDE0 10000009 */  beq     $zero, $zero, .L80A0BE08   
/* 00724 80A0BDE4 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80A0BDE8:
/* 00728 80A0BDE8 0C282F1C */  jal     func_80A0BC70              
/* 0072C 80A0BDEC 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 00730 80A0BDF0 10540003 */  beq     $v0, $s4, .L80A0BE00       
/* 00734 80A0BDF4 00000000 */  nop
/* 00738 80A0BDF8 10000003 */  beq     $zero, $zero, .L80A0BE08   
/* 0073C 80A0BDFC 8E100124 */  lw      $s0, 0x0124($s0)           ## 00000124
.L80A0BE00:
/* 00740 80A0BE00 10000004 */  beq     $zero, $zero, .L80A0BE14   
/* 00744 80A0BE04 02001025 */  or      $v0, $s0, $zero            ## $v0 = 00000000
.L80A0BE08:
/* 00748 80A0BE08 5600FFE9 */  bnel    $s0, $zero, .L80A0BDB0     
/* 0074C 80A0BE0C 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
.L80A0BE10:
/* 00750 80A0BE10 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A0BE14:
/* 00754 80A0BE14 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00758 80A0BE18 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0075C 80A0BE1C 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 00760 80A0BE20 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 00764 80A0BE24 8FB30024 */  lw      $s3, 0x0024($sp)           
/* 00768 80A0BE28 8FB40028 */  lw      $s4, 0x0028($sp)           
/* 0076C 80A0BE2C 03E00008 */  jr      $ra                        
/* 00770 80A0BE30 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000


