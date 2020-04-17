glabel func_80ACB4FC
/* 015DC 80ACB4FC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015E0 80ACB500 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 015E4 80ACB504 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 015E8 80ACB508 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 015EC 80ACB50C 0C042F6F */  jal     func_8010BDBC              
/* 015F0 80ACB510 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 015F4 80ACB514 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 015F8 80ACB518 54410010 */  bnel    $v0, $at, .L80ACB55C       
/* 015FC 80ACB51C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01600 80ACB520 0C041AF2 */  jal     func_80106BC8              
/* 01604 80ACB524 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01608 80ACB528 1040000B */  beq     $v0, $zero, .L80ACB558     
/* 0160C 80ACB52C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01610 80ACB530 0C042DC8 */  jal     func_8010B720              
/* 01614 80ACB534 240510C2 */  addiu   $a1, $zero, 0x10C2         ## $a1 = 000010C2
/* 01618 80ACB538 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0161C 80ACB53C 3C0E80AD */  lui     $t6, %hi(func_80ACB440)    ## $t6 = 80AD0000
/* 01620 80ACB540 25CEB440 */  addiu   $t6, $t6, %lo(func_80ACB440) ## $t6 = 80ACB440
/* 01624 80ACB544 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 01628 80ACB548 AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 0162C 80ACB54C 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 01630 80ACB550 0C2B29C7 */  jal     func_80ACA71C              
/* 01634 80ACB554 A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACB558:
/* 01638 80ACB558 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACB55C:
/* 0163C 80ACB55C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01640 80ACB560 03E00008 */  jr      $ra                        
/* 01644 80ACB564 00000000 */  nop
