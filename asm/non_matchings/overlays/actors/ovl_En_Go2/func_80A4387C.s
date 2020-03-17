glabel func_80A4387C
/* 00B4C 80A4387C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B50 80A43880 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B54 80A43884 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B58 80A43888 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B5C 80A4388C 0C042F6F */  jal     func_8010BDBC              
/* 00B60 80A43890 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 00B64 80A43894 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00B68 80A43898 14410003 */  bne     $v0, $at, .L80A438A8       
/* 00B6C 80A4389C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B70 80A438A0 10000002 */  beq     $zero, $zero, .L80A438AC   
/* 00B74 80A438A4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A438A8:
/* 00B78 80A438A8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A438AC:
/* 00B7C 80A438AC 03E00008 */  jr      $ra                        
/* 00B80 80A438B0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000


