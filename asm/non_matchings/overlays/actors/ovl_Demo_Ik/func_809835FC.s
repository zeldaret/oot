glabel func_809835FC
/* 002FC 809835FC 27BDFF68 */  addiu   $sp, $sp, 0xFF68           ## $sp = FFFFFF68
/* 00300 80983600 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 00304 80983604 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 00308 80983608 AFBF0064 */  sw      $ra, 0x0064($sp)           
/* 0030C 8098360C AFB60060 */  sw      $s6, 0x0060($sp)           
/* 00310 80983610 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 00314 80983614 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 00318 80983618 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 0031C 8098361C AFB20050 */  sw      $s2, 0x0050($sp)           
/* 00320 80983620 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 00324 80983624 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 00328 80983628 0C260D36 */  jal     func_809834D8              
/* 0032C 8098362C 8484001C */  lh      $a0, 0x001C($a0)           ## 0000001C
/* 00330 80983630 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 00334 80983634 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00338 80983638 24050005 */  addiu   $a1, $zero, 0x0005         ## $a1 = 00000005
/* 0033C 8098363C 0C260CE6 */  jal     func_80983398              
/* 00340 80983640 00403025 */  or      $a2, $v0, $zero            ## $a2 = 00000000
/* 00344 80983644 1040004C */  beq     $v0, $zero, .L80983778     
/* 00348 80983648 3C0E8098 */  lui     $t6, %hi(D_809846D0)       ## $t6 = 80980000
/* 0034C 8098364C 25CE46D0 */  addiu   $t6, $t6, %lo(D_809846D0)  ## $t6 = 809846D0
/* 00350 80983650 8DD80000 */  lw      $t8, 0x0000($t6)           ## 809846D0
/* 00354 80983654 27B20078 */  addiu   $s2, $sp, 0x0078           ## $s2 = FFFFFFE0
/* 00358 80983658 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 0035C 8098365C AE580000 */  sw      $t8, 0x0000($s2)           ## FFFFFFE0
/* 00360 80983660 8DCF0004 */  lw      $t7, 0x0004($t6)           ## 809846D4
/* 00364 80983664 3C088098 */  lui     $t0, %hi(D_809846DC)       ## $t0 = 80980000
/* 00368 80983668 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0036C 8098366C AE4F0004 */  sw      $t7, 0x0004($s2)           ## FFFFFFE4
/* 00370 80983670 8DD80008 */  lw      $t8, 0x0008($t6)           ## 809846D8
/* 00374 80983674 250846DC */  addiu   $t0, $t0, %lo(D_809846DC)  ## $t0 = 809846DC
/* 00378 80983678 16010003 */  bne     $s0, $at, .L80983688       
/* 0037C 8098367C AE580008 */  sw      $t8, 0x0008($s2)           ## FFFFFFE8
/* 00380 80983680 10000008 */  beq     $zero, $zero, .L809836A4   
/* 00384 80983684 24140004 */  addiu   $s4, $zero, 0x0004         ## $s4 = 00000004
.L80983688:
/* 00388 80983688 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0038C 8098368C 16010004 */  bne     $s0, $at, .L809836A0       
/* 00390 80983690 24020008 */  addiu   $v0, $zero, 0x0008         ## $v0 = 00000008
/* 00394 80983694 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
/* 00398 80983698 10000002 */  beq     $zero, $zero, .L809836A4   
/* 0039C 8098369C 24140008 */  addiu   $s4, $zero, 0x0008         ## $s4 = 00000008
.L809836A0:
/* 003A0 809836A0 2414000B */  addiu   $s4, $zero, 0x000B         ## $s4 = 0000000B
.L809836A4:
/* 003A4 809836A4 0054082A */  slt     $at, $v0, $s4              
/* 003A8 809836A8 10200033 */  beq     $at, $zero, .L80983778     
/* 003AC 809836AC 0002C880 */  sll     $t9, $v0,  2               
/* 003B0 809836B0 00144880 */  sll     $t1, $s4,  2               
/* 003B4 809836B4 01344823 */  subu    $t1, $t1, $s4              
/* 003B8 809836B8 0322C823 */  subu    $t9, $t9, $v0              
/* 003BC 809836BC 0019C880 */  sll     $t9, $t9,  2               
/* 003C0 809836C0 00094880 */  sll     $t1, $t1,  2               
/* 003C4 809836C4 01289821 */  addu    $s3, $t1, $t0              
/* 003C8 809836C8 03288021 */  addu    $s0, $t9, $t0              
/* 003CC 809836CC 27B50084 */  addiu   $s5, $sp, 0x0084           ## $s5 = FFFFFFEC
/* 003D0 809836D0 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000000
.L809836D4:
/* 003D4 809836D4 C6260024 */  lwc1    $f6, 0x0024($s1)           ## 00000024
/* 003D8 809836D8 C60A0004 */  lwc1    $f10, 0x0004($s0)          ## 00000004
/* 003DC 809836DC 240A000A */  addiu   $t2, $zero, 0x000A         ## $t2 = 0000000A
/* 003E0 809836E0 46062200 */  add.s   $f8, $f4, $f6              
/* 003E4 809836E4 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 003E8 809836E8 240B0007 */  addiu   $t3, $zero, 0x0007         ## $t3 = 00000007
/* 003EC 809836EC 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 003F0 809836F0 E7A80084 */  swc1    $f8, 0x0084($sp)           
/* 003F4 809836F4 C6300028 */  lwc1    $f16, 0x0028($s1)          ## 00000028
/* 003F8 809836F8 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 003FC 809836FC 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00400 80983700 46105480 */  add.s   $f18, $f10, $f16           
/* 00404 80983704 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 00408 80983708 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 0040C 8098370C 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00410 80983710 E7B20088 */  swc1    $f18, 0x0088($sp)          
/* 00414 80983714 C626002C */  lwc1    $f6, 0x002C($s1)           ## 0000002C
/* 00418 80983718 24090009 */  addiu   $t1, $zero, 0x0009         ## $t1 = 00000009
/* 0041C 8098371C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00420 80983720 46062200 */  add.s   $f8, $f4, $f6              
/* 00424 80983724 AFA8003C */  sw      $t0, 0x003C($sp)           
/* 00428 80983728 AFA90038 */  sw      $t1, 0x0038($sp)           
/* 0042C 8098372C AFB90034 */  sw      $t9, 0x0034($sp)           
/* 00430 80983730 E7A8008C */  swc1    $f8, 0x008C($sp)           
/* 00434 80983734 AFB80030 */  sw      $t8, 0x0030($sp)           
/* 00438 80983738 AFA0002C */  sw      $zero, 0x002C($sp)         
/* 0043C 8098373C AFA00028 */  sw      $zero, 0x0028($sp)         
/* 00440 80983740 AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00444 80983744 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 00448 80983748 AFAD001C */  sw      $t5, 0x001C($sp)           
/* 0044C 8098374C AFAC0018 */  sw      $t4, 0x0018($sp)           
/* 00450 80983750 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 00454 80983754 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 00458 80983758 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 0045C 8098375C 02A02825 */  or      $a1, $s5, $zero            ## $a1 = FFFFFFEC
/* 00460 80983760 02403025 */  or      $a2, $s2, $zero            ## $a2 = FFFFFFE0
/* 00464 80983764 0C00A9AE */  jal     func_8002A6B8              
/* 00468 80983768 02403825 */  or      $a3, $s2, $zero            ## $a3 = FFFFFFE0
/* 0046C 8098376C 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 00470 80983770 5613FFD8 */  bnel    $s0, $s3, .L809836D4       
/* 00474 80983774 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 0000000C
.L80983778:
/* 00478 80983778 8FBF0064 */  lw      $ra, 0x0064($sp)           
/* 0047C 8098377C 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 00480 80983780 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 00484 80983784 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 00488 80983788 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 0048C 8098378C 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 00490 80983790 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 00494 80983794 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 00498 80983798 03E00008 */  jr      $ra                        
/* 0049C 8098379C 27BD0098 */  addiu   $sp, $sp, 0x0098           ## $sp = 00000000
