glabel func_809E6ED4
/* 01704 809E6ED4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01708 809E6ED8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0170C 809E6EDC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01710 809E6EE0 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 01714 809E6EE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01718 809E6EE8 2484017C */  addiu   $a0, $a0, 0x017C           ## $a0 = 0000017C
/* 0171C 809E6EEC AFA4002C */  sw      $a0, 0x002C($sp)           
/* 01720 809E6EF0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01724 809E6EF4 AFAE0034 */  sw      $t6, 0x0034($sp)           
/* 01728 809E6EF8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0172C 809E6EFC 0C0295B2 */  jal     func_800A56C8              
/* 01730 809E6F00 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 01734 809E6F04 14400005 */  bne     $v0, $zero, .L809E6F1C     
/* 01738 809E6F08 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0173C 809E6F0C 0C0295B2 */  jal     func_800A56C8              
/* 01740 809E6F10 3C054140 */  lui     $a1, 0x4140                ## $a1 = 41400000
/* 01744 809E6F14 5040000D */  beql    $v0, $zero, .L809E6F4C     
/* 01748 809E6F18 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
.L809E6F1C:
/* 0174C 809E6F1C 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 01750 809E6F20 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01754 809E6F24 2405385C */  addiu   $a1, $zero, 0x385C         ## $a1 = 0000385C
/* 01758 809E6F28 15E10005 */  bne     $t7, $at, .L809E6F40       
/* 0175C 809E6F2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01760 809E6F30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01764 809E6F34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01768 809E6F38 10000004 */  beq     $zero, $zero, .L809E6F4C   
/* 0176C 809E6F3C 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
.L809E6F40:
/* 01770 809E6F40 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01774 809E6F44 24053860 */  addiu   $a1, $zero, 0x3860         ## $a1 = 00003860
/* 01778 809E6F48 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
.L809E6F4C:
/* 0177C 809E6F4C 10400002 */  beq     $v0, $zero, .L809E6F58     
/* 01780 809E6F50 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 01784 809E6F54 A61801C6 */  sh      $t8, 0x01C6($s0)           ## 000001C6
.L809E6F58:
/* 01788 809E6F58 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0178C 809E6F5C 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01790 809E6F60 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 01794 809E6F64 24A50024 */  addiu   $a1, $a1, 0x0024           ## $a1 = 00000024
/* 01798 809E6F68 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 0179C 809E6F6C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 017A0 809E6F70 860701C6 */  lh      $a3, 0x01C6($s0)           ## 000001C6
/* 017A4 809E6F74 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 017A8 809E6F78 00022C00 */  sll     $a1, $v0, 16               
/* 017AC 809E6F7C 00E1001A */  div     $zero, $a3, $at            
/* 017B0 809E6F80 00003810 */  mfhi    $a3                        
/* 017B4 809E6F84 00E00821 */  addu    $at, $a3, $zero            
/* 017B8 809E6F88 00073900 */  sll     $a3, $a3,  4               
/* 017BC 809E6F8C 00E13821 */  addu    $a3, $a3, $at              
/* 017C0 809E6F90 00073900 */  sll     $a3, $a3,  4               
/* 017C4 809E6F94 00E13821 */  addu    $a3, $a3, $at              
/* 017C8 809E6F98 00073840 */  sll     $a3, $a3,  1               
/* 017CC 809E6F9C 00073C00 */  sll     $a3, $a3, 16               
/* 017D0 809E6FA0 00073C03 */  sra     $a3, $a3, 16               
/* 017D4 809E6FA4 00052C03 */  sra     $a1, $a1, 16               
/* 017D8 809E6FA8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 017DC 809E6FAC 0C01E1EF */  jal     Math_ApproachS
              
