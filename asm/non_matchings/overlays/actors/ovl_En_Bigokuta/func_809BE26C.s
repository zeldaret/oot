glabel func_809BE26C
/* 0160C 809BE26C 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 01610 809BE270 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01614 809BE274 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01618 809BE278 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 0161C 809BE27C 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
/* 01620 809BE280 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01624 809BE284 1040000C */  beq     $v0, $zero, .L809BE2B8     
/* 01628 809BE288 00000000 */  nop
/* 0162C 809BE28C 10400003 */  beq     $v0, $zero, .L809BE29C     
/* 01630 809BE290 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01634 809BE294 A48E0196 */  sh      $t6, 0x0196($a0)           ## 00000196
/* 01638 809BE298 84820196 */  lh      $v0, 0x0196($a0)           ## 00000196
.L809BE29C:
/* 0163C 809BE29C 2841000A */  slti    $at, $v0, 0x000A           
/* 01640 809BE2A0 5420004C */  bnel    $at, $zero, .L809BE3D4     
/* 01644 809BE2A4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01648 809BE2A8 860F00B6 */  lh      $t7, 0x00B6($s0)           ## 000000B6
/* 0164C 809BE2AC 25F82000 */  addiu   $t8, $t7, 0x2000           ## $t8 = 00002000
/* 01650 809BE2B0 10000047 */  beq     $zero, $zero, .L809BE3D0   
/* 01654 809BE2B4 A61800B6 */  sh      $t8, 0x00B6($s0)           ## 000000B6
.L809BE2B8:
/* 01658 809BE2B8 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 0165C 809BE2BC 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 01660 809BE2C0 10400043 */  beq     $v0, $zero, .L809BE3D0     
/* 01664 809BE2C4 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 01668 809BE2C8 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
/* 0166C 809BE2CC 3C06809C */  lui     $a2, %hi(D_809BF3A8)       ## $a2 = 809C0000
/* 01670 809BE2D0 24C6F3A8 */  addiu   $a2, $a2, %lo(D_809BF3A8)  ## $a2 = 809BF3A8
/* 01674 809BE2D4 10400003 */  beq     $v0, $zero, .L809BE2E4     
/* 01678 809BE2D8 2459FFFF */  addiu   $t9, $v0, 0xFFFF           ## $t9 = FFFFFFFF
/* 0167C 809BE2DC A6190198 */  sh      $t9, 0x0198($s0)           ## 00000198
/* 01680 809BE2E0 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L809BE2E4:
/* 01684 809BE2E4 1441001B */  bne     $v0, $at, .L809BE354       
/* 01688 809BE2E8 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFF4
/* 0168C 809BE2EC C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 01690 809BE2F0 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 01694 809BE2F4 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 01698 809BE2F8 E7A40034 */  swc1    $f4, 0x0034($sp)           
/* 0169C 809BE2FC C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 016A0 809BE300 3C08809C */  lui     $t0, %hi(D_809BF3A0)       ## $t0 = 809C0000
/* 016A4 809BE304 3C09809C */  lui     $t1, %hi(D_809BF3A4)       ## $t1 = 809C0000
/* 016A8 809BE308 46083280 */  add.s   $f10, $f6, $f8             
/* 016AC 809BE30C 2529F3A4 */  addiu   $t1, $t1, %lo(D_809BF3A4)  ## $t1 = 809BF3A4
/* 016B0 809BE310 2508F3A0 */  addiu   $t0, $t0, %lo(D_809BF3A0)  ## $t0 = 809BF3A0
/* 016B4 809BE314 240A04B0 */  addiu   $t2, $zero, 0x04B0         ## $t2 = 000004B0
/* 016B8 809BE318 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 016BC 809BE31C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 016C0 809BE320 240B0014 */  addiu   $t3, $zero, 0x0014         ## $t3 = 00000014
/* 016C4 809BE324 AFAB001C */  sw      $t3, 0x001C($sp)           
/* 016C8 809BE328 AFAA0018 */  sw      $t2, 0x0018($sp)           
/* 016CC 809BE32C AFA90014 */  sw      $t1, 0x0014($sp)           
/* 016D0 809BE330 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 016D4 809BE334 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 016D8 809BE338 00C03825 */  or      $a3, $a2, $zero            ## $a3 = 809BF3A8
/* 016DC 809BE33C 0C00A0A7 */  jal     func_8002829C              
/* 016E0 809BE340 E7B0003C */  swc1    $f16, 0x003C($sp)          
/* 016E4 809BE344 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 016E8 809BE348 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 016EC 809BE34C 240538C7 */  addiu   $a1, $zero, 0x38C7         ## $a1 = 000038C7
/* 016F0 809BE350 86020198 */  lh      $v0, 0x0198($s0)           ## 00000198
.L809BE354:
/* 016F4 809BE354 1440001E */  bne     $v0, $zero, .L809BE3D0     
/* 016F8 809BE358 26040054 */  addiu   $a0, $s0, 0x0054           ## $a0 = 00000054
/* 016FC 809BE35C 3C063A83 */  lui     $a2, 0x3A83                ## $a2 = 3A830000
/* 01700 809BE360 34C6126F */  ori     $a2, $a2, 0x126F           ## $a2 = 3A83126F
/* 01704 809BE364 0C01DE80 */  jal     Math_ApproxF
              
/* 01708 809BE368 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 0170C 809BE36C 10400018 */  beq     $v0, $zero, .L809BE3D0     
/* 01710 809BE370 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01714 809BE374 0C00B33C */  jal     Flags_SetClear
              
/* 01718 809BE378 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 0171C 809BE37C 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 01720 809BE380 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 01724 809BE384 0C0169DF */  jal     func_8005A77C              
/* 01728 809BE388 8D840790 */  lw      $a0, 0x0790($t4)           ## 00000790
/* 0172C 809BE38C 8FAD0044 */  lw      $t5, 0x0044($sp)           
/* 01730 809BE390 24050004 */  addiu   $a1, $zero, 0x0004         ## $a1 = 00000004
/* 01734 809BE394 0C016B3F */  jal     func_8005ACFC              
/* 01738 809BE398 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
/* 0173C 809BE39C 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 01740 809BE3A0 AFA50030 */  sw      $a1, 0x0030($sp)           
/* 01744 809BE3A4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01748 809BE3A8 24060032 */  addiu   $a2, $zero, 0x0032         ## $a2 = 00000032
/* 0174C 809BE3AC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 01750 809BE3B0 240738C5 */  addiu   $a3, $zero, 0x38C5         ## $a3 = 000038C5
/* 01754 809BE3B4 8FA40044 */  lw      $a0, 0x0044($sp)           
/* 01758 809BE3B8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0175C 809BE3BC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 01760 809BE3C0 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 01764 809BE3C4 240700B0 */  addiu   $a3, $zero, 0x00B0         ## $a3 = 000000B0
/* 01768 809BE3C8 0C00B55C */  jal     Actor_Kill
              
/* 0176C 809BE3CC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809BE3D0:
/* 01770 809BE3D0 8FBF002C */  lw      $ra, 0x002C($sp)           
.L809BE3D4:
/* 01774 809BE3D4 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01778 809BE3D8 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0177C 809BE3DC 03E00008 */  jr      $ra                        
/* 01780 809BE3E0 00000000 */  nop
