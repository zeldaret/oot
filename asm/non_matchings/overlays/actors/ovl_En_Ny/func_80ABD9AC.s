.late_rodata
glabel D_80ABE4D4
    .float 0.4

glabel D_80ABE4D8
    .float 0.1

glabel D_80ABE4DC
    .float 0.6

glabel D_80ABE4E0
    .float 0.15

.text
glabel func_80ABD9AC
/* 00DFC 80ABD9AC 27BDFFA8 */  addiu   $sp, $sp, 0xFFA8           ## $sp = FFFFFFA8
/* 00E00 80ABD9B0 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00E04 80ABD9B4 AFBF0054 */  sw      $ra, 0x0054($sp)           
/* 00E08 80ABD9B8 AFB60050 */  sw      $s6, 0x0050($sp)           
/* 00E0C 80ABD9BC AFB5004C */  sw      $s5, 0x004C($sp)           
/* 00E10 80ABD9C0 AFB40048 */  sw      $s4, 0x0048($sp)           
/* 00E14 80ABD9C4 AFB30044 */  sw      $s3, 0x0044($sp)           
/* 00E18 80ABD9C8 AFB20040 */  sw      $s2, 0x0040($sp)           
/* 00E1C 80ABD9CC AFB1003C */  sw      $s1, 0x003C($sp)           
/* 00E20 80ABD9D0 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00E24 80ABD9D4 F7BA0030 */  sdc1    $f26, 0x0030($sp)          
/* 00E28 80ABD9D8 F7B80028 */  sdc1    $f24, 0x0028($sp)          
/* 00E2C 80ABD9DC F7B60020 */  sdc1    $f22, 0x0020($sp)          
/* 00E30 80ABD9E0 AFA5005C */  sw      $a1, 0x005C($sp)           
/* 00E34 80ABD9E4 4480A000 */  mtc1    $zero, $f20                ## $f20 = 0.00
/* 00E38 80ABD9E8 C4840084 */  lwc1    $f4, 0x0084($a0)           ## 00000084
/* 00E3C 80ABD9EC 0080B025 */  or      $s6, $a0, $zero            ## $s6 = 00000000
/* 00E40 80ABD9F0 02C08025 */  or      $s0, $s6, $zero            ## $s0 = 00000000
/* 00E44 80ABD9F4 4604A03C */  c.lt.s  $f20, $f4                  
/* 00E48 80ABD9F8 26D20258 */  addiu   $s2, $s6, 0x0258           ## $s2 = 00000258
/* 00E4C 80ABD9FC 26D3025C */  addiu   $s3, $s6, 0x025C           ## $s3 = 0000025C
/* 00E50 80ABDA00 26D40260 */  addiu   $s4, $s6, 0x0260           ## $s4 = 00000260
/* 00E54 80ABDA04 45000033 */  bc1f    .L80ABDAD4                 
/* 00E58 80ABDA08 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00E5C 80ABDA0C 3C0180AC */  lui     $at, %hi(D_80ABE4D4)       ## $at = 80AC0000
/* 00E60 80ABDA10 C43AE4D4 */  lwc1    $f26, %lo(D_80ABE4D4)($at) 
/* 00E64 80ABDA14 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00E68 80ABDA18 4481C000 */  mtc1    $at, $f24                  ## $f24 = -1.00
/* 00E6C 80ABDA1C 3C0180AC */  lui     $at, %hi(D_80ABE4D8)       ## $at = 80AC0000
/* 00E70 80ABDA20 C436E4D8 */  lwc1    $f22, %lo(D_80ABE4D8)($at) 
/* 00E74 80ABDA24 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 00E78 80ABDA28 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E7C 80ABDA2C 24920258 */  addiu   $s2, $a0, 0x0258           ## $s2 = 00000258
/* 00E80 80ABDA30 2493025C */  addiu   $s3, $a0, 0x025C           ## $s3 = 0000025C
/* 00E84 80ABDA34 24940260 */  addiu   $s4, $a0, 0x0260           ## $s4 = 00000260
/* 00E88 80ABDA38 24150060 */  addiu   $s5, $zero, 0x0060         ## $s5 = 00000060
.L80ABDA3C:
/* 00E8C 80ABDA3C C60601F8 */  lwc1    $f6, 0x01F8($s0)           ## 000001F8
/* 00E90 80ABDA40 C6080258 */  lwc1    $f8, 0x0258($s0)           ## 00000258
/* 00E94 80ABDA44 C61001FC */  lwc1    $f16, 0x01FC($s0)          ## 000001FC
/* 00E98 80ABDA48 C612025C */  lwc1    $f18, 0x025C($s0)          ## 0000025C
/* 00E9C 80ABDA4C 46083280 */  add.s   $f10, $f6, $f8             
/* 00EA0 80ABDA50 C6080260 */  lwc1    $f8, 0x0260($s0)           ## 00000260
/* 00EA4 80ABDA54 C6060200 */  lwc1    $f6, 0x0200($s0)           ## 00000200
/* 00EA8 80ABDA58 46128100 */  add.s   $f4, $f16, $f18            
/* 00EAC 80ABDA5C E60A01F8 */  swc1    $f10, 0x01F8($s0)          ## 000001F8
/* 00EB0 80ABDA60 4405A000 */  mfc1    $a1, $f20                  
/* 00EB4 80ABDA64 46083280 */  add.s   $f10, $f6, $f8             
/* 00EB8 80ABDA68 4406B000 */  mfc1    $a2, $f22                  
/* 00EBC 80ABDA6C E60401FC */  swc1    $f4, 0x01FC($s0)           ## 000001FC
/* 00EC0 80ABDA70 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000258
/* 00EC4 80ABDA74 0C01DE80 */  jal     Math_StepToF
              
