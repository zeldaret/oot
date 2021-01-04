.late_rodata
glabel D_80A27EE4
    .float 1.57079637051

glabel D_80A27EE8
    .float 3.14159274101

.text
glabel EnGanonMant_Draw
/* 00C6C 80A249CC 27BDFF28 */  addiu   $sp, $sp, 0xFF28           ## $sp = FFFFFF28
/* 00C70 80A249D0 AFBF0074 */  sw      $ra, 0x0074($sp)           
/* 00C74 80A249D4 AFB60070 */  sw      $s6, 0x0070($sp)           
/* 00C78 80A249D8 AFB5006C */  sw      $s5, 0x006C($sp)           
/* 00C7C 80A249DC AFB40068 */  sw      $s4, 0x0068($sp)           
/* 00C80 80A249E0 AFB30064 */  sw      $s3, 0x0064($sp)           
/* 00C84 80A249E4 AFB20060 */  sw      $s2, 0x0060($sp)           
/* 00C88 80A249E8 AFB1005C */  sw      $s1, 0x005C($sp)           
/* 00C8C 80A249EC AFB00058 */  sw      $s0, 0x0058($sp)           
/* 00C90 80A249F0 F7BE0050 */  sdc1    $f30, 0x0050($sp)          
/* 00C94 80A249F4 F7BC0048 */  sdc1    $f28, 0x0048($sp)          
/* 00C98 80A249F8 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 00C9C 80A249FC F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 00CA0 80A24A00 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 00CA4 80A24A04 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 00CA8 80A24A08 908E1705 */  lbu     $t6, 0x1705($a0)           ## 00001705
/* 00CAC 80A24A0C 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00CB0 80A24A10 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00CB4 80A24A14 51C000A6 */  beql    $t6, $zero, .L80A24CB0     
/* 00CB8 80A24A18 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00CBC 80A24A1C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00CC0 80A24A20 C48416BC */  lwc1    $f4, 0x16BC($a0)           ## 000016BC
/* 00CC4 80A24A24 248216D4 */  addiu   $v0, $a0, 0x16D4           ## $v0 = 000016D4
/* 00CC8 80A24A28 3C01C150 */  lui     $at, 0xC150                ## $at = C1500000
/* 00CCC 80A24A2C 46040032 */  c.eq.s  $f0, $f4                   
/* 00CD0 80A24A30 00000000 */  nop
/* 00CD4 80A24A34 45030006 */  bc1tl   .L80A24A50                 
/* 00CD8 80A24A38 C64816C0 */  lwc1    $f8, 0x16C0($s2)           ## 000016C0
/* 00CDC 80A24A3C 44813000 */  mtc1    $at, $f6                   ## $f6 = -13.00
/* 00CE0 80A24A40 248316F8 */  addiu   $v1, $a0, 0x16F8           ## $v1 = 000016F8
/* 00CE4 80A24A44 10000018 */  beq     $zero, $zero, .L80A24AA8   
/* 00CE8 80A24A48 E48616C8 */  swc1    $f6, 0x16C8($a0)           ## 000016C8
/* 00CEC 80A24A4C C64816C0 */  lwc1    $f8, 0x16C0($s2)           ## 000016C0
.L80A24A50:
/* 00CF0 80A24A50 264216EC */  addiu   $v0, $s2, 0x16EC           ## $v0 = 000016EC
/* 00CF4 80A24A54 3C01C150 */  lui     $at, 0xC150                ## $at = C1500000
/* 00CF8 80A24A58 46080032 */  c.eq.s  $f0, $f8                   
/* 00CFC 80A24A5C 00000000 */  nop
/* 00D00 80A24A60 45030006 */  bc1tl   .L80A24A7C                 
/* 00D04 80A24A64 C64416C4 */  lwc1    $f4, 0x16C4($s2)           ## 000016C4
/* 00D08 80A24A68 44815000 */  mtc1    $at, $f10                  ## $f10 = -13.00
/* 00D0C 80A24A6C 264316E0 */  addiu   $v1, $s2, 0x16E0           ## $v1 = 000016E0
/* 00D10 80A24A70 1000000D */  beq     $zero, $zero, .L80A24AA8   
/* 00D14 80A24A74 E64A16C8 */  swc1    $f10, 0x16C8($s2)          ## 000016C8
/* 00D18 80A24A78 C64416C4 */  lwc1    $f4, 0x16C4($s2)           ## 000016C4
.L80A24A7C:
/* 00D1C 80A24A7C 3C01C040 */  lui     $at, 0xC040                ## $at = C0400000
/* 00D20 80A24A80 264216D4 */  addiu   $v0, $s2, 0x16D4           ## $v0 = 000016D4
/* 00D24 80A24A84 46040032 */  c.eq.s  $f0, $f4                   
/* 00D28 80A24A88 264316E0 */  addiu   $v1, $s2, 0x16E0           ## $v1 = 000016E0
/* 00D2C 80A24A8C 45010006 */  bc1t    .L80A24AA8                 
/* 00D30 80A24A90 00000000 */  nop
/* 00D34 80A24A94 44813000 */  mtc1    $at, $f6                   ## $f6 = -3.00
/* 00D38 80A24A98 264216EC */  addiu   $v0, $s2, 0x16EC           ## $v0 = 000016EC
/* 00D3C 80A24A9C 264316F8 */  addiu   $v1, $s2, 0x16F8           ## $v1 = 000016F8
/* 00D40 80A24AA0 10000001 */  beq     $zero, $zero, .L80A24AA8   
/* 00D44 80A24AA4 E64616C8 */  swc1    $f6, 0x16C8($s2)           ## 000016C8
.L80A24AA8:
/* 00D48 80A24AA8 C4400000 */  lwc1    $f0, 0x0000($v0)           ## 000016EC
/* 00D4C 80A24AAC C4680000 */  lwc1    $f8, 0x0000($v1)           ## 000016F8
/* 00D50 80A24AB0 C4420004 */  lwc1    $f2, 0x0004($v0)           ## 000016F0
/* 00D54 80A24AB4 C46A0004 */  lwc1    $f10, 0x0004($v1)          ## 000016FC
/* 00D58 80A24AB8 46004501 */  sub.s   $f20, $f8, $f0             
/* 00D5C 80A24ABC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00D60 80A24AC0 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.50
/* 00D64 80A24AC4 46025601 */  sub.s   $f24, $f10, $f2            
/* 00D68 80A24AC8 C4500008 */  lwc1    $f16, 0x0008($v0)          ## 000016F4
/* 00D6C 80A24ACC C4640008 */  lwc1    $f4, 0x0008($v1)           ## 00001700
/* 00D70 80A24AD0 4612A182 */  mul.s   $f6, $f20, $f18            
/* 00D74 80A24AD4 4600A386 */  mov.s   $f14, $f20                 
/* 00D78 80A24AD8 46102581 */  sub.s   $f22, $f4, $f16            
/* 00D7C 80A24ADC 4612C202 */  mul.s   $f8, $f24, $f18            
/* 00D80 80A24AE0 00000000 */  nop
/* 00D84 80A24AE4 4612B102 */  mul.s   $f4, $f22, $f18            
/* 00D88 80A24AE8 4600B306 */  mov.s   $f12, $f22                 
/* 00D8C 80A24AEC 46060780 */  add.s   $f30, $f0, $f6             
/* 00D90 80A24AF0 46081280 */  add.s   $f10, $f2, $f8             
/* 00D94 80A24AF4 46048180 */  add.s   $f6, $f16, $f4             
/* 00D98 80A24AF8 E7AA0090 */  swc1    $f10, 0x0090($sp)          
/* 00D9C 80A24AFC 0C0341F5 */  jal     Math_Atan2F
              
