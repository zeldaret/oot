glabel func_80A1DD44
/* 00534 80A1DD44 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00538 80A1DD48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0053C 80A1DD4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00540 80A1DD50 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 00544 80A1DD54 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 00548 80A1DD58 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 0054C 80A1DD5C 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 00550 80A1DD60 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 00554 80A1DD64 AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 00558 80A1DD68 0C042F6F */  jal     func_8010BDBC              
/* 0055C 80A1DD6C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00560 80A1DD70 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00564 80A1DD74 14410008 */  bne     $v0, $at, .L80A1DD98       
/* 00568 80A1DD78 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 0056C 80A1DD7C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00570 80A1DD80 0C042F56 */  jal     func_8010BD58              
/* 00574 80A1DD84 2405001A */  addiu   $a1, $zero, 0x001A         ## $a1 = 0000001A
/* 00578 80A1DD88 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 0057C 80A1DD8C 3C1880A2 */  lui     $t8, %hi(func_80A1DBD4)    ## $t8 = 80A20000
/* 00580 80A1DD90 2718DBD4 */  addiu   $t8, $t8, %lo(func_80A1DBD4) ## $t8 = 80A1DBD4
/* 00584 80A1DD94 AF3802AC */  sw      $t8, 0x02AC($t9)           ## 000002AC
.L80A1DD98:
/* 00588 80A1DD98 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0058C 80A1DD9C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00590 80A1DDA0 03E00008 */  jr      $ra                        
/* 00594 80A1DDA4 00000000 */  nop
