glabel func_80A972F8
/* 00548 80A972F8 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 0054C 80A972FC 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 00550 80A97300 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 00554 80A97304 8D087168 */  lw      $t0, 0x7168($t0)           ## 80127168
/* 00558 80A97308 8C4900A4 */  lw      $t1, 0x00A4($v0)           ## 8015E704
/* 0055C 80A9730C 01095024 */  and     $t2, $t0, $t1              
/* 00560 80A97310 11400003 */  beq     $t2, $zero, .L80A97320     
/* 00564 80A97314 00000000 */  nop
/* 00568 80A97318 03E00008 */  jr      $ra                        
/* 0056C 80A9731C 2402104C */  addiu   $v0, $zero, 0x104C         ## $v0 = 0000104C
.L80A97320:
/* 00570 80A97320 03E00008 */  jr      $ra                        
/* 00574 80A97324 2402103D */  addiu   $v0, $zero, 0x103D         ## $v0 = 0000103D
glabel L80A97328
/* 00578 80A97328 03E00008 */  jr      $ra                        
/* 0057C 80A9732C 2402103E */  addiu   $v0, $zero, 0x103E         ## $v0 = 0000103E
.L80A97330:
/* 00580 80A97330 03E00008 */  jr      $ra                        
/* 00584 80A97334 00000000 */  nop
