glabel func_809EFB40
/* 007F0 809EFB40 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007F4 809EFB44 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 007F8 809EFB48 944E0F2A */  lhu     $t6, 0x0F2A($v0)           ## 8015F58A
/* 007FC 809EFB4C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00800 809EFB50 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00804 809EFB54 35CF0008 */  ori     $t7, $t6, 0x0008           ## $t7 = 00000008
/* 00808 809EFB58 A44F0F2A */  sh      $t7, 0x0F2A($v0)           ## 8015F58A
/* 0080C 809EFB5C 8C9802C0 */  lw      $t8, 0x02C0($a0)           ## 000002C0
/* 00810 809EFB60 87040000 */  lh      $a0, 0x0000($t8)           ## 00000000
/* 00814 809EFB64 00042023 */  subu    $a0, $zero, $a0            
/* 00818 809EFB68 00042400 */  sll     $a0, $a0, 16               
/* 0081C 809EFB6C 0C021CC3 */  jal     Rupees_ChangeBy              
/* 00820 809EFB70 00042403 */  sra     $a0, $a0, 16               
/* 00824 809EFB74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00828 809EFB78 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0082C 809EFB7C 03E00008 */  jr      $ra                        
/* 00830 809EFB80 00000000 */  nop
