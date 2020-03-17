glabel func_80B0DB00
/* 01D50 80B0DB00 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01D54 80B0DB04 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01D58 80B0DB08 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 01D5C 80B0DB0C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01D60 80B0DB10 0C00B638 */  jal     Actor_MoveForward
              
/* 01D64 80B0DB14 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01D68 80B0DB18 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 01D6C 80B0DB1C 861800B8 */  lh      $t8, 0x00B8($s0)           ## 000000B8
/* 01D70 80B0DB20 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 01D74 80B0DB24 44810000 */  mtc1    $at, $f0                   ## $f0 = 20.00
/* 01D78 80B0DB28 25CF1000 */  addiu   $t7, $t6, 0x1000           ## $t7 = 00001000
/* 01D7C 80B0DB2C 27191000 */  addiu   $t9, $t8, 0x1000           ## $t9 = 00001000
/* 01D80 80B0DB30 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01D84 80B0DB34 A60F00B4 */  sh      $t7, 0x00B4($s0)           ## 000000B4
/* 01D88 80B0DB38 A61900B8 */  sh      $t9, 0x00B8($s0)           ## 000000B8
/* 01D8C 80B0DB3C 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 01D90 80B0DB40 44060000 */  mfc1    $a2, $f0                   
/* 01D94 80B0DB44 44070000 */  mfc1    $a3, $f0                   
/* 01D98 80B0DB48 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01D9C 80B0DB4C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01DA0 80B0DB50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01DA4 80B0DB54 0C00B92D */  jal     func_8002E4B4              
/* 01DA8 80B0DB58 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01DAC 80B0DB5C 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
/* 01DB0 80B0DB60 30690001 */  andi    $t1, $v1, 0x0001           ## $t1 = 00000000
/* 01DB4 80B0DB64 51200041 */  beql    $t1, $zero, .L80B0DC6C     
/* 01DB8 80B0DB68 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01DBC 80B0DB6C C6060060 */  lwc1    $f6, 0x0060($s0)           ## 00000060
/* 01DC0 80B0DB70 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
/* 01DC4 80B0DB74 3C01C6FA */  lui     $at, 0xC6FA                ## $at = C6FA0000
/* 01DC8 80B0DB78 4606403E */  c.le.s  $f8, $f6                   
/* 01DCC 80B0DB7C 00000000 */  nop
/* 01DD0 80B0DB80 4503003A */  bc1tl   .L80B0DC6C                 
/* 01DD4 80B0DB84 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01DD8 80B0DB88 C6000080 */  lwc1    $f0, 0x0080($s0)           ## 00000080
/* 01DDC 80B0DB8C 44815000 */  mtc1    $at, $f10                  ## $f10 = -32000.00
/* 01DE0 80B0DB90 3C0146FA */  lui     $at, 0x46FA                ## $at = 46FA0000
/* 01DE4 80B0DB94 460A003E */  c.le.s  $f0, $f10                  
/* 01DE8 80B0DB98 00000000 */  nop
/* 01DEC 80B0DB9C 45010007 */  bc1t    .L80B0DBBC                 
/* 01DF0 80B0DBA0 00000000 */  nop
/* 01DF4 80B0DBA4 44818000 */  mtc1    $at, $f16                  ## $f16 = 32000.00
/* 01DF8 80B0DBA8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01DFC 80B0DBAC 4600803E */  c.le.s  $f16, $f0                  
/* 01E00 80B0DBB0 00000000 */  nop
/* 01E04 80B0DBB4 45020006 */  bc1fl   .L80B0DBD0                 
/* 01E08 80B0DBB8 8602038A */  lh      $v0, 0x038A($s0)           ## 0000038A
.L80B0DBBC:
/* 01E0C 80B0DBBC 0C00B55C */  jal     Actor_Kill
              
