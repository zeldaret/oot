.rdata
glabel D_80926940
    .asciz "\x1b[33m"
    .balign 4

glabel D_80926948
    .asciz "Core_Damage_check START\n"
    .balign 4

glabel D_80926964
    .asciz "Core_Damage_check 当り！！\n"
    .balign 4

glabel D_80926980
    .asciz "Core_Damage_check 当り 2 ！！\n"
    .balign 4

glabel D_809269A0
    .asciz "Core_Damage_check 剣 当り！！\n"
    .balign 4

glabel D_809269C0
    .asciz "Core_Damage_check 終わり ！！\n"
    .balign 4

glabel D_809269E0
    .asciz "\x1b[m"
    .balign 4

.late_rodata
glabel D_80926DA4
    .float 0.08

glabel D_80926DA8
 .word 0x3E051EB8

.text
glabel func_80921280
/* 05780 80921280 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 05784 80921284 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 05788 80921288 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0578C 8092128C AFB0002C */  sw      $s0, 0x002C($sp)           
/* 05790 80921290 F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 05794 80921294 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 05798 80921298 AFA50074 */  sw      $a1, 0x0074($sp)           
/* 0579C 8092129C 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 057A0 809212A0 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 057A4 809212A4 3C048092 */  lui     $a0, %hi(D_80926940)       ## $a0 = 80920000
/* 057A8 809212A8 24846940 */  addiu   $a0, $a0, %lo(D_80926940)  ## $a0 = 80926940
/* 057AC 809212AC 0C00084C */  jal     osSyncPrintf
              
/* 057B0 809212B0 AFAF0068 */  sw      $t7, 0x0068($sp)           
/* 057B4 809212B4 3C048092 */  lui     $a0, %hi(D_80926948)       ## $a0 = 80920000
/* 057B8 809212B8 0C00084C */  jal     osSyncPrintf
              
/* 057BC 809212BC 24846948 */  addiu   $a0, $a0, %lo(D_80926948)  ## $a0 = 80926948
/* 057C0 809212C0 9222150C */  lbu     $v0, 0x150C($s1)           ## 0000150C
/* 057C4 809212C4 3C048092 */  lui     $a0, %hi(D_80926964)       ## $a0 = 80920000
/* 057C8 809212C8 24846964 */  addiu   $a0, $a0, %lo(D_80926964)  ## $a0 = 80926964
/* 057CC 809212CC 30580002 */  andi    $t8, $v0, 0x0002           ## $t8 = 00000000
/* 057D0 809212D0 5300000B */  beql    $t8, $zero, .L80921300     
/* 057D4 809212D4 922B150D */  lbu     $t3, 0x150D($s1)           ## 0000150D
/* 057D8 809212D8 86280158 */  lh      $t0, 0x0158($s1)           ## 00000158
/* 057DC 809212DC 3059FFFD */  andi    $t9, $v0, 0xFFFD           ## $t9 = 00000000
/* 057E0 809212E0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 057E4 809212E4 15010005 */  bne     $t0, $at, .L809212FC       
/* 057E8 809212E8 A239150C */  sb      $t9, 0x150C($s1)           ## 0000150C
/* 057EC 809212EC 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 057F0 809212F0 240A0096 */  addiu   $t2, $zero, 0x0096         ## $t2 = 00000096
/* 057F4 809212F4 A6290168 */  sh      $t1, 0x0168($s1)           ## 00000168
/* 057F8 809212F8 A62A017E */  sh      $t2, 0x017E($s1)           ## 0000017E
.L809212FC:
/* 057FC 809212FC 922B150D */  lbu     $t3, 0x150D($s1)           ## 0000150D
.L80921300:
/* 05800 80921300 316C0002 */  andi    $t4, $t3, 0x0002           ## $t4 = 00000000
/* 05804 80921304 118000E5 */  beq     $t4, $zero, .L8092169C     
/* 05808 80921308 00000000 */  nop
/* 0580C 8092130C 0C00084C */  jal     osSyncPrintf
              
