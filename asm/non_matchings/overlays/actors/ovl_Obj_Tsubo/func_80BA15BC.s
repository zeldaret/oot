glabel func_80BA15BC
/* 0085C 80BA15BC 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00860 80BA15C0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00864 80BA15C4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00868 80BA15C8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 0086C 80BA15CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00870 80BA15D0 0C00BD04 */  jal     Actor_HasParent              
/* 00874 80BA15D4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00878 80BA15D8 50400006 */  beql    $v0, $zero, .L80BA15F4     
/* 0087C 80BA15DC 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00880 80BA15E0 0C2E85F1 */  jal     func_80BA17C4              
/* 00884 80BA15E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00888 80BA15E8 10000072 */  beq     $zero, $zero, .L80BA17B4   
/* 0088C 80BA15EC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00890 80BA15F0 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
.L80BA15F4:
/* 00894 80BA15F4 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 00898 80BA15F8 31CF0020 */  andi    $t7, $t6, 0x0020           ## $t7 = 00000000
/* 0089C 80BA15FC 51E00017 */  beql    $t7, $zero, .L80BA165C     
/* 008A0 80BA1600 92180161 */  lbu     $t8, 0x0161($s0)           ## 00000161
/* 008A4 80BA1604 44812000 */  mtc1    $at, $f4                   ## $f4 = 15.00
/* 008A8 80BA1608 C6060084 */  lwc1    $f6, 0x0084($s0)           ## 00000084
/* 008AC 80BA160C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008B0 80BA1610 4606203C */  c.lt.s  $f4, $f6                   
/* 008B4 80BA1614 00000000 */  nop
/* 008B8 80BA1618 45020010 */  bc1fl   .L80BA165C                 
/* 008BC 80BA161C 92180161 */  lbu     $t8, 0x0161($s0)           ## 00000161
/* 008C0 80BA1620 0C2E84A5 */  jal     func_80BA1294              
/* 008C4 80BA1624 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008C8 80BA1628 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 008CC 80BA162C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 008D0 80BA1630 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 008D4 80BA1634 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 008D8 80BA1638 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 008DC 80BA163C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008E0 80BA1640 0C2E8358 */  jal     func_80BA0D60              
/* 008E4 80BA1644 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 008E8 80BA1648 0C00B55C */  jal     Actor_Kill
              
/* 008EC 80BA164C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 008F0 80BA1650 10000058 */  beq     $zero, $zero, .L80BA17B4   
/* 008F4 80BA1654 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 008F8 80BA1658 92180161 */  lbu     $t8, 0x0161($s0)           ## 00000161
.L80BA165C:
/* 008FC 80BA165C 33190002 */  andi    $t9, $t8, 0x0002           ## $t9 = 00000000
/* 00900 80BA1660 53200018 */  beql    $t9, $zero, .L80BA16C4     
/* 00904 80BA1664 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00908 80BA1668 8E08018C */  lw      $t0, 0x018C($s0)           ## 0000018C
/* 0090C 80BA166C 3C014FC1 */  lui     $at, 0x4FC1                ## $at = 4FC10000
/* 00910 80BA1670 3421FFFC */  ori     $at, $at, 0xFFFC           ## $at = 4FC1FFFC
/* 00914 80BA1674 8D090000 */  lw      $t1, 0x0000($t0)           ## 00000000
/* 00918 80BA1678 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0091C 80BA167C 01215024 */  and     $t2, $t1, $at              
/* 00920 80BA1680 51400010 */  beql    $t2, $zero, .L80BA16C4     
/* 00924 80BA1684 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00928 80BA1688 0C2E8403 */  jal     func_80BA100C              
/* 0092C 80BA168C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00930 80BA1690 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00934 80BA1694 0C2E8358 */  jal     func_80BA0D60              
/* 00938 80BA1698 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0093C 80BA169C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00940 80BA16A0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00944 80BA16A4 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00948 80BA16A8 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 0094C 80BA16AC 24072887 */  addiu   $a3, $zero, 0x2887         ## $a3 = 00002887
/* 00950 80BA16B0 0C00B55C */  jal     Actor_Kill
              
