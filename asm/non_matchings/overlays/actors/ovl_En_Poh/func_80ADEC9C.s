glabel func_80ADEC9C
/* 00F4C 80ADEC9C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F50 80ADECA0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00F54 80ADECA4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00F58 80ADECA8 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00F5C 80ADECAC 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00F60 80ADECB0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F64 80ADECB4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00F68 80ADECB8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00F6C 80ADECBC AFAF0024 */  sw      $t7, 0x0024($sp)           
/* 00F70 80ADECC0 86030198 */  lh      $v1, 0x0198($s0)           ## 00000198
/* 00F74 80ADECC4 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00F78 80ADECC8 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 00F7C 80ADECCC 10600002 */  beq     $v1, $zero, .L80ADECD8     
/* 00F80 80ADECD0 2478FFFF */  addiu   $t8, $v1, 0xFFFF           ## $t8 = FFFFFFFF
/* 00F84 80ADECD4 A6180198 */  sh      $t8, 0x0198($s0)           ## 00000198
.L80ADECD8:
/* 00F88 80ADECD8 8FB90024 */  lw      $t9, 0x0024($sp)           
/* 00F8C 80ADECDC 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00F90 80ADECE0 872800B6 */  lh      $t0, 0x00B6($t9)           ## 000000B6
/* 00F94 80ADECE4 24E53000 */  addiu   $a1, $a3, 0x3000           ## $a1 = 00003000
/* 00F98 80ADECE8 00052C00 */  sll     $a1, $a1, 16               
/* 00F9C 80ADECEC 00E81023 */  subu    $v0, $a3, $t0              
/* 00FA0 80ADECF0 00021400 */  sll     $v0, $v0, 16               
/* 00FA4 80ADECF4 00021403 */  sra     $v0, $v0, 16               
/* 00FA8 80ADECF8 28413001 */  slti    $at, $v0, 0x3001           
/* 00FAC 80ADECFC 54200006 */  bnel    $at, $zero, .L80ADED18     
/* 00FB0 80ADED00 2841D000 */  slti    $at, $v0, 0xD000           
/* 00FB4 80ADED04 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00FB8 80ADED08 00052C03 */  sra     $a1, $a1, 16               
/* 00FBC 80ADED0C 10000011 */  beq     $zero, $zero, .L80ADED54   
/* 00FC0 80ADED10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FC4 80ADED14 2841D000 */  slti    $at, $v0, 0xD000           
.L80ADED18:
/* 00FC8 80ADED18 10200009 */  beq     $at, $zero, .L80ADED40     
/* 00FCC 80ADED1C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00FD0 80ADED20 24E5D000 */  addiu   $a1, $a3, 0xD000           ## $a1 = FFFFD000
/* 00FD4 80ADED24 00052C00 */  sll     $a1, $a1, 16               
/* 00FD8 80ADED28 00052C03 */  sra     $a1, $a1, 16               
/* 00FDC 80ADED2C 26040032 */  addiu   $a0, $s0, 0x0032           ## $a0 = 00000032
/* 00FE0 80ADED30 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00FE4 80ADED34 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 00FE8 80ADED38 10000006 */  beq     $zero, $zero, .L80ADED54   
/* 00FEC 80ADED3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADED40:
/* 00FF0 80ADED40 00072C00 */  sll     $a1, $a3, 16               
/* 00FF4 80ADED44 00052C03 */  sra     $a1, $a1, 16               
/* 00FF8 80ADED48 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00FFC 80ADED4C 2406071C */  addiu   $a2, $zero, 0x071C         ## $a2 = 0000071C
/* 01000 80ADED50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80ADED54:
/* 01004 80ADED54 0C2B7A73 */  jal     func_80ADE9CC              
/* 01008 80ADED58 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 0100C 80ADED5C 3C01438C */  lui     $at, 0x438C                ## $at = 438C0000
/* 01010 80ADED60 44812000 */  mtc1    $at, $f4                   ## $f4 = 280.00
/* 01014 80ADED64 C6000090 */  lwc1    $f0, 0x0090($s0)           ## 00000090
/* 01018 80ADED68 4600203C */  c.lt.s  $f4, $f0                   
/* 0101C 80ADED6C 00000000 */  nop
/* 01020 80ADED70 45020006 */  bc1fl   .L80ADED8C                 
/* 01024 80ADED74 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
/* 01028 80ADED78 0C2B785B */  jal     func_80ADE16C              
/* 0102C 80ADED7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01030 80ADED80 10000013 */  beq     $zero, $zero, .L80ADEDD0   
/* 01034 80ADED84 920A029D */  lbu     $t2, 0x029D($s0)           ## 0000029D
/* 01038 80ADED88 86090198 */  lh      $t1, 0x0198($s0)           ## 00000198
.L80ADED8C:
/* 0103C 80ADED8C 3C01430C */  lui     $at, 0x430C                ## $at = 430C0000
/* 01040 80ADED90 5520000F */  bnel    $t1, $zero, .L80ADEDD0     
/* 01044 80ADED94 920A029D */  lbu     $t2, 0x029D($s0)           ## 0000029D
/* 01048 80ADED98 44813000 */  mtc1    $at, $f6                   ## $f6 = 140.00
/* 0104C 80ADED9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01050 80ADEDA0 24052AAA */  addiu   $a1, $zero, 0x2AAA         ## $a1 = 00002AAA
/* 01054 80ADEDA4 4606003C */  c.lt.s  $f0, $f6                   
/* 01058 80ADEDA8 00000000 */  nop
/* 0105C 80ADEDAC 45020008 */  bc1fl   .L80ADEDD0                 
/* 01060 80ADEDB0 920A029D */  lbu     $t2, 0x029D($s0)           ## 0000029D
/* 01064 80ADEDB4 0C00B7F2 */  jal     func_8002DFC8              
/* 01068 80ADEDB8 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 0106C 80ADEDBC 54400004 */  bnel    $v0, $zero, .L80ADEDD0     
/* 01070 80ADEDC0 920A029D */  lbu     $t2, 0x029D($s0)           ## 0000029D
/* 01074 80ADEDC4 0C2B7883 */  jal     func_80ADE20C              
/* 01078 80ADEDC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0107C 80ADEDCC 920A029D */  lbu     $t2, 0x029D($s0)           ## 0000029D
.L80ADEDD0:
/* 01080 80ADEDD0 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 01084 80ADEDD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01088 80ADEDD8 55410004 */  bnel    $t2, $at, .L80ADEDEC       
/* 0108C 80ADEDDC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01090 80ADEDE0 0C00BE5D */  jal     func_8002F974              
/* 01094 80ADEDE4 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 01098 80ADEDE8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADEDEC:
/* 0109C 80ADEDEC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 010A0 80ADEDF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 010A4 80ADEDF4 03E00008 */  jr      $ra                        
/* 010A8 80ADEDF8 00000000 */  nop


