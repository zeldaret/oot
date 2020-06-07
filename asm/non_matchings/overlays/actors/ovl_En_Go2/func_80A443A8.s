glabel func_80A443A8
/* 01678 80A443A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0167C 80A443AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01680 80A443B0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01684 80A443B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01688 80A443B8 0C042F6F */  jal     func_8010BDBC              
/* 0168C 80A443BC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 01690 80A443C0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 01694 80A443C4 14410003 */  bne     $v0, $at, .L80A443D4       
/* 01698 80A443C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0169C 80A443CC 10000002 */  beq     $zero, $zero, .L80A443D8   
/* 016A0 80A443D0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A443D4:
/* 016A4 80A443D4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A443D8:
/* 016A8 80A443D8 03E00008 */  jr      $ra                        
/* 016AC 80A443DC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
