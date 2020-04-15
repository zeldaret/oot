glabel func_80ACA558
/* 00638 80ACA558 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0063C 80ACA55C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00640 80ACA560 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00644 80ACA564 AFA60028 */  sw      $a2, 0x0028($sp)           
/* 00648 80ACA568 0C00BC65 */  jal     func_8002F194              
/* 0064C 80ACA56C AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00650 80ACA570 10400003 */  beq     $v0, $zero, .L80ACA580     
/* 00654 80ACA574 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00658 80ACA578 1000000F */  beq     $zero, $zero, .L80ACA5B8   
/* 0065C 80ACA57C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80ACA580:
/* 00660 80ACA580 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 00664 80ACA584 44813000 */  mtc1    $at, $f6                   ## $f6 = 120.00
/* 00668 80ACA588 C4840090 */  lwc1    $f4, 0x0090($a0)           ## 00000090
/* 0066C 80ACA58C 97AE002A */  lhu     $t6, 0x002A($sp)           
/* 00670 80ACA590 3C0643AF */  lui     $a2, 0x43AF                ## $a2 = 43AF0000
/* 00674 80ACA594 4606203C */  c.lt.s  $f4, $f6                   
/* 00678 80ACA598 A48E010E */  sh      $t6, 0x010E($a0)           ## 0000010E
/* 0067C 80ACA59C 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00680 80ACA5A0 3C07447A */  lui     $a3, 0x447A                ## $a3 = 447A0000
/* 00684 80ACA5A4 45020004 */  bc1fl   .L80ACA5B8                 
/* 00688 80ACA5A8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0068C 80ACA5AC 0C00BC71 */  jal     func_8002F1C4              
/* 00690 80ACA5B0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00694 80ACA5B4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80ACA5B8:
/* 00698 80ACA5B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0069C 80ACA5BC 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 006A0 80ACA5C0 03E00008 */  jr      $ra                        
/* 006A4 80ACA5C4 00000000 */  nop
