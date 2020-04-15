glabel func_80A57DE4
/* 00BE4 80A57DE4 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00BE8 80A57DE8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00BEC 80A57DEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BF0 80A57DF0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BF4 80A57DF4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00BF8 80A57DF8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00BFC 80A57DFC 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00C00 80A57E00 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00C04 80A57E04 10400005 */  beq     $v0, $zero, .L80A57E1C     
/* 00C08 80A57E08 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00C0C 80A57E0C 0C295D15 */  jal     func_80A57454              
/* 00C10 80A57E10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C14 80A57E14 10000023 */  beq     $zero, $zero, .L80A57EA4   
/* 00C18 80A57E18 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A57E1C:
/* 00C1C 80A57E1C 44811000 */  mtc1    $at, $f2                   ## $f2 = 0.00
/* 00C20 80A57E20 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 00C24 80A57E24 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00C28 80A57E28 4602003C */  c.lt.s  $f0, $f2                   
/* 00C2C 80A57E2C 00000000 */  nop
/* 00C30 80A57E30 45020004 */  bc1fl   .L80A57E44                 
/* 00C34 80A57E34 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 00C38 80A57E38 1000000C */  beq     $zero, $zero, .L80A57E6C   
/* 00C3C 80A57E3C 46001006 */  mov.s   $f0, $f2                   
/* 00C40 80A57E40 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
.L80A57E44:
/* 00C44 80A57E44 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00C48 80A57E48 4600203C */  c.lt.s  $f4, $f0                   
/* 00C4C 80A57E4C 00000000 */  nop
/* 00C50 80A57E50 45020005 */  bc1fl   .L80A57E68                 
/* 00C54 80A57E54 46000086 */  mov.s   $f2, $f0                   
/* 00C58 80A57E58 44811000 */  mtc1    $at, $f2                   ## $f2 = 3.00
/* 00C5C 80A57E5C 10000003 */  beq     $zero, $zero, .L80A57E6C   
/* 00C60 80A57E60 46001006 */  mov.s   $f0, $f2                   
/* 00C64 80A57E64 46000086 */  mov.s   $f2, $f0                   
.L80A57E68:
/* 00C68 80A57E68 46001006 */  mov.s   $f0, $f2                   
.L80A57E6C:
/* 00C6C 80A57E6C 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 00C70 80A57E70 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 00C74 80A57E74 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00C78 80A57E78 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 00C7C 80A57E7C 46003201 */  sub.s   $f8, $f6, $f0              
/* 00C80 80A57E80 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00C84 80A57E84 44819000 */  mtc1    $at, $f18                  ## $f18 = 5.00
/* 00C88 80A57E88 460A4402 */  mul.s   $f16, $f8, $f10            
/* 00C8C 80A57E8C 46128100 */  add.s   $f4, $f16, $f18            
/* 00C90 80A57E90 4600218D */  trunc.w.s $f6, $f4                   
/* 00C94 80A57E94 440F3000 */  mfc1    $t7, $f6                   
/* 00C98 80A57E98 00000000 */  nop
/* 00C9C 80A57E9C A60F0256 */  sh      $t7, 0x0256($s0)           ## 00000256
/* 00CA0 80A57EA0 8FA40024 */  lw      $a0, 0x0024($sp)           
.L80A57EA4:
/* 00CA4 80A57EA4 0C0295B2 */  jal     func_800A56C8              
/* 00CA8 80A57EA8 3C054080 */  lui     $a1, 0x4080                ## $a1 = 40800000
/* 00CAC 80A57EAC 10400004 */  beq     $v0, $zero, .L80A57EC0     
/* 00CB0 80A57EB0 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 00CB4 80A57EB4 92180225 */  lbu     $t8, 0x0225($s0)           ## 00000225
/* 00CB8 80A57EB8 3319FFFE */  andi    $t9, $t8, 0xFFFE           ## $t9 = 00000000
/* 00CBC 80A57EBC A2190225 */  sb      $t9, 0x0225($s0)           ## 00000225
.L80A57EC0:
/* 00CC0 80A57EC0 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 00CC4 80A57EC4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00CC8 80A57EC8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00CCC 80A57ECC 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00CD0 80A57ED0 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 00CD4 80A57ED4 8E050010 */  lw      $a1, 0x0010($s0)           ## 00000010
/* 00CD8 80A57ED8 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 00CDC 80A57EDC 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00CE0 80A57EE0 3C074040 */  lui     $a3, 0x4040                ## $a3 = 40400000
/* 00CE4 80A57EE4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CE8 80A57EE8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CEC 80A57EEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00CF0 80A57EF0 03E00008 */  jr      $ra                        
/* 00CF4 80A57EF4 00000000 */  nop
