glabel func_80930D70
/* 047A0 80930D70 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 047A4 80930D74 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 047A8 80930D78 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 047AC 80930D7C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 047B0 80930D80 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 047B4 80930D84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 047B8 80930D88 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 047BC 80930D8C 0C02927F */  jal     Animation_Update
              
/* 047C0 80930D90 AFAF002C */  sw      $t7, 0x002C($sp)           
/* 047C4 80930D94 8618019A */  lh      $t8, 0x019A($s0)           ## 0000019A
/* 047C8 80930D98 8604019C */  lh      $a0, 0x019C($s0)           ## 0000019C
/* 047CC 80930D9C 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 047D0 80930DA0 27190060 */  addiu   $t9, $t8, 0x0060           ## $t9 = 00000060
/* 047D4 80930DA4 A619019A */  sh      $t9, 0x019A($s0)           ## 0000019A
/* 047D8 80930DA8 8603019A */  lh      $v1, 0x019A($s0)           ## 0000019A
/* 047DC 80930DAC 24080010 */  addiu   $t0, $zero, 0x0010         ## $t0 = 00000010
/* 047E0 80930DB0 0083082A */  slt     $at, $a0, $v1              
/* 047E4 80930DB4 50200004 */  beql    $at, $zero, .L80930DC8     
/* 047E8 80930DB8 A603019A */  sh      $v1, 0x019A($s0)           ## 0000019A
/* 047EC 80930DBC 10000002 */  beq     $zero, $zero, .L80930DC8   
/* 047F0 80930DC0 A604019A */  sh      $a0, 0x019A($s0)           ## 0000019A
/* 047F4 80930DC4 A603019A */  sh      $v1, 0x019A($s0)           ## 0000019A
.L80930DC8:
/* 047F8 80930DC8 860501A4 */  lh      $a1, 0x01A4($s0)           ## 000001A4
/* 047FC 80930DCC 8607019A */  lh      $a3, 0x019A($s0)           ## 0000019A
/* 04800 80930DD0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 04804 80930DD4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 04808 80930DD8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 0480C 80930DDC 54400009 */  bnel    $v0, $zero, .L80930E04     
/* 04810 80930DE0 920203E4 */  lbu     $v0, 0x03E4($s0)           ## 000003E4
/* 04814 80930DE4 920903E6 */  lbu     $t1, 0x03E6($s0)           ## 000003E6
/* 04818 80930DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0481C 80930DEC 312AFFFB */  andi    $t2, $t1, 0xFFFB           ## $t2 = 00000000
/* 04820 80930DF0 0C24C11D */  jal     func_80930474              
/* 04824 80930DF4 A20A03E6 */  sb      $t2, 0x03E6($s0)           ## 000003E6
/* 04828 80930DF8 1000002B */  beq     $zero, $zero, .L80930EA8   
/* 0482C 80930DFC 820F0195 */  lb      $t7, 0x0195($s0)           ## 00000195
/* 04830 80930E00 920203E4 */  lbu     $v0, 0x03E4($s0)           ## 000003E4
.L80930E04:
/* 04834 80930E04 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 04838 80930E08 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0483C 80930E0C 304B0002 */  andi    $t3, $v0, 0x0002           ## $t3 = 00000000
/* 04840 80930E10 11600024 */  beq     $t3, $zero, .L80930EA4     
/* 04844 80930E14 304CFFFC */  andi    $t4, $v0, 0xFFFC           ## $t4 = 00000000
/* 04848 80930E18 820F0194 */  lb      $t7, 0x0194($s0)           ## 00000194
/* 0484C 80930E1C 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 04850 80930E20 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 04854 80930E24 000FC0C0 */  sll     $t8, $t7,  3               
/* 04858 80930E28 030FC023 */  subu    $t8, $t8, $t7              
/* 0485C 80930E2C 0018C2C0 */  sll     $t8, $t8, 11               
/* 04860 80930E30 01D83823 */  subu    $a3, $t6, $t8              
/* 04864 80930E34 A20C03E4 */  sb      $t4, 0x03E4($s0)           ## 000003E4
/* 04868 80930E38 A20D0195 */  sb      $t5, 0x0195($s0)           ## 00000195
/* 0486C 80930E3C 00073C00 */  sll     $a3, $a3, 16               
/* 04870 80930E40 00073C03 */  sra     $a3, $a3, 16               
/* 04874 80930E44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 04878 80930E48 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 0487C 80930E4C 0C00BDC7 */  jal     func_8002F71C              
/* 04880 80930E50 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 04884 80930E54 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 04888 80930E58 0C00BDF7 */  jal     func_8002F7DC              
/* 0488C 80930E5C 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 04890 80930E60 82020194 */  lb      $v0, 0x0194($s0)           ## 00000194
/* 04894 80930E64 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 04898 80930E68 860901A4 */  lh      $t1, 0x01A4($s0)           ## 000001A4
/* 0489C 80930E6C 00024080 */  sll     $t0, $v0,  2               
/* 048A0 80930E70 01024021 */  addu    $t0, $t0, $v0              
/* 048A4 80930E74 00084280 */  sll     $t0, $t0, 10               
/* 048A8 80930E78 03281823 */  subu    $v1, $t9, $t0              
/* 048AC 80930E7C 00031C00 */  sll     $v1, $v1, 16               
/* 048B0 80930E80 00031C03 */  sra     $v1, $v1, 16               
/* 048B4 80930E84 00695023 */  subu    $t2, $v1, $t1              
/* 048B8 80930E88 000A5C00 */  sll     $t3, $t2, 16               
/* 048BC 80930E8C 000B6403 */  sra     $t4, $t3, 16               
/* 048C0 80930E90 01820019 */  multu   $t4, $v0                   
/* 048C4 80930E94 00006812 */  mflo    $t5                        
/* 048C8 80930E98 59A00003 */  blezl   $t5, .L80930EA8            
/* 048CC 80930E9C 820F0195 */  lb      $t7, 0x0195($s0)           ## 00000195
/* 048D0 80930EA0 A60301A4 */  sh      $v1, 0x01A4($s0)           ## 000001A4
.L80930EA4:
/* 048D4 80930EA4 820F0195 */  lb      $t7, 0x0195($s0)           ## 00000195
.L80930EA8:
/* 048D8 80930EA8 920203E4 */  lbu     $v0, 0x03E4($s0)           ## 000003E4
/* 048DC 80930EAC 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 048E0 80930EB0 55E00018 */  bnel    $t7, $zero, .L80930F14     
/* 048E4 80930EB4 920A03E6 */  lbu     $t2, 0x03E6($s0)           ## 000003E6
/* 048E8 80930EB8 846E04DA */  lh      $t6, 0x04DA($v1)           ## 000004DA
/* 048EC 80930EBC 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 048F0 80930EC0 44813000 */  mtc1    $at, $f6                   ## $f6 = 40.00
/* 048F4 80930EC4 448E4000 */  mtc1    $t6, $f8                   ## $f8 = 0.00
/* 048F8 80930EC8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 048FC 80930ECC 468042A0 */  cvt.s.w $f10, $f8                  
/* 04900 80930ED0 460A303C */  c.lt.s  $f6, $f10                  
/* 04904 80930ED4 00000000 */  nop
/* 04908 80930ED8 45030008 */  bc1tl   .L80930EFC                 
/* 0490C 80930EDC 921903E6 */  lbu     $t9, 0x03E6($s0)           ## 000003E6
/* 04910 80930EE0 44818000 */  mtc1    $at, $f16                  ## $f16 = 1.00
/* 04914 80930EE4 C4720028 */  lwc1    $f18, 0x0028($v1)          ## 00000028
/* 04918 80930EE8 4612803C */  c.lt.s  $f16, $f18                 
/* 0491C 80930EEC 00000000 */  nop
/* 04920 80930EF0 45020008 */  bc1fl   .L80930F14                 
/* 04924 80930EF4 920A03E6 */  lbu     $t2, 0x03E6($s0)           ## 000003E6
/* 04928 80930EF8 921903E6 */  lbu     $t9, 0x03E6($s0)           ## 000003E6
.L80930EFC:
/* 0492C 80930EFC 34580001 */  ori     $t8, $v0, 0x0001           ## $t8 = 00000001
/* 04930 80930F00 A21803E4 */  sb      $t8, 0x03E4($s0)           ## 000003E4
/* 04934 80930F04 3328FFFB */  andi    $t0, $t9, 0xFFFB           ## $t0 = 00000000
/* 04938 80930F08 10000006 */  beq     $zero, $zero, .L80930F24   
/* 0493C 80930F0C A20803E6 */  sb      $t0, 0x03E6($s0)           ## 000003E6
/* 04940 80930F10 920A03E6 */  lbu     $t2, 0x03E6($s0)           ## 000003E6
.L80930F14:
/* 04944 80930F14 3049FFFE */  andi    $t1, $v0, 0xFFFE           ## $t1 = 00000000
/* 04948 80930F18 A20903E4 */  sb      $t1, 0x03E4($s0)           ## 000003E4
/* 0494C 80930F1C 354B0004 */  ori     $t3, $t2, 0x0004           ## $t3 = 00000004
/* 04950 80930F20 A20B03E6 */  sb      $t3, 0x03E6($s0)           ## 000003E6
.L80930F24:
/* 04954 80930F24 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 04958 80930F28 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 0495C 80930F2C C60403C4 */  lwc1    $f4, 0x03C4($s0)           ## 000003C4
/* 04960 80930F30 3C0C8094 */  lui     $t4, %hi(D_80938C90)       ## $t4 = 80940000
/* 04964 80930F34 8D8C8C90 */  lw      $t4, %lo(D_80938C90)($t4)  
/* 04968 80930F38 46040202 */  mul.s   $f8, $f0, $f4              
/* 0496C 80930F3C 860400B6 */  lh      $a0, 0x00B6($s0)           ## 000000B6
/* 04970 80930F40 C5860024 */  lwc1    $f6, 0x0024($t4)           ## 80940024
/* 04974 80930F44 46064280 */  add.s   $f10, $f8, $f6             
/* 04978 80930F48 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0497C 80930F4C E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 04980 80930F50 C61003C4 */  lwc1    $f16, 0x03C4($s0)          ## 000003C4
/* 04984 80930F54 3C0D8094 */  lui     $t5, %hi(D_80938C90)       ## $t5 = 80940000
/* 04988 80930F58 8DAD8C90 */  lw      $t5, %lo(D_80938C90)($t5)  
/* 0498C 80930F5C 46100482 */  mul.s   $f18, $f0, $f16            
/* 04990 80930F60 C5A4002C */  lwc1    $f4, 0x002C($t5)           ## 8094002C
/* 04994 80930F64 46049200 */  add.s   $f8, $f18, $f4             
/* 04998 80930F68 E608002C */  swc1    $f8, 0x002C($s0)           ## 0000002C
/* 0499C 80930F6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 049A0 80930F70 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 049A4 80930F74 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 049A8 80930F78 03E00008 */  jr      $ra                        
/* 049AC 80930F7C 00000000 */  nop
