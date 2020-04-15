glabel func_80ACADF0
/* 00ED0 80ACADF0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00ED4 80ACADF4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00ED8 80ACADF8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EDC 80ACADFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EE0 80ACAE00 0C042F6F */  jal     func_8010BDBC              
/* 00EE4 80ACAE04 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00EE8 80ACAE08 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00EEC 80ACAE0C 54410010 */  bnel    $v0, $at, .L80ACAE50       
/* 00EF0 80ACAE10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EF4 80ACAE14 0C041AF2 */  jal     func_80106BC8              
/* 00EF8 80ACAE18 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00EFC 80ACAE1C 1040000B */  beq     $v0, $zero, .L80ACAE4C     
/* 00F00 80ACAE20 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00F04 80ACAE24 0C042DC8 */  jal     func_8010B720              
/* 00F08 80ACAE28 2405206A */  addiu   $a1, $zero, 0x206A         ## $a1 = 0000206A
/* 00F0C 80ACAE2C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00F10 80ACAE30 3C0E80AD */  lui     $t6, %hi(func_80ACAD34)    ## $t6 = 80AD0000
/* 00F14 80ACAE34 25CEAD34 */  addiu   $t6, $t6, %lo(func_80ACAD34) ## $t6 = 80ACAD34
/* 00F18 80ACAE38 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 00F1C 80ACAE3C AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 00F20 80ACAE40 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 00F24 80ACAE44 0C2B29C7 */  jal     func_80ACA71C              
/* 00F28 80ACAE48 A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACAE4C:
/* 00F2C 80ACAE4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACAE50:
/* 00F30 80ACAE50 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00F34 80ACAE54 03E00008 */  jr      $ra                        
/* 00F38 80ACAE58 00000000 */  nop
