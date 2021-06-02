.late_rodata
glabel jtbl_80B4A3A4
.word L80B4985C
.word L80B49864
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4988C
.word L80B498A0
.word L80B49874
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4987C
.word L80B498A0
.word L80B4986C
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B49894
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B4989C
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B498A0
.word L80B49884

.text
glabel func_80B49688
/* 05638 80B49688 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 0563C 80B4968C AFB10020 */  sw      $s1, 0x0020($sp)           
/* 05640 80B49690 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 05644 80B49694 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 05648 80B49698 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0564C 80B4969C AFA40060 */  sw      $a0, 0x0060($sp)           
/* 05650 80B496A0 AFA50064 */  sw      $a1, 0x0064($sp)           
/* 05654 80B496A4 AFA60068 */  sw      $a2, 0x0068($sp)           
/* 05658 80B496A8 AFA7006C */  sw      $a3, 0x006C($sp)           
/* 0565C 80B496AC 14A10045 */  bne     $a1, $at, .L80B497C4       
/* 05660 80B496B0 2411FFFF */  addiu   $s1, $zero, 0xFFFF         ## $s1 = FFFFFFFF
/* 05664 80B496B4 8FB00070 */  lw      $s0, 0x0070($sp)           
/* 05668 80B496B8 3C0480B5 */  lui     $a0, %hi(D_80B4A2BC)       ## $a0 = 80B50000
/* 0566C 80B496BC 2484A2BC */  addiu   $a0, $a0, %lo(D_80B4A2BC)  ## $a0 = 80B4A2BC
/* 05670 80B496C0 260504B0 */  addiu   $a1, $s0, 0x04B0           ## $a1 = 000004B0
/* 05674 80B496C4 0C0346BD */  jal     Matrix_MultVec3f              
/* 05678 80B496C8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0567C 80B496CC 3C0480B5 */  lui     $a0, %hi(D_80B4A2C8)       ## $a0 = 80B50000
/* 05680 80B496D0 260504A4 */  addiu   $a1, $s0, 0x04A4           ## $a1 = 000004A4
/* 05684 80B496D4 AFA50038 */  sw      $a1, 0x0038($sp)           
/* 05688 80B496D8 0C0346BD */  jal     Matrix_MultVec3f              
/* 0568C 80B496DC 2484A2C8 */  addiu   $a0, $a0, %lo(D_80B4A2C8)  ## $a0 = 80B4A2C8
/* 05690 80B496E0 3C0480B5 */  lui     $a0, %hi(D_80B4A2D4)       ## $a0 = 80B50000
/* 05694 80B496E4 260504C8 */  addiu   $a1, $s0, 0x04C8           ## $a1 = 000004C8
/* 05698 80B496E8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0569C 80B496EC 0C0346BD */  jal     Matrix_MultVec3f              
/* 056A0 80B496F0 2484A2D4 */  addiu   $a0, $a0, %lo(D_80B4A2D4)  ## $a0 = 80B4A2D4
/* 056A4 80B496F4 3C0480B5 */  lui     $a0, %hi(D_80B4A2E0)       ## $a0 = 80B50000
/* 056A8 80B496F8 260704BC */  addiu   $a3, $s0, 0x04BC           ## $a3 = 000004BC
/* 056AC 80B496FC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 000004BC
/* 056B0 80B49700 AFA70030 */  sw      $a3, 0x0030($sp)           
/* 056B4 80B49704 0C0346BD */  jal     Matrix_MultVec3f              
/* 056B8 80B49708 2484A2E0 */  addiu   $a0, $a0, %lo(D_80B4A2E0)  ## $a0 = 80B4A2E0
/* 056BC 80B4970C 8FAF002C */  lw      $t7, 0x002C($sp)           
/* 056C0 80B49710 8FA70030 */  lw      $a3, 0x0030($sp)           
/* 056C4 80B49714 26040464 */  addiu   $a0, $s0, 0x0464           ## $a0 = 00000464
/* 056C8 80B49718 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 056CC 80B4971C 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 056D0 80B49720 0C0189CD */  jal     Collider_SetQuadVertices              
/* 056D4 80B49724 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 056D8 80B49728 3C0480B5 */  lui     $a0, %hi(D_80B4A2A4)       ## $a0 = 80B50000
/* 056DC 80B4972C 2484A2A4 */  addiu   $a0, $a0, %lo(D_80B4A2A4)  ## $a0 = 80B4A2A4
/* 056E0 80B49730 0C0346BD */  jal     Matrix_MultVec3f              
/* 056E4 80B49734 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 056E8 80B49738 3C0480B5 */  lui     $a0, %hi(D_80B4A2B0)       ## $a0 = 80B50000
/* 056EC 80B4973C 2484A2B0 */  addiu   $a0, $a0, %lo(D_80B4A2B0)  ## $a0 = 80B4A2B0
/* 056F0 80B49740 0C0346BD */  jal     Matrix_MultVec3f              
/* 056F4 80B49744 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFE8
/* 056F8 80B49748 8E1803DC */  lw      $t8, 0x03DC($s0)           ## 000003DC
/* 056FC 80B4974C 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 05700 80B49750 17010026 */  bne     $t8, $at, .L80B497EC       
/* 05704 80B49754 3C014160 */  lui     $at, 0x4160                ## $at = 41600000
/* 05708 80B49758 44812000 */  mtc1    $at, $f4                   ## $f4 = 14.00
/* 0570C 80B4975C C6000164 */  lwc1    $f0, 0x0164($s0)           ## 00000164
/* 05710 80B49760 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 05714 80B49764 4604003C */  c.lt.s  $f0, $f4                   
/* 05718 80B49768 00000000 */  nop
/* 0571C 80B4976C 45020008 */  bc1fl   .L80B49790                 
/* 05720 80B49770 44813000 */  mtc1    $at, $f6                   ## $f6 = 20.00
/* 05724 80B49774 0C009AC3 */  jal     Effect_GetByIndex              
/* 05728 80B49778 8E040414 */  lw      $a0, 0x0414($s0)           ## 00000414
/* 0572C 80B4977C 0C008048 */  jal     EffectBlure_AddSpace              
/* 05730 80B49780 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 05734 80B49784 1000001A */  beq     $zero, $zero, .L80B497F0   
/* 05738 80B49788 8FA20064 */  lw      $v0, 0x0064($sp)           
/* 0573C 80B4978C 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80B49790:
/* 05740 80B49790 00000000 */  nop
/* 05744 80B49794 4606003C */  c.lt.s  $f0, $f6                   
/* 05748 80B49798 00000000 */  nop
/* 0574C 80B4979C 45020014 */  bc1fl   .L80B497F0                 
/* 05750 80B497A0 8FA20064 */  lw      $v0, 0x0064($sp)           
/* 05754 80B497A4 0C009AC3 */  jal     Effect_GetByIndex              
/* 05758 80B497A8 8E040414 */  lw      $a0, 0x0414($s0)           ## 00000414
/* 0575C 80B497AC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 05760 80B497B0 27A50054 */  addiu   $a1, $sp, 0x0054           ## $a1 = FFFFFFF4
/* 05764 80B497B4 0C007F7C */  jal     EffectBlure_AddVertex              
/* 05768 80B497B8 27A60048 */  addiu   $a2, $sp, 0x0048           ## $a2 = FFFFFFE8
/* 0576C 80B497BC 1000000C */  beq     $zero, $zero, .L80B497F0   
/* 05770 80B497C0 8FA20064 */  lw      $v0, 0x0064($sp)           
.L80B497C4:
/* 05774 80B497C4 8FB00070 */  lw      $s0, 0x0070($sp)           
/* 05778 80B497C8 3C1980B5 */  lui     $t9, %hi(D_80B4A298)       ## $t9 = 80B50000
/* 0577C 80B497CC 2727A298 */  addiu   $a3, $t9, %lo(D_80B4A298)  ## $a3 = 80B4A298
/* 05780 80B497D0 24080026 */  addiu   $t0, $zero, 0x0026         ## $t0 = 00000026
/* 05784 80B497D4 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 05788 80B497D8 AFA70014 */  sw      $a3, 0x0014($sp)           
/* 0578C 80B497DC 8FA50064 */  lw      $a1, 0x0064($sp)           
/* 05790 80B497E0 2406002D */  addiu   $a2, $zero, 0x002D         ## $a2 = 0000002D
/* 05794 80B497E4 0C00AF6C */  jal     Actor_SetFeetPos              
/* 05798 80B497E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B497EC:
/* 0579C 80B497EC 8FA20064 */  lw      $v0, 0x0064($sp)           
.L80B497F0:
/* 057A0 80B497F0 24010026 */  addiu   $at, $zero, 0x0026         ## $at = 00000026
/* 057A4 80B497F4 3C0480B5 */  lui     $a0, %hi(D_80B4A298)       ## $a0 = 80B50000
/* 057A8 80B497F8 10410009 */  beq     $v0, $at, .L80B49820       
/* 057AC 80B497FC 2484A298 */  addiu   $a0, $a0, %lo(D_80B4A298)  ## $a0 = 80B4A298
/* 057B0 80B49800 2401002D */  addiu   $at, $zero, 0x002D         ## $at = 0000002D
/* 057B4 80B49804 14410009 */  bne     $v0, $at, .L80B4982C       
/* 057B8 80B49808 3C0480B5 */  lui     $a0, %hi(D_80B4A298)       ## $a0 = 80B50000
/* 057BC 80B4980C 2484A298 */  addiu   $a0, $a0, %lo(D_80B4A298)  ## $a0 = 80B4A298
/* 057C0 80B49810 0C0346BD */  jal     Matrix_MultVec3f              
/* 057C4 80B49814 260504F0 */  addiu   $a1, $s0, 0x04F0           ## $a1 = 000004F0
/* 057C8 80B49818 10000004 */  beq     $zero, $zero, .L80B4982C   
/* 057CC 80B4981C 8FA20064 */  lw      $v0, 0x0064($sp)           
.L80B49820:
/* 057D0 80B49820 0C0346BD */  jal     Matrix_MultVec3f              
/* 057D4 80B49824 260504E4 */  addiu   $a1, $s0, 0x04E4           ## $a1 = 000004E4
/* 057D8 80B49828 8FA20064 */  lw      $v0, 0x0064($sp)           
.L80B4982C:
/* 057DC 80B4982C 860903F6 */  lh      $t1, 0x03F6($s0)           ## 000003F6
/* 057E0 80B49830 244AFFF7 */  addiu   $t2, $v0, 0xFFF7           ## $t2 = FFFFFFF7
/* 057E4 80B49834 2D410028 */  sltiu   $at, $t2, 0x0028           
/* 057E8 80B49838 51200023 */  beql    $t1, $zero, .L80B498C8     
/* 057EC 80B4983C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 057F0 80B49840 10200017 */  beq     $at, $zero, .L80B498A0     
/* 057F4 80B49844 000A5080 */  sll     $t2, $t2,  2               
/* 057F8 80B49848 3C0180B5 */  lui     $at, %hi(jtbl_80B4A3A4)       ## $at = 80B50000
/* 057FC 80B4984C 002A0821 */  addu    $at, $at, $t2              
/* 05800 80B49850 8C2AA3A4 */  lw      $t2, %lo(jtbl_80B4A3A4)($at)  
/* 05804 80B49854 01400008 */  jr      $t2                        
/* 05808 80B49858 00000000 */  nop
glabel L80B4985C
/* 0580C 80B4985C 10000010 */  beq     $zero, $zero, .L80B498A0   
/* 05810 80B49860 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
glabel L80B49864
/* 05814 80B49864 1000000E */  beq     $zero, $zero, .L80B498A0   
/* 05818 80B49868 24110001 */  addiu   $s1, $zero, 0x0001         ## $s1 = 00000001
glabel L80B4986C
/* 0581C 80B4986C 1000000C */  beq     $zero, $zero, .L80B498A0   
/* 05820 80B49870 24110002 */  addiu   $s1, $zero, 0x0002         ## $s1 = 00000002
glabel L80B49874
/* 05824 80B49874 1000000A */  beq     $zero, $zero, .L80B498A0   
/* 05828 80B49878 24110003 */  addiu   $s1, $zero, 0x0003         ## $s1 = 00000003
glabel L80B4987C
/* 0582C 80B4987C 10000008 */  beq     $zero, $zero, .L80B498A0   
/* 05830 80B49880 24110004 */  addiu   $s1, $zero, 0x0004         ## $s1 = 00000004
glabel L80B49884
/* 05834 80B49884 10000006 */  beq     $zero, $zero, .L80B498A0   
/* 05838 80B49888 24110005 */  addiu   $s1, $zero, 0x0005         ## $s1 = 00000005
glabel L80B4988C
/* 0583C 80B4988C 10000004 */  beq     $zero, $zero, .L80B498A0   
/* 05840 80B49890 24110006 */  addiu   $s1, $zero, 0x0006         ## $s1 = 00000006
glabel L80B49894
/* 05844 80B49894 10000002 */  beq     $zero, $zero, .L80B498A0   
/* 05848 80B49898 24110007 */  addiu   $s1, $zero, 0x0007         ## $s1 = 00000007
glabel L80B4989C
/* 0584C 80B4989C 24110008 */  addiu   $s1, $zero, 0x0008         ## $s1 = 00000008
glabel L80B498A0
.L80B498A0:
/* 05850 80B498A0 06200008 */  bltz    $s1, .L80B498C4            
/* 05854 80B498A4 3C0480B5 */  lui     $a0, %hi(D_80B4A2EC)       ## $a0 = 80B50000
/* 05858 80B498A8 00115880 */  sll     $t3, $s1,  2               
/* 0585C 80B498AC 01715823 */  subu    $t3, $t3, $s1              
/* 05860 80B498B0 000B5880 */  sll     $t3, $t3,  2               
/* 05864 80B498B4 020B2821 */  addu    $a1, $s0, $t3              
/* 05868 80B498B8 24A504FC */  addiu   $a1, $a1, 0x04FC           ## $a1 = 000004FC
/* 0586C 80B498BC 0C0346BD */  jal     Matrix_MultVec3f              
/* 05870 80B498C0 2484A2EC */  addiu   $a0, $a0, %lo(D_80B4A2EC)  ## $a0 = 80B4A2EC
.L80B498C4:
/* 05874 80B498C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B498C8:
/* 05878 80B498C8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0587C 80B498CC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 05880 80B498D0 03E00008 */  jr      $ra                        
/* 05884 80B498D4 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
