glabel func_8097CDB0
/* 00540 8097CDB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00544 8097CDB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00548 8097CDB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0054C 8097CDBC 0C25F21C */  jal     func_8097C870              
/* 00550 8097CDC0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00554 8097CDC4 8FA3001C */  lw      $v1, 0x001C($sp)           
/* 00558 8097CDC8 00027880 */  sll     $t7, $v0,  2               
/* 0055C 8097CDCC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00560 8097CDD0 906E1D6C */  lbu     $t6, 0x1D6C($v1)           ## 00001D6C
/* 00564 8097CDD4 24631D64 */  addiu   $v1, $v1, 0x1D64           ## $v1 = 00001D64
/* 00568 8097CDD8 006FC021 */  addu    $t8, $v1, $t7              
/* 0056C 8097CDDC 11C0000A */  beq     $t6, $zero, .L8097CE08     
/* 00570 8097CDE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00574 8097CDE4 8F040028 */  lw      $a0, 0x0028($t8)           ## 00000028
/* 00578 8097CDE8 97B90022 */  lhu     $t9, 0x0022($sp)           
/* 0057C 8097CDEC 10800006 */  beq     $a0, $zero, .L8097CE08     
/* 00580 8097CDF0 00000000 */  nop
/* 00584 8097CDF4 94880000 */  lhu     $t0, 0x0000($a0)           ## 00000000
/* 00588 8097CDF8 17280003 */  bne     $t9, $t0, .L8097CE08       
/* 0058C 8097CDFC 00000000 */  nop
/* 00590 8097CE00 10000001 */  beq     $zero, $zero, .L8097CE08   
/* 00594 8097CE04 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8097CE08:
/* 00598 8097CE08 03E00008 */  jr      $ra                        
/* 0059C 8097CE0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