/* 00EC8 80ABDA78 E60A0200 */  swc1    $f10, 0x0200($s0)          ## 00000200
/* 00ECC 80ABDA7C 4405C000 */  mfc1    $a1, $f24                  
/* 00ED0 80ABDA80 4406D000 */  mfc1    $a2, $f26                  
/* 00ED4 80ABDA84 0C01DE80 */  jal     Math_StepToF
              
/* 00ED8 80ABDA88 02602025 */  or      $a0, $s3, $zero            ## $a0 = 0000025C
/* 00EDC 80ABDA8C 4405A000 */  mfc1    $a1, $f20                  
/* 00EE0 80ABDA90 4406B000 */  mfc1    $a2, $f22                  
/* 00EE4 80ABDA94 0C01DE80 */  jal     Math_StepToF
              
/* 00EE8 80ABDA98 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000260
/* 00EEC 80ABDA9C 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 0000000C
/* 00EF0 80ABDAA0 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 0000000C
/* 00EF4 80ABDAA4 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000264
/* 00EF8 80ABDAA8 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 00000268
/* 00EFC 80ABDAAC 1635FFE3 */  bne     $s1, $s5, .L80ABDA3C       
/* 00F00 80ABDAB0 2694000C */  addiu   $s4, $s4, 0x000C           ## $s4 = 0000026C
/* 00F04 80ABDAB4 86CE01C8 */  lh      $t6, 0x01C8($s6)           ## 000001C8
/* 00F08 80ABDAB8 29C1001F */  slti    $at, $t6, 0x001F           
/* 00F0C 80ABDABC 54200031 */  bnel    $at, $zero, .L80ABDB84     
/* 00F10 80ABDAC0 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00F14 80ABDAC4 0C00B55C */  jal     Actor_Kill
              
/* 00F18 80ABDAC8 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00F1C 80ABDACC 1000002D */  beq     $zero, $zero, .L80ABDB84   
/* 00F20 80ABDAD0 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80ABDAD4:
/* 00F24 80ABDAD4 3C0180AC */  lui     $at, %hi(D_80ABE4DC)       ## $at = 80AC0000
/* 00F28 80ABDAD8 C43AE4DC */  lwc1    $f26, %lo(D_80ABE4DC)($at) 
/* 00F2C 80ABDADC 3C01BF80 */  lui     $at, 0xBF80                ## $at = BF800000
/* 00F30 80ABDAE0 4481C000 */  mtc1    $at, $f24                  ## $f24 = -1.00
/* 00F34 80ABDAE4 3C0180AC */  lui     $at, %hi(D_80ABE4E0)       ## $at = 80AC0000
/* 00F38 80ABDAE8 C436E4E0 */  lwc1    $f22, %lo(D_80ABE4E0)($at) 
/* 00F3C 80ABDAEC 24150060 */  addiu   $s5, $zero, 0x0060         ## $s5 = 00000060
.L80ABDAF0:
/* 00F40 80ABDAF0 C61001F8 */  lwc1    $f16, 0x01F8($s0)          ## 00000204
/* 00F44 80ABDAF4 C6120258 */  lwc1    $f18, 0x0258($s0)          ## 00000264
/* 00F48 80ABDAF8 C60601FC */  lwc1    $f6, 0x01FC($s0)           ## 00000208
/* 00F4C 80ABDAFC C608025C */  lwc1    $f8, 0x025C($s0)           ## 00000268
/* 00F50 80ABDB00 46128100 */  add.s   $f4, $f16, $f18            
/* 00F54 80ABDB04 C6120260 */  lwc1    $f18, 0x0260($s0)          ## 0000026C
/* 00F58 80ABDB08 C6100200 */  lwc1    $f16, 0x0200($s0)          ## 0000020C
/* 00F5C 80ABDB0C 46083280 */  add.s   $f10, $f6, $f8             
/* 00F60 80ABDB10 E60401F8 */  swc1    $f4, 0x01F8($s0)           ## 00000204
/* 00F64 80ABDB14 4405A000 */  mfc1    $a1, $f20                  
/* 00F68 80ABDB18 46128100 */  add.s   $f4, $f16, $f18            
/* 00F6C 80ABDB1C 4406B000 */  mfc1    $a2, $f22                  
/* 00F70 80ABDB20 E60A01FC */  swc1    $f10, 0x01FC($s0)          ## 00000208
/* 00F74 80ABDB24 02402025 */  or      $a0, $s2, $zero            ## $a0 = 00000264
/* 00F78 80ABDB28 0C01DE80 */  jal     Math_StepToF
              
