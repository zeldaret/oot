glabel func_808AF450
/* 00CD0 808AF450 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CD4 808AF454 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CD8 808AF458 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CDC 808AF45C 0C22BB83 */  jal     func_808AEE0C              
/* 00CE0 808AF460 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00CE4 808AF464 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CE8 808AF468 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
/* 00CEC 808AF46C 10400003 */  beq     $v0, $zero, .L808AF47C     
/* 00CF0 808AF470 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00CF4 808AF474 A48E016A */  sh      $t6, 0x016A($a0)           ## 0000016A
/* 00CF8 808AF478 8482016A */  lh      $v0, 0x016A($a0)           ## 0000016A
.L808AF47C:
/* 00CFC 808AF47C 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 00D00 808AF480 3C01808B */  lui     $at, %hi(D_808AFA34)       ## $at = 808B0000
/* 00D04 808AF484 C428FA34 */  lwc1    $f8, %lo(D_808AFA34)($at)  
/* 00D08 808AF488 468021A0 */  cvt.s.w $f6, $f4                   
/* 00D0C 808AF48C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00D10 808AF490 46083302 */  mul.s   $f12, $f6, $f8             
/* 00D14 808AF494 0C0400A4 */  jal     sinf
              
/* 00D18 808AF498 00000000 */  nop
/* 00D1C 808AF49C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00D20 808AF4A0 46000280 */  add.s   $f10, $f0, $f0             
/* 00D24 808AF4A4 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 00D28 808AF4A8 C490000C */  lwc1    $f16, 0x000C($a0)          ## 0000000C
/* 00D2C 808AF4AC 848F016A */  lh      $t7, 0x016A($a0)           ## 0000016A
/* 00D30 808AF4B0 46105480 */  add.s   $f18, $f10, $f16           
/* 00D34 808AF4B4 15E00002 */  bne     $t7, $zero, .L808AF4C0     
/* 00D38 808AF4B8 E4920028 */  swc1    $f18, 0x0028($a0)          ## 00000028
/* 00D3C 808AF4BC A498016A */  sh      $t8, 0x016A($a0)           ## 0000016A
.L808AF4C0:
/* 00D40 808AF4C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D44 808AF4C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D48 808AF4C8 03E00008 */  jr      $ra                        
/* 00D4C 808AF4CC 00000000 */  nop


