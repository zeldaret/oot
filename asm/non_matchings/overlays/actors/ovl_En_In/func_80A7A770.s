glabel func_80A7A770
/* 017C0 80A7A770 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 017C4 80A7A774 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 017C8 80A7A778 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 017CC 80A7A77C 84820308 */  lh      $v0, 0x0308($a0)           ## 00000308
/* 017D0 80A7A780 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 017D4 80A7A784 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 017D8 80A7A788 14400006 */  bne     $v0, $zero, .L80A7A7A4     
/* 017DC 80A7A78C 00000000 */  nop
/* 017E0 80A7A790 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 017E4 80A7A794 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 017E8 80A7A798 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00010000
/* 017EC 80A7A79C 10000026 */  beq     $zero, $zero, .L80A7A838   
/* 017F0 80A7A7A0 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
.L80A7A7A4:
/* 017F4 80A7A7A4 14410024 */  bne     $v0, $at, .L80A7A838       
/* 017F8 80A7A7A8 2404FFCE */  addiu   $a0, $zero, 0xFFCE         ## $a0 = FFFFFFCE
/* 017FC 80A7A7AC 0C021CC3 */  jal     Rupees_ChangeBy              
/* 01800 80A7A7B0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 01804 80A7A7B4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01808 80A7A7B8 3C01FFFE */  lui     $at, 0xFFFE                ## $at = FFFE0000
/* 0180C 80A7A7BC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFEFFFF
/* 01810 80A7A7C0 8C980004 */  lw      $t8, 0x0004($a0)           ## 00000004
/* 01814 80A7A7C4 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01818 80A7A7C8 0301C824 */  and     $t9, $t8, $at              
/* 0181C 80A7A7CC 0C29E5BB */  jal     func_80A796EC              
/* 01820 80A7A7D0 AC990004 */  sw      $t9, 0x0004($a0)           ## 00000004
/* 01824 80A7A7D4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 01828 80A7A7D8 3C0880A8 */  lui     $t0, %hi(func_80A7A848)    ## $t0 = 80A80000
/* 0182C 80A7A7DC 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01830 80A7A7E0 2508A848 */  addiu   $t0, $t0, %lo(func_80A7A848) ## $t0 = 80A7A848
/* 01834 80A7A7E4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01838 80A7A7E8 ACC80190 */  sw      $t0, 0x0190($a2)           ## 00000190
/* 0183C 80A7A7EC 944913FA */  lhu     $t1, 0x13FA($v0)           ## 8015FA5A
/* 01840 80A7A7F0 24190004 */  addiu   $t9, $zero, 0x0004         ## $t9 = 00000004
/* 01844 80A7A7F4 312AFFF0 */  andi    $t2, $t1, 0xFFF0           ## $t2 = 00000000
/* 01848 80A7A7F8 354B0007 */  ori     $t3, $t2, 0x0007           ## $t3 = 00000007
/* 0184C 80A7A7FC A44B13FA */  sh      $t3, 0x13FA($v0)           ## 8015FA5A
/* 01850 80A7A800 A4C00308 */  sh      $zero, 0x0308($a2)         ## 00000308
/* 01854 80A7A804 944D13FA */  lhu     $t5, 0x13FA($v0)           ## 8015FA5A
/* 01858 80A7A808 35AF0020 */  ori     $t7, $t5, 0x0020           ## $t7 = 00000020
/* 0185C 80A7A80C 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 01860 80A7A810 17000009 */  bne     $t8, $zero, .L80A7A838     
/* 01864 80A7A814 A44F13FA */  sh      $t7, 0x13FA($v0)           ## 8015FA5A
/* 01868 80A7A818 8FA2001C */  lw      $v0, 0x001C($sp)           
/* 0186C 80A7A81C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01870 80A7A820 24080036 */  addiu   $t0, $zero, 0x0036         ## $t0 = 00000036
/* 01874 80A7A824 00220821 */  addu    $at, $at, $v0              
/* 01878 80A7A828 A03904BF */  sb      $t9, 0x04BF($at)           ## 000104BF
/* 0187C 80A7A82C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01880 80A7A830 00220821 */  addu    $at, $at, $v0              
/* 01884 80A7A834 A02803DC */  sb      $t0, 0x03DC($at)           ## 000103DC
.L80A7A838:
/* 01888 80A7A838 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0188C 80A7A83C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01890 80A7A840 03E00008 */  jr      $ra                        
/* 01894 80A7A844 00000000 */  nop
