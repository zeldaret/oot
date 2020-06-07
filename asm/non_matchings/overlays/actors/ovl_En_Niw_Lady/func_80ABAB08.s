glabel func_80ABAB08
/* 00EC8 80ABAB08 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00ECC 80ABAB0C AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00ED0 80ABAB10 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ED4 80ABAB14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00ED8 80ABAB18 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00EDC 80ABAB1C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00EE0 80ABAB20 0C042F6F */  jal     func_8010BDBC              
/* 00EE4 80ABAB24 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00EE8 80ABAB28 860E0262 */  lh      $t6, 0x0262($s0)           ## 00000262
/* 00EEC 80ABAB2C 55C20030 */  bnel    $t6, $v0, .L80ABABF0       
/* 00EF0 80ABAB30 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00EF4 80ABAB34 0C041AF2 */  jal     func_80106BC8              
/* 00EF8 80ABAB38 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00EFC 80ABAB3C 1040002B */  beq     $v0, $zero, .L80ABABEC     
/* 00F00 80ABAB40 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00F04 80ABAB44 00511021 */  addu    $v0, $v0, $s1              
/* 00F08 80ABAB48 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 00F0C 80ABAB4C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00F10 80ABAB50 10400005 */  beq     $v0, $zero, .L80ABAB68     
/* 00F14 80ABAB54 00000000 */  nop
/* 00F18 80ABAB58 10410012 */  beq     $v0, $at, .L80ABABA4       
/* 00F1C 80ABAB5C 00000000 */  nop
/* 00F20 80ABAB60 10000023 */  beq     $zero, $zero, .L80ABABF0   
/* 00F24 80ABAB64 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABAB68:
/* 00F28 80ABAB68 0C041B33 */  jal     func_80106CCC              
/* 00F2C 80ABAB6C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F30 80ABAB70 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 00F34 80ABAB74 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00F38 80ABAB78 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 00F3C 80ABAB7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F40 80ABAB80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00F44 80ABAB84 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 00F48 80ABAB88 3C074348 */  lui     $a3, 0x4348                ## $a3 = 43480000
/* 00F4C 80ABAB8C 0C00BD0D */  jal     func_8002F434              
/* 00F50 80ABAB90 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00F54 80ABAB94 3C0F80AC */  lui     $t7, %hi(func_80ABAC00)    ## $t7 = 80AC0000
/* 00F58 80ABAB98 25EFAC00 */  addiu   $t7, $t7, %lo(func_80ABAC00) ## $t7 = 80ABAC00
/* 00F5C 80ABAB9C 10000013 */  beq     $zero, $zero, .L80ABABEC   
/* 00F60 80ABABA0 AE0F0250 */  sw      $t7, 0x0250($s0)           ## 00000250
.L80ABABA4:
/* 00F64 80ABABA4 0C041B33 */  jal     func_80106CCC              
/* 00F68 80ABABA8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F6C 80ABABAC 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00F70 80ABABB0 8608027A */  lh      $t0, 0x027A($s0)           ## 0000027A
/* 00F74 80ABABB4 A2180277 */  sb      $t8, 0x0277($s0)           ## 00000277
/* 00F78 80ABABB8 3C1980AC */  lui     $t9, %hi(D_80ABB400)       ## $t9 = 80AC0000
/* 00F7C 80ABABBC 8739B400 */  lh      $t9, %lo(D_80ABB400)($t9)  
/* 00F80 80ABABC0 25090015 */  addiu   $t1, $t0, 0x0015           ## $t1 = 00000015
/* 00F84 80ABABC4 A609026E */  sh      $t1, 0x026E($s0)           ## 0000026E
/* 00F88 80ABABC8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00F8C 80ABABCC A619010E */  sh      $t9, 0x010E($s0)           ## 0000010E
/* 00F90 80ABABD0 0C042DC8 */  jal     func_8010B720              
/* 00F94 80ABABD4 3325FFFF */  andi    $a1, $t9, 0xFFFF           ## $a1 = 00000000
/* 00F98 80ABABD8 3C0B80AC */  lui     $t3, %hi(func_80ABAA9C)    ## $t3 = 80AC0000
/* 00F9C 80ABABDC 240A0005 */  addiu   $t2, $zero, 0x0005         ## $t2 = 00000005
/* 00FA0 80ABABE0 256BAA9C */  addiu   $t3, $t3, %lo(func_80ABAA9C) ## $t3 = 80ABAA9C
/* 00FA4 80ABABE4 A60A0262 */  sh      $t2, 0x0262($s0)           ## 00000262
/* 00FA8 80ABABE8 AE0B0250 */  sw      $t3, 0x0250($s0)           ## 00000250
.L80ABABEC:
/* 00FAC 80ABABEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80ABABF0:
/* 00FB0 80ABABF0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00FB4 80ABABF4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00FB8 80ABABF8 03E00008 */  jr      $ra                        
/* 00FBC 80ABABFC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
