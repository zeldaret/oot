glabel func_808C30F4
/* 01F64 808C30F4 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01F68 808C30F8 3C0F808D */  lui     $t7, %hi(D_808CA3E0)       ## $t7 = 808D0000
/* 01F6C 808C30FC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01F70 808C3100 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01F74 808C3104 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01F78 808C3108 25EFA3E0 */  addiu   $t7, $t7, %lo(D_808CA3E0)  ## $t7 = 808CA3E0
/* 01F7C 808C310C 8DF90000 */  lw      $t9, 0x0000($t7)           ## 808CA3E0
/* 01F80 808C3110 27AE0038 */  addiu   $t6, $sp, 0x0038           ## $t6 = FFFFFFF0
/* 01F84 808C3114 8DF80004 */  lw      $t8, 0x0004($t7)           ## 808CA3E4
/* 01F88 808C3118 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFF0
/* 01F8C 808C311C 8DF90008 */  lw      $t9, 0x0008($t7)           ## 808CA3E8
/* 01F90 808C3120 3C09808D */  lui     $t1, %hi(D_808CA3EC)       ## $t1 = 808D0000
/* 01F94 808C3124 2529A3EC */  addiu   $t1, $t1, %lo(D_808CA3EC)  ## $t1 = 808CA3EC
/* 01F98 808C3128 ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF4
/* 01F9C 808C312C ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF8
/* 01FA0 808C3130 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 808CA3EC
/* 01FA4 808C3134 27A8002C */  addiu   $t0, $sp, 0x002C           ## $t0 = FFFFFFE4
/* 01FA8 808C3138 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 808CA3F0
/* 01FAC 808C313C AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE4
/* 01FB0 808C3140 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 808CA3F4
/* 01FB4 808C3144 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01FB8 808C3148 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01FBC 808C314C AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE8
/* 01FC0 808C3150 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFEC
/* 01FC4 808C3154 0C02927F */  jal     SkelAnime_Update
              
/* 01FC8 808C3158 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01FCC 808C315C 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01FD0 808C3160 0C0295B2 */  jal     Animation_OnFrame              
/* 01FD4 808C3164 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 01FD8 808C3168 10400003 */  beq     $v0, $zero, .L808C3178     
/* 01FDC 808C316C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FE0 808C3170 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01FE4 808C3174 24053805 */  addiu   $a1, $zero, 0x3805         ## $a1 = 00003805
.L808C3178:
/* 01FE8 808C3178 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 01FEC 808C317C 0C0295B2 */  jal     Animation_OnFrame              
/* 01FF0 808C3180 3C054188 */  lui     $a1, 0x4188                ## $a1 = 41880000
/* 01FF4 808C3184 10400003 */  beq     $v0, $zero, .L808C3194     
/* 01FF8 808C3188 3C014188 */  lui     $at, 0x4188                ## $at = 41880000
/* 01FFC 808C318C 240C001C */  addiu   $t4, $zero, 0x001C         ## $t4 = 0000001C
/* 02000 808C3190 A60C01C8 */  sh      $t4, 0x01C8($s0)           ## 000001C8
.L808C3194:
/* 02004 808C3194 C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 02008 808C3198 44812000 */  mtc1    $at, $f4                   ## $f4 = 17.00
/* 0200C 808C319C 3C01420C */  lui     $at, 0x420C                ## $at = 420C0000
/* 02010 808C31A0 4600203C */  c.lt.s  $f4, $f0                   
/* 02014 808C31A4 00000000 */  nop
/* 02018 808C31A8 45020015 */  bc1fl   .L808C3200                 
/* 0201C 808C31AC 860F01DA */  lh      $t7, 0x01DA($s0)           ## 000001DA
/* 02020 808C31B0 44813000 */  mtc1    $at, $f6                   ## $f6 = 35.00
/* 02024 808C31B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02028 808C31B8 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 0202C 808C31BC 4606003C */  c.lt.s  $f0, $f6                   
/* 02030 808C31C0 00000000 */  nop
/* 02034 808C31C4 4502000E */  bc1fl   .L808C3200                 
/* 02038 808C31C8 860F01DA */  lh      $t7, 0x01DA($s0)           ## 000001DA
/* 0203C 808C31CC 0C2314B8 */  jal     func_808C52E0              
/* 02040 808C31D0 860601AE */  lh      $a2, 0x01AE($s0)           ## 000001AE
/* 02044 808C31D4 860D01AE */  lh      $t5, 0x01AE($s0)           ## 000001AE
/* 02048 808C31D8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0204C 808C31DC 26040244 */  addiu   $a0, $s0, 0x0244           ## $a0 = 00000244
/* 02050 808C31E0 25AE0001 */  addiu   $t6, $t5, 0x0001           ## $t6 = 00000001
/* 02054 808C31E4 A60E01AE */  sh      $t6, 0x01AE($s0)           ## 000001AE
/* 02058 808C31E8 44050000 */  mfc1    $a1, $f0                   
/* 0205C 808C31EC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02060 808C31F0 3C074100 */  lui     $a3, 0x4100                ## $a3 = 41000000
/* 02064 808C31F4 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 02068 808C31F8 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 0206C 808C31FC 860F01DA */  lh      $t7, 0x01DA($s0)           ## 000001DA
.L808C3200:
/* 02070 808C3200 55E00004 */  bnel    $t7, $zero, .L808C3214     
/* 02074 808C3204 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02078 808C3208 0C230A90 */  jal     func_808C2A40              
/* 0207C 808C320C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02080 808C3210 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808C3214:
/* 02084 808C3214 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 02088 808C3218 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 0208C 808C321C 03E00008 */  jr      $ra                        
/* 02090 808C3220 00000000 */  nop
