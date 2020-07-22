.late_rodata
glabel D_80A061F0
    .float 0.3499999940395355

glabel D_80A061F4
    .float 0.012345679104328156

glabel D_80A061F8
    .float 0.008

.text
glabel func_80A03990
/* 01D60 80A03990 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01D64 80A03994 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01D68 80A03998 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01D6C 80A0399C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01D70 80A039A0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 01D74 80A039A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D78 80A039A8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01D7C 80A039AC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01D80 80A039B0 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 01D84 80A039B4 C60002B4 */  lwc1    $f0, 0x02B4($s0)           ## 000002B4
/* 01D88 80A039B8 C6040290 */  lwc1    $f4, 0x0290($s0)           ## 00000290
/* 01D8C 80A039BC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01D90 80A039C0 3C0180A0 */  lui     $at, %hi(D_80A061F0)       ## $at = 80A00000
/* 01D94 80A039C4 46002180 */  add.s   $f6, $f4, $f0              
/* 01D98 80A039C8 E6020294 */  swc1    $f2, 0x0294($s0)           ## 00000294
/* 01D9C 80A039CC E602028C */  swc1    $f2, 0x028C($s0)           ## 0000028C
/* 01DA0 80A039D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DA4 80A039D4 E6060290 */  swc1    $f6, 0x0290($s0)           ## 00000290
/* 01DA8 80A039D8 C42861F0 */  lwc1    $f8, %lo(D_80A061F0)($at)  
/* 01DAC 80A039DC 3C0580A0 */  lui     $a1, %hi(func_80A03814)    ## $a1 = 80A00000
/* 01DB0 80A039E0 46080281 */  sub.s   $f10, $f0, $f8             
/* 01DB4 80A039E4 E60A02B4 */  swc1    $f10, 0x02B4($s0)          ## 000002B4
/* 01DB8 80A039E8 C61002B4 */  lwc1    $f16, 0x02B4($s0)          ## 000002B4
/* 01DBC 80A039EC 4602803E */  c.le.s  $f16, $f2                  
/* 01DC0 80A039F0 00000000 */  nop
/* 01DC4 80A039F4 4502000C */  bc1fl   .L80A03A28                 
/* 01DC8 80A039F8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01DCC 80A039FC 0C28070C */  jal     func_80A01C30              
/* 01DD0 80A03A00 24A53814 */  addiu   $a1, $a1, %lo(func_80A03814) ## $a1 = 80A03814
/* 01DD4 80A03A04 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01DD8 80A03A08 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01DDC 80A03A0C 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 01DE0 80A03A10 24180800 */  addiu   $t8, $zero, 0x0800         ## $t8 = 00000800
/* 01DE4 80A03A14 A61802B0 */  sh      $t8, 0x02B0($s0)           ## 000002B0
/* 01DE8 80A03A18 A60002AE */  sh      $zero, 0x02AE($s0)         ## 000002AE
/* 01DEC 80A03A1C E60202B4 */  swc1    $f2, 0x02B4($s0)           ## 000002B4
/* 01DF0 80A03A20 E61202B8 */  swc1    $f18, 0x02B8($s0)          ## 000002B8
/* 01DF4 80A03A24 8FA50024 */  lw      $a1, 0x0024($sp)           
.L80A03A28:
/* 01DF8 80A03A28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DFC 80A03A2C 0C280B8C */  jal     func_80A02E30              
/* 01E00 80A03A30 24A50908 */  addiu   $a1, $a1, 0x0908           ## $a1 = 00000908
/* 01E04 80A03A34 C60002B4 */  lwc1    $f0, 0x02B4($s0)           ## 000002B4
/* 01E08 80A03A38 3C0180A0 */  lui     $at, %hi(D_80A061F4)       ## $at = 80A00000
/* 01E0C 80A03A3C C42661F4 */  lwc1    $f6, %lo(D_80A061F4)($at)  
/* 01E10 80A03A40 46000102 */  mul.s   $f4, $f0, $f0              
/* 01E14 80A03A44 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01E18 80A03A48 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 01E1C 80A03A4C 3C0180A0 */  lui     $at, %hi(D_80A061F8)       ## $at = 80A00000
/* 01E20 80A03A50 C43261F8 */  lwc1    $f18, %lo(D_80A061F8)($at) 
/* 01E24 80A03A54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E28 80A03A58 46062202 */  mul.s   $f8, $f4, $f6              
/* 01E2C 80A03A5C 46085401 */  sub.s   $f16, $f10, $f8            
/* 01E30 80A03A60 46128102 */  mul.s   $f4, $f16, $f18            
/* 01E34 80A03A64 44052000 */  mfc1    $a1, $f4                   
/* 01E38 80A03A68 0C00B58B */  jal     Actor_SetScale
              
/* 01E3C 80A03A6C 00000000 */  nop
/* 01E40 80A03A70 C60C0064 */  lwc1    $f12, 0x0064($s0)          ## 00000064
/* 01E44 80A03A74 0C034199 */  jal     atan2s
              
/* 01E48 80A03A78 C60E005C */  lwc1    $f14, 0x005C($s0)          ## 0000005C
/* 01E4C 80A03A7C A60202BC */  sh      $v0, 0x02BC($s0)           ## 000002BC
/* 01E50 80A03A80 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01E54 80A03A84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E58 80A03A88 0C28126D */  jal     func_80A049B4              
/* 01E5C 80A03A8C 24060020 */  addiu   $a2, $zero, 0x0020         ## $a2 = 00000020
/* 01E60 80A03A90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E64 80A03A94 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01E68 80A03A98 240520A8 */  addiu   $a1, $zero, 0x20A8         ## $a1 = 000020A8
/* 01E6C 80A03A9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01E70 80A03AA0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01E74 80A03AA4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01E78 80A03AA8 03E00008 */  jr      $ra                        
/* 01E7C 80A03AAC 00000000 */  nop
