glabel func_80ACAA54
/* 00B34 80ACAA54 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00B38 80ACAA58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00B3C 80ACAA5C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00B40 80ACAA60 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00B44 80ACAA64 0C042F6F */  jal     func_8010BDBC              
/* 00B48 80ACAA68 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00B4C 80ACAA6C 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B50 80ACAA70 54410010 */  bnel    $v0, $at, .L80ACAAB4       
/* 00B54 80ACAA74 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B58 80ACAA78 0C041AF2 */  jal     func_80106BC8              
/* 00B5C 80ACAA7C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B60 80ACAA80 1040000B */  beq     $v0, $zero, .L80ACAAB0     
/* 00B64 80ACAA84 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00B68 80ACAA88 0C042DC8 */  jal     func_8010B720              
/* 00B6C 80ACAA8C 2405206A */  addiu   $a1, $zero, 0x206A         ## $a1 = 0000206A
/* 00B70 80ACAA90 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B74 80ACAA94 3C0E80AD */  lui     $t6, %hi(func_80ACA998)    ## $t6 = 80AD0000
/* 00B78 80ACAA98 25CEA998 */  addiu   $t6, $t6, %lo(func_80ACA998) ## $t6 = 80ACA998
/* 00B7C 80ACAA9C 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 00B80 80ACAAA0 AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 00B84 80ACAAA4 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 00B88 80ACAAA8 0C2B29C7 */  jal     func_80ACA71C              
/* 00B8C 80ACAAAC A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACAAB0:
/* 00B90 80ACAAB0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACAAB4:
/* 00B94 80ACAAB4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B98 80ACAAB8 03E00008 */  jr      $ra                        
/* 00B9C 80ACAABC 00000000 */  nop


