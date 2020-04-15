glabel ObjHsblock_Update
/* 003A4 80B93F04 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 003A8 80B93F08 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 003AC 80B93F0C 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 003B0 80B93F10 50400005 */  beql    $v0, $zero, .L80B93F28     
/* 003B4 80B93F14 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 003B8 80B93F18 0040F809 */  jalr    $ra, $v0                   
/* 003BC 80B93F1C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 003C0 80B93F20 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 003C4 80B93F24 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
.L80B93F28:
/* 003C8 80B93F28 3C0580B9 */  lui     $a1, %hi(D_80B940C0)       ## $a1 = 80B90000
/* 003CC 80B93F2C 31CF0003 */  andi    $t7, $t6, 0x0003           ## $t7 = 00000000
/* 003D0 80B93F30 000FC080 */  sll     $t8, $t7,  2               
/* 003D4 80B93F34 00B82821 */  addu    $a1, $a1, $t8              
/* 003D8 80B93F38 0C00B56E */  jal     Actor_SetHeight
              
/* 003DC 80B93F3C 8CA540C0 */  lw      $a1, %lo(D_80B940C0)($a1)  
/* 003E0 80B93F40 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E4 80B93F44 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003E8 80B93F48 03E00008 */  jr      $ra                        
/* 003EC 80B93F4C 00000000 */  nop