/* 05810 80921310 8E301538 */  lw      $s0, 0x1538($s1)           ## 00001538
/* 05814 80921314 922D150D */  lbu     $t5, 0x150D($s1)           ## 0000150D
/* 05818 80921318 3C048092 */  lui     $a0, %hi(D_80926980)       ## $a0 = 80920000
/* 0581C 8092131C 31AEFFFD */  andi    $t6, $t5, 0xFFFD           ## $t6 = 00000000
/* 05820 80921320 A22E150D */  sb      $t6, 0x150D($s1)           ## 0000150D
/* 05824 80921324 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 00000000
/* 05828 80921328 000FC380 */  sll     $t8, $t7, 14               
/* 0582C 8092132C 07010007 */  bgez    $t8, .L8092134C            
/* 05830 80921330 00000000 */  nop
/* 05834 80921334 86390158 */  lh      $t9, 0x0158($s1)           ## 00000158
/* 05838 80921338 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0583C 8092133C 2408000B */  addiu   $t0, $zero, 0x000B         ## $t0 = 0000000B
/* 05840 80921340 17210002 */  bne     $t9, $at, .L8092134C       
/* 05844 80921344 00000000 */  nop
/* 05848 80921348 A6280158 */  sh      $t0, 0x0158($s1)           ## 00000158
.L8092134C:
/* 0584C 8092134C 0C00084C */  jal     osSyncPrintf
              
/* 05850 80921350 24846980 */  addiu   $a0, $a0, %lo(D_80926980)  ## $a0 = 80926980
/* 05854 80921354 86290158 */  lh      $t1, 0x0158($s1)           ## 00000158
/* 05858 80921358 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0585C 8092135C 112100CF */  beq     $t1, $at, .L8092169C       
/* 05860 80921360 00000000 */  nop
/* 05864 80921364 862A0160 */  lh      $t2, 0x0160($s1)           ## 00000160
/* 05868 80921368 154000CC */  bne     $t2, $zero, .L8092169C     
/* 0586C 8092136C 00000000 */  nop
/* 05870 80921370 0C018D74 */  jal     CollisionCheck_GetSwordDamage              
/* 05874 80921374 8E040000 */  lw      $a0, 0x0000($s0)           ## 00000000
/* 05878 80921378 10400057 */  beq     $v0, $zero, .L809214D8     
/* 0587C 8092137C A3A20063 */  sb      $v0, 0x0063($sp)           
/* 05880 80921380 862B0158 */  lh      $t3, 0x0158($s1)           ## 00000158
/* 05884 80921384 3C048092 */  lui     $a0, %hi(D_809269A0)       ## $a0 = 80920000
/* 05888 80921388 2961000A */  slti    $at, $t3, 0x000A           
/* 0588C 8092138C 50200053 */  beql    $at, $zero, .L809214DC     
/* 05890 80921390 8E020000 */  lw      $v0, 0x0000($s0)           ## 00000000
/* 05894 80921394 0C00084C */  jal     osSyncPrintf
              
