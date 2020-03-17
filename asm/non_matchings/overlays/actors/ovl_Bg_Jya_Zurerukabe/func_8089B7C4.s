glabel func_8089B7C4
/* 00384 8089B7C4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00388 8089B7C8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0038C 8089B7CC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00390 8089B7D0 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 00394 8089B7D4 5DC00005 */  bgtzl   $t6, .L8089B7EC            
/* 00398 8089B7D8 848F0168 */  lh      $t7, 0x0168($a0)           ## 00000168
/* 0039C 8089B7DC 0C226E03 */  jal     func_8089B80C              
/* 003A0 8089B7E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003A4 8089B7E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003A8 8089B7E8 848F0168 */  lh      $t7, 0x0168($a0)           ## 00000168
.L8089B7EC:
/* 003AC 8089B7EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003B0 8089B7F0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 003B4 8089B7F4 3C01808A */  lui     $at, %hi(D_8089B9C0)       ## $at = 808A0000
/* 003B8 8089B7F8 000FC080 */  sll     $t8, $t7,  2               
/* 003BC 8089B7FC 00380821 */  addu    $at, $at, $t8              
/* 003C0 8089B800 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003C4 8089B804 03E00008 */  jr      $ra                        
/* 003C8 8089B808 E424B9C0 */  swc1    $f4, %lo(D_8089B9C0)($at)  


