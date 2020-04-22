glabel func_80A435E8
/* 008B8 80A435E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 008BC 80A435EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 008C0 80A435F0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 008C4 80A435F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 008C8 80A435F8 0C042F6F */  jal     func_8010BDBC              
/* 008CC 80A435FC 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 008D0 80A43600 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 008D4 80A43604 10410005 */  beq     $v0, $at, .L80A4361C       
/* 008D8 80A43608 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 008DC 80A4360C 10410005 */  beq     $v0, $at, .L80A43624       
/* 008E0 80A43610 00000000 */  nop
/* 008E4 80A43614 1000002D */  beq     $zero, $zero, .L80A436CC   
/* 008E8 80A43618 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A4361C:
/* 008EC 80A4361C 1000002B */  beq     $zero, $zero, .L80A436CC   
/* 008F0 80A43620 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A43624:
/* 008F4 80A43624 0C041AF2 */  jal     func_80106BC8              
/* 008F8 80A43628 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 008FC 80A4362C 10400026 */  beq     $v0, $zero, .L80A436C8     
/* 00900 80A43630 8FA7001C */  lw      $a3, 0x001C($sp)           
/* 00904 80A43634 94EE010E */  lhu     $t6, 0x010E($a3)           ## 0000010E
/* 00908 80A43638 24013012 */  addiu   $at, $zero, 0x3012         ## $at = 00003012
/* 0090C 80A4363C 3C0F80A4 */  lui     $t7, %hi(func_80A470E8)    ## $t7 = 80A40000
/* 00910 80A43640 15C1001F */  bne     $t6, $at, .L80A436C0       
/* 00914 80A43644 25EF70E8 */  addiu   $t7, $t7, %lo(func_80A470E8) ## $t7 = 80A470E8
/* 00918 80A43648 ACEF0190 */  sw      $t7, 0x0190($a3)           ## 00000190
/* 0091C 80A4364C 3C188016 */  lui     $t8, %hi(gSaveContext+0xa0)
/* 00920 80A43650 3C198012 */  lui     $t9, %hi(gUpgradeMasks+4)
/* 00924 80A43654 8F3971B4 */  lw      $t9, %lo(gUpgradeMasks+4)($t9)
/* 00928 80A43658 8F18E700 */  lw      $t8, %lo(gSaveContext+0xa0)($t8)
/* 0092C 80A4365C 3C098012 */  lui     $t1, %hi(gUpgradeShifts+1)
/* 00930 80A43660 912971F5 */  lbu     $t1, %lo(gUpgradeShifts+1)($t1)
/* 00934 80A43664 03194024 */  and     $t0, $t8, $t9              
/* 00938 80A43668 3C0C8012 */  lui     $t4, %hi(gUpgradeCapacities+8)
/* 0093C 80A4366C 01285007 */  srav    $t2, $t0, $t1              
/* 00940 80A43670 000A5840 */  sll     $t3, $t2,  1               
/* 00944 80A43674 018B6021 */  addu    $t4, $t4, $t3              
/* 00948 80A43678 958C7204 */  lhu     $t4, %lo(gUpgradeCapacities+8)($t4)
/* 0094C 80A4367C 2401001E */  addiu   $at, $zero, 0x001E         ## $at = 0000001E
/* 00950 80A43680 24060033 */  addiu   $a2, $zero, 0x0033         ## $a2 = 00000033
/* 00954 80A43684 15810003 */  bne     $t4, $at, .L80A43694       
/* 00958 80A43688 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 0095C 80A4368C 10000001 */  beq     $zero, $zero, .L80A43694   
/* 00960 80A43690 24060034 */  addiu   $a2, $zero, 0x0034         ## $a2 = 00000034
.L80A43694:
/* 00964 80A43694 0C290D09 */  jal     func_80A43424              
/* 00968 80A43698 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 0096C 80A4369C 0C041B33 */  jal     func_80106CCC              
/* 00970 80A436A0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00974 80A436A4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00978 80A436A8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0097C 80A436AC 946D0F1A */  lhu     $t5, 0x0F1A($v1)           ## 8015F57A
/* 00980 80A436B0 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00984 80A436B4 35AE4000 */  ori     $t6, $t5, 0x4000           ## $t6 = 00004000
/* 00988 80A436B8 10000004 */  beq     $zero, $zero, .L80A436CC   
/* 0098C 80A436BC A46E0F1A */  sh      $t6, 0x0F1A($v1)           ## 8015F57A
.L80A436C0:
/* 00990 80A436C0 10000002 */  beq     $zero, $zero, .L80A436CC   
/* 00994 80A436C4 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L80A436C8:
/* 00998 80A436C8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A436CC:
/* 0099C 80A436CC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 009A0 80A436D0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 009A4 80A436D4 03E00008 */  jr      $ra                        
/* 009A8 80A436D8 00000000 */  nop
