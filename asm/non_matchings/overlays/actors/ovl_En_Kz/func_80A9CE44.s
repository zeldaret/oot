glabel func_80A9CE44
/* 008F4 80A9CE44 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 008F8 80A9CE48 3401FF00 */  ori     $at, $zero, 0xFF00         ## $at = 0000FF00
/* 008FC 80A9CE4C 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 00900 80A9CE50 3063FF00 */  andi    $v1, $v1, 0xFF00           ## $v1 = 00000000
/* 00904 80A9CE54 14610003 */  bne     $v1, $at, .L80A9CE64       
/* 00908 80A9CE58 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 0090C 80A9CE5C 03E00008 */  jr      $ra                        
/* 00910 80A9CE60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9CE64:
/* 00914 80A9CE64 01C67021 */  addu    $t6, $t6, $a2              
/* 00918 80A9CE68 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 0091C 80A9CE6C 00037A03 */  sra     $t7, $v1,  8               
/* 00920 80A9CE70 000FC0C0 */  sll     $t8, $t7,  3               
/* 00924 80A9CE74 01D82821 */  addu    $a1, $t6, $t8              
/* 00928 80A9CE78 8CA80004 */  lw      $t0, 0x0004($a1)           ## 00000004
/* 0092C 80A9CE7C 3C0B8016 */  lui     $t3, %hi(gSegments)
/* 00930 80A9CE80 90AD0000 */  lbu     $t5, 0x0000($a1)           ## 00000000
/* 00934 80A9CE84 0008C900 */  sll     $t9, $t0,  4               
/* 00938 80A9CE88 00194F02 */  srl     $t1, $t9, 28               
/* 0093C 80A9CE8C 00095080 */  sll     $t2, $t1,  2               
/* 00940 80A9CE90 016A5821 */  addu    $t3, $t3, $t2              
/* 00944 80A9CE94 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00948 80A9CE98 8D6B6FA8 */  lw      $t3, %lo(gSegments)($t3)
/* 0094C 80A9CE9C 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00950 80A9CEA0 01016024 */  and     $t4, $t0, $at              
/* 00954 80A9CEA4 000D7880 */  sll     $t7, $t5,  2               
/* 00958 80A9CEA8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 0095C 80A9CEAC 01ED7823 */  subu    $t7, $t7, $t5              
/* 00960 80A9CEB0 016C3821 */  addu    $a3, $t3, $t4              
/* 00964 80A9CEB4 00E13821 */  addu    $a3, $a3, $at              
/* 00968 80A9CEB8 000F7840 */  sll     $t7, $t7,  1               
/* 0096C 80A9CEBC 00EF3821 */  addu    $a3, $a3, $t7              
/* 00970 80A9CEC0 84EEFFFA */  lh      $t6, -0x0006($a3)          ## FFFFFFFA
/* 00974 80A9CEC4 24E7FFFA */  addiu   $a3, $a3, 0xFFFA           ## $a3 = FFFFFFFA
/* 00978 80A9CEC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 0097C 80A9CECC 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00980 80A9CED0 00000000 */  nop
/* 00984 80A9CED4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00988 80A9CED8 E4860024 */  swc1    $f6, 0x0024($a0)           ## 00000024
/* 0098C 80A9CEDC 84F80002 */  lh      $t8, 0x0002($a3)           ## FFFFFFFC
/* 00990 80A9CEE0 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 00994 80A9CEE4 00000000 */  nop
/* 00998 80A9CEE8 468042A0 */  cvt.s.w $f10, $f8                  
/* 0099C 80A9CEEC E48A0028 */  swc1    $f10, 0x0028($a0)          ## 00000028
/* 009A0 80A9CEF0 84F90004 */  lh      $t9, 0x0004($a3)           ## FFFFFFFE
/* 009A4 80A9CEF4 44998000 */  mtc1    $t9, $f16                  ## $f16 = 0.00
/* 009A8 80A9CEF8 00000000 */  nop
/* 009AC 80A9CEFC 468084A0 */  cvt.s.w $f18, $f16                 
/* 009B0 80A9CF00 E492002C */  swc1    $f18, 0x002C($a0)          ## 0000002C
/* 009B4 80A9CF04 03E00008 */  jr      $ra                        
/* 009B8 80A9CF08 00000000 */  nop
