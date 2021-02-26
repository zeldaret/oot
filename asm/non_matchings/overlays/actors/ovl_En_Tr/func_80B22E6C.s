glabel func_80B22E6C
/* 0017C 80B22E6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00180 80B22E70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00184 80B22E74 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00188 80B22E78 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 0018C 80B22E7C 948302D6 */  lhu     $v1, 0x02D6($a0)           ## 000002D6
/* 00190 80B22E80 2401000B */  addiu   $at, $zero, 0x000B         ## $at = 0000000B
/* 00194 80B22E84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00198 80B22E88 14610014 */  bne     $v1, $at, .L80B22EDC       
/* 0019C 80B22E8C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 001A0 80B22E90 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 001A4 80B22E94 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 001A8 80B22E98 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 001AC 80B22E9C 15C00004 */  bne     $t6, $zero, .L80B22EB0     
/* 001B0 80B22EA0 3C0F8016 */  lui     $t7, %hi(gSaveContext+0x1360)
/* 001B4 80B22EA4 8DEFF9C0 */  lw      $t7, %lo(gSaveContext+0x1360)($t7)
/* 001B8 80B22EA8 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 001BC 80B22EAC 15E1000B */  bne     $t7, $at, .L80B22EDC       
.L80B22EB0:
/* 001C0 80B22EB0 3C188013 */  lui     $t8, %hi(D_801333E8)
/* 001C4 80B22EB4 271833E8 */  addiu   $t8, %lo(D_801333E8)
/* 001C8 80B22EB8 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 001CC 80B22EBC 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 001D0 80B22EC0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 001D4 80B22EC4 240439B3 */  addiu   $a0, $zero, 0x39B3         ## $a0 = 000039B3
/* 001D8 80B22EC8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 001DC 80B22ECC 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 001E0 80B22ED0 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 001E4 80B22ED4 960302D6 */  lhu     $v1, 0x02D6($s0)           ## 000002D6
/* 001E8 80B22ED8 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L80B22EDC:
/* 001EC 80B22EDC 18400004 */  blez    $v0, .L80B22EF0            
/* 001F0 80B22EE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001F4 80B22EE4 2479FFFF */  addiu   $t9, $v1, 0xFFFF           ## $t9 = FFFFFFFF
/* 001F8 80B22EE8 10000005 */  beq     $zero, $zero, .L80B22F00   
/* 001FC 80B22EEC A61902D6 */  sh      $t9, 0x02D6($s0)           ## 000002D6
.L80B22EF0:
/* 00200 80B22EF0 8E08011C */  lw      $t0, 0x011C($s0)           ## 0000011C
/* 00204 80B22EF4 11000002 */  beq     $t0, $zero, .L80B22F00     
/* 00208 80B22EF8 00000000 */  nop
/* 0020C 80B22EFC AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
.L80B22F00:
/* 00210 80B22F00 0C00BE5D */  jal     func_8002F974              
/* 00214 80B22F04 2405317B */  addiu   $a1, $zero, 0x317B         ## $a1 = 0000317B
/* 00218 80B22F08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0021C 80B22F0C 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00220 80B22F10 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00224 80B22F14 03E00008 */  jr      $ra                        
/* 00228 80B22F18 00000000 */  nop
