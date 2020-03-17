glabel func_809FE890
/* 00C60 809FE890 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00C64 809FE894 3C0F80A0 */  lui     $t7, %hi(D_809FF400)       ## $t7 = 80A00000
/* 00C68 809FE898 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C6C 809FE89C AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00C70 809FE8A0 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00C74 809FE8A4 25EFF400 */  addiu   $t7, $t7, %lo(D_809FF400)  ## $t7 = 809FF400
/* 00C78 809FE8A8 8DF90000 */  lw      $t9, 0x0000($t7)           ## 809FF400
/* 00C7C 809FE8AC 27AE0030 */  addiu   $t6, $sp, 0x0030           ## $t6 = FFFFFFD8
/* 00C80 809FE8B0 8DF80004 */  lw      $t8, 0x0004($t7)           ## 809FF404
/* 00C84 809FE8B4 ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFD8
/* 00C88 809FE8B8 8DF90008 */  lw      $t9, 0x0008($t7)           ## 809FF408
/* 00C8C 809FE8BC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFDC
/* 00C90 809FE8C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00C94 809FE8C4 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFE0
/* 00C98 809FE8C8 90A81D6C */  lbu     $t0, 0x1D6C($a1)           ## 00001D6C
/* 00C9C 809FE8CC 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00CA0 809FE8D0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00CA4 809FE8D4 15000009 */  bne     $t0, $zero, .L809FE8FC     
/* 00CA8 809FE8D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00CAC 809FE8DC 0C00B7D5 */  jal     func_8002DF54              
/* 00CB0 809FE8E0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00CB4 809FE8E4 3C0580A0 */  lui     $a1, %hi(func_809FEB08)    ## $a1 = 80A00000
/* 00CB8 809FE8E8 24A5EB08 */  addiu   $a1, $a1, %lo(func_809FEB08) ## $a1 = 809FEB08
/* 00CBC 809FE8EC 0C27F70C */  jal     func_809FDC30              
/* 00CC0 809FE8F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00CC4 809FE8F4 10000080 */  beq     $zero, $zero, .L809FEAF8   
/* 00CC8 809FE8F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FE8FC:
/* 00CCC 809FE8FC 8CF11D94 */  lw      $s1, 0x1D94($a3)           ## 00001D94
/* 00CD0 809FE900 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFF0
/* 00CD4 809FE904 1220007B */  beq     $s1, $zero, .L809FEAF4     
/* 00CD8 809FE908 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CDC 809FE90C 0C27F7F0 */  jal     func_809FDFC0              
/* 00CE0 809FE910 AFA7005C */  sw      $a3, 0x005C($sp)           
/* 00CE4 809FE914 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CE8 809FE918 0C27F800 */  jal     func_809FE000              
/* 00CEC 809FE91C 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFE4
/* 00CF0 809FE920 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
/* 00CF4 809FE924 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00CF8 809FE928 5440000C */  bnel    $v0, $zero, .L809FE95C     
/* 00CFC 809FE92C 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
/* 00D00 809FE930 0C27F7F0 */  jal     func_809FDFC0              
/* 00D04 809FE934 27A50048 */  addiu   $a1, $sp, 0x0048           ## $a1 = FFFFFFF0
/* 00D08 809FE938 27A90048 */  addiu   $t1, $sp, 0x0048           ## $t1 = FFFFFFF0
/* 00D0C 809FE93C 8D2B0000 */  lw      $t3, 0x0000($t1)           ## FFFFFFF0
/* 00D10 809FE940 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
/* 00D14 809FE944 AE0B0024 */  sw      $t3, 0x0024($s0)           ## 00000024
/* 00D18 809FE948 8D2A0004 */  lw      $t2, 0x0004($t1)           ## FFFFFFF4
/* 00D1C 809FE94C AE0A0028 */  sw      $t2, 0x0028($s0)           ## 00000028
/* 00D20 809FE950 8D2B0008 */  lw      $t3, 0x0008($t1)           ## FFFFFFF8
/* 00D24 809FE954 AE0B002C */  sw      $t3, 0x002C($s0)           ## 0000002C
/* 00D28 809FE958 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
.L809FE95C:
/* 00D2C 809FE95C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00D30 809FE960 50620029 */  beql    $v1, $v0, .L809FEA08       
/* 00D34 809FE964 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00D38 809FE968 14610006 */  bne     $v1, $at, .L809FE984       
/* 00D3C 809FE96C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D40 809FE970 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 00D44 809FE974 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00D48 809FE978 0C00D3B0 */  jal     func_80034EC0              
/* 00D4C 809FE97C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00D50 809FE980 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
.L809FE984:
/* 00D54 809FE984 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00D58 809FE988 10610003 */  beq     $v1, $at, .L809FE998       
/* 00D5C 809FE98C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00D60 809FE990 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00D64 809FE994 14610006 */  bne     $v1, $at, .L809FE9B0       
.L809FE998:
/* 00D68 809FE998 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 00D6C 809FE99C A60001E6 */  sh      $zero, 0x01E6($s0)         ## 000001E6
/* 00D70 809FE9A0 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00D74 809FE9A4 0C00D3B0 */  jal     func_80034EC0              
/* 00D78 809FE9A8 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00D7C 809FE9AC 96230000 */  lhu     $v1, 0x0000($s1)           ## 00000000
.L809FE9B0:
/* 00D80 809FE9B0 A60301EA */  sh      $v1, 0x01EA($s0)           ## 000001EA
/* 00D84 809FE9B4 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
/* 00D88 809FE9B8 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 00D8C 809FE9BC 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
/* 00D90 809FE9C0 14410007 */  bne     $v0, $at, .L809FE9E0       
/* 00D94 809FE9C4 240C000B */  addiu   $t4, $zero, 0x000B         ## $t4 = 0000000B
/* 00D98 809FE9C8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00D9C 809FE9CC A60C01F2 */  sh      $t4, 0x01F2($s0)           ## 000001F2
/* 00DA0 809FE9D0 A20301EC */  sb      $v1, 0x01EC($s0)           ## 000001EC
/* 00DA4 809FE9D4 A20301ED */  sb      $v1, 0x01ED($s0)           ## 000001ED
/* 00DA8 809FE9D8 A20D01EE */  sb      $t5, 0x01EE($s0)           ## 000001EE
/* 00DAC 809FE9DC 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
.L809FE9E0:
/* 00DB0 809FE9E0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00DB4 809FE9E4 14410007 */  bne     $v0, $at, .L809FEA04       
/* 00DB8 809FE9E8 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
/* 00DBC 809FE9EC 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00DC0 809FE9F0 A60E01F2 */  sh      $t6, 0x01F2($s0)           ## 000001F2
/* 00DC4 809FE9F4 A20301EC */  sb      $v1, 0x01EC($s0)           ## 000001EC
/* 00DC8 809FE9F8 A20301ED */  sb      $v1, 0x01ED($s0)           ## 000001ED
/* 00DCC 809FE9FC A20001EE */  sb      $zero, 0x01EE($s0)         ## 000001EE
/* 00DD0 809FEA00 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
.L809FEA04:
/* 00DD4 809FEA04 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
.L809FEA08:
/* 00DD8 809FEA08 54410005 */  bnel    $v0, $at, .L809FEA20       
/* 00DDC 809FEA0C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00DE0 809FEA10 0C27F810 */  jal     func_809FE040              
/* 00DE4 809FEA14 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DE8 809FEA18 860201EA */  lh      $v0, 0x01EA($s0)           ## 000001EA
/* 00DEC 809FEA1C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L809FEA20:
/* 00DF0 809FEA20 54410004 */  bnel    $v0, $at, .L809FEA34       
/* 00DF4 809FEA24 962F0006 */  lhu     $t7, 0x0006($s1)           ## 00000006
/* 00DF8 809FEA28 0C27F841 */  jal     func_809FE104              
/* 00DFC 809FEA2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E00 809FEA30 962F0006 */  lhu     $t7, 0x0006($s1)           ## 00000006
.L809FEA34:
/* 00E04 809FEA34 27A80030 */  addiu   $t0, $sp, 0x0030           ## $t0 = FFFFFFD8
/* 00E08 809FEA38 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 00E0C 809FEA3C 96380008 */  lhu     $t8, 0x0008($s1)           ## 00000008
/* 00E10 809FEA40 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
/* 00E14 809FEA44 9639000A */  lhu     $t9, 0x000A($s1)           ## 0000000A
/* 00E18 809FEA48 A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
/* 00E1C 809FEA4C 8D0A0000 */  lw      $t2, 0x0000($t0)           ## FFFFFFD8
/* 00E20 809FEA50 AE0A005C */  sw      $t2, 0x005C($s0)           ## 0000005C
/* 00E24 809FEA54 8D090004 */  lw      $t1, 0x0004($t0)           ## FFFFFFDC
/* 00E28 809FEA58 AE090060 */  sw      $t1, 0x0060($s0)           ## 00000060
/* 00E2C 809FEA5C 8D0A0008 */  lw      $t2, 0x0008($t0)           ## FFFFFFE0
/* 00E30 809FEA60 AE0A0064 */  sw      $t2, 0x0064($s0)           ## 00000064
/* 00E34 809FEA64 8FAB005C */  lw      $t3, 0x005C($sp)           
/* 00E38 809FEA68 96220004 */  lhu     $v0, 0x0004($s1)           ## 00000004
/* 00E3C 809FEA6C 956C1D74 */  lhu     $t4, 0x1D74($t3)           ## 00001D74
/* 00E40 809FEA70 0182082A */  slt     $at, $t4, $v0              
/* 00E44 809FEA74 50200020 */  beql    $at, $zero, .L809FEAF8     
/* 00E48 809FEA78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00E4C 809FEA7C 962D0002 */  lhu     $t5, 0x0002($s1)           ## 00000002
/* 00E50 809FEA80 C7A6003C */  lwc1    $f6, 0x003C($sp)           
/* 00E54 809FEA84 C7A80048 */  lwc1    $f8, 0x0048($sp)           
/* 00E58 809FEA88 004D7023 */  subu    $t6, $v0, $t5              
/* 00E5C 809FEA8C 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00E60 809FEA90 46083281 */  sub.s   $f10, $f6, $f8             
/* 00E64 809FEA94 C6020070 */  lwc1    $f2, 0x0070($s0)           ## 00000070
/* 00E68 809FEA98 46802020 */  cvt.s.w $f0, $f4                   
/* 00E6C 809FEA9C 46005403 */  div.s   $f16, $f10, $f0            
/* 00E70 809FEAA0 E610005C */  swc1    $f16, 0x005C($s0)          ## 0000005C
/* 00E74 809FEAA4 C7A4004C */  lwc1    $f4, 0x004C($sp)           
/* 00E78 809FEAA8 C7B20040 */  lwc1    $f18, 0x0040($sp)          
/* 00E7C 809FEAAC C610006C */  lwc1    $f16, 0x006C($s0)          ## 0000006C
/* 00E80 809FEAB0 46049181 */  sub.s   $f6, $f18, $f4             
/* 00E84 809FEAB4 46003203 */  div.s   $f8, $f6, $f0              
/* 00E88 809FEAB8 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 00E8C 809FEABC C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 00E90 809FEAC0 46105480 */  add.s   $f18, $f10, $f16           
/* 00E94 809FEAC4 E6120060 */  swc1    $f18, 0x0060($s0)          ## 00000060
/* 00E98 809FEAC8 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 00E9C 809FEACC 4602203C */  c.lt.s  $f4, $f2                   
/* 00EA0 809FEAD0 00000000 */  nop
/* 00EA4 809FEAD4 45020003 */  bc1fl   .L809FEAE4                 
/* 00EA8 809FEAD8 C7A60044 */  lwc1    $f6, 0x0044($sp)           
/* 00EAC 809FEADC E6020060 */  swc1    $f2, 0x0060($s0)           ## 00000060
/* 00EB0 809FEAE0 C7A60044 */  lwc1    $f6, 0x0044($sp)           
.L809FEAE4:
/* 00EB4 809FEAE4 C7A80050 */  lwc1    $f8, 0x0050($sp)           
/* 00EB8 809FEAE8 46083281 */  sub.s   $f10, $f6, $f8             
/* 00EBC 809FEAEC 46005403 */  div.s   $f16, $f10, $f0            
/* 00EC0 809FEAF0 E6100064 */  swc1    $f16, 0x0064($s0)          ## 00000064
.L809FEAF4:
/* 00EC4 809FEAF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FEAF8:
/* 00EC8 809FEAF8 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00ECC 809FEAFC 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00ED0 809FEB00 03E00008 */  jr      $ra                        
/* 00ED4 809FEB04 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000


