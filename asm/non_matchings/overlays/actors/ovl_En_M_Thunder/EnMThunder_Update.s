glabel EnMThunder_Update
/* 00B3C 80A9FB1C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00B40 80A9FB20 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 00B44 80A9FB24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B48 80A9FB28 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00B4C 80A9FB2C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00B50 80A9FB30 8E1901C0 */  lw      $t9, 0x01C0($s0)           ## 000001C0
/* 00B54 80A9FB34 0320F809 */  jalr    $ra, $t9                   
/* 00B58 80A9FB38 00000000 */  nop
/* 00B5C 80A9FB3C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00B60 80A9FB40 0C2A7CC5 */  jal     func_80A9F314              
/* 00B64 80A9FB44 8E0501BC */  lw      $a1, 0x01BC($s0)           ## 000001BC
/* 00B68 80A9FB48 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00B6C 80A9FB4C 3C01437F */  lui     $at, 0x437F                ## $at = 437F0000
/* 00B70 80A9FB50 C60001AC */  lwc1    $f0, 0x01AC($s0)           ## 000001AC
/* 00B74 80A9FB54 4600218D */  trunc.w.s $f6, $f4                   
/* 00B78 80A9FB58 44812000 */  mtc1    $at, $f4                   ## $f4 = 255.00
/* 00B7C 80A9FB5C C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 00B80 80A9FB60 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00B84 80A9FB64 44053000 */  mfc1    $a1, $f6                   
/* 00B88 80A9FB68 46040182 */  mul.s   $f6, $f0, $f4              
/* 00B8C 80A9FB6C 4600428D */  trunc.w.s $f10, $f8                  
/* 00B90 80A9FB70 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B94 80A9FB74 00052C00 */  sll     $a1, $a1, 16               
/* 00B98 80A9FB78 00052C03 */  sra     $a1, $a1, 16               
/* 00B9C 80A9FB7C 44065000 */  mfc1    $a2, $f10                  
/* 00BA0 80A9FB80 4600848D */  trunc.w.s $f18, $f16                 
/* 00BA4 80A9FB84 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00BA8 80A9FB88 00063400 */  sll     $a2, $a2, 16               
/* 00BAC 80A9FB8C 00063403 */  sra     $a2, $a2, 16               
/* 00BB0 80A9FB90 4448F800 */  cfc1    $t0, $31
/* 00BB4 80A9FB94 44C2F800 */  ctc1    $v0, $31
/* 00BB8 80A9FB98 44079000 */  mfc1    $a3, $f18                  
/* 00BBC 80A9FB9C 2604019C */  addiu   $a0, $s0, 0x019C           ## $a0 = 0000019C
/* 00BC0 80A9FBA0 46003224 */  cvt.w.s $f8, $f6                   
/* 00BC4 80A9FBA4 00073C00 */  sll     $a3, $a3, 16               
/* 00BC8 80A9FBA8 00073C03 */  sra     $a3, $a3, 16               
/* 00BCC 80A9FBAC 4442F800 */  cfc1    $v0, $31
/* 00BD0 80A9FBB0 00000000 */  nop
/* 00BD4 80A9FBB4 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 00BD8 80A9FBB8 50400013 */  beql    $v0, $zero, .L80A9FC08     
/* 00BDC 80A9FBBC 44024000 */  mfc1    $v0, $f8                   
/* 00BE0 80A9FBC0 44814000 */  mtc1    $at, $f8                   ## $f8 = 2147483648.00
/* 00BE4 80A9FBC4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00BE8 80A9FBC8 46083201 */  sub.s   $f8, $f6, $f8              
/* 00BEC 80A9FBCC 44C2F800 */  ctc1    $v0, $31
/* 00BF0 80A9FBD0 00000000 */  nop
/* 00BF4 80A9FBD4 46004224 */  cvt.w.s $f8, $f8                   
/* 00BF8 80A9FBD8 4442F800 */  cfc1    $v0, $31
/* 00BFC 80A9FBDC 00000000 */  nop
/* 00C00 80A9FBE0 30420078 */  andi    $v0, $v0, 0x0078           ## $v0 = 00000000
/* 00C04 80A9FBE4 14400005 */  bne     $v0, $zero, .L80A9FBFC     
/* 00C08 80A9FBE8 00000000 */  nop
/* 00C0C 80A9FBEC 44024000 */  mfc1    $v0, $f8                   
/* 00C10 80A9FBF0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00C14 80A9FBF4 10000007 */  beq     $zero, $zero, .L80A9FC14   
/* 00C18 80A9FBF8 00411025 */  or      $v0, $v0, $at              ## $v0 = 80000000
.L80A9FBFC:
/* 00C1C 80A9FBFC 10000005 */  beq     $zero, $zero, .L80A9FC14   
/* 00C20 80A9FC00 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
/* 00C24 80A9FC04 44024000 */  mfc1    $v0, $f8                   
.L80A9FC08:
/* 00C28 80A9FC08 00000000 */  nop
/* 00C2C 80A9FC0C 0440FFFB */  bltz    $v0, .L80A9FBFC            
/* 00C30 80A9FC10 00000000 */  nop
.L80A9FC14:
/* 00C34 80A9FC14 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00C38 80A9FC18 44C8F800 */  ctc1    $t0, $31
/* 00C3C 80A9FC1C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 00C40 80A9FC20 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00C44 80A9FC24 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 000000FF
/* 00C48 80A9FC28 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00C4C 80A9FC2C AFA20010 */  sw      $v0, 0x0010($sp)           
/* 00C50 80A9FC30 AFA20014 */  sw      $v0, 0x0014($sp)           
/* 00C54 80A9FC34 3C014F00 */  lui     $at, 0x4F00                ## $at = 4F000000
/* 00C58 80A9FC38 4449F800 */  cfc1    $t1, $31
/* 00C5C 80A9FC3C 44CAF800 */  ctc1    $t2, $31
/* 00C60 80A9FC40 00000000 */  nop
/* 00C64 80A9FC44 460084A4 */  cvt.w.s $f18, $f16                 
/* 00C68 80A9FC48 444AF800 */  cfc1    $t2, $31
/* 00C6C 80A9FC4C 00000000 */  nop
/* 00C70 80A9FC50 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 00C74 80A9FC54 51400013 */  beql    $t2, $zero, .L80A9FCA4     
/* 00C78 80A9FC58 440A9000 */  mfc1    $t2, $f18                  
/* 00C7C 80A9FC5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 2147483648.00
/* 00C80 80A9FC60 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 00C84 80A9FC64 46128481 */  sub.s   $f18, $f16, $f18           
/* 00C88 80A9FC68 44CAF800 */  ctc1    $t2, $31
/* 00C8C 80A9FC6C 00000000 */  nop
/* 00C90 80A9FC70 460094A4 */  cvt.w.s $f18, $f18                 
/* 00C94 80A9FC74 444AF800 */  cfc1    $t2, $31
/* 00C98 80A9FC78 00000000 */  nop
/* 00C9C 80A9FC7C 314A0078 */  andi    $t2, $t2, 0x0078           ## $t2 = 00000000
/* 00CA0 80A9FC80 15400005 */  bne     $t2, $zero, .L80A9FC98     
/* 00CA4 80A9FC84 00000000 */  nop
/* 00CA8 80A9FC88 440A9000 */  mfc1    $t2, $f18                  
/* 00CAC 80A9FC8C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00CB0 80A9FC90 10000007 */  beq     $zero, $zero, .L80A9FCB0   
/* 00CB4 80A9FC94 01415025 */  or      $t2, $t2, $at              ## $t2 = 80000000
.L80A9FC98:
/* 00CB8 80A9FC98 10000005 */  beq     $zero, $zero, .L80A9FCB0   
/* 00CBC 80A9FC9C 240AFFFF */  addiu   $t2, $zero, 0xFFFF         ## $t2 = FFFFFFFF
/* 00CC0 80A9FCA0 440A9000 */  mfc1    $t2, $f18                  
.L80A9FCA4:
/* 00CC4 80A9FCA4 00000000 */  nop
/* 00CC8 80A9FCA8 0540FFFB */  bltz    $t2, .L80A9FC98            
/* 00CCC 80A9FCAC 00000000 */  nop
.L80A9FCB0:
/* 00CD0 80A9FCB0 3C014448 */  lui     $at, 0x4448                ## $at = 44480000
/* 00CD4 80A9FCB4 44812000 */  mtc1    $at, $f4                   ## $f4 = 800.00
/* 00CD8 80A9FCB8 44C9F800 */  ctc1    $t1, $31
/* 00CDC 80A9FCBC AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 00CE0 80A9FCC0 46040182 */  mul.s   $f6, $f0, $f4              
/* 00CE4 80A9FCC4 4600320D */  trunc.w.s $f8, $f6                   
/* 00CE8 80A9FCC8 440C4000 */  mfc1    $t4, $f8                   
/* 00CEC 80A9FCCC 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 00CF0 80A9FCD0 AFAC001C */  sw      $t4, 0x001C($sp)           
/* 00CF4 80A9FCD4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00CF8 80A9FCD8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00CFC 80A9FCDC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D00 80A9FCE0 03E00008 */  jr      $ra                        
/* 00D04 80A9FCE4 00000000 */  nop
