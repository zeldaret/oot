glabel func_80978AC4
/* 00194 80978AC4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00198 80978AC8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0019C 80978ACC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 001A0 80978AD0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 001A4 80978AD4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 001A8 80978AD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001AC 80978ADC 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 001B0 80978AE0 240728C2 */  addiu   $a3, $zero, 0x28C2         ## $a3 = 000028C2
/* 001B4 80978AE4 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 001B8 80978AE8 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 001BC 80978AEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001C0 80978AF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001C4 80978AF4 03E00008 */  jr      $ra                        
/* 001C8 80978AF8 00000000 */  nop


