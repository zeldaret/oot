glabel func_80891D6C
/* 002AC 80891D6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B0 80891D70 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002B4 80891D74 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002B8 80891D78 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002BC 80891D7C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002C0 80891D80 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C4 80891D84 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 002C8 80891D88 85C5001C */  lh      $a1, 0x001C($t6)           ## 0000001C
/* 002CC 80891D8C 1040000D */  beq     $v0, $zero, .L80891DC4     
/* 002D0 80891D90 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002D4 80891D94 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002D8 80891D98 2406001E */  addiu   $a2, $zero, 0x001E         ## $a2 = 0000001E
/* 002DC 80891D9C 24072814 */  addiu   $a3, $zero, 0x2814         ## $a3 = 00002814
/* 002E0 80891DA0 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 002E4 80891DA4 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 002E8 80891DA8 8FB80018 */  lw      $t8, 0x0018($sp)           
/* 002EC 80891DAC 3C0F8089 */  lui     $t7, %hi(func_80891DD4)    ## $t7 = 80890000
/* 002F0 80891DB0 25EF1DD4 */  addiu   $t7, $t7, %lo(func_80891DD4) ## $t7 = 80891DD4
/* 002F4 80891DB4 AF0F0164 */  sw      $t7, 0x0164($t8)           ## 00000164
/* 002F8 80891DB8 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 002FC 80891DBC 0C020120 */  jal     func_80080480              
/* 00300 80891DC0 8FA4001C */  lw      $a0, 0x001C($sp)           
.L80891DC4:
/* 00304 80891DC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00308 80891DC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0030C 80891DCC 03E00008 */  jr      $ra                        
/* 00310 80891DD0 00000000 */  nop
