.rdata
glabel D_80ABE3E0
    .asciz "ニュウ イニシャル[ %d ] ！！\n"
    .balign 4

glabel D_80ABE400
    .asciz "ダミーニュウ イニシャル[ %d ] ！！\n"
    .balign 4

glabel D_80ABE424
    .asciz "En_Ny_actor_move2[ %x ] ！！\n"
    .balign 4

.late_rodata
glabel D_80ABE4B4
 .word 0xBECCCCCD

.text
glabel EnNy_Init
/* 00000 80ABCBB0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80ABCBB4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 80ABCBB8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0000C 80ABCBBC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00010 80ABCBC0 3C0580AC */  lui     $a1, %hi(D_80ABE384)       ## $a1 = 80AC0000
/* 00014 80ABCBC4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 80ABCBC8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 0001C 80ABCBCC 24A5E384 */  addiu   $a1, $a1, %lo(D_80ABE384)  ## $a1 = 80ABE384
/* 00020 80ABCBD0 3C0E80AC */  lui     $t6, %hi(D_80ABE364)       ## $t6 = 80AC0000
/* 00024 80ABCBD4 25CEE364 */  addiu   $t6, $t6, %lo(D_80ABE364)  ## $t6 = 80ABE364
/* 00028 80ABCBD8 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 0002C 80ABCBDC AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 00030 80ABCBE0 A20F00AF */  sb      $t7, 0x00AF($s0)           ## 000000AF
/* 00034 80ABCBE4 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00038 80ABCBE8 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0003C 80ABCBEC 0C016EFE */  jal     func_8005BBF8              
/* 00040 80ABCBF0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00044 80ABCBF4 3C0780AC */  lui     $a3, %hi(D_80ABE354)       ## $a3 = 80AC0000
/* 00048 80ABCBF8 26180170 */  addiu   $t8, $s0, 0x0170           ## $t8 = 00000170
/* 0004C 80ABCBFC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00050 80ABCC00 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00054 80ABCC04 24E7E354 */  addiu   $a3, $a3, %lo(D_80ABE354)  ## $a3 = 80ABE354
/* 00058 80ABCC08 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0005C 80ABCC0C 0C017014 */  jal     func_8005C050              
/* 00060 80ABCC10 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00064 80ABCC14 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00068 80ABCC18 24C6B5EC */  addiu   $a2, $a2, 0xB5EC           ## $a2 = 8002B5EC
/* 0006C 80ABCC1C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00070 80ABCC20 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00074 80ABCC24 0C00AC78 */  jal     ActorShape_Init
              
/* 00078 80ABCC28 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 0007C 80ABCC2C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 00080 80ABCC30 A60001CA */  sh      $zero, 0x01CA($s0)         ## 000001CA
/* 00084 80ABCC34 A20001D0 */  sb      $zero, 0x01D0($s0)         ## 000001D0
/* 00088 80ABCC38 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 0008C 80ABCC3C 0C00B58B */  jal     Actor_SetScale
              
