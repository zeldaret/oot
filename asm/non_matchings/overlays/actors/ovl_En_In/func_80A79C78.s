glabel func_80A79C78
/* 00CC8 80A79C78 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00CCC 80A79C7C 3C0F80A8 */  lui     $t7, %hi(D_80A7B990)       ## $t7 = 80A80000
/* 00CD0 80A79C80 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00CD4 80A79C84 AFB20020 */  sw      $s2, 0x0020($sp)           
/* 00CD8 80A79C88 AFB1001C */  sw      $s1, 0x001C($sp)           
/* 00CDC 80A79C8C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00CE0 80A79C90 25EFB990 */  addiu   $t7, $t7, %lo(D_80A7B990)  ## $t7 = 80A7B990
/* 00CE4 80A79C94 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A7B990
/* 00CE8 80A79C98 8CB11C44 */  lw      $s1, 0x1C44($a1)           ## 00001C44
/* 00CEC 80A79C9C 27AE0034 */  addiu   $t6, $sp, 0x0034           ## $t6 = FFFFFFDC
/* 00CF0 80A79CA0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFDC
/* 00CF4 80A79CA4 95F90004 */  lhu     $t9, 0x0004($t7)           ## 80A7B994
/* 00CF8 80A79CA8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00CFC 80A79CAC 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 00D00 80A79CB0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D04 80A79CB4 0C03008C */  jal     Gameplay_CreateSubCamera              
/* 00D08 80A79CB8 A5D90004 */  sh      $t9, 0x0004($t6)           ## FFFFFFE0
/* 00D0C 80A79CBC A60201F0 */  sh      $v0, 0x01F0($s0)           ## 000001F0
/* 00D10 80A79CC0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00D14 80A79CC4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00D18 80A79CC8 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00D1C 80A79CCC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D20 80A79CD0 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00D24 80A79CD4 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
/* 00D28 80A79CD8 0C0300C5 */  jal     Gameplay_ChangeCameraStatus              
/* 00D2C 80A79CDC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00D30 80A79CE0 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00D34 80A79CE4 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 00D38 80A79CE8 44814000 */  mtc1    $at, $f8                   ## $f8 = 60.00
/* 00D3C 80A79CEC E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 00D40 80A79CF0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00D44 80A79CF4 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00D48 80A79CF8 C7B20048 */  lwc1    $f18, 0x0048($sp)          
/* 00D4C 80A79CFC 46083280 */  add.s   $f10, $f6, $f8             
/* 00D50 80A79D00 44813000 */  mtc1    $at, $f6                   ## $f6 = 22.00
/* 00D54 80A79D04 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00D58 80A79D08 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00D5C 80A79D0C E7AA004C */  swc1    $f10, 0x004C($sp)          
/* 00D60 80A79D10 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00D64 80A79D14 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 00D68 80A79D18 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00D6C 80A79D1C E7B00050 */  swc1    $f16, 0x0050($sp)          
/* 00D70 80A79D20 C7AA0050 */  lwc1    $f10, 0x0050($sp)          
/* 00D74 80A79D24 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00D78 80A79D28 46062201 */  sub.s   $f8, $f4, $f6              
/* 00D7C 80A79D2C 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFF0
/* 00D80 80A79D30 27A7003C */  addiu   $a3, $sp, 0x003C           ## $a3 = FFFFFFE4
/* 00D84 80A79D34 46105480 */  add.s   $f18, $f10, $f16           
/* 00D88 80A79D38 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00D8C 80A79D3C E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 00D90 80A79D40 0C030136 */  jal     Gameplay_CameraSetAtEye              
/* 00D94 80A79D44 860501F0 */  lh      $a1, 0x01F0($s0)           ## 000001F0
/* 00D98 80A79D48 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00D9C 80A79D4C AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00DA0 80A79D50 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00DA4 80A79D54 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFE4
/* 00DA8 80A79D58 27A30034 */  addiu   $v1, $sp, 0x0034           ## $v1 = FFFFFFDC
/* 00DAC 80A79D5C A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00DB0 80A79D60 8C690000 */  lw      $t1, 0x0000($v1)           ## FFFFFFDC
/* 00DB4 80A79D64 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00DB8 80A79D68 24052025 */  addiu   $a1, $zero, 0x2025         ## $a1 = 00002025
/* 00DBC 80A79D6C AA090310 */  swl     $t1, 0x0310($s0)           ## 00000310
/* 00DC0 80A79D70 BA090313 */  swr     $t1, 0x0313($s0)           ## 00000313
/* 00DC4 80A79D74 94690004 */  lhu     $t1, 0x0004($v1)           ## FFFFFFE0
/* 00DC8 80A79D78 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00DCC 80A79D7C A6090314 */  sh      $t1, 0x0314($s0)           ## 00000314
/* 00DD0 80A79D80 8C6B0000 */  lw      $t3, 0x0000($v1)           ## FFFFFFDC
/* 00DD4 80A79D84 AA0B0316 */  swl     $t3, 0x0316($s0)           ## 00000316
/* 00DD8 80A79D88 BA0B0319 */  swr     $t3, 0x0319($s0)           ## 00000319
/* 00DDC 80A79D8C 946B0004 */  lhu     $t3, 0x0004($v1)           ## FFFFFFE0
/* 00DE0 80A79D90 0C042DA0 */  jal     func_8010B680              
/* 00DE4 80A79D94 A60B031A */  sh      $t3, 0x031A($s0)           ## 0000031A
/* 00DE8 80A79D98 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00DEC 80A79D9C A60C0308 */  sh      $t4, 0x0308($s0)           ## 00000308
/* 00DF0 80A79DA0 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 00DF4 80A79DA4 26320024 */  addiu   $s2, $s1, 0x0024           ## $s2 = 00000024
/* 00DF8 80A79DA8 8DAF0000 */  lw      $t7, 0x0000($t5)           ## 00000000
/* 00DFC 80A79DAC AE4F0000 */  sw      $t7, 0x0000($s2)           ## 00000024
/* 00E00 80A79DB0 8DAE0004 */  lw      $t6, 0x0004($t5)           ## 00000004
/* 00E04 80A79DB4 AE4E0004 */  sw      $t6, 0x0004($s2)           ## 00000028
/* 00E08 80A79DB8 8DAF0008 */  lw      $t7, 0x0008($t5)           ## 00000008
/* 00E0C 80A79DBC AE4F0008 */  sw      $t7, 0x0008($s2)           ## 0000002C
/* 00E10 80A79DC0 0C01DE1C */  jal     Math_SinS
              ## sins?
