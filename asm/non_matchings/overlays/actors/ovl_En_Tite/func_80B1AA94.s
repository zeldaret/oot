glabel func_80B1AA94
/* 02014 80B1AA94 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 02018 80B1AA98 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0201C 80B1AA9C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02020 80B1AAA0 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02024 80B1AAA4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 02028 80B1AAA8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0202C 80B1AAAC 248400B8 */  addiu   $a0, $a0, 0x00B8           ## $a0 = 000000B8
/* 02030 80B1AAB0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 02034 80B1AAB4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 02038 80B1AAB8 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 0203C 80B1AABC 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 02040 80B1AAC0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 02044 80B1AAC4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 02048 80B1AAC8 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 0204C 80B1AACC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 02050 80B1AAD0 26050348 */  addiu   $a1, $s0, 0x0348           ## $a1 = 00000348
/* 02054 80B1AAD4 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 02058 80B1AAD8 11E00033 */  beq     $t7, $zero, .L80B1ABA8     
/* 0205C 80B1AADC 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 02060 80B1AAE0 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 02064 80B1AAE4 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 02068 80B1AAE8 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 0206C 80B1AAEC AFA80018 */  sw      $t0, 0x0018($sp)           
/* 02070 80B1AAF0 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 02074 80B1AAF4 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 02078 80B1AAF8 0C00CD20 */  jal     func_80033480              
/* 0207C 80B1AAFC 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 02080 80B1AB00 24090050 */  addiu   $t1, $zero, 0x0050         ## $t1 = 00000050
/* 02084 80B1AB04 240A000F */  addiu   $t2, $zero, 0x000F         ## $t2 = 0000000F
/* 02088 80B1AB08 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 0208C 80B1AB0C AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 02090 80B1AB10 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 02094 80B1AB14 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 02098 80B1AB18 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0209C 80B1AB1C 26050354 */  addiu   $a1, $s0, 0x0354           ## $a1 = 00000354
/* 020A0 80B1AB20 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 020A4 80B1AB24 0C00CD20 */  jal     func_80033480              
/* 020A8 80B1AB28 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 020AC 80B1AB2C 240C0050 */  addiu   $t4, $zero, 0x0050         ## $t4 = 00000050
/* 020B0 80B1AB30 240D000F */  addiu   $t5, $zero, 0x000F         ## $t5 = 0000000F
/* 020B4 80B1AB34 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 020B8 80B1AB38 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 020BC 80B1AB3C AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 020C0 80B1AB40 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 020C4 80B1AB44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 020C8 80B1AB48 26050360 */  addiu   $a1, $s0, 0x0360           ## $a1 = 00000360
/* 020CC 80B1AB4C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 020D0 80B1AB50 0C00CD20 */  jal     func_80033480              
/* 020D4 80B1AB54 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 020D8 80B1AB58 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 020DC 80B1AB5C 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 020E0 80B1AB60 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 020E4 80B1AB64 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 020E8 80B1AB68 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 020EC 80B1AB6C AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 020F0 80B1AB70 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 020F4 80B1AB74 2605036C */  addiu   $a1, $s0, 0x036C           ## $a1 = 0000036C
/* 020F8 80B1AB78 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 020FC 80B1AB7C 0C00CD20 */  jal     func_80033480              
/* 02100 80B1AB80 24070002 */  addiu   $a3, $zero, 0x0002         ## $a3 = 00000002
/* 02104 80B1AB84 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 02108 80B1AB88 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 0210C 80B1AB8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02110 80B1AB90 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 02114 80B1AB94 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 02118 80B1AB98 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 0211C 80B1AB9C E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 02120 80B1ABA0 0C2C6317 */  jal     func_80B18C5C              
/* 02124 80B1ABA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B1ABA8:
/* 02128 80B1ABA8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0212C 80B1ABAC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02130 80B1ABB0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 02134 80B1ABB4 03E00008 */  jr      $ra                        
/* 02138 80B1ABB8 00000000 */  nop
