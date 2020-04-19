glabel func_80A1DDA8
/* 00598 80A1DDA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0059C 80A1DDAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005A0 80A1DDB0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 005A4 80A1DDB4 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 005A8 80A1DDB8 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 005AC 80A1DDBC 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 005B0 80A1DDC0 8C4E0680 */  lw      $t6, 0x0680($v0)           ## 00000680
/* 005B4 80A1DDC4 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 005B8 80A1DDC8 AC4F0680 */  sw      $t7, 0x0680($v0)           ## 00000680
/* 005BC 80A1DDCC 0C042F6F */  jal     func_8010BDBC              
/* 005C0 80A1DDD0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 005C4 80A1DDD4 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 005C8 80A1DDD8 5441000F */  bnel    $v0, $at, .L80A1DE18       
/* 005CC 80A1DDDC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005D0 80A1DDE0 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 005D4 80A1DDE4 24040004 */  addiu   $a0, $zero, 0x0004         ## $a0 = 00000004
/* 005D8 80A1DDE8 945802A8 */  lhu     $t8, 0x02A8($v0)           ## 000002A8
/* 005DC 80A1DDEC 3319FFFD */  andi    $t9, $t8, 0xFFFD           ## $t9 = 00000000
/* 005E0 80A1DDF0 0C03B616 */  jal     func_800ED858              
/* 005E4 80A1DDF4 A45902A8 */  sh      $t9, 0x02A8($v0)           ## 000002A8
/* 005E8 80A1DDF8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 005EC 80A1DDFC 0C042F56 */  jal     func_8010BD58              
/* 005F0 80A1DE00 2405000D */  addiu   $a1, $zero, 0x000D         ## $a1 = 0000000D
/* 005F4 80A1DE04 8FA90018 */  lw      $t1, 0x0018($sp)           
/* 005F8 80A1DE08 3C0880A2 */  lui     $t0, %hi(func_80A1DD44)    ## $t0 = 80A20000
/* 005FC 80A1DE0C 2508DD44 */  addiu   $t0, $t0, %lo(func_80A1DD44) ## $t0 = 80A1DD44
/* 00600 80A1DE10 AD2802AC */  sw      $t0, 0x02AC($t1)           ## 000002AC
/* 00604 80A1DE14 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A1DE18:
/* 00608 80A1DE18 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0060C 80A1DE1C 03E00008 */  jr      $ra                        
/* 00610 80A1DE20 00000000 */  nop
