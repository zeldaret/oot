glabel EnFish_Update
/* 01C80 80A16F00 3C0280A1 */  lui     $v0, %hi(D_80A17010)       ## $v0 = 80A10000
/* 01C84 80A16F04 8C427010 */  lw      $v0, %lo(D_80A17010)($v0)  
/* 01C88 80A16F08 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C8C 80A16F0C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C90 80A16F10 14400011 */  bne     $v0, $zero, .L80A16F58     
/* 01C94 80A16F14 00000000 */  nop
/* 01C98 80A16F18 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 01C9C 80A16F1C 15C0000E */  bne     $t6, $zero, .L80A16F58     
/* 01CA0 80A16F20 00000000 */  nop
/* 01CA4 80A16F24 90AF1D6C */  lbu     $t7, 0x1D6C($a1)           ## 00001D6C
/* 01CA8 80A16F28 11E0000B */  beq     $t7, $zero, .L80A16F58     
/* 01CAC 80A16F2C 00000000 */  nop
/* 01CB0 80A16F30 8CB81D90 */  lw      $t8, 0x1D90($a1)           ## 00001D90
/* 01CB4 80A16F34 13000008 */  beq     $t8, $zero, .L80A16F58     
/* 01CB8 80A16F38 00000000 */  nop
/* 01CBC 80A16F3C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CC0 80A16F40 0C2854EB */  jal     func_80A153AC              
/* 01CC4 80A16F44 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01CC8 80A16F48 3C0280A1 */  lui     $v0, %hi(D_80A17010)       ## $v0 = 80A10000
/* 01CCC 80A16F4C 8C427010 */  lw      $v0, %lo(D_80A17010)($v0)  
/* 01CD0 80A16F50 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01CD4 80A16F54 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A16F58:
/* 01CD8 80A16F58 50400008 */  beql    $v0, $zero, .L80A16F7C     
/* 01CDC 80A16F5C 8482024A */  lh      $v0, 0x024A($a0)           ## 0000024A
/* 01CE0 80A16F60 54820006 */  bnel    $a0, $v0, .L80A16F7C       
/* 01CE4 80A16F64 8482024A */  lh      $v0, 0x024A($a0)           ## 0000024A
/* 01CE8 80A16F68 0C285A99 */  jal     func_80A16A64              
/* 01CEC 80A16F6C 00000000 */  nop
/* 01CF0 80A16F70 1000000B */  beq     $zero, $zero, .L80A16FA0   
/* 01CF4 80A16F74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CF8 80A16F78 8482024A */  lh      $v0, 0x024A($a0)           ## 0000024A
.L80A16F7C:
/* 01CFC 80A16F7C 18400005 */  blez    $v0, .L80A16F94            
/* 01D00 80A16F80 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 01D04 80A16F84 0C285B7B */  jal     func_80A16DEC              
/* 01D08 80A16F88 A499024A */  sh      $t9, 0x024A($a0)           ## 0000024A
/* 01D0C 80A16F8C 10000004 */  beq     $zero, $zero, .L80A16FA0   
/* 01D10 80A16F90 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A16F94:
/* 01D14 80A16F94 0C285B1A */  jal     func_80A16C68              
/* 01D18 80A16F98 00000000 */  nop
/* 01D1C 80A16F9C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A16FA0:
/* 01D20 80A16FA0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D24 80A16FA4 03E00008 */  jr      $ra                        
/* 01D28 80A16FA8 00000000 */  nop
