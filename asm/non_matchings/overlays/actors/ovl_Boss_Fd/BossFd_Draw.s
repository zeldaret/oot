.rdata
glabel D_808D1D5C
    .asciz "FD DRAW START\n"
    .balign 4

glabel D_808D1D6C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D7C
    .asciz "../z_boss_fd.c"
    .balign 4

glabel D_808D1D8C
    .asciz "FD DRAW END\n"
    .balign 4

glabel D_808D1D9C
    .asciz "FD DRAW END2\n"
    .balign 4

.text
glabel BossFd_Draw
/* 051DC 808CFF9C 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 051E0 808CFFA0 AFA40050 */  sw      $a0, 0x0050($sp)           
/* 051E4 808CFFA4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 051E8 808CFFA8 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 051EC 808CFFAC 3C04808D */  lui     $a0, %hi(D_808D1D5C)       ## $a0 = 808D0000
/* 051F0 808CFFB0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 051F4 808CFFB4 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 051F8 808CFFB8 0C00084C */  jal     osSyncPrintf
              
/* 051FC 808CFFBC 24841D5C */  addiu   $a0, $a0, %lo(D_808D1D5C)  ## $a0 = 808D1D5C
/* 05200 808CFFC0 8FAF0050 */  lw      $t7, 0x0050($sp)           
/* 05204 808CFFC4 3C0E808D */  lui     $t6, %hi(func_808CDE30)    ## $t6 = 808D0000
/* 05208 808CFFC8 25CEDE30 */  addiu   $t6, $t6, %lo(func_808CDE30) ## $t6 = 808CDE30
/* 0520C 808CFFCC 8DF80218 */  lw      $t8, 0x0218($t7)           ## 00000218
/* 05210 808CFFD0 3C06808D */  lui     $a2, %hi(D_808D1D6C)       ## $a2 = 808D0000
/* 05214 808CFFD4 24C61D6C */  addiu   $a2, $a2, %lo(D_808D1D6C)  ## $a2 = 808D1D6C
/* 05218 808CFFD8 11D80023 */  beq     $t6, $t8, .L808D0068       
/* 0521C 808CFFDC 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 05220 808CFFE0 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 05224 808CFFE4 24071079 */  addiu   $a3, $zero, 0x1079         ## $a3 = 00001079
/* 05228 808CFFE8 0C031AB1 */  jal     Graph_OpenDisps              
/* 0522C 808CFFEC 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 05230 808CFFF0 0C024F46 */  jal     func_80093D18              
/* 05234 808CFFF4 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 05238 808CFFF8 8FB90050 */  lw      $t9, 0x0050($sp)           
/* 0523C 808CFFFC 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 05240 808D0000 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 05244 808D0004 87280230 */  lh      $t0, 0x0230($t9)           ## 00000230
/* 05248 808D0008 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 0524C 808D000C 240A0384 */  addiu   $t2, $zero, 0x0384         ## $t2 = 00000384
/* 05250 808D0010 31090002 */  andi    $t1, $t0, 0x0002           ## $t1 = 00000000
/* 05254 808D0014 11200007 */  beq     $t1, $zero, .L808D0034     
/* 05258 808D0018 240B044B */  addiu   $t3, $zero, 0x044B         ## $t3 = 0000044B
/* 0525C 808D001C 8E0402C0 */  lw      $a0, 0x02C0($s0)           ## 000002C0
/* 05260 808D0020 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 05264 808D0024 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 05268 808D0028 0C024CDC */  jal     Gfx_SetFog              
/* 0526C 808D002C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 05270 808D0030 AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
.L808D0034:
/* 05274 808D0034 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05278 808D0038 0C23423E */  jal     func_808D08F8              
/* 0527C 808D003C 8FA50050 */  lw      $a1, 0x0050($sp)           
/* 05280 808D0040 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 05284 808D0044 0C02F228 */  jal     func_800BC8A0              
/* 05288 808D0048 8E0502C0 */  lw      $a1, 0x02C0($s0)           ## 000002C0
/* 0528C 808D004C AE0202C0 */  sw      $v0, 0x02C0($s0)           ## 000002C0
/* 05290 808D0050 3C06808D */  lui     $a2, %hi(D_808D1D7C)       ## $a2 = 808D0000
/* 05294 808D0054 24C61D7C */  addiu   $a2, $a2, %lo(D_808D1D7C)  ## $a2 = 808D1D7C
/* 05298 808D0058 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 0529C 808D005C 27A40034 */  addiu   $a0, $sp, 0x0034           ## $a0 = FFFFFFE4
/* 052A0 808D0060 0C031AD5 */  jal     Graph_CloseDisps              
/* 052A4 808D0064 24071093 */  addiu   $a3, $zero, 0x1093         ## $a3 = 00001093
.L808D0068:
/* 052A8 808D0068 3C04808D */  lui     $a0, %hi(D_808D1D8C)       ## $a0 = 808D0000
/* 052AC 808D006C 0C00084C */  jal     osSyncPrintf
              
/* 052B0 808D0070 24841D8C */  addiu   $a0, $a0, %lo(D_808D1D8C)  ## $a0 = 808D1D8C
/* 052B4 808D0074 8FA40050 */  lw      $a0, 0x0050($sp)           
/* 052B8 808D0078 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 052BC 808D007C 0C233E26 */  jal     func_808CF898              
/* 052C0 808D0080 24841970 */  addiu   $a0, $a0, 0x1970           ## $a0 = 00001970
/* 052C4 808D0084 3C04808D */  lui     $a0, %hi(D_808D1D9C)       ## $a0 = 808D0000
/* 052C8 808D0088 0C00084C */  jal     osSyncPrintf
              
/* 052CC 808D008C 24841D9C */  addiu   $a0, $a0, %lo(D_808D1D9C)  ## $a0 = 808D1D9C
/* 052D0 808D0090 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 052D4 808D0094 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 052D8 808D0098 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 052DC 808D009C 03E00008 */  jr      $ra                        
/* 052E0 808D00A0 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
