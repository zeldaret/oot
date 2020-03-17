glabel func_8096ED40
/* 01890 8096ED40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01894 8096ED44 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 01898 8096ED48 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0189C 8096ED4C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 018A0 8096ED50 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 018A4 8096ED54 14A10016 */  bne     $a1, $at, .L8096EDB0       
/* 018A8 8096ED58 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 018AC 8096ED5C 0C25BB2F */  jal     func_8096ECBC              
/* 018B0 8096ED60 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 018B4 8096ED64 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 018B8 8096ED68 0002C100 */  sll     $t8, $v0,  4               
/* 018BC 8096ED6C 0018CF02 */  srl     $t9, $t8, 28               
/* 018C0 8096ED70 8CA40000 */  lw      $a0, 0x0000($a1)           ## 00000000
/* 018C4 8096ED74 00194080 */  sll     $t0, $t9,  2               
/* 018C8 8096ED78 3C0FDE00 */  lui     $t7, 0xDE00                ## $t7 = DE000000
/* 018CC 8096ED7C 248E0008 */  addiu   $t6, $a0, 0x0008           ## $t6 = 00000008
/* 018D0 8096ED80 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 018D4 8096ED84 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000000
/* 018D8 8096ED88 01284821 */  addu    $t1, $t1, $t0              
/* 018DC 8096ED8C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 018E0 8096ED90 AC8F0000 */  sw      $t7, 0x0000($a0)           ## 00000000
/* 018E4 8096ED94 8D296FA8 */  lw      $t1, 0x6FA8($t1)           ## 80166FA8
/* 018E8 8096ED98 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 018EC 8096ED9C 00415024 */  and     $t2, $v0, $at              
/* 018F0 8096EDA0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 018F4 8096EDA4 012A5821 */  addu    $t3, $t1, $t2              
/* 018F8 8096EDA8 01616021 */  addu    $t4, $t3, $at              
/* 018FC 8096EDAC AC8C0004 */  sw      $t4, 0x0004($a0)           ## 00000004
.L8096EDB0:
/* 01900 8096EDB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01904 8096EDB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01908 8096EDB8 03E00008 */  jr      $ra                        
/* 0190C 8096EDBC 00000000 */  nop


