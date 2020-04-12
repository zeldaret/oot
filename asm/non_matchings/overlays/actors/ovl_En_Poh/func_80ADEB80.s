.late_rodata
glabel D_80AE1C34
    .float 0.1

.text
glabel func_80ADEB80
/* 00E30 80ADEB80 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E34 80ADEB84 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E38 80ADEB88 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E3C 80ADEB8C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E40 80ADEB90 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E44 80ADEB94 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00E48 80ADEB98 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E4C 80ADEB9C AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00E50 80ADEBA0 3C063E4C */  lui     $a2, 0x3E4C                ## $a2 = 3E4C0000
/* 00E54 80ADEBA4 34C6CCCD */  ori     $a2, $a2, 0xCCCD           ## $a2 = 3E4CCCCD
/* 00E58 80ADEBA8 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00E5C 80ADEBAC 0C01DE80 */  jal     Math_ApproxF
              
/* 00E60 80ADEBB0 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00E64 80ADEBB4 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00E68 80ADEBB8 0C0295B2 */  jal     func_800A56C8              
/* 00E6C 80ADEBBC 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00E70 80ADEBC0 10400005 */  beq     $v0, $zero, .L80ADEBD8     
/* 00E74 80ADEBC4 00000000 */  nop
/* 00E78 80ADEBC8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 00E7C 80ADEBCC 10400002 */  beq     $v0, $zero, .L80ADEBD8     
/* 00E80 80ADEBD0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00E84 80ADEBD4 A60E0198 */  sh      $t6, 0x0198($s0)           ## 00000198
.L80ADEBD8:
/* 00E88 80ADEBD8 0C2B7A97 */  jal     func_80ADEA5C              
/* 00E8C 80ADEBDC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E90 80ADEBE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00E94 80ADEBE4 0C2B7A73 */  jal     func_80ADE9CC              
/* 00E98 80ADEBE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00E9C 80ADEBEC 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 00EA0 80ADEBF0 44813000 */  mtc1    $at, $f6                   ## $f6 = 200.00
/* 00EA4 80ADEBF4 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 00EA8 80ADEBF8 4606203C */  c.lt.s  $f4, $f6                   
/* 00EAC 80ADEBFC 00000000 */  nop
/* 00EB0 80ADEC00 4502000A */  bc1fl   .L80ADEC2C                 
/* 00EB4 80ADEC04 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 00EB8 80ADEC08 860F0198 */  lh      $t7, 0x0198($s0)           ## 00000198
/* 00EBC 80ADEC0C 29E10013 */  slti    $at, $t7, 0x0013           
/* 00EC0 80ADEC10 50200006 */  beql    $at, $zero, .L80ADEC2C     
/* 00EC4 80ADEC14 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
/* 00EC8 80ADEC18 0C2B786F */  jal     func_80ADE1BC              
/* 00ECC 80ADEC1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00ED0 80ADEC20 10000013 */  beq     $zero, $zero, .L80ADEC70   
/* 00ED4 80ADEC24 9219029D */  lbu     $t9, 0x029D($s0)           ## 0000029D
/* 00ED8 80ADEC28 86180198 */  lh      $t8, 0x0198($s0)           ## 00000198
.L80ADEC2C:
/* 00EDC 80ADEC2C 57000010 */  bnel    $t8, $zero, .L80ADEC70     
/* 00EE0 80ADEC30 9219029D */  lbu     $t9, 0x029D($s0)           ## 0000029D
/* 00EE4 80ADEC34 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00EE8 80ADEC38 00000000 */  nop
/* 00EEC 80ADEC3C 3C0180AE */  lui     $at, %hi(D_80AE1C34)       ## $at = 80AE0000
/* 00EF0 80ADEC40 C4281C34 */  lwc1    $f8, %lo(D_80AE1C34)($at)  
/* 00EF4 80ADEC44 4608003C */  c.lt.s  $f0, $f8                   
/* 00EF8 80ADEC48 00000000 */  nop
/* 00EFC 80ADEC4C 45000005 */  bc1f    .L80ADEC64                 
/* 00F00 80ADEC50 00000000 */  nop
/* 00F04 80ADEC54 0C2B7945 */  jal     func_80ADE514              
/* 00F08 80ADEC58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F0C 80ADEC5C 10000004 */  beq     $zero, $zero, .L80ADEC70   
/* 00F10 80ADEC60 9219029D */  lbu     $t9, 0x029D($s0)           ## 0000029D
.L80ADEC64:
/* 00F14 80ADEC64 0C2B7845 */  jal     func_80ADE114              
/* 00F18 80ADEC68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F1C 80ADEC6C 9219029D */  lbu     $t9, 0x029D($s0)           ## 0000029D
.L80ADEC70:
/* 00F20 80ADEC70 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00F24 80ADEC74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F28 80ADEC78 57210004 */  bnel    $t9, $at, .L80ADEC8C       
/* 00F2C 80ADEC7C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00F30 80ADEC80 0C00BE5D */  jal     func_8002F974              
/* 00F34 80ADEC84 24053071 */  addiu   $a1, $zero, 0x3071         ## $a1 = 00003071
/* 00F38 80ADEC88 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80ADEC8C:
/* 00F3C 80ADEC8C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F40 80ADEC90 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F44 80ADEC94 03E00008 */  jr      $ra                        
/* 00F48 80ADEC98 00000000 */  nop
