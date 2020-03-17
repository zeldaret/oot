glabel func_80B9E084
/* 00E74 80B9E084 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E78 80B9E088 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E7C 80B9E08C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00E80 80B9E090 908E016E */  lbu     $t6, 0x016E($a0)           ## 0000016E
/* 00E84 80B9E094 51C0000B */  beql    $t6, $zero, .L80B9E0C4     
/* 00E88 80B9E098 84990170 */  lh      $t9, 0x0170($a0)           ## 00000170
/* 00E8C 80B9E09C 0C016C66 */  jal     func_8005B198              
/* 00E90 80B9E0A0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00E94 80B9E0A4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00E98 80B9E0A8 908F0002 */  lbu     $t7, 0x0002($a0)           ## 00000002
/* 00E9C 80B9E0AC 504F0005 */  beql    $v0, $t7, .L80B9E0C4       
/* 00EA0 80B9E0B0 84990170 */  lh      $t9, 0x0170($a0)           ## 00000170
/* 00EA4 80B9E0B4 8498016C */  lh      $t8, 0x016C($a0)           ## 0000016C
/* 00EA8 80B9E0B8 5F00000E */  bgtzl   $t8, .L80B9E0F4            
/* 00EAC 80B9E0BC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EB0 80B9E0C0 84990170 */  lh      $t9, 0x0170($a0)           ## 00000170
.L80B9E0C4:
/* 00EB4 80B9E0C4 27280001 */  addiu   $t0, $t9, 0x0001           ## $t0 = 00000001
/* 00EB8 80B9E0C8 A4880170 */  sh      $t0, 0x0170($a0)           ## 00000170
/* 00EBC 80B9E0CC 84890170 */  lh      $t1, 0x0170($a0)           ## 00000170
/* 00EC0 80B9E0D0 29210003 */  slti    $at, $t1, 0x0003           
/* 00EC4 80B9E0D4 54200007 */  bnel    $at, $zero, .L80B9E0F4     
/* 00EC8 80B9E0D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ECC 80B9E0DC 0C2E7840 */  jal     func_80B9E100              
/* 00ED0 80B9E0E0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00ED4 80B9E0E4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00ED8 80B9E0E8 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00EDC 80B9E0EC 24052815 */  addiu   $a1, $zero, 0x2815         ## $a1 = 00002815
/* 00EE0 80B9E0F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9E0F4:
/* 00EE4 80B9E0F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE8 80B9E0F8 03E00008 */  jr      $ra                        
/* 00EEC 80B9E0FC 00000000 */  nop


