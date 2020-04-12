.rdata
glabel D_80AEA720
    .asciz "タイプ７  "
    .balign 4
glabel D_80AEA72C
    .asciz "魔法の壷小"
    .balign 4
glabel D_80AEA738
    .asciz "矢        "
    .balign 4

glabel D_80AEA744
    .asciz "妖精      "
    .balign 4

glabel D_80AEA750
    .asciz "20ルピー  "
    .balign 4

glabel D_80AEA75C
    .asciz "50ルピー  "
    .balign 4
glabel D_80AEA768
    .asciz "\x1b[33m%s[%d] : Rr_Catch_Cancel\x1b[m\n"
    .balign 4

glabel D_80AEA78C
    .asciz "../z_en_rr.c"
    .balign 4

.late_rodata
glabel D_80AEA89C
    .float 2500.0
.text
glabel func_80AE8968
/* 00528 80AE8968 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0052C 80AE896C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00530 80AE8970 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00534 80AE8974 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00538 80AE8978 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 0053C 80AE897C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00540 80AE8980 2408006E */  addiu   $t0, $zero, 0x006E         ## $t0 = 0000006E
/* 00544 80AE8984 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 00548 80AE8988 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 0054C 80AE898C A4800378 */  sh      $zero, 0x0378($a0)         ## 00000378
/* 00550 80AE8990 A48801F4 */  sh      $t0, 0x01F4($a0)           ## 000001F4
/* 00554 80AE8994 37190001 */  ori     $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00558 80AE8998 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 0055C 80AE899C 3C0180AF */  lui     $at, %hi(D_80AEA89C)       ## $at = 80AF0000
/* 00560 80AE89A0 E4840364 */  swc1    $f4, 0x0364($a0)           ## 00000364
/* 00564 80AE89A4 C426A89C */  lwc1    $f6, %lo(D_80AEA89C)($at)  
/* 00568 80AE89A8 3C014500 */  lui     $at, 0x4500                ## $at = 45000000
/* 0056C 80AE89AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 2048.00
/* 00570 80AE89B0 E48601FC */  swc1    $f6, 0x01FC($a0)           ## 000001FC
/* 00574 80AE89B4 3C098016 */  lui     $t1, 0x8016                ## $t1 = 80160000
/* 00578 80AE89B8 E4880220 */  swc1    $f8, 0x0220($a0)           ## 00000220
/* 0057C 80AE89BC 3C0A8012 */  lui     $t2, 0x8012                ## $t2 = 80120000
/* 00580 80AE89C0 954A71A2 */  lhu     $t2, 0x71A2($t2)           ## 801271A2
/* 00584 80AE89C4 9529E6D0 */  lhu     $t1, -0x1930($t1)          ## 8015E6D0
/* 00588 80AE89C8 3C0C8012 */  lui     $t4, 0x8012                ## $t4 = 80120000
/* 0058C 80AE89CC 918C71F1 */  lbu     $t4, 0x71F1($t4)           ## 801271F1
/* 00590 80AE89D0 012A5824 */  and     $t3, $t1, $t2              
/* 00594 80AE89D4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00598 80AE89D8 018B6807 */  srav    $t5, $t3, $t4              
/* 0059C 80AE89DC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 005A0 80AE89E0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 005A4 80AE89E4 11A1000B */  beq     $t5, $at, .L80AE8A14       
/* 005A8 80AE89E8 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 005AC 80AE89EC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 005B0 80AE89F0 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 005B4 80AE89F4 0C025E95 */  jal     Inventory_DeleteEquipment              
/* 005B8 80AE89F8 A3A0002A */  sb      $zero, 0x002A($sp)         
/* 005BC 80AE89FC 93A6002A */  lbu     $a2, 0x002A($sp)           
/* 005C0 80AE8A00 10400004 */  beq     $v0, $zero, .L80AE8A14     
/* 005C4 80AE8A04 304700FF */  andi    $a3, $v0, 0x00FF           ## $a3 = 00000000
/* 005C8 80AE8A08 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 005CC 80AE8A0C A2020372 */  sb      $v0, 0x0372($s0)           ## 00000372
/* 005D0 80AE8A10 A20E0375 */  sb      $t6, 0x0375($s0)           ## 00000375
.L80AE8A14:
/* 005D4 80AE8A14 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 005D8 80AE8A18 3C188012 */  lui     $t8, 0x8012                ## $t8 = 80120000
/* 005DC 80AE8A1C 971871A4 */  lhu     $t8, 0x71A4($t8)           ## 801271A4
/* 005E0 80AE8A20 95EFE6D0 */  lhu     $t7, -0x1930($t7)          ## 8015E6D0
/* 005E4 80AE8A24 3C088012 */  lui     $t0, 0x8012                ## $t0 = 80120000
/* 005E8 80AE8A28 910871F2 */  lbu     $t0, 0x71F2($t0)           ## 801271F2
/* 005EC 80AE8A2C 01F8C824 */  and     $t9, $t7, $t8              
/* 005F0 80AE8A30 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 005F4 80AE8A34 01194807 */  srav    $t1, $t9, $t0              
/* 005F8 80AE8A38 1121000A */  beq     $t1, $at, .L80AE8A64       
/* 005FC 80AE8A3C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00600 80AE8A40 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 00604 80AE8A44 0C025E95 */  jal     Inventory_DeleteEquipment              
/* 00608 80AE8A48 A3A7002B */  sb      $a3, 0x002B($sp)           
/* 0060C 80AE8A4C 93A7002B */  lbu     $a3, 0x002B($sp)           
/* 00610 80AE8A50 10400004 */  beq     $v0, $zero, .L80AE8A64     
/* 00614 80AE8A54 304600FF */  andi    $a2, $v0, 0x00FF           ## $a2 = 00000000
/* 00618 80AE8A58 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0061C 80AE8A5C A2020373 */  sb      $v0, 0x0373($s0)           ## 00000373
/* 00620 80AE8A60 A20A0375 */  sb      $t2, 0x0375($s0)           ## 00000375
.L80AE8A64:
/* 00624 80AE8A64 8FAB002C */  lw      $t3, 0x002C($sp)           
/* 00628 80AE8A68 30E400FF */  andi    $a0, $a3, 0x00FF           ## $a0 = 00000000
/* 0062C 80AE8A6C 30C500FF */  andi    $a1, $a2, 0x00FF           ## $a1 = 00000000
/* 00630 80AE8A70 0C2BA246 */  jal     func_80AE8918              
/* 00634 80AE8A74 AD600118 */  sw      $zero, 0x0118($t3)         ## 00000118
/* 00638 80AE8A78 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0063C 80AE8A7C 10410009 */  beq     $v0, $at, .L80AE8AA4       
/* 00640 80AE8A80 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00644 80AE8A84 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00648 80AE8A88 1041000B */  beq     $v0, $at, .L80AE8AB8       
/* 0064C 80AE8A8C 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00650 80AE8A90 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00654 80AE8A94 1041000D */  beq     $v0, $at, .L80AE8ACC       
/* 00658 80AE8A98 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0065C 80AE8A9C 1000000E */  beq     $zero, $zero, .L80AE8AD8   
/* 00660 80AE8AA0 00000000 */  nop
.L80AE8AA4:
/* 00664 80AE8AA4 2405305F */  addiu   $a1, $zero, 0x305F         ## $a1 = 0000305F
/* 00668 80AE8AA8 0C042DA0 */  jal     func_8010B680              
/* 0066C 80AE8AAC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00670 80AE8AB0 10000009 */  beq     $zero, $zero, .L80AE8AD8   
/* 00674 80AE8AB4 00000000 */  nop
.L80AE8AB8:
/* 00678 80AE8AB8 24053060 */  addiu   $a1, $zero, 0x3060         ## $a1 = 00003060
/* 0067C 80AE8ABC 0C042DA0 */  jal     func_8010B680              
/* 00680 80AE8AC0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00684 80AE8AC4 10000004 */  beq     $zero, $zero, .L80AE8AD8   
/* 00688 80AE8AC8 00000000 */  nop
.L80AE8ACC:
/* 0068C 80AE8ACC 24053061 */  addiu   $a1, $zero, 0x3061         ## $a1 = 00003061
/* 00690 80AE8AD0 0C042DA0 */  jal     func_8010B680              
/* 00694 80AE8AD4 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
.L80AE8AD8:
/* 00698 80AE8AD8 3C0480AF */  lui     $a0, %hi(D_80AEA768)       ## $a0 = 80AF0000
/* 0069C 80AE8ADC 3C0580AF */  lui     $a1, %hi(D_80AEA78C)       ## $a1 = 80AF0000
/* 006A0 80AE8AE0 24A5A78C */  addiu   $a1, $a1, %lo(D_80AEA78C)  ## $a1 = 80AEA78C
/* 006A4 80AE8AE4 2484A768 */  addiu   $a0, $a0, %lo(D_80AEA768)  ## $a0 = 80AEA768
/* 006A8 80AE8AE8 0C00084C */  jal     osSyncPrintf
              
