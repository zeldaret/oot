glabel func_80B00390
/* 020E0 80B00390 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 020E4 80B00394 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 020E8 80B00398 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 020EC 80B0039C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 020F0 80B003A0 0C042F6F */  jal     func_8010BDBC              
/* 020F4 80B003A4 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 020F8 80B003A8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 020FC 80B003AC 5441000E */  bnel    $v0, $at, .L80B003E8       
/* 02100 80B003B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 02104 80B003B4 0C041AF2 */  jal     func_80106BC8              
/* 02108 80B003B8 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 0210C 80B003BC 10400009 */  beq     $v0, $zero, .L80B003E4     
/* 02110 80B003C0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02114 80B003C4 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 02118 80B003C8 0C00B7D5 */  jal     func_8002DF54              
/* 0211C 80B003CC 24060007 */  addiu   $a2, $zero, 0x0007         ## $a2 = 00000007
/* 02120 80B003D0 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 02124 80B003D4 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 02128 80B003D8 A1EE02D2 */  sb      $t6, 0x02D2($t7)           ## 000002D2
/* 0212C 80B003DC 0C2BFBA1 */  jal     func_80AFEE84              
/* 02130 80B003E0 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80B003E4:
/* 02134 80B003E4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B003E8:
/* 02138 80B003E8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0213C 80B003EC 03E00008 */  jr      $ra                        
/* 02140 80B003F0 00000000 */  nop
