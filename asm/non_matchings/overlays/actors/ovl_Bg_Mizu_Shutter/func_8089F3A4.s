glabel func_8089F3A4
/* 00554 8089F3A4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00558 8089F3A8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0055C 8089F3AC AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00560 8089F3B0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00564 8089F3B4 8C8E016C */  lw      $t6, 0x016C($a0)           ## 0000016C
/* 00568 8089F3B8 240104EC */  addiu   $at, $zero, 0x04EC         ## $at = 000004EC
/* 0056C 8089F3BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00570 8089F3C0 51C10014 */  beql    $t6, $at, .L8089F414       
/* 00574 8089F3C4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00578 8089F3C8 8C8F0168 */  lw      $t7, 0x0168($a0)           ## 00000168
/* 0057C 8089F3CC 25F8FFFF */  addiu   $t8, $t7, 0xFFFF           ## $t8 = FFFFFFFF
/* 00580 8089F3D0 AC980168 */  sw      $t8, 0x0168($a0)           ## 00000168
/* 00584 8089F3D4 0C00BE65 */  jal     func_8002F994              
/* 00588 8089F3D8 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 0058C 8089F3DC 8E190168 */  lw      $t9, 0x0168($s0)           ## 00000168
/* 00590 8089F3E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00594 8089F3E4 5720000B */  bnel    $t9, $zero, .L8089F414     
/* 00598 8089F3E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0059C 8089F3EC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 005A0 8089F3F0 2405285A */  addiu   $a1, $zero, 0x285A         ## $a1 = 0000285A
/* 005A4 8089F3F4 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 005A8 8089F3F8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 005AC 8089F3FC 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 005B0 8089F400 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 005B4 8089F404 3C08808A */  lui     $t0, %hi(func_8089F1BC)    ## $t0 = 808A0000
/* 005B8 8089F408 2508F1BC */  addiu   $t0, $t0, %lo(func_8089F1BC) ## $t0 = 8089F1BC
/* 005BC 8089F40C AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
/* 005C0 8089F410 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8089F414:
/* 005C4 8089F414 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 005C8 8089F418 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 005CC 8089F41C 03E00008 */  jr      $ra                        
/* 005D0 8089F420 00000000 */  nop