/* 05898 80921398 248469A0 */  addiu   $a0, $a0, %lo(D_809269A0)  ## $a0 = 809269A0
/* 0589C 8092139C 862E008A */  lh      $t6, 0x008A($s1)           ## 0000008A
/* 058A0 809213A0 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 058A4 809213A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 058A8 809213A8 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 058AC 809213AC 240C0005 */  addiu   $t4, $zero, 0x0005         ## $t4 = 00000005
/* 058B0 809213B0 240D0019 */  addiu   $t5, $zero, 0x0019         ## $t5 = 00000019
/* 058B4 809213B4 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 058B8 809213B8 01C17821 */  addu    $t7, $t6, $at              
/* 058BC 809213BC A62C0158 */  sh      $t4, 0x0158($s1)           ## 00000158
/* 058C0 809213C0 A62D017E */  sh      $t5, 0x017E($s1)           ## 0000017E
/* 058C4 809213C4 A62F0032 */  sh      $t7, 0x0032($s1)           ## 00000032
/* 058C8 809213C8 A638015E */  sh      $t8, 0x015E($s1)           ## 0000015E
/* 058CC 809213CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 058D0 809213D0 240539EC */  addiu   $a1, $zero, 0x39EC         ## $a1 = 000039EC
/* 058D4 809213D4 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 058D8 809213D8 E6240068 */  swc1    $f4, 0x0068($s1)           ## 00000068
/* 058DC 809213DC 923900AF */  lbu     $t9, 0x00AF($s1)           ## 000000AF
/* 058E0 809213E0 93A80063 */  lbu     $t0, 0x0063($sp)           
/* 058E4 809213E4 922A0155 */  lbu     $t2, 0x0155($s1)           ## 00000155
/* 058E8 809213E8 3C108092 */  lui     $s0, %hi(D_80925CD4)       ## $s0 = 80920000
/* 058EC 809213EC 03284823 */  subu    $t1, $t9, $t0              
/* 058F0 809213F0 A22900AF */  sb      $t1, 0x00AF($s1)           ## 000000AF
/* 058F4 809213F4 822C00AF */  lb      $t4, 0x00AF($s1)           ## 000000AF
/* 058F8 809213F8 254B0001 */  addiu   $t3, $t2, 0x0001           ## $t3 = 00000001
/* 058FC 809213FC A22B0155 */  sb      $t3, 0x0155($s1)           ## 00000155
/* 05900 80921400 1D800032 */  bgtz    $t4, .L809214CC            
/* 05904 80921404 26105CD4 */  addiu   $s0, $s0, %lo(D_80925CD4)  ## $s0 = 80925CD4
/* 05908 80921408 8E0D0000 */  lw      $t5, 0x0000($s0)           ## 80925CD4
/* 0590C 8092140C 3C0E8092 */  lui     $t6, %hi(D_80925CD8)       ## $t6 = 80920000
/* 05910 80921410 85A20F62 */  lh      $v0, 0x0F62($t5)           ## 00000F62
/* 05914 80921414 14400004 */  bne     $v0, $zero, .L80921428     
/* 05918 80921418 00000000 */  nop
/* 0591C 8092141C 8DCE5CD8 */  lw      $t6, %lo(D_80925CD8)($t6)  
/* 05920 80921420 51C0000B */  beql    $t6, $zero, .L80921450     
/* 05924 80921424 8FA40074 */  lw      $a0, 0x0074($sp)           
.L80921428:
/* 05928 80921428 14400027 */  bne     $v0, $zero, .L809214C8     
/* 0592C 8092142C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 05930 80921430 3C028092 */  lui     $v0, %hi(D_80925CD8)       ## $v0 = 80920000
/* 05934 80921434 8C425CD8 */  lw      $v0, %lo(D_80925CD8)($v0)  
/* 05938 80921438 50400024 */  beql    $v0, $zero, .L809214CC     
/* 0593C 8092143C A22E00AF */  sb      $t6, 0x00AF($s1)           ## 000000AF
/* 05940 80921440 844F0F62 */  lh      $t7, 0x0F62($v0)           ## 80920F62
/* 05944 80921444 55E00021 */  bnel    $t7, $zero, .L809214CC     
/* 05948 80921448 A22E00AF */  sb      $t6, 0x00AF($s1)           ## 000000AF
/* 0594C 8092144C 8FA40074 */  lw      $a0, 0x0074($sp)           
.L80921450:
/* 05950 80921450 0C00CB1F */  jal     Enemy_StartFinishingBlow              
/* 05954 80921454 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 05958 80921458 3C041001 */  lui     $a0, 0x1001                ## $a0 = 10010000
/* 0595C 8092145C 0C03E803 */  jal     Audio_SetBGM
              
