glabel func_80980DF0
/* 03780 80980DF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03784 80980DF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03788 80980DF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0378C 80980DFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03790 80980E00 0C25FB59 */  jal     func_8097ED64              
/* 03794 80980E04 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
/* 03798 80980E08 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0379C 80980E0C 0C260324 */  jal     func_80980C90              
/* 037A0 80980E10 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 037A4 80980E14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 037A8 80980E18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 037AC 80980E1C 03E00008 */  jr      $ra                        
/* 037B0 80980E20 00000000 */  nop
