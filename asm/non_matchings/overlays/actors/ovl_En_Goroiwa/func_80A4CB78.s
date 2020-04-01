glabel func_80A4CB78
/* 00ED8 80A4CB78 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 00EDC 80A4CB7C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00EE0 80A4CB80 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00EE4 80A4CB84 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00EE8 80A4CB88 848F001C */  lh      $t7, 0x001C($a0)           ## 0000001C
/* 00EEC 80A4CB8C 3C0E0001 */  lui     $t6, 0x0001                ## $t6 = 00010000
/* 00EF0 80A4CB90 01C57021 */  addu    $t6, $t6, $a1              
/* 00EF4 80A4CB94 8DCE1E08 */  lw      $t6, 0x1E08($t6)           ## 00011E08
/* 00EF8 80A4CB98 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00EFC 80A4CB9C 0018C8C0 */  sll     $t9, $t8,  3               
/* 00F00 80A4CBA0 01D91821 */  addu    $v1, $t6, $t9              
/* 00F04 80A4CBA4 8C620004 */  lw      $v0, 0x0004($v1)           ## 00000004
/* 00F08 80A4CBA8 848F01CE */  lh      $t7, 0x01CE($a0)           ## 000001CE
/* 00F0C 80A4CBAC 3C0B8016 */  lui     $t3, 0x8016                ## $t3 = 80160000
/* 00F10 80A4CBB0 00024100 */  sll     $t0, $v0,  4               
/* 00F14 80A4CBB4 00084F02 */  srl     $t1, $t0, 28               
/* 00F18 80A4CBB8 00095080 */  sll     $t2, $t1,  2               
/* 00F1C 80A4CBBC 016A5821 */  addu    $t3, $t3, $t2              
/* 00F20 80A4CBC0 8D6B6FA8 */  lw      $t3, 0x6FA8($t3)           ## 80166FA8
/* 00F24 80A4CBC4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00F28 80A4CBC8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00F2C 80A4CBCC 000FC080 */  sll     $t8, $t7,  2               
/* 00F30 80A4CBD0 00416024 */  and     $t4, $v0, $at              
/* 00F34 80A4CBD4 030FC023 */  subu    $t8, $t8, $t7              
/* 00F38 80A4CBD8 0018C040 */  sll     $t8, $t8,  1               
/* 00F3C 80A4CBDC 016C6821 */  addu    $t5, $t3, $t4              
/* 00F40 80A4CBE0 01B83821 */  addu    $a3, $t5, $t8              
/* 00F44 80A4CBE4 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00F48 80A4CBE8 00E13821 */  addu    $a3, $a3, $at              
/* 00F4C 80A4CBEC 84EE0002 */  lh      $t6, 0x0002($a3)           ## 00000002
/* 00F50 80A4CBF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F54 80A4CBF4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00F58 80A4CBF8 448E2000 */  mtc1    $t6, $f4                   ## $f4 = 0.00
/* 00F5C 80A4CBFC 3C05C160 */  lui     $a1, 0xC160                ## $a1 = C1600000
/* 00F60 80A4CC00 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 00F64 80A4CC04 468021A0 */  cvt.s.w $f6, $f4                   
/* 00F68 80A4CC08 AFA7007C */  sw      $a3, 0x007C($sp)           
/* 00F6C 80A4CC0C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00F70 80A4CC10 0C01DE80 */  jal     Math_ApproxF
              
