glabel func_80106C88
/* B7DE28 80106C88 94830020 */  lhu   $v1, 0x20($a0)
/* B7DE2C 80106C8C 3C01FFFF */  lui   $at, (0xFFFF7FFF >> 16) # lui $at, 0xffff
/* B7DE30 80106C90 34217FFF */  ori   $at, (0xFFFF7FFF & 0xFFFF) # ori $at, $at, 0x7fff
/* B7DE34 80106C94 00611827 */  nor   $v1, $v1, $at
/* B7DE38 80106C98 2C630001 */  sltiu $v1, $v1, 1
/* B7DE3C 80106C9C 14600009 */  bnez  $v1, .L80106CC4
/* B7DE40 80106CA0 00000000 */   nop   
/* B7DE44 80106CA4 94820020 */  lhu   $v0, 0x20($a0)
/* B7DE48 80106CA8 2401BFFF */  li    $at, -16385
/* B7DE4C 80106CAC 00411827 */  nor   $v1, $v0, $at
/* B7DE50 80106CB0 2C630001 */  sltiu $v1, $v1, 1
/* B7DE54 80106CB4 14600003 */  bnez  $v1, .L80106CC4
/* B7DE58 80106CB8 2401FFF7 */   li    $at, -9
/* B7DE5C 80106CBC 00411827 */  nor   $v1, $v0, $at
/* B7DE60 80106CC0 2C630001 */  sltiu $v1, $v1, 1
.L80106CC4:
/* B7DE64 80106CC4 03E00008 */  jr    $ra
/* B7DE68 80106CC8 306200FF */   andi  $v0, $v1, 0xff

