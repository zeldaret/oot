glabel func_80AB6F04
/* 01784 80AB6F04 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01788 80AB6F08 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0178C 80AB6F0C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01790 80AB6F10 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01794 80AB6F14 848E02A8 */  lh      $t6, 0x02A8($a0)           ## 000002A8
/* 01798 80AB6F18 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0179C 80AB6F1C 51C00004 */  beql    $t6, $zero, .L80AB6F30     
/* 017A0 80AB6F20 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 017A4 80AB6F24 0C2AD7E8 */  jal     func_80AB5FA0              
/* 017A8 80AB6F28 00000000 */  nop
/* 017AC 80AB6F2C 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
.L80AB6F30:
/* 017B0 80AB6F30 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 017B4 80AB6F34 44810000 */  mtc1    $at, $f0                   ## $f0 = 2.00
/* 017B8 80AB6F38 304F0020 */  andi    $t7, $v0, 0x0020           ## $t7 = 00000000
/* 017BC 80AB6F3C 11E0002A */  beq     $t7, $zero, .L80AB6FE8     
/* 017C0 80AB6F40 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 017C4 80AB6F44 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 017C8 80AB6F48 44813000 */  mtc1    $at, $f6                   ## $f6 = 15.00
/* 017CC 80AB6F4C C6080084 */  lwc1    $f8, 0x0084($s0)           ## 00000084
/* 017D0 80AB6F50 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 017D4 80AB6F54 2419001E */  addiu   $t9, $zero, 0x001E         ## $t9 = 0000001E
/* 017D8 80AB6F58 4608303C */  c.lt.s  $f6, $f8                   
/* 017DC 80AB6F5C 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFF4
/* 017E0 80AB6F60 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 017E4 80AB6F64 E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
/* 017E8 80AB6F68 45020005 */  bc1fl   .L80AB6F80                 
/* 017EC 80AB6F6C 8618025A */  lh      $t8, 0x025A($s0)           ## 0000025A
/* 017F0 80AB6F70 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 017F4 80AB6F74 46005400 */  add.s   $f16, $f10, $f0            
/* 017F8 80AB6F78 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 017FC 80AB6F7C 8618025A */  lh      $t8, 0x025A($s0)           ## 0000025A
.L80AB6F80:
/* 01800 80AB6F80 5700000F */  bnel    $t8, $zero, .L80AB6FC0     
/* 01804 80AB6F84 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
/* 01808 80AB6F88 0C01DF90 */  jal     Math_Vec3f_Copy
              ## Vec3f_Copy