/* 00F74 80A4CC14 E7A60078 */  swc1    $f6, 0x0078($sp)           
/* 00F78 80A4CC18 8FA7007C */  lw      $a3, 0x007C($sp)           
/* 00F7C 80A4CC1C C6020028 */  lwc1    $f2, 0x0028($s0)           ## 00000028
/* 00F80 80A4CC20 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00F84 80A4CC24 84F90000 */  lh      $t9, 0x0000($a3)           ## 00000000
/* 00F88 80A4CC28 44994000 */  mtc1    $t9, $f8                   ## $f8 = 0.00
/* 00F8C 80A4CC2C 00000000 */  nop
/* 00F90 80A4CC30 468042A0 */  cvt.s.w $f10, $f8                  
/* 00F94 80A4CC34 E60A0024 */  swc1    $f10, 0x0024($s0)          ## 00000024
/* 00F98 80A4CC38 84E80004 */  lh      $t0, 0x0004($a3)           ## 00000004
/* 00F9C 80A4CC3C 44888000 */  mtc1    $t0, $f16                  ## $f16 = 0.00
/* 00FA0 80A4CC40 00000000 */  nop
/* 00FA4 80A4CC44 468084A0 */  cvt.s.w $f18, $f16                 
/* 00FA8 80A4CC48 E612002C */  swc1    $f18, 0x002C($s0)          ## 0000002C
/* 00FAC 80A4CC4C E7A20074 */  swc1    $f2, 0x0074($sp)           
/* 00FB0 80A4CC50 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 00FB4 80A4CC54 4606003C */  c.lt.s  $f0, $f6                   
/* 00FB8 80A4CC58 46001100 */  add.s   $f4, $f2, $f0              
/* 00FBC 80A4CC5C 45000068 */  bc1f    .L80A4CE00                 
/* 00FC0 80A4CC60 E6040028 */  swc1    $f4, 0x0028($s0)           ## 00000028
/* 00FC4 80A4CC64 C7A80078 */  lwc1    $f8, 0x0078($sp)           
/* 00FC8 80A4CC68 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00FCC 80A4CC6C 4608503E */  c.le.s  $f10, $f8                  
/* 00FD0 80A4CC70 00000000 */  nop
/* 00FD4 80A4CC74 45020063 */  bc1fl   .L80A4CE04                 
/* 00FD8 80A4CC78 861901C6 */  lh      $t9, 0x01C6($s0)           ## 000001C6
/* 00FDC 80A4CC7C 860901C6 */  lh      $t1, 0x01C6($s0)           ## 000001C6
/* 00FE0 80A4CC80 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00FE4 80A4CC84 5520004C */  bnel    $t1, $zero, .L80A4CDB8     
/* 00FE8 80A4CC88 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
/* 00FEC 80A4CC8C C6100090 */  lwc1    $f16, 0x0090($s0)          ## 00000090
/* 00FF0 80A4CC90 44819000 */  mtc1    $at, $f18                  ## $f18 = 600.00
/* 00FF4 80A4CC94 00000000 */  nop
/* 00FF8 80A4CC98 4612803C */  c.lt.s  $f16, $f18                 
/* 00FFC 80A4CC9C 00000000 */  nop
/* 01000 80A4CCA0 45020017 */  bc1fl   .L80A4CD00                 
/* 01004 80A4CCA4 920F01D3 */  lbu     $t7, 0x01D3($s0)           ## 000001D3
/* 01008 80A4CCA8 862A07A0 */  lh      $t2, 0x07A0($s1)           ## 000007A0
/* 0100C 80A4CCAC 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01010 80A4CCB0 000A5880 */  sll     $t3, $t2,  2               
/* 01014 80A4CCB4 022B6021 */  addu    $t4, $s1, $t3              
/* 01018 80A4CCB8 0C024BE2 */  jal     Quake_Add              
/* 0101C 80A4CCBC 8D840790 */  lw      $a0, 0x0790($t4)           ## 00000790
/* 01020 80A4CCC0 00022400 */  sll     $a0, $v0, 16               
/* 01024 80A4CCC4 AFA2006C */  sw      $v0, 0x006C($sp)           
/* 01028 80A4CCC8 00042403 */  sra     $a0, $a0, 16               
/* 0102C 80A4CCCC 0C024B6B */  jal     Quake_SetSpeed              
/* 01030 80A4CCD0 2405C350 */  addiu   $a1, $zero, 0xC350         ## $a1 = FFFFC350
/* 01034 80A4CCD4 87A4006E */  lh      $a0, 0x006E($sp)           
/* 01038 80A4CCD8 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 0103C 80A4CCDC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01040 80A4CCE0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01044 80A4CCE4 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01048 80A4CCE8 0C024B9C */  jal     Quake_SetQuakeValues              
/* 0104C 80A4CCEC AFA4002C */  sw      $a0, 0x002C($sp)           
/* 01050 80A4CCF0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01054 80A4CCF4 0C024B7C */  jal     Quake_SetCountdown              
/* 01058 80A4CCF8 24050007 */  addiu   $a1, $zero, 0x0007         ## $a1 = 00000007
/* 0105C 80A4CCFC 920F01D3 */  lbu     $t7, 0x01D3($s0)           ## 000001D3
.L80A4CD00:
/* 01060 80A4CD00 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01064 80A4CD04 31ED0010 */  andi    $t5, $t7, 0x0010           ## $t5 = 00000000
/* 01068 80A4CD08 15A0002A */  bne     $t5, $zero, .L80A4CDB4     
/* 0106C 80A4CD0C E60401C0 */  swc1    $f4, 0x01C0($s0)           ## 000001C0
/* 01070 80A4CD10 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 01074 80A4CD14 3C014248 */  lui     $at, 0x4248                ## $at = 42480000
/* 01078 80A4CD18 44815000 */  mtc1    $at, $f10                  ## $f10 = 50.00
/* 0107C 80A4CD1C E7A6005C */  swc1    $f6, 0x005C($sp)           
/* 01080 80A4CD20 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 01084 80A4CD24 27B8005C */  addiu   $t8, $sp, 0x005C           ## $t8 = FFFFFFD4
/* 01088 80A4CD28 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0108C 80A4CD2C 460A4400 */  add.s   $f16, $f8, $f10            
/* 01090 80A4CD30 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 01094 80A4CD34 27A60068 */  addiu   $a2, $sp, 0x0068           ## $a2 = FFFFFFE0
/* 01098 80A4CD38 27A70050 */  addiu   $a3, $sp, 0x0050           ## $a3 = FFFFFFC8
/* 0109C 80A4CD3C E7B00060 */  swc1    $f16, 0x0060($sp)          
/* 010A0 80A4CD40 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 010A4 80A4CD44 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 010A8 80A4CD48 AFB00010 */  sw      $s0, 0x0010($sp)           
/* 010AC 80A4CD4C 0C00F283 */  jal     func_8003CA0C              
/* 010B0 80A4CD50 E7B20064 */  swc1    $f18, 0x0064($sp)          
/* 010B4 80A4CD54 3C01426E */  lui     $at, 0x426E                ## $at = 426E0000
/* 010B8 80A4CD58 44813000 */  mtc1    $at, $f6                   ## $f6 = 59.50
/* 010BC 80A4CD5C C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 010C0 80A4CD60 3C014170 */  lui     $at, 0x4170                ## $at = 41700000
/* 010C4 80A4CD64 44815000 */  mtc1    $at, $f10                  ## $f10 = 15.00
/* 010C8 80A4CD68 46062201 */  sub.s   $f8, $f4, $f6              
/* 010CC 80A4CD6C 46000306 */  mov.s   $f12, $f0                  
/* 010D0 80A4CD70 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 010D4 80A4CD74 46080081 */  sub.s   $f2, $f0, $f8              
/* 010D8 80A4CD78 46001005 */  abs.s   $f0, $f2                   
/* 010DC 80A4CD7C 460A003C */  c.lt.s  $f0, $f10                  
/* 010E0 80A4CD80 00000000 */  nop
/* 010E4 80A4CD84 4502000C */  bc1fl   .L80A4CDB8                 
/* 010E8 80A4CD88 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
/* 010EC 80A4CD8C 44819000 */  mtc1    $at, $f18                  ## $f18 = 10.00
/* 010F0 80A4CD90 C6100024 */  lwc1    $f16, 0x0024($s0)          ## 00000024
/* 010F4 80A4CD94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 010F8 80A4CD98 46126100 */  add.s   $f4, $f12, $f18            
/* 010FC 80A4CD9C E7B00044 */  swc1    $f16, 0x0044($sp)          
/* 01100 80A4CDA0 27A50044 */  addiu   $a1, $sp, 0x0044           ## $a1 = FFFFFFBC
/* 01104 80A4CDA4 E7A40048 */  swc1    $f4, 0x0048($sp)           
/* 01108 80A4CDA8 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 0110C 80A4CDAC 0C2930E9 */  jal     func_80A4C3A4              
/* 01110 80A4CDB0 E7A6004C */  swc1    $f6, 0x004C($sp)           
.L80A4CDB4:
/* 01114 80A4CDB4 860201C6 */  lh      $v0, 0x01C6($s0)           ## 000001C6
.L80A4CDB8:
/* 01118 80A4CDB8 3C0180A5 */  lui     $at, %hi(D_80A4E074)       ## $at = 80A50000
/* 0111C 80A4CDBC 18400003 */  blez    $v0, .L80A4CDCC            
/* 01120 80A4CDC0 244E0001 */  addiu   $t6, $v0, 0x0001           ## $t6 = 00000001
/* 01124 80A4CDC4 1000003F */  beq     $zero, $zero, .L80A4CEC4   
/* 01128 80A4CDC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A4CDCC:
/* 0112C 80A4CDCC A60E01C6 */  sh      $t6, 0x01C6($s0)           ## 000001C6
/* 01130 80A4CDD0 C42AE074 */  lwc1    $f10, %lo(D_80A4E074)($at) 
/* 01134 80A4CDD4 C6080060 */  lwc1    $f8, 0x0060($s0)           ## 00000060
/* 01138 80A4CDD8 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 0113C 80A4CDDC 3C0180A5 */  lui     $at, %hi(D_80A4E078)       ## $at = 80A50000
/* 01140 80A4CDE0 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01144 80A4CDE4 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
/* 01148 80A4CDE8 C7A40078 */  lwc1    $f4, 0x0078($sp)           
/* 0114C 80A4CDEC C428E078 */  lwc1    $f8, %lo(D_80A4E078)($at)  
/* 01150 80A4CDF0 46049181 */  sub.s   $f6, $f18, $f4             
/* 01154 80A4CDF4 46083282 */  mul.s   $f10, $f6, $f8             
/* 01158 80A4CDF8 460A2401 */  sub.s   $f16, $f4, $f10            
/* 0115C 80A4CDFC E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
.L80A4CE00:
/* 01160 80A4CE00 861901C6 */  lh      $t9, 0x01C6($s0)           ## 000001C6
.L80A4CE04:
/* 01164 80A4CE04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 01168 80A4CE08 262507C0 */  addiu   $a1, $s1, 0x07C0           ## $a1 = 000007C0
/* 0116C 80A4CE0C 1720002C */  bne     $t9, $zero, .L80A4CEC0     
/* 01170 80A4CE10 27A8003C */  addiu   $t0, $sp, 0x003C           ## $t0 = FFFFFFB4
/* 01174 80A4CE14 8E060024 */  lw      $a2, 0x0024($s0)           ## 00000024
/* 01178 80A4CE18 8E07002C */  lw      $a3, 0x002C($s0)           ## 0000002C
/* 0117C 80A4CE1C 27A90040 */  addiu   $t1, $sp, 0x0040           ## $t1 = FFFFFFB8
/* 01180 80A4CE20 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01184 80A4CE24 0C010891 */  jal     func_80042244              
/* 01188 80A4CE28 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 0118C 80A4CE2C 10400024 */  beq     $v0, $zero, .L80A4CEC0     
/* 01190 80A4CE30 C7B2003C */  lwc1    $f18, 0x003C($sp)          
/* 01194 80A4CE34 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01198 80A4CE38 4612303E */  c.le.s  $f6, $f18                  
/* 0119C 80A4CE3C 00000000 */  nop
/* 011A0 80A4CE40 45020020 */  bc1fl   .L80A4CEC4                 
/* 011A4 80A4CE44 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 011A8 80A4CE48 920A01D3 */  lbu     $t2, 0x01D3($s0)           ## 000001D3
/* 011AC 80A4CE4C 354B0010 */  ori     $t3, $t2, 0x0010           ## $t3 = 00000010
/* 011B0 80A4CE50 A20B01D3 */  sb      $t3, 0x01D3($s0)           ## 000001D3
/* 011B4 80A4CE54 C7A40074 */  lwc1    $f4, 0x0074($sp)           
/* 011B8 80A4CE58 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 011BC 80A4CE5C 4604403C */  c.lt.s  $f8, $f4                   
/* 011C0 80A4CE60 00000000 */  nop
/* 011C4 80A4CE64 4502000F */  bc1fl   .L80A4CEA4                 
/* 011C8 80A4CE68 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
/* 011CC 80A4CE6C C60A0024 */  lwc1    $f10, 0x0024($s0)          ## 00000024
/* 011D0 80A4CE70 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 011D4 80A4CE74 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 011D8 80A4CE78 E7AA0030 */  swc1    $f10, 0x0030($sp)          
/* 011DC 80A4CE7C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 011E0 80A4CE80 27A50030 */  addiu   $a1, $sp, 0x0030           ## $a1 = FFFFFFA8
/* 011E4 80A4CE84 0C293165 */  jal     func_80A4C594              
/* 011E8 80A4CE88 E7B00038 */  swc1    $f16, 0x0038($sp)          
/* 011EC 80A4CE8C 3C0180A5 */  lui     $at, %hi(D_80A4E07C)       ## $at = 80A50000
/* 011F0 80A4CE90 C426E07C */  lwc1    $f6, %lo(D_80A4E07C)($at)  
/* 011F4 80A4CE94 C6120060 */  lwc1    $f18, 0x0060($s0)          ## 00000060
/* 011F8 80A4CE98 46069102 */  mul.s   $f4, $f18, $f6             
/* 011FC 80A4CE9C E6040060 */  swc1    $f4, 0x0060($s0)           ## 00000060
/* 01200 80A4CEA0 3C01C100 */  lui     $at, 0xC100                ## $at = C1000000
.L80A4CEA4:
/* 01204 80A4CEA4 44810000 */  mtc1    $at, $f0                   ## $f0 = -8.00
/* 01208 80A4CEA8 C60A0060 */  lwc1    $f10, 0x0060($s0)          ## 00000060
/* 0120C 80A4CEAC 4600503C */  c.lt.s  $f10, $f0                  
/* 01210 80A4CEB0 00000000 */  nop
/* 01214 80A4CEB4 45020003 */  bc1fl   .L80A4CEC4                 
/* 01218 80A4CEB8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0121C 80A4CEBC E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
.L80A4CEC0:
/* 01220 80A4CEC0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A4CEC4:
/* 01224 80A4CEC4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01228 80A4CEC8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0122C 80A4CECC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 01230 80A4CED0 03E00008 */  jr      $ra                        
/* 01234 80A4CED4 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000


