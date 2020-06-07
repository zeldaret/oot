glabel func_80A97C7C
/* 00ECC 80A97C7C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 00ED0 80A97C80 3C0F80AA */  lui     $t7, %hi(D_80A9A730)       ## $t7 = 80AA0000
/* 00ED4 80A97C84 25EFA730 */  addiu   $t7, $t7, %lo(D_80A9A730)  ## $t7 = 80A9A730
/* 00ED8 80A97C88 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EDC 80A97C8C AFA40060 */  sw      $a0, 0x0060($sp)           
/* 00EE0 80A97C90 25E8003C */  addiu   $t0, $t7, 0x003C           ## $t0 = 80A9A76C
/* 00EE4 80A97C94 27AE001C */  addiu   $t6, $sp, 0x001C           ## $t6 = FFFFFFBC
.L80A97C98:
/* 00EE8 80A97C98 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9A730
/* 00EEC 80A97C9C 25EF000C */  addiu   $t7, $t7, 0x000C           ## $t7 = 80A9A73C
/* 00EF0 80A97CA0 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = FFFFFFC8
/* 00EF4 80A97CA4 ADD9FFF4 */  sw      $t9, -0x000C($t6)          ## FFFFFFBC
/* 00EF8 80A97CA8 8DF8FFF8 */  lw      $t8, -0x0008($t7)          ## 80A9A734
/* 00EFC 80A97CAC ADD8FFF8 */  sw      $t8, -0x0008($t6)          ## FFFFFFC0
/* 00F00 80A97CB0 8DF9FFFC */  lw      $t9, -0x0004($t7)          ## 80A9A738
/* 00F04 80A97CB4 15E8FFF8 */  bne     $t7, $t0, .L80A97C98       
/* 00F08 80A97CB8 ADD9FFFC */  sw      $t9, -0x0004($t6)          ## FFFFFFC4
/* 00F0C 80A97CBC 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80A9A73C
/* 00F10 80A97CC0 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFC8
/* 00F14 80A97CC4 91F90004 */  lbu     $t9, 0x0004($t7)           ## 80A9A740
/* 00F18 80A97CC8 A1D90004 */  sb      $t9, 0x0004($t6)           ## FFFFFFCC
/* 00F1C 80A97CCC 0C2A5ECE */  jal     func_80A97B38              
/* 00F20 80A97CD0 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 00F24 80A97CD4 8FA90060 */  lw      $t1, 0x0060($sp)           
/* 00F28 80A97CD8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00F2C 80A97CDC 852A001C */  lh      $t2, 0x001C($t1)           ## 0000001C
/* 00F30 80A97CE0 314B00FF */  andi    $t3, $t2, 0x00FF           ## $t3 = 00000000
/* 00F34 80A97CE4 000B6080 */  sll     $t4, $t3,  2               
/* 00F38 80A97CE8 018B6021 */  addu    $t4, $t4, $t3              
/* 00F3C 80A97CEC 01826821 */  addu    $t5, $t4, $v0              
/* 00F40 80A97CF0 03AD1021 */  addu    $v0, $sp, $t5              
/* 00F44 80A97CF4 9042001C */  lbu     $v0, 0x001C($v0)           ## 0000001C
/* 00F48 80A97CF8 03E00008 */  jr      $ra                        
/* 00F4C 80A97CFC 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
