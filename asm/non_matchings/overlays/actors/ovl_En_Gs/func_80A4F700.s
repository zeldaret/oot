glabel func_80A4F700
/* 013E0 80A4F700 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 013E4 80A4F704 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 013E8 80A4F708 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 013EC 80A4F70C 94820200 */  lhu     $v0, 0x0200($a0)           ## 00000200
/* 013F0 80A4F710 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 013F4 80A4F714 1C400003 */  bgtz    $v0, .L80A4F724            
/* 013F8 80A4F718 A48E0200 */  sh      $t6, 0x0200($a0)           ## 00000200
/* 013FC 80A4F71C 0C00B55C */  jal     Actor_Kill
              
/* 01400 80A4F720 00000000 */  nop
.L80A4F724:
/* 01404 80A4F724 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01408 80A4F728 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0140C 80A4F72C 03E00008 */  jr      $ra                        
/* 01410 80A4F730 00000000 */  nop
