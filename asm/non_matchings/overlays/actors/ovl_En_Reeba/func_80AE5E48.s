.late_rodata
glabel D_80AE66A4
    .float 3000.0

glabel D_80AE66A8
    .float 3000.0

.text
glabel func_80AE5E48
/* 01178 80AE5E48 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0117C 80AE5E4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01180 80AE5E50 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01184 80AE5E54 848E0278 */  lh      $t6, 0x0278($a0)           ## 00000278
/* 01188 80AE5E58 29C10025 */  slti    $at, $t6, 0x0025           
/* 0118C 80AE5E5C 1020001B */  beq     $at, $zero, .L80AE5ECC     
/* 01190 80AE5E60 3C0180AE */  lui     $at, %hi(D_80AE66A4)       ## $at = 80AE0000
/* 01194 80AE5E64 C42C66A4 */  lwc1    $f12, %lo(D_80AE66A4)($at) 
/* 01198 80AE5E68 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 0119C 80AE5E6C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 011A0 80AE5E70 4600010D */  trunc.w.s $f4, $f0                   
/* 011A4 80AE5E74 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 011A8 80AE5E78 3C0180AE */  lui     $at, %hi(D_80AE66A8)       ## $at = 80AE0000
/* 011AC 80AE5E7C 44182000 */  mfc1    $t8, $f4                   
/* 011B0 80AE5E80 00000000 */  nop
/* 011B4 80AE5E84 A49800B4 */  sh      $t8, 0x00B4($a0)           ## 000000B4
/* 011B8 80AE5E88 0C00CFC8 */  jal     Math_Rand_CenteredFloat
              
/* 011BC 80AE5E8C C42C66A8 */  lwc1    $f12, %lo(D_80AE66A8)($at) 
/* 011C0 80AE5E90 4600018D */  trunc.w.s $f6, $f0                   
/* 011C4 80AE5E94 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 011C8 80AE5E98 84890278 */  lh      $t1, 0x0278($a0)           ## 00000278
/* 011CC 80AE5E9C 44083000 */  mfc1    $t0, $f6                   
/* 011D0 80AE5EA0 1520000A */  bne     $t1, $zero, .L80AE5ECC     
/* 011D4 80AE5EA4 A48800B8 */  sh      $t0, 0x00B8($a0)           ## 000000B8
/* 011D8 80AE5EA8 848A027A */  lh      $t2, 0x027A($a0)           ## 0000027A
/* 011DC 80AE5EAC 3C0C80AE */  lui     $t4, %hi(func_80AE5688)    ## $t4 = 80AE0000
/* 011E0 80AE5EB0 3C0B80AE */  lui     $t3, %hi(func_80AE538C)    ## $t3 = 80AE0000
/* 011E4 80AE5EB4 11400004 */  beq     $t2, $zero, .L80AE5EC8     
/* 011E8 80AE5EB8 258C5688 */  addiu   $t4, $t4, %lo(func_80AE5688) ## $t4 = 80AE5688
/* 011EC 80AE5EBC 256B538C */  addiu   $t3, $t3, %lo(func_80AE538C) ## $t3 = 80AE538C
/* 011F0 80AE5EC0 10000002 */  beq     $zero, $zero, .L80AE5ECC   
/* 011F4 80AE5EC4 AC8B026C */  sw      $t3, 0x026C($a0)           ## 0000026C
.L80AE5EC8:
/* 011F8 80AE5EC8 AC8C026C */  sw      $t4, 0x026C($a0)           ## 0000026C
.L80AE5ECC:
/* 011FC 80AE5ECC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01200 80AE5ED0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01204 80AE5ED4 03E00008 */  jr      $ra                        
/* 01208 80AE5ED8 00000000 */  nop
