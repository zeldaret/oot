glabel func_80A6CAFC
/* 018AC 80A6CAFC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 018B0 80A6CB00 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 018B4 80A6CB04 AFB50028 */  sw      $s5, 0x0028($sp)           
/* 018B8 80A6CB08 AFB40024 */  sw      $s4, 0x0024($sp)           
/* 018BC 80A6CB0C AFB30020 */  sw      $s3, 0x0020($sp)           
/* 018C0 80A6CB10 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 018C4 80A6CB14 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 018C8 80A6CB18 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 018CC 80A6CB1C AFA5005C */  sw      $a1, 0x005C($sp)           
/* 018D0 80A6CB20 8C8E028C */  lw      $t6, 0x028C($a0)           ## 0000028C
/* 018D4 80A6CB24 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 018D8 80A6CB28 00C09825 */  or      $s3, $a2, $zero            ## $s3 = 00000000
/* 018DC 80A6CB2C 19C00047 */  blez    $t6, .L80A6CC4C            
/* 018E0 80A6CB30 00009025 */  or      $s2, $zero, $zero          ## $s2 = 00000000
/* 018E4 80A6CB34 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 018E8 80A6CB38 27B50040 */  addiu   $s5, $sp, 0x0040           ## $s5 = FFFFFFE8
/* 018EC 80A6CB3C 27B4004C */  addiu   $s4, $sp, 0x004C           ## $s4 = FFFFFFF4
/* 018F0 80A6CB40 8E2F0290 */  lw      $t7, 0x0290($s1)           ## 00000290
.L80A6CB44:
/* 018F4 80A6CB44 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 018F8 80A6CB48 02803025 */  or      $a2, $s4, $zero            ## $a2 = FFFFFFF4
/* 018FC 80A6CB4C 01F0C021 */  addu    $t8, $t7, $s0              
/* 01900 80A6CB50 87190028 */  lh      $t9, 0x0028($t8)           ## 00000028
/* 01904 80A6CB54 02A03825 */  or      $a3, $s5, $zero            ## $a3 = FFFFFFE8
/* 01908 80A6CB58 44992000 */  mtc1    $t9, $f4                   ## $f4 = 0.00
/* 0190C 80A6CB5C 00000000 */  nop
/* 01910 80A6CB60 468021A0 */  cvt.s.w $f6, $f4                   
/* 01914 80A6CB64 E7A6004C */  swc1    $f6, 0x004C($sp)           
/* 01918 80A6CB68 8E280290 */  lw      $t0, 0x0290($s1)           ## 00000290
/* 0191C 80A6CB6C 01104821 */  addu    $t1, $t0, $s0              
/* 01920 80A6CB70 852A002A */  lh      $t2, 0x002A($t1)           ## 0000002A
/* 01924 80A6CB74 448A4000 */  mtc1    $t2, $f8                   ## $f8 = 0.00
/* 01928 80A6CB78 00000000 */  nop
/* 0192C 80A6CB7C 468042A0 */  cvt.s.w $f10, $f8                  
/* 01930 80A6CB80 E7AA0050 */  swc1    $f10, 0x0050($sp)          
/* 01934 80A6CB84 8E2B0290 */  lw      $t3, 0x0290($s1)           ## 00000290
/* 01938 80A6CB88 01706021 */  addu    $t4, $t3, $s0              
/* 0193C 80A6CB8C 858D002C */  lh      $t5, 0x002C($t4)           ## 0000002C
/* 01940 80A6CB90 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 01944 80A6CB94 00000000 */  nop
/* 01948 80A6CB98 468084A0 */  cvt.s.w $f18, $f16                 
/* 0194C 80A6CB9C E7B20054 */  swc1    $f18, 0x0054($sp)          
/* 01950 80A6CBA0 8E2E0290 */  lw      $t6, 0x0290($s1)           ## 00000290
/* 01954 80A6CBA4 01D07821 */  addu    $t7, $t6, $s0              
/* 01958 80A6CBA8 0C029902 */  jal     func_800A6408              
/* 0195C 80A6CBAC 91E5003C */  lbu     $a1, 0x003C($t7)           ## 0000003C
/* 01960 80A6CBB0 C7A40040 */  lwc1    $f4, 0x0040($sp)           
/* 01964 80A6CBB4 8E280290 */  lw      $t0, 0x0290($s1)           ## 00000290
/* 01968 80A6CBB8 26520001 */  addiu   $s2, $s2, 0x0001           ## $s2 = 00000001
/* 0196C 80A6CBBC 4600218D */  trunc.w.s $f6, $f4                   
/* 01970 80A6CBC0 01104821 */  addu    $t1, $t0, $s0              
/* 01974 80A6CBC4 44193000 */  mfc1    $t9, $f6                   
/* 01978 80A6CBC8 00000000 */  nop
/* 0197C 80A6CBCC A5390030 */  sh      $t9, 0x0030($t1)           ## 00000030
/* 01980 80A6CBD0 C7A80044 */  lwc1    $f8, 0x0044($sp)           
/* 01984 80A6CBD4 8E2C0290 */  lw      $t4, 0x0290($s1)           ## 00000290
/* 01988 80A6CBD8 4600428D */  trunc.w.s $f10, $f8                  
/* 0198C 80A6CBDC 01906821 */  addu    $t5, $t4, $s0              
/* 01990 80A6CBE0 440B5000 */  mfc1    $t3, $f10                  
/* 01994 80A6CBE4 00000000 */  nop
/* 01998 80A6CBE8 A5AB0032 */  sh      $t3, 0x0032($t5)           ## 00000032
/* 0199C 80A6CBEC C7B00048 */  lwc1    $f16, 0x0048($sp)          
/* 019A0 80A6CBF0 8E380290 */  lw      $t8, 0x0290($s1)           ## 00000290
/* 019A4 80A6CBF4 4600848D */  trunc.w.s $f18, $f16                 
/* 019A8 80A6CBF8 03104021 */  addu    $t0, $t8, $s0              
/* 019AC 80A6CBFC 440F9000 */  mfc1    $t7, $f18                  
/* 019B0 80A6CC00 00000000 */  nop
/* 019B4 80A6CC04 A50F0034 */  sh      $t7, 0x0034($t0)           ## 00000034
/* 019B8 80A6CC08 8E390290 */  lw      $t9, 0x0290($s1)           ## 00000290
/* 019BC 80A6CC0C 03301021 */  addu    $v0, $t9, $s0              
/* 019C0 80A6CC10 8449002E */  lh      $t1, 0x002E($v0)           ## 0000002E
/* 019C4 80A6CC14 C4440038 */  lwc1    $f4, 0x0038($v0)           ## 00000038
/* 019C8 80A6CC18 26100040 */  addiu   $s0, $s0, 0x0040           ## $s0 = 00000040
/* 019CC 80A6CC1C 44893000 */  mtc1    $t1, $f6                   ## $f6 = 0.00
/* 019D0 80A6CC20 00000000 */  nop
/* 019D4 80A6CC24 46803220 */  cvt.s.w $f8, $f6                   
/* 019D8 80A6CC28 46082282 */  mul.s   $f10, $f4, $f8             
/* 019DC 80A6CC2C 4600540D */  trunc.w.s $f16, $f10                 
/* 019E0 80A6CC30 440C8000 */  mfc1    $t4, $f16                  
/* 019E4 80A6CC34 00000000 */  nop
/* 019E8 80A6CC38 A44C0036 */  sh      $t4, 0x0036($v0)           ## 00000036
/* 019EC 80A6CC3C 8E2B028C */  lw      $t3, 0x028C($s1)           ## 0000028C
/* 019F0 80A6CC40 024B082A */  slt     $at, $s2, $t3              
/* 019F4 80A6CC44 5420FFBF */  bnel    $at, $zero, .L80A6CB44     
/* 019F8 80A6CC48 8E2F0290 */  lw      $t7, 0x0290($s1)           ## 00000290
.L80A6CC4C:
/* 019FC 80A6CC4C 8FA4005C */  lw      $a0, 0x005C($sp)           
/* 01A00 80A6CC50 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01A04 80A6CC54 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01A08 80A6CC58 26260274 */  addiu   $a2, $s1, 0x0274           ## $a2 = 00000274
/* 01A0C 80A6CC5C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01A10 80A6CC60 00812821 */  addu    $a1, $a0, $at              
/* 01A14 80A6CC64 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01A18 80A6CC68 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 01A1C 80A6CC6C 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 01A20 80A6CC70 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 01A24 80A6CC74 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 01A28 80A6CC78 8FB40024 */  lw      $s4, 0x0024($sp)           
/* 01A2C 80A6CC7C 8FB50028 */  lw      $s5, 0x0028($sp)           
/* 01A30 80A6CC80 03E00008 */  jr      $ra                        
/* 01A34 80A6CC84 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