/* 00F7C 80ABDB2C E6040200 */  swc1    $f4, 0x0200($s0)           ## 0000020C
/* 00F80 80ABDB30 4405C000 */  mfc1    $a1, $f24                  
/* 00F84 80ABDB34 4406D000 */  mfc1    $a2, $f26                  
/* 00F88 80ABDB38 0C01DE80 */  jal     Math_StepToF
              
/* 00F8C 80ABDB3C 02602025 */  or      $a0, $s3, $zero            ## $a0 = 00000268
/* 00F90 80ABDB40 4405A000 */  mfc1    $a1, $f20                  
/* 00F94 80ABDB44 4406B000 */  mfc1    $a2, $f22                  
/* 00F98 80ABDB48 0C01DE80 */  jal     Math_StepToF
              
/* 00F9C 80ABDB4C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 0000026C
/* 00FA0 80ABDB50 2631000C */  addiu   $s1, $s1, 0x000C           ## $s1 = 00000018
/* 00FA4 80ABDB54 2610000C */  addiu   $s0, $s0, 0x000C           ## $s0 = 00000018
/* 00FA8 80ABDB58 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 00000270
/* 00FAC 80ABDB5C 2673000C */  addiu   $s3, $s3, 0x000C           ## $s3 = 00000274
/* 00FB0 80ABDB60 1635FFE3 */  bne     $s1, $s5, .L80ABDAF0       
/* 00FB4 80ABDB64 2694000C */  addiu   $s4, $s4, 0x000C           ## $s4 = 00000278
/* 00FB8 80ABDB68 86CF01C8 */  lh      $t7, 0x01C8($s6)           ## 000001C8
/* 00FBC 80ABDB6C 29E10010 */  slti    $at, $t7, 0x0010           
/* 00FC0 80ABDB70 54200004 */  bnel    $at, $zero, .L80ABDB84     
/* 00FC4 80ABDB74 8FBF0054 */  lw      $ra, 0x0054($sp)           
/* 00FC8 80ABDB78 0C00B55C */  jal     Actor_Kill
              
/* 00FCC 80ABDB7C 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 00FD0 80ABDB80 8FBF0054 */  lw      $ra, 0x0054($sp)           
.L80ABDB84:
/* 00FD4 80ABDB84 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00FD8 80ABDB88 D7B60020 */  ldc1    $f22, 0x0020($sp)          
/* 00FDC 80ABDB8C D7B80028 */  ldc1    $f24, 0x0028($sp)          
/* 00FE0 80ABDB90 D7BA0030 */  ldc1    $f26, 0x0030($sp)          
/* 00FE4 80ABDB94 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 00FE8 80ABDB98 8FB1003C */  lw      $s1, 0x003C($sp)           
/* 00FEC 80ABDB9C 8FB20040 */  lw      $s2, 0x0040($sp)           
/* 00FF0 80ABDBA0 8FB30044 */  lw      $s3, 0x0044($sp)           
/* 00FF4 80ABDBA4 8FB40048 */  lw      $s4, 0x0048($sp)           
/* 00FF8 80ABDBA8 8FB5004C */  lw      $s5, 0x004C($sp)           
/* 00FFC 80ABDBAC 8FB60050 */  lw      $s6, 0x0050($sp)           
/* 01000 80ABDBB0 03E00008 */  jr      $ra                        
/* 01004 80ABDBB4 27BD0058 */  addiu   $sp, $sp, 0x0058           ## $sp = 00000000
