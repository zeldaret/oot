glabel func_80A43714
/* 009E4 80A43714 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009E8 80A43718 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009EC 80A4371C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 009F0 80A43720 248420D8 */  addiu   $a0, $a0, 0x20D8           ## $a0 = 000020D8
/* 009F4 80A43724 0C042F6F */  jal     func_8010BDBC              
/* 009F8 80A43728 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 009FC 80A4372C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A00 80A43730 10410006 */  beq     $v0, $at, .L80A4374C       
/* 00A04 80A43734 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00A08 80A43738 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00A0C 80A4373C 10410011 */  beq     $v0, $at, .L80A43784       
/* 00A10 80A43740 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00A14 80A43744 10000033 */  beq     $zero, $zero, .L80A43814   
/* 00A18 80A43748 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A4374C:
/* 00A1C 80A4374C 94CE010E */  lhu     $t6, 0x010E($a2)           ## 0000010E
/* 00A20 80A43750 2401300B */  addiu   $at, $zero, 0x300B         ## $at = 0000300B
/* 00A24 80A43754 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 00A28 80A43758 15C10008 */  bne     $t6, $at, .L80A4377C       
/* 00A2C 80A4375C 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 00A30 80A43760 94830F14 */  lhu     $v1, 0x0F14($a0)           ## 8015F574
/* 00A34 80A43764 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 00A38 80A43768 306F0800 */  andi    $t7, $v1, 0x0800           ## $t7 = 00000000
/* 00A3C 80A4376C 15E00003 */  bne     $t7, $zero, .L80A4377C     
/* 00A40 80A43770 34780800 */  ori     $t8, $v1, 0x0800           ## $t8 = 00000800
/* 00A44 80A43774 10000027 */  beq     $zero, $zero, .L80A43814   
/* 00A48 80A43778 A4980F14 */  sh      $t8, 0x0F14($a0)           ## 8015F574
.L80A4377C:
/* 00A4C 80A4377C 10000025 */  beq     $zero, $zero, .L80A43814   
/* 00A50 80A43780 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A43784:
/* 00A54 80A43784 0C041AF2 */  jal     func_80106BC8              
/* 00A58 80A43788 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00A5C 80A4378C 10400020 */  beq     $v0, $zero, .L80A43810     
/* 00A60 80A43790 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00A64 80A43794 94D9010E */  lhu     $t9, 0x010E($a2)           ## 0000010E
/* 00A68 80A43798 2401300A */  addiu   $at, $zero, 0x300A         ## $at = 0000300A
/* 00A6C 80A4379C 8FA80018 */  lw      $t0, 0x0018($sp)           
/* 00A70 80A437A0 17210019 */  bne     $t9, $at, .L80A43808       
/* 00A74 80A437A4 3C090001 */  lui     $t1, 0x0001                ## $t1 = 00010000
/* 00A78 80A437A8 01284821 */  addu    $t1, $t1, $t0              
/* 00A7C 80A437AC 912904BD */  lbu     $t1, 0x04BD($t1)           ## 000104BD
/* 00A80 80A437B0 3C048016 */  lui     $a0, %hi(gSaveContext)
/* 00A84 80A437B4 2484E660 */  addiu   $a0, %lo(gSaveContext)
/* 00A88 80A437B8 1520000F */  bne     $t1, $zero, .L80A437F8     
/* 00A8C 80A437BC 2419300D */  addiu   $t9, $zero, 0x300D         ## $t9 = 0000300D
/* 00A90 80A437C0 3C0B8012 */  lui     $t3, %hi(gUpgradeMasks+8)
/* 00A94 80A437C4 8D6B71B8 */  lw      $t3, %lo(gUpgradeMasks+8)($t3)
/* 00A98 80A437C8 8C8A00A0 */  lw      $t2, 0x00A0($a0)           ## 8015E700
/* 00A9C 80A437CC 3C0D8012 */  lui     $t5, %hi(gUpgradeShifts+2)
/* 00AA0 80A437D0 91AD71F6 */  lbu     $t5, %lo(gUpgradeShifts+2)($t5)
/* 00AA4 80A437D4 014B6024 */  and     $t4, $t2, $t3              
/* 00AA8 80A437D8 2418300C */  addiu   $t8, $zero, 0x300C         ## $t8 = 0000300C
/* 00AAC 80A437DC 01AC7007 */  srav    $t6, $t4, $t5              
/* 00AB0 80A437E0 11C00003 */  beq     $t6, $zero, .L80A437F0     
/* 00AB4 80A437E4 240F300B */  addiu   $t7, $zero, 0x300B         ## $t7 = 0000300B
/* 00AB8 80A437E8 10000004 */  beq     $zero, $zero, .L80A437FC   
/* 00ABC 80A437EC A4CF010E */  sh      $t7, 0x010E($a2)           ## 0000010E
.L80A437F0:
/* 00AC0 80A437F0 10000002 */  beq     $zero, $zero, .L80A437FC   
/* 00AC4 80A437F4 A4D8010E */  sh      $t8, 0x010E($a2)           ## 0000010E
.L80A437F8:
/* 00AC8 80A437F8 A4D9010E */  sh      $t9, 0x010E($a2)           ## 0000010E
.L80A437FC:
/* 00ACC 80A437FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AD0 80A43800 0C042DC8 */  jal     func_8010B720              
/* 00AD4 80A43804 94C5010E */  lhu     $a1, 0x010E($a2)           ## 0000010E
.L80A43808:
/* 00AD8 80A43808 10000002 */  beq     $zero, $zero, .L80A43814   
/* 00ADC 80A4380C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A43810:
/* 00AE0 80A43810 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A43814:
/* 00AE4 80A43814 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AE8 80A43818 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00AEC 80A4381C 03E00008 */  jr      $ra                        
/* 00AF0 80A43820 00000000 */  nop