/* 00DA0 80A24B00 E7A60094 */  swc1    $f6, 0x0094($sp)           
/* 00DA4 80A24B04 4614A702 */  mul.s   $f28, $f20, $f20           
/* 00DA8 80A24B08 46000686 */  mov.s   $f26, $f0                  
/* 00DAC 80A24B0C 4600C386 */  mov.s   $f14, $f24                 
/* 00DB0 80A24B10 4616B082 */  mul.s   $f2, $f22, $f22            
/* 00DB4 80A24B14 4602E000 */  add.s   $f0, $f28, $f2             
/* 00DB8 80A24B18 E7A2007C */  swc1    $f2, 0x007C($sp)           
/* 00DBC 80A24B1C 0C0341F5 */  jal     Math_Atan2F
              
/* 00DC0 80A24B20 46000304 */  sqrt.s  $f12, $f0                  
/* 00DC4 80A24B24 4618C202 */  mul.s   $f8, $f24, $f24            
/* 00DC8 80A24B28 C7A2007C */  lwc1    $f2, 0x007C($sp)           
/* 00DCC 80A24B2C 46000507 */  neg.s   $f20, $f0                  
/* 00DD0 80A24B30 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00DD4 80A24B34 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00DD8 80A24B38 4600D306 */  mov.s   $f12, $f26                 
/* 00DDC 80A24B3C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00DE0 80A24B40 4608E280 */  add.s   $f10, $f28, $f8            
/* 00DE4 80A24B44 46025000 */  add.s   $f0, $f10, $f2             
/* 00DE8 80A24B48 46000004 */  sqrt.s  $f0, $f0                   
/* 00DEC 80A24B4C 46040582 */  mul.s   $f22, $f0, $f4             
/* 00DF0 80A24B50 0C034348 */  jal     Matrix_RotateY              
/* 00DF4 80A24B54 00000000 */  nop
/* 00DF8 80A24B58 4600A306 */  mov.s   $f12, $f20                 
/* 00DFC 80A24B5C 0C0342DC */  jal     Matrix_RotateX              
/* 00E00 80A24B60 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 00E04 80A24B64 3C0180A2 */  lui     $at, %hi(D_80A27EE4)       ## $at = 80A20000
/* 00E08 80A24B68 C4267EE4 */  lwc1    $f6, %lo(D_80A27EE4)($at)  
/* 00E0C 80A24B6C 3C014130 */  lui     $at, 0x4130                ## $at = 41300000
/* 00E10 80A24B70 4480E000 */  mtc1    $zero, $f28                ## $f28 = 0.00
/* 00E14 80A24B74 4606D201 */  sub.s   $f8, $f26, $f6             
/* 00E18 80A24B78 4481D000 */  mtc1    $at, $f26                  ## $f26 = 11.00
/* 00E1C 80A24B7C 3C0180A2 */  lui     $at, %hi(D_80A27EE8)       ## $at = 80A20000
/* 00E20 80A24B80 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00E24 80A24B84 E64816CC */  swc1    $f8, 0x16CC($s2)           ## 000016CC
/* 00E28 80A24B88 C4387EE8 */  lwc1    $f24, %lo(D_80A27EE8)($at) 
/* 00E2C 80A24B8C 27B500B4 */  addiu   $s5, $sp, 0x00B4           ## $s5 = FFFFFFDC
/* 00E30 80A24B90 27B400C0 */  addiu   $s4, $sp, 0x00C0           ## $s4 = FFFFFFE8
/* 00E34 80A24B94 241301C8 */  addiu   $s3, $zero, 0x01C8         ## $s3 = 000001C8
.L80A24B98:
/* 00E38 80A24B98 0C034213 */  jal     Matrix_Push              
/* 00E3C 80A24B9C 00000000 */  nop
/* 00E40 80A24BA0 44905000 */  mtc1    $s0, $f10                  ## $f10 = 0.00
/* 00E44 80A24BA4 00000000 */  nop
/* 00E48 80A24BA8 46805120 */  cvt.s.w $f4, $f10                  
/* 00E4C 80A24BAC 46182182 */  mul.s   $f6, $f4, $f24             
/* 00E50 80A24BB0 461A3503 */  div.s   $f20, $f6, $f26            
/* 00E54 80A24BB4 0C0400A4 */  jal     sinf
              
