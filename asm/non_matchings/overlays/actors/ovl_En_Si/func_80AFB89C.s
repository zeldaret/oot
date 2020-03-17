glabel func_80AFB89C
/* 0020C 80AFB89C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00210 80AFB8A0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00214 80AFB8A4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00218 80AFB8A8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0021C 80AFB8AC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00220 80AFB8B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00224 80AFB8B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00228 80AFB8B8 3C063ECC */  lui     $a2, 0x3ECC                ## $a2 = 3ECC0000
/* 0022C 80AFB8BC 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3ECCCCCD
/* 00230 80AFB8C0 24840050 */  addiu   $a0, $a0, 0x0050           ## $a0 = 00000050
/* 00234 80AFB8C4 3C053E80 */  lui     $a1, 0x3E80                ## $a1 = 3E800000
/* 00238 80AFB8C8 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 0023C 80AFB8CC AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00240 80AFB8D0 0C01E0C4 */  jal     Math_SmoothScaleMaxMinF
              
/* 00244 80AFB8D4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00248 80AFB8D8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0024C 80AFB8DC 0C00B58B */  jal     Actor_SetScale
              
/* 00250 80AFB8E0 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 00254 80AFB8E4 861800B6 */  lh      $t8, 0x00B6($s0)           ## 000000B6
/* 00258 80AFB8E8 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 0025C 80AFB8EC 24012000 */  addiu   $at, $zero, 0x2000         ## $at = 00002000
/* 00260 80AFB8F0 27190400 */  addiu   $t9, $t8, 0x0400           ## $t9 = 00000400
/* 00264 80AFB8F4 31092000 */  andi    $t1, $t0, 0x2000           ## $t1 = 00000000
/* 00268 80AFB8F8 11210010 */  beq     $t1, $at, .L80AFB93C       
/* 0026C 80AFB8FC A61900B6 */  sh      $t9, 0x00B6($s0)           ## 000000B6
/* 00270 80AFB900 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00274 80AFB904 0C021344 */  jal     Item_Give              
/* 00278 80AFB908 24050071 */  addiu   $a1, $zero, 0x0071         ## $a1 = 00000071
/* 0027C 80AFB90C 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 00280 80AFB910 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 00284 80AFB914 240500B4 */  addiu   $a1, $zero, 0x00B4         ## $a1 = 000000B4
/* 00288 80AFB918 A56A0110 */  sh      $t2, 0x0110($t3)           ## 00000110
/* 0028C 80AFB91C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00290 80AFB920 0C042DA0 */  jal     func_8010B680              
/* 00294 80AFB924 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00298 80AFB928 0C03D719 */  jal     func_800F5C64              
/* 0029C 80AFB92C 24040039 */  addiu   $a0, $zero, 0x0039         ## $a0 = 00000039
/* 002A0 80AFB930 3C0C80B0 */  lui     $t4, %hi(func_80AFB950)    ## $t4 = 80B00000
/* 002A4 80AFB934 258CB950 */  addiu   $t4, $t4, %lo(func_80AFB950) ## $t4 = 80AFB950
/* 002A8 80AFB938 AE0C014C */  sw      $t4, 0x014C($s0)           ## 0000014C
.L80AFB93C:
/* 002AC 80AFB93C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 002B0 80AFB940 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002B4 80AFB944 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 002B8 80AFB948 03E00008 */  jr      $ra                        
/* 002BC 80AFB94C 00000000 */  nop


