glabel func_809F6E54
/* 00A94 809F6E54 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 00A98 809F6E58 3C0F809F */  lui     $t7, %hi(D_809F7F34)       ## $t7 = 809F0000
/* 00A9C 809F6E5C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00AA0 809F6E60 25EF7F34 */  addiu   $t7, $t7, %lo(D_809F7F34)  ## $t7 = 809F7F34
/* 00AA4 809F6E64 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00AA8 809F6E68 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00AAC 809F6E6C AFA50084 */  sw      $a1, 0x0084($sp)           
/* 00AB0 809F6E70 25E80030 */  addiu   $t0, $t7, 0x0030           ## $t0 = 809F7F64
/* 00AB4 809F6E74 27AE0050 */  addiu   $t6, $sp, 0x0050           ## $t6 = FFFFFFD0
.L809F6E78:
/* 00AB8 809F6E78 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809F7F34
/* 00ABC 809F6E7C 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 809F7F40
/* 00AC0 809F6E80 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFDC
/* 00AC4 809F6E84 ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFD0
/* 00AC8 809F6E88 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 809F7F38
/* 00ACC 809F6E8C ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFD4
/* 00AD0 809F6E90 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 809F7F3C
/* 00AD4 809F6E94 15E8FFF8 */  bne     $t7, $t0, .L809F6E78       
/* 00AD8 809F6E98 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFD8
/* 00ADC 809F6E9C 8E0301E0 */  lw      $v1, 0x01E0($s0)           ## 000001E0
/* 00AE0 809F6EA0 8FA90084 */  lw      $t1, 0x0084($sp)           
/* 00AE4 809F6EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AE8 809F6EA8 10600009 */  beq     $v1, $zero, .L809F6ED0     
/* 00AEC 809F6EAC 8D261C44 */  lw      $a2, 0x1C44($t1)           ## 00001C44
/* 00AF0 809F6EB0 8C6A0130 */  lw      $t2, 0x0130($v1)           ## 00000130
/* 00AF4 809F6EB4 51400007 */  beql    $t2, $zero, .L809F6ED4     
/* 00AF8 809F6EB8 8FA50084 */  lw      $a1, 0x0084($sp)           
/* 00AFC 809F6EBC 10600009 */  beq     $v1, $zero, .L809F6EE4     
/* 00B00 809F6EC0 00000000 */  nop
/* 00B04 809F6EC4 8C6B0118 */  lw      $t3, 0x0118($v1)           ## 00000118
/* 00B08 809F6EC8 11600006 */  beq     $t3, $zero, .L809F6EE4     
/* 00B0C 809F6ECC 00000000 */  nop
.L809F6ED0:
/* 00B10 809F6ED0 8FA50084 */  lw      $a1, 0x0084($sp)           
.L809F6ED4:
/* 00B14 809F6ED4 0C27DB29 */  jal     func_809F6CA4              
/* 00B18 809F6ED8 AFA60048 */  sw      $a2, 0x0048($sp)           
/* 00B1C 809F6EDC 8FA60048 */  lw      $a2, 0x0048($sp)           
/* 00B20 809F6EE0 8E0301E0 */  lw      $v1, 0x01E0($s0)           ## 000001E0
.L809F6EE4:
/* 00B24 809F6EE4 10600009 */  beq     $v1, $zero, .L809F6F0C     
/* 00B28 809F6EE8 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00B2C 809F6EEC 8C680024 */  lw      $t0, 0x0024($v1)           ## 00000024
/* 00B30 809F6EF0 27AC003C */  addiu   $t4, $sp, 0x003C           ## $t4 = FFFFFFBC
/* 00B34 809F6EF4 AD880000 */  sw      $t0, 0x0000($t4)           ## FFFFFFBC
/* 00B38 809F6EF8 8C6D0028 */  lw      $t5, 0x0028($v1)           ## 00000028
/* 00B3C 809F6EFC AD8D0004 */  sw      $t5, 0x0004($t4)           ## FFFFFFC0
/* 00B40 809F6F00 8C68002C */  lw      $t0, 0x002C($v1)           ## 0000002C
/* 00B44 809F6F04 10000008 */  beq     $zero, $zero, .L809F6F28   
/* 00B48 809F6F08 AD880008 */  sw      $t0, 0x0008($t4)           ## FFFFFFC4
.L809F6F0C:
/* 00B4C 809F6F0C 8CD80024 */  lw      $t8, 0x0024($a2)           ## 00000024
/* 00B50 809F6F10 27AF003C */  addiu   $t7, $sp, 0x003C           ## $t7 = FFFFFFBC
/* 00B54 809F6F14 ADF80000 */  sw      $t8, 0x0000($t7)           ## FFFFFFBC
/* 00B58 809F6F18 8CCE0028 */  lw      $t6, 0x0028($a2)           ## 00000028
/* 00B5C 809F6F1C ADEE0004 */  sw      $t6, 0x0004($t7)           ## FFFFFFC0
/* 00B60 809F6F20 8CD8002C */  lw      $t8, 0x002C($a2)           ## 0000002C
/* 00B64 809F6F24 ADF80008 */  sw      $t8, 0x0008($t7)           ## FFFFFFC4
.L809F6F28:
/* 00B68 809F6F28 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFBC
/* 00B6C 809F6F2C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00B70 809F6F30 AFA4002C */  sw      $a0, 0x002C($sp)           
/* 00B74 809F6F34 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00B78 809F6F38 44812000 */  mtc1    $at, $f4                   ## $f4 = 80.00
/* 00B7C 809F6F3C 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00B80 809F6F40 27AD0050 */  addiu   $t5, $sp, 0x0050           ## $t5 = FFFFFFD0
/* 00B84 809F6F44 4600203C */  c.lt.s  $f4, $f0                   
/* 00B88 809F6F48 00000000 */  nop
/* 00B8C 809F6F4C 45020036 */  bc1fl   .L809F7028                 
/* 00B90 809F6F50 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00B94 809F6F54 8FB90084 */  lw      $t9, 0x0084($sp)           
/* 00B98 809F6F58 C6060008 */  lwc1    $f6, 0x0008($s0)           ## 00000008
/* 00B9C 809F6F5C C608000C */  lwc1    $f8, 0x000C($s0)           ## 0000000C
/* 00BA0 809F6F60 8F29009C */  lw      $t1, 0x009C($t9)           ## 0000009C
/* 00BA4 809F6F64 C6100010 */  lwc1    $f16, 0x0010($s0)          ## 00000010
/* 00BA8 809F6F68 46083280 */  add.s   $f10, $f6, $f8             
/* 00BAC 809F6F6C 0121001B */  divu    $zero, $t1, $at            
/* 00BB0 809F6F70 00005012 */  mflo    $t2                        
/* 00BB4 809F6F74 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00BB8 809F6F78 46105480 */  add.s   $f18, $f10, $f16           
/* 00BBC 809F6F7C 05410005 */  bgez    $t2, .L809F6F94            
/* 00BC0 809F6F80 468021A0 */  cvt.s.w $f6, $f4                   
/* 00BC4 809F6F84 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 00BC8 809F6F88 44814000 */  mtc1    $at, $f8                   ## $f8 = 4294967296.00
/* 00BCC 809F6F8C 00000000 */  nop
/* 00BD0 809F6F90 46083180 */  add.s   $f6, $f6, $f8              
.L809F6F94:
/* 00BD4 809F6F94 46069280 */  add.s   $f10, $f18, $f6            
/* 00BD8 809F6F98 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 00BDC 809F6F9C 4600540D */  trunc.w.s $f16, $f10                 
/* 00BE0 809F6FA0 44028000 */  mfc1    $v0, $f16                  
/* 00BE4 809F6FA4 00000000 */  nop
/* 00BE8 809F6FA8 00021400 */  sll     $v0, $v0, 16               
/* 00BEC 809F6FAC 00021403 */  sra     $v0, $v0, 16               
/* 00BF0 809F6FB0 0041001A */  div     $zero, $v0, $at            
/* 00BF4 809F6FB4 00001010 */  mfhi    $v0                        
/* 00BF8 809F6FB8 00021400 */  sll     $v0, $v0, 16               
/* 00BFC 809F6FBC 00021403 */  sra     $v0, $v0, 16               
/* 00C00 809F6FC0 04430005 */  bgezl   $v0, .L809F6FD8            
/* 00C04 809F6FC4 00026080 */  sll     $t4, $v0,  2               
/* 00C08 809F6FC8 00021023 */  subu    $v0, $zero, $v0            
/* 00C0C 809F6FCC 00021400 */  sll     $v0, $v0, 16               
/* 00C10 809F6FD0 00021403 */  sra     $v0, $v0, 16               
/* 00C14 809F6FD4 00026080 */  sll     $t4, $v0,  2               
.L809F6FD8:
/* 00C18 809F6FD8 018D1821 */  addu    $v1, $t4, $t5              
/* 00C1C 809F6FDC C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 00000000
/* 00C20 809F6FE0 0C0400A4 */  jal     sinf
              
