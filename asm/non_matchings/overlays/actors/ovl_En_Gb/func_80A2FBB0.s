glabel func_80A2FBB0
/* 00A30 80A2FBB0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00A34 80A2FBB4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A38 80A2FBB8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00A3C 80A2FBBC 0C00BD04 */  jal     func_8002F410              
/* 00A40 80A2FBC0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00A44 80A2FBC4 10400006 */  beq     $v0, $zero, .L80A2FBE0     
/* 00A48 80A2FBC8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00A4C 80A2FBCC 3C0E80A3 */  lui     $t6, %hi(func_80A2FC0C)    ## $t6 = 80A30000
/* 00A50 80A2FBD0 25CEFC0C */  addiu   $t6, $t6, %lo(func_80A2FC0C) ## $t6 = 80A2FC0C
/* 00A54 80A2FBD4 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 00A58 80A2FBD8 10000008 */  beq     $zero, $zero, .L80A2FBFC   
/* 00A5C 80A2FBDC AC8E0238 */  sw      $t6, 0x0238($a0)           ## 00000238
.L80A2FBE0:
/* 00A60 80A2FBE0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00A64 80A2FBE4 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 00A68 80A2FBE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00A6C 80A2FBEC 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00A70 80A2FBF0 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00A74 80A2FBF4 0C00BD0D */  jal     func_8002F434              
/* 00A78 80A2FBF8 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A2FBFC:
/* 00A7C 80A2FBFC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00A80 80A2FC00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00A84 80A2FC04 03E00008 */  jr      $ra                        
/* 00A88 80A2FC08 00000000 */  nop


