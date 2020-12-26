glabel func_809BDAE8
/* 00E88 809BDAE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00E8C 809BDAEC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00E90 809BDAF0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E94 809BDAF4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00E98 809BDAF8 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00E9C 809BDAFC 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 00EA0 809BDB00 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 00EA4 809BDB04 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 00EA8 809BDB08 24A54000 */  addiu   $a1, $a1, 0x4000           ## $a1 = 00004000
/* 00EAC 809BDB0C 00052C00 */  sll     $a1, $a1, 16               
/* 00EB0 809BDB10 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 00EB4 809BDB14 00052C03 */  sra     $a1, $a1, 16               
/* 00EB8 809BDB18 50400019 */  beql    $v0, $zero, .L809BDB80     
/* 00EBC 809BDB1C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EC0 809BDB20 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
/* 00EC4 809BDB24 10400003 */  beq     $v0, $zero, .L809BDB34     
/* 00EC8 809BDB28 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00ECC 809BDB2C A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 00ED0 809BDB30 86020196 */  lh      $v0, 0x0196($s0)           ## 00000196
.L809BDB34:
/* 00ED4 809BDB34 54400012 */  bnel    $v0, $zero, .L809BDB80     
/* 00ED8 809BDB38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00EDC 809BDB3C 0C26F38F */  jal     func_809BCE3C              
/* 00EE0 809BDB40 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00EE4 809BDB44 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00EE8 809BDB48 C6040028 */  lwc1    $f4, 0x0028($s0)           ## 00000028
/* 00EEC 809BDB4C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00EF0 809BDB50 24070005 */  addiu   $a3, $zero, 0x0005         ## $a3 = 00000005
/* 00EF4 809BDB54 24851C24 */  addiu   $a1, $a0, 0x1C24           ## $a1 = 00001C24
/* 00EF8 809BDB58 0C00CDD2 */  jal     Actor_ChangeType
              
/* 00EFC 809BDB5C E604000C */  swc1    $f4, 0x000C($s0)           ## 0000000C
/* 00F00 809BDB60 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 00F04 809BDB64 A60F001C */  sh      $t7, 0x001C($s0)           ## 0000001C
/* 00F08 809BDB68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F0C 809BDB6C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F10 809BDB70 24053906 */  addiu   $a1, $zero, 0x3906         ## $a1 = 00003906
/* 00F14 809BDB74 0C26F4F8 */  jal     func_809BD3E0              
/* 00F18 809BDB78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F1C 809BDB7C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809BDB80:
/* 00F20 809BDB80 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00F24 809BDB84 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00F28 809BDB88 03E00008 */  jr      $ra                        
/* 00F2C 809BDB8C 00000000 */  nop