/* 01E10 80B0DBC0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01E14 80B0DBC4 10000029 */  beq     $zero, $zero, .L80B0DC6C   
/* 01E18 80B0DBC8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01E1C 80B0DBCC 8602038A */  lh      $v0, 0x038A($s0)           ## 0000038A
.L80B0DBD0:
/* 01E20 80B0DBD0 306AFFFE */  andi    $t2, $v1, 0xFFFE           ## $t2 = 00000000
/* 01E24 80B0DBD4 A60A0088 */  sh      $t2, 0x0088($s0)           ## 00000088
/* 01E28 80B0DBD8 14400006 */  bne     $v0, $zero, .L80B0DBF4     
/* 01E2C 80B0DBDC 3C0B80B1 */  lui     $t3, %hi(func_80B0DC7C)    ## $t3 = 80B10000
/* 01E30 80B0DBE0 256BDC7C */  addiu   $t3, $t3, %lo(func_80B0DC7C) ## $t3 = 80B0DC7C
/* 01E34 80B0DBE4 240C000A */  addiu   $t4, $zero, 0x000A         ## $t4 = 0000000A
/* 01E38 80B0DBE8 AE0B0190 */  sw      $t3, 0x0190($s0)           ## 00000190
/* 01E3C 80B0DBEC 1000000D */  beq     $zero, $zero, .L80B0DC24   
/* 01E40 80B0DBF0 A60C0394 */  sh      $t4, 0x0394($s0)           ## 00000394
.L80B0DBF4:
/* 01E44 80B0DBF4 44829000 */  mtc1    $v0, $f18                  ## $f18 = 0.00
/* 01E48 80B0DBF8 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 01E4C 80B0DBFC 44813000 */  mtc1    $at, $f6                   ## $f6 = 8.00
/* 01E50 80B0DC00 46809120 */  cvt.s.w $f4, $f18                  
/* 01E54 80B0DC04 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01E58 80B0DC08 44815000 */  mtc1    $at, $f10                  ## $f10 = 0.50
/* 01E5C 80B0DC0C 244DFFFF */  addiu   $t5, $v0, 0xFFFF           ## $t5 = FFFFFFFF
/* 01E60 80B0DC10 A60D038A */  sh      $t5, 0x038A($s0)           ## 0000038A
/* 01E64 80B0DC14 46062202 */  mul.s   $f8, $f4, $f6              
/* 01E68 80B0DC18 00000000 */  nop
/* 01E6C 80B0DC1C 460A4402 */  mul.s   $f16, $f8, $f10            
/* 01E70 80B0DC20 E6100060 */  swc1    $f16, 0x0060($s0)          ## 00000060
.L80B0DC24:
/* 01E74 80B0DC24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 01E78 80B0DC28 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 01E7C 80B0DC2C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 01E80 80B0DC30 44819000 */  mtc1    $at, $f18                  ## $f18 = 2.00
/* 01E84 80B0DC34 240E000C */  addiu   $t6, $zero, 0x000C         ## $t6 = 0000000C
/* 01E88 80B0DC38 240F0078 */  addiu   $t7, $zero, 0x0078         ## $t7 = 00000078
/* 01E8C 80B0DC3C 2418000A */  addiu   $t8, $zero, 0x000A         ## $t8 = 0000000A
/* 01E90 80B0DC40 AFB8001C */  sw      $t8, 0x001C($sp)           
/* 01E94 80B0DC44 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 01E98 80B0DC48 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 01E9C 80B0DC4C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 01EA0 80B0DC50 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01EA4 80B0DC54 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 01EA8 80B0DC58 3C074180 */  lui     $a3, 0x4180                ## $a3 = 41800000
/* 01EAC 80B0DC5C AFA00020 */  sw      $zero, 0x0020($sp)         
/* 01EB0 80B0DC60 0C00CC98 */  jal     func_80033260              
/* 01EB4 80B0DC64 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 01EB8 80B0DC68 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80B0DC6C:
/* 01EBC 80B0DC6C 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 01EC0 80B0DC70 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01EC4 80B0DC74 03E00008 */  jr      $ra                        
/* 01EC8 80B0DC78 00000000 */  nop


