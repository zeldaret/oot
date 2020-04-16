glabel func_80AD4A68
/* 00F68 80AD4A68 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00F6C 80AD4A6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F70 80AD4A70 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F74 80AD4A74 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00F78 80AD4A78 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00F7C 80AD4A7C 24190010 */  addiu   $t9, $zero, 0x0010         ## $t9 = 00000010
/* 00F80 80AD4A80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F84 80AD4A84 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00F88 80AD4A88 90980194 */  lbu     $t8, 0x0194($a0)           ## 00000194
/* 00F8C 80AD4A8C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F90 80AD4A90 03381823 */  subu    $v1, $t9, $t8              
/* 00F94 80AD4A94 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F98 80AD4A98 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 00F9C 80AD4A9C 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00FA0 80AD4AA0 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00FA4 80AD4AA4 10400002 */  beq     $v0, $zero, .L80AD4AB0     
/* 00FA8 80AD4AA8 2448FFFF */  addiu   $t0, $v0, 0xFFFF           ## $t0 = FFFFFFFF
/* 00FAC 80AD4AAC A6080196 */  sh      $t0, 0x0196($s0)           ## 00000196
.L80AD4AB0:
/* 00FB0 80AD4AB0 04620004 */  bltzl   $v1, .L80AD4AC4            
/* 00FB4 80AD4AB4 00031023 */  subu    $v0, $zero, $v1            
/* 00FB8 80AD4AB8 10000002 */  beq     $zero, $zero, .L80AD4AC4   
/* 00FBC 80AD4ABC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00FC0 80AD4AC0 00031023 */  subu    $v0, $zero, $v1            
.L80AD4AC4:
/* 00FC4 80AD4AC4 28410010 */  slti    $at, $v0, 0x0010           
/* 00FC8 80AD4AC8 50200013 */  beql    $at, $zero, .L80AD4B18     
/* 00FCC 80AD4ACC 2604021C */  addiu   $a0, $s0, 0x021C           ## $a0 = 0000021C
/* 00FD0 80AD4AD0 92040194 */  lbu     $a0, 0x0194($s0)           ## 00000194
/* 00FD4 80AD4AD4 000422C0 */  sll     $a0, $a0, 11               
/* 00FD8 80AD4AD8 00042400 */  sll     $a0, $a0, 16               
/* 00FDC 80AD4ADC 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00FE0 80AD4AE0 00042403 */  sra     $a0, $a0, 16               
/* 00FE4 80AD4AE4 86090032 */  lh      $t1, 0x0032($s0)           ## 00000032
/* 00FE8 80AD4AE8 3C014400 */  lui     $at, 0x4400                ## $at = 44000000
/* 00FEC 80AD4AEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 512.00
/* 00FF0 80AD4AF0 44892000 */  mtc1    $t1, $f4                   ## $f4 = 0.00
/* 00FF4 80AD4AF4 46000005 */  abs.s   $f0, $f0                   
/* 00FF8 80AD4AF8 46004282 */  mul.s   $f10, $f8, $f0             
/* 00FFC 80AD4AFC 468021A0 */  cvt.s.w $f6, $f4                   
/* 01000 80AD4B00 460A3400 */  add.s   $f16, $f6, $f10            
/* 01004 80AD4B04 4600848D */  trunc.w.s $f18, $f16                 
/* 01008 80AD4B08 440B9000 */  mfc1    $t3, $f18                  
/* 0100C 80AD4B0C 00000000 */  nop
/* 01010 80AD4B10 A60B0032 */  sh      $t3, 0x0032($s0)           ## 00000032
/* 01014 80AD4B14 2604021C */  addiu   $a0, $s0, 0x021C           ## $a0 = 0000021C
.L80AD4B18:
/* 01018 80AD4B18 3C054334 */  lui     $a1, 0x4334                ## $a1 = 43340000
/* 0101C 80AD4B1C 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 01020 80AD4B20 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01024 80AD4B24 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 01028 80AD4B28 8FAC002C */  lw      $t4, 0x002C($sp)           
/* 0102C 80AD4B2C 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 01030 80AD4B30 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01034 80AD4B34 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01038 80AD4B38 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 0103C 80AD4B3C 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 01040 80AD4B40 8D850024 */  lw      $a1, 0x0024($t4)           ## 00000024
/* 01044 80AD4B44 8FAD002C */  lw      $t5, 0x002C($sp)           
/* 01048 80AD4B48 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 0104C 80AD4B4C 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 01050 80AD4B50 26040010 */  addiu   $a0, $s0, 0x0010           ## $a0 = 00000010
/* 01054 80AD4B54 3C0740C0 */  lui     $a3, 0x40C0                ## $a3 = 40C00000
/* 01058 80AD4B58 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 0105C 80AD4B5C 8DA5002C */  lw      $a1, 0x002C($t5)           ## 0000002C
/* 01060 80AD4B60 86050032 */  lh      $a1, 0x0032($s0)           ## 00000032
/* 01064 80AD4B64 240E0200 */  addiu   $t6, $zero, 0x0200         ## $t6 = 00000200
/* 01068 80AD4B68 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0106C 80AD4B6C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01070 80AD4B70 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01074 80AD4B74 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01078 80AD4B78 24070800 */  addiu   $a3, $zero, 0x0800         ## $a3 = 00000800
/* 0107C 80AD4B7C 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 01080 80AD4B80 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 01084 80AD4B84 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 01088 80AD4B88 C5E00024 */  lwc1    $f0, 0x0024($t7)           ## 00000024
/* 0108C 80AD4B8C 44816000 */  mtc1    $at, $f12                  ## $f12 = 100.00
/* 01090 80AD4B90 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 01094 80AD4B94 46002081 */  sub.s   $f2, $f4, $f0              
/* 01098 80AD4B98 4602603C */  c.lt.s  $f12, $f2                  
/* 0109C 80AD4B9C 00000000 */  nop
/* 010A0 80AD4BA0 45020007 */  bc1fl   .L80AD4BC0                 
/* 010A4 80AD4BA4 44817000 */  mtc1    $at, $f14                  ## $f14 = -100.00
/* 010A8 80AD4BA8 460C0200 */  add.s   $f8, $f0, $f12             
/* 010AC 80AD4BAC 3C01C2C8 */  lui     $at, 0xC2C8                ## $at = C2C80000
/* 010B0 80AD4BB0 44817000 */  mtc1    $at, $f14                  ## $f14 = -100.00
/* 010B4 80AD4BB4 10000009 */  beq     $zero, $zero, .L80AD4BDC   
/* 010B8 80AD4BB8 E6080008 */  swc1    $f8, 0x0008($s0)           ## 00000008
/* 010BC 80AD4BBC 44817000 */  mtc1    $at, $f14                  ## $f14 = -100.00
.L80AD4BC0:
/* 010C0 80AD4BC0 00000000 */  nop
/* 010C4 80AD4BC4 460E103C */  c.lt.s  $f2, $f14                  
/* 010C8 80AD4BC8 00000000 */  nop
/* 010CC 80AD4BCC 45020004 */  bc1fl   .L80AD4BE0                 
/* 010D0 80AD4BD0 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 010D4 80AD4BD4 460E0180 */  add.s   $f6, $f0, $f14             
/* 010D8 80AD4BD8 E6060008 */  swc1    $f6, 0x0008($s0)           ## 00000008
.L80AD4BDC:
/* 010DC 80AD4BDC 8FB9002C */  lw      $t9, 0x002C($sp)           
.L80AD4BE0:
/* 010E0 80AD4BE0 C60A0010 */  lwc1    $f10, 0x0010($s0)          ## 00000010
/* 010E4 80AD4BE4 C720002C */  lwc1    $f0, 0x002C($t9)           ## 0000002C
/* 010E8 80AD4BE8 46005081 */  sub.s   $f2, $f10, $f0             
/* 010EC 80AD4BEC 4602603C */  c.lt.s  $f12, $f2                  
/* 010F0 80AD4BF0 00000000 */  nop
/* 010F4 80AD4BF4 45020005 */  bc1fl   .L80AD4C0C                 
/* 010F8 80AD4BF8 460E103C */  c.lt.s  $f2, $f14                  
/* 010FC 80AD4BFC 460C0400 */  add.s   $f16, $f0, $f12            
/* 01100 80AD4C00 10000007 */  beq     $zero, $zero, .L80AD4C20   
/* 01104 80AD4C04 E6100010 */  swc1    $f16, 0x0010($s0)          ## 00000010
/* 01108 80AD4C08 460E103C */  c.lt.s  $f2, $f14                  
.L80AD4C0C:
/* 0110C 80AD4C0C 00000000 */  nop
/* 01110 80AD4C10 45000003 */  bc1f    .L80AD4C20                 
/* 01114 80AD4C14 00000000 */  nop
/* 01118 80AD4C18 460E0480 */  add.s   $f18, $f0, $f14            
/* 0111C 80AD4C1C E6120010 */  swc1    $f18, 0x0010($s0)          ## 00000010
.L80AD4C20:
/* 01120 80AD4C20 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01124 80AD4C24 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 01128 80AD4C28 C608021C */  lwc1    $f8, 0x021C($s0)           ## 0000021C
/* 0112C 80AD4C2C C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 01130 80AD4C30 86040032 */  lh      $a0, 0x0032($s0)           ## 00000032
/* 01134 80AD4C34 46080182 */  mul.s   $f6, $f0, $f8              
/* 01138 80AD4C38 46062281 */  sub.s   $f10, $f4, $f6             
/* 0113C 80AD4C3C 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01140 80AD4C40 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 01144 80AD4C44 C612021C */  lwc1    $f18, 0x021C($s0)          ## 0000021C
/* 01148 80AD4C48 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 0114C 80AD4C4C 86180196 */  lh      $t8, 0x0196($s0)           ## 00000196
/* 01150 80AD4C50 46120202 */  mul.s   $f8, $f0, $f18             
/* 01154 80AD4C54 46088101 */  sub.s   $f4, $f16, $f8             
/* 01158 80AD4C58 17000005 */  bne     $t8, $zero, .L80AD4C70     
/* 0115C 80AD4C5C E604002C */  swc1    $f4, 0x002C($s0)           ## 0000002C
/* 01160 80AD4C60 0C2B5064 */  jal     func_80AD4190              
/* 01164 80AD4C64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01168 80AD4C68 10000004 */  beq     $zero, $zero, .L80AD4C7C   
/* 0116C 80AD4C6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD4C70:
/* 01170 80AD4C70 0C2B5743 */  jal     func_80AD5D0C              
/* 01174 80AD4C74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01178 80AD4C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AD4C7C:
/* 0117C 80AD4C7C 0C2B511C */  jal     func_80AD4470              
/* 01180 80AD4C80 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01184 80AD4C84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01188 80AD4C88 0C00BE5D */  jal     func_8002F974              
/* 0118C 80AD4C8C 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 01190 80AD4C90 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01194 80AD4C94 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01198 80AD4C98 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0119C 80AD4C9C 03E00008 */  jr      $ra                        
/* 011A0 80AD4CA0 00000000 */  nop
