glabel func_80B4AF18
/* 003D8 80B4AF18 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 003DC 80B4AF1C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 003E0 80B4AF20 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 003E4 80B4AF24 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 003E8 80B4AF28 8CAE1C44 */  lw      $t6, 0x1C44($a1)           ## 00001C44
/* 003EC 80B4AF2C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 003F0 80B4AF30 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 003F4 80B4AF34 AFAE003C */  sw      $t6, 0x003C($sp)           
/* 003F8 80B4AF38 8E180038 */  lw      $t8, 0x0038($s0)           ## 00000038
/* 003FC 80B4AF3C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00400 80B4AF40 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00404 80B4AF44 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 00408 80B4AF48 8E0F003C */  lw      $t7, 0x003C($s0)           ## 0000003C
/* 0040C 80B4AF4C 26060200 */  addiu   $a2, $s0, 0x0200           ## $a2 = 00000200
/* 00410 80B4AF50 26070206 */  addiu   $a3, $s0, 0x0206           ## $a3 = 00000206
/* 00414 80B4AF54 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00418 80B4AF58 8E180040 */  lw      $t8, 0x0040($s0)           ## 00000040
/* 0041C 80B4AF5C 0C00E0A4 */  jal     func_80038290              
/* 00420 80B4AF60 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00424 80B4AF64 861901E6 */  lh      $t9, 0x01E6($s0)           ## 000001E6
/* 00428 80B4AF68 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0042C 80B4AF6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00430 80B4AF70 13200007 */  beq     $t9, $zero, .L80B4AF90     
/* 00434 80B4AF74 00000000 */  nop
/* 00438 80B4AF78 0C00BCCD */  jal     func_8002F334              
/* 0043C 80B4AF7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00440 80B4AF80 50400014 */  beql    $v0, $zero, .L80B4AFD4     
/* 00444 80B4AF84 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00448 80B4AF88 10000011 */  beq     $zero, $zero, .L80B4AFD0   
/* 0044C 80B4AF8C A60001E6 */  sh      $zero, 0x01E6($s0)         ## 000001E6
.L80B4AF90:
/* 00450 80B4AF90 0C00BC65 */  jal     func_8002F194              
/* 00454 80B4AF94 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00458 80B4AF98 10400004 */  beq     $v0, $zero, .L80B4AFAC     
/* 0045C 80B4AF9C 8FA9003C */  lw      $t1, 0x003C($sp)           
/* 00460 80B4AFA0 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 00464 80B4AFA4 1000000A */  beq     $zero, $zero, .L80B4AFD0   
/* 00468 80B4AFA8 A60801E6 */  sh      $t0, 0x01E6($s0)           ## 000001E6
.L80B4AFAC:
/* 0046C 80B4AFAC C5240028 */  lwc1    $f4, 0x0028($t1)           ## 00000028
/* 00470 80B4AFB0 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00474 80B4AFB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00478 80B4AFB8 4604303E */  c.le.s  $f6, $f4                   
/* 0047C 80B4AFBC 00000000 */  nop
/* 00480 80B4AFC0 45020004 */  bc1fl   .L80B4AFD4                 
/* 00484 80B4AFC4 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 00488 80B4AFC8 0C00BCBD */  jal     func_8002F2F4              
/* 0048C 80B4AFCC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80B4AFD0:
/* 00490 80B4AFD0 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
.L80B4AFD4:
/* 00494 80B4AFD4 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 00498 80B4AFD8 AFA60034 */  sw      $a2, 0x0034($sp)           
/* 0049C 80B4AFDC 0C0189B7 */  jal     Collider_CylinderUpdate
              
/* 004A0 80B4AFE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004A4 80B4AFE4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 004A8 80B4AFE8 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 004AC 80B4AFEC 8FA60034 */  lw      $a2, 0x0034($sp)           
/* 004B0 80B4AFF0 02212821 */  addu    $a1, $s1, $at              
/* 004B4 80B4AFF4 0C017713 */  jal     CollisionCheck_SetOC
              ## CollisionCheck_setOT
/* 004B8 80B4AFF8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 004BC 80B4AFFC 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 004C0 80B4B000 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 004C4 80B4B004 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 004C8 80B4B008 03E00008 */  jr      $ra                        
/* 004CC 80B4B00C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