/* 006AC 80AE8AEC 2406028A */  addiu   $a2, $zero, 0x028A         ## $a2 = 0000028A
/* 006B0 80AE8AF0 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 006B4 80AE8AF4 44815000 */  mtc1    $at, $f10                  ## $f10 = 12.00
/* 006B8 80AE8AF8 860700B6 */  lh      $a3, 0x00B6($s0)           ## 000000B6
/* 006BC 80AE8AFC 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 006C0 80AE8B00 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 006C4 80AE8B04 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 006C8 80AE8B08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006CC 80AE8B0C 3C064080 */  lui     $a2, 0x4080                ## $a2 = 40800000
/* 006D0 80AE8B10 0C00BDB5 */  jal     func_8002F6D4              
/* 006D4 80AE8B14 E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 006D8 80AE8B18 920D0114 */  lbu     $t5, 0x0114($s0)           ## 00000114
/* 006DC 80AE8B1C 3C0E80AF */  lui     $t6, %hi(func_80AE95B0)    ## $t6 = 80AF0000
/* 006E0 80AE8B20 25CE95B0 */  addiu   $t6, $t6, %lo(func_80AE95B0) ## $t6 = 80AE95B0
/* 006E4 80AE8B24 15A00006 */  bne     $t5, $zero, .L80AE8B40     
/* 006E8 80AE8B28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006EC 80AE8B2C AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 006F0 80AE8B30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006F4 80AE8B34 24053994 */  addiu   $a1, $zero, 0x3994         ## $a1 = 00003994
/* 006F8 80AE8B38 1000000B */  beq     $zero, $zero, .L80AE8B68   
/* 006FC 80AE8B3C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE8B40:
/* 00700 80AE8B40 920F00AF */  lbu     $t7, 0x00AF($s0)           ## 000000AF
/* 00704 80AE8B44 11E00005 */  beq     $t7, $zero, .L80AE8B5C     
/* 00708 80AE8B48 00000000 */  nop
/* 0070C 80AE8B4C 0C2BA2DE */  jal     func_80AE8B78              
/* 00710 80AE8B50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00714 80AE8B54 10000004 */  beq     $zero, $zero, .L80AE8B68   
/* 00718 80AE8B58 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE8B5C:
/* 0071C 80AE8B5C 0C2BA33E */  jal     func_80AE8CF8              
/* 00720 80AE8B60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00724 80AE8B64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE8B68:
/* 00728 80AE8B68 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0072C 80AE8B6C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00730 80AE8B70 03E00008 */  jr      $ra                        
/* 00734 80AE8B74 00000000 */  nop
