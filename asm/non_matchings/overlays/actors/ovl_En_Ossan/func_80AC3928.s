glabel func_80AC3928
/* 00C88 80AC3928 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C8C 80AC392C 3C0F8016 */  lui     $t7, %hi(gGameInfo)
/* 00C90 80AC3930 8DEFFA90 */  lw      $t7, %lo(gGameInfo)($t7)
/* 00C94 80AC3934 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C98 80AC3938 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00C9C 80AC393C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 00CA0 80AC3940 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 00CA4 80AC3944 A5EE04D2 */  sh      $t6, 0x04D2($t7)           ## 801604D2
/* 00CA8 80AC3948 A4A001F0 */  sh      $zero, 0x01F0($a1)         ## 000001F0
/* 00CAC 80AC394C 84B801F0 */  lh      $t8, 0x01F0($a1)           ## 000001F0
/* 00CB0 80AC3950 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00CB4 80AC3954 A4B801EE */  sh      $t8, 0x01EE($a1)           ## 000001EE
/* 00CB8 80AC3958 AFA7001C */  sw      $a3, 0x001C($sp)           
/* 00CBC 80AC395C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CC0 80AC3960 0C021BC0 */  jal     Interface_SetDoAction              
/* 00CC4 80AC3964 24050010 */  addiu   $a1, $zero, 0x0010         ## $a1 = 00000010
/* 00CC8 80AC3968 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00CCC 80AC396C 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 00CD0 80AC3970 0C2B0CD4 */  jal     func_80AC3350              
/* 00CD4 80AC3974 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 00CD8 80AC3978 93B90023 */  lbu     $t9, 0x0023($sp)           
/* 00CDC 80AC397C 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00CE0 80AC3980 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00CE4 80AC3984 17200003 */  bne     $t9, $zero, .L80AC3994     
/* 00CE8 80AC3988 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00CEC 80AC398C 10000003 */  beq     $zero, $zero, .L80AC399C   
/* 00CF0 80AC3990 A4E801FC */  sh      $t0, 0x01FC($a3)           ## 000001FC
.L80AC3994:
/* 00CF4 80AC3994 0C2B0E6B */  jal     func_80AC39AC              
/* 00CF8 80AC3998 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
.L80AC399C:
/* 00CFC 80AC399C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D00 80AC39A0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D04 80AC39A4 03E00008 */  jr      $ra                        
/* 00D08 80AC39A8 00000000 */  nop
