glabel func_809FD40C
/* 003DC 809FD40C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003E0 809FD410 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003E4 809FD414 948201EA */  lhu     $v0, 0x01EA($a0)           ## 000001EA
/* 003E8 809FD418 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 003EC 809FD41C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 003F0 809FD420 18400004 */  blez    $v0, .L809FD434            
/* 003F4 809FD424 3C0F80A0 */  lui     $t7, %hi(func_809FD368)    ## $t7 = 80A00000
/* 003F8 809FD428 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 003FC 809FD42C 10000008 */  beq     $zero, $zero, .L809FD450   
/* 00400 809FD430 A48E01EA */  sh      $t6, 0x01EA($a0)           ## 000001EA
.L809FD434:
/* 00404 809FD434 25EFD368 */  addiu   $t7, $t7, %lo(func_809FD368) ## $t7 = 809FD368
/* 00408 809FD438 2418003C */  addiu   $t8, $zero, 0x003C         ## $t8 = 0000003C
/* 0040C 809FD43C ACCF01EC */  sw      $t7, 0x01EC($a2)           ## 000001EC
/* 00410 809FD440 A4D801EA */  sh      $t8, 0x01EA($a2)           ## 000001EA
/* 00414 809FD444 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00418 809FD448 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 0041C 809FD44C 2405003F */  addiu   $a1, $zero, 0x003F         ## $a1 = 0000003F
.L809FD450:
/* 00420 809FD450 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00424 809FD454 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00428 809FD458 03E00008 */  jr      $ra                        
/* 0042C 809FD45C 00000000 */  nop


