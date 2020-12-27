glabel func_809E77E4
/* 02014 809E77E4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 02018 809E77E8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0201C 809E77EC 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 02020 809E77F0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02024 809E77F4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02028 809E77F8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0202C 809E77FC 0C02927F */  jal     SkelAnime_Update
              
/* 02030 809E7800 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 02034 809E7804 862301C6 */  lh      $v1, 0x01C6($s1)           ## 000001C6
/* 02038 809E7808 262400B4 */  addiu   $a0, $s1, 0x00B4           ## $a0 = 000000B4
/* 0203C 809E780C 24051800 */  addiu   $a1, $zero, 0x1800         ## $a1 = 00001800
/* 02040 809E7810 28610009 */  slti    $at, $v1, 0x0009           
/* 02044 809E7814 14200022 */  bne     $at, $zero, .L809E78A0     
/* 02048 809E7818 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0204C 809E781C 240E071C */  addiu   $t6, $zero, 0x071C         ## $t6 = 0000071C
/* 02050 809E7820 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 02054 809E7824 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 02058 809E7828 240711C6 */  addiu   $a3, $zero, 0x11C6         ## $a3 = 000011C6
/* 0205C 809E782C 240F071C */  addiu   $t7, $zero, 0x071C         ## $t7 = 0000071C
/* 02060 809E7830 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 02064 809E7834 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 02068 809E7838 262401CA */  addiu   $a0, $s1, 0x01CA           ## $a0 = 000001CA
/* 0206C 809E783C 2405EAAB */  addiu   $a1, $zero, 0xEAAB         ## $a1 = FFFFEAAB
/* 02070 809E7840 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02074 809E7844 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 02078 809E7848 24070AAA */  addiu   $a3, $zero, 0x0AAA         ## $a3 = 00000AAA
/* 0207C 809E784C 2418071C */  addiu   $t8, $zero, 0x071C         ## $t8 = 0000071C
/* 02080 809E7850 02028025 */  or      $s0, $s0, $v0              ## $s0 = 00000000
/* 02084 809E7854 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02088 809E7858 262401CC */  addiu   $a0, $s1, 0x01CC           ## $a0 = 000001CC
/* 0208C 809E785C 2405C71D */  addiu   $a1, $zero, 0xC71D         ## $a1 = FFFFC71D
/* 02090 809E7860 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02094 809E7864 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 02098 809E7868 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 0209C 809E786C 2419071C */  addiu   $t9, $zero, 0x071C         ## $t9 = 0000071C
/* 020A0 809E7870 02028025 */  or      $s0, $s0, $v0              ## $s0 = 00000000
/* 020A4 809E7874 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 020A8 809E7878 262401CE */  addiu   $a0, $s1, 0x01CE           ## $a0 = 000001CE
/* 020AC 809E787C 2405A38F */  addiu   $a1, $zero, 0xA38F         ## $a1 = FFFFA38F
/* 020B0 809E7880 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 020B4 809E7884 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 020B8 809E7888 240711C6 */  addiu   $a3, $zero, 0x11C6         ## $a3 = 000011C6
/* 020BC 809E788C 02028025 */  or      $s0, $s0, $v0              ## $s0 = 00000000
/* 020C0 809E7890 1600000B */  bne     $s0, $zero, .L809E78C0     
/* 020C4 809E7894 24080008 */  addiu   $t0, $zero, 0x0008         ## $t0 = 00000008
/* 020C8 809E7898 10000009 */  beq     $zero, $zero, .L809E78C0   
/* 020CC 809E789C A62801C6 */  sh      $t0, 0x01C6($s1)           ## 000001C6
.L809E78A0:
/* 020D0 809E78A0 10600003 */  beq     $v1, $zero, .L809E78B0     
/* 020D4 809E78A4 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 020D8 809E78A8 A62901C6 */  sh      $t1, 0x01C6($s1)           ## 000001C6
/* 020DC 809E78AC 862301C6 */  lh      $v1, 0x01C6($s1)           ## 000001C6
.L809E78B0:
/* 020E0 809E78B0 14600003 */  bne     $v1, $zero, .L809E78C0     
/* 020E4 809E78B4 00000000 */  nop
/* 020E8 809E78B8 0C2797D1 */  jal     func_809E5F44              
/* 020EC 809E78BC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L809E78C0:
/* 020F0 809E78C0 0C279B73 */  jal     func_809E6DCC              
/* 020F4 809E78C4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020F8 809E78C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 020FC 809E78CC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02100 809E78D0 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02104 809E78D4 03E00008 */  jr      $ra                        
/* 02108 809E78D8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
