.late_rodata
glabel D_80A9D9C0
 .word 0x4622F983

.text
glabel func_80A9CCD8
/* 00788 80A9CCD8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0078C 80A9CCDC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00790 80A9CCE0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00794 80A9CCE4 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 00798 80A9CCE8 3401FF00 */  ori     $at, $zero, 0xFF00         ## $at = 0000FF00
/* 0079C 80A9CCEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007A0 80A9CCF0 30C6FF00 */  andi    $a2, $a2, 0xFF00           ## $a2 = 00000000
/* 007A4 80A9CCF4 14C10003 */  bne     $a2, $at, .L80A9CD04       
/* 007A8 80A9CCF8 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 007AC 80A9CCFC 1000004C */  beq     $zero, $zero, .L80A9CE30   
/* 007B0 80A9CD00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9CD04:
/* 007B4 80A9CD04 01C57021 */  addu    $t6, $t6, $a1              
/* 007B8 80A9CD08 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 007BC 80A9CD0C 00067A03 */  sra     $t7, $a2,  8               
/* 007C0 80A9CD10 000FC0C0 */  sll     $t8, $t7,  3               
/* 007C4 80A9CD14 01D82021 */  addu    $a0, $t6, $t8              
/* 007C8 80A9CD18 8C830004 */  lw      $v1, 0x0004($a0)           ## 00000004
/* 007CC 80A9CD1C 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 007D0 80A9CD20 860C020A */  lh      $t4, 0x020A($s0)           ## 0000020A
/* 007D4 80A9CD24 0003C900 */  sll     $t9, $v1,  4               
/* 007D8 80A9CD28 00194702 */  srl     $t0, $t9, 28               
/* 007DC 80A9CD2C 00084880 */  sll     $t1, $t0,  2               
/* 007E0 80A9CD30 01495021 */  addu    $t2, $t2, $t1              
/* 007E4 80A9CD34 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 007E8 80A9CD38 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 007EC 80A9CD3C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 007F0 80A9CD40 00615824 */  and     $t3, $v1, $at              
/* 007F4 80A9CD44 000C6880 */  sll     $t5, $t4,  2               
/* 007F8 80A9CD48 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 007FC 80A9CD4C 01AC6823 */  subu    $t5, $t5, $t4              
/* 00800 80A9CD50 014B1021 */  addu    $v0, $t2, $t3              
/* 00804 80A9CD54 00411021 */  addu    $v0, $v0, $at              
/* 00808 80A9CD58 000D6840 */  sll     $t5, $t5,  1               
/* 0080C 80A9CD5C 004D1021 */  addu    $v0, $v0, $t5              
/* 00810 80A9CD60 844F0000 */  lh      $t7, 0x0000($v0)           ## 00000000
/* 00814 80A9CD64 844E0004 */  lh      $t6, 0x0004($v0)           ## 00000004
/* 00818 80A9CD68 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 0081C 80A9CD6C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 00820 80A9CD70 448E5000 */  mtc1    $t6, $f10                  ## $f10 = 0.00
/* 00824 80A9CD74 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00828 80A9CD78 468021A0 */  cvt.s.w $f6, $f4                   
/* 0082C 80A9CD7C AFA40034 */  sw      $a0, 0x0034($sp)           
/* 00830 80A9CD80 46805420 */  cvt.s.w $f16, $f10                 
/* 00834 80A9CD84 46083301 */  sub.s   $f12, $f6, $f8             
/* 00838 80A9CD88 46128381 */  sub.s   $f14, $f16, $f18           
/* 0083C 80A9CD8C E7AC002C */  swc1    $f12, 0x002C($sp)          
/* 00840 80A9CD90 0C03F494 */  jal     Math_atan2f              
/* 00844 80A9CD94 E7AE0028 */  swc1    $f14, 0x0028($sp)          
/* 00848 80A9CD98 3C0180AA */  lui     $at, %hi(D_80A9D9C0)       ## $at = 80AA0000
/* 0084C 80A9CD9C C424D9C0 */  lwc1    $f4, %lo(D_80A9D9C0)($at)  
/* 00850 80A9CDA0 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00854 80A9CDA4 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00858 80A9CDA8 46040182 */  mul.s   $f6, $f0, $f4              
/* 0085C 80A9CDAC 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00860 80A9CDB0 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00864 80A9CDB4 240703E8 */  addiu   $a3, $zero, 0x03E8         ## $a3 = 000003E8
/* 00868 80A9CDB8 4600320D */  trunc.w.s $f8, $f6                   
/* 0086C 80A9CDBC 44054000 */  mfc1    $a1, $f8                   
/* 00870 80A9CDC0 00000000 */  nop
/* 00874 80A9CDC4 00052C00 */  sll     $a1, $a1, 16               
/* 00878 80A9CDC8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0087C 80A9CDCC 00052C03 */  sra     $a1, $a1, 16               
/* 00880 80A9CDD0 C7AC002C */  lwc1    $f12, 0x002C($sp)          
/* 00884 80A9CDD4 C7AE0028 */  lwc1    $f14, 0x0028($sp)          
/* 00888 80A9CDD8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0088C 80A9CDDC 460C6282 */  mul.s   $f10, $f12, $f12           
/* 00890 80A9CDE0 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00894 80A9CDE4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00898 80A9CDE8 460E7402 */  mul.s   $f16, $f14, $f14           
/* 0089C 80A9CDEC 46105480 */  add.s   $f18, $f10, $f16           
/* 008A0 80A9CDF0 4604903C */  c.lt.s  $f18, $f4                  
/* 008A4 80A9CDF4 00000000 */  nop
/* 008A8 80A9CDF8 4500000D */  bc1f    .L80A9CE30                 
/* 008AC 80A9CDFC 00000000 */  nop
/* 008B0 80A9CE00 8608020A */  lh      $t0, 0x020A($s0)           ## 0000020A
/* 008B4 80A9CE04 25090001 */  addiu   $t1, $t0, 0x0001           ## $t1 = 00000001
/* 008B8 80A9CE08 A609020A */  sh      $t1, 0x020A($s0)           ## 0000020A
/* 008BC 80A9CE0C 8FAB0034 */  lw      $t3, 0x0034($sp)           
/* 008C0 80A9CE10 860A020A */  lh      $t2, 0x020A($s0)           ## 0000020A
/* 008C4 80A9CE14 916C0000 */  lbu     $t4, 0x0000($t3)           ## 00000000
/* 008C8 80A9CE18 014C082A */  slt     $at, $t2, $t4              
/* 008CC 80A9CE1C 14200002 */  bne     $at, $zero, .L80A9CE28     
/* 008D0 80A9CE20 00000000 */  nop
/* 008D4 80A9CE24 A600020A */  sh      $zero, 0x020A($s0)         ## 0000020A
.L80A9CE28:
/* 008D8 80A9CE28 10000001 */  beq     $zero, $zero, .L80A9CE30   
/* 008DC 80A9CE2C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A9CE30:
/* 008E0 80A9CE30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008E4 80A9CE34 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 008E8 80A9CE38 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 008EC 80A9CE3C 03E00008 */  jr      $ra                        
/* 008F0 80A9CE40 00000000 */  nop