/* 05960 80921460 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100100FF
/* 05964 80921464 24180064 */  addiu   $t8, $zero, 0x0064         ## $t8 = 00000064
/* 05968 80921468 A6380F60 */  sh      $t8, 0x0F60($s1)           ## 00000F60
/* 0596C 8092146C 8E190000 */  lw      $t9, 0x0000($s0)           ## 80925CD4
/* 05970 80921470 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 05974 80921474 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 05978 80921478 A32001D1 */  sb      $zero, 0x01D1($t9)         ## 000001D1
/* 0597C 8092147C 8E090000 */  lw      $t1, 0x0000($s0)           ## 80925CD4
/* 05980 80921480 3C028092 */  lui     $v0, %hi(D_80925CD8)       ## $v0 = 80920000
/* 05984 80921484 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 05988 80921488 A5280158 */  sh      $t0, 0x0158($t1)           ## 00000158
/* 0598C 8092148C 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 80925CD4
/* 05990 80921490 240D0065 */  addiu   $t5, $zero, 0x0065         ## $t5 = 00000065
/* 05994 80921494 E54601A4 */  swc1    $f6, 0x01A4($t2)           ## 000001A4
/* 05998 80921498 8C425CD8 */  lw      $v0, %lo(D_80925CD8)($v0)  
/* 0599C 8092149C 50400003 */  beql    $v0, $zero, .L809214AC     
/* 059A0 809214A0 8FA20068 */  lw      $v0, 0x0068($sp)           
/* 059A4 809214A4 A04B0154 */  sb      $t3, 0x0154($v0)           ## 80920154
/* 059A8 809214A8 8FA20068 */  lw      $v0, 0x0068($sp)           
.L809214AC:
/* 059AC 809214AC 8C4C0118 */  lw      $t4, 0x0118($v0)           ## 80920118
/* 059B0 809214B0 51800007 */  beql    $t4, $zero, .L809214D0     
/* 059B4 809214B4 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 059B8 809214B8 A44D0850 */  sh      $t5, 0x0850($v0)           ## 80920850
/* 059BC 809214BC AC400118 */  sw      $zero, 0x0118($v0)         ## 80920118
/* 059C0 809214C0 10000002 */  beq     $zero, $zero, .L809214CC   
/* 059C4 809214C4 A0400444 */  sb      $zero, 0x0444($v0)         ## 80920444
.L809214C8:
/* 059C8 809214C8 A22E00AF */  sb      $t6, 0x00AF($s1)           ## 000000AF
.L809214CC:
/* 059CC 809214CC 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
.L809214D0:
/* 059D0 809214D0 10000038 */  beq     $zero, $zero, .L809215B4   
/* 059D4 809214D4 A62F0160 */  sh      $t7, 0x0160($s1)           ## 00000160
.L809214D8:
/* 059D8 809214D8 8E020000 */  lw      $v0, 0x0000($s0)           ## 80925CD4
.L809214DC:
/* 059DC 809214DC 0002C2C0 */  sll     $t8, $v0, 11               
/* 059E0 809214E0 07000034 */  bltz    $t8, .L809215B4            
/* 059E4 809214E4 30590080 */  andi    $t9, $v0, 0x0080           ## $t9 = 00000000
/* 059E8 809214E8 53200033 */  beql    $t9, $zero, .L809215B8     
/* 059EC 809214EC 8FB90074 */  lw      $t9, 0x0074($sp)           
/* 059F0 809214F0 86280158 */  lh      $t0, 0x0158($s1)           ## 00000158
/* 059F4 809214F4 3C108092 */  lui     $s0, %hi(D_80925CD4)       ## $s0 = 80920000
/* 059F8 809214F8 26105CD4 */  addiu   $s0, $s0, %lo(D_80925CD4)  ## $s0 = 80925CD4
/* 059FC 809214FC 2901000A */  slti    $at, $t0, 0x000A           
/* 05A00 80921500 54200025 */  bnel    $at, $zero, .L80921598     
/* 05A04 80921504 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 05A08 80921508 8E040000 */  lw      $a0, 0x0000($s0)           ## 80925CD4
/* 05A0C 8092150C 240538F4 */  addiu   $a1, $zero, 0x38F4         ## $a1 = 000038F4
/* 05A10 80921510 0C01E245 */  jal     func_80078914              
/* 05A14 80921514 24841010 */  addiu   $a0, $a0, 0x1010           ## $a0 = 00001010
/* 05A18 80921518 86290164 */  lh      $t1, 0x0164($s1)           ## 00000164
/* 05A1C 8092151C 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 80925CD4
/* 05A20 80921520 8FA30068 */  lw      $v1, 0x0068($sp)           
/* 05A24 80921524 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 05A28 80921528 A5490172 */  sh      $t1, 0x0172($t2)           ## 00000172
/* 05A2C 8092152C 8E020000 */  lw      $v0, 0x0000($s0)           ## 80925CD4
/* 05A30 80921530 44814000 */  mtc1    $at, $f8                   ## $f8 = 1.00
/* 05A34 80921534 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 05A38 80921538 844B0172 */  lh      $t3, 0x0172($v0)           ## 00000172
/* 05A3C 8092153C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 05A40 80921540 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 05A44 80921544 256C0001 */  addiu   $t4, $t3, 0x0001           ## $t4 = 00000001
/* 05A48 80921548 A44C0174 */  sh      $t4, 0x0174($v0)           ## 00000174
/* 05A4C 8092154C 8E0D0000 */  lw      $t5, 0x0000($s0)           ## 80925CD4
/* 05A50 80921550 240C0065 */  addiu   $t4, $zero, 0x0065         ## $t4 = 00000065
/* 05A54 80921554 E5A801A8 */  swc1    $f8, 0x01A8($t5)           ## 000001A8
/* 05A58 80921558 8E0F0000 */  lw      $t7, 0x0000($s0)           ## 80925CD4
/* 05A5C 8092155C A5EE0158 */  sh      $t6, 0x0158($t7)           ## 00000158
/* 05A60 80921560 8E190000 */  lw      $t9, 0x0000($s0)           ## 80925CD4
/* 05A64 80921564 A738017E */  sh      $t8, 0x017E($t9)           ## 0000017E
/* 05A68 80921568 8E020000 */  lw      $v0, 0x0000($s0)           ## 80925CD4
/* 05A6C 8092156C 8C480004 */  lw      $t0, 0x0004($v0)           ## 00000004
/* 05A70 80921570 01014824 */  and     $t1, $t0, $at              
/* 05A74 80921574 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 05A78 80921578 8E0A0000 */  lw      $t2, 0x0000($s0)           ## 80925CD4
/* 05A7C 8092157C 8C6B0118 */  lw      $t3, 0x0118($v1)           ## 00000118
/* 05A80 80921580 554B0005 */  bnel    $t2, $t3, .L80921598       
/* 05A84 80921584 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 05A88 80921588 A46C0850 */  sh      $t4, 0x0850($v1)           ## 00000850
/* 05A8C 8092158C AC600118 */  sw      $zero, 0x0118($v1)         ## 00000118
/* 05A90 80921590 A0600444 */  sb      $zero, 0x0444($v1)         ## 00000444
/* 05A94 80921594 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L80921598:
/* 05A98 80921598 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 05A9C 8092159C 240E001E */  addiu   $t6, $zero, 0x001E         ## $t6 = 0000001E
/* 05AA0 809215A0 240F000A */  addiu   $t7, $zero, 0x000A         ## $t7 = 0000000A
/* 05AA4 809215A4 A62D0158 */  sh      $t5, 0x0158($s1)           ## 00000158
/* 05AA8 809215A8 A62E017E */  sh      $t6, 0x017E($s1)           ## 0000017E
/* 05AAC 809215AC A62F0160 */  sh      $t7, 0x0160($s1)           ## 00000160
/* 05AB0 809215B0 E62A0068 */  swc1    $f10, 0x0068($s1)          ## 00000068
.L809215B4:
/* 05AB4 809215B4 8FB90074 */  lw      $t9, 0x0074($sp)           
.L809215B8:
/* 05AB8 809215B8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 05ABC 809215BC 26380024 */  addiu   $t8, $s1, 0x0024           ## $t8 = 00000024
/* 05AC0 809215C0 03214021 */  addu    $t0, $t9, $at              
/* 05AC4 809215C4 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 05AC8 809215C8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 4.00
/* 05ACC 809215CC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 05AD0 809215D0 4481A000 */  mtc1    $at, $f20                  ## $f20 = 3.00
/* 05AD4 809215D4 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 05AD8 809215D8 AFB80040 */  sw      $t8, 0x0040($sp)           
/* 05ADC 809215DC 27B10054 */  addiu   $s1, $sp, 0x0054           ## $s1 = FFFFFFE4
/* 05AE0 809215E0 00008025 */  or      $s0, $zero, $zero          ## $s0 = 00000000
.L809215E4:
/* 05AE4 809215E4 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 05AE8 809215E8 4600B306 */  mov.s   $f12, $f22                 
/* 05AEC 809215EC 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 05AF0 809215F0 44816000 */  mtc1    $at, $f12                  ## $f12 = 2.00
/* 05AF4 809215F4 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 05AF8 809215F8 E7A00048 */  swc1    $f0, 0x0048($sp)           
/* 05AFC 809215FC 46140400 */  add.s   $f16, $f0, $f20            
/* 05B00 80921600 4600B306 */  mov.s   $f12, $f22                 
/* 05B04 80921604 0C00CFC8 */  jal     Rand_CenteredFloat
              
