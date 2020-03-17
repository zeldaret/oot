glabel BgHakaTrap_Destroy
/* 0029C 8087FF3C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 002A0 8087FF40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 002A4 8087FF44 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 002A8 8087FF48 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 002AC 8087FF4C 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 002B0 8087FF50 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 002B4 8087FF54 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 002B8 8087FF58 10410012 */  beq     $v0, $at, .L8087FFA4       
/* 002BC 8087FF5C 00000000 */  nop
/* 002C0 8087FF60 1040000D */  beq     $v0, $zero, .L8087FF98     
/* 002C4 8087FF64 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 002C8 8087FF68 24A50810 */  addiu   $a1, $a1, 0x0810           ## $a1 = 00000810
/* 002CC 8087FF6C 0C00FB56 */  jal     DynaPolyInfo_Free
              ## DynaPolyInfo_delReserve
/* 002D0 8087FF70 8E06014C */  lw      $a2, 0x014C($s0)           ## 0000014C
/* 002D4 8087FF74 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 002D8 8087FF78 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 002DC 8087FF7C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 002E0 8087FF80 10410003 */  beq     $v0, $at, .L8087FF90       
/* 002E4 8087FF84 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 002E8 8087FF88 54410004 */  bnel    $v0, $at, .L8087FF9C       
/* 002EC 8087FF8C 8FA40024 */  lw      $a0, 0x0024($sp)           
.L8087FF90:
/* 002F0 8087FF90 0C017232 */  jal     func_8005C8C8              
/* 002F4 8087FF94 260501C4 */  addiu   $a1, $s0, 0x01C4           ## $a1 = 000001C4
.L8087FF98:
/* 002F8 8087FF98 8FA40024 */  lw      $a0, 0x0024($sp)           
.L8087FF9C:
/* 002FC 8087FF9C 0C0170EB */  jal     ActorCollider_FreeCylinder
              
/* 00300 8087FFA0 26050178 */  addiu   $a1, $s0, 0x0178           ## $a1 = 00000178
.L8087FFA4:
/* 00304 8087FFA4 0C03E27A */  jal     func_800F89E8              
/* 00308 8087FFA8 2604016C */  addiu   $a0, $s0, 0x016C           ## $a0 = 0000016C
/* 0030C 8087FFAC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00310 8087FFB0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00314 8087FFB4 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00318 8087FFB8 03E00008 */  jr      $ra                        
/* 0031C 8087FFBC 00000000 */  nop


