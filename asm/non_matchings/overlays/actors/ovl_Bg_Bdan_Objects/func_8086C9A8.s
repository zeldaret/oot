glabel func_8086C9A8
/* 00D08 8086C9A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00D0C 8086C9AC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00D10 8086C9B0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00D14 8086C9B4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00D18 8086C9B8 90C50168 */  lbu     $a1, 0x0168($a2)           ## 00000168
/* 00D1C 8086C9BC 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00D20 8086C9C0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00D24 8086C9C4 10400006 */  beq     $v0, $zero, .L8086C9E0     
/* 00D28 8086C9C8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00D2C 8086C9CC 3C0F8087 */  lui     $t7, %hi(func_8086C9F0)    ## $t7 = 80870000
/* 00D30 8086C9D0 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 00D34 8086C9D4 25EFC9F0 */  addiu   $t7, $t7, %lo(func_8086C9F0) ## $t7 = 8086C9F0
/* 00D38 8086C9D8 A4CE016A */  sh      $t6, 0x016A($a2)           ## 0000016A
/* 00D3C 8086C9DC ACCF0164 */  sw      $t7, 0x0164($a2)           ## 00000164
.L8086C9E0:
/* 00D40 8086C9E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00D44 8086C9E4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00D48 8086C9E8 03E00008 */  jr      $ra                        
/* 00D4C 8086C9EC 00000000 */  nop