/* 05B08 80921608 E7B0004C */  swc1    $f16, 0x004C($sp)          
/* 05B0C 8092160C 8FA90040 */  lw      $t1, 0x0040($sp)           
/* 05B10 80921610 E7A00050 */  swc1    $f0, 0x0050($sp)           
/* 05B14 80921614 3C018092 */  lui     $at, %hi(D_80926DA4)       ## $at = 80920000
/* 05B18 80921618 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 00000000
/* 05B1C 8092161C AE2B0000 */  sw      $t3, 0x0000($s1)           ## FFFFFFE4
/* 05B20 80921620 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 00000004
/* 05B24 80921624 AE2A0004 */  sw      $t2, 0x0004($s1)           ## FFFFFFE8
/* 05B28 80921628 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 00000008
/* 05B2C 8092162C AE2B0008 */  sw      $t3, 0x0008($s1)           ## FFFFFFEC
/* 05B30 80921630 C7A40048 */  lwc1    $f4, 0x0048($sp)           
/* 05B34 80921634 C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 05B38 80921638 C7AA005C */  lwc1    $f10, 0x005C($sp)          
/* 05B3C 8092163C 46142182 */  mul.s   $f6, $f4, $f20             
/* 05B40 80921640 C42C6DA4 */  lwc1    $f12, %lo(D_80926DA4)($at) 
/* 05B44 80921644 46140402 */  mul.s   $f16, $f0, $f20            
/* 05B48 80921648 46069200 */  add.s   $f8, $f18, $f6             
/* 05B4C 8092164C 46105100 */  add.s   $f4, $f10, $f16            
/* 05B50 80921650 E7A80054 */  swc1    $f8, 0x0054($sp)           
/* 05B54 80921654 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 05B58 80921658 E7A4005C */  swc1    $f4, 0x005C($sp)           
/* 05B5C 8092165C 3C018092 */  lui     $at, %hi(D_80926DA8)       ## $at = 80920000
/* 05B60 80921660 C4326DA8 */  lwc1    $f18, %lo(D_80926DA8)($at) 
/* 05B64 80921664 8FAC003C */  lw      $t4, 0x003C($sp)           
/* 05B68 80921668 24040003 */  addiu   $a0, $zero, 0x0003         ## $a0 = 00000003
/* 05B6C 8092166C 46120180 */  add.s   $f6, $f0, $f18             
/* 05B70 80921670 8D851E10 */  lw      $a1, 0x1E10($t4)           ## 00001E10
/* 05B74 80921674 02203025 */  or      $a2, $s1, $zero            ## $a2 = FFFFFFE4
/* 05B78 80921678 27A70048 */  addiu   $a3, $sp, 0x0048           ## $a3 = FFFFFFD8
/* 05B7C 8092167C 0C246F97 */  jal     func_8091BE5C              
/* 05B80 80921680 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 05B84 80921684 26100001 */  addiu   $s0, $s0, 0x0001           ## $s0 = 00000001
/* 05B88 80921688 00108400 */  sll     $s0, $s0, 16               
/* 05B8C 8092168C 00108403 */  sra     $s0, $s0, 16               
/* 05B90 80921690 2A01000A */  slti    $at, $s0, 0x000A           
/* 05B94 80921694 1420FFD3 */  bne     $at, $zero, .L809215E4     
/* 05B98 80921698 00000000 */  nop
.L8092169C:
/* 05B9C 8092169C 3C048092 */  lui     $a0, %hi(D_809269C0)       ## $a0 = 80920000
/* 05BA0 809216A0 0C00084C */  jal     osSyncPrintf
              
/* 05BA4 809216A4 248469C0 */  addiu   $a0, $a0, %lo(D_809269C0)  ## $a0 = 809269C0
/* 05BA8 809216A8 3C048092 */  lui     $a0, %hi(D_809269E0)       ## $a0 = 80920000
/* 05BAC 809216AC 0C00084C */  jal     osSyncPrintf
              
/* 05BB0 809216B0 248469E0 */  addiu   $a0, $a0, %lo(D_809269E0)  ## $a0 = 809269E0
/* 05BB4 809216B4 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 05BB8 809216B8 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 05BBC 809216BC D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 05BC0 809216C0 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 05BC4 809216C4 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 05BC8 809216C8 03E00008 */  jr      $ra                        
/* 05BCC 809216CC 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
