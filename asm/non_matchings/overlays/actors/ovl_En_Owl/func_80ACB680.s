glabel func_80ACB680
/* 01760 80ACB680 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01764 80ACB684 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01768 80ACB688 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0176C 80ACB68C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01770 80ACB690 0C042F6F */  jal     func_8010BDBC              
/* 01774 80ACB694 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 01778 80ACB698 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0177C 80ACB69C 54410010 */  bnel    $v0, $at, .L80ACB6E0       
/* 01780 80ACB6A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01784 80ACB6A4 0C041AF2 */  jal     func_80106BC8              
/* 01788 80ACB6A8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0178C 80ACB6AC 1040000B */  beq     $v0, $zero, .L80ACB6DC     
/* 01790 80ACB6B0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 01794 80ACB6B4 0C042DC8 */  jal     func_8010B720              
/* 01798 80ACB6B8 240510C6 */  addiu   $a1, $zero, 0x10C6         ## $a1 = 000010C6
/* 0179C 80ACB6BC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 017A0 80ACB6C0 3C0E80AD */  lui     $t6, %hi(func_80ACB5C4)    ## $t6 = 80AD0000
/* 017A4 80ACB6C4 25CEB5C4 */  addiu   $t6, $t6, %lo(func_80ACB5C4) ## $t6 = 80ACB5C4
/* 017A8 80ACB6C8 948F03FC */  lhu     $t7, 0x03FC($a0)           ## 000003FC
/* 017AC 80ACB6CC AC8E040C */  sw      $t6, 0x040C($a0)           ## 0000040C
/* 017B0 80ACB6D0 35F80002 */  ori     $t8, $t7, 0x0002           ## $t8 = 00000002
/* 017B4 80ACB6D4 0C2B29C7 */  jal     func_80ACA71C              
/* 017B8 80ACB6D8 A49803FC */  sh      $t8, 0x03FC($a0)           ## 000003FC
.L80ACB6DC:
/* 017BC 80ACB6DC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ACB6E0:
/* 017C0 80ACB6E0 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 017C4 80ACB6E4 03E00008 */  jr      $ra                        
/* 017C8 80ACB6E8 00000000 */  nop
