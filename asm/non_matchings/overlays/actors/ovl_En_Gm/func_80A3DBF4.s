glabel func_80A3DBF4
/* 00514 80A3DBF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00518 80A3DBF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0051C 80A3DBFC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00520 80A3DC00 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00524 80A3DC04 0C042F6F */  jal     func_8010BDBC              
/* 00528 80A3DC08 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0052C 80A3DC0C 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00530 80A3DC10 54410009 */  bnel    $v0, $at, .L80A3DC38       
/* 00534 80A3DC14 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00538 80A3DC18 0C041AF2 */  jal     func_80106BC8              
/* 0053C 80A3DC1C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00540 80A3DC20 10400004 */  beq     $v0, $zero, .L80A3DC34     
/* 00544 80A3DC24 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 00548 80A3DC28 3C0E80A4 */  lui     $t6, %hi(func_80A3DB04)    ## $t6 = 80A40000
/* 0054C 80A3DC2C 25CEDB04 */  addiu   $t6, $t6, %lo(func_80A3DB04) ## $t6 = 80A3DB04
/* 00550 80A3DC30 ADEE026C */  sw      $t6, 0x026C($t7)           ## 0000026C
.L80A3DC34:
/* 00554 80A3DC34 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3DC38:
/* 00558 80A3DC38 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0055C 80A3DC3C 03E00008 */  jr      $ra                        
/* 00560 80A3DC40 00000000 */  nop
