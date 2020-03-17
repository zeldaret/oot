glabel func_809B8B94
/* 008B4 809B8B94 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 008B8 809B8B98 240E0003 */  addiu   $t6, $zero, 0x0003         ## $t6 = 00000003
/* 008BC 809B8B9C 3C18809C */  lui     $t8, %hi(D_809BBB38)       ## $t8 = 809C0000
/* 008C0 809B8BA0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 008C4 809B8BA4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 008C8 809B8BA8 AFA50054 */  sw      $a1, 0x0054($sp)           
/* 008CC 809B8BAC A7AE004E */  sh      $t6, 0x004E($sp)           
/* 008D0 809B8BB0 2718BB38 */  addiu   $t8, $t8, %lo(D_809BBB38)  ## $t8 = 809BBB38
/* 008D4 809B8BB4 8F080000 */  lw      $t0, 0x0000($t8)           ## 809BBB38
/* 008D8 809B8BB8 27AF0040 */  addiu   $t7, $sp, 0x0040           ## $t7 = FFFFFFF0
/* 008DC 809B8BBC 8F190004 */  lw      $t9, 0x0004($t8)           ## 809BBB3C
/* 008E0 809B8BC0 ADE80000 */  sw      $t0, 0x0000($t7)           ## FFFFFFF0
/* 008E4 809B8BC4 8F080008 */  lw      $t0, 0x0008($t8)           ## 809BBB40
/* 008E8 809B8BC8 3C0A809C */  lui     $t2, %hi(D_809BBB44)       ## $t2 = 809C0000
/* 008EC 809B8BCC 254ABB44 */  addiu   $t2, $t2, %lo(D_809BBB44)  ## $t2 = 809BBB44
/* 008F0 809B8BD0 ADF90004 */  sw      $t9, 0x0004($t7)           ## FFFFFFF4
/* 008F4 809B8BD4 ADE80008 */  sw      $t0, 0x0008($t7)           ## FFFFFFF8
/* 008F8 809B8BD8 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 809BBB44
/* 008FC 809B8BDC 27A90034 */  addiu   $t1, $sp, 0x0034           ## $t1 = FFFFFFE4
/* 00900 809B8BE0 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 809BBB48
/* 00904 809B8BE4 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFE4
/* 00908 809B8BE8 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 809BBB4C
/* 0090C 809B8BEC AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFE8
/* 00910 809B8BF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00914 809B8BF4 AD2C0008 */  sw      $t4, 0x0008($t1)           ## FFFFFFEC
/* 00918 809B8BF8 848D001C */  lh      $t5, 0x001C($a0)           ## 0000001C
/* 0091C 809B8BFC 24840288 */  addiu   $a0, $a0, 0x0288           ## $a0 = 00000288
/* 00920 809B8C00 05A30033 */  bgezl   $t5, .L809B8CD0            
/* 00924 809B8C04 9202029F */  lbu     $v0, 0x029F($s0)           ## 0000029F
/* 00928 809B8C08 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0092C 809B8C0C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00930 809B8C10 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00934 809B8C14 44050000 */  mfc1    $a1, $f0                   
/* 00938 809B8C18 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 0093C 809B8C1C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00940 809B8C20 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00944 809B8C24 2604028C */  addiu   $a0, $s0, 0x028C           ## $a0 = 0000028C
/* 00948 809B8C28 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 0094C 809B8C2C 44050000 */  mfc1    $a1, $f0                   
/* 00950 809B8C30 3C0741F0 */  lui     $a3, 0x41F0                ## $a3 = 41F00000
/* 00954 809B8C34 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00958 809B8C38 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0095C 809B8C3C 8E020260 */  lw      $v0, 0x0260($s0)           ## 00000260
/* 00960 809B8C40 50400008 */  beql    $v0, $zero, .L809B8C64     
/* 00964 809B8C44 8E19031C */  lw      $t9, 0x031C($s0)           ## 0000031C
/* 00968 809B8C48 860F00B4 */  lh      $t7, 0x00B4($s0)           ## 000000B4
/* 0096C 809B8C4C 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00970 809B8C50 AE0E0260 */  sw      $t6, 0x0260($s0)           ## 00000260
/* 00974 809B8C54 25F8B1E0 */  addiu   $t8, $t7, 0xB1E0           ## $t8 = FFFFB1E0
/* 00978 809B8C58 10000028 */  beq     $zero, $zero, .L809B8CFC   
/* 0097C 809B8C5C A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 00980 809B8C60 8E19031C */  lw      $t9, 0x031C($s0)           ## 0000031C
.L809B8C64:
/* 00984 809B8C64 2604030C */  addiu   $a0, $s0, 0x030C           ## $a0 = 0000030C
/* 00988 809B8C68 2405000C */  addiu   $a1, $zero, 0x000C         ## $a1 = 0000000C
/* 0098C 809B8C6C 57200004 */  bnel    $t9, $zero, .L809B8C80     
/* 00990 809B8C70 920202AA */  lbu     $v0, 0x02AA($s0)           ## 000002AA
/* 00994 809B8C74 0C00CB89 */  jal     func_80032E24              
/* 00998 809B8C78 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 0099C 809B8C7C 920202AA */  lbu     $v0, 0x02AA($s0)           ## 000002AA
.L809B8C80:
/* 009A0 809B8C80 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 009A4 809B8C84 2605030C */  addiu   $a1, $s0, 0x030C           ## $a1 = 0000030C
/* 009A8 809B8C88 10410003 */  beq     $v0, $at, .L809B8C98       
/* 009AC 809B8C8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 009B0 809B8C90 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 009B4 809B8C94 14410002 */  bne     $v0, $at, .L809B8CA0       
.L809B8C98:
/* 009B8 809B8C98 2408000B */  addiu   $t0, $zero, 0x000B         ## $t0 = 0000000B
/* 009BC 809B8C9C A7A8004E */  sh      $t0, 0x004E($sp)           
.L809B8CA0:
/* 009C0 809B8CA0 8FA60054 */  lw      $a2, 0x0054($sp)           
/* 009C4 809B8CA4 0C00CC17 */  jal     func_8003305C              
/* 009C8 809B8CA8 87A7004E */  lh      $a3, 0x004E($sp)           
/* 009CC 809B8CAC 10400013 */  beq     $v0, $zero, .L809B8CFC     
/* 009D0 809B8CB0 8FA40054 */  lw      $a0, 0x0054($sp)           
/* 009D4 809B8CB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 009D8 809B8CB8 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 009DC 809B8CBC 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 009E0 809B8CC0 240700D0 */  addiu   $a3, $zero, 0x00D0         ## $a3 = 000000D0
/* 009E4 809B8CC4 1000000B */  beq     $zero, $zero, .L809B8CF4   
/* 009E8 809B8CC8 00000000 */  nop
/* 009EC 809B8CCC 9202029F */  lbu     $v0, 0x029F($s0)           ## 0000029F
.L809B8CD0:
/* 009F0 809B8CD0 10400008 */  beq     $v0, $zero, .L809B8CF4     
/* 009F4 809B8CD4 28410015 */  slti    $at, $v0, 0x0015           
/* 009F8 809B8CD8 10200003 */  beq     $at, $zero, .L809B8CE8     
/* 009FC 809B8CDC 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00A00 809B8CE0 10000006 */  beq     $zero, $zero, .L809B8CFC   
/* 00A04 809B8CE4 A200029F */  sb      $zero, 0x029F($s0)         ## 0000029F
.L809B8CE8:
/* 00A08 809B8CE8 2469FFEC */  addiu   $t1, $v1, 0xFFEC           ## $t1 = FFFFFFEC
/* 00A0C 809B8CEC 10000003 */  beq     $zero, $zero, .L809B8CFC   
/* 00A10 809B8CF0 A209029F */  sb      $t1, 0x029F($s0)           ## 0000029F
.L809B8CF4:
/* 00A14 809B8CF4 0C00B55C */  jal     Actor_Kill
              
/* 00A18 809B8CF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809B8CFC:
/* 00A1C 809B8CFC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A20 809B8D00 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00A24 809B8D04 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00A28 809B8D08 03E00008 */  jr      $ra                        
/* 00A2C 809B8D0C 00000000 */  nop


