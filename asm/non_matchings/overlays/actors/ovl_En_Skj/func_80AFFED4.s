glabel func_80AFFED4
/* 01C24 80AFFED4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01C28 80AFFED8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01C2C 80AFFEDC AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01C30 80AFFEE0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01C34 80AFFEE4 0C042F6F */  jal     func_8010BDBC              
/* 01C38 80AFFEE8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01C3C 80AFFEEC 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01C40 80AFFEF0 5441000E */  bnel    $v0, $at, .L80AFFF2C       
/* 01C44 80AFFEF4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01C48 80AFFEF8 0C041AF2 */  jal     func_80106BC8              
/* 01C4C 80AFFEFC 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01C50 80AFFF00 10400009 */  beq     $v0, $zero, .L80AFFF28     
/* 01C54 80AFFF04 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 01C58 80AFFF08 2442E660 */  addiu   $v0, $v0, 0xE660           ## $v0 = 8015E660
/* 01C5C 80AFFF0C 944E0EF2 */  lhu     $t6, 0x0EF2($v0)           ## 8015F552
/* 01C60 80AFFF10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01C64 80AFFF14 35CF0040 */  ori     $t7, $t6, 0x0040           ## $t7 = 00000040
/* 01C68 80AFFF18 0C2BF90A */  jal     func_80AFE428              
/* 01C6C 80AFFF1C A44F0EF2 */  sh      $t7, 0x0EF2($v0)           ## 8015F552
/* 01C70 80AFFF20 0C2BFDE8 */  jal     func_80AFF7A0              
/* 01C74 80AFFF24 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80AFFF28:
/* 01C78 80AFFF28 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AFFF2C:
/* 01C7C 80AFFF2C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01C80 80AFFF30 03E00008 */  jr      $ra                        
/* 01C84 80AFFF34 00000000 */  nop


