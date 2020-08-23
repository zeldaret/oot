glabel EnPoh_Destroy
/* 00344 80ADE094 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00348 80ADE098 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0034C 80ADE09C 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00350 80ADE0A0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00354 80ADE0A4 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00358 80ADE0A8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 0035C 80ADE0AC 8DC602A8 */  lw      $a2, 0x02A8($t6)           ## 000002A8
/* 00360 80ADE0B0 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00364 80ADE0B4 0C01E9F1 */  jal     Lights_Remove
              
/* 00368 80ADE0B8 24A507A8 */  addiu   $a1, $a1, 0x07A8           ## $a1 = 000007A8
/* 0036C 80ADE0BC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00370 80ADE0C0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00374 80ADE0C4 0C016F32 */  jal     Collider_DestroyJntSph              
/* 00378 80ADE0C8 24A50308 */  addiu   $a1, $a1, 0x0308           ## $a1 = 00000308
/* 0037C 80ADE0CC 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00380 80ADE0D0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00384 80ADE0D4 0C0170EB */  jal     Collider_DestroyCylinder
              
/* 00388 80ADE0D8 24A502BC */  addiu   $a1, $a1, 0x02BC           ## $a1 = 000002BC
/* 0038C 80ADE0DC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00390 80ADE0E0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00394 80ADE0E4 3C0280AE */  lui     $v0, %hi(D_80AE1A50)       ## $v0 = 80AE0000
/* 00398 80ADE0E8 85F8001C */  lh      $t8, 0x001C($t7)           ## 0000001C
/* 0039C 80ADE0EC 24421A50 */  addiu   $v0, $v0, %lo(D_80AE1A50)  ## $v0 = 80AE1A50
/* 003A0 80ADE0F0 57010005 */  bnel    $t8, $at, .L80ADE108       
/* 003A4 80ADE0F4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003A8 80ADE0F8 84590000 */  lh      $t9, 0x0000($v0)           ## 80AE1A50
/* 003AC 80ADE0FC 2728FFFF */  addiu   $t0, $t9, 0xFFFF           ## $t0 = FFFFFFFF
/* 003B0 80ADE100 A4480000 */  sh      $t0, 0x0000($v0)           ## 80AE1A50
/* 003B4 80ADE104 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ADE108:
/* 003B8 80ADE108 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003BC 80ADE10C 03E00008 */  jr      $ra                        
/* 003C0 80ADE110 00000000 */  nop
