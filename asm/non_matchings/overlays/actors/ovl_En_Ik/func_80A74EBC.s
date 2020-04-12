glabel func_80A74EBC
/* 00BAC 80A74EBC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BB0 80A74EC0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BB4 80A74EC4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BB8 80A74EC8 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00BBC 80A74ECC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00BC0 80A74ED0 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 00BC4 80A74ED4 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00BC8 80A74ED8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BCC 80A74EDC 3C0141A8 */  lui     $at, 0x41A8                ## $at = 41A80000
/* 00BD0 80A74EE0 46002032 */  c.eq.s  $f4, $f0                   
/* 00BD4 80A74EE4 00000000 */  nop
/* 00BD8 80A74EE8 45020006 */  bc1fl   .L80A74F04                 
/* 00BDC 80A74EEC 44813000 */  mtc1    $at, $f6                   ## $f6 = 21.00
/* 00BE0 80A74EF0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BE4 80A74EF4 24053929 */  addiu   $a1, $zero, 0x3929         ## $a1 = 00003929
/* 00BE8 80A74EF8 10000031 */  beq     $zero, $zero, .L80A74FC0   
/* 00BEC 80A74EFC C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00BF0 80A74F00 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80A74F04:
/* 00BF4 80A74F04 00000000 */  nop
/* 00BF8 80A74F08 46003032 */  c.eq.s  $f6, $f0                   
/* 00BFC 80A74F0C 00000000 */  nop
/* 00C00 80A74F10 4502002C */  bc1fl   .L80A74FC4                 
/* 00C04 80A74F14 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 00C08 80A74F18 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00C0C 80A74F1C 248406A4 */  addiu   $a0, $a0, 0x06A4           ## $a0 = 000006A4
/* 00C10 80A74F20 00042400 */  sll     $a0, $a0, 16               
/* 00C14 80A74F24 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00C18 80A74F28 00042403 */  sra     $a0, $a0, 16               
/* 00C1C 80A74F2C 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00C20 80A74F30 44814000 */  mtc1    $at, $f8                   ## $f8 = 70.00
/* 00C24 80A74F34 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 00C28 80A74F38 46080282 */  mul.s   $f10, $f0, $f8             
/* 00C2C 80A74F3C 46105480 */  add.s   $f18, $f10, $f16           
/* 00C30 80A74F40 E7B2002C */  swc1    $f18, 0x002C($sp)          
/* 00C34 80A74F44 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 00C38 80A74F48 248406A4 */  addiu   $a0, $a0, 0x06A4           ## $a0 = 000006A4
/* 00C3C 80A74F4C 00042400 */  sll     $a0, $a0, 16               
/* 00C40 80A74F50 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00C44 80A74F54 00042403 */  sra     $a0, $a0, 16               
/* 00C48 80A74F58 3C01428C */  lui     $at, 0x428C                ## $at = 428C0000
/* 00C4C 80A74F5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 70.00
/* 00C50 80A74F60 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00C54 80A74F64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C58 80A74F68 46040182 */  mul.s   $f6, $f0, $f4              
/* 00C5C 80A74F6C 240539AE */  addiu   $a1, $zero, 0x39AE         ## $a1 = 000039AE
/* 00C60 80A74F70 46083280 */  add.s   $f10, $f6, $f8             
/* 00C64 80A74F74 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 00C68 80A74F78 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 00C6C 80A74F7C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C70 80A74F80 E7B00030 */  swc1    $f16, 0x0030($sp)          
/* 00C74 80A74F84 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00C78 80A74F88 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00C7C 80A74F8C 24060019 */  addiu   $a2, $zero, 0x0019         ## $a2 = 00000019
/* 00C80 80A74F90 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00C84 80A74F94 0C016A87 */  jal     func_8005AA1C              
/* 00C88 80A74F98 248401E0 */  addiu   $a0, $a0, 0x01E0           ## $a0 = 000001E0
/* 00C8C 80A74F9C C60C0090 */  lwc1    $f12, 0x0090($s0)          ## 00000090
/* 00C90 80A74FA0 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00C94 80A74FA4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00C98 80A74FA8 0C02A800 */  jal     func_800AA000              
/* 00C9C 80A74FAC 24070096 */  addiu   $a3, $zero, 0x0096         ## $a3 = 00000096
/* 00CA0 80A74FB0 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 00CA4 80A74FB4 0C018B35 */  jal     func_80062CD4              
/* 00CA8 80A74FB8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00CAC 80A74FBC C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
.L80A74FC0:
/* 00CB0 80A74FC0 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
.L80A74FC4:
/* 00CB4 80A74FC4 44819000 */  mtc1    $at, $f18                  ## $f18 = 17.00
/* 00CB8 80A74FC8 3C0141B8 */  lui     $at, 0x41B8                ## $at = 41B80000
/* 00CBC 80A74FCC 4600903C */  c.lt.s  $f18, $f0                  
/* 00CC0 80A74FD0 00000000 */  nop
/* 00CC4 80A74FD4 4502000A */  bc1fl   .L80A75000                 
/* 00CC8 80A74FD8 920F02FB */  lbu     $t7, 0x02FB($s0)           ## 000002FB
/* 00CCC 80A74FDC 44812000 */  mtc1    $at, $f4                   ## $f4 = 23.00
/* 00CD0 80A74FE0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00CD4 80A74FE4 4604003C */  c.lt.s  $f0, $f4                   
/* 00CD8 80A74FE8 00000000 */  nop
/* 00CDC 80A74FEC 45020004 */  bc1fl   .L80A75000                 
/* 00CE0 80A74FF0 920F02FB */  lbu     $t7, 0x02FB($s0)           ## 000002FB
/* 00CE4 80A74FF4 10000012 */  beq     $zero, $zero, .L80A75040   
/* 00CE8 80A74FF8 A20E02FE */  sb      $t6, 0x02FE($s0)           ## 000002FE
/* 00CEC 80A74FFC 920F02FB */  lbu     $t7, 0x02FB($s0)           ## 000002FB
.L80A75000:
/* 00CF0 80A75000 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00CF4 80A75004 51E0000E */  beql    $t7, $zero, .L80A75040     
/* 00CF8 80A75008 A20002FE */  sb      $zero, 0x02FE($s0)         ## 000002FE
/* 00CFC 80A7500C 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00D00 80A75010 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00D04 80A75014 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D08 80A75018 4606003C */  c.lt.s  $f0, $f6                   
/* 00D0C 80A7501C 240705DC */  addiu   $a3, $zero, 0x05DC         ## $a3 = 000005DC
/* 00D10 80A75020 45020007 */  bc1fl   .L80A75040                 
/* 00D14 80A75024 A20002FE */  sb      $zero, 0x02FE($s0)         ## 000002FE
/* 00D18 80A75028 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 00D1C 80A7502C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00D20 80A75030 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00D24 80A75034 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00D28 80A75038 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 00D2C 80A7503C A20002FE */  sb      $zero, 0x02FE($s0)         ## 000002FE
.L80A75040:
/* 00D30 80A75040 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D34 80A75044 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D38 80A75048 50400004 */  beql    $v0, $zero, .L80A7505C     
/* 00D3C 80A7504C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00D40 80A75050 0C29D41B */  jal     func_80A7506C              
/* 00D44 80A75054 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D48 80A75058 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A7505C:
/* 00D4C 80A7505C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00D50 80A75060 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00D54 80A75064 03E00008 */  jr      $ra                        
/* 00D58 80A75068 00000000 */  nop