/* 0180C 80AB6F8C A619025A */  sh      $t9, 0x025A($s0)           ## 0000025A
/* 01810 80AB6F90 C7B20030 */  lwc1    $f18, 0x0030($sp)          
/* 01814 80AB6F94 C6040084 */  lwc1    $f4, 0x0084($s0)           ## 00000084
/* 01818 80AB6F98 2408001E */  addiu   $t0, $zero, 0x001E         ## $t0 = 0000001E
/* 0181C 80AB6F9C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01820 80AB6FA0 46049180 */  add.s   $f6, $f18, $f4             
/* 01824 80AB6FA4 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01828 80AB6FA8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 0182C 80AB6FAC 24060064 */  addiu   $a2, $zero, 0x0064         ## $a2 = 00000064
/* 01830 80AB6FB0 E7A60030 */  swc1    $f6, 0x0030($sp)           
/* 01834 80AB6FB4 0C00A511 */  jal     EffectSsGRipple_Spawn              
/* 01838 80AB6FB8 240701F4 */  addiu   $a3, $zero, 0x01F4         ## $a3 = 000001F4
/* 0183C 80AB6FBC 96090088 */  lhu     $t1, 0x0088($s0)           ## 00000088
.L80AB6FC0:
/* 01840 80AB6FC0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01844 80AB6FC4 312A0008 */  andi    $t2, $t1, 0x0008           ## $t2 = 00000000
/* 01848 80AB6FC8 5140002D */  beql    $t2, $zero, .L80AB7080     
/* 0184C 80AB6FCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01850 80AB6FD0 44814000 */  mtc1    $at, $f8                   ## $f8 = 10.00
/* 01854 80AB6FD4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01858 80AB6FD8 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0185C 80AB6FDC E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 01860 80AB6FE0 10000026 */  beq     $zero, $zero, .L80AB707C   
/* 01864 80AB6FE4 E60A0068 */  swc1    $f10, 0x0068($s0)          ## 00000068
.L80AB6FE8:
/* 01868 80AB6FE8 3C01C000 */  lui     $at, 0xC000                ## $at = C0000000
/* 0186C 80AB6FEC 44810000 */  mtc1    $at, $f0                   ## $f0 = -2.00
/* 01870 80AB6FF0 304B0008 */  andi    $t3, $v0, 0x0008           ## $t3 = 00000000
/* 01874 80AB6FF4 1160000A */  beq     $t3, $zero, .L80AB7020     
/* 01878 80AB6FF8 E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 0187C 80AB6FFC 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01880 80AB7000 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 01884 80AB7004 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01888 80AB7008 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 0188C 80AB700C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01890 80AB7010 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 01894 80AB7014 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 01898 80AB7018 10000005 */  beq     $zero, $zero, .L80AB7030   
/* 0189C 80AB701C E604006C */  swc1    $f4, 0x006C($s0)           ## 0000006C
.L80AB7020:
/* 018A0 80AB7020 3C014080 */  lui     $at, 0x4080                ## $at = 40800000
/* 018A4 80AB7024 44813000 */  mtc1    $at, $f6                   ## $f6 = 4.00
/* 018A8 80AB7028 00000000 */  nop
/* 018AC 80AB702C E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80AB7030:
/* 018B0 80AB7030 960C0088 */  lhu     $t4, 0x0088($s0)           ## 00000088
/* 018B4 80AB7034 240E0064 */  addiu   $t6, $zero, 0x0064         ## $t6 = 00000064
/* 018B8 80AB7038 318D0001 */  andi    $t5, $t4, 0x0001           ## $t5 = 00000000
/* 018BC 80AB703C 51A00010 */  beql    $t5, $zero, .L80AB7080     
/* 018C0 80AB7040 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 018C4 80AB7044 860F02A8 */  lh      $t7, 0x02A8($s0)           ## 000002A8
/* 018C8 80AB7048 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 018CC 80AB704C E600006C */  swc1    $f0, 0x006C($s0)           ## 0000006C
/* 018D0 80AB7050 A60E025E */  sh      $t6, 0x025E($s0)           ## 0000025E
/* 018D4 80AB7054 A600025A */  sh      $zero, 0x025A($s0)         ## 0000025A
/* 018D8 80AB7058 15E00005 */  bne     $t7, $zero, .L80AB7070     
/* 018DC 80AB705C E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 018E0 80AB7060 3C1880AB */  lui     $t8, %hi(func_80AB7290)    ## $t8 = 80AB0000
/* 018E4 80AB7064 27187290 */  addiu   $t8, $t8, %lo(func_80AB7290) ## $t8 = 80AB7290
/* 018E8 80AB7068 10000004 */  beq     $zero, $zero, .L80AB707C   
/* 018EC 80AB706C AE180250 */  sw      $t8, 0x0250($s0)           ## 00000250
.L80AB7070:
/* 018F0 80AB7070 3C1980AB */  lui     $t9, %hi(func_80AB7204)    ## $t9 = 80AB0000
/* 018F4 80AB7074 27397204 */  addiu   $t9, $t9, %lo(func_80AB7204) ## $t9 = 80AB7204
/* 018F8 80AB7078 AE190250 */  sw      $t9, 0x0250($s0)           ## 00000250
.L80AB707C:
/* 018FC 80AB707C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80AB7080:
/* 01900 80AB7080 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 01904 80AB7084 0C2AD6FE */  jal     func_80AB5BF8              
/* 01908 80AB7088 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 0190C 80AB708C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01910 80AB7090 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01914 80AB7094 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01918 80AB7098 03E00008 */  jr      $ra                        
/* 0191C 80AB709C 00000000 */  nop
