glabel func_8088B79C
/* 0071C 8088B79C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00720 8088B7A0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00724 8088B7A4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00728 8088B7A8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 0072C 8088B7AC 848E016A */  lh      $t6, 0x016A($a0)           ## 0000016A
/* 00730 8088B7B0 94980088 */  lhu     $t8, 0x0088($a0)           ## 00000088
/* 00734 8088B7B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00738 8088B7B8 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 0073C 8088B7BC 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00740 8088B7C0 13200021 */  beq     $t9, $zero, .L8088B848     
/* 00744 8088B7C4 A48F016A */  sh      $t7, 0x016A($a0)           ## 0000016A
/* 00748 8088B7C8 90880168 */  lbu     $t0, 0x0168($a0)           ## 00000168
/* 0074C 8088B7CC 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00750 8088B7D0 3C0B8089 */  lui     $t3, %hi(func_8088B90C)    ## $t3 = 80890000
/* 00754 8088B7D4 15000007 */  bne     $t0, $zero, .L8088B7F4     
/* 00758 8088B7D8 24052835 */  addiu   $a1, $zero, 0x2835         ## $a1 = 00002835
/* 0075C 8088B7DC 3C0A8089 */  lui     $t2, %hi(func_8088B5F4)    ## $t2 = 80890000
/* 00760 8088B7E0 2409003C */  addiu   $t1, $zero, 0x003C         ## $t1 = 0000003C
/* 00764 8088B7E4 254AB5F4 */  addiu   $t2, $t2, %lo(func_8088B5F4) ## $t2 = 8088B5F4
/* 00768 8088B7E8 A489016A */  sh      $t1, 0x016A($a0)           ## 0000016A
/* 0076C 8088B7EC 1000000B */  beq     $zero, $zero, .L8088B81C   
/* 00770 8088B7F0 AC8A0164 */  sw      $t2, 0x0164($a0)           ## 00000164
.L8088B7F4:
/* 00774 8088B7F4 C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00778 8088B7F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 0077C 8088B7FC 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 00780 8088B800 2401FFCF */  addiu   $at, $zero, 0xFFCF         ## $at = FFFFFFCF
/* 00784 8088B804 46062201 */  sub.s   $f8, $f4, $f6              
/* 00788 8088B808 256BB90C */  addiu   $t3, $t3, %lo(func_8088B90C) ## $t3 = 8088B90C
/* 0078C 8088B80C 01816824 */  and     $t5, $t4, $at              
/* 00790 8088B810 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
/* 00794 8088B814 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
/* 00798 8088B818 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
.L8088B81C:
/* 0079C 8088B81C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007A0 8088B820 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 007A4 8088B824 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 007A8 8088B828 8E050078 */  lw      $a1, 0x0078($s0)           ## 00000078
/* 007AC 8088B82C 9206007D */  lbu     $a2, 0x007D($s0)           ## 0000007D
/* 007B0 8088B830 0C0107CD */  jal     SurfaceType_GetSfx              
/* 007B4 8088B834 248407C0 */  addiu   $a0, $a0, 0x07C0           ## $a0 = 000007C0
/* 007B8 8088B838 24450800 */  addiu   $a1, $v0, 0x0800           ## $a1 = 00000800
/* 007BC 8088B83C 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 00000800
/* 007C0 8088B840 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 007C4 8088B844 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8088B848:
/* 007C8 8088B848 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 007CC 8088B84C 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 007D0 8088B850 C60A016C */  lwc1    $f10, 0x016C($s0)          ## 0000016C
/* 007D4 8088B854 44801000 */  mtc1    $zero, $f2                 ## $f2 = 0.00
/* 007D8 8088B858 46105481 */  sub.s   $f18, $f10, $f16           
/* 007DC 8088B85C E612016C */  swc1    $f18, 0x016C($s0)          ## 0000016C
/* 007E0 8088B860 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
/* 007E4 8088B864 4602003C */  c.lt.s  $f0, $f2                   
/* 007E8 8088B868 00000000 */  nop
/* 007EC 8088B86C 45020004 */  bc1fl   .L8088B880                 
/* 007F0 8088B870 E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
/* 007F4 8088B874 10000002 */  beq     $zero, $zero, .L8088B880   
/* 007F8 8088B878 E602016C */  swc1    $f2, 0x016C($s0)           ## 0000016C
/* 007FC 8088B87C E600016C */  swc1    $f0, 0x016C($s0)           ## 0000016C
.L8088B880:
/* 00800 8088B880 920E0168 */  lbu     $t6, 0x0168($s0)           ## 00000168
/* 00804 8088B884 55C0001D */  bnel    $t6, $zero, .L8088B8FC     
/* 00808 8088B888 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0080C 8088B88C 0C010D5B */  jal     func_8004356C              
/* 00810 8088B890 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00814 8088B894 1040000C */  beq     $v0, $zero, .L8088B8C8     
/* 00818 8088B898 00000000 */  nop
/* 0081C 8088B89C 920F0169 */  lbu     $t7, 0x0169($s0)           ## 00000169
/* 00820 8088B8A0 24180003 */  addiu   $t8, $zero, 0x0003         ## $t8 = 00000003
/* 00824 8088B8A4 55E00003 */  bnel    $t7, $zero, .L8088B8B4     
/* 00828 8088B8A8 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 0082C 8088B8AC A2180169 */  sb      $t8, 0x0169($s0)           ## 00000169
/* 00830 8088B8B0 8FB90024 */  lw      $t9, 0x0024($sp)           
.L8088B8B4:
/* 00834 8088B8B4 24050030 */  addiu   $a1, $zero, 0x0030         ## $a1 = 00000030
/* 00838 8088B8B8 0C0169DF */  jal     func_8005A77C              
/* 0083C 8088B8BC 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 00840 8088B8C0 1000000E */  beq     $zero, $zero, .L8088B8FC   
/* 00844 8088B8C4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088B8C8:
/* 00848 8088B8C8 0C010D5B */  jal     func_8004356C              
/* 0084C 8088B8CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00850 8088B8D0 5440000A */  bnel    $v0, $zero, .L8088B8FC     
/* 00854 8088B8D4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00858 8088B8D8 92080169 */  lbu     $t0, 0x0169($s0)           ## 00000169
/* 0085C 8088B8DC 8FA90024 */  lw      $t1, 0x0024($sp)           
/* 00860 8088B8E0 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 00864 8088B8E4 51000004 */  beql    $t0, $zero, .L8088B8F8     
/* 00868 8088B8E8 A2000169 */  sb      $zero, 0x0169($s0)         ## 00000169
/* 0086C 8088B8EC 0C0169DF */  jal     func_8005A77C              
/* 00870 8088B8F0 8D240790 */  lw      $a0, 0x0790($t1)           ## 00000790
/* 00874 8088B8F4 A2000169 */  sb      $zero, 0x0169($s0)         ## 00000169
.L8088B8F8:
/* 00878 8088B8F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8088B8FC:
/* 0087C 8088B8FC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00880 8088B900 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00884 8088B904 03E00008 */  jr      $ra                        
/* 00888 8088B908 00000000 */  nop
