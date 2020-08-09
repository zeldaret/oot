glabel func_800EE930
/* B65AD0 800EE930 240300FF */  li    $v1, 255
/* B65AD4 800EE934 3C028017 */  lui   $v0, %hi(D_8016B9F8) # $v0, 0x8017
/* B65AD8 800EE938 3C048017 */  lui   $a0, %hi(D_8016B9FC) # $a0, 0x8017
/* B65ADC 800EE93C 3C058017 */  lui   $a1, %hi(D_8016BA00) # $a1, 0x8017
/* B65AE0 800EE940 24A5BA00 */  addiu $a1, %lo(D_8016BA00) # addiu $a1, $a1, -0x4600
/* B65AE4 800EE944 2484B9FC */  addiu $a0, %lo(D_8016B9FC) # addiu $a0, $a0, -0x4604
/* B65AE8 800EE948 2442B9F8 */  addiu $v0, %lo(D_8016B9F8) # addiu $v0, $v0, -0x4608
/* B65AEC 800EE94C A0430000 */  sb    $v1, ($v0)
/* B65AF0 800EE950 A0430001 */  sb    $v1, 1($v0)
/* B65AF4 800EE954 A0400002 */  sb    $zero, 2($v0)
/* B65AF8 800EE958 A0830000 */  sb    $v1, ($a0)
/* B65AFC 800EE95C A0800001 */  sb    $zero, 1($a0)
/* B65B00 800EE960 A0800002 */  sb    $zero, 2($a0)
/* B65B04 800EE964 A0A30000 */  sb    $v1, ($a1)
/* B65B08 800EE968 A0A30001 */  sb    $v1, 1($a1)
/* B65B0C 800EE96C A0A00002 */  sb    $zero, 2($a1)
/* B65B10 800EE970 3C018013 */  lui   $at, %hi(D_80131880)
/* B65B14 800EE974 03E00008 */  jr    $ra
/* B65B18 800EE978 A0201880 */   sb    $zero, %lo(D_80131880)($at)

