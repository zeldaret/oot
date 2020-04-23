glabel func_80A443E0
/* 016B0 80A443E0 3C0E8016 */  lui     $t6, %hi(gSaveContext+4)
/* 016B4 80A443E4 8DCEE664 */  lw      $t6, %lo(gSaveContext+4)($t6)
/* 016B8 80A443E8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 016BC 80A443EC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 016C0 80A443F0 11C00011 */  beq     $t6, $zero, .L80A44438     
/* 016C4 80A443F4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 016C8 80A443F8 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 016CC 80A443FC 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 016D0 80A44400 10400003 */  beq     $v0, $zero, .L80A44410     
/* 016D4 80A44404 3C0F8016 */  lui     $t7, %hi(gSaveContext+0xf14)
/* 016D8 80A44408 1000000C */  beq     $zero, $zero, .L80A4443C   
/* 016DC 80A4440C 2402302F */  addiu   $v0, $zero, 0x302F         ## $v0 = 0000302F
.L80A44410:
/* 016E0 80A44410 95EFF574 */  lhu     $t7, %lo(gSaveContext+0xf14)($t7)
/* 016E4 80A44414 24033024 */  addiu   $v1, $zero, 0x3024         ## $v1 = 00003024
/* 016E8 80A44418 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 016EC 80A4441C 13000004 */  beq     $t8, $zero, .L80A44430     
/* 016F0 80A44420 00000000 */  nop
/* 016F4 80A44424 24033025 */  addiu   $v1, $zero, 0x3025         ## $v1 = 00003025
/* 016F8 80A44428 10000004 */  beq     $zero, $zero, .L80A4443C   
/* 016FC 80A4442C 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003025
.L80A44430:
/* 01700 80A44430 10000002 */  beq     $zero, $zero, .L80A4443C   
/* 01704 80A44434 3062FFFF */  andi    $v0, $v1, 0xFFFF           ## $v0 = 00003025
.L80A44438:
/* 01708 80A44438 24023043 */  addiu   $v0, $zero, 0x3043         ## $v0 = 00003043
.L80A4443C:
/* 0170C 80A4443C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01710 80A44440 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01714 80A44444 03E00008 */  jr      $ra                        
/* 01718 80A44448 00000000 */  nop
