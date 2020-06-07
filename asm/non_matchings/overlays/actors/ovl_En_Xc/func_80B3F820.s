glabel func_80B3F820
/* 03640 80B3F820 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03644 80B3F824 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03648 80B3F828 0C2CFB5A */  jal     func_80B3ED68              
/* 0364C 80B3F82C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03650 80B3F830 0C2CFD91 */  jal     func_80B3F644              
/* 03654 80B3F834 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03658 80B3F838 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0365C 80B3F83C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03660 80B3F840 03E00008 */  jr      $ra                        
/* 03664 80B3F844 00000000 */  nop
