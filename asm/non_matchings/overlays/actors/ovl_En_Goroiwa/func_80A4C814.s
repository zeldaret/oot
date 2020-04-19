.late_rodata
glabel D_80A4E06C
    .float 0.01

.text
glabel func_80A4C814
/* 00B74 80A4C814 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00B78 80A4C818 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B7C 80A4C81C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B80 80A4C820 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00B84 80A4C824 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00B88 80A4C828 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00B8C 80A4C82C 01E57821 */  addu    $t7, $t7, $a1              
/* 00B90 80A4C830 8DEF1E08 */  lw      $t7, 0x1E08($t7)           ## 00011E08
/* 00B94 80A4C834 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 00B98 80A4C838 001958C0 */  sll     $t3, $t9,  3               
/* 00B9C 80A4C83C 01EB4021 */  addu    $t0, $t7, $t3              
/* 00BA0 80A4C840 848F01CE */  lh      $t7, 0x01CE($a0)           ## 000001CE
/* 00BA4 80A4C844 8D030004 */  lw      $v1, 0x0004($t0)           ## 00000004
/* 00BA8 80A4C848 240A0006 */  addiu   $t2, $zero, 0x0006         ## $t2 = 00000006
/* 00BAC 80A4C84C 01EA0019 */  multu   $t7, $t2                   
/* 00BB0 80A4C850 00036100 */  sll     $t4, $v1,  4               
/* 00BB4 80A4C854 000C6F02 */  srl     $t5, $t4, 28               
/* 00BB8 80A4C858 000D7080 */  sll     $t6, $t5,  2               
/* 00BBC 80A4C85C 3C188016 */  lui     $t8, %hi(gSegments)
/* 00BC0 80A4C860 030EC021 */  addu    $t8, $t8, $t6              
/* 00BC4 80A4C864 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00BC8 80A4C868 8F186FA8 */  lw      $t8, %lo(gSegments)($t8)
/* 00BCC 80A4C86C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00BD0 80A4C870 0061C824 */  and     $t9, $v1, $at              
/* 00BD4 80A4C874 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00BD8 80A4C878 03193821 */  addu    $a3, $t8, $t9              
/* 00BDC 80A4C87C 00005812 */  mflo    $t3                        
/* 00BE0 80A4C880 00E13821 */  addu    $a3, $a3, $at              
/* 00BE4 80A4C884 00EB1021 */  addu    $v0, $a3, $t3              
/* 00BE8 80A4C888 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
/* 00BEC 80A4C88C 848C01CC */  lh      $t4, 0x01CC($a0)           ## 000001CC
/* 00BF0 80A4C890 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00BF4 80A4C894 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00BF8 80A4C898 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00BFC 80A4C89C 018A0019 */  multu   $t4, $t2                   
/* 00C00 80A4C8A0 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C04 80A4C8A4 3C0180A5 */  lui     $at, %hi(D_80A4E06C)       ## $at = 80A50000
/* 00C08 80A4C8A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C0C 80A4C8AC 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00C10 80A4C8B0 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00C14 80A4C8B4 24840068 */  addiu   $a0, $a0, 0x0068           ## $a0 = 00000068
/* 00C18 80A4C8B8 E7A6002C */  swc1    $f6, 0x002C($sp)           
/* 00C1C 80A4C8BC 84580002 */  lh      $t8, 0x0002($v0)           ## 00000002
/* 00C20 80A4C8C0 00006812 */  mflo    $t5                        
/* 00C24 80A4C8C4 44984000 */  mtc1    $t8, $f8                   ## $f8 = -0.00
/* 00C28 80A4C8C8 00ED4821 */  addu    $t1, $a3, $t5              
/* 00C2C 80A4C8CC 468042A0 */  cvt.s.w $f10, $f8                  
/* 00C30 80A4C8D0 C428E06C */  lwc1    $f8, %lo(D_80A4E06C)($at)  
/* 00C34 80A4C8D4 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 00C38 80A4C8D8 84590004 */  lh      $t9, 0x0004($v0)           ## 00000004
/* 00C3C 80A4C8DC 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 00C40 80A4C8E0 00000000 */  nop
/* 00C44 80A4C8E4 468084A0 */  cvt.s.w $f18, $f16                 
/* 00C48 80A4C8E8 E7B20034 */  swc1    $f18, 0x0034($sp)          
/* 00C4C 80A4C8EC 85EB116C */  lh      $t3, 0x116C($t7)           ## 8016116C
/* 00C50 80A4C8F0 AFA90048 */  sw      $t1, 0x0048($sp)           
/* 00C54 80A4C8F4 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00C58 80A4C8F8 00000000 */  nop
/* 00C5C 80A4C8FC 468021A0 */  cvt.s.w $f6, $f4                   
/* 00C60 80A4C900 46083282 */  mul.s   $f10, $f6, $f8             
/* 00C64 80A4C904 44055000 */  mfc1    $a1, $f10                  
/* 00C68 80A4C908 0C01DE80 */  jal     Math_ApproxF
              
/* 00C6C 80A4C90C 00000000 */  nop
/* 00C70 80A4C910 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00C74 80A4C914 AFA50020 */  sw      $a1, 0x0020($sp)           
/* 00C78 80A4C918 0C032D94 */  jal     func_800CB650              
/* 00C7C 80A4C91C 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFD4
/* 00C80 80A4C920 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00C84 80A4C924 44818000 */  mtc1    $at, $f16                  ## $f16 = 25.00
/* 00C88 80A4C928 8FA90048 */  lw      $t1, 0x0048($sp)           
/* 00C8C 80A4C92C 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFD4
/* 00C90 80A4C930 4610003C */  c.lt.s  $f0, $f16                  
/* 00C94 80A4C934 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 00C98 80A4C938 45020006 */  bc1fl   .L80A4C954                 
/* 00C9C 80A4C93C 852C0000 */  lh      $t4, 0x0000($t1)           ## 00000000
/* 00CA0 80A4C940 0C01DFB4 */  jal     Math_Vec3f_Diff
              ## Vec3f_Sub
