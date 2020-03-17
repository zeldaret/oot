glabel func_80A20AC0
/* 00D00 80A20AC0 27BDFF98 */  addiu   $sp, $sp, 0xFF98           ## $sp = FFFFFF98
/* 00D04 80A20AC4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00D08 80A20AC8 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00D0C 80A20ACC AFA5006C */  sw      $a1, 0x006C($sp)           
/* 00D10 80A20AD0 84820244 */  lh      $v0, 0x0244($a0)           ## 00000244
/* 00D14 80A20AD4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D18 80A20AD8 14400005 */  bne     $v0, $zero, .L80A20AF0     
/* 00D1C 80A20ADC 2841000B */  slti    $at, $v0, 0x000B           
/* 00D20 80A20AE0 0C2881D2 */  jal     func_80A20748              
/* 00D24 80A20AE4 00000000 */  nop
/* 00D28 80A20AE8 1000006C */  beq     $zero, $zero, .L80A20C9C   
/* 00D2C 80A20AEC 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A20AF0:
/* 00D30 80A20AF0 14200069 */  bne     $at, $zero, .L80A20C98     
/* 00D34 80A20AF4 240E0096 */  addiu   $t6, $zero, 0x0096         ## $t6 = 00000096
/* 00D38 80A20AF8 A3A00037 */  sb      $zero, 0x0037($sp)         
/* 00D3C 80A20AFC A7AE0034 */  sh      $t6, 0x0034($sp)           
/* 00D40 80A20B00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D44 80A20B04 0C00BE5D */  jal     func_8002F974              
/* 00D48 80A20B08 240531A4 */  addiu   $a1, $zero, 0x31A4         ## $a1 = 000031A4
/* 00D4C 80A20B0C 86020244 */  lh      $v0, 0x0244($s0)           ## 00000244
/* 00D50 80A20B10 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00D54 80A20B14 244FFFF6 */  addiu   $t7, $v0, 0xFFF6           ## $t7 = FFFFFFF6
/* 00D58 80A20B18 29E10010 */  slti    $at, $t7, 0x0010           
/* 00D5C 80A20B1C 10200005 */  beq     $at, $zero, .L80A20B34     
/* 00D60 80A20B20 0002C080 */  sll     $t8, $v0,  2               
/* 00D64 80A20B24 0302C021 */  addu    $t8, $t8, $v0              
/* 00D68 80A20B28 0018C040 */  sll     $t8, $t8,  1               
/* 00D6C 80A20B2C 2719FF9C */  addiu   $t9, $t8, 0xFF9C           ## $t9 = FFFFFF9C
/* 00D70 80A20B30 A7B90034 */  sh      $t9, 0x0034($sp)           
.L80A20B34:
/* 00D74 80A20B34 3C0180A2 */  lui     $at, %hi(D_80A21CD0)       ## $at = 80A20000
/* 00D78 80A20B38 C4241CD0 */  lwc1    $f4, %lo(D_80A21CD0)($at)  
/* 00D7C 80A20B3C E7A00040 */  swc1    $f0, 0x0040($sp)           
/* 00D80 80A20B40 E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 00D84 80A20B44 E7A4003C */  swc1    $f4, 0x003C($sp)           
/* 00D88 80A20B48 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00D8C 80A20B4C 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00D90 80A20B50 44815000 */  mtc1    $at, $f10                  ## $f10 = 20.00
/* 00D94 80A20B54 E7A60050 */  swc1    $f6, 0x0050($sp)           
/* 00D98 80A20B58 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00D9C 80A20B5C 3C014700 */  lui     $at, 0x4700                ## $at = 47000000
/* 00DA0 80A20B60 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DA4 80A20B64 460A4400 */  add.s   $f16, $f8, $f10            
/* 00DA8 80A20B68 44814000 */  mtc1    $at, $f8                   ## $f8 = 32768.00
/* 00DAC 80A20B6C 3C0180A2 */  lui     $at, %hi(D_80A21CD4)       ## $at = 80A20000
/* 00DB0 80A20B70 E7B00054 */  swc1    $f16, 0x0054($sp)          
/* 00DB4 80A20B74 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00DB8 80A20B78 C4301CD4 */  lwc1    $f16, %lo(D_80A21CD4)($at) 
/* 00DBC 80A20B7C E7B20058 */  swc1    $f18, 0x0058($sp)          
/* 00DC0 80A20B80 860800B6 */  lh      $t0, 0x00B6($s0)           ## 000000B6
/* 00DC4 80A20B84 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00DC8 80A20B88 00000000 */  nop
/* 00DCC 80A20B8C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00DD0 80A20B90 46083283 */  div.s   $f10, $f6, $f8             
/* 00DD4 80A20B94 46105302 */  mul.s   $f12, $f10, $f16           
/* 00DD8 80A20B98 0C034348 */  jal     Matrix_RotateY              
/* 00DDC 80A20B9C 00000000 */  nop
/* 00DE0 80A20BA0 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 00DE4 80A20BA4 44812000 */  mtc1    $at, $f4                   ## $f4 = -2.00
/* 00DE8 80A20BA8 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 00DEC 80A20BAC 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 00DF0 80A20BB0 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 00DF4 80A20BB4 27A4005C */  addiu   $a0, $sp, 0x005C           ## $a0 = FFFFFFF4
/* 00DF8 80A20BB8 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFDC
/* 00DFC 80A20BBC E7A40060 */  swc1    $f4, 0x0060($sp)           
/* 00E00 80A20BC0 E7B2005C */  swc1    $f18, 0x005C($sp)          
/* 00E04 80A20BC4 0C0346BD */  jal     Matrix_MultVec3f              
/* 00E08 80A20BC8 E7A60064 */  swc1    $f6, 0x0064($sp)           
/* 00E0C 80A20BCC 86090244 */  lh      $t1, 0x0244($s0)           ## 00000244
/* 00E10 80A20BD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E14 80A20BD4 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFE8
/* 00E18 80A20BD8 312A0007 */  andi    $t2, $t1, 0x0007           ## $t2 = 00000000
/* 00E1C 80A20BDC 15400003 */  bne     $t2, $zero, .L80A20BEC     
/* 00E20 80A20BE0 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFDC
/* 00E24 80A20BE4 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00E28 80A20BE8 A3AB0037 */  sb      $t3, 0x0037($sp)           
.L80A20BEC:
/* 00E2C 80A20BEC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00E30 80A20BF0 44814000 */  mtc1    $at, $f8                   ## $f8 = 2.00
/* 00E34 80A20BF4 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00E38 80A20BF8 44815000 */  mtc1    $at, $f10                  ## $f10 = 25.00
/* 00E3C 80A20BFC 87AC0034 */  lh      $t4, 0x0034($sp)           
/* 00E40 80A20C00 93AD0037 */  lbu     $t5, 0x0037($sp)           
/* 00E44 80A20C04 27A70038 */  addiu   $a3, $sp, 0x0038           ## $a3 = FFFFFFD0
/* 00E48 80A20C08 E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 00E4C 80A20C0C AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00E50 80A20C10 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 00E54 80A20C14 0C288540 */  jal     func_80A21500              
/* 00E58 80A20C18 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 00E5C 80A20C1C C7B20044 */  lwc1    $f18, 0x0044($sp)          
/* 00E60 80A20C20 C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 00E64 80A20C24 C7AE004C */  lwc1    $f14, 0x004C($sp)          
/* 00E68 80A20C28 C7AC0050 */  lwc1    $f12, 0x0050($sp)          
/* 00E6C 80A20C2C C7AA0054 */  lwc1    $f10, 0x0054($sp)          
/* 00E70 80A20C30 C7A80058 */  lwc1    $f8, 0x0058($sp)           
/* 00E74 80A20C34 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E78 80A20C38 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.50
/* 00E7C 80A20C3C 87AE0034 */  lh      $t6, 0x0034($sp)           
/* 00E80 80A20C40 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00E84 80A20C44 46069482 */  mul.s   $f18, $f18, $f6            
/* 00E88 80A20C48 44812000 */  mtc1    $at, $f4                   ## $f4 = 2.00
/* 00E8C 80A20C4C 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00E90 80A20C50 46068402 */  mul.s   $f16, $f16, $f6            
/* 00E94 80A20C54 44811000 */  mtc1    $at, $f2                   ## $f2 = 25.00
/* 00E98 80A20C58 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00E9C 80A20C5C 46067182 */  mul.s   $f6, $f14, $f6             
/* 00EA0 80A20C60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EA4 80A20C64 46126480 */  add.s   $f18, $f12, $f18           
/* 00EA8 80A20C68 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFE8
/* 00EAC 80A20C6C 27A60044 */  addiu   $a2, $sp, 0x0044           ## $a2 = FFFFFFDC
/* 00EB0 80A20C70 46105400 */  add.s   $f16, $f10, $f16           
/* 00EB4 80A20C74 E7B20050 */  swc1    $f18, 0x0050($sp)          
/* 00EB8 80A20C78 27A70038 */  addiu   $a3, $sp, 0x0038           ## $a3 = FFFFFFD0
/* 00EBC 80A20C7C 46064180 */  add.s   $f6, $f8, $f6              
/* 00EC0 80A20C80 E7B00054 */  swc1    $f16, 0x0054($sp)          
/* 00EC4 80A20C84 E7A20014 */  swc1    $f2, 0x0014($sp)           
/* 00EC8 80A20C88 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 00ECC 80A20C8C E7A60058 */  swc1    $f6, 0x0058($sp)           
/* 00ED0 80A20C90 0C288540 */  jal     func_80A21500              
/* 00ED4 80A20C94 AFA0001C */  sw      $zero, 0x001C($sp)         
.L80A20C98:
/* 00ED8 80A20C98 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A20C9C:
/* 00EDC 80A20C9C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00EE0 80A20CA0 27BD0068 */  addiu   $sp, $sp, 0x0068           ## $sp = 00000000
/* 00EE4 80A20CA4 03E00008 */  jr      $ra                        
/* 00EE8 80A20CA8 00000000 */  nop


