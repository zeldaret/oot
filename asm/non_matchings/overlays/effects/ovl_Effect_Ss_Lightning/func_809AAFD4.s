glabel func_809AAFD4
/* 000E4 809AAFD4 27BDFF88 */  addiu   $sp, $sp, 0xFF88           ## $sp = FFFFFF88
/* 000E8 809AAFD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000EC 809AAFDC AFA40078 */  sw      $a0, 0x0078($sp)           
/* 000F0 809AAFE0 AFA5007C */  sw      $a1, 0x007C($sp)           
/* 000F4 809AAFE4 AFA60080 */  sw      $a2, 0x0080($sp)           
/* 000F8 809AAFE8 AFA70084 */  sw      $a3, 0x0084($sp)           
/* 000FC 809AAFEC 0C009D38 */  jal     Effect_SS_Delete
/* 00100 809AAFF0 27A40018 */  addiu   $a0, $sp, 0x0018           ## $a0 = FFFFFFA0
/* 00104 809AAFF4 8FAE0084 */  lw      $t6, 0x0084($sp)           
/* 00108 809AAFF8 27A50018 */  addiu   $a1, $sp, 0x0018           ## $a1 = FFFFFFA0
/* 0010C 809AAFFC 00A0C825 */  or      $t9, $a1, $zero            ## $t9 = FFFFFFA0
/* 00110 809AB000 25C80060 */  addiu   $t0, $t6, 0x0060           ## $t0 = 00000060
.L809AB004:
/* 00114 809AB004 8DD80000 */  lw      $t8, 0x0000($t6)           ## 00000000
/* 00118 809AB008 25CE000C */  addiu   $t6, $t6, 0x000C           ## $t6 = 0000000C
/* 0011C 809AB00C 2739000C */  addiu   $t9, $t9, 0x000C           ## $t9 = FFFFFFAC
/* 00120 809AB010 AF38FFF4 */  sw      $t8, -0x000C($t9)          ## FFFFFFA0
/* 00124 809AB014 8DCFFFF8 */  lw      $t7, -0x0008($t6)          ## 00000004
/* 00128 809AB018 AF2FFFF8 */  sw      $t7, -0x0008($t9)          ## FFFFFFA4
/* 0012C 809AB01C 8DD8FFFC */  lw      $t8, -0x0004($t6)          ## 00000008
/* 00130 809AB020 15C8FFF8 */  bne     $t6, $t0, .L809AB004       
/* 00134 809AB024 AF38FFFC */  sw      $t8, -0x0004($t9)          ## FFFFFFA8
/* 00138 809AB028 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 0013C 809AB02C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 00140 809AB030 ACAB0000 */  sw      $t3, 0x0000($a1)           ## FFFFFFA0
/* 00144 809AB034 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 00148 809AB038 ACAA0004 */  sw      $t2, 0x0004($a1)           ## FFFFFFA4
/* 0014C 809AB03C 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 00150 809AB040 ACAB0008 */  sw      $t3, 0x0008($a1)           ## FFFFFFA8
/* 00154 809AB044 87AC0068 */  lh      $t4, 0x0068($sp)           
/* 00158 809AB048 87A80082 */  lh      $t0, 0x0082($sp)           
/* 0015C 809AB04C 87AE006E */  lh      $t6, 0x006E($sp)           
/* 00160 809AB050 258DFFFF */  addiu   $t5, $t4, 0xFFFF           ## $t5 = FFFFFFFF
/* 00164 809AB054 A7AD0068 */  sh      $t5, 0x0068($sp)           
/* 00168 809AB058 8FA40078 */  lw      $a0, 0x0078($sp)           
/* 0016C 809AB05C A7A8006C */  sh      $t0, 0x006C($sp)           
/* 00170 809AB060 0C009DC1 */  jal     func_80027704              
/* 00174 809AB064 A7AE0074 */  sh      $t6, 0x0074($sp)           
/* 00178 809AB068 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0017C 809AB06C 27BD0078 */  addiu   $sp, $sp, 0x0078           ## $sp = 00000000
/* 00180 809AB070 03E00008 */  jr      $ra                        
/* 00184 809AB074 00000000 */  nop


