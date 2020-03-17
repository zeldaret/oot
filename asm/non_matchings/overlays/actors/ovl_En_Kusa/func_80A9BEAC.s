glabel func_80A9BEAC
/* 00F0C 80A9BEAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00F10 80A9BEB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00F14 80A9BEB4 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00F18 80A9BEB8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F1C 80A9BEBC 3C0580AA */  lui     $a1, %hi(func_80A9BEFC)    ## $a1 = 80AA0000
/* 00F20 80A9BEC0 30420003 */  andi    $v0, $v0, 0x0003           ## $v0 = 00000000
/* 00F24 80A9BEC4 10410007 */  beq     $v0, $at, .L80A9BEE4       
/* 00F28 80A9BEC8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00F2C 80A9BECC 14410007 */  bne     $v0, $at, .L80A9BEEC       
/* 00F30 80A9BED0 3C0580AA */  lui     $a1, %hi(func_80A9BF30)    ## $a1 = 80AA0000
/* 00F34 80A9BED4 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00F38 80A9BED8 24A5BF30 */  addiu   $a1, $a1, %lo(func_80A9BF30) ## $a1 = 80A9BF30
/* 00F3C 80A9BEDC 10000004 */  beq     $zero, $zero, .L80A9BEF0   
/* 00F40 80A9BEE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9BEE4:
/* 00F44 80A9BEE4 0C2A6BE8 */  jal     func_80A9AFA0              
/* 00F48 80A9BEE8 24A5BEFC */  addiu   $a1, $a1, %lo(func_80A9BEFC) ## $a1 = FFFFBEFC
.L80A9BEEC:
/* 00F4C 80A9BEEC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9BEF0:
/* 00F50 80A9BEF0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F54 80A9BEF4 03E00008 */  jr      $ra                        
/* 00F58 80A9BEF8 00000000 */  nop


