glabel func_80AABC10
/* 019C0 80AABC10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 019C4 80AABC14 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 019C8 80AABC18 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 019CC 80AABC1C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 019D0 80AABC20 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 019D4 80AABC24 00651821 */  addu    $v1, $v1, $a1              
/* 019D8 80AABC28 946304C6 */  lhu     $v1, 0x04C6($v1)           ## 000104C6
/* 019DC 80AABC2C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 019E0 80AABC30 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 019E4 80AABC34 28610004 */  slti    $at, $v1, 0x0004           
/* 019E8 80AABC38 14200009 */  bne     $at, $zero, .L80AABC60     
/* 019EC 80AABC3C 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 019F0 80AABC40 3C0E80AB */  lui     $t6, %hi(func_80AAB948)    ## $t6 = 80AB0000
/* 019F4 80AABC44 25CEB948 */  addiu   $t6, $t6, %lo(func_80AAB948) ## $t6 = 80AAB948
/* 019F8 80AABC48 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 019FC 80AABC4C AC8E0190 */  sw      $t6, 0x0190($a0)           ## 00000190
/* 01A00 80AABC50 00250821 */  addu    $at, $at, $a1              
/* 01A04 80AABC54 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 01A08 80AABC58 10000027 */  beq     $zero, $zero, .L80AABCF8   
/* 01A0C 80AABC5C A42F04C6 */  sh      $t7, 0x04C6($at)           ## 000104C6
.L80AABC60:
/* 01A10 80AABC60 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01A14 80AABC64 14610020 */  bne     $v1, $at, .L80AABCE8       
/* 01A18 80AABC68 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 01A1C 80AABC6C 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 01A20 80AABC70 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 01A24 80AABC74 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 01A28 80AABC78 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 01A2C 80AABC7C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 01A30 80AABC80 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01A34 80AABC84 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 01A38 80AABC88 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 01A3C 80AABC8C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 01A40 80AABC90 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 01A44 80AABC94 862801D4 */  lh      $t0, 0x01D4($s1)           ## 000001D4
/* 01A48 80AABC98 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 01A4C 80AABC9C 44814000 */  mtc1    $at, $f8                   ## $f8 = 30.00
/* 01A50 80AABCA0 44882000 */  mtc1    $t0, $f4                   ## $f4 = 0.00
/* 01A54 80AABCA4 24191067 */  addiu   $t9, $zero, 0x1067         ## $t9 = 00001067
/* 01A58 80AABCA8 A639010E */  sh      $t9, 0x010E($s1)           ## 0000010E
/* 01A5C 80AABCAC 468021A0 */  cvt.s.w $f6, $f4                   
/* 01A60 80AABCB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01A64 80AABCB4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01A68 80AABCB8 46083280 */  add.s   $f10, $f6, $f8             
/* 01A6C 80AABCBC 44065000 */  mfc1    $a2, $f10                  
/* 01A70 80AABCC0 0C00BCB3 */  jal     func_8002F2CC              
/* 01A74 80AABCC4 00000000 */  nop
/* 01A78 80AABCC8 3C0980AB */  lui     $t1, %hi(func_80AAB948)    ## $t1 = 80AB0000
/* 01A7C 80AABCCC 2529B948 */  addiu   $t1, $t1, %lo(func_80AAB948) ## $t1 = 80AAB948
/* 01A80 80AABCD0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01A84 80AABCD4 AE290190 */  sw      $t1, 0x0190($s1)           ## 00000190
/* 01A88 80AABCD8 00300821 */  addu    $at, $at, $s0              
/* 01A8C 80AABCDC 240A0004 */  addiu   $t2, $zero, 0x0004         ## $t2 = 00000004
/* 01A90 80AABCE0 10000005 */  beq     $zero, $zero, .L80AABCF8   
/* 01A94 80AABCE4 A42A04C6 */  sh      $t2, 0x04C6($at)           ## 000104C6
.L80AABCE8:
/* 01A98 80AABCE8 8C4B0680 */  lw      $t3, 0x0680($v0)           ## 00000680
/* 01A9C 80AABCEC 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 01AA0 80AABCF0 01616025 */  or      $t4, $t3, $at              ## $t4 = 00800000
/* 01AA4 80AABCF4 AC4C0680 */  sw      $t4, 0x0680($v0)           ## 00000680
.L80AABCF8:
/* 01AA8 80AABCF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01AAC 80AABCFC 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 01AB0 80AABD00 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01AB4 80AABD04 03E00008 */  jr      $ra                        
/* 01AB8 80AABD08 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
