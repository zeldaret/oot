.late_rodata
glabel jtbl_808647F8
.word L80863F68
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863F70
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863F88
.word L80863FCC
.word L80863FA0
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863F7C
.word L80863FCC
.word L80863FCC
.word L80863F94
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FB8
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FCC
.word L80863FC4
.word L80863FCC
.word L80863FCC
.word L80863FAC

.text
glabel func_80863CC4
/* 04674 80863CC4 27BDFF80 */  addiu   $sp, $sp, 0xFF80           ## $sp = FFFFFF80
/* 04678 80863CC8 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 0467C 80863CCC AFA60088 */  sw      $a2, 0x0088($sp)           
/* 04680 80863CD0 8FB00090 */  lw      $s0, 0x0090($sp)           
/* 04684 80863CD4 8FB80088 */  lw      $t8, 0x0088($sp)           
/* 04688 80863CD8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 0468C 80863CDC AFA40080 */  sw      $a0, 0x0080($sp)           
/* 04690 80863CE0 AFA7008C */  sw      $a3, 0x008C($sp)           
/* 04694 80863CE4 240EFFFF */  addiu   $t6, $zero, 0xFFFF         ## $t6 = FFFFFFFF
/* 04698 80863CE8 240F003C */  addiu   $t7, $zero, 0x003C         ## $t7 = 0000003C
/* 0469C 80863CEC 2419FFFF */  addiu   $t9, $zero, 0xFFFF         ## $t9 = FFFFFFFF
/* 046A0 80863CF0 AFA50084 */  sw      $a1, 0x0084($sp)           
/* 046A4 80863CF4 AFAE007C */  sw      $t6, 0x007C($sp)           
/* 046A8 80863CF8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 046AC 80863CFC AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 046B0 80863D00 2407003C */  addiu   $a3, $zero, 0x003C         ## $a3 = 0000003C
/* 046B4 80863D04 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 046B8 80863D08 260407F0 */  addiu   $a0, $s0, 0x07F0           ## $a0 = 000007F0
/* 046BC 80863D0C 0C00CBD5 */  jal     BodyBreak_SetInfo              
/* 046C0 80863D10 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 046C4 80863D14 8FA80084 */  lw      $t0, 0x0084($sp)           
/* 046C8 80863D18 24010022 */  addiu   $at, $zero, 0x0022         ## $at = 00000022
/* 046CC 80863D1C 3C048086 */  lui     $a0, %hi(D_8086467C)       ## $a0 = 80860000
/* 046D0 80863D20 1501003F */  bne     $t0, $at, .L80863E20       
/* 046D4 80863D24 8FAE0084 */  lw      $t6, 0x0084($sp)           
/* 046D8 80863D28 260508A8 */  addiu   $a1, $s0, 0x08A8           ## $a1 = 000008A8
/* 046DC 80863D2C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 046E0 80863D30 0C0346BD */  jal     Matrix_MultVec3f              
/* 046E4 80863D34 2484467C */  addiu   $a0, $a0, %lo(D_8086467C)  ## $a0 = 8086467C
/* 046E8 80863D38 3C048086 */  lui     $a0, %hi(D_80864688)       ## $a0 = 80860000
/* 046EC 80863D3C 2605089C */  addiu   $a1, $s0, 0x089C           ## $a1 = 0000089C
/* 046F0 80863D40 AFA50048 */  sw      $a1, 0x0048($sp)           
/* 046F4 80863D44 0C0346BD */  jal     Matrix_MultVec3f              
/* 046F8 80863D48 24844688 */  addiu   $a0, $a0, %lo(D_80864688)  ## $a0 = 80864688
/* 046FC 80863D4C 3C048086 */  lui     $a0, %hi(D_80864694)       ## $a0 = 80860000
/* 04700 80863D50 260508C0 */  addiu   $a1, $s0, 0x08C0           ## $a1 = 000008C0
/* 04704 80863D54 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 04708 80863D58 0C0346BD */  jal     Matrix_MultVec3f              
/* 0470C 80863D5C 24844694 */  addiu   $a0, $a0, %lo(D_80864694)  ## $a0 = 80864694
/* 04710 80863D60 3C048086 */  lui     $a0, %hi(D_808646A0)       ## $a0 = 80860000
/* 04714 80863D64 260708B4 */  addiu   $a3, $s0, 0x08B4           ## $a3 = 000008B4
/* 04718 80863D68 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 000008B4
/* 0471C 80863D6C AFA70040 */  sw      $a3, 0x0040($sp)           
/* 04720 80863D70 0C0346BD */  jal     Matrix_MultVec3f              
/* 04724 80863D74 248446A0 */  addiu   $a0, $a0, %lo(D_808646A0)  ## $a0 = 808646A0
/* 04728 80863D78 8FA9003C */  lw      $t1, 0x003C($sp)           
/* 0472C 80863D7C 8FA70040 */  lw      $a3, 0x0040($sp)           
/* 04730 80863D80 2604085C */  addiu   $a0, $s0, 0x085C           ## $a0 = 0000085C
/* 04734 80863D84 8FA50048 */  lw      $a1, 0x0048($sp)           
/* 04738 80863D88 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 0473C 80863D8C 0C0189CD */  jal     Collider_SetQuadVertices              
/* 04740 80863D90 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 04744 80863D94 3C048086 */  lui     $a0, %hi(D_80864664)       ## $a0 = 80860000
/* 04748 80863D98 24844664 */  addiu   $a0, $a0, %lo(D_80864664)  ## $a0 = 80864664
/* 0474C 80863D9C 0C0346BD */  jal     Matrix_MultVec3f              
/* 04750 80863DA0 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFF0
/* 04754 80863DA4 3C048086 */  lui     $a0, %hi(D_80864670)       ## $a0 = 80860000
/* 04758 80863DA8 24844670 */  addiu   $a0, $a0, %lo(D_80864670)  ## $a0 = 80864670
/* 0475C 80863DAC 0C0346BD */  jal     Matrix_MultVec3f              
/* 04760 80863DB0 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFE4
/* 04764 80863DB4 82020808 */  lb      $v0, 0x0808($s0)           ## 00000808
/* 04768 80863DB8 18400010 */  blez    $v0, .L80863DFC            
/* 0476C 80863DBC 00000000 */  nop
/* 04770 80863DC0 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 04774 80863DC4 8FAB0080 */  lw      $t3, 0x0080($sp)           
/* 04778 80863DC8 15400004 */  bne     $t2, $zero, .L80863DDC     
/* 0477C 80863DCC 00000000 */  nop
/* 04780 80863DD0 916C1C27 */  lbu     $t4, 0x1C27($t3)           ## 00001C27
/* 04784 80863DD4 11800009 */  beq     $t4, $zero, .L80863DFC     
/* 04788 80863DD8 00000000 */  nop
.L80863DDC:
/* 0478C 80863DDC 0C009AC3 */  jal     Effect_GetByIndex              
/* 04790 80863DE0 8E04080C */  lw      $a0, 0x080C($s0)           ## 0000080C
/* 04794 80863DE4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 04798 80863DE8 27A50070 */  addiu   $a1, $sp, 0x0070           ## $a1 = FFFFFFF0
/* 0479C 80863DEC 0C007F7C */  jal     EffectBlure_AddVertex              
/* 047A0 80863DF0 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFE4
/* 047A4 80863DF4 10000051 */  beq     $zero, $zero, .L80863F3C   
/* 047A8 80863DF8 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
.L80863DFC:
/* 047AC 80863DFC 0442004F */  bltzl   $v0, .L80863F3C            
/* 047B0 80863E00 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
/* 047B4 80863E04 0C009AC3 */  jal     Effect_GetByIndex              
/* 047B8 80863E08 8E04080C */  lw      $a0, 0x080C($s0)           ## 0000080C
/* 047BC 80863E0C 0C008048 */  jal     EffectBlure_AddSpace              
/* 047C0 80863E10 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 047C4 80863E14 240DFFFF */  addiu   $t5, $zero, 0xFFFF         ## $t5 = FFFFFFFF
/* 047C8 80863E18 10000047 */  beq     $zero, $zero, .L80863F38   
/* 047CC 80863E1C A20D0808 */  sb      $t5, 0x0808($s0)           ## 00000808
.L80863E20:
/* 047D0 80863E20 2401001B */  addiu   $at, $zero, 0x001B         ## $at = 0000001B
/* 047D4 80863E24 15C10017 */  bne     $t6, $at, .L80863E84       
/* 047D8 80863E28 3C078086 */  lui     $a3, %hi(D_80864658)       ## $a3 = 80860000
/* 047DC 80863E2C 920F07DE */  lbu     $t7, 0x07DE($s0)           ## 000007DE
/* 047E0 80863E30 3C048086 */  lui     $a0, %hi(D_80864670)       ## $a0 = 80860000
/* 047E4 80863E34 24844670 */  addiu   $a0, $a0, %lo(D_80864670)  ## $a0 = 80864670
/* 047E8 80863E38 11E00012 */  beq     $t7, $zero, .L80863E84     
/* 047EC 80863E3C 00000000 */  nop
/* 047F0 80863E40 0C0346BD */  jal     Matrix_MultVec3f              
/* 047F4 80863E44 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFE4
/* 047F8 80863E48 C7A40064 */  lwc1    $f4, 0x0064($sp)           
/* 047FC 80863E4C 4600218D */  trunc.w.s $f6, $f4                   
/* 04800 80863E50 44193000 */  mfc1    $t9, $f6                   
/* 04804 80863E54 00000000 */  nop
/* 04808 80863E58 A6190922 */  sh      $t9, 0x0922($s0)           ## 00000922
/* 0480C 80863E5C C7A80068 */  lwc1    $f8, 0x0068($sp)           
/* 04810 80863E60 4600428D */  trunc.w.s $f10, $f8                  
/* 04814 80863E64 44095000 */  mfc1    $t1, $f10                  
/* 04818 80863E68 00000000 */  nop
/* 0481C 80863E6C A6090924 */  sh      $t1, 0x0924($s0)           ## 00000924
/* 04820 80863E70 C7B0006C */  lwc1    $f16, 0x006C($sp)          
/* 04824 80863E74 4600848D */  trunc.w.s $f18, $f16                 
/* 04828 80863E78 440B9000 */  mfc1    $t3, $f18                  
/* 0482C 80863E7C 1000002E */  beq     $zero, $zero, .L80863F38   
/* 04830 80863E80 A60B0926 */  sh      $t3, 0x0926($s0)           ## 00000926
.L80863E84:
/* 04834 80863E84 24E74658 */  addiu   $a3, $a3, %lo(D_80864658)  ## $a3 = 00004658
/* 04838 80863E88 240C0037 */  addiu   $t4, $zero, 0x0037         ## $t4 = 00000037
/* 0483C 80863E8C AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 04840 80863E90 AFA70014 */  sw      $a3, 0x0014($sp)           
/* 04844 80863E94 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04848 80863E98 8FA50084 */  lw      $a1, 0x0084($sp)           
/* 0484C 80863E9C 0C00AF6C */  jal     Actor_SetFeetPos              
/* 04850 80863EA0 24060030 */  addiu   $a2, $zero, 0x0030         ## $a2 = 00000030
/* 04854 80863EA4 8FAD0084 */  lw      $t5, 0x0084($sp)           
/* 04858 80863EA8 24010030 */  addiu   $at, $zero, 0x0030         ## $at = 00000030
/* 0485C 80863EAC 11A10003 */  beq     $t5, $at, .L80863EBC       
/* 04860 80863EB0 24010037 */  addiu   $at, $zero, 0x0037         ## $at = 00000037
/* 04864 80863EB4 55A10021 */  bnel    $t5, $at, .L80863F3C       
/* 04868 80863EB8 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
.L80863EBC:
/* 0486C 80863EBC 920207C8 */  lbu     $v0, 0x07C8($s0)           ## 000007C8
/* 04870 80863EC0 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 04874 80863EC4 10410003 */  beq     $v0, $at, .L80863ED4       
/* 04878 80863EC8 24010016 */  addiu   $at, $zero, 0x0016         ## $at = 00000016
/* 0487C 80863ECC 5441001B */  bnel    $v0, $at, .L80863F3C       
/* 04880 80863ED0 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
.L80863ED4:
/* 04884 80863ED4 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04888 80863ED8 C6060068 */  lwc1    $f6, 0x0068($s0)           ## 00000068
/* 0488C 80863EDC 3C048086 */  lui     $a0, %hi(D_80864658)       ## $a0 = 80860000
/* 04890 80863EE0 24844658 */  addiu   $a0, $a0, %lo(D_80864658)  ## $a0 = 80864658
/* 04894 80863EE4 46062032 */  c.eq.s  $f4, $f6                   
/* 04898 80863EE8 00000000 */  nop
/* 0489C 80863EEC 45030013 */  bc1tl   .L80863F3C                 
/* 048A0 80863EF0 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
/* 048A4 80863EF4 0C0346BD */  jal     Matrix_MultVec3f              
/* 048A8 80863EF8 27A50064 */  addiu   $a1, $sp, 0x0064           ## $a1 = FFFFFFE4
/* 048AC 80863EFC 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 048B0 80863F00 44814000 */  mtc1    $at, $f8                   ## $f8 = 8.00
/* 048B4 80863F04 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 048B8 80863F08 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 048BC 80863F0C 2418000F */  addiu   $t8, $zero, 0x000F         ## $t8 = 0000000F
/* 048C0 80863F10 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 048C4 80863F14 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 048C8 80863F18 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 048CC 80863F1C 8FA40080 */  lw      $a0, 0x0080($sp)           
/* 048D0 80863F20 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 048D4 80863F24 27A60064 */  addiu   $a2, $sp, 0x0064           ## $a2 = FFFFFFE4
/* 048D8 80863F28 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 048DC 80863F2C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 048E0 80863F30 0C00CC98 */  jal     Actor_SpawnFloorDustRing              
/* 048E4 80863F34 E7A80014 */  swc1    $f8, 0x0014($sp)           
.L80863F38:
/* 048E8 80863F38 861907E0 */  lh      $t9, 0x07E0($s0)           ## 000007E0
.L80863F3C:
/* 048EC 80863F3C 8FA80084 */  lw      $t0, 0x0084($sp)           
/* 048F0 80863F40 1320003C */  beq     $t9, $zero, .L80864034     
/* 048F4 80863F44 2509FFF5 */  addiu   $t1, $t0, 0xFFF5           ## $t1 = FFFFFFF5
/* 048F8 80863F48 2D210032 */  sltiu   $at, $t1, 0x0032           
/* 048FC 80863F4C 1020001F */  beq     $at, $zero, .L80863FCC     
/* 04900 80863F50 00094880 */  sll     $t1, $t1,  2               
/* 04904 80863F54 3C018086 */  lui     $at, %hi(jtbl_808647F8)       ## $at = 80860000
/* 04908 80863F58 00290821 */  addu    $at, $at, $t1              
/* 0490C 80863F5C 8C2947F8 */  lw      $t1, %lo(jtbl_808647F8)($at)  
/* 04910 80863F60 01200008 */  jr      $t1                        
/* 04914 80863F64 00000000 */  nop
glabel L80863F68
/* 04918 80863F68 10000018 */  beq     $zero, $zero, .L80863FCC   
/* 0491C 80863F6C AFA0007C */  sw      $zero, 0x007C($sp)         
glabel L80863F70
/* 04920 80863F70 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 04924 80863F74 10000015 */  beq     $zero, $zero, .L80863FCC   
/* 04928 80863F78 AFAA007C */  sw      $t2, 0x007C($sp)           
glabel L80863F7C
/* 0492C 80863F7C 240B0002 */  addiu   $t3, $zero, 0x0002         ## $t3 = 00000002
/* 04930 80863F80 10000012 */  beq     $zero, $zero, .L80863FCC   
/* 04934 80863F84 AFAB007C */  sw      $t3, 0x007C($sp)           
glabel L80863F88
/* 04938 80863F88 240C0003 */  addiu   $t4, $zero, 0x0003         ## $t4 = 00000003
/* 0493C 80863F8C 1000000F */  beq     $zero, $zero, .L80863FCC   
/* 04940 80863F90 AFAC007C */  sw      $t4, 0x007C($sp)           
glabel L80863F94
/* 04944 80863F94 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 04948 80863F98 1000000C */  beq     $zero, $zero, .L80863FCC   
/* 0494C 80863F9C AFAD007C */  sw      $t5, 0x007C($sp)           
glabel L80863FA0
/* 04950 80863FA0 240E0005 */  addiu   $t6, $zero, 0x0005         ## $t6 = 00000005
/* 04954 80863FA4 10000009 */  beq     $zero, $zero, .L80863FCC   
/* 04958 80863FA8 AFAE007C */  sw      $t6, 0x007C($sp)           
glabel L80863FAC
/* 0495C 80863FAC 240F0006 */  addiu   $t7, $zero, 0x0006         ## $t7 = 00000006
/* 04960 80863FB0 10000006 */  beq     $zero, $zero, .L80863FCC   
/* 04964 80863FB4 AFAF007C */  sw      $t7, 0x007C($sp)           
glabel L80863FB8
/* 04968 80863FB8 24180007 */  addiu   $t8, $zero, 0x0007         ## $t8 = 00000007
/* 0496C 80863FBC 10000003 */  beq     $zero, $zero, .L80863FCC   
/* 04970 80863FC0 AFB8007C */  sw      $t8, 0x007C($sp)           
glabel L80863FC4
/* 04974 80863FC4 24190008 */  addiu   $t9, $zero, 0x0008         ## $t9 = 00000008
/* 04978 80863FC8 AFB9007C */  sw      $t9, 0x007C($sp)           
glabel L80863FCC
.L80863FCC:
/* 0497C 80863FCC 8FA8007C */  lw      $t0, 0x007C($sp)           
/* 04980 80863FD0 3C048086 */  lui     $a0, %hi(D_80864670)       ## $a0 = 80860000
/* 04984 80863FD4 24844670 */  addiu   $a0, $a0, %lo(D_80864670)  ## $a0 = 80864670
/* 04988 80863FD8 05020017 */  bltzl   $t0, .L80864038            
/* 0498C 80863FDC 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 04990 80863FE0 0C0346BD */  jal     Matrix_MultVec3f              
/* 04994 80863FE4 27A50050 */  addiu   $a1, $sp, 0x0050           ## $a1 = FFFFFFD0
/* 04998 80863FE8 C7AA0050 */  lwc1    $f10, 0x0050($sp)          
/* 0499C 80863FEC 8FA9007C */  lw      $t1, 0x007C($sp)           
/* 049A0 80863FF0 4600540D */  trunc.w.s $f16, $f10                 
/* 049A4 80863FF4 00095080 */  sll     $t2, $t1,  2               
/* 049A8 80863FF8 01495023 */  subu    $t2, $t2, $t1              
/* 049AC 80863FFC 000A5040 */  sll     $t2, $t2,  1               
/* 049B0 80864000 440C8000 */  mfc1    $t4, $f16                  
/* 049B4 80864004 020A1021 */  addu    $v0, $s0, $t2              
/* 049B8 80864008 A44C014C */  sh      $t4, 0x014C($v0)           ## 0000014C
/* 049BC 8086400C C7B20054 */  lwc1    $f18, 0x0054($sp)          
/* 049C0 80864010 4600910D */  trunc.w.s $f4, $f18                  
/* 049C4 80864014 440E2000 */  mfc1    $t6, $f4                   
/* 049C8 80864018 00000000 */  nop
/* 049CC 8086401C A44E014E */  sh      $t6, 0x014E($v0)           ## 0000014E
/* 049D0 80864020 C7A60058 */  lwc1    $f6, 0x0058($sp)           
/* 049D4 80864024 4600320D */  trunc.w.s $f8, $f6                   
/* 049D8 80864028 44184000 */  mfc1    $t8, $f8                   
/* 049DC 8086402C 00000000 */  nop
/* 049E0 80864030 A4580150 */  sh      $t8, 0x0150($v0)           ## 00000150
.L80864034:
/* 049E4 80864034 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80864038:
/* 049E8 80864038 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 049EC 8086403C 27BD0080 */  addiu   $sp, $sp, 0x0080           ## $sp = 00000000
/* 049F0 80864040 03E00008 */  jr      $ra                        
/* 049F4 80864044 00000000 */  nop
