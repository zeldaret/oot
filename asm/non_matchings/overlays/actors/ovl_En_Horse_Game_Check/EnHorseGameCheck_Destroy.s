glabel EnHorseGameCheck_Destroy
/* 00E40 80A68390 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E44 80A68394 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E48 80A68398 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00E4C 80A6839C 3C0280A7 */  lui     $v0, %hi(D_80A68504)       ## $v0 = 80A70000
/* 00E50 80A683A0 000E7880 */  sll     $t7, $t6,  2               
/* 00E54 80A683A4 004F1021 */  addu    $v0, $v0, $t7              
/* 00E58 80A683A8 8C428504 */  lw      $v0, %lo(D_80A68504)($v0)  
/* 00E5C 80A683AC 50400004 */  beql    $v0, $zero, .L80A683C0     
/* 00E60 80A683B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00E64 80A683B4 0040F809 */  jalr    $ra, $v0                   
/* 00E68 80A683B8 00000000 */  nop
/* 00E6C 80A683BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A683C0:
/* 00E70 80A683C0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00E74 80A683C4 03E00008 */  jr      $ra                        
/* 00E78 80A683C8 00000000 */  nop


