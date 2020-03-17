glabel func_80A7ABD4
/* 01C24 80A7ABD4 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 01C28 80A7ABD8 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01C2C 80A7ABDC AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01C30 80A7ABE0 F7B40020 */  sdc1    $f20, 0x0020($sp)          
/* 01C34 80A7ABE4 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 01C38 80A7ABE8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 01C3C 80A7ABEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C40 80A7ABF0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 01C44 80A7ABF4 8C430440 */  lw      $v1, 0x0440($v0)           ## 00000440
/* 01C48 80A7ABF8 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01C4C 80A7ABFC 50600003 */  beql    $v1, $zero, .L80A7AC0C     
/* 01C50 80A7AC00 A4580110 */  sh      $t8, 0x0110($v0)           ## 00000110
/* 01C54 80A7AC04 A46F0110 */  sh      $t7, 0x0110($v1)           ## 00000110
/* 01C58 80A7AC08 A4580110 */  sh      $t8, 0x0110($v0)           ## 00000110
.L80A7AC0C:
/* 01C5C 80A7AC0C 9619010E */  lhu     $t9, 0x010E($s0)           ## 0000010E
/* 01C60 80A7AC10 2401203B */  addiu   $at, $zero, 0x203B         ## $at = 0000203B
/* 01C64 80A7AC14 5721000C */  bnel    $t9, $at, .L80A7AC48       
/* 01C68 80A7AC18 86020308 */  lh      $v0, 0x0308($s0)           ## 00000308
/* 01C6C 80A7AC1C 860201EC */  lh      $v0, 0x01EC($s0)           ## 000001EC
/* 01C70 80A7AC20 10400008 */  beq     $v0, $zero, .L80A7AC44     
/* 01C74 80A7AC24 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 01C78 80A7AC28 A60801EC */  sh      $t0, 0x01EC($s0)           ## 000001EC
/* 01C7C 80A7AC2C 860901EC */  lh      $t1, 0x01EC($s0)           ## 000001EC
/* 01C80 80A7AC30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C84 80A7AC34 55200004 */  bnel    $t1, $zero, .L80A7AC48     
/* 01C88 80A7AC38 86020308 */  lh      $v0, 0x0308($s0)           ## 00000308
/* 01C8C 80A7AC3C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01C90 80A7AC40 24056855 */  addiu   $a1, $zero, 0x6855         ## $a1 = 00006855
.L80A7AC44:
/* 01C94 80A7AC44 86020308 */  lh      $v0, 0x0308($s0)           ## 00000308
.L80A7AC48:
/* 01C98 80A7AC48 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01C9C 80A7AC4C 8FAF005C */  lw      $t7, 0x005C($sp)           
/* 01CA0 80A7AC50 5040001B */  beql    $v0, $zero, .L80A7ACC0     
/* 01CA4 80A7AC54 95E21D74 */  lhu     $v0, 0x1D74($t7)           ## 00001D74
/* 01CA8 80A7AC58 54410086 */  bnel    $v0, $at, .L80A7AE74       
/* 01CAC 80A7AC5C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01CB0 80A7AC60 960A010E */  lhu     $t2, 0x010E($s0)           ## 0000010E
/* 01CB4 80A7AC64 2401203B */  addiu   $at, $zero, 0x203B         ## $at = 0000203B
/* 01CB8 80A7AC68 240B203C */  addiu   $t3, $zero, 0x203C         ## $t3 = 0000203C
/* 01CBC 80A7AC6C 1541000D */  bne     $t2, $at, .L80A7ACA4       
/* 01CC0 80A7AC70 8FAE005C */  lw      $t6, 0x005C($sp)           
/* 01CC4 80A7AC74 A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 01CC8 80A7AC78 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01CCC 80A7AC7C 3165FFFF */  andi    $a1, $t3, 0xFFFF           ## $a1 = 0000203C
/* 01CD0 80A7AC80 0C042DA0 */  jal     func_8010B680              
/* 01CD4 80A7AC84 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01CD8 80A7AC88 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 01CDC 80A7AC8C A60C0308 */  sh      $t4, 0x0308($s0)           ## 00000308
/* 01CE0 80A7AC90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CE4 80A7AC94 0C29E5BB */  jal     func_80A796EC              
/* 01CE8 80A7AC98 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01CEC 80A7AC9C 10000075 */  beq     $zero, $zero, .L80A7AE74   
/* 01CF0 80A7ACA0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A7ACA4:
/* 01CF4 80A7ACA4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01CF8 80A7ACA8 002E0821 */  addu    $at, $at, $t6              
/* 01CFC 80A7ACAC 240D0036 */  addiu   $t5, $zero, 0x0036         ## $t5 = 00000036
/* 01D00 80A7ACB0 A02D03DC */  sb      $t5, 0x03DC($at)           ## 000103DC
/* 01D04 80A7ACB4 1000006E */  beq     $zero, $zero, .L80A7AE70   
/* 01D08 80A7ACB8 A6000308 */  sh      $zero, 0x0308($s0)         ## 00000308
/* 01D0C 80A7ACBC 95E21D74 */  lhu     $v0, 0x1D74($t7)           ## 00001D74
.L80A7ACC0:
/* 01D10 80A7ACC0 3C1980A8 */  lui     $t9, %hi(func_80A7AE84)    ## $t9 = 80A80000
/* 01D14 80A7ACC4 2739AE84 */  addiu   $t9, $t9, %lo(func_80A7AE84) ## $t9 = 80A7AE84
/* 01D18 80A7ACC8 28430032 */  slti    $v1, $v0, 0x0032           
/* 01D1C 80A7ACCC 38630001 */  xori    $v1, $v1, 0x0001           ## $v1 = 00000001
/* 01D20 80A7ACD0 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 01D24 80A7ACD4 10600003 */  beq     $v1, $zero, .L80A7ACE4     
/* 01D28 80A7ACD8 A5F81D74 */  sh      $t8, 0x1D74($t7)           ## 00001D74
/* 01D2C 80A7ACDC 10000064 */  beq     $zero, $zero, .L80A7AE70   
/* 01D30 80A7ACE0 AE190190 */  sw      $t9, 0x0190($s0)           ## 00000190
.L80A7ACE4:
/* 01D34 80A7ACE4 8FA8005C */  lw      $t0, 0x005C($sp)           
/* 01D38 80A7ACE8 2401002C */  addiu   $at, $zero, 0x002C         ## $at = 0000002C
/* 01D3C 80A7ACEC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D40 80A7ACF0 95091D74 */  lhu     $t1, 0x1D74($t0)           ## 00001D74
/* 01D44 80A7ACF4 55210004 */  bnel    $t1, $at, .L80A7AD08       
/* 01D48 80A7ACF8 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 01D4C 80A7ACFC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01D50 80A7AD00 240528E6 */  addiu   $a1, $zero, 0x28E6         ## $a1 = 000028E6
/* 01D54 80A7AD04 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
.L80A7AD08:
/* 01D58 80A7AD08 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01D5C 80A7AD0C 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01D60 80A7AD10 4405A000 */  mfc1    $a1, $f20                  
/* 01D64 80A7AD14 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01D68 80A7AD18 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01D6C 80A7AD1C 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 01D70 80A7AD20 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01D74 80A7AD24 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01D78 80A7AD28 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01D7C 80A7AD2C 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01D80 80A7AD30 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01D84 80A7AD34 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01D88 80A7AD38 260402F4 */  addiu   $a0, $s0, 0x02F4           ## $a0 = 000002F4
/* 01D8C 80A7AD3C 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 01D90 80A7AD40 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01D94 80A7AD44 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01D98 80A7AD48 4405A000 */  mfc1    $a1, $f20                  
/* 01D9C 80A7AD4C 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01DA0 80A7AD50 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01DA4 80A7AD54 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01DA8 80A7AD58 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01DAC 80A7AD5C 260402F8 */  addiu   $a0, $s0, 0x02F8           ## $a0 = 000002F8
/* 01DB0 80A7AD60 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01DB4 80A7AD64 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01DB8 80A7AD68 4405A000 */  mfc1    $a1, $f20                  
/* 01DBC 80A7AD6C 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01DC0 80A7AD70 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01DC4 80A7AD74 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01DC8 80A7AD78 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01DCC 80A7AD7C 260402FC */  addiu   $a0, $s0, 0x02FC           ## $a0 = 000002FC
/* 01DD0 80A7AD80 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01DD4 80A7AD84 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01DD8 80A7AD88 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01DDC 80A7AD8C 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01DE0 80A7AD90 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01DE4 80A7AD94 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01DE8 80A7AD98 26040300 */  addiu   $a0, $s0, 0x0300           ## $a0 = 00000300
/* 01DEC 80A7AD9C 3C054316 */  lui     $a1, 0x4316                ## $a1 = 43160000
/* 01DF0 80A7ADA0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01DF4 80A7ADA4 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01DF8 80A7ADA8 3C063D75 */  lui     $a2, 0x3D75                ## $a2 = 3D750000
/* 01DFC 80A7ADAC 3C07461C */  lui     $a3, 0x461C                ## $a3 = 461C0000
/* 01E00 80A7ADB0 34E74000 */  ori     $a3, $a3, 0x4000           ## $a3 = 461C4000
/* 01E04 80A7ADB4 34C6C28F */  ori     $a2, $a2, 0xC28F           ## $a2 = 3D75C28F
/* 01E08 80A7ADB8 26040304 */  addiu   $a0, $s0, 0x0304           ## $a0 = 00000304
/* 01E0C 80A7ADBC 3C054396 */  lui     $a1, 0x4396                ## $a1 = 43960000
/* 01E10 80A7ADC0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01E14 80A7ADC4 E7B40010 */  swc1    $f20, 0x0010($sp)          
/* 01E18 80A7ADC8 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 01E1C 80A7ADCC 8C4B0000 */  lw      $t3, 0x0000($v0)           ## 00000024
/* 01E20 80A7ADD0 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF0
/* 01E24 80A7ADD4 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFE4
/* 01E28 80A7ADD8 ACCB0000 */  sw      $t3, 0x0000($a2)           ## FFFFFFF0
/* 01E2C 80A7ADDC 8C4A0004 */  lw      $t2, 0x0004($v0)           ## 00000028
/* 01E30 80A7ADE0 ACCA0004 */  sw      $t2, 0x0004($a2)           ## FFFFFFF4
/* 01E34 80A7ADE4 8C4B0008 */  lw      $t3, 0x0008($v0)           ## 0000002C
/* 01E38 80A7ADE8 ACCB0008 */  sw      $t3, 0x0008($a2)           ## FFFFFFF8
/* 01E3C 80A7ADEC 8C4D0000 */  lw      $t5, 0x0000($v0)           ## 00000024
/* 01E40 80A7ADF0 ACED0000 */  sw      $t5, 0x0000($a3)           ## FFFFFFE4
/* 01E44 80A7ADF4 8C4C0004 */  lw      $t4, 0x0004($v0)           ## 00000028
/* 01E48 80A7ADF8 ACEC0004 */  sw      $t4, 0x0004($a3)           ## FFFFFFE8
/* 01E4C 80A7ADFC 8C4D0008 */  lw      $t5, 0x0008($v0)           ## 0000002C
/* 01E50 80A7AE00 ACED0008 */  sw      $t5, 0x0008($a3)           ## FFFFFFEC
/* 01E54 80A7AE04 C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 01E58 80A7AE08 C60602F0 */  lwc1    $f6, 0x02F0($s0)           ## 000002F0
/* 01E5C 80A7AE0C C7AA004C */  lwc1    $f10, 0x004C($sp)          
/* 01E60 80A7AE10 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01E64 80A7AE14 46062200 */  add.s   $f8, $f4, $f6              
/* 01E68 80A7AE18 C7A40050 */  lwc1    $f4, 0x0050($sp)           
/* 01E6C 80A7AE1C E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 01E70 80A7AE20 C61002F4 */  lwc1    $f16, 0x02F4($s0)          ## 000002F4
/* 01E74 80A7AE24 46105480 */  add.s   $f18, $f10, $f16           
/* 01E78 80A7AE28 C7AA003C */  lwc1    $f10, 0x003C($sp)          
/* 01E7C 80A7AE2C E7B2004C */  swc1    $f18, 0x004C($sp)          
/* 01E80 80A7AE30 C60602F8 */  lwc1    $f6, 0x02F8($s0)           ## 000002F8
/* 01E84 80A7AE34 46062200 */  add.s   $f8, $f4, $f6              
/* 01E88 80A7AE38 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01E8C 80A7AE3C E7A80050 */  swc1    $f8, 0x0050($sp)           
/* 01E90 80A7AE40 C61002FC */  lwc1    $f16, 0x02FC($s0)          ## 000002FC
/* 01E94 80A7AE44 46105480 */  add.s   $f18, $f10, $f16           
/* 01E98 80A7AE48 C7AA0044 */  lwc1    $f10, 0x0044($sp)          
/* 01E9C 80A7AE4C E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 01EA0 80A7AE50 C6060300 */  lwc1    $f6, 0x0300($s0)           ## 00000300
/* 01EA4 80A7AE54 46062200 */  add.s   $f8, $f4, $f6              
/* 01EA8 80A7AE58 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 01EAC 80A7AE5C C6100304 */  lwc1    $f16, 0x0304($s0)          ## 00000304
/* 01EB0 80A7AE60 46105480 */  add.s   $f18, $f10, $f16           
/* 01EB4 80A7AE64 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 01EB8 80A7AE68 0C030136 */  jal     func_800C04D8              
/* 01EBC 80A7AE6C 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
.L80A7AE70:
/* 01EC0 80A7AE70 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A7AE74:
/* 01EC4 80A7AE74 D7B40020 */  ldc1    $f20, 0x0020($sp)          
/* 01EC8 80A7AE78 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01ECC 80A7AE7C 03E00008 */  jr      $ra                        
/* 01ED0 80A7AE80 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


