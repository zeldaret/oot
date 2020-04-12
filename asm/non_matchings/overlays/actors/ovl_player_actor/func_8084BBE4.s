.late_rodata
glabel D_80855518
    .float -0.8

glabel D_8085551C
    .float 0.8

.text
glabel func_8084BBE4
/* 199D4 8084BBE4 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 199D8 8084BBE8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 199DC 8084BBEC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 199E0 8084BBF0 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 199E4 8084BBF4 8C8E0680 */  lw      $t6, 0x0680($a0)           ## 00000680
/* 199E8 8084BBF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 199EC 8084BBFC 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 199F0 8084BC00 35CF0040 */  ori     $t7, $t6, 0x0040           ## $t7 = 00000040
/* 199F4 8084BC04 AC8F0680 */  sw      $t7, 0x0680($a0)           ## 00000680
/* 199F8 8084BC08 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 199FC 8084BC0C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 19A00 8084BC10 0C028EF0 */  jal     func_800A3BC0              
/* 19A04 8084BC14 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B4
/* 19A08 8084BC18 10400011 */  beq     $v0, $zero, .L8084BC60     
/* 19A0C 8084BC1C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 19A10 8084BC20 8218084F */  lb      $t8, 0x084F($s0)           ## 0000084F
/* 19A14 8084BC24 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 19A18 8084BC28 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 19A1C 8084BC2C 1B000003 */  blez    $t8, .L8084BC3C            
/* 19A20 8084BC30 3C070400 */  lui     $a3, 0x0400                ## $a3 = 04000000
/* 19A24 8084BC34 10000006 */  beq     $zero, $zero, .L8084BC50   
/* 19A28 8084BC38 24E72F28 */  addiu   $a3, $a3, 0x2F28           ## $a3 = 04002F28
.L8084BC3C:
/* 19A2C 8084BC3C 9219015B */  lbu     $t9, 0x015B($s0)           ## 0000015B
/* 19A30 8084BC40 3C078085 */  lui     $a3, %hi(D_80853CD4)       ## $a3 = 80850000
/* 19A34 8084BC44 00194080 */  sll     $t0, $t9,  2               
/* 19A38 8084BC48 00E83821 */  addu    $a3, $a3, $t0              
/* 19A3C 8084BC4C 8CE73CD4 */  lw      $a3, %lo(D_80853CD4)($a3)  
.L8084BC50:
/* 19A40 8084BC50 0C20C8A1 */  jal     func_80832284              
/* 19A44 8084BC54 00E03025 */  or      $a2, $a3, $zero            ## $a2 = 80850000
/* 19A48 8084BC58 10000020 */  beq     $zero, $zero, .L8084BCDC   
/* 19A4C 8084BC5C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L8084BC60:
/* 19A50 8084BC60 8209084F */  lb      $t1, 0x084F($s0)           ## 0000084F
/* 19A54 8084BC64 5520001D */  bnel    $t1, $zero, .L8084BCDC     
/* 19A58 8084BC68 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 19A5C 8084BC6C 8E0B01BC */  lw      $t3, 0x01BC($s0)           ## 000001BC
/* 19A60 8084BC70 3C0A0400 */  lui     $t2, 0x0400                ## $t2 = 04000000
/* 19A64 8084BC74 254A2F10 */  addiu   $t2, $t2, 0x2F10           ## $t2 = 04002F10
/* 19A68 8084BC78 154B0005 */  bne     $t2, $t3, .L8084BC90       
/* 19A6C 8084BC7C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 19A70 8084BC80 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 19A74 8084BC84 44810000 */  mtc1    $at, $f0                   ## $f0 = 11.00
/* 19A78 8084BC88 10000004 */  beq     $zero, $zero, .L8084BC9C   
/* 19A7C 8084BC8C 44050000 */  mfc1    $a1, $f0                   
.L8084BC90:
/* 19A80 8084BC90 44810000 */  mtc1    $at, $f0                   ## $f0 = 11.00
/* 19A84 8084BC94 00000000 */  nop
/* 19A88 8084BC98 44050000 */  mfc1    $a1, $f0                   
.L8084BC9C:
/* 19A8C 8084BC9C 0C02914C */  jal     func_800A4530              
/* 19A90 8084BCA0 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 19A94 8084BCA4 1040000C */  beq     $v0, $zero, .L8084BCD8     
/* 19A98 8084BCA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19A9C 8084BCAC 0C20C9DC */  jal     func_80832770              
/* 19AA0 8084BCB0 24050800 */  addiu   $a1, $zero, 0x0800         ## $a1 = 00000800
/* 19AA4 8084BCB4 8E0D01BC */  lw      $t5, 0x01BC($s0)           ## 000001BC
/* 19AA8 8084BCB8 3C0C0400 */  lui     $t4, 0x0400                ## $t4 = 04000000
/* 19AAC 8084BCBC 258C2F10 */  addiu   $t4, $t4, 0x2F10           ## $t4 = 04002F10
/* 19AB0 8084BCC0 158D0004 */  bne     $t4, $t5, .L8084BCD4       
/* 19AB4 8084BCC4 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 19AB8 8084BCC8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 19ABC 8084BCCC 10000002 */  beq     $zero, $zero, .L8084BCD8   
/* 19AC0 8084BCD0 A20E084F */  sb      $t6, 0x084F($s0)           ## 0000084F
.L8084BCD4:
/* 19AC4 8084BCD4 A20F084F */  sb      $t7, 0x084F($s0)           ## 0000084F
.L8084BCD8:
/* 19AC8 8084BCD8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
.L8084BCDC:
/* 19ACC 8084BCDC 8605083C */  lh      $a1, 0x083C($s0)           ## 0000083C
/* 19AD0 8084BCE0 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 19AD4 8084BCE4 24060800 */  addiu   $a2, $zero, 0x0800         ## $a2 = 00000800
/* 19AD8 8084BCE8 8218084F */  lb      $t8, 0x084F($s0)           ## 0000084F
/* 19ADC 8084BCEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19AE0 8084BCF0 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 19AE4 8084BCF4 1300003C */  beq     $t8, $zero, .L8084BDE8     
/* 19AE8 8084BCF8 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = FFFFFFFA
/* 19AEC 8084BCFC 8FB90044 */  lw      $t9, 0x0044($sp)           
/* 19AF0 8084BD00 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 19AF4 8084BD04 0C20DC9A */  jal     func_80837268              
/* 19AF8 8084BD08 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 19AFC 8084BD0C 92080846 */  lbu     $t0, 0x0846($s0)           ## 00000846
/* 19B00 8084BD10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19B04 8084BD14 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 19B08 8084BD18 02084821 */  addu    $t1, $s0, $t0              
/* 19B0C 8084BD1C 812A0847 */  lb      $t2, 0x0847($t1)           ## 00000847
/* 19B10 8084BD20 3C188086 */  lui     $t8, %hi(D_80858AB4)       ## $t8 = 80860000
/* 19B14 8084BD24 05400013 */  bltz    $t2, .L8084BD74            
/* 19B18 8084BD28 00000000 */  nop
/* 19B1C 8084BD2C 820B084F */  lb      $t3, 0x084F($s0)           ## 0000084F
/* 19B20 8084BD30 59600008 */  blezl   $t3, .L8084BD54            
/* 19B24 8084BD34 920E015B */  lbu     $t6, 0x015B($s0)           ## 0000015B
/* 19B28 8084BD38 920C015B */  lbu     $t4, 0x015B($s0)           ## 0000015B
/* 19B2C 8084BD3C 3C078085 */  lui     $a3, %hi(D_80853CA4)       ## $a3 = 80850000
/* 19B30 8084BD40 000C6880 */  sll     $t5, $t4,  2               
/* 19B34 8084BD44 00ED3821 */  addu    $a3, $a3, $t5              
/* 19B38 8084BD48 10000006 */  beq     $zero, $zero, .L8084BD64   
/* 19B3C 8084BD4C 8CE73CA4 */  lw      $a3, %lo(D_80853CA4)($a3)  
/* 19B40 8084BD50 920E015B */  lbu     $t6, 0x015B($s0)           ## 0000015B
.L8084BD54:
/* 19B44 8084BD54 3C078085 */  lui     $a3, %hi(D_80853CEC)       ## $a3 = 80850000
/* 19B48 8084BD58 000E7880 */  sll     $t7, $t6,  2               
/* 19B4C 8084BD5C 00EF3821 */  addu    $a3, $a3, $t7              
/* 19B50 8084BD60 8CE73CEC */  lw      $a3, %lo(D_80853CEC)($a3)  
.L8084BD64:
/* 19B54 8084BD64 0C20EA6E */  jal     func_8083A9B8              
/* 19B58 8084BD68 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 80850000
/* 19B5C 8084BD6C 1000001F */  beq     $zero, $zero, .L8084BDEC   
/* 19B60 8084BD70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084BD74:
/* 19B64 8084BD74 8F188AB4 */  lw      $t8, %lo(D_80858AB4)($t8)  
/* 19B68 8084BD78 3C01FFFF */  lui     $at, 0xFFFF                ## $at = FFFF0000
/* 19B6C 8084BD7C 34217FFF */  ori     $at, $at, 0x7FFF           ## $at = FFFF7FFF
/* 19B70 8084BD80 97190000 */  lhu     $t9, 0x0000($t8)           ## 00000000
/* 19B74 8084BD84 03214027 */  nor     $t0, $t9, $at              
/* 19B78 8084BD88 11000004 */  beq     $t0, $zero, .L8084BD9C     
/* 19B7C 8084BD8C 00000000 */  nop
/* 19B80 8084BD90 920900C9 */  lbu     $t1, 0x00C9($s0)           ## 000000C9
/* 19B84 8084BD94 51200015 */  beql    $t1, $zero, .L8084BDEC     
/* 19B88 8084BD98 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084BD9C:
/* 19B8C 8084BD9C 0C20DED8 */  jal     func_80837B60              
/* 19B90 8084BDA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19B94 8084BDA4 820A084F */  lb      $t2, 0x084F($s0)           ## 0000084F
/* 19B98 8084BDA8 3C018085 */  lui     $at, %hi(D_8085551C)       ## $at = 80850000
/* 19B9C 8084BDAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 19BA0 8084BDB0 05410005 */  bgez    $t2, .L8084BDC8            
/* 19BA4 8084BDB4 00000000 */  nop
/* 19BA8 8084BDB8 3C018085 */  lui     $at, %hi(D_80855518)       ## $at = 80850000
/* 19BAC 8084BDBC C4245518 */  lwc1    $f4, %lo(D_80855518)($at)  
/* 19BB0 8084BDC0 10000003 */  beq     $zero, $zero, .L8084BDD0   
/* 19BB4 8084BDC4 E6040838 */  swc1    $f4, 0x0838($s0)           ## 00000838
.L8084BDC8:
/* 19BB8 8084BDC8 C426551C */  lwc1    $f6, %lo(D_8085551C)($at)  
/* 19BBC 8084BDCC E6060838 */  swc1    $f6, 0x0838($s0)           ## 00000838
.L8084BDD0:
/* 19BC0 8084BDD0 0C20DEE7 */  jal     func_80837B9C              
/* 19BC4 8084BDD4 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 19BC8 8084BDD8 8E0B067C */  lw      $t3, 0x067C($s0)           ## 0000067C
/* 19BCC 8084BDDC 24019FFF */  addiu   $at, $zero, 0x9FFF         ## $at = FFFF9FFF
/* 19BD0 8084BDE0 01616024 */  and     $t4, $t3, $at              
/* 19BD4 8084BDE4 AE0C067C */  sw      $t4, 0x067C($s0)           ## 0000067C
.L8084BDE8:
/* 19BD8 8084BDE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8084BDEC:
/* 19BDC 8084BDEC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 19BE0 8084BDF0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 19BE4 8084BDF4 03E00008 */  jr      $ra                        
/* 19BE8 8084BDF8 00000000 */  nop