/* 017E0 809E6FB0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 017E4 809E6FB4 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
/* 017E8 809E6FB8 2841000A */  slti    $at, $v0, 0x000A           
/* 017EC 809E6FBC 5020000F */  beql    $at, $zero, .L809E6FFC     
/* 017F0 809E6FC0 28410014 */  slti    $at, $v0, 0x0014           
/* 017F4 809E6FC4 861901CA */  lh      $t9, 0x01CA($s0)           ## 000001CA
/* 017F8 809E6FC8 860901CC */  lh      $t1, 0x01CC($s0)           ## 000001CC
/* 017FC 809E6FCC 860B01CE */  lh      $t3, 0x01CE($s0)           ## 000001CE
/* 01800 809E6FD0 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 01804 809E6FD4 2728016C */  addiu   $t0, $t9, 0x016C           ## $t0 = 0000016C
/* 01808 809E6FD8 252A016C */  addiu   $t2, $t1, 0x016C           ## $t2 = 0000016C
/* 0180C 809E6FDC 256C00B6 */  addiu   $t4, $t3, 0x00B6           ## $t4 = 000000B6
/* 01810 809E6FE0 25AE0222 */  addiu   $t6, $t5, 0x0222           ## $t6 = 00000222
/* 01814 809E6FE4 A60801CA */  sh      $t0, 0x01CA($s0)           ## 000001CA
/* 01818 809E6FE8 A60A01CC */  sh      $t2, 0x01CC($s0)           ## 000001CC
/* 0181C 809E6FEC A60C01CE */  sh      $t4, 0x01CE($s0)           ## 000001CE
/* 01820 809E6FF0 10000021 */  beq     $zero, $zero, .L809E7078   
/* 01824 809E6FF4 A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 01828 809E6FF8 28410014 */  slti    $at, $v0, 0x0014           
.L809E6FFC:
/* 0182C 809E6FFC 5020000C */  beql    $at, $zero, .L809E7030     
/* 01830 809E7000 2841001E */  slti    $at, $v0, 0x001E           
/* 01834 809E7004 860F01CA */  lh      $t7, 0x01CA($s0)           ## 000001CA
/* 01838 809E7008 861901CC */  lh      $t9, 0x01CC($s0)           ## 000001CC
/* 0183C 809E700C 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 01840 809E7010 25F8FE94 */  addiu   $t8, $t7, 0xFE94           ## $t8 = FFFFFE94
/* 01844 809E7014 27280111 */  addiu   $t0, $t9, 0x0111           ## $t0 = 00000111
/* 01848 809E7018 252A016C */  addiu   $t2, $t1, 0x016C           ## $t2 = 0000016C
/* 0184C 809E701C A61801CA */  sh      $t8, 0x01CA($s0)           ## 000001CA
/* 01850 809E7020 A60801CC */  sh      $t0, 0x01CC($s0)           ## 000001CC
/* 01854 809E7024 10000014 */  beq     $zero, $zero, .L809E7078   
/* 01858 809E7028 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
/* 0185C 809E702C 2841001E */  slti    $at, $v0, 0x001E           
.L809E7030:
/* 01860 809E7030 50200009 */  beql    $at, $zero, .L809E7058     
/* 01864 809E7034 860F01CC */  lh      $t7, 0x01CC($s0)           ## 000001CC
/* 01868 809E7038 860B01CC */  lh      $t3, 0x01CC($s0)           ## 000001CC
/* 0186C 809E703C 860D00B4 */  lh      $t5, 0x00B4($s0)           ## 000000B4
/* 01870 809E7040 256CFEEF */  addiu   $t4, $t3, 0xFEEF           ## $t4 = FFFFFEEF
/* 01874 809E7044 25AEFF4A */  addiu   $t6, $t5, 0xFF4A           ## $t6 = FFFFFF4A
/* 01878 809E7048 A60C01CC */  sh      $t4, 0x01CC($s0)           ## 000001CC
/* 0187C 809E704C 1000000A */  beq     $zero, $zero, .L809E7078   
/* 01880 809E7050 A60E00B4 */  sh      $t6, 0x00B4($s0)           ## 000000B4
/* 01884 809E7054 860F01CC */  lh      $t7, 0x01CC($s0)           ## 000001CC
.L809E7058:
/* 01888 809E7058 861901CE */  lh      $t9, 0x01CE($s0)           ## 000001CE
/* 0188C 809E705C 860900B4 */  lh      $t1, 0x00B4($s0)           ## 000000B4
/* 01890 809E7060 25F8FF4A */  addiu   $t8, $t7, 0xFF4A           ## $t8 = FFFFFF4A
/* 01894 809E7064 272800B6 */  addiu   $t0, $t9, 0x00B6           ## $t0 = 000000B6
/* 01898 809E7068 252AFE94 */  addiu   $t2, $t1, 0xFE94           ## $t2 = FFFFFE94
/* 0189C 809E706C A61801CC */  sh      $t8, 0x01CC($s0)           ## 000001CC
/* 018A0 809E7070 A60801CE */  sh      $t0, 0x01CE($s0)           ## 000001CE
/* 018A4 809E7074 A60A00B4 */  sh      $t2, 0x00B4($s0)           ## 000000B4
.L809E7078:
/* 018A8 809E7078 0C279B73 */  jal     func_809E6DCC              
/* 018AC 809E707C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018B0 809E7080 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 018B4 809E7084 0C01E00A */  jal     Math_Vec3f_DistXZ
              
/* 018B8 809E7088 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 018BC 809E708C 3C014370 */  lui     $at, 0x4370                ## $at = 43700000
/* 018C0 809E7090 44812000 */  mtc1    $at, $f4                   ## $f4 = 240.00
/* 018C4 809E7094 C6020230 */  lwc1    $f2, 0x0230($s0)           ## 00000230
/* 018C8 809E7098 46022182 */  mul.s   $f6, $f4, $f2              
/* 018CC 809E709C 4600303C */  c.lt.s  $f6, $f0                   
/* 018D0 809E70A0 00000000 */  nop
/* 018D4 809E70A4 45020006 */  bc1fl   .L809E70C0                 
/* 018D8 809E70A8 860B01C6 */  lh      $t3, 0x01C6($s0)           ## 000001C6
/* 018DC 809E70AC 0C279796 */  jal     func_809E5E58              
/* 018E0 809E70B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018E4 809E70B4 1000000F */  beq     $zero, $zero, .L809E70F4   
/* 018E8 809E70B8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 018EC 809E70BC 860B01C6 */  lh      $t3, 0x01C6($s0)           ## 000001C6
.L809E70C0:
/* 018F0 809E70C0 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 018F4 809E70C4 11600008 */  beq     $t3, $zero, .L809E70E8     
/* 018F8 809E70C8 00000000 */  nop
/* 018FC 809E70CC 44815000 */  mtc1    $at, $f10                  ## $f10 = 80.00
/* 01900 809E70D0 C6080090 */  lwc1    $f8, 0x0090($s0)           ## 00000090
/* 01904 809E70D4 46025402 */  mul.s   $f16, $f10, $f2            
/* 01908 809E70D8 4610403C */  c.lt.s  $f8, $f16                  
/* 0190C 809E70DC 00000000 */  nop
/* 01910 809E70E0 45020004 */  bc1fl   .L809E70F4                 
/* 01914 809E70E4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E70E8:
/* 01918 809E70E8 0C2797E7 */  jal     func_809E5F9C              
/* 0191C 809E70EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01920 809E70F0 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809E70F4:
/* 01924 809E70F4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01928 809E70F8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0192C 809E70FC 03E00008 */  jr      $ra                        
/* 01930 809E7100 00000000 */  nop
