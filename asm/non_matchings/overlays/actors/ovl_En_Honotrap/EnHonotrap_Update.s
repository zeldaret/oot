glabel EnHonotrap_Update
/* 00E84 80A5AAB4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00E88 80A5AAB8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00E8C 80A5AABC AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00E90 80A5AAC0 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00E94 80A5AAC4 84820228 */  lh      $v0, 0x0228($a0)           ## 00000228
/* 00E98 80A5AAC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00E9C 80A5AACC 18400002 */  blez    $v0, .L80A5AAD8            
/* 00EA0 80A5AAD0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00EA4 80A5AAD4 A48E0228 */  sh      $t6, 0x0228($a0)           ## 00000228
.L80A5AAD8:
/* 00EA8 80A5AAD8 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00EAC 80A5AADC 55E0000A */  bnel    $t7, $zero, .L80A5AB08     
/* 00EB0 80A5AAE0 8619023C */  lh      $t9, 0x023C($s0)           ## 0000023C
/* 00EB4 80A5AAE4 8E02011C */  lw      $v0, 0x011C($s0)           ## 0000011C
/* 00EB8 80A5AAE8 5040001A */  beql    $v0, $zero, .L80A5AB54     
/* 00EBC 80A5AAEC 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00EC0 80A5AAF0 8C580130 */  lw      $t8, 0x0130($v0)           ## 00000130
/* 00EC4 80A5AAF4 57000017 */  bnel    $t8, $zero, .L80A5AB54     
/* 00EC8 80A5AAF8 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 00ECC 80A5AAFC 10000014 */  beq     $zero, $zero, .L80A5AB50   
/* 00ED0 80A5AB00 AE00011C */  sw      $zero, 0x011C($s0)         ## 0000011C
/* 00ED4 80A5AB04 8619023C */  lh      $t9, 0x023C($s0)           ## 0000023C
.L80A5AB08:
/* 00ED8 80A5AB08 A2000240 */  sb      $zero, 0x0240($s0)         ## 00000240
/* 00EDC 80A5AB0C 27280640 */  addiu   $t0, $t9, 0x0640           ## $t0 = 00000640
/* 00EE0 80A5AB10 A608023C */  sh      $t0, 0x023C($s0)           ## 0000023C
/* 00EE4 80A5AB14 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00EE8 80A5AB18 8604023C */  lh      $a0, 0x023C($s0)           ## 0000023C
/* 00EEC 80A5AB1C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00EF0 80A5AB20 44812000 */  mtc1    $at, $f4                   ## $f4 = 1000.00
/* 00EF4 80A5AB24 3C014416 */  lui     $at, 0x4416                ## $at = 44160000
/* 00EF8 80A5AB28 44814000 */  mtc1    $at, $f8                   ## $f8 = 600.00
/* 00EFC 80A5AB2C 46040182 */  mul.s   $f6, $f0, $f4              
/* 00F00 80A5AB30 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F04 80A5AB34 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 00F08 80A5AB38 46083280 */  add.s   $f10, $f6, $f8             
/* 00F0C 80A5AB3C 0C00B56E */  jal     Actor_SetHeight
              
/* 00F10 80A5AB40 E60A00BC */  swc1    $f10, 0x00BC($s0)          ## 000000BC
/* 00F14 80A5AB44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F18 80A5AB48 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00F1C 80A5AB4C 2405205B */  addiu   $a1, $zero, 0x205B         ## $a1 = 0000205B
.L80A5AB50:
/* 00F20 80A5AB50 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
.L80A5AB54:
/* 00F24 80A5AB54 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F28 80A5AB58 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00F2C 80A5AB5C 0320F809 */  jalr    $ra, $t9                   
/* 00F30 80A5AB60 00000000 */  nop
/* 00F34 80A5AB64 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00F38 80A5AB68 55200020 */  bnel    $t1, $zero, .L80A5ABEC     
/* 00F3C 80A5AB6C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F40 80A5AB70 92020161 */  lbu     $v0, 0x0161($s0)           ## 00000161
/* 00F44 80A5AB74 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00F48 80A5AB78 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00F4C 80A5AB7C 304A0002 */  andi    $t2, $v0, 0x0002           ## $t2 = 00000000
/* 00F50 80A5AB80 1140000D */  beq     $t2, $zero, .L80A5ABB8     
/* 00F54 80A5AB84 3C0680A6 */  lui     $a2, %hi(D_80A5B048)       ## $a2 = 80A60000
/* 00F58 80A5AB88 3C0780A6 */  lui     $a3, %hi(D_80A5B054)       ## $a3 = 80A60000
/* 00F5C 80A5AB8C 240B000F */  addiu   $t3, $zero, 0x000F         ## $t3 = 0000000F
/* 00F60 80A5AB90 240C0008 */  addiu   $t4, $zero, 0x0008         ## $t4 = 00000008
/* 00F64 80A5AB94 AFAC0014 */  sw      $t4, 0x0014($sp)           
/* 00F68 80A5AB98 AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 00F6C 80A5AB9C 24E7B054 */  addiu   $a3, $a3, %lo(D_80A5B054)  ## $a3 = 80A5B054
/* 00F70 80A5ABA0 0C00A3A1 */  jal     func_80028E84              
/* 00F74 80A5ABA4 24C6B048 */  addiu   $a2, $a2, %lo(D_80A5B048)  ## $a2 = 80A5B048
/* 00F78 80A5ABA8 0C00B55C */  jal     Actor_Kill
              
/* 00F7C 80A5ABAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F80 80A5ABB0 1000000E */  beq     $zero, $zero, .L80A5ABEC   
/* 00F84 80A5ABB4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5ABB8:
/* 00F88 80A5ABB8 860D022A */  lh      $t5, 0x022A($s0)           ## 0000022A
/* 00F8C 80A5ABBC 304EFFFD */  andi    $t6, $v0, 0xFFFD           ## $t6 = 00000000
/* 00F90 80A5ABC0 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 00F94 80A5ABC4 29A10003 */  slti    $at, $t5, 0x0003           
/* 00F98 80A5ABC8 50200008 */  beql    $at, $zero, .L80A5ABEC     
/* 00F9C 80A5ABCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00FA0 80A5ABD0 A20E0161 */  sb      $t6, 0x0161($s0)           ## 00000161
/* 00FA4 80A5ABD4 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00FA8 80A5ABD8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00FAC 80A5ABDC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00FB0 80A5ABE0 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00FB4 80A5ABE4 00812821 */  addu    $a1, $a0, $at              
/* 00FB8 80A5ABE8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A5ABEC:
/* 00FBC 80A5ABEC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00FC0 80A5ABF0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00FC4 80A5ABF4 03E00008 */  jr      $ra                        
/* 00FC8 80A5ABF8 00000000 */  nop
