glabel EnRl_Init
/* 00CB8 80AE7F68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00CBC 80AE7F6C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00CC0 80AE7F70 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00CC4 80AE7F74 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00CC8 80AE7F78 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00CCC 80AE7F7C 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 00CD0 80AE7F80 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00CD4 80AE7F84 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 00CD8 80AE7F88 0C00AC78 */  jal     ActorShape_Init
              
/* 00CDC 80AE7F8C 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 00CE0 80AE7F90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CE4 80AE7F94 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00CE8 80AE7F98 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00CEC 80AE7F9C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 00CF0 80AE7FA0 15C10005 */  bne     $t6, $at, .L80AE7FB8       
/* 00CF4 80AE7FA4 00000000 */  nop
/* 00CF8 80AE7FA8 0C2B9E1E */  jal     func_80AE7878              
/* 00CFC 80AE7FAC 00000000 */  nop
/* 00D00 80AE7FB0 10000004 */  beq     $zero, $zero, .L80AE7FC4   
/* 00D04 80AE7FB4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE7FB8:
/* 00D08 80AE7FB8 0C2B9D51 */  jal     func_80AE7544              
/* 00D0C 80AE7FBC 00000000 */  nop
/* 00D10 80AE7FC0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE7FC4:
/* 00D14 80AE7FC4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D18 80AE7FC8 03E00008 */  jr      $ra                        
/* 00D1C 80AE7FCC 00000000 */  nop