/* 00C24 809F6FE4 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 00C28 809F6FE8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00C2C 809F6FEC 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 00C30 809F6FF0 C7A4003C */  lwc1    $f4, 0x003C($sp)           
/* 00C34 809F6FF4 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00C38 809F6FF8 46004482 */  mul.s   $f18, $f8, $f0             
/* 00C3C 809F6FFC 46122180 */  add.s   $f6, $f4, $f18             
/* 00C40 809F7000 E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00C44 809F7004 0C041184 */  jal     cosf
              
/* 00C48 809F7008 C46C0000 */  lwc1    $f12, 0x0000($v1)          ## 00000000
/* 00C4C 809F700C 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 00C50 809F7010 44818000 */  mtc1    $at, $f16                  ## $f16 = 80.00
/* 00C54 809F7014 C7AA0044 */  lwc1    $f10, 0x0044($sp)          
/* 00C58 809F7018 46008202 */  mul.s   $f8, $f16, $f0             
/* 00C5C 809F701C 46085100 */  add.s   $f4, $f10, $f8             
/* 00C60 809F7020 E7A40044 */  swc1    $f4, 0x0044($sp)           
/* 00C64 809F7024 8FA4002C */  lw      $a0, 0x002C($sp)           
.L809F7028:
/* 00C68 809F7028 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00C6C 809F702C 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFBC
/* 00C70 809F7030 00022C00 */  sll     $a1, $v0, 16               
/* 00C74 809F7034 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00C78 809F7038 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00C7C 809F703C 00052C03 */  sra     $a1, $a1, 16               
/* 00C80 809F7040 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00C84 809F7044 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00C88 809F7048 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C8C 809F704C 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00C90 809F7050 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 00C94 809F7054 A60F00B6 */  sh      $t7, 0x00B6($s0)           ## 000000B6
/* 00C98 809F7058 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00C9C 809F705C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00CA0 809F7060 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 00CA4 809F7064 03E00008 */  jr      $ra                        
/* 00CA8 809F7068 00000000 */  nop


