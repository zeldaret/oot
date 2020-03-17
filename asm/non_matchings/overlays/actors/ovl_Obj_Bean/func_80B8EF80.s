glabel func_80B8EF80
/* 00500 80B8EF80 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00504 80B8EF84 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00508 80B8EF88 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 0050C 80B8EF8C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00510 80B8EF90 01C57021 */  addu    $t6, $t6, $a1              
/* 00514 80B8EF94 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 00518 80B8EF98 000FC203 */  sra     $t8, $t7,  8               
/* 0051C 80B8EF9C 3319001F */  andi    $t9, $t8, 0x001F           ## $t9 = 00000000
/* 00520 80B8EFA0 001940C0 */  sll     $t0, $t9,  3               
/* 00524 80B8EFA4 01C81821 */  addu    $v1, $t6, $t0              
/* 00528 80B8EFA8 8C620004 */  lw      $v0, 0x0004($v1)           ## 00000004
/* 0052C 80B8EFAC 3C0C8016 */  lui     $t4, 0x8016                ## $t4 = 80160000
/* 00530 80B8EFB0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00534 80B8EFB4 00024900 */  sll     $t1, $v0,  4               
/* 00538 80B8EFB8 00095702 */  srl     $t2, $t1, 28               
/* 0053C 80B8EFBC 000A5880 */  sll     $t3, $t2,  2               
/* 00540 80B8EFC0 018B6021 */  addu    $t4, $t4, $t3              
/* 00544 80B8EFC4 8D8C6FA8 */  lw      $t4, 0x6FA8($t4)           ## 80166FA8
/* 00548 80B8EFC8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0054C 80B8EFCC 00416824 */  and     $t5, $v0, $at              
/* 00550 80B8EFD0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00554 80B8EFD4 018D2821 */  addu    $a1, $t4, $t5              
/* 00558 80B8EFD8 00A12821 */  addu    $a1, $a1, $at              
/* 0055C 80B8EFDC 0C01DF97 */  jal     Math_Vec3s_ToVec3f
              ## Vec3f_CopyVec3s
/* 00560 80B8EFE0 248401D8 */  addiu   $a0, $a0, 0x01D8           ## $a0 = 000001D8
/* 00564 80B8EFE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00568 80B8EFE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0056C 80B8EFEC 03E00008 */  jr      $ra                        
/* 00570 80B8EFF0 00000000 */  nop


