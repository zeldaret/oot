glabel func_80AE6BC0
/* 00290 80AE6BC0 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00294 80AE6BC4 3C0F80AE */  lui     $t7, %hi(D_80AE71F0)       ## $t7 = 80AE0000
/* 00298 80AE6BC8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0029C 80AE6BCC AFB50030 */  sw      $s5, 0x0030($sp)           
/* 002A0 80AE6BD0 AFB4002C */  sw      $s4, 0x002C($sp)           
/* 002A4 80AE6BD4 AFB30028 */  sw      $s3, 0x0028($sp)           
/* 002A8 80AE6BD8 AFB20024 */  sw      $s2, 0x0024($sp)           
/* 002AC 80AE6BDC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 002B0 80AE6BE0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 002B4 80AE6BE4 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 002B8 80AE6BE8 AFA40088 */  sw      $a0, 0x0088($sp)           
/* 002BC 80AE6BEC 25EF71F0 */  addiu   $t7, $t7, %lo(D_80AE71F0)  ## $t7 = 80AE71F0
/* 002C0 80AE6BF0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80AE71F0
/* 002C4 80AE6BF4 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80AE71F4
/* 002C8 80AE6BF8 27AE0078 */  addiu   $t6, $sp, 0x0078           ## $t6 = FFFFFFF0
/* 002CC 80AE6BFC 3C0180AE */  lui     $at, %hi(D_80AE7230)       ## $at = 80AE0000
/* 002D0 80AE6C00 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 002D4 80AE6C04 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 002D8 80AE6C08 00A09025 */  or      $s2, $a1, $zero            ## $s2 = 00000000
/* 002DC 80AE6C0C 00C0A025 */  or      $s4, $a2, $zero            ## $s4 = 00000000
/* 002E0 80AE6C10 00E0A825 */  or      $s5, $a3, $zero            ## $s5 = 00000000
/* 002E4 80AE6C14 C4347230 */  lwc1    $f20, %lo(D_80AE7230)($at) 
/* 002E8 80AE6C18 18A0001E */  blez    $a1, .L80AE6C94            
/* 002EC 80AE6C1C 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 002F0 80AE6C20 8FB00088 */  lw      $s0, 0x0088($sp)           
/* 002F4 80AE6C24 27B30048 */  addiu   $s3, $sp, 0x0048           ## $s3 = FFFFFFC0
.L80AE6C28:
/* 002F8 80AE6C28 86080000 */  lh      $t0, 0x0000($s0)           ## 00000000
/* 002FC 80AE6C2C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 00300 80AE6C30 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFC0
/* 00304 80AE6C34 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 00308 80AE6C38 00000000 */  nop
/* 0030C 80AE6C3C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00310 80AE6C40 E7A60048 */  swc1    $f6, 0x0048($sp)           
/* 00314 80AE6C44 86090002 */  lh      $t1, 0x0002($s0)           ## 00000002
/* 00318 80AE6C48 44894000 */  mtc1    $t1, $f8                   ## $f8 = 0.00
/* 0031C 80AE6C4C 00000000 */  nop
/* 00320 80AE6C50 468042A0 */  cvt.s.w $f10, $f8                  
/* 00324 80AE6C54 E7AA004C */  swc1    $f10, 0x004C($sp)          
/* 00328 80AE6C58 860A0004 */  lh      $t2, 0x0004($s0)           ## 00000004
/* 0032C 80AE6C5C 448A8000 */  mtc1    $t2, $f16                  ## $f16 = 0.00
/* 00330 80AE6C60 00000000 */  nop
/* 00334 80AE6C64 468084A0 */  cvt.s.w $f18, $f16                 
/* 00338 80AE6C68 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 0033C 80AE6C6C E7B20050 */  swc1    $f18, 0x0050($sp)          
/* 00340 80AE6C70 4614003C */  c.lt.s  $f0, $f20                  
/* 00344 80AE6C74 00000000 */  nop
/* 00348 80AE6C78 45020004 */  bc1fl   .L80AE6C8C                 
/* 0034C 80AE6C7C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 00350 80AE6C80 46000506 */  mov.s   $f20, $f0                  
/* 00354 80AE6C84 AFB10080 */  sw      $s1, 0x0080($sp)           
/* 00358 80AE6C88 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000002
.L80AE6C8C:
/* 0035C 80AE6C8C 1632FFE6 */  bne     $s1, $s2, .L80AE6C28       
/* 00360 80AE6C90 26100006 */  addiu   $s0, $s0, 0x0006           ## $s0 = 00000006
.L80AE6C94:
/* 00364 80AE6C94 3C0180AE */  lui     $at, %hi(D_80AE7234)       ## $at = 80AE0000
/* 00368 80AE6C98 C4247234 */  lwc1    $f4, %lo(D_80AE7234)($at)  
/* 0036C 80AE6C9C 8FAB0080 */  lw      $t3, 0x0080($sp)           
/* 00370 80AE6CA0 27B30048 */  addiu   $s3, $sp, 0x0048           ## $s3 = FFFFFFC0
/* 00374 80AE6CA4 4614203E */  c.le.s  $f4, $f20                  
/* 00378 80AE6CA8 8FAD0088 */  lw      $t5, 0x0088($sp)           
/* 0037C 80AE6CAC 000B6080 */  sll     $t4, $t3,  2               
/* 00380 80AE6CB0 45020004 */  bc1fl   .L80AE6CC4                 
/* 00384 80AE6CB4 018B6023 */  subu    $t4, $t4, $t3              
/* 00388 80AE6CB8 10000076 */  beq     $zero, $zero, .L80AE6E94   
/* 0038C 80AE6CBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00390 80AE6CC0 018B6023 */  subu    $t4, $t4, $t3              
.L80AE6CC4:
/* 00394 80AE6CC4 000C6040 */  sll     $t4, $t4,  1               
/* 00398 80AE6CC8 018D8021 */  addu    $s0, $t4, $t5              
/* 0039C 80AE6CCC 860E0000 */  lh      $t6, 0x0000($s0)           ## 00000006
/* 003A0 80AE6CD0 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 003A4 80AE6CD4 00000000 */  nop
/* 003A8 80AE6CD8 46803220 */  cvt.s.w $f8, $f6                   
/* 003AC 80AE6CDC E7A8006C */  swc1    $f8, 0x006C($sp)           
/* 003B0 80AE6CE0 860F0002 */  lh      $t7, 0x0002($s0)           ## 00000008
/* 003B4 80AE6CE4 448F5000 */  mtc1    $t7, $f10                  ## $f10 = 0.00
/* 003B8 80AE6CE8 00000000 */  nop
/* 003BC 80AE6CEC 46805420 */  cvt.s.w $f16, $f10                 
/* 003C0 80AE6CF0 E7B00070 */  swc1    $f16, 0x0070($sp)          
/* 003C4 80AE6CF4 86180004 */  lh      $t8, 0x0004($s0)           ## 0000000A
/* 003C8 80AE6CF8 44989000 */  mtc1    $t8, $f18                  ## $f18 = 0.00
/* 003CC 80AE6CFC 00000000 */  nop
/* 003D0 80AE6D00 46809120 */  cvt.s.w $f4, $f18                  
/* 003D4 80AE6D04 11600015 */  beq     $t3, $zero, .L80AE6D5C     
/* 003D8 80AE6D08 E7A40074 */  swc1    $f4, 0x0074($sp)           
/* 003DC 80AE6D0C 8619FFFA */  lh      $t9, -0x0006($s0)          ## 00000000
/* 003E0 80AE6D10 02602025 */  or      $a0, $s3, $zero            ## $a0 = FFFFFFC0
/* 003E4 80AE6D14 27A5006C */  addiu   $a1, $sp, 0x006C           ## $a1 = FFFFFFE4
/* 003E8 80AE6D18 44993000 */  mtc1    $t9, $f6                   ## $f6 = 0.00
/* 003EC 80AE6D1C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 003F0 80AE6D20 27A70054 */  addiu   $a3, $sp, 0x0054           ## $a3 = FFFFFFCC
/* 003F4 80AE6D24 46803220 */  cvt.s.w $f8, $f6                   
/* 003F8 80AE6D28 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 003FC 80AE6D2C 8608FFFC */  lh      $t0, -0x0004($s0)          ## 00000002
/* 00400 80AE6D30 44885000 */  mtc1    $t0, $f10                  ## $f10 = 0.00
/* 00404 80AE6D34 00000000 */  nop
/* 00408 80AE6D38 46805420 */  cvt.s.w $f16, $f10                 
/* 0040C 80AE6D3C E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 00410 80AE6D40 8609FFFE */  lh      $t1, -0x0002($s0)          ## 00000004
/* 00414 80AE6D44 44899000 */  mtc1    $t1, $f18                  ## $f18 = 0.00
/* 00418 80AE6D48 00000000 */  nop
/* 0041C 80AE6D4C 46809120 */  cvt.s.w $f4, $f18                  
/* 00420 80AE6D50 0C2B9A95 */  jal     func_80AE6A54              
/* 00424 80AE6D54 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00428 80AE6D58 AFA20078 */  sw      $v0, 0x0078($sp)           
.L80AE6D5C:
/* 0042C 80AE6D5C 8FAA0080 */  lw      $t2, 0x0080($sp)           
/* 00430 80AE6D60 254C0001 */  addiu   $t4, $t2, 0x0001           ## $t4 = 00000001
/* 00434 80AE6D64 51920016 */  beql    $t4, $s2, .L80AE6DC0       
/* 00438 80AE6D68 8FB80078 */  lw      $t8, 0x0078($sp)           
/* 0043C 80AE6D6C 860D0006 */  lh      $t5, 0x0006($s0)           ## 0000000C
/* 00440 80AE6D70 27A4006C */  addiu   $a0, $sp, 0x006C           ## $a0 = FFFFFFE4
/* 00444 80AE6D74 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFC0
/* 00448 80AE6D78 448D3000 */  mtc1    $t5, $f6                   ## $f6 = 0.00
/* 0044C 80AE6D7C 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 00450 80AE6D80 27A70060 */  addiu   $a3, $sp, 0x0060           ## $a3 = FFFFFFD8
/* 00454 80AE6D84 46803220 */  cvt.s.w $f8, $f6                   
/* 00458 80AE6D88 E7A80048 */  swc1    $f8, 0x0048($sp)           
/* 0045C 80AE6D8C 860E0008 */  lh      $t6, 0x0008($s0)           ## 0000000E
/* 00460 80AE6D90 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00464 80AE6D94 00000000 */  nop
/* 00468 80AE6D98 46805420 */  cvt.s.w $f16, $f10                 
/* 0046C 80AE6D9C E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 00470 80AE6DA0 860F000A */  lh      $t7, 0x000A($s0)           ## 00000010
/* 00474 80AE6DA4 448F9000 */  mtc1    $t7, $f18                  ## $f18 = 0.00
/* 00478 80AE6DA8 00000000 */  nop
/* 0047C 80AE6DAC 46809120 */  cvt.s.w $f4, $f18                  
/* 00480 80AE6DB0 0C2B9A95 */  jal     func_80AE6A54              
/* 00484 80AE6DB4 E7A40050 */  swc1    $f4, 0x0050($sp)           
/* 00488 80AE6DB8 AFA2007C */  sw      $v0, 0x007C($sp)           
/* 0048C 80AE6DBC 8FB80078 */  lw      $t8, 0x0078($sp)           
.L80AE6DC0:
/* 00490 80AE6DC0 8FAB007C */  lw      $t3, 0x007C($sp)           
/* 00494 80AE6DC4 8FB90078 */  lw      $t9, 0x0078($sp)           
/* 00498 80AE6DC8 1300001A */  beq     $t8, $zero, .L80AE6E34     
/* 0049C 80AE6DCC 00000000 */  nop
/* 004A0 80AE6DD0 11600018 */  beq     $t3, $zero, .L80AE6E34     
/* 004A4 80AE6DD4 27A40054 */  addiu   $a0, $sp, 0x0054           ## $a0 = FFFFFFCC
/* 004A8 80AE6DD8 27A50060 */  addiu   $a1, $sp, 0x0060           ## $a1 = FFFFFFD8
/* 004AC 80AE6DDC 02803025 */  or      $a2, $s4, $zero            ## $a2 = 00000000
/* 004B0 80AE6DE0 0C2B9A95 */  jal     func_80AE6A54              
/* 004B4 80AE6DE4 02A03825 */  or      $a3, $s5, $zero            ## $a3 = 00000000
/* 004B8 80AE6DE8 14400029 */  bne     $v0, $zero, .L80AE6E90     
/* 004BC 80AE6DEC C7A60054 */  lwc1    $f6, 0x0054($sp)           
/* 004C0 80AE6DF0 C7A80060 */  lwc1    $f8, 0x0060($sp)           
/* 004C4 80AE6DF4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 004C8 80AE6DF8 44810000 */  mtc1    $at, $f0                   ## $f0 = 0.50
/* 004CC 80AE6DFC 46083280 */  add.s   $f10, $f6, $f8             
/* 004D0 80AE6E00 46005402 */  mul.s   $f16, $f10, $f0            
/* 004D4 80AE6E04 E6B00000 */  swc1    $f16, 0x0000($s5)          ## 00000000
/* 004D8 80AE6E08 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 004DC 80AE6E0C C7B20058 */  lwc1    $f18, 0x0058($sp)          
/* 004E0 80AE6E10 46049180 */  add.s   $f6, $f18, $f4             
/* 004E4 80AE6E14 46003202 */  mul.s   $f8, $f6, $f0              
/* 004E8 80AE6E18 E6A80004 */  swc1    $f8, 0x0004($s5)           ## 00000004
/* 004EC 80AE6E1C C7B00068 */  lwc1    $f16, 0x0068($sp)          
/* 004F0 80AE6E20 C7AA005C */  lwc1    $f10, 0x005C($sp)          
/* 004F4 80AE6E24 46105480 */  add.s   $f18, $f10, $f16           
/* 004F8 80AE6E28 46009102 */  mul.s   $f4, $f18, $f0             
/* 004FC 80AE6E2C 10000018 */  beq     $zero, $zero, .L80AE6E90   
/* 00500 80AE6E30 E6A40008 */  swc1    $f4, 0x0008($s5)           ## 00000008
.L80AE6E34:
/* 00504 80AE6E34 13200008 */  beq     $t9, $zero, .L80AE6E58     
/* 00508 80AE6E38 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 0050C 80AE6E3C C7A60054 */  lwc1    $f6, 0x0054($sp)           
/* 00510 80AE6E40 E6A60000 */  swc1    $f6, 0x0000($s5)           ## 00000000
/* 00514 80AE6E44 C7A80058 */  lwc1    $f8, 0x0058($sp)           
/* 00518 80AE6E48 E6A80004 */  swc1    $f8, 0x0004($s5)           ## 00000004
/* 0051C 80AE6E4C C7AA005C */  lwc1    $f10, 0x005C($sp)          
/* 00520 80AE6E50 1000000F */  beq     $zero, $zero, .L80AE6E90   
/* 00524 80AE6E54 E6AA0008 */  swc1    $f10, 0x0008($s5)          ## 00000008
.L80AE6E58:
/* 00528 80AE6E58 11000008 */  beq     $t0, $zero, .L80AE6E7C     
/* 0052C 80AE6E5C C7A6006C */  lwc1    $f6, 0x006C($sp)           
/* 00530 80AE6E60 C7B00060 */  lwc1    $f16, 0x0060($sp)          
/* 00534 80AE6E64 E6B00000 */  swc1    $f16, 0x0000($s5)          ## 00000000
/* 00538 80AE6E68 C7B20064 */  lwc1    $f18, 0x0064($sp)          
/* 0053C 80AE6E6C E6B20004 */  swc1    $f18, 0x0004($s5)          ## 00000004
/* 00540 80AE6E70 C7A40068 */  lwc1    $f4, 0x0068($sp)           
/* 00544 80AE6E74 10000006 */  beq     $zero, $zero, .L80AE6E90   
/* 00548 80AE6E78 E6A40008 */  swc1    $f4, 0x0008($s5)           ## 00000008
.L80AE6E7C:
/* 0054C 80AE6E7C E6A60000 */  swc1    $f6, 0x0000($s5)           ## 00000000
/* 00550 80AE6E80 C7A80070 */  lwc1    $f8, 0x0070($sp)           
/* 00554 80AE6E84 E6A80004 */  swc1    $f8, 0x0004($s5)           ## 00000004
/* 00558 80AE6E88 C7AA0074 */  lwc1    $f10, 0x0074($sp)          
/* 0055C 80AE6E8C E6AA0008 */  swc1    $f10, 0x0008($s5)          ## 00000008
.L80AE6E90:
/* 00560 80AE6E90 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AE6E94:
/* 00564 80AE6E94 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 00568 80AE6E98 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 0056C 80AE6E9C 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00570 80AE6EA0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00574 80AE6EA4 8FB20024 */  lw      $s2, 0x0024($sp)           
/* 00578 80AE6EA8 8FB30028 */  lw      $s3, 0x0028($sp)           
/* 0057C 80AE6EAC 8FB4002C */  lw      $s4, 0x002C($sp)           
/* 00580 80AE6EB0 8FB50030 */  lw      $s5, 0x0030($sp)           
/* 00584 80AE6EB4 03E00008 */  jr      $ra                        
/* 00588 80AE6EB8 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


