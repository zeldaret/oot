glabel func_809F6DD0
/* 00A10 809F6DD0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A14 809F6DD4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A18 809F6DD8 8C8201E0 */  lw      $v0, 0x01E0($a0)           ## 000001E0
/* 00A1C 809F6DDC 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A20 809F6DE0 54400004 */  bnel    $v0, $zero, .L809F6DF4     
/* 00A24 809F6DE4 8C4E0118 */  lw      $t6, 0x0118($v0)           ## 00000118
/* 00A28 809F6DE8 10000016 */  beq     $zero, $zero, .L809F6E44   
/* 00A2C 809F6DEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A30 809F6DF0 8C4E0118 */  lw      $t6, 0x0118($v0)           ## 00000118
.L809F6DF4:
/* 00A34 809F6DF4 24C40024 */  addiu   $a0, $a2, 0x0024           ## $a0 = 00000024
/* 00A38 809F6DF8 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00A3C 809F6DFC 11C00003 */  beq     $t6, $zero, .L809F6E0C     
/* 00A40 809F6E00 00000000 */  nop
/* 00A44 809F6E04 1000000F */  beq     $zero, $zero, .L809F6E44   
/* 00A48 809F6E08 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809F6E0C:
/* 00A4C 809F6E0C 0C01DFE4 */  jal     Math_Vec3f_DistXYZ
              
/* 00A50 809F6E10 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A54 809F6E14 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00A58 809F6E18 44812000 */  mtc1    $at, $f4                   ## $f4 = 30.00
/* 00A5C 809F6E1C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A60 809F6E20 4600203C */  c.lt.s  $f4, $f0                   
/* 00A64 809F6E24 00000000 */  nop
/* 00A68 809F6E28 45020004 */  bc1fl   .L809F6E3C                 
/* 00A6C 809F6E2C 8CCF01E0 */  lw      $t7, 0x01E0($a2)           ## 000001E0
/* 00A70 809F6E30 10000004 */  beq     $zero, $zero, .L809F6E44   
/* 00A74 809F6E34 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00A78 809F6E38 8CCF01E0 */  lw      $t7, 0x01E0($a2)           ## 000001E0
.L809F6E3C:
/* 00A7C 809F6E3C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00A80 809F6E40 ADE60118 */  sw      $a2, 0x0118($t7)           ## 00000118
.L809F6E44:
/* 00A84 809F6E44 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A88 809F6E48 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A8C 809F6E4C 03E00008 */  jr      $ra                        
/* 00A90 809F6E50 00000000 */  nop


