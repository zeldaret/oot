.rdata
glabel D_808B7654
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

glabel D_808B766C
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

glabel D_808B7684
    .asciz "../z_bg_spot17_funen.c"
    .balign 4

.late_rodata
glabel D_808B769C
    .float 9.58738E-5

.text
glabel func_808B7478
/* 00078 808B7478 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 0007C 808B747C AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00080 808B7480 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00084 808B7484 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00088 808B7488 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 0008C 808B748C AFA40070 */  sw      $a0, 0x0070($sp)           
/* 00090 808B7490 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00094 808B7494 3C06808B */  lui     $a2, %hi(D_808B7654)       ## $a2 = 808B0000
/* 00098 808B7498 24C67654 */  addiu   $a2, $a2, %lo(D_808B7654)  ## $a2 = 808B7654
/* 0009C 808B749C 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 000A0 808B74A0 24070099 */  addiu   $a3, $zero, 0x0099         ## $a3 = 00000099
/* 000A4 808B74A4 0C031AB1 */  jal     Graph_OpenDisps              
/* 000A8 808B74A8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 000AC 808B74AC 0C024F61 */  jal     func_80093D84              
/* 000B0 808B74B0 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 000B4 808B74B4 862E07A0 */  lh      $t6, 0x07A0($s1)           ## 000007A0
/* 000B8 808B74B8 000E7880 */  sll     $t7, $t6,  2               
/* 000BC 808B74BC 022FC021 */  addu    $t8, $s1, $t7              
/* 000C0 808B74C0 0C016A7D */  jal     func_8005A9F4              
/* 000C4 808B74C4 8F040790 */  lw      $a0, 0x0790($t8)           ## 00000790
/* 000C8 808B74C8 8FB90070 */  lw      $t9, 0x0070($sp)           
/* 000CC 808B74CC 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 000D0 808B74D0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 000D4 808B74D4 872800B6 */  lh      $t0, 0x00B6($t9)           ## 000000B6
/* 000D8 808B74D8 00484823 */  subu    $t1, $v0, $t0              
/* 000DC 808B74DC 01215021 */  addu    $t2, $t1, $at              
/* 000E0 808B74E0 000A5C00 */  sll     $t3, $t2, 16               
/* 000E4 808B74E4 000B6403 */  sra     $t4, $t3, 16               
/* 000E8 808B74E8 448C2000 */  mtc1    $t4, $f4                   ## $f4 = 0.00
/* 000EC 808B74EC 3C01808B */  lui     $at, %hi(D_808B769C)       ## $at = 808B0000
/* 000F0 808B74F0 C428769C */  lwc1    $f8, %lo(D_808B769C)($at)  
/* 000F4 808B74F4 468021A0 */  cvt.s.w $f6, $f4                   
/* 000F8 808B74F8 46083302 */  mul.s   $f12, $f6, $f8             
/* 000FC 808B74FC 0C034348 */  jal     Matrix_RotateY              
/* 00100 808B7500 00000000 */  nop
/* 00104 808B7504 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00108 808B7508 3C0EDA38 */  lui     $t6, 0xDA38                ## $t6 = DA380000
/* 0010C 808B750C 35CE0003 */  ori     $t6, $t6, 0x0003           ## $t6 = DA380003
/* 00110 808B7510 244D0008 */  addiu   $t5, $v0, 0x0008           ## $t5 = 00000008
/* 00114 808B7514 AE0D02D0 */  sw      $t5, 0x02D0($s0)           ## 000002D0
/* 00118 808B7518 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 0011C 808B751C 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00120 808B7520 3C05808B */  lui     $a1, %hi(D_808B766C)       ## $a1 = 808B0000
/* 00124 808B7524 24A5766C */  addiu   $a1, $a1, %lo(D_808B766C)  ## $a1 = 808B766C
/* 00128 808B7528 240600A1 */  addiu   $a2, $zero, 0x00A1         ## $a2 = 000000A1
/* 0012C 808B752C 0C0346A2 */  jal     Matrix_NewMtx              
/* 00130 808B7530 AFA20054 */  sw      $v0, 0x0054($sp)           
/* 00134 808B7534 8FA30054 */  lw      $v1, 0x0054($sp)           
/* 00138 808B7538 3C18DB06 */  lui     $t8, 0xDB06                ## $t8 = DB060000
/* 0013C 808B753C 37180020 */  ori     $t8, $t8, 0x0020           ## $t8 = DB060020
/* 00140 808B7540 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00144 808B7544 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 00148 808B7548 3C070001 */  lui     $a3, 0x0001                ## $a3 = 00010000
/* 0014C 808B754C 00F13821 */  addu    $a3, $a3, $s1              
/* 00150 808B7550 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 00154 808B7554 AE0F02D0 */  sw      $t7, 0x02D0($s0)           ## 000002D0
/* 00158 808B7558 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0015C 808B755C 8CE71DE4 */  lw      $a3, 0x1DE4($a3)           ## 00011DE4
/* 00160 808B7560 8E240000 */  lw      $a0, 0x0000($s1)           ## 00000000
/* 00164 808B7564 24190020 */  addiu   $t9, $zero, 0x0020         ## $t9 = 00000020
/* 00168 808B7568 00073823 */  subu    $a3, $zero, $a3            
/* 0016C 808B756C 30E7007F */  andi    $a3, $a3, 0x007F           ## $a3 = 00000000
/* 00170 808B7570 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 00174 808B7574 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 00178 808B7578 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 0017C 808B757C 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 00180 808B7580 AFAB0028 */  sw      $t3, 0x0028($sp)           
/* 00184 808B7584 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 00188 808B7588 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 0018C 808B758C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00190 808B7590 AFA70020 */  sw      $a3, 0x0020($sp)           
/* 00194 808B7594 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00198 808B7598 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 0019C 808B759C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 001A0 808B75A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 001A4 808B75A4 0C0253D0 */  jal     Gfx_TwoTexScroll              
/* 001A8 808B75A8 AFA20050 */  sw      $v0, 0x0050($sp)           
/* 001AC 808B75AC 8FA30050 */  lw      $v1, 0x0050($sp)           
/* 001B0 808B75B0 3C0E0600 */  lui     $t6, 0x0600                ## $t6 = 06000000
/* 001B4 808B75B4 25CE0B40 */  addiu   $t6, $t6, 0x0B40           ## $t6 = 06000B40
/* 001B8 808B75B8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 001BC 808B75BC 8E0202D0 */  lw      $v0, 0x02D0($s0)           ## 000002D0
/* 001C0 808B75C0 3C0DDE00 */  lui     $t5, 0xDE00                ## $t5 = DE000000
/* 001C4 808B75C4 3C06808B */  lui     $a2, %hi(D_808B7684)       ## $a2 = 808B0000
/* 001C8 808B75C8 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 001CC 808B75CC AE0C02D0 */  sw      $t4, 0x02D0($s0)           ## 000002D0
/* 001D0 808B75D0 AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 001D4 808B75D4 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 001D8 808B75D8 8E250000 */  lw      $a1, 0x0000($s1)           ## 00000000
/* 001DC 808B75DC 24C67684 */  addiu   $a2, $a2, %lo(D_808B7684)  ## $a2 = 808B7684
/* 001E0 808B75E0 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFE8
/* 001E4 808B75E4 0C031AD5 */  jal     Graph_CloseDisps              
/* 001E8 808B75E8 240700B0 */  addiu   $a3, $zero, 0x00B0         ## $a3 = 000000B0
/* 001EC 808B75EC 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 001F0 808B75F0 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 001F4 808B75F4 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 001F8 808B75F8 03E00008 */  jr      $ra                        
/* 001FC 808B75FC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