/* 00E58 80A24BB8 4600A306 */  mov.s   $f12, $f20                 
/* 00E5C 80A24BBC 46160202 */  mul.s   $f8, $f0, $f22             
/* 00E60 80A24BC0 E7BC00C4 */  swc1    $f28, 0x00C4($sp)          
/* 00E64 80A24BC4 4600A306 */  mov.s   $f12, $f20                 
/* 00E68 80A24BC8 0C041184 */  jal     cosf
              
/* 00E6C 80A24BCC E7A800C0 */  swc1    $f8, 0x00C0($sp)           
/* 00E70 80A24BD0 46000287 */  neg.s   $f10, $f0                  
/* 00E74 80A24BD4 02802025 */  or      $a0, $s4, $zero            ## $a0 = FFFFFFE8
/* 00E78 80A24BD8 46165102 */  mul.s   $f4, $f10, $f22            
/* 00E7C 80A24BDC 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFDC
/* 00E80 80A24BE0 0C0346BD */  jal     Matrix_MultVec3f              
/* 00E84 80A24BE4 E7A400C8 */  swc1    $f4, 0x00C8($sp)           
/* 00E88 80A24BE8 02130019 */  multu   $s0, $s3                   
/* 00E8C 80A24BEC C7A600B4 */  lwc1    $f6, 0x00B4($sp)           
/* 00E90 80A24BF0 26110001 */  addiu   $s1, $s0, 0x0001           ## $s1 = 00000001
/* 00E94 80A24BF4 0011C400 */  sll     $t8, $s1, 16               
/* 00E98 80A24BF8 4606F200 */  add.s   $f8, $f30, $f6             
/* 00E9C 80A24BFC 0018CC03 */  sra     $t9, $t8, 16               
/* 00EA0 80A24C00 00111C00 */  sll     $v1, $s1, 16               
/* 00EA4 80A24C04 2B21000C */  slti    $at, $t9, 0x000C           
/* 00EA8 80A24C08 00031C03 */  sra     $v1, $v1, 16               
/* 00EAC 80A24C0C 00007812 */  mflo    $t7                        
/* 00EB0 80A24C10 024F1021 */  addu    $v0, $s2, $t7              
/* 00EB4 80A24C14 E448014C */  swc1    $f8, 0x014C($v0)           ## 0000014C
/* 00EB8 80A24C18 C7A400B8 */  lwc1    $f4, 0x00B8($sp)           
/* 00EBC 80A24C1C C7AA0090 */  lwc1    $f10, 0x0090($sp)          
/* 00EC0 80A24C20 46045180 */  add.s   $f6, $f10, $f4             
/* 00EC4 80A24C24 E4460150 */  swc1    $f6, 0x0150($v0)           ## 00000150
/* 00EC8 80A24C28 C7AA00BC */  lwc1    $f10, 0x00BC($sp)          
/* 00ECC 80A24C2C C7A80094 */  lwc1    $f8, 0x0094($sp)           
/* 00ED0 80A24C30 460A4100 */  add.s   $f4, $f8, $f10             
/* 00ED4 80A24C34 14200004 */  bne     $at, $zero, .L80A24C48     
/* 00ED8 80A24C38 E4440154 */  swc1    $f4, 0x0154($v0)           ## 00000154
/* 00EDC 80A24C3C 2603FFFF */  addiu   $v1, $s0, 0xFFFF           ## $v1 = FFFFFFFF
/* 00EE0 80A24C40 00031C00 */  sll     $v1, $v1, 16               
/* 00EE4 80A24C44 00031C03 */  sra     $v1, $v1, 16               
.L80A24C48:
/* 00EE8 80A24C48 00730019 */  multu   $v1, $s3                   
/* 00EEC 80A24C4C 244B01E8 */  addiu   $t3, $v0, 0x01E8           ## $t3 = 000001E8
/* 00EF0 80A24C50 244C0278 */  addiu   $t4, $v0, 0x0278           ## $t4 = 00000278
/* 00EF4 80A24C54 AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00EF8 80A24C58 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00EFC 80A24C5C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00F00 80A24C60 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00F04 80A24C64 2446014C */  addiu   $a2, $v0, 0x014C           ## $a2 = 0000014C
/* 00F08 80A24C68 24470158 */  addiu   $a3, $v0, 0x0158           ## $a3 = 00000158
/* 00F0C 80A24C6C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00F10 80A24C70 00004012 */  mflo    $t0                        
/* 00F14 80A24C74 02484821 */  addu    $t1, $s2, $t0              
/* 00F18 80A24C78 252A0158 */  addiu   $t2, $t1, 0x0158           ## $t2 = 00000158
/* 00F1C 80A24C7C 0C288FF8 */  jal     func_80A23FE0              
/* 00F20 80A24C80 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00F24 80A24C84 0C034221 */  jal     Matrix_Pull              
/* 00F28 80A24C88 00000000 */  nop
/* 00F2C 80A24C8C 00118400 */  sll     $s0, $s1, 16               
/* 00F30 80A24C90 00108403 */  sra     $s0, $s0, 16               
/* 00F34 80A24C94 2A01000C */  slti    $at, $s0, 0x000C           
/* 00F38 80A24C98 1420FFBF */  bne     $at, $zero, .L80A24B98     
/* 00F3C 80A24C9C 00000000 */  nop
/* 00F40 80A24CA0 0C289169 */  jal     func_80A245A4              
/* 00F44 80A24CA4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00F48 80A24CA8 A2401705 */  sb      $zero, 0x1705($s2)         ## 00001705
/* 00F4C 80A24CAC 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
.L80A24CB0:
/* 00F50 80A24CB0 0C289221 */  jal     func_80A24884              
/* 00F54 80A24CB4 02402825 */  or      $a1, $s2, $zero            ## $a1 = 00000000
/* 00F58 80A24CB8 8FBF0074 */  lw      $ra, 0x0074($sp)           
/* 00F5C 80A24CBC D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 00F60 80A24CC0 D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 00F64 80A24CC4 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 00F68 80A24CC8 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 00F6C 80A24CCC D7BC0048 */  ldc1    $f28, 0x0048($sp)          
/* 00F70 80A24CD0 D7BE0050 */  ldc1    $f30, 0x0050($sp)          
/* 00F74 80A24CD4 8FB00058 */  lw      $s0, 0x0058($sp)           
/* 00F78 80A24CD8 8FB1005C */  lw      $s1, 0x005C($sp)           
/* 00F7C 80A24CDC 8FB20060 */  lw      $s2, 0x0060($sp)           
/* 00F80 80A24CE0 8FB30064 */  lw      $s3, 0x0064($sp)           
/* 00F84 80A24CE4 8FB40068 */  lw      $s4, 0x0068($sp)           
/* 00F88 80A24CE8 8FB5006C */  lw      $s5, 0x006C($sp)           
/* 00F8C 80A24CEC 8FB60070 */  lw      $s6, 0x0070($sp)           
/* 00F90 80A24CF0 03E00008 */  jr      $ra                        
/* 00F94 80A24CF4 27BD00D8 */  addiu   $sp, $sp, 0x00D8           ## $sp = 00000000
/* 00F98 80A24CF8 00000000 */  nop
/* 00F9C 80A24CFC 00000000 */  nop
