glabel func_80A53D0C
/* 00E6C 80A53D0C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00E70 80A53D10 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E74 80A53D14 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E78 80A53D18 C4840164 */  lwc1    $f4, 0x0164($a0)           ## 00000164
/* 00E7C 80A53D1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E80 80A53D20 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00E84 80A53D24 E7A40028 */  swc1    $f4, 0x0028($sp)           
/* 00E88 80A53D28 8CA21C6C */  lw      $v0, 0x1C6C($a1)           ## 00001C6C
/* 00E8C 80A53D2C 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00E90 80A53D30 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00E94 80A53D34 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00E98 80A53D38 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 00E9C 80A53D3C C7A60028 */  lwc1    $f6, 0x0028($sp)           
/* 00EA0 80A53D40 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00EA4 80A53D44 4606403E */  c.le.s  $f8, $f6                   
/* 00EA8 80A53D48 00000000 */  nop
/* 00EAC 80A53D4C 4502000C */  bc1fl   .L80A53D80                 
/* 00EB0 80A53D50 C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 00EB4 80A53D54 920E0308 */  lbu     $t6, 0x0308($s0)           ## 00000308
/* 00EB8 80A53D58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EBC 80A53D5C 24052823 */  addiu   $a1, $zero, 0x2823         ## $a1 = 00002823
/* 00EC0 80A53D60 55C00007 */  bnel    $t6, $zero, .L80A53D80     
/* 00EC4 80A53D64 C7AA0028 */  lwc1    $f10, 0x0028($sp)          
/* 00EC8 80A53D68 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00ECC 80A53D6C AFA20024 */  sw      $v0, 0x0024($sp)           
/* 00ED0 80A53D70 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 00ED4 80A53D74 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00ED8 80A53D78 A20F0308 */  sb      $t7, 0x0308($s0)           ## 00000308
/* 00EDC 80A53D7C C7AA0028 */  lwc1    $f10, 0x0028($sp)          
.L80A53D80:
/* 00EE0 80A53D80 C61002EC */  lwc1    $f16, 0x02EC($s0)          ## 000002EC
/* 00EE4 80A53D84 3C0480A5 */  lui     $a0, %hi(D_80A551F8)       ## $a0 = 80A50000
/* 00EE8 80A53D88 248451F8 */  addiu   $a0, $a0, %lo(D_80A551F8)  ## $a0 = 80A551F8
/* 00EEC 80A53D8C 460A803E */  c.le.s  $f16, $f10                 
/* 00EF0 80A53D90 00000000 */  nop
/* 00EF4 80A53D94 45020014 */  bc1fl   .L80A53DE8                 
/* 00EF8 80A53D98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EFC 80A53D9C 1040000C */  beq     $v0, $zero, .L80A53DD0     
/* 00F00 80A53DA0 24030100 */  addiu   $v1, $zero, 0x0100         ## $v1 = 00000100
/* 00F04 80A53DA4 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
.L80A53DA8:
/* 00F08 80A53DA8 50780004 */  beql    $v1, $t8, .L80A53DBC       
/* 00F0C 80A53DAC AE020314 */  sw      $v0, 0x0314($s0)           ## 00000314
/* 00F10 80A53DB0 10000005 */  beq     $zero, $zero, .L80A53DC8   
/* 00F14 80A53DB4 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 00F18 80A53DB8 AE020314 */  sw      $v0, 0x0314($s0)           ## 00000314
.L80A53DBC:
/* 00F1C 80A53DBC 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00F20 80A53DC0 10000003 */  beq     $zero, $zero, .L80A53DD0   
/* 00F24 80A53DC4 A4590168 */  sh      $t9, 0x0168($v0)           ## 00000168
.L80A53DC8:
/* 00F28 80A53DC8 5440FFF7 */  bnel    $v0, $zero, .L80A53DA8     
/* 00F2C 80A53DCC 84580000 */  lh      $t8, 0x0000($v0)           ## 00000000
.L80A53DD0:
/* 00F30 80A53DD0 0C00084C */  jal     osSyncPrintf
              
/* 00F34 80A53DD4 8C450124 */  lw      $a1, 0x0124($v0)           ## 00000124
/* 00F38 80A53DD8 3C0880A5 */  lui     $t0, %hi(func_80A53DF8)    ## $t0 = 80A50000
/* 00F3C 80A53DDC 25083DF8 */  addiu   $t0, $t0, %lo(func_80A53DF8) ## $t0 = 80A53DF8
/* 00F40 80A53DE0 AE08025C */  sw      $t0, 0x025C($s0)           ## 0000025C
/* 00F44 80A53DE4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A53DE8:
/* 00F48 80A53DE8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F4C 80A53DEC 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00F50 80A53DF0 03E00008 */  jr      $ra                        
/* 00F54 80A53DF4 00000000 */  nop


