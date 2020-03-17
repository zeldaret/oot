glabel func_809FD5CC
/* 0059C 809FD5CC 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 005A0 809FD5D0 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 005A4 809FD5D4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 005A8 809FD5D8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 809FD5DC 29C10064 */  slti    $at, $t6, 0x0064           
/* 005B0 809FD5E0 10200003 */  beq     $at, $zero, .L809FD5F0     
/* 005B4 809FD5E4 00000000 */  nop
/* 005B8 809FD5E8 10000008 */  beq     $zero, $zero, .L809FD60C   
/* 005BC 809FD5EC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FD5F0:
/* 005C0 809FD5F0 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 005C4 809FD5F4 00000000 */  nop
/* 005C8 809FD5F8 54400004 */  bnel    $v0, $zero, .L809FD60C     
/* 005CC 809FD5FC 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
/* 005D0 809FD600 10000002 */  beq     $zero, $zero, .L809FD60C   
/* 005D4 809FD604 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 005D8 809FD608 24020002 */  addiu   $v0, $zero, 0x0002         ## $v0 = 00000002
.L809FD60C:
/* 005DC 809FD60C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 005E0 809FD610 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 005E4 809FD614 03E00008 */  jr      $ra                        
/* 005E8 809FD618 00000000 */  nop


