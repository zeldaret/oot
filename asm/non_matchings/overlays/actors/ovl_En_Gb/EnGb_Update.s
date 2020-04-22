glabel EnGb_Update
/* 00BF4 80A2FD74 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BF8 80A2FD78 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00BFC 80A2FD7C AFB50028 */  sw      $s5, 0x0028($sp)           
/* 00C00 80A2FD80 AFB40024 */  sw      $s4, 0x0024($sp)           
/* 00C04 80A2FD84 AFB30020 */  sw      $s3, 0x0020($sp)           
/* 00C08 80A2FD88 AFB2001C */  sw      $s2, 0x001C($sp)           
/* 00C0C 80A2FD8C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00C10 80A2FD90 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00C14 80A2FD94 848E0380 */  lh      $t6, 0x0380($a0)           ## 00000380
/* 00C18 80A2FD98 00809025 */  or      $s2, $a0, $zero            ## $s2 = 00000000
/* 00C1C 80A2FD9C 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 00C20 80A2FDA0 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 00C24 80A2FDA4 A48F0380 */  sh      $t7, 0x0380($a0)           ## 00000380
/* 00C28 80A2FDA8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C2C 80A2FDAC 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 00C30 80A2FDB0 8E590238 */  lw      $t9, 0x0238($s2)           ## 00000238
/* 00C34 80A2FDB4 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C38 80A2FDB8 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00C3C 80A2FDBC 0320F809 */  jalr    $ra, $t9                   
/* 00C40 80A2FDC0 00000000 */  nop
/* 00C44 80A2FDC4 9658037E */  lhu     $t8, 0x037E($s2)           ## 0000037E
/* 00C48 80A2FDC8 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00C4C 80A2FDCC 0C28BD82 */  jal     func_80A2F608              
/* 00C50 80A2FDD0 A658010E */  sh      $t8, 0x010E($s2)           ## 0000010E
/* 00C54 80A2FDD4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00C58 80A2FDD8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00C5C 80A2FDDC 0261A021 */  addu    $s4, $s3, $at              
/* 00C60 80A2FDE0 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00C64 80A2FDE4 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C68 80A2FDE8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00C6C 80A2FDEC 2646023C */  addiu   $a2, $s2, 0x023C           ## $a2 = 0000023C
/* 00C70 80A2FDF0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
/* 00C74 80A2FDF4 26510288 */  addiu   $s1, $s2, 0x0288           ## $s1 = 00000288
/* 00C78 80A2FDF8 241500E4 */  addiu   $s5, $zero, 0x00E4         ## $s5 = 000000E4
.L80A2FDFC:
/* 00C7C 80A2FDFC 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000000
/* 00C80 80A2FE00 02802825 */  or      $a1, $s4, $zero            ## $a1 = 00000000
/* 00C84 80A2FE04 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00C88 80A2FE08 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000288
/* 00C8C 80A2FE0C 2610004C */  addiu   $s0, $s0, 0x004C           ## $s0 = 0000004C
/* 00C90 80A2FE10 1615FFFA */  bne     $s0, $s5, .L80A2FDFC       
/* 00C94 80A2FE14 2631004C */  addiu   $s1, $s1, 0x004C           ## $s1 = 000002D4
/* 00C98 80A2FE18 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C9C 80A2FE1C 00000000 */  nop
/* 00CA0 80A2FE20 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00CA4 80A2FE24 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00CA8 80A2FE28 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00CAC 80A2FE2C 44815000 */  mtc1    $at, $f10                  ## $f10 = 100.00
/* 00CB0 80A2FE30 46040182 */  mul.s   $f6, $f0, $f4              
/* 00CB4 80A2FE34 3C014320 */  lui     $at, 0x4320                ## $at = 43200000
/* 00CB8 80A2FE38 44812000 */  mtc1    $at, $f4                   ## $f4 = 160.00
/* 00CBC 80A2FE3C 460A0402 */  mul.s   $f16, $f0, $f10            
/* 00CC0 80A2FE40 240D00C8 */  addiu   $t5, $zero, 0x00C8         ## $t5 = 000000C8
/* 00CC4 80A2FE44 A24D0387 */  sb      $t5, 0x0387($s2)           ## 00000387
/* 00CC8 80A2FE48 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000000
/* 00CCC 80A2FE4C 02602825 */  or      $a1, $s3, $zero            ## $a1 = 00000000
/* 00CD0 80A2FE50 4600320D */  trunc.w.s $f8, $f6                   
/* 00CD4 80A2FE54 46040182 */  mul.s   $f6, $f0, $f4              
/* 00CD8 80A2FE58 440B4000 */  mfc1    $t3, $f8                   
/* 00CDC 80A2FE5C 4600848D */  trunc.w.s $f18, $f16                 
/* 00CE0 80A2FE60 256C00E1 */  addiu   $t4, $t3, 0x00E1           ## $t4 = 000000E1
/* 00CE4 80A2FE64 A24C0384 */  sb      $t4, 0x0384($s2)           ## 00000384
/* 00CE8 80A2FE68 4600320D */  trunc.w.s $f8, $f6                   
/* 00CEC 80A2FE6C 44199000 */  mfc1    $t9, $f18                  
/* 00CF0 80A2FE70 440B4000 */  mfc1    $t3, $f8                   
/* 00CF4 80A2FE74 2738009B */  addiu   $t8, $t9, 0x009B           ## $t8 = 0000009B
/* 00CF8 80A2FE78 A2580385 */  sb      $t8, 0x0385($s2)           ## 00000385
/* 00CFC 80A2FE7C 256C005F */  addiu   $t4, $t3, 0x005F           ## $t4 = 0000005F
/* 00D00 80A2FE80 0C28BFFF */  jal     func_80A2FFFC              
/* 00D04 80A2FE84 A24C0386 */  sb      $t4, 0x0386($s2)           ## 00000386
/* 00D08 80A2FE88 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00D0C 80A2FE8C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00D10 80A2FE90 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00D14 80A2FE94 8FB2001C */  lw      $s2, 0x001C($sp)           
/* 00D18 80A2FE98 8FB30020 */  lw      $s3, 0x0020($sp)           
/* 00D1C 80A2FE9C 8FB40024 */  lw      $s4, 0x0024($sp)           
/* 00D20 80A2FEA0 8FB50028 */  lw      $s5, 0x0028($sp)           
/* 00D24 80A2FEA4 03E00008 */  jr      $ra                        
/* 00D28 80A2FEA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
