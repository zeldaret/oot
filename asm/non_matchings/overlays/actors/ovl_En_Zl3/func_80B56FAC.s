glabel func_80B56FAC
/* 03BFC 80B56FAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03C00 80B56FB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03C04 80B56FB4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 03C08 80B56FB8 8C86030C */  lw      $a2, 0x030C($a0)           ## 0000030C
/* 03C0C 80B56FBC 50C00019 */  beql    $a2, $zero, .L80B57024     
/* 03C10 80B56FC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 03C14 80B56FC4 0C2D5BE3 */  jal     func_80B56F8C              
/* 03C18 80B56FC8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 03C1C 80B56FCC 10400014 */  beq     $v0, $zero, .L80B57020     
/* 03C20 80B56FD0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 03C24 80B56FD4 8CC30004 */  lw      $v1, 0x0004($a2)           ## 00000004
/* 03C28 80B56FD8 8FAA0024 */  lw      $t2, 0x0024($sp)           
/* 03C2C 80B56FDC 3C198016 */  lui     $t9, 0x8016                ## $t9 = 80160000
/* 03C30 80B56FE0 00037100 */  sll     $t6, $v1,  4               
/* 03C34 80B56FE4 000E7F02 */  srl     $t7, $t6, 28               
/* 03C38 80B56FE8 000FC080 */  sll     $t8, $t7,  2               
/* 03C3C 80B56FEC 0338C821 */  addu    $t9, $t9, $t8              
/* 03C40 80B56FF0 8F396FA8 */  lw      $t9, 0x6FA8($t9)           ## 80166FA8
/* 03C44 80B56FF4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 03C48 80B56FF8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 03C4C 80B56FFC 000A5880 */  sll     $t3, $t2,  2               
/* 03C50 80B57000 00614024 */  and     $t0, $v1, $at              
/* 03C54 80B57004 016A5823 */  subu    $t3, $t3, $t2              
/* 03C58 80B57008 000B5840 */  sll     $t3, $t3,  1               
/* 03C5C 80B5700C 03284821 */  addu    $t1, $t9, $t0              
/* 03C60 80B57010 012B2021 */  addu    $a0, $t1, $t3              
/* 03C64 80B57014 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 03C68 80B57018 10000002 */  beq     $zero, $zero, .L80B57024   
/* 03C6C 80B5701C 00811021 */  addu    $v0, $a0, $at              
.L80B57020:
/* 03C70 80B57020 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B57024:
/* 03C74 80B57024 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03C78 80B57028 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03C7C 80B5702C 03E00008 */  jr      $ra                        
/* 03C80 80B57030 00000000 */  nop


