glabel func_80A44940
/* 01C10 80A44940 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01C14 80A44944 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C18 80A44948 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01C1C 80A4494C C4840024 */  lwc1    $f4, 0x0024($a0)           ## 00000024
/* 01C20 80A44950 3C0D80A5 */  lui     $t5, %hi(D_80A48170)       ## $t5 = 80A50000
/* 01C24 80A44954 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01C28 80A44958 4600218D */  trunc.w.s $f6, $f4                   
/* 01C2C 80A4495C 440F3000 */  mfc1    $t7, $f6                   
/* 01C30 80A44960 00000000 */  nop
/* 01C34 80A44964 A7AF0028 */  sh      $t7, 0x0028($sp)           
/* 01C38 80A44968 C4880028 */  lwc1    $f8, 0x0028($a0)           ## 00000028
/* 01C3C 80A4496C 4600428D */  trunc.w.s $f10, $f8                  
/* 01C40 80A44970 44195000 */  mfc1    $t9, $f10                  
/* 01C44 80A44974 00000000 */  nop
/* 01C48 80A44978 A7B9002A */  sh      $t9, 0x002A($sp)           
/* 01C4C 80A4497C C490002C */  lwc1    $f16, 0x002C($a0)          ## 0000002C
/* 01C50 80A44980 4600848D */  trunc.w.s $f18, $f16                 
/* 01C54 80A44984 44099000 */  mfc1    $t1, $f18                  
/* 01C58 80A44988 00000000 */  nop
/* 01C5C 80A4498C A7A9002C */  sh      $t1, 0x002C($sp)           
/* 01C60 80A44990 848A001C */  lh      $t2, 0x001C($a0)           ## 0000001C
/* 01C64 80A44994 314B001F */  andi    $t3, $t2, 0x001F           ## $t3 = 00000000
/* 01C68 80A44998 000B6080 */  sll     $t4, $t3,  2               
/* 01C6C 80A4499C 018B6021 */  addu    $t4, $t4, $t3              
/* 01C70 80A449A0 000C6040 */  sll     $t4, $t4,  1               
/* 01C74 80A449A4 01AC6821 */  addu    $t5, $t5, $t4              
/* 01C78 80A449A8 85AD8170 */  lh      $t5, %lo(D_80A48170)($t5)  
/* 01C7C 80A449AC 448D2000 */  mtc1    $t5, $f4                   ## $f4 = -0.00
/* 01C80 80A449B0 00000000 */  nop
/* 01C84 80A449B4 468021A0 */  cvt.s.w $f6, $f4                   
/* 01C88 80A449B8 E7A60024 */  swc1    $f6, 0x0024($sp)           
/* 01C8C 80A449BC 848400B6 */  lh      $a0, 0x00B6($a0)           ## 000000B6
/* 01C90 80A449C0 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 01C94 80A449C4 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 01C98 80A449C8 C7A80024 */  lwc1    $f8, 0x0024($sp)           
/* 01C9C 80A449CC 87AE0028 */  lh      $t6, 0x0028($sp)           
/* 01CA0 80A449D0 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 01CA4 80A449D4 46004282 */  mul.s   $f10, $f8, $f0             
/* 01CA8 80A449D8 4600540D */  trunc.w.s $f16, $f10                 
/* 01CAC 80A449DC 44088000 */  mfc1    $t0, $f16                  
/* 01CB0 80A449E0 00000000 */  nop
/* 01CB4 80A449E4 01C84821 */  addu    $t1, $t6, $t0              
/* 01CB8 80A449E8 A7A90028 */  sh      $t1, 0x0028($sp)           
/* 01CBC 80A449EC 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 01CC0 80A449F0 84E400B6 */  lh      $a0, 0x00B6($a3)           ## 000000B6
/* 01CC4 80A449F4 C7B20024 */  lwc1    $f18, 0x0024($sp)          
/* 01CC8 80A449F8 87AA002C */  lh      $t2, 0x002C($sp)           
/* 01CCC 80A449FC 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 01CD0 80A44A00 46009102 */  mul.s   $f4, $f18, $f0             
/* 01CD4 80A44A04 3C0B80A5 */  lui     $t3, %hi(D_80A4816E)       ## $t3 = 80A50000
/* 01CD8 80A44A08 87B9002A */  lh      $t9, 0x002A($sp)           
/* 01CDC 80A44A0C 27AD0028 */  addiu   $t5, $sp, 0x0028           ## $t5 = FFFFFFF8
/* 01CE0 80A44A10 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01CE4 80A44A14 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01CE8 80A44A18 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01CEC 80A44A1C 4600218D */  trunc.w.s $f6, $f4                   
/* 01CF0 80A44A20 24E601BC */  addiu   $a2, $a3, 0x01BC           ## $a2 = 000001BC
/* 01CF4 80A44A24 00812821 */  addu    $a1, $a0, $at              
/* 01CF8 80A44A28 440F3000 */  mfc1    $t7, $f6                   
/* 01CFC 80A44A2C 00000000 */  nop
/* 01D00 80A44A30 014FC021 */  addu    $t8, $t2, $t7              
/* 01D04 80A44A34 A7B8002C */  sh      $t8, 0x002C($sp)           
/* 01D08 80A44A38 84EE001C */  lh      $t6, 0x001C($a3)           ## 0000001C
/* 01D0C 80A44A3C 31C8001F */  andi    $t0, $t6, 0x001F           ## $t0 = 00000000
/* 01D10 80A44A40 00084880 */  sll     $t1, $t0,  2               
/* 01D14 80A44A44 01284821 */  addu    $t1, $t1, $t0              
/* 01D18 80A44A48 00094840 */  sll     $t1, $t1,  1               
/* 01D1C 80A44A4C 01695821 */  addu    $t3, $t3, $t1              
/* 01D20 80A44A50 856B816E */  lh      $t3, %lo(D_80A4816E)($t3)  
/* 01D24 80A44A54 032B6021 */  addu    $t4, $t9, $t3              
/* 01D28 80A44A58 A7AC002A */  sh      $t4, 0x002A($sp)           
/* 01D2C 80A44A5C 8DAF0000 */  lw      $t7, 0x0000($t5)           ## FFFFFFF8
/* 01D30 80A44A60 A8EF0202 */  swl     $t7, 0x0202($a3)           ## 00000202
/* 01D34 80A44A64 B8EF0205 */  swr     $t7, 0x0205($a3)           ## 00000205
/* 01D38 80A44A68 95AF0004 */  lhu     $t7, 0x0004($t5)           ## FFFFFFFC
/* 01D3C 80A44A6C A4EF0206 */  sh      $t7, 0x0206($a3)           ## 00000206
/* 01D40 80A44A70 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01D44 80A44A74 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01D48 80A44A78 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01D4C 80A44A7C 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01D50 80A44A80 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01D54 80A44A84 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 01D58 80A44A88 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 01D5C 80A44A8C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D60 80A44A90 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01D64 80A44A94 03E00008 */  jr      $ra                        
/* 01D68 80A44A98 00000000 */  nop
