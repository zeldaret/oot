.late_rodata
glabel D_808709BC
    .float 6.400000095367432

.text
glabel func_80870394
/* 007B4 80870394 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 007B8 80870398 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 007BC 8087039C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 007C0 808703A0 908E017D */  lbu     $t6, 0x017D($a0)           ## 0000017D
/* 007C4 808703A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 007C8 808703A8 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 007CC 808703AC 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 007D0 808703B0 51E00068 */  beql    $t7, $zero, .L80870554     
/* 007D4 808703B4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 007D8 808703B8 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 007DC 808703BC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 007E0 808703C0 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 007E4 808703C4 00184343 */  sra     $t0, $t8, 13               
/* 007E8 808703C8 31090003 */  andi    $t1, $t0, 0x0003           ## $t1 = 00000000
/* 007EC 808703CC AFA90030 */  sw      $t1, 0x0030($sp)           
/* 007F0 808703D0 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 007F4 808703D4 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 007F8 808703D8 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 007FC 808703DC 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00800 808703E0 3C0141C8 */  lui     $at, 0x41C8                ## $at = 41C80000
/* 00804 808703E4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00808 808703E8 E7A00034 */  swc1    $f0, 0x0034($sp)           
/* 0080C 808703EC E7A0003C */  swc1    $f0, 0x003C($sp)           
/* 00810 808703F0 E7A00038 */  swc1    $f0, 0x0038($sp)           
/* 00814 808703F4 860A0030 */  lh      $t2, 0x0030($s0)           ## 00000030
/* 00818 808703F8 44070000 */  mfc1    $a3, $f0                   
/* 0081C 808703FC 27A60034 */  addiu   $a2, $sp, 0x0034           ## $a2 = FFFFFFF4
/* 00820 80870400 15400005 */  bne     $t2, $zero, .L80870418     
/* 00824 80870404 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00828 80870408 3C01425C */  lui     $at, 0x425C                ## $at = 425C0000
/* 0082C 8087040C 44812000 */  mtc1    $at, $f4                   ## $f4 = 55.00
/* 00830 80870410 10000006 */  beq     $zero, $zero, .L8087042C   
/* 00834 80870414 E7A40038 */  swc1    $f4, 0x0038($sp)           
.L80870418:
/* 00838 80870418 44813000 */  mtc1    $at, $f6                   ## $f6 = 55.00
/* 0083C 8087041C 3C01C120 */  lui     $at, 0xC120                ## $at = C1200000
/* 00840 80870420 44814000 */  mtc1    $at, $f8                   ## $f8 = -10.00
/* 00844 80870424 E7A6003C */  swc1    $f6, 0x003C($sp)           
/* 00848 80870428 E7A80038 */  swc1    $f8, 0x0038($sp)           
.L8087042C:
/* 0084C 8087042C 3C018087 */  lui     $at, %hi(D_808709BC)       ## $at = 80870000
/* 00850 80870430 C42A09BC */  lwc1    $f10, %lo(D_808709BC)($at) 
/* 00854 80870434 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00858 80870438 44818000 */  mtc1    $at, $f16                  ## $f16 = 5.00
/* 0085C 8087043C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 00860 80870440 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 00864 80870444 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00868 80870448 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 0086C 8087044C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 00870 80870450 E7B00014 */  swc1    $f16, 0x0014($sp)          
/* 00874 80870454 0C21BF70 */  jal     func_8086FDC0              
/* 00878 80870458 E7B2001C */  swc1    $f18, 0x001C($sp)          
/* 0087C 8087045C 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00880 80870460 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00884 80870464 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00888 80870468 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0088C 8087046C 8FAC0030 */  lw      $t4, 0x0030($sp)           
/* 00890 80870470 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00894 80870474 24052802 */  addiu   $a1, $zero, 0x2802         ## $a1 = 00002802
/* 00898 80870478 15810005 */  bne     $t4, $at, .L80870490       
/* 0089C 8087047C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A0 80870480 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008A4 80870484 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008A8 80870488 10000004 */  beq     $zero, $zero, .L8087049C   
/* 008AC 8087048C 8FAD0030 */  lw      $t5, 0x0030($sp)           
.L80870490:
/* 008B0 80870490 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 008B4 80870494 24052810 */  addiu   $a1, $zero, 0x2810         ## $a1 = 00002810
/* 008B8 80870498 8FAD0030 */  lw      $t5, 0x0030($sp)           
.L8087049C:
/* 008BC 8087049C 55A0001E */  bnel    $t5, $zero, .L80870518     
/* 008C0 808704A0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 008C4 808704A4 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 008C8 808704A8 240400B0 */  addiu   $a0, $zero, 0x00B0         ## $a0 = 000000B0
/* 008CC 808704AC 5440001A */  bnel    $v0, $zero, .L80870518     
/* 008D0 808704B0 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 008D4 808704B4 0C00D6DD */  jal     Flags_SetEventChkInf
              
