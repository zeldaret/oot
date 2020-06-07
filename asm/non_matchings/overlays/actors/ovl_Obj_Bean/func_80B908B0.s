glabel func_80B908B0
/* 01E30 80B908B0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E34 80B908B4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E38 80B908B8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E3C 80B908BC 0C010D64 */  jal     func_80043590              
/* 01E40 80B908C0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E44 80B908C4 14400003 */  bne     $v0, $zero, .L80B908D4     
/* 01E48 80B908C8 00000000 */  nop
/* 01E4C 80B908CC 0C2E419E */  jal     func_80B90678              
/* 01E50 80B908D0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B908D4:
/* 01E54 80B908D4 0C2E3AF9 */  jal     func_80B8EBE4              
/* 01E58 80B908D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01E5C 80B908DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E60 80B908E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E64 80B908E4 03E00008 */  jr      $ra                        
/* 01E68 80B908E8 00000000 */  nop
