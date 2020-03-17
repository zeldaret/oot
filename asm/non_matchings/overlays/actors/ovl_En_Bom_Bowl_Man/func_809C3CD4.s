glabel func_809C3CD4
/* 006A4 809C3CD4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 006A8 809C3CD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 006AC 809C3CDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 006B0 809C3CE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 006B4 809C3CE4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 006B8 809C3CE8 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 006BC 809C3CEC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006C0 809C3CF0 0C042F6F */  jal     func_8010BDBC              
/* 006C4 809C3CF4 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 006C8 809C3CF8 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 006CC 809C3CFC 85CF022E */  lh      $t7, 0x022E($t6)           ## 0000022E
/* 006D0 809C3D00 55E2000C */  bnel    $t7, $v0, .L809C3D34       
/* 006D4 809C3D04 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006D8 809C3D08 0C041AF2 */  jal     func_80106BC8              
/* 006DC 809C3D0C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006E0 809C3D10 50400008 */  beql    $v0, $zero, .L809C3D34     
/* 006E4 809C3D14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 006E8 809C3D18 0C041B33 */  jal     func_80106CCC              
/* 006EC 809C3D1C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 006F0 809C3D20 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 006F4 809C3D24 3C18809C */  lui     $t8, %hi(func_809C3C7C)    ## $t8 = 809C0000
/* 006F8 809C3D28 27183C7C */  addiu   $t8, $t8, %lo(func_809C3C7C) ## $t8 = 809C3C7C
/* 006FC 809C3D2C AF380214 */  sw      $t8, 0x0214($t9)           ## 00000214
/* 00700 809C3D30 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C3D34:
/* 00704 809C3D34 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00708 809C3D38 03E00008 */  jr      $ra                        
/* 0070C 809C3D3C 00000000 */  nop