/* 00CA4 80A4C944 27A60038 */  addiu   $a2, $sp, 0x0038           ## $a2 = FFFFFFE0
/* 00CA8 80A4C948 10000017 */  beq     $zero, $zero, .L80A4C9A8   
/* 00CAC 80A4C94C 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 00CB0 80A4C950 852C0000 */  lh      $t4, 0x0000($t1)           ## 00000000
.L80A4C954:
/* 00CB4 80A4C954 C7B2002C */  lwc1    $f18, 0x002C($sp)          
/* 00CB8 80A4C958 C7AA0030 */  lwc1    $f10, 0x0030($sp)          
/* 00CBC 80A4C95C 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 00CC0 80A4C960 00000000 */  nop
/* 00CC4 80A4C964 468021A0 */  cvt.s.w $f6, $f4                   
/* 00CC8 80A4C968 46069201 */  sub.s   $f8, $f18, $f6             
/* 00CCC 80A4C96C C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 00CD0 80A4C970 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 00CD4 80A4C974 852D0002 */  lh      $t5, 0x0002($t1)           ## 00000002
/* 00CD8 80A4C978 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 00CDC 80A4C97C 00000000 */  nop
/* 00CE0 80A4C980 46808120 */  cvt.s.w $f4, $f16                  
/* 00CE4 80A4C984 46045481 */  sub.s   $f18, $f10, $f4            
/* 00CE8 80A4C988 E7B2003C */  swc1    $f18, 0x003C($sp)          
/* 00CEC 80A4C98C 852E0004 */  lh      $t6, 0x0004($t1)           ## 00000004
/* 00CF0 80A4C990 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 00CF4 80A4C994 00000000 */  nop
/* 00CF8 80A4C998 46804420 */  cvt.s.w $f16, $f8                  
/* 00CFC 80A4C99C 46103281 */  sub.s   $f10, $f6, $f16            
/* 00D00 80A4C9A0 E7AA0040 */  swc1    $f10, 0x0040($sp)          
/* 00D04 80A4C9A4 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
.L80A4C9A8:
/* 00D08 80A4C9A8 0C292F63 */  jal     func_80A4BD8C              
/* 00D0C 80A4C9AC 27A50038 */  addiu   $a1, $sp, 0x0038           ## $a1 = FFFFFFE0
/* 00D10 80A4C9B0 C6020068 */  lwc1    $f2, 0x0068($s0)           ## 00000068
/* 00D14 80A4C9B4 C604005C */  lwc1    $f4, 0x005C($s0)           ## 0000005C
/* 00D18 80A4C9B8 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 00D1C 80A4C9BC C6100064 */  lwc1    $f16, 0x0064($s0)          ## 00000064
/* 00D20 80A4C9C0 46022482 */  mul.s   $f18, $f4, $f2             
/* 00D24 80A4C9C4 E612005C */  swc1    $f18, 0x005C($s0)          ## 0000005C
/* 00D28 80A4C9C8 46024182 */  mul.s   $f6, $f8, $f2              
/* 00D2C 80A4C9CC C600005C */  lwc1    $f0, 0x005C($s0)           ## 0000005C
/* 00D30 80A4C9D0 46028282 */  mul.s   $f10, $f16, $f2            
/* 00D34 80A4C9D4 46000005 */  abs.s   $f0, $f0                   
/* 00D38 80A4C9D8 44060000 */  mfc1    $a2, $f0                   
/* 00D3C 80A4C9DC E6060060 */  swc1    $f6, 0x0060($s0)           ## 00000060
/* 00D40 80A4C9E0 E60A0064 */  swc1    $f10, 0x0064($s0)          ## 00000064
/* 00D44 80A4C9E4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00D48 80A4C9E8 0C01DE80 */  jal     Math_ApproxF
              
/* 00D4C 80A4C9EC 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00D50 80A4C9F0 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 00D54 80A4C9F4 30430001 */  andi    $v1, $v0, 0x0001           ## $v1 = 00000000
/* 00D58 80A4C9F8 AFA30044 */  sw      $v1, 0x0044($sp)           
/* 00D5C 80A4C9FC 46000005 */  abs.s   $f0, $f0                   
/* 00D60 80A4CA00 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 00D64 80A4CA04 44060000 */  mfc1    $a2, $f0                   
/* 00D68 80A4CA08 0C01DE80 */  jal     Math_ApproxF
              
/* 00D6C 80A4CA0C 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00D70 80A4CA10 C6000064 */  lwc1    $f0, 0x0064($s0)           ## 00000064
/* 00D74 80A4CA14 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00D78 80A4CA18 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 00D7C 80A4CA1C 46000005 */  abs.s   $f0, $f0                   
/* 00D80 80A4CA20 00621824 */  and     $v1, $v1, $v0              
/* 00D84 80A4CA24 44060000 */  mfc1    $a2, $f0                   
/* 00D88 80A4CA28 AFA30044 */  sw      $v1, 0x0044($sp)           
/* 00D8C 80A4CA2C 0C01DE80 */  jal     Math_ApproxF
              
/* 00D90 80A4CA30 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00D94 80A4CA34 8FA30044 */  lw      $v1, 0x0044($sp)           
/* 00D98 80A4CA38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D9C 80A4CA3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DA0 80A4CA40 00621824 */  and     $v1, $v1, $v0              
/* 00DA4 80A4CA44 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00DA8 80A4CA48 03E00008 */  jr      $ra                        
/* 00DAC 80A4CA4C 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
