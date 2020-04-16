glabel func_808AD3D4
/* 00D74 808AD3D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D78 808AD3D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D7C 808AD3DC 90AE1D6C */  lbu     $t6, 0x1D6C($a1)           ## 00001D6C
/* 00D80 808AD3E0 51C00018 */  beql    $t6, $zero, .L808AD444     
/* 00D84 808AD3E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D88 808AD3E8 8CA21D94 */  lw      $v0, 0x1D94($a1)           ## 00001D94
/* 00D8C 808AD3EC 50400015 */  beql    $v0, $zero, .L808AD444     
/* 00D90 808AD3F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D94 808AD3F4 944F0000 */  lhu     $t7, 0x0000($v0)           ## 00000000
/* 00D98 808AD3F8 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00D9C 808AD3FC 546F0011 */  bnel    $v1, $t7, .L808AD444       
/* 00DA0 808AD400 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00DA4 808AD404 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 00DA8 808AD408 2405183B */  addiu   $a1, $zero, 0x183B         ## $a1 = 0000183B
/* 00DAC 808AD40C 54620006 */  bnel    $v1, $v0, .L808AD428       
/* 00DB0 808AD410 28410020 */  slti    $at, $v0, 0x0020           
/* 00DB4 808AD414 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DB8 808AD418 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00DBC 808AD41C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00DC0 808AD420 84820168 */  lh      $v0, 0x0168($a0)           ## 00000168
/* 00DC4 808AD424 28410020 */  slti    $at, $v0, 0x0020           
.L808AD428:
/* 00DC8 808AD428 10200003 */  beq     $at, $zero, .L808AD438     
/* 00DCC 808AD42C 24580001 */  addiu   $t8, $v0, 0x0001           ## $t8 = 00000001
/* 00DD0 808AD430 10000003 */  beq     $zero, $zero, .L808AD440   
/* 00DD4 808AD434 A4980168 */  sh      $t8, 0x0168($a0)           ## 00000168
.L808AD438:
/* 00DD8 808AD438 0C00B55C */  jal     Actor_Kill
              
/* 00DDC 808AD43C 00000000 */  nop
.L808AD440:
/* 00DE0 808AD440 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808AD444:
/* 00DE4 808AD444 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00DE8 808AD448 03E00008 */  jr      $ra                        
/* 00DEC 808AD44C 00000000 */  nop
