glabel func_80A4DC00
/* 01F60 80A4DC00 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01F64 80A4DC04 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01F68 80A4DC08 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01F6C 80A4DC0C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01F70 80A4DC10 90820160 */  lbu     $v0, 0x0160($a0)           ## 00000160
/* 01F74 80A4DC14 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F78 80A4DC18 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01F7C 80A4DC1C 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 01F80 80A4DC20 11C00017 */  beq     $t6, $zero, .L80A4DC80     
/* 01F84 80A4DC24 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 01F88 80A4DC28 A08F0160 */  sb      $t7, 0x0160($a0)           ## 00000160
/* 01F8C 80A4DC2C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01F90 80A4DC30 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 01F94 80A4DC34 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01F98 80A4DC38 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01F9C 80A4DC3C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01FA0 80A4DC40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01FA4 80A4DC44 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01FA8 80A4DC48 0C00BDB5 */  jal     func_8002F6D4              
/* 01FAC 80A4DC4C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01FB0 80A4DC50 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 01FB4 80A4DC54 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01FB8 80A4DC58 0C00BDF7 */  jal     func_8002F7DC              
/* 01FBC 80A4DC5C 8F241C44 */  lw      $a0, 0x1C44($t9)           ## 00001C44
/* 01FC0 80A4DC60 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
/* 01FC4 80A4DC64 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01FC8 80A4DC68 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 01FCC 80A4DC6C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01FD0 80A4DC70 55210011 */  bnel    $t1, $at, .L80A4DCB8       
/* 01FD4 80A4DC74 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01FD8 80A4DC78 1000000E */  beq     $zero, $zero, .L80A4DCB4   
/* 01FDC 80A4DC7C A60A01C8 */  sh      $t2, 0x01C8($s0)           ## 000001C8
.L80A4DC80:
/* 01FE0 80A4DC80 0C2932DE */  jal     func_80A4CB78              
/* 01FE4 80A4DC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FE8 80A4DC88 1040000A */  beq     $v0, $zero, .L80A4DCB4     
/* 01FEC 80A4DC8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01FF0 80A4DC90 0C29341D */  jal     func_80A4D074              
/* 01FF4 80A4DC94 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01FF8 80A4DC98 0C293578 */  jal     func_80A4D5E0              
/* 01FFC 80A4DC9C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02000 80A4DCA0 920B01D3 */  lbu     $t3, 0x01D3($s0)           ## 000001D3
/* 02004 80A4DCA4 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 02008 80A4DCA8 316CFFF7 */  andi    $t4, $t3, 0xFFF7           ## $t4 = 00000000
/* 0200C 80A4DCAC A20C01D3 */  sb      $t4, 0x01D3($s0)           ## 000001D3
/* 02010 80A4DCB0 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A4DCB4:
/* 02014 80A4DCB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A4DCB8:
/* 02018 80A4DCB8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 0201C 80A4DCBC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 02020 80A4DCC0 03E00008 */  jr      $ra                        
/* 02024 80A4DCC4 00000000 */  nop
