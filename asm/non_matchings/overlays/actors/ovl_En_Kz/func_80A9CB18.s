glabel func_80A9CB18
/* 005C8 80A9CB18 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005CC 80A9CB1C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 005D0 80A9CB20 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 005D4 80A9CB24 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 005D8 80A9CB28 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 005DC 80A9CB2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 005E0 80A9CB30 3C0F80AA */  lui     $t7, %hi(func_80A9C658)    ## $t7 = 80AA0000
/* 005E4 80A9CB34 8C881C44 */  lw      $t0, 0x1C44($a0)           ## 00001C44
/* 005E8 80A9CB38 3C1880AA */  lui     $t8, %hi(func_80A9C6C0)    ## $t8 = 80AA0000
/* 005EC 80A9CB3C 2718C6C0 */  addiu   $t8, $t8, %lo(func_80A9C6C0) ## $t8 = 80A9C6C0
/* 005F0 80A9CB40 25EFC658 */  addiu   $t7, $t7, %lo(func_80A9C658) ## $t7 = 80A9C658
/* 005F4 80A9CB44 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 005F8 80A9CB48 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 005FC 80A9CB4C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00600 80A9CB50 24A601E0 */  addiu   $a2, $a1, 0x01E0           ## $a2 = 000001E0
/* 00604 80A9CB54 3C0743AA */  lui     $a3, 0x43AA                ## $a3 = 43AA0000
/* 00608 80A9CB58 0C2A7257 */  jal     func_80A9C95C              
/* 0060C 80A9CB5C AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00610 80A9CB60 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00614 80A9CB64 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00618 80A9CB68 10400057 */  beq     $v0, $zero, .L80A9CCC8     
/* 0061C 80A9CB6C 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00620 80A9CB70 94B9010E */  lhu     $t9, 0x010E($a1)           ## 0000010E
/* 00624 80A9CB74 2401401A */  addiu   $at, $zero, 0x401A         ## $at = 0000401A
/* 00628 80A9CB78 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 0062C 80A9CB7C 17210015 */  bne     $t9, $at, .L80A9CBD4       
/* 00630 80A9CB80 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00634 80A9CB84 94690EDA */  lhu     $t1, 0x0EDA($v1)           ## 8015F53A
/* 00638 80A9CB88 312A0008 */  andi    $t2, $t1, 0x0008           ## $t2 = 00000000
/* 0063C 80A9CB8C 15400011 */  bne     $t2, $zero, .L80A9CBD4     
/* 00640 80A9CB90 00000000 */  nop
/* 00644 80A9CB94 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00648 80A9CB98 0C00BCDA */  jal     func_8002F368              
/* 0064C 80A9CB9C AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00650 80A9CBA0 2401001D */  addiu   $at, $zero, 0x001D         ## $at = 0000001D
/* 00654 80A9CBA4 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00658 80A9CBA8 14410005 */  bne     $v0, $at, .L80A9CBC0       
/* 0065C 80A9CBAC 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 00660 80A9CBB0 240B401B */  addiu   $t3, $zero, 0x401B         ## $t3 = 0000401B
/* 00664 80A9CBB4 A4AB010E */  sh      $t3, 0x010E($a1)           ## 0000010E
/* 00668 80A9CBB8 10000003 */  beq     $zero, $zero, .L80A9CBC8   
/* 0066C 80A9CBBC A0A00208 */  sb      $zero, 0x0208($a1)         ## 00000208
.L80A9CBC0:
/* 00670 80A9CBC0 240C401A */  addiu   $t4, $zero, 0x401A         ## $t4 = 0000401A
/* 00674 80A9CBC4 A4AC010E */  sh      $t4, 0x010E($a1)           ## 0000010E
.L80A9CBC8:
/* 00678 80A9CBC8 94AD010E */  lhu     $t5, 0x010E($a1)           ## 0000010E
/* 0067C 80A9CBCC 1000003E */  beq     $zero, $zero, .L80A9CCC8   
/* 00680 80A9CBD0 A50D010E */  sh      $t5, 0x010E($t0)           ## 0000010E
.L80A9CBD4:
/* 00684 80A9CBD4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00688 80A9CBD8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0068C 80A9CBDC 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 00690 80A9CBE0 3C0F8012 */  lui     $t7, 0x8012                ## $t7 = 80120000
/* 00694 80A9CBE4 55C00039 */  bnel    $t6, $zero, .L80A9CCCC     
/* 00698 80A9CBE8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0069C 80A9CBEC 91EF7491 */  lbu     $t7, 0x7491($t7)           ## 80127491
/* 006A0 80A9CBF0 24010034 */  addiu   $at, $zero, 0x0034         ## $at = 00000034
/* 006A4 80A9CBF4 006FC021 */  addu    $t8, $v1, $t7              
/* 006A8 80A9CBF8 93190074 */  lbu     $t9, 0x0074($t8)           ## 00000074
/* 006AC 80A9CBFC 57210012 */  bnel    $t9, $at, .L80A9CC48       
/* 006B0 80A9CC00 A0A00209 */  sb      $zero, 0x0209($a1)         ## 00000209
/* 006B4 80A9CC04 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 006B8 80A9CC08 0C00BCDA */  jal     func_8002F368              
/* 006BC 80A9CC0C AFA80024 */  sw      $t0, 0x0024($sp)           
/* 006C0 80A9CC10 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 006C4 80A9CC14 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 006C8 80A9CC18 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 006CC 80A9CC1C 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 006D0 80A9CC20 14410008 */  bne     $v0, $at, .L80A9CC44       
/* 006D4 80A9CC24 8FA80024 */  lw      $t0, 0x0024($sp)           
/* 006D8 80A9CC28 240A4014 */  addiu   $t2, $zero, 0x4014         ## $t2 = 00004014
/* 006DC 80A9CC2C A4AA010E */  sh      $t2, 0x010E($a1)           ## 0000010E
/* 006E0 80A9CC30 A0A00208 */  sb      $zero, 0x0208($a1)         ## 00000208
/* 006E4 80A9CC34 A50A010E */  sh      $t2, 0x010E($t0)           ## 0000010E
/* 006E8 80A9CC38 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 006EC 80A9CC3C 10000022 */  beq     $zero, $zero, .L80A9CCC8   
/* 006F0 80A9CC40 A0AB0209 */  sb      $t3, 0x0209($a1)           ## 00000209
.L80A9CC44:
/* 006F4 80A9CC44 A0A00209 */  sb      $zero, 0x0209($a1)         ## 00000209
.L80A9CC48:
/* 006F8 80A9CC48 946C0F1E */  lhu     $t4, 0x0F1E($v1)           ## 8015F57E
/* 006FC 80A9CC4C 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00700 80A9CC50 3C0B8012 */  lui     $t3, 0x8012                ## $t3 = 80120000
/* 00704 80A9CC54 318D0200 */  andi    $t5, $t4, 0x0200           ## $t5 = 00000000
/* 00708 80A9CC58 11A0000E */  beq     $t5, $zero, .L80A9CC94     
/* 0070C 80A9CC5C 3C0C8012 */  lui     $t4, 0x8012                ## $t4 = 80120000
/* 00710 80A9CC60 8DCE7140 */  lw      $t6, 0x7140($t6)           ## 80127140
/* 00714 80A9CC64 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 00718 80A9CC68 2409401A */  addiu   $t1, $zero, 0x401A         ## $t1 = 0000401A
/* 0071C 80A9CC6C 24194045 */  addiu   $t9, $zero, 0x4045         ## $t9 = 00004045
/* 00720 80A9CC70 01CFC024 */  and     $t8, $t6, $t7              
/* 00724 80A9CC74 53000004 */  beql    $t8, $zero, .L80A9CC88     
/* 00728 80A9CC78 A4A9010E */  sh      $t1, 0x010E($a1)           ## 0000010E
/* 0072C 80A9CC7C 10000002 */  beq     $zero, $zero, .L80A9CC88   
/* 00730 80A9CC80 A4B9010E */  sh      $t9, 0x010E($a1)           ## 0000010E
/* 00734 80A9CC84 A4A9010E */  sh      $t1, 0x010E($a1)           ## 0000010E
.L80A9CC88:
/* 00738 80A9CC88 94AA010E */  lhu     $t2, 0x010E($a1)           ## 0000010E
/* 0073C 80A9CC8C 1000000E */  beq     $zero, $zero, .L80A9CCC8   
/* 00740 80A9CC90 A50A010E */  sh      $t2, 0x010E($t0)           ## 0000010E
.L80A9CC94:
/* 00744 80A9CC94 8D6B7128 */  lw      $t3, 0x7128($t3)           ## 80127128
/* 00748 80A9CC98 918C71F2 */  lbu     $t4, 0x71F2($t4)           ## 801271F2
/* 0074C 80A9CC9C 946E009C */  lhu     $t6, 0x009C($v1)           ## 8015E6FC
/* 00750 80A9CCA0 24194012 */  addiu   $t9, $zero, 0x4012         ## $t9 = 00004012
/* 00754 80A9CCA4 018B6804 */  sllv    $t5, $t3, $t4              
/* 00758 80A9CCA8 01AE7824 */  and     $t7, $t5, $t6              
/* 0075C 80A9CCAC 11E00003 */  beq     $t7, $zero, .L80A9CCBC     
/* 00760 80A9CCB0 2418401F */  addiu   $t8, $zero, 0x401F         ## $t8 = 0000401F
/* 00764 80A9CCB4 10000002 */  beq     $zero, $zero, .L80A9CCC0   
/* 00768 80A9CCB8 A4B8010E */  sh      $t8, 0x010E($a1)           ## 0000010E
.L80A9CCBC:
/* 0076C 80A9CCBC A4B9010E */  sh      $t9, 0x010E($a1)           ## 0000010E
.L80A9CCC0:
/* 00770 80A9CCC0 94A9010E */  lhu     $t1, 0x010E($a1)           ## 0000010E
/* 00774 80A9CCC4 A509010E */  sh      $t1, 0x010E($t0)           ## 0000010E
.L80A9CCC8:
/* 00778 80A9CCC8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A9CCCC:
/* 0077C 80A9CCCC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00780 80A9CCD0 03E00008 */  jr      $ra                        
/* 00784 80A9CCD4 00000000 */  nop


