glabel func_80B07D00
/* 007C0 80B07D00 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 007C4 80B07D04 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 007C8 80B07D08 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 007CC 80B07D0C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 007D0 80B07D10 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 007D4 80B07D14 0C042F6F */  jal     func_8010BDBC              
/* 007D8 80B07D18 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 007DC 80B07D1C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 007E0 80B07D20 5441000F */  bnel    $v0, $at, .L80B07D60       
/* 007E4 80B07D24 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 007E8 80B07D28 0C041AF2 */  jal     func_80106BC8              
/* 007EC 80B07D2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007F0 80B07D30 5040000B */  beql    $v0, $zero, .L80B07D60     
/* 007F4 80B07D34 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 007F8 80B07D38 0C041B33 */  jal     func_80106CCC              
/* 007FC 80B07D3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00800 80B07D40 3C0580B0 */  lui     $a1, %hi(func_80B07C88)    ## $a1 = 80B00000
/* 00804 80B07D44 24A57C88 */  addiu   $a1, $a1, %lo(func_80B07C88) ## $a1 = 80B07C88
/* 00808 80B07D48 0C2C1D50 */  jal     func_80B07540              
/* 0080C 80B07D4C 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00810 80B07D50 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00814 80B07D54 0C2C1EFB */  jal     func_80B07BEC              
/* 00818 80B07D58 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0081C 80B07D5C 8FA40020 */  lw      $a0, 0x0020($sp)           
.L80B07D60:
/* 00820 80B07D60 0C2C1E32 */  jal     func_80B078C8              
/* 00824 80B07D64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00828 80B07D68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0082C 80B07D6C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00830 80B07D70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00834 80B07D74 03E00008 */  jr      $ra                        
/* 00838 80B07D78 00000000 */  nop
