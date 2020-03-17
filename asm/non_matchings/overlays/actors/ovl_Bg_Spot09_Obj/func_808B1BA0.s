glabel func_808B1BA0
/* 000C0 808B1BA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000C4 808B1BA4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000C8 808B1BA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000CC 808B1BAC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 000D0 808B1BB0 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 000D4 808B1BB4 3C053DCC */  lui     $a1, 0x3DCC                ## $a1 = 3DCC0000
/* 000D8 808B1BB8 15C10005 */  bne     $t6, $at, .L808B1BD0       
/* 000DC 808B1BBC 00000000 */  nop
/* 000E0 808B1BC0 0C00B58B */  jal     Actor_SetScale
              
/* 000E4 808B1BC4 34A5CCCD */  ori     $a1, $a1, 0xCCCD           ## $a1 = 3DCCCCCD
/* 000E8 808B1BC8 10000004 */  beq     $zero, $zero, .L808B1BDC   
/* 000EC 808B1BCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B1BD0:
/* 000F0 808B1BD0 0C00B58B */  jal     Actor_SetScale
              
/* 000F4 808B1BD4 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 000F8 808B1BD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808B1BDC:
/* 000FC 808B1BDC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00100 808B1BE0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00104 808B1BE4 03E00008 */  jr      $ra                        
/* 00108 808B1BE8 00000000 */  nop


