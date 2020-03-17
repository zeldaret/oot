glabel func_80B8B4B4
/* 003B4 80B8B4B4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003B8 80B8B4B8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003BC 80B8B4BC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 003C0 80B8B4C0 8482016C */  lh      $v0, 0x016C($a0)           ## 0000016C
/* 003C4 80B8B4C4 3C0580B9 */  lui     $a1, %hi(func_80B8B500)    ## $a1 = 80B90000
/* 003C8 80B8B4C8 24A5B500 */  addiu   $a1, $a1, %lo(func_80B8B500) ## $a1 = 80B8B500
/* 003CC 80B8B4CC 18400003 */  blez    $v0, .L80B8B4DC            
/* 003D0 80B8B4D0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003D4 80B8B4D4 10000006 */  beq     $zero, $zero, .L80B8B4F0   
/* 003D8 80B8B4D8 A48E016C */  sh      $t6, 0x016C($a0)           ## 0000016C
.L80B8B4DC:
/* 003DC 80B8B4DC 0C2E2C40 */  jal     func_80B8B100              
/* 003E0 80B8B4E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003E4 80B8B4E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003E8 80B8B4E8 240F001E */  addiu   $t7, $zero, 0x001E         ## $t7 = 0000001E
/* 003EC 80B8B4EC A48F016C */  sh      $t7, 0x016C($a0)           ## 0000016C
.L80B8B4F0:
/* 003F0 80B8B4F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003F4 80B8B4F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003F8 80B8B4F8 03E00008 */  jr      $ra                        
/* 003FC 80B8B4FC 00000000 */  nop