/* 00090 80ABCC40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00094 80ABCC44 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00098 80ABCC48 A60000B6 */  sh      $zero, 0x00B6($s0)         ## 000000B6
/* 0009C 80ABCC4C 3C0180AC */  lui     $at, %hi(D_80ABE4B4)       ## $at = 80AC0000
/* 000A0 80ABCC50 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 000A4 80ABCC54 C424E4B4 */  lwc1    $f4, %lo(D_80ABE4B4)($at)  
/* 000A8 80ABCC58 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000AC 80ABCC5C 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 000B0 80ABCC60 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.25
/* 000B4 80ABCC64 24190002 */  addiu   $t9, $zero, 0x0002         ## $t9 = 00000002
/* 000B8 80ABCC68 240800FF */  addiu   $t0, $zero, 0x00FF         ## $t0 = 000000FF
/* 000BC 80ABCC6C A60001CC */  sh      $zero, 0x01CC($s0)         ## 000001CC
/* 000C0 80ABCC70 A61901CE */  sh      $t9, 0x01CE($s0)           ## 000001CE
/* 000C4 80ABCC74 AE0801D4 */  sw      $t0, 0x01D4($s0)           ## 000001D4
/* 000C8 80ABCC78 AE0001D8 */  sw      $zero, 0x01D8($s0)         ## 000001D8
/* 000CC 80ABCC7C E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 000D0 80ABCC80 E60001E8 */  swc1    $f0, 0x01E8($s0)           ## 000001E8
/* 000D4 80ABCC84 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 000D8 80ABCC88 14A0000F */  bne     $a1, $zero, .L80ABCCC8     
/* 000DC 80ABCC8C E60601E0 */  swc1    $f6, 0x01E0($s0)           ## 000001E0
/* 000E0 80ABCC90 3C0480AC */  lui     $a0, %hi(D_80ABE3E0)       ## $a0 = 80AC0000
/* 000E4 80ABCC94 0C00084C */  jal     osSyncPrintf
              
/* 000E8 80ABCC98 2484E3E0 */  addiu   $a0, $a0, %lo(D_80ABE3E0)  ## $a0 = 80ABE3E0
/* 000EC 80ABCC9C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 000F0 80ABCCA0 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 000F4 80ABCCA4 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 000F8 80ABCCA8 A20000AE */  sb      $zero, 0x00AE($s0)         ## 000000AE
/* 000FC 80ABCCAC AE0001D4 */  sw      $zero, 0x01D4($s0)         ## 000001D4
/* 00100 80ABCCB0 AE0901D8 */  sw      $t1, 0x01D8($s0)           ## 000001D8
/* 00104 80ABCCB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00108 80ABCCB8 0C2AF36F */  jal     func_80ABCDBC              
/* 0010C 80ABCCBC E60801E0 */  swc1    $f8, 0x01E0($s0)           ## 000001E0
/* 00110 80ABCCC0 10000011 */  beq     $zero, $zero, .L80ABCD08   
/* 00114 80ABCCC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABCCC8:
/* 00118 80ABCCC8 3C0480AC */  lui     $a0, %hi(D_80ABE400)       ## $a0 = 80AC0000
/* 0011C 80ABCCCC 0C00084C */  jal     osSyncPrintf
              
/* 00120 80ABCCD0 2484E400 */  addiu   $a0, $a0, %lo(D_80ABE400)  ## $a0 = 80ABE400
/* 00124 80ABCCD4 3C0580AC */  lui     $a1, %hi(func_80ABDBF8)    ## $a1 = 80AC0000
/* 00128 80ABCCD8 24A5DBF8 */  addiu   $a1, $a1, %lo(func_80ABDBF8) ## $a1 = 80ABDBF8
/* 0012C 80ABCCDC 3C0480AC */  lui     $a0, %hi(D_80ABE424)       ## $a0 = 80AC0000
/* 00130 80ABCCE0 2484E424 */  addiu   $a0, $a0, %lo(D_80ABE424)  ## $a0 = 80ABE424
/* 00134 80ABCCE4 0C00084C */  jal     osSyncPrintf
              
/* 00138 80ABCCE8 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 0013C 80ABCCEC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00140 80ABCCF0 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 00144 80ABCCF4 240B0009 */  addiu   $t3, $zero, 0x0009         ## $t3 = 00000009
/* 00148 80ABCCF8 A20A00AE */  sb      $t2, 0x00AE($s0)           ## 000000AE
/* 0014C 80ABCCFC A20B0164 */  sb      $t3, 0x0164($s0)           ## 00000164
/* 00150 80ABCD00 AE050130 */  sw      $a1, 0x0130($s0)           ## 00000130
/* 00154 80ABCD04 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABCD08:
/* 00158 80ABCD08 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0015C 80ABCD0C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00160 80ABCD10 03E00008 */  jr      $ra                        
/* 00164 80ABCD14 00000000 */  nop
