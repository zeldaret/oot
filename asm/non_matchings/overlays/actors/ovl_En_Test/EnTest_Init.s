glabel EnTest_Init
/* 00008 8085F658 27BDFE18 */  addiu   $sp, $sp, 0xFE18           ## $sp = FFFFFE18
/* 0000C 8085F65C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00010 8085F660 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00014 8085F664 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00018 8085F668 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 0001C 8085F66C 3C058086 */  lui     $a1, %hi(D_80864638)       ## $a1 = 80860000
/* 00020 8085F670 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00024 8085F674 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00028 8085F678 24A54638 */  addiu   $a1, $a1, %lo(D_80864638)  ## $a1 = 80864638
/* 0002C 8085F67C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00030 8085F680 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00034 8085F684 260E01CC */  addiu   $t6, $s0, 0x01CC           ## $t6 = 000001CC
/* 00038 8085F688 260F033A */  addiu   $t7, $s0, 0x033A           ## $t7 = 0000033A
/* 0003C 8085F68C 2418003D */  addiu   $t8, $zero, 0x003D         ## $t8 = 0000003D
/* 00040 8085F690 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00044 8085F694 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00048 8085F698 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0004C 8085F69C 24E7316C */  addiu   $a3, $a3, 0x316C           ## $a3 = 0600316C
/* 00050 8085F6A0 24C67C28 */  addiu   $a2, $a2, 0x7C28           ## $a2 = 06007C28
/* 00054 8085F6A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00058 8085F6A8 0C02915F */  jal     SkelAnime_Init
              
/* 0005C 8085F6AC 26050188 */  addiu   $a1, $s0, 0x0188           ## $a1 = 00000188
/* 00060 8085F6B0 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00064 8085F6B4 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00068 8085F6B8 261904EC */  addiu   $t9, $s0, 0x04EC           ## $t9 = 000004EC
/* 0006C 8085F6BC 2608065A */  addiu   $t0, $s0, 0x065A           ## $t0 = 0000065A
/* 00070 8085F6C0 2409003D */  addiu   $t1, $zero, 0x003D         ## $t1 = 0000003D
/* 00074 8085F6C4 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00078 8085F6C8 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 0007C 8085F6CC AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00080 8085F6D0 24E7316C */  addiu   $a3, $a3, 0x316C           ## $a3 = 0600316C
/* 00084 8085F6D4 24C67C28 */  addiu   $a2, $a2, 0x7C28           ## $a2 = 06007C28
/* 00088 8085F6D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0008C 8085F6DC 0C02915F */  jal     SkelAnime_Init
              
/* 00090 8085F6E0 260504A8 */  addiu   $a1, $s0, 0x04A8           ## $a1 = 000004A8
/* 00094 8085F6E4 3C068003 */  lui     $a2, 0x8003                ## $a2 = 80030000
/* 00098 8085F6E8 24C6B8C4 */  addiu   $a2, $a2, 0xB8C4           ## $a2 = 8002B8C4
/* 0009C 8085F6EC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 000A0 8085F6F0 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 000A4 8085F6F4 0C00AC78 */  jal     ActorShape_Init
              
