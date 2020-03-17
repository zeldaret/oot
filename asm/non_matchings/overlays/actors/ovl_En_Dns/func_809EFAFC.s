glabel func_809EFAFC
/* 007AC 809EFAFC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 007B0 809EFB00 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 007B4 809EFB04 944E0F2A */  lhu     $t6, 0x0F2A($v0)           ## 8015F58A
/* 007B8 809EFB08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 007BC 809EFB0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 007C0 809EFB10 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 007C4 809EFB14 A44F0F2A */  sh      $t7, 0x0F2A($v0)           ## 8015F58A
/* 007C8 809EFB18 8C9802C0 */  lw      $t8, 0x02C0($a0)           ## 000002C0
/* 007CC 809EFB1C 87040000 */  lh      $a0, 0x0000($t8)           ## 00000000
/* 007D0 809EFB20 00042023 */  subu    $a0, $zero, $a0            
/* 007D4 809EFB24 00042400 */  sll     $a0, $a0, 16               
/* 007D8 809EFB28 0C021CC3 */  jal     Rupees_ChangeBy              
/* 007DC 809EFB2C 00042403 */  sra     $a0, $a0, 16               
/* 007E0 809EFB30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 007E4 809EFB34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 007E8 809EFB38 03E00008 */  jr      $ra                        
/* 007EC 809EFB3C 00000000 */  nop


