glabel func_80B482B8
/* 04268 80B482B8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0426C 80B482BC AFB00028 */  sw      $s0, 0x0028($sp)
/* 04270 80B482C0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 04274 80B482C4 AFBF002C */  sw      $ra, 0x002C($sp)
/* 04278 80B482C8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0427C 80B482CC 8605008A */  lh      $a1, 0x008A($s0)           ## 0000008A
/* 04280 80B482D0 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 04284 80B482D4 AFAE0010 */  sw      $t6, 0x0010($sp)
/* 04288 80B482D8 248400B6 */  addiu   $a0, $a0, 0x00B6           ## $a0 = 000000B6
/* 0428C 80B482DC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 04290 80B482E0 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS

/* 04294 80B482E4 24070FA0 */  addiu   $a3, $zero, 0x0FA0         ## $a3 = 00000FA0
/* 04298 80B482E8 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 0429C 80B482EC 44813000 */  mtc1    $at, $f6                   ## $f6 = 5.00
/* 042A0 80B482F0 C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 042A4 80B482F4 8FA4003C */  lw      $a0, 0x003C($sp)
/* 042A8 80B482F8 4604303E */  c.le.s  $f6, $f4
/* 042AC 80B482FC 00000000 */  nop
/* 042B0 80B48300 45020007 */  bc1fl   .L80B48320
/* 042B4 80B48304 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 042B8 80B48308 0C00D56E */  jal     func_800355B8
/* 042BC 80B4830C 260504F0 */  addiu   $a1, $s0, 0x04F0           ## $a1 = 000004F0
/* 042C0 80B48310 8FA4003C */  lw      $a0, 0x003C($sp)
/* 042C4 80B48314 0C00D56E */  jal     func_800355B8
/* 042C8 80B48318 260504E4 */  addiu   $a1, $s0, 0x04E4           ## $a1 = 000004E4
/* 042CC 80B4831C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
.L80B48320:
/* 042D0 80B48320 0C02927F */  jal     SkelAnime_Update

/* 042D4 80B48324 AFA40030 */  sw      $a0, 0x0030($sp)
/* 042D8 80B48328 10400029 */  beq     $v0, $zero, .L80B483D0
/* 042DC 80B4832C 8FA40030 */  lw      $a0, 0x0030($sp)
/* 042E0 80B48330 8E0F03F0 */  lw      $t7, 0x03F0($s0)           ## 000003F0
/* 042E4 80B48334 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 042E8 80B48338 24A5A3D4 */  addiu   $a1, $a1, 0xA3D4           ## $a1 = 0600A3D4
/* 042EC 80B4833C 15E0000F */  bne     $t7, $zero, .L80B4837C
/* 042F0 80B48340 3C064040 */  lui     $a2, 0x4040                ## $a2 = 40400000
/* 042F4 80B48344 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 042F8 80B48348 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 042FC 80B4834C 44814000 */  mtc1    $at, $f8                   ## $f8 = 13.00
/* 04300 80B48350 3C01C080 */  lui     $at, 0xC080                ## $at = C0800000
/* 04304 80B48354 44815000 */  mtc1    $at, $f10                  ## $f10 = -4.00
/* 04308 80B48358 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 0430C 80B4835C 44070000 */  mfc1    $a3, $f0
/* 04310 80B48360 AFB80014 */  sw      $t8, 0x0014($sp)
/* 04314 80B48364 E7A80010 */  swc1    $f8, 0x0010($sp)
/* 04318 80B48368 0C029468 */  jal     Animation_Change

/* 0431C 80B4836C E7AA0018 */  swc1    $f10, 0x0018($sp)
/* 04320 80B48370 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 04324 80B48374 10000016 */  beq     $zero, $zero, .L80B483D0
/* 04328 80B48378 AE1903F0 */  sw      $t9, 0x03F0($s0)           ## 000003F0
.L80B4837C:
/* 0432C 80B4837C 96080088 */  lhu     $t0, 0x0088($s0)           ## 00000088
/* 04330 80B48380 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04334 80B48384 31090003 */  andi    $t1, $t0, 0x0003           ## $t1 = 00000000
/* 04338 80B48388 51200012 */  beql    $t1, $zero, .L80B483D4
/* 0433C 80B4838C 8FBF002C */  lw      $ra, 0x002C($sp)
/* 04340 80B48390 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 04344 80B48394 8602008A */  lh      $v0, 0x008A($s0)           ## 0000008A
/* 04348 80B48398 C6100080 */  lwc1    $f16, 0x0080($s0)          ## 00000080
/* 0434C 80B4839C E6000060 */  swc1    $f0, 0x0060($s0)           ## 00000060
/* 04350 80B483A0 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 04354 80B483A4 A6020032 */  sh      $v0, 0x0032($s0)           ## 00000032
/* 04358 80B483A8 E6000068 */  swc1    $f0, 0x0068($s0)           ## 00000068
/* 0435C 80B483AC 0C2D1A89 */  jal     func_80B46A24
/* 04360 80B483B0 E6100028 */  swc1    $f16, 0x0028($s0)          ## 00000028
/* 04364 80B483B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 04368 80B483B8 0C00BE0A */  jal     Audio_PlayActorSound2

/* 0436C 80B483BC 2405382A */  addiu   $a1, $zero, 0x382A         ## $a1 = 0000382A
/* 04370 80B483C0 3C014150 */  lui     $at, 0x4150                ## $at = 41500000
/* 04374 80B483C4 44819000 */  mtc1    $at, $f18                  ## $f18 = 13.00
/* 04378 80B483C8 00000000 */  nop
/* 0437C 80B483CC E6120164 */  swc1    $f18, 0x0164($s0)          ## 00000164
.L80B483D0:
/* 04380 80B483D0 8FBF002C */  lw      $ra, 0x002C($sp)
.L80B483D4:
/* 04384 80B483D4 8FB00028 */  lw      $s0, 0x0028($sp)
/* 04388 80B483D8 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0438C 80B483DC 03E00008 */  jr      $ra
/* 04390 80B483E0 00000000 */  nop
