glabel EnSkb_Init
/* 001B8 80AFCB58 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 001BC 80AFCB5C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 001C0 80AFCB60 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 001C4 80AFCB64 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 001C8 80AFCB68 3C0580B0 */  lui     $a1, %hi(D_80AFE0D0)       ## $a1 = 80B00000
/* 001CC 80AFCB6C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 001D0 80AFCB70 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001D4 80AFCB74 24A5E0D0 */  addiu   $a1, $a1, %lo(D_80AFE0D0)  ## $a1 = 80AFE0D0
/* 001D8 80AFCB78 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 001DC 80AFCB7C 3C0E80B0 */  lui     $t6, %hi(D_80AFE078)       ## $t6 = 80B00000
/* 001E0 80AFCB80 25CEE078 */  addiu   $t6, $t6, %lo(D_80AFE078)  ## $t6 = 80AFE078
/* 001E4 80AFCB84 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 001E8 80AFCB88 44050000 */  mfc1    $a1, $f0                   
/* 001EC 80AFCB8C 44070000 */  mfc1    $a3, $f0                   
/* 001F0 80AFCB90 AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 001F4 80AFCB94 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 001F8 80AFCB98 0C00AC78 */  jal     ActorShape_Init
              
/* 001FC 80AFCB9C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00200 80AFCBA0 26020024 */  addiu   $v0, $s0, 0x0024           ## $v0 = 00000024
/* 00204 80AFCBA4 8C580000 */  lw      $t8, 0x0000($v0)           ## 00000024
/* 00208 80AFCBA8 3C01C5FA */  lui     $at, 0xC5FA                ## $at = C5FA0000
/* 0020C 80AFCBAC 44812000 */  mtc1    $at, $f4                   ## $f4 = -8000.00
/* 00210 80AFCBB0 AE180038 */  sw      $t8, 0x0038($s0)           ## 00000038
/* 00214 80AFCBB4 8C4F0004 */  lw      $t7, 0x0004($v0)           ## 00000028
/* 00218 80AFCBB8 241900FE */  addiu   $t9, $zero, 0x00FE         ## $t9 = 000000FE
/* 0021C 80AFCBBC 24080002 */  addiu   $t0, $zero, 0x0002         ## $t0 = 00000002
/* 00220 80AFCBC0 AE0F003C */  sw      $t7, 0x003C($s0)           ## 0000003C
/* 00224 80AFCBC4 8C580008 */  lw      $t8, 0x0008($v0)           ## 0000002C
/* 00228 80AFCBC8 A21900AE */  sb      $t9, 0x00AE($s0)           ## 000000AE
/* 0022C 80AFCBCC A20800AF */  sb      $t0, 0x00AF($s0)           ## 000000AF
/* 00230 80AFCBD0 E60400BC */  swc1    $f4, 0x00BC($s0)           ## 000000BC
/* 00234 80AFCBD4 AE180040 */  sw      $t8, 0x0040($s0)           ## 00000040
/* 00238 80AFCBD8 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 0023C 80AFCBDC 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00240 80AFCBE0 26090190 */  addiu   $t1, $s0, 0x0190           ## $t1 = 00000190
/* 00244 80AFCBE4 260A0208 */  addiu   $t2, $s0, 0x0208           ## $t2 = 00000208
/* 00248 80AFCBE8 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 0024C 80AFCBEC AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 00250 80AFCBF0 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 00254 80AFCBF4 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 00258 80AFCBF8 24E71854 */  addiu   $a3, $a3, 0x1854           ## $a3 = 06001854
/* 0025C 80AFCBFC 24C641F8 */  addiu   $a2, $a2, 0x41F8           ## $a2 = 060041F8
/* 00260 80AFCC00 AFA20034 */  sw      $v0, 0x0034($sp)           
/* 00264 80AFCC04 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00268 80AFCC08 0C02915F */  jal     SkelAnime_Init
              
