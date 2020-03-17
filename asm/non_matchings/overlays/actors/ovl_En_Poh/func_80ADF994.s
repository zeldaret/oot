glabel func_80ADF994
/* 01C44 80ADF994 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01C48 80ADF998 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01C4C 80ADF99C AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01C50 80ADF9A0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01C54 80ADF9A4 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 01C58 80ADF9A8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01C5C 80ADF9AC 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01C60 80ADF9B0 10400002 */  beq     $v0, $zero, .L80ADF9BC     
/* 01C64 80ADF9B4 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01C68 80ADF9B8 A48E0198 */  sh      $t6, 0x0198($a0)           ## 00000198
.L80ADF9BC:
/* 01C6C 80ADF9BC 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 01C70 80ADF9C0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 01C74 80ADF9C4 24090001 */  addiu   $t1, $zero, 0x0001         ## $t1 = 00000001
/* 01C78 80ADF9C8 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 01C7C 80ADF9CC 13000018 */  beq     $t8, $zero, .L80ADFA30     
/* 01C80 80ADF9D0 240A000F */  addiu   $t2, $zero, 0x000F         ## $t2 = 0000000F
/* 01C84 80ADF9D4 92190197 */  lbu     $t9, 0x0197($s0)           ## 00000197
/* 01C88 80ADF9D8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01C8C 80ADF9DC 24020009 */  addiu   $v0, $zero, 0x0009         ## $v0 = 00000009
/* 01C90 80ADF9E0 17210003 */  bne     $t9, $at, .L80ADF9F0       
/* 01C94 80ADF9E4 240B000A */  addiu   $t3, $zero, 0x000A         ## $t3 = 0000000A
/* 01C98 80ADF9E8 10000001 */  beq     $zero, $zero, .L80ADF9F0   
/* 01C9C 80ADF9EC 2402006E */  addiu   $v0, $zero, 0x006E         ## $v0 = 0000006E
.L80ADF9F0:
/* 01CA0 80ADF9F0 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 01CA4 80ADF9F4 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 01CA8 80ADF9F8 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 01CAC 80ADF9FC AFA2001C */  sw      $v0, 0x001C($sp)           
/* 01CB0 80ADFA00 AFAB0020 */  sw      $t3, 0x0020($sp)           
/* 01CB4 80ADFA04 8E0C02A4 */  lw      $t4, 0x02A4($s0)           ## 000002A4
/* 01CB8 80ADFA08 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01CBC 80ADFA0C 3C0640C0 */  lui     $a2, 0x40C0                ## $a2 = 40C00000
/* 01CC0 80ADFA10 8D8D001C */  lw      $t5, 0x001C($t4)           ## 0000001C
/* 01CC4 80ADFA14 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 01CC8 80ADFA18 0C00A5E9 */  jal     func_800297A4              
/* 01CCC 80ADFA1C AFAD0024 */  sw      $t5, 0x0024($sp)           
/* 01CD0 80ADFA20 0C2B79B5 */  jal     func_80ADE6D4              
/* 01CD4 80ADFA24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CD8 80ADFA28 10000008 */  beq     $zero, $zero, .L80ADFA4C   
/* 01CDC 80ADFA2C 00000000 */  nop
.L80ADFA30:
/* 01CE0 80ADFA30 860E0198 */  lh      $t6, 0x0198($s0)           ## 00000198
/* 01CE4 80ADFA34 15C00005 */  bne     $t6, $zero, .L80ADFA4C     
/* 01CE8 80ADFA38 00000000 */  nop
/* 01CEC 80ADFA3C 0C00B55C */  jal     Actor_Kill
              
/* 01CF0 80ADFA40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01CF4 80ADFA44 1000000E */  beq     $zero, $zero, .L80ADFA80   
/* 01CF8 80ADFA48 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80ADFA4C:
/* 01CFC 80ADFA4C 0C00B638 */  jal     Actor_MoveForward
              
/* 01D00 80ADFA50 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D04 80ADFA54 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01D08 80ADFA58 44810000 */  mtc1    $at, $f0                   ## $f0 = 10.00
/* 01D0C 80ADFA5C 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 01D10 80ADFA60 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01D14 80ADFA64 44060000 */  mfc1    $a2, $f0                   
/* 01D18 80ADFA68 44070000 */  mfc1    $a3, $f0                   
/* 01D1C 80ADFA6C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01D20 80ADFA70 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01D24 80ADFA74 0C00B92D */  jal     func_8002E4B4              
/* 01D28 80ADFA78 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01D2C 80ADFA7C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80ADFA80:
/* 01D30 80ADFA80 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01D34 80ADFA84 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01D38 80ADFA88 03E00008 */  jr      $ra                        
/* 01D3C 80ADFA8C 00000000 */  nop


