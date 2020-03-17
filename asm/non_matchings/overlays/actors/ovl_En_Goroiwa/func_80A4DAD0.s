glabel func_80A4DAD0
/* 01E30 80A4DAD0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 01E34 80A4DAD4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01E38 80A4DAD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01E3C 80A4DADC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 01E40 80A4DAE0 90820160 */  lbu     $v0, 0x0160($a0)           ## 00000160
/* 01E44 80A4DAE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01E48 80A4DAE8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01E4C 80A4DAEC 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 01E50 80A4DAF0 11C00017 */  beq     $t6, $zero, .L80A4DB50     
/* 01E54 80A4DAF4 304FFFFD */  andi    $t7, $v0, 0xFFFD           ## $t7 = 00000000
/* 01E58 80A4DAF8 A08F0160 */  sb      $t7, 0x0160($a0)           ## 00000160
/* 01E5C 80A4DAFC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01E60 80A4DB00 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 01E64 80A4DB04 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 01E68 80A4DB08 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01E6C 80A4DB0C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01E70 80A4DB10 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01E74 80A4DB14 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 01E78 80A4DB18 0C00BDB5 */  jal     func_8002F6D4              
/* 01E7C 80A4DB1C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01E80 80A4DB20 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 01E84 80A4DB24 2405083E */  addiu   $a1, $zero, 0x083E         ## $a1 = 0000083E
/* 01E88 80A4DB28 0C00BDF7 */  jal     func_8002F7DC              
/* 01E8C 80A4DB2C 8F241C44 */  lw      $a0, 0x1C44($t9)           ## 00001C44
/* 01E90 80A4DB30 86080018 */  lh      $t0, 0x0018($s0)           ## 00000018
/* 01E94 80A4DB34 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 01E98 80A4DB38 240A0032 */  addiu   $t2, $zero, 0x0032         ## $t2 = 00000032
/* 01E9C 80A4DB3C 31090001 */  andi    $t1, $t0, 0x0001           ## $t1 = 00000000
/* 01EA0 80A4DB40 5521000F */  bnel    $t1, $at, .L80A4DB80       
/* 01EA4 80A4DB44 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01EA8 80A4DB48 1000000C */  beq     $zero, $zero, .L80A4DB7C   
/* 01EAC 80A4DB4C A60A01C8 */  sh      $t2, 0x01C8($s0)           ## 000001C8
.L80A4DB50:
/* 01EB0 80A4DB50 0C293294 */  jal     func_80A4CA50              
/* 01EB4 80A4DB54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EB8 80A4DB58 10400008 */  beq     $v0, $zero, .L80A4DB7C     
/* 01EBC 80A4DB5C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01EC0 80A4DB60 0C29341D */  jal     func_80A4D074              
/* 01EC4 80A4DB64 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 01EC8 80A4DB68 0C293578 */  jal     func_80A4D5E0              
/* 01ECC 80A4DB6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01ED0 80A4DB70 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01ED4 80A4DB74 00000000 */  nop
/* 01ED8 80A4DB78 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A4DB7C:
/* 01EDC 80A4DB7C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A4DB80:
/* 01EE0 80A4DB80 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01EE4 80A4DB84 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 01EE8 80A4DB88 03E00008 */  jr      $ra                        
/* 01EEC 80A4DB8C 00000000 */  nop


