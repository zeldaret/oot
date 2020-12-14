.late_rodata

glabel D_808B18AC
    .float 0.05

.text
glabel BgSpot08Iceblock_Update
/* 00C34 808B1594 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C38 808B1598 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C3C 808B159C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00C40 808B15A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C44 808B15A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00C48 808B15A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C4C 808B15AC 3C01808B */  lui     $at, %hi(D_808B18AC)       ## $at = 808B0000
/* 00C50 808B15B0 C42418AC */  lwc1    $f4, %lo(D_808B18AC)($at)  
/* 00C54 808B15B4 2404012C */  addiu   $a0, $zero, 0x012C         ## $a0 = 0000012C
/* 00C58 808B15B8 4604003C */  c.lt.s  $f0, $f4                   
/* 00C5C 808B15BC 00000000 */  nop
/* 00C60 808B15C0 45020009 */  bc1fl   .L808B15E8                 
/* 00C64 808B15C4 860E018C */  lh      $t6, 0x018C($s0)           ## 0000018C
/* 00C68 808B15C8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C6C 808B15CC 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00C70 808B15D0 A6020190 */  sh      $v0, 0x0190($s0)           ## 00000190
/* 00C74 808B15D4 24040320 */  addiu   $a0, $zero, 0x0320         ## $a0 = 00000320
/* 00C78 808B15D8 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 00C7C 808B15DC 24050190 */  addiu   $a1, $zero, 0x0190         ## $a1 = 00000190
/* 00C80 808B15E0 A6020192 */  sh      $v0, 0x0192($s0)           ## 00000192
/* 00C84 808B15E4 860E018C */  lh      $t6, 0x018C($s0)           ## 0000018C
.L808B15E8:
/* 00C88 808B15E8 860F0190 */  lh      $t7, 0x0190($s0)           ## 00000190
/* 00C8C 808B15EC 8619018E */  lh      $t9, 0x018E($s0)           ## 0000018E
/* 00C90 808B15F0 86080192 */  lh      $t0, 0x0192($s0)           ## 00000192
/* 00C94 808B15F4 8E020164 */  lw      $v0, 0x0164($s0)           ## 00000164
/* 00C98 808B15F8 01CFC021 */  addu    $t8, $t6, $t7              
/* 00C9C 808B15FC 03284821 */  addu    $t1, $t9, $t0              
/* 00CA0 808B1600 A618018C */  sh      $t8, 0x018C($s0)           ## 0000018C
/* 00CA4 808B1604 10400004 */  beq     $v0, $zero, .L808B1618     
/* 00CA8 808B1608 A609018E */  sh      $t1, 0x018E($s0)           ## 0000018E
/* 00CAC 808B160C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CB0 808B1610 0040F809 */  jalr    $ra, $v0                   
/* 00CB4 808B1614 8FA50024 */  lw      $a1, 0x0024($sp)           
.L808B1618:
/* 00CB8 808B1618 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CBC 808B161C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00CC0 808B1620 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CC4 808B1624 03E00008 */  jr      $ra                        
/* 00CC8 808B1628 00000000 */  nop