/* 00954 80BA16B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00958 80BA16B8 1000003E */  beq     $zero, $zero, .L80BA17B4   
/* 0095C 80BA16BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00960 80BA16C0 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
.L80BA16C4:
/* 00964 80BA16C4 44814000 */  mtc1    $at, $f8                   ## $f8 = 600.00
/* 00968 80BA16C8 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 0096C 80BA16CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00970 80BA16D0 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00974 80BA16D4 4608003C */  c.lt.s  $f0, $f8                   
/* 00978 80BA16D8 00000000 */  nop
/* 0097C 80BA16DC 4502001A */  bc1fl   .L80BA1748                 
/* 00980 80BA16E0 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00984 80BA16E4 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 00988 80BA16E8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0098C 80BA16EC 920B0161 */  lbu     $t3, 0x0161($s0)           ## 00000161
/* 00990 80BA16F0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00994 80BA16F4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00998 80BA16F8 316CFFFD */  andi    $t4, $t3, 0xFFFD           ## $t4 = 00000000
/* 0099C 80BA16FC A20C0161 */  sb      $t4, 0x0161($s0)           ## 00000161
/* 009A0 80BA1700 02212821 */  addu    $a1, $s1, $at              
/* 009A4 80BA1704 AFA50028 */  sw      $a1, 0x0028($sp)           
/* 009A8 80BA1708 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 009AC 80BA170C 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 009B0 80BA1710 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009B4 80BA1714 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 009B8 80BA1718 44815000 */  mtc1    $at, $f10                  ## $f10 = 150.00
/* 009BC 80BA171C C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 009C0 80BA1720 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 009C4 80BA1724 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009C8 80BA1728 460A003C */  c.lt.s  $f0, $f10                  
/* 009CC 80BA172C 00000000 */  nop
/* 009D0 80BA1730 45020005 */  bc1fl   .L80BA1748                 
/* 009D4 80BA1734 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 009D8 80BA1738 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 009DC 80BA173C 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 009E0 80BA1740 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 009E4 80BA1744 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
.L80BA1748:
/* 009E8 80BA1748 44818000 */  mtc1    $at, $f16                  ## $f16 = 100.00
/* 009EC 80BA174C 00000000 */  nop
/* 009F0 80BA1750 4610003C */  c.lt.s  $f0, $f16                  
/* 009F4 80BA1754 00000000 */  nop
/* 009F8 80BA1758 45020016 */  bc1fl   .L80BA17B4                 
/* 009FC 80BA175C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00A00 80BA1760 8E2E1C44 */  lw      $t6, 0x1C44($s1)           ## 00001C44
/* 00A04 80BA1764 860D008A */  lh      $t5, 0x008A($s0)           ## 0000008A
/* 00A08 80BA1768 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A0C 80BA176C 85CF0032 */  lh      $t7, 0x0032($t6)           ## 00000032
/* 00A10 80BA1770 01AF1023 */  subu    $v0, $t5, $t7              
/* 00A14 80BA1774 00021400 */  sll     $v0, $v0, 16               
/* 00A18 80BA1778 00021403 */  sra     $v0, $v0, 16               
/* 00A1C 80BA177C 04400003 */  bltz    $v0, .L80BA178C            
/* 00A20 80BA1780 00021823 */  subu    $v1, $zero, $v0            
/* 00A24 80BA1784 10000001 */  beq     $zero, $zero, .L80BA178C   
/* 00A28 80BA1788 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L80BA178C:
/* 00A2C 80BA178C 28615556 */  slti    $at, $v1, 0x5556           
/* 00A30 80BA1790 14200007 */  bne     $at, $zero, .L80BA17B0     
/* 00A34 80BA1794 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 00A38 80BA1798 44810000 */  mtc1    $at, $f0                   ## $f0 = 30.00
/* 00A3C 80BA179C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A40 80BA17A0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00A44 80BA17A4 44070000 */  mfc1    $a3, $f0                   
/* 00A48 80BA17A8 0C00BD0D */  jal     func_8002F434              
/* 00A4C 80BA17AC E7A00010 */  swc1    $f0, 0x0010($sp)           
.L80BA17B0:
/* 00A50 80BA17B0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80BA17B4:
/* 00A54 80BA17B4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00A58 80BA17B8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00A5C 80BA17BC 03E00008 */  jr      $ra                        
/* 00A60 80BA17C0 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