/* 000A8 8085F6F8 3C0742B4 */  lui     $a3, 0x42B4                ## $a3 = 42B40000
/* 000AC 8085F6FC 8E0C0028 */  lw      $t4, 0x0028($s0)           ## 00000028
/* 000B0 8085F700 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 000B4 8085F704 8E0D0024 */  lw      $t5, 0x0024($s0)           ## 00000024
/* 000B8 8085F708 AE0C003C */  sw      $t4, 0x003C($s0)           ## 0000003C
/* 000BC 8085F70C C604003C */  lwc1    $f4, 0x003C($s0)           ## 0000003C
/* 000C0 8085F710 44813000 */  mtc1    $at, $f6                   ## $f6 = 45.00
/* 000C4 8085F714 AE0D0038 */  sw      $t5, 0x0038($s0)           ## 00000038
/* 000C8 8085F718 8E0D002C */  lw      $t5, 0x002C($s0)           ## 0000002C
/* 000CC 8085F71C 46062200 */  add.s   $f8, $f4, $f6              
/* 000D0 8085F720 3C0E8086 */  lui     $t6, %hi(D_80864618)       ## $t6 = 80860000
/* 000D4 8085F724 240A0028 */  addiu   $t2, $zero, 0x0028         ## $t2 = 00000028
/* 000D8 8085F728 240B0064 */  addiu   $t3, $zero, 0x0064         ## $t3 = 00000064
/* 000DC 8085F72C 25CE4618 */  addiu   $t6, $t6, %lo(D_80864618)  ## $t6 = 80864618
/* 000E0 8085F730 A60A00A8 */  sh      $t2, 0x00A8($s0)           ## 000000A8
/* 000E4 8085F734 A60B00AA */  sh      $t3, 0x00AA($s0)           ## 000000AA
/* 000E8 8085F738 E608003C */  swc1    $f8, 0x003C($s0)           ## 0000003C
/* 000EC 8085F73C AE0E0098 */  sw      $t6, 0x0098($s0)           ## 00000098
/* 000F0 8085F740 26050810 */  addiu   $a1, $s0, 0x0810           ## $a1 = 00000810
/* 000F4 8085F744 AE0D0040 */  sw      $t5, 0x0040($s0)           ## 00000040
/* 000F8 8085F748 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000FC 8085F74C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00100 8085F750 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00104 8085F754 3C078086 */  lui     $a3, %hi(D_80864570)       ## $a3 = 80860000
/* 00108 8085F758 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0010C 8085F75C 24E74570 */  addiu   $a3, $a3, %lo(D_80864570)  ## $a3 = 80864570
/* 00110 8085F760 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00114 8085F764 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00118 8085F768 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0011C 8085F76C 260508DC */  addiu   $a1, $s0, 0x08DC           ## $a1 = 000008DC
/* 00120 8085F770 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00124 8085F774 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00128 8085F778 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0012C 8085F77C 3C078086 */  lui     $a3, %hi(D_8086459C)       ## $a3 = 80860000
/* 00130 8085F780 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00134 8085F784 24E7459C */  addiu   $a3, $a3, %lo(D_8086459C)  ## $a3 = 8086459C
/* 00138 8085F788 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0013C 8085F78C 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00140 8085F790 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00144 8085F794 2605085C */  addiu   $a1, $s0, 0x085C           ## $a1 = 0000085C
/* 00148 8085F798 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 0014C 8085F79C 0C017406 */  jal     func_8005D018              
/* 00150 8085F7A0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00154 8085F7A4 3C078086 */  lui     $a3, %hi(D_808645C8)       ## $a3 = 80860000
/* 00158 8085F7A8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0015C 8085F7AC 24E745C8 */  addiu   $a3, $a3, %lo(D_808645C8)  ## $a3 = 808645C8
/* 00160 8085F7B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00164 8085F7B4 0C017441 */  jal     func_8005D104              
/* 00168 8085F7B8 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0016C 8085F7BC 240F00FE */  addiu   $t7, $zero, 0x00FE         ## $t7 = 000000FE
/* 00170 8085F7C0 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 00174 8085F7C4 A20F00AE */  sb      $t7, 0x00AE($s0)           ## 000000AE
/* 00178 8085F7C8 A21800AF */  sb      $t8, 0x00AF($s0)           ## 000000AF
/* 0017C 8085F7CC 240200FF */  addiu   $v0, $zero, 0x00FF         ## $v0 = 000000FF
/* 00180 8085F7D0 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 00184 8085F7D4 24080040 */  addiu   $t0, $zero, 0x0040         ## $t0 = 00000040
/* 00188 8085F7D8 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 0018C 8085F7DC 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 00190 8085F7E0 27AB0048 */  addiu   $t3, $sp, 0x0048           ## $t3 = FFFFFE60
/* 00194 8085F7E4 A3B901DA */  sb      $t9, 0x01DA($sp)           
/* 00198 8085F7E8 A3A201D9 */  sb      $v0, 0x01D9($sp)           
/* 0019C 8085F7EC A3A201D8 */  sb      $v0, 0x01D8($sp)           
/* 001A0 8085F7F0 A3A201D6 */  sb      $v0, 0x01D6($sp)           
/* 001A4 8085F7F4 A3A201D5 */  sb      $v0, 0x01D5($sp)           
/* 001A8 8085F7F8 A3A201D4 */  sb      $v0, 0x01D4($sp)           
/* 001AC 8085F7FC A3A201D2 */  sb      $v0, 0x01D2($sp)           
/* 001B0 8085F800 A3A201D1 */  sb      $v0, 0x01D1($sp)           
/* 001B4 8085F804 A3A201D0 */  sb      $v0, 0x01D0($sp)           
/* 001B8 8085F808 A3A201CF */  sb      $v0, 0x01CF($sp)           
/* 001BC 8085F80C A3A201CE */  sb      $v0, 0x01CE($sp)           
/* 001C0 8085F810 A3A201CD */  sb      $v0, 0x01CD($sp)           
/* 001C4 8085F814 A3A201CC */  sb      $v0, 0x01CC($sp)           
/* 001C8 8085F818 A3A001D7 */  sb      $zero, 0x01D7($sp)         
/* 001CC 8085F81C A3A001DB */  sb      $zero, 0x01DB($sp)         
/* 001D0 8085F820 A3A801D3 */  sb      $t0, 0x01D3($sp)           
/* 001D4 8085F824 AFA901DC */  sw      $t1, 0x01DC($sp)           
/* 001D8 8085F828 AFA001E0 */  sw      $zero, 0x01E0($sp)         
/* 001DC 8085F82C AFAA01E4 */  sw      $t2, 0x01E4($sp)           
/* 001E0 8085F830 AFAB0014 */  sw      $t3, 0x0014($sp)           
/* 001E4 8085F834 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 001E8 8085F838 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001EC 8085F83C 2605080C */  addiu   $a1, $s0, 0x080C           ## $a1 = 0000080C
/* 001F0 8085F840 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 001F4 8085F844 0C009B35 */  jal     Effect_Add
              ## Effect_Add
/* 001F8 8085F848 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 001FC 8085F84C 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00200 8085F850 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00204 8085F854 11810005 */  beq     $t4, $at, .L8085F86C       
/* 00208 8085F858 00000000 */  nop
/* 0020C 8085F85C 0C217F74 */  jal     func_8085FDD0              
/* 00210 8085F860 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00214 8085F864 10000004 */  beq     $zero, $zero, .L8085F878   
/* 00218 8085F868 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L8085F86C:
/* 0021C 8085F86C 0C217FCA */  jal     func_8085FF28              
/* 00220 8085F870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00224 8085F874 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L8085F878:
/* 00228 8085F878 55A00005 */  bnel    $t5, $zero, .L8085F890     
/* 0022C 8085F87C 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00230 8085F880 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 00234 8085F884 35CF0080 */  ori     $t7, $t6, 0x0080           ## $t7 = 00000080
/* 00238 8085F888 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 0023C 8085F88C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L8085F890:
/* 00240 8085F890 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00244 8085F894 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00248 8085F898 03E00008 */  jr      $ra                        
/* 0024C 8085F89C 27BD01E8 */  addiu   $sp, $sp, 0x01E8           ## $sp = 00000000
