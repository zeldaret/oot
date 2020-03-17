glabel func_80AD0D84
/* 018E4 80AD0D84 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 018E8 80AD0D88 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 018EC 80AD0D8C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 018F0 80AD0D90 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 018F4 80AD0D94 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 018F8 80AD0D98 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 018FC 80AD0D9C 3C05C47A */  lui     $a1, 0xC47A                ## $a1 = C47A0000
/* 01900 80AD0DA0 248400BC */  addiu   $a0, $a0, 0x00BC           ## $a0 = 000000BC
/* 01904 80AD0DA4 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 01908 80AD0DA8 3C074248 */  lui     $a3, 0x4248                ## $a3 = 42480000
/* 0190C 80AD0DAC 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01910 80AD0DB0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01914 80AD0DB4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01918 80AD0DB8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 0191C 80AD0DBC 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 01920 80AD0DC0 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 01924 80AD0DC4 44060000 */  mfc1    $a2, $f0                   
/* 01928 80AD0DC8 44070000 */  mfc1    $a3, $f0                   
/* 0192C 80AD0DCC 44051000 */  mfc1    $a1, $f2                   
/* 01930 80AD0DD0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 01934 80AD0DD4 E7A20010 */  swc1    $f2, 0x0010($sp)           
/* 01938 80AD0DD8 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 0193C 80AD0DDC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01940 80AD0DE0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01944 80AD0DE4 24070032 */  addiu   $a3, $zero, 0x0032         ## $a3 = 00000032
/* 01948 80AD0DE8 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 0194C 80AD0DEC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01950 80AD0DF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01954 80AD0DF4 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01958 80AD0DF8 5040000A */  beql    $v0, $zero, .L80AD0E24     
/* 0195C 80AD0DFC C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 01960 80AD0E00 0C2B3F48 */  jal     func_80ACFD20              
/* 01964 80AD0E04 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01968 80AD0E08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0196C 80AD0E0C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01970 80AD0E10 24053957 */  addiu   $a1, $zero, 0x3957         ## $a1 = 00003957
/* 01974 80AD0E14 C6060080 */  lwc1    $f6, 0x0080($s0)           ## 00000080
/* 01978 80AD0E18 10000038 */  beq     $zero, $zero, .L80AD0EFC   
/* 0197C 80AD0E1C E6060028 */  swc1    $f6, 0x0028($s0)           ## 00000028
/* 01980 80AD0E20 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
.L80AD0E24:
/* 01984 80AD0E24 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01988 80AD0E28 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 0198C 80AD0E2C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 01990 80AD0E30 4608003C */  c.lt.s  $f0, $f8                   
/* 01994 80AD0E34 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 01998 80AD0E38 3C074158 */  lui     $a3, 0x4158                ## $a3 = 41580000
/* 0199C 80AD0E3C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 019A0 80AD0E40 4502002F */  bc1fl   .L80AD0F00                 
/* 019A4 80AD0E44 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 019A8 80AD0E48 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.25
/* 019AC 80AD0E4C 44050000 */  mfc1    $a1, $f0                   
/* 019B0 80AD0E50 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 019B4 80AD0E54 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 019B8 80AD0E58 C6100028 */  lwc1    $f16, 0x0028($s0)          ## 00000028
/* 019BC 80AD0E5C C6120080 */  lwc1    $f18, 0x0080($s0)          ## 00000080
/* 019C0 80AD0E60 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 019C4 80AD0E64 44813000 */  mtc1    $at, $f6                   ## $f6 = 60.00
/* 019C8 80AD0E68 46128101 */  sub.s   $f4, $f16, $f18            
/* 019CC 80AD0E6C 4606203C */  c.lt.s  $f4, $f6                   
/* 019D0 80AD0E70 00000000 */  nop
/* 019D4 80AD0E74 45020022 */  bc1fl   .L80AD0F00                 
/* 019D8 80AD0E78 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
/* 019DC 80AD0E7C 8E0F0024 */  lw      $t7, 0x0024($s0)           ## 00000024
/* 019E0 80AD0E80 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 019E4 80AD0E84 24180096 */  addiu   $t8, $zero, 0x0096         ## $t8 = 00000096
/* 019E8 80AD0E88 ACAF0000 */  sw      $t7, 0x0000($a1)           ## FFFFFFF4
/* 019EC 80AD0E8C 8E0E0028 */  lw      $t6, 0x0028($s0)           ## 00000028
/* 019F0 80AD0E90 24190064 */  addiu   $t9, $zero, 0x0064         ## $t9 = 00000064
/* 019F4 80AD0E94 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 019F8 80AD0E98 ACAE0004 */  sw      $t6, 0x0004($a1)           ## FFFFFFF8
/* 019FC 80AD0E9C 8E0F002C */  lw      $t7, 0x002C($s0)           ## 0000002C
/* 01A00 80AD0EA0 3C0642A0 */  lui     $a2, 0x42A0                ## $a2 = 42A00000
/* 01A04 80AD0EA4 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 01A08 80AD0EA8 ACAF0008 */  sw      $t7, 0x0008($a1)           ## FFFFFFFC
/* 01A0C 80AD0EAC C6080080 */  lwc1    $f8, 0x0080($s0)           ## 00000080
/* 01A10 80AD0EB0 AFA80018 */  sw      $t0, 0x0018($sp)           
/* 01A14 80AD0EB4 AFB90014 */  sw      $t9, 0x0014($sp)           
/* 01A18 80AD0EB8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 01A1C 80AD0EBC 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01A20 80AD0EC0 0C00CD20 */  jal     func_80033480              
/* 01A24 80AD0EC4 E7A80038 */  swc1    $f8, 0x0038($sp)           
/* 01A28 80AD0EC8 3C0180AD */  lui     $at, %hi(D_80AD2934)       ## $at = 80AD0000
/* 01A2C 80AD0ECC C42A2934 */  lwc1    $f10, %lo(D_80AD2934)($at) 
/* 01A30 80AD0ED0 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01A34 80AD0ED4 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 01A38 80AD0ED8 24090002 */  addiu   $t1, $zero, 0x0002         ## $t1 = 00000002
/* 01A3C 80AD0EDC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 01A40 80AD0EE0 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01A44 80AD0EE4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A48 80AD0EE8 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 01A4C 80AD0EEC 3C074296 */  lui     $a3, 0x4296                ## $a3 = 42960000
/* 01A50 80AD0EF0 E7AA0014 */  swc1    $f10, 0x0014($sp)          
/* 01A54 80AD0EF4 0C2B3DE2 */  jal     func_80ACF788              
/* 01A58 80AD0EF8 E7B00018 */  swc1    $f16, 0x0018($sp)          
.L80AD0EFC:
/* 01A5C 80AD0EFC 260402F0 */  addiu   $a0, $s0, 0x02F0           ## $a0 = 000002F0
.L80AD0F00:
/* 01A60 80AD0F00 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 01A64 80AD0F04 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 01A68 80AD0F08 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 01A6C 80AD0F0C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 01A70 80AD0F10 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01A74 80AD0F14 860A02F2 */  lh      $t2, 0x02F2($s0)           ## 000002F2
/* 01A78 80AD0F18 860B02F0 */  lh      $t3, 0x02F0($s0)           ## 000002F0
/* 01A7C 80AD0F1C 014B6021 */  addu    $t4, $t2, $t3              
/* 01A80 80AD0F20 A60C02F2 */  sh      $t4, 0x02F2($s0)           ## 000002F2
/* 01A84 80AD0F24 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01A88 80AD0F28 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01A8C 80AD0F2C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 01A90 80AD0F30 03E00008 */  jr      $ra                        
/* 01A94 80AD0F34 00000000 */  nop


