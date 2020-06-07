glabel func_80A40B1C
/* 025AC 80A40B1C 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xf14)
/* 025B0 80A40B20 95CEF574 */  lhu     $t6, %lo(gSaveContext+0xf14)($t6)
/* 025B4 80A40B24 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 025B8 80A40B28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 025BC 80A40B2C 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 025C0 80A40B30 11E0000A */  beq     $t7, $zero, .L80A40B5C     
/* 025C4 80A40B34 00000000 */  nop
/* 025C8 80A40B38 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 025CC 80A40B3C 0C28FB78 */  jal     func_80A3EDE0              
/* 025D0 80A40B40 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 025D4 80A40B44 3C0580A4 */  lui     $a1, %hi(func_80A40A54)    ## $a1 = 80A40000
/* 025D8 80A40B48 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 025DC 80A40B4C 0C28F95C */  jal     func_80A3E570              
/* 025E0 80A40B50 24A50A54 */  addiu   $a1, $a1, %lo(func_80A40A54) ## $a1 = 80A40A54
/* 025E4 80A40B54 10000004 */  beq     $zero, $zero, .L80A40B68   
/* 025E8 80A40B58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A40B5C:
/* 025EC 80A40B5C 0C2901B8 */  jal     func_80A406E0              
/* 025F0 80A40B60 00000000 */  nop
/* 025F4 80A40B64 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A40B68:
/* 025F8 80A40B68 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 025FC 80A40B6C 03E00008 */  jr      $ra                        
/* 02600 80A40B70 00000000 */  nop
