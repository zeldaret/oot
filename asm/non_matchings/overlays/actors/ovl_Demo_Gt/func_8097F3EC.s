glabel func_8097F3EC
/* 01D7C 8097F3EC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D80 8097F3F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D84 8097F3F4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D88 8097F3F8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 01D8C 8097F3FC 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01D90 8097F400 0C25F9C1 */  jal     func_8097E704              
/* 01D94 8097F404 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01D98 8097F408 10400003 */  beq     $v0, $zero, .L8097F418     
/* 01D9C 8097F40C 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01DA0 8097F410 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01DA4 8097F414 ADEE0164 */  sw      $t6, 0x0164($t7)           ## 00000164
.L8097F418:
/* 01DA8 8097F418 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01DAC 8097F41C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01DB0 8097F420 03E00008 */  jr      $ra                        
/* 01DB4 8097F424 00000000 */  nop