/* 00E14 80A79DC4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00E18 80A79DC8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00E1C 80A79DCC 44813000 */  mtc1    $at, $f6                   ## $f6 = 100.00
/* 00E20 80A79DD0 C6240024 */  lwc1    $f4, 0x0024($s1)           ## 00000024
/* 00E24 80A79DD4 46003202 */  mul.s   $f8, $f6, $f0              
/* 00E28 80A79DD8 46082280 */  add.s   $f10, $f4, $f8             
/* 00E2C 80A79DDC E62A0024 */  swc1    $f10, 0x0024($s1)          ## 00000024
/* 00E30 80A79DE0 0C01DE0D */  jal     Math_CosS
              ## coss?
/* 00E34 80A79DE4 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00E38 80A79DE8 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00E3C 80A79DEC 44819000 */  mtc1    $at, $f18                  ## $f18 = 100.00
/* 00E40 80A79DF0 C630002C */  lwc1    $f16, 0x002C($s1)          ## 0000002C
/* 00E44 80A79DF4 8E220440 */  lw      $v0, 0x0440($s1)           ## 00000440
/* 00E48 80A79DF8 46009182 */  mul.s   $f6, $f18, $f0             
/* 00E4C 80A79DFC 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00E50 80A79E00 46068100 */  add.s   $f4, $f16, $f6             
/* 00E54 80A79E04 1040000A */  beq     $v0, $zero, .L80A79E30     
/* 00E58 80A79E08 E624002C */  swc1    $f4, 0x002C($s1)           ## 0000002C
/* 00E5C 80A79E0C 8E590000 */  lw      $t9, 0x0000($s2)           ## 00000024
/* 00E60 80A79E10 2408000A */  addiu   $t0, $zero, 0x000A         ## $t0 = 0000000A
/* 00E64 80A79E14 AC590024 */  sw      $t9, 0x0024($v0)           ## 00000024
/* 00E68 80A79E18 8E580004 */  lw      $t8, 0x0004($s2)           ## 00000028
/* 00E6C 80A79E1C AC580028 */  sw      $t8, 0x0028($v0)           ## 00000028
/* 00E70 80A79E20 8E590008 */  lw      $t9, 0x0008($s2)           ## 0000002C
/* 00E74 80A79E24 AC59002C */  sw      $t9, 0x002C($v0)           ## 0000002C
/* 00E78 80A79E28 8E290440 */  lw      $t1, 0x0440($s1)           ## 00000440
/* 00E7C 80A79E2C A5280110 */  sh      $t0, 0x0110($t1)           ## 00000110
.L80A79E30:
/* 00E80 80A79E30 A62A0110 */  sh      $t2, 0x0110($s1)           ## 00000110
/* 00E84 80A79E34 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00E88 80A79E38 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00E8C 80A79E3C 24040020 */  addiu   $a0, $zero, 0x0020         ## $a0 = 00000020
/* 00E90 80A79E40 01616024 */  and     $t4, $t3, $at              
/* 00E94 80A79E44 0C02CE10 */  jal     ShrinkWindow_SetVal              ## letterbox_target_addr
/* 00E98 80A79E48 AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
/* 00E9C 80A79E4C 0C020978 */  jal     Interface_ChangeAlpha              
/* 00EA0 80A79E50 24040002 */  addiu   $a0, $zero, 0x0002         ## $a0 = 00000002
/* 00EA4 80A79E54 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EA8 80A79E58 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00EAC 80A79E5C 8FB1001C */  lw      $s1, 0x001C($sp)           
/* 00EB0 80A79E60 8FB20020 */  lw      $s2, 0x0020($sp)           
/* 00EB4 80A79E64 03E00008 */  jr      $ra                        
/* 00EB8 80A79E68 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
