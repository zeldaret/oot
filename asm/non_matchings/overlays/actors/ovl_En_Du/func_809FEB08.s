glabel func_809FEB08
/* 00ED8 809FEB08 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00EDC 809FEB0C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00EE0 809FEB10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00EE4 809FEB14 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00EE8 809FEB18 848F01E8 */  lh      $t7, 0x01E8($a0)           ## 000001E8
/* 00EEC 809FEB1C 240E000B */  addiu   $t6, $zero, 0x000B         ## $t6 = 0000000B
/* 00EF0 809FEB20 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00EF4 809FEB24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00EF8 809FEB28 A48E01F2 */  sh      $t6, 0x01F2($a0)           ## 000001F2
/* 00EFC 809FEB2C A08001EC */  sb      $zero, 0x01EC($a0)         ## 000001EC
/* 00F00 809FEB30 A08001ED */  sb      $zero, 0x01ED($a0)         ## 000001ED
/* 00F04 809FEB34 15E10010 */  bne     $t7, $at, .L809FEB78       
/* 00F08 809FEB38 A08001EE */  sb      $zero, 0x01EE($a0)         ## 000001EE
/* 00F0C 809FEB3C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00F10 809FEB40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F14 809FEB44 0C00B7D5 */  jal     func_8002DF54              
/* 00F18 809FEB48 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 00F1C 809FEB4C 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 00F20 809FEB50 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00F24 809FEB54 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00F28 809FEB58 0C00D3B0 */  jal     func_80034EC0              
/* 00F2C 809FEB5C 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00F30 809FEB60 3C0580A0 */  lui     $a1, %hi(func_809FE3C0)    ## $a1 = 80A00000
/* 00F34 809FEB64 24A5E3C0 */  addiu   $a1, $a1, %lo(func_809FE3C0) ## $a1 = 809FE3C0
/* 00F38 809FEB68 0C27F70C */  jal     func_809FDC30              
/* 00F3C 809FEB6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F40 809FEB70 10000024 */  beq     $zero, $zero, .L809FEC04   
/* 00F44 809FEB74 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FEB78:
/* 00F48 809FEB78 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 00F4C 809FEB7C 3C198012 */  lui     $t9, 0x8012                ## $t9 = 80120000
/* 00F50 809FEB80 8F3971B8 */  lw      $t9, 0x71B8($t9)           ## 801271B8
/* 00F54 809FEB84 8F18E700 */  lw      $t8, -0x1900($t8)          ## 8015E700
/* 00F58 809FEB88 3C098012 */  lui     $t1, 0x8012                ## $t1 = 80120000
/* 00F5C 809FEB8C 912971F6 */  lbu     $t1, 0x71F6($t1)           ## 801271F6
/* 00F60 809FEB90 03194024 */  and     $t0, $t8, $t9              
/* 00F64 809FEB94 240C301F */  addiu   $t4, $zero, 0x301F         ## $t4 = 0000301F
/* 00F68 809FEB98 01285007 */  srav    $t2, $t0, $t1              
/* 00F6C 809FEB9C 1D400009 */  bgtz    $t2, .L809FEBC4            
/* 00F70 809FEBA0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F74 809FEBA4 240B301C */  addiu   $t3, $zero, 0x301C         ## $t3 = 0000301C
/* 00F78 809FEBA8 3C0580A0 */  lui     $a1, %hi(func_809FEC14)    ## $a1 = 80A00000
/* 00F7C 809FEBAC A60B010E */  sh      $t3, 0x010E($s0)           ## 0000010E
/* 00F80 809FEBB0 24A5EC14 */  addiu   $a1, $a1, %lo(func_809FEC14) ## $a1 = 809FEC14
/* 00F84 809FEBB4 0C27F70C */  jal     func_809FDC30              
/* 00F88 809FEBB8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F8C 809FEBBC 10000006 */  beq     $zero, $zero, .L809FEBD8   
/* 00F90 809FEBC0 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809FEBC4:
/* 00F94 809FEBC4 3C0580A0 */  lui     $a1, %hi(func_809FE3C0)    ## $a1 = 80A00000
/* 00F98 809FEBC8 A60C010E */  sh      $t4, 0x010E($s0)           ## 0000010E
/* 00F9C 809FEBCC 0C27F70C */  jal     func_809FDC30              
/* 00FA0 809FEBD0 24A5E3C0 */  addiu   $a1, $a1, %lo(func_809FE3C0) ## $a1 = 809FE3C0
/* 00FA4 809FEBD4 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809FEBD8:
/* 00FA8 809FEBD8 9605010E */  lhu     $a1, 0x010E($s0)           ## 0000010E
/* 00FAC 809FEBDC 0C042DA0 */  jal     func_8010B680              
/* 00FB0 809FEBE0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00FB4 809FEBE4 3C0580A0 */  lui     $a1, %hi(D_809FF268)       ## $a1 = 80A00000
/* 00FB8 809FEBE8 24A5F268 */  addiu   $a1, $a1, %lo(D_809FF268)  ## $a1 = 809FF268
/* 00FBC 809FEBEC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 00FC0 809FEBF0 0C00D3B0 */  jal     func_80034EC0              
/* 00FC4 809FEBF4 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 00FC8 809FEBF8 240D0001 */  addiu   $t5, $zero, 0x0001         ## $t5 = 00000001
/* 00FCC 809FEBFC A60D01F4 */  sh      $t5, 0x01F4($s0)           ## 000001F4
/* 00FD0 809FEC00 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809FEC04:
/* 00FD4 809FEC04 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00FD8 809FEC08 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00FDC 809FEC0C 03E00008 */  jr      $ra                        
/* 00FE0 809FEC10 00000000 */  nop
