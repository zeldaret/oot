glabel func_80832CB0
/* 00AA0 80832CB0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA4 80832CB4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AA8 80832CB8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AAC 80832CBC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AB0 80832CC0 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00AB4 80832CC4 0C028EF0 */  jal     func_800A3BC0              
/* 00AB8 80832CC8 24A501B4 */  addiu   $a1, $a1, 0x01B4           ## $a1 = 000001B4
/* 00ABC 80832CCC 10400006 */  beq     $v0, $zero, .L80832CE8     
/* 00AC0 80832CD0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AC4 80832CD4 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00AC8 80832CD8 0C20C8A1 */  jal     func_80832284              
/* 00ACC 80832CDC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 00AD0 80832CE0 10000002 */  beq     $zero, $zero, .L80832CEC   
/* 00AD4 80832CE4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80832CE8:
/* 00AD8 80832CE8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80832CEC:
/* 00ADC 80832CEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AE0 80832CF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AE4 80832CF4 03E00008 */  jr      $ra                        
/* 00AE8 80832CF8 00000000 */  nop


