glabel func_80A70734
/* 01184 80A70734 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01188 80A70738 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0118C 80A7073C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 01190 80A70740 C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 01194 80A70744 2403000A */  addiu   $v1, $zero, 0x000A         ## $v1 = 0000000A
/* 01198 80A70748 3C0280A7 */  lui     $v0, %hi(D_80A723D4)       ## $v0 = 80A70000
/* 0119C 80A7074C 4600218D */  trunc.w.s $f6, $f4                   
/* 011A0 80A70750 244223D4 */  addiu   $v0, $v0, %lo(D_80A723D4)  ## $v0 = 80A723D4
/* 011A4 80A70754 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 011A8 80A70758 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 011AC 80A7075C 440F3000 */  mfc1    $t7, $f6                   
/* 011B0 80A70760 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 011B4 80A70764 24E6019C */  addiu   $a2, $a3, 0x019C           ## $a2 = 0000019C
/* 011B8 80A70768 A7AF0018 */  sh      $t7, 0x0018($sp)           
/* 011BC 80A7076C C4880028 */  lwc1    $f8, 0x0028($a0)           ## 00000028
/* 011C0 80A70770 87AA0018 */  lh      $t2, 0x0018($sp)           
/* 011C4 80A70774 4600428D */  trunc.w.s $f10, $f8                  
/* 011C8 80A70778 44195000 */  mfc1    $t9, $f10                  
/* 011CC 80A7077C 00000000 */  nop
/* 011D0 80A70780 A7B9001A */  sh      $t9, 0x001A($sp)           
/* 011D4 80A70784 C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 011D8 80A70788 87B9001A */  lh      $t9, 0x001A($sp)           
/* 011DC 80A7078C 4600848D */  trunc.w.s $f18, $f16                 
/* 011E0 80A70790 44099000 */  mfc1    $t1, $f18                  
/* 011E4 80A70794 00000000 */  nop
/* 011E8 80A70798 A7A9001C */  sh      $t1, 0x001C($sp)           
/* 011EC 80A7079C 848B001C */  lh      $t3, 0x001C($a0)           ## 0000001C
/* 011F0 80A707A0 316C007F */  andi    $t4, $t3, 0x007F           ## $t4 = 00000000
/* 011F4 80A707A4 01830019 */  multu   $t4, $v1                   
/* 011F8 80A707A8 00006812 */  mflo    $t5                        
/* 011FC 80A707AC 004D7021 */  addu    $t6, $v0, $t5              
/* 01200 80A707B0 85CF0000 */  lh      $t7, 0x0000($t6)           ## 00000000
/* 01204 80A707B4 014FC021 */  addu    $t8, $t2, $t7              
/* 01208 80A707B8 A7B80018 */  sh      $t8, 0x0018($sp)           
/* 0120C 80A707BC 8488001C */  lh      $t0, 0x001C($a0)           ## 0000001C
/* 01210 80A707C0 87AA001C */  lh      $t2, 0x001C($sp)           
/* 01214 80A707C4 3109007F */  andi    $t1, $t0, 0x007F           ## $t1 = 00000000
/* 01218 80A707C8 01230019 */  multu   $t1, $v1                   
/* 0121C 80A707CC 00005812 */  mflo    $t3                        
/* 01220 80A707D0 004B6021 */  addu    $t4, $v0, $t3              
/* 01224 80A707D4 858D0002 */  lh      $t5, 0x0002($t4)           ## 00000002
/* 01228 80A707D8 032D7021 */  addu    $t6, $t9, $t5              
/* 0122C 80A707DC A7AE001A */  sh      $t6, 0x001A($sp)           
/* 01230 80A707E0 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 01234 80A707E4 27B90018 */  addiu   $t9, $sp, 0x0018           ## $t9 = FFFFFFF8
/* 01238 80A707E8 31F8007F */  andi    $t8, $t7, 0x007F           ## $t8 = 00000000
/* 0123C 80A707EC 03030019 */  multu   $t8, $v1                   
/* 01240 80A707F0 00004012 */  mflo    $t0                        
/* 01244 80A707F4 00484821 */  addu    $t1, $v0, $t0              
/* 01248 80A707F8 852B0004 */  lh      $t3, 0x0004($t1)           ## 00000004
/* 0124C 80A707FC 014B6021 */  addu    $t4, $t2, $t3              
/* 01250 80A70800 A7AC001C */  sh      $t4, 0x001C($sp)           
/* 01254 80A70804 8F2E0000 */  lw      $t6, 0x0000($t9)           ## FFFFFFF8
/* 01258 80A70808 A88E01E2 */  swl     $t6, 0x01E2($a0)           ## 000001E2
/* 0125C 80A7080C B88E01E5 */  swr     $t6, 0x01E5($a0)           ## 000001E5
/* 01260 80A70810 972E0004 */  lhu     $t6, 0x0004($t9)           ## FFFFFFFC
/* 01264 80A70814 A48E01E6 */  sh      $t6, 0x01E6($a0)           ## 000001E6
/* 01268 80A70818 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0126C 80A7081C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01270 80A70820 00812821 */  addu    $a1, $a0, $at              
/* 01274 80A70824 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01278 80A70828 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 0127C 80A7082C 03E00008 */  jr      $ra                        
/* 01280 80A70830 00000000 */  nop