/* 0026C 80AFCC0C 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00270 80AFCC10 240C0055 */  addiu   $t4, $zero, 0x0055         ## $t4 = 00000055
/* 00274 80AFCC14 A20C0117 */  sb      $t4, 0x0117($s0)           ## 00000117
/* 00278 80AFCC18 260502A4 */  addiu   $a1, $s0, 0x02A4           ## $a1 = 000002A4
/* 0027C 80AFCC1C AFA50030 */  sw      $a1, 0x0030($sp)           
/* 00280 80AFCC20 0C016EFE */  jal     func_8005BBF8              
/* 00284 80AFCC24 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00288 80AFCC28 3C0780B0 */  lui     $a3, %hi(D_80AFE068)       ## $a3 = 80B00000
/* 0028C 80AFCC2C 260D02C4 */  addiu   $t5, $s0, 0x02C4           ## $t5 = 000002C4
/* 00290 80AFCC30 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00294 80AFCC34 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 00298 80AFCC38 24E7E068 */  addiu   $a3, $a3, %lo(D_80AFE068)  ## $a3 = 80AFE068
/* 0029C 80AFCC3C 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 002A0 80AFCC40 0C017014 */  jal     func_8005C050              
/* 002A4 80AFCC44 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 002A8 80AFCC48 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 002AC 80AFCC4C 3C0180B0 */  lui     $at, %hi(D_80AFE108)       ## $at = 80B00000
/* 002B0 80AFCC50 C42AE108 */  lwc1    $f10, %lo(D_80AFE108)($at) 
/* 002B4 80AFCC54 448E3000 */  mtc1    $t6, $f6                   ## $f6 = 0.00
/* 002B8 80AFCC58 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 002BC 80AFCC5C 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 002C0 80AFCC60 46803220 */  cvt.s.w $f8, $f6                   
/* 002C4 80AFCC64 3C0180B0 */  lui     $at, %hi(D_80AFE10C)       ## $at = 80B00000
/* 002C8 80AFCC68 C426E10C */  lwc1    $f6, %lo(D_80AFE10C)($at)  
/* 002CC 80AFCC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002D0 80AFCC70 460A4402 */  mul.s   $f16, $f8, $f10            
/* 002D4 80AFCC74 46128100 */  add.s   $f4, $f16, $f18            
/* 002D8 80AFCC78 46062202 */  mul.s   $f8, $f4, $f6              
/* 002DC 80AFCC7C 44054000 */  mfc1    $a1, $f8                   
/* 002E0 80AFCC80 0C00B58B */  jal     Actor_SetScale
              
/* 002E4 80AFCC84 00000000 */  nop
/* 002E8 80AFCC88 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 002EC 80AFCC8C 8E0F02C0 */  lw      $t7, 0x02C0($s0)           ## 000002C0
/* 002F0 80AFCC90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002F4 80AFCC94 2442000A */  addiu   $v0, $v0, 0x000A           ## $v0 = 0000000A
/* 002F8 80AFCC98 00021400 */  sll     $v0, $v0, 16               
/* 002FC 80AFCC9C 00021403 */  sra     $v0, $v0, 16               
/* 00300 80AFCCA0 A5E20036 */  sh      $v0, 0x0036($t7)           ## 00000036
/* 00304 80AFCCA4 8E1802C0 */  lw      $t8, 0x02C0($s0)           ## 000002C0
/* 00308 80AFCCA8 A702002E */  sh      $v0, 0x002E($t8)           ## 0000002E
/* 0030C 80AFCCAC 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00310 80AFCCB0 8E1902C0 */  lw      $t9, 0x02C0($s0)           ## 000002C0
/* 00314 80AFCCB4 00021040 */  sll     $v0, $v0,  1               
/* 00318 80AFCCB8 24420014 */  addiu   $v0, $v0, 0x0014           ## $v0 = 0000001E
/* 0031C 80AFCCBC 00021400 */  sll     $v0, $v0, 16               
/* 00320 80AFCCC0 00021403 */  sra     $v0, $v0, 16               
/* 00324 80AFCCC4 A7220076 */  sh      $v0, 0x0076($t9)           ## 00000076
/* 00328 80AFCCC8 8E0802C0 */  lw      $t0, 0x02C0($s0)           ## 000002C0
/* 0032C 80AFCCCC A502006E */  sh      $v0, 0x006E($t0)           ## 0000006E
/* 00330 80AFCCD0 8FA90034 */  lw      $t1, 0x0034($sp)           
/* 00334 80AFCCD4 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00338 80AFCCD8 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 0033C 80AFCCDC AE0B0008 */  sw      $t3, 0x0008($s0)           ## 00000008
/* 00340 80AFCCE0 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 00344 80AFCCE4 AE0A000C */  sw      $t2, 0x000C($s0)           ## 0000000C
/* 00348 80AFCCE8 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 0034C 80AFCCEC E60A0080 */  swc1    $f10, 0x0080($s0)          ## 00000080
/* 00350 80AFCCF0 0C2BF37E */  jal     func_80AFCDF8              
/* 00354 80AFCCF4 AE0B0010 */  sw      $t3, 0x0010($s0)           ## 00000010
/* 00358 80AFCCF8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0035C 80AFCCFC 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00360 80AFCD00 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00364 80AFCD04 03E00008 */  jr      $ra                        
/* 00368 80AFCD08 00000000 */  nop


