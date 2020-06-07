glabel func_809FDDB4
/* 00184 809FDDB4 AFA40000 */  sw      $a0, 0x0000($sp)           
/* 00188 809FDDB8 84A200A4 */  lh      $v0, 0x00A4($a1)           ## 000000A4
/* 0018C 809FDDBC 24010062 */  addiu   $at, $zero, 0x0062         ## $at = 00000062
/* 00190 809FDDC0 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 00194 809FDDC4 14410007 */  bne     $v0, $at, .L809FDDE4       
/* 00198 809FDDC8 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 0019C 809FDDCC 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 001A0 809FDDD0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 001A4 809FDDD4 15C10003 */  bne     $t6, $at, .L809FDDE4       
/* 001A8 809FDDD8 00000000 */  nop
/* 001AC 809FDDDC 03E00008 */  jr      $ra                        
/* 001B0 809FDDE0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809FDDE4:
/* 001B4 809FDDE4 3C038016 */  lui     $v1, %hi(gSaveContext)
/* 001B8 809FDDE8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 001BC 809FDDEC 1441000A */  bne     $v0, $at, .L809FDE18       
/* 001C0 809FDDF0 2463E660 */  addiu   $v1, %lo(gSaveContext)
/* 001C4 809FDDF4 946F0F1A */  lhu     $t7, 0x0F1A($v1)           ## 8015F57A
/* 001C8 809FDDF8 31F80400 */  andi    $t8, $t7, 0x0400           ## $t8 = 00000000
/* 001CC 809FDDFC 57000007 */  bnel    $t8, $zero, .L809FDE1C     
/* 001D0 809FDE00 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001D4 809FDE04 8C790004 */  lw      $t9, 0x0004($v1)           ## 8015E664
/* 001D8 809FDE08 57200004 */  bnel    $t9, $zero, .L809FDE1C     
/* 001DC 809FDE0C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 001E0 809FDE10 03E00008 */  jr      $ra                        
/* 001E4 809FDE14 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809FDE18:
/* 001E8 809FDE18 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FDE1C:
/* 001EC 809FDE1C 03E00008 */  jr      $ra                        
/* 001F0 809FDE20 00000000 */  nop
