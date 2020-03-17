glabel func_80A1C7CC
/* 01E2C 80A1C7CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01E30 80A1C7D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01E34 80A1C7D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01E38 80A1C7D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01E3C 80A1C7DC 0C042F6F */  jal     func_8010BDBC              
/* 01E40 80A1C7E0 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01E44 80A1C7E4 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01E48 80A1C7E8 5441000E */  bnel    $v0, $at, .L80A1C824       
/* 01E4C 80A1C7EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01E50 80A1C7F0 0C041AF2 */  jal     func_80106BC8              
/* 01E54 80A1C7F4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01E58 80A1C7F8 10400009 */  beq     $v0, $zero, .L80A1C820     
/* 01E5C 80A1C7FC 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 01E60 80A1C800 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 01E64 80A1C804 A5EE0386 */  sh      $t6, 0x0386($t7)           ## 00000386
/* 01E68 80A1C808 0C041B33 */  jal     func_80106CCC              
/* 01E6C 80A1C80C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01E70 80A1C810 8FB90018 */  lw      $t9, 0x0018($sp)           
/* 01E74 80A1C814 3C1880A2 */  lui     $t8, %hi(func_80A1C830)    ## $t8 = 80A20000
/* 01E78 80A1C818 2718C830 */  addiu   $t8, $t8, %lo(func_80A1C830) ## $t8 = 80A1C830
/* 01E7C 80A1C81C AF380354 */  sw      $t8, 0x0354($t9)           ## 00000354
.L80A1C820:
/* 01E80 80A1C820 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1C824:
/* 01E84 80A1C824 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01E88 80A1C828 03E00008 */  jr      $ra                        
/* 01E8C 80A1C82C 00000000 */  nop