/* 008D8 808704B8 240400B0 */  addiu   $a0, $zero, 0x00B0         ## $a0 = 000000B0
/* 008DC 808704BC 3C050201 */  lui     $a1, 0x0201                ## $a1 = 02010000
/* 008E0 808704C0 24A54F80 */  addiu   $a1, $a1, 0x4F80           ## $a1 = 02014F80
/* 008E4 808704C4 0C01A4F6 */  jal     Cutscene_SetSegment
              
/* 008E8 808704C8 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 008EC 808704CC 3C078013 */  lui     $a3, 0x8013                ## $a3 = 80130000
/* 008F0 808704D0 3C0F8013 */  lui     $t7, 0x8013                ## $t7 = 80130000
/* 008F4 808704D4 24E733E0 */  addiu   $a3, $a3, 0x33E0           ## $a3 = 801333E0
/* 008F8 808704D8 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 008FC 808704DC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 00900 808704E0 25EF33E8 */  addiu   $t7, $t7, 0x33E8           ## $t7 = 801333E8
/* 00904 808704E4 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 00908 808704E8 A02EFA74 */  sb      $t6, -0x058C($at)          ## 8015FA74
/* 0090C 808704EC 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00910 808704F0 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00914 808704F4 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00918 808704F8 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 0091C 808704FC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00920 80870500 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00924 80870504 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 00928 80870508 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0092C 8087050C 0C00B7D5 */  jal     func_8002DF54              
/* 00930 80870510 24060031 */  addiu   $a2, $zero, 0x0031         ## $a2 = 00000031
/* 00934 80870514 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
.L80870518:
/* 00938 80870518 3C058013 */  lui     $a1, 0x8013                ## $a1 = 80130000
/* 0093C 8087051C 24A533D4 */  addiu   $a1, $a1, 0x33D4           ## $a1 = 801333D4
/* 00940 80870520 07010009 */  bgez    $t8, .L80870548            
/* 00944 80870524 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00948 80870528 3C198013 */  lui     $t9, 0x8013                ## $t9 = 80130000
/* 0094C 8087052C 3C088013 */  lui     $t0, 0x8013                ## $t0 = 80130000
/* 00950 80870530 250833E8 */  addiu   $t0, $t0, 0x33E8           ## $t0 = 801333E8
/* 00954 80870534 272733E0 */  addiu   $a3, $t9, 0x33E0           ## $a3 = 801333E0
/* 00958 80870538 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 0095C 8087053C AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00960 80870540 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00964 80870544 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
.L80870548:
/* 00968 80870548 0C00B55C */  jal     Actor_Kill
              
/* 0096C 8087054C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00970 80870550 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80870554:
/* 00974 80870554 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 00978 80870558 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0097C 8087055C 03E00008 */  jr      $ra                        
/* 00980 80870560 00000000 */  nop
