glabel func_80B14570
/* 00AD0 80B14570 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AD4 80B14574 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AD8 80B14578 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00ADC 80B1457C 948E02E0 */  lhu     $t6, 0x02E0($a0)           ## 000002E0
/* 00AE0 80B14580 849802CC */  lh      $t8, 0x02CC($a0)           ## 000002CC
/* 00AE4 80B14584 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00AE8 80B14588 35CF0004 */  ori     $t7, $t6, 0x0004           ## $t7 = 00000004
/* 00AEC 80B1458C 17000016 */  bne     $t8, $zero, .L80B145E8     
/* 00AF0 80B14590 A48F02E0 */  sh      $t7, 0x02E0($a0)           ## 000002E0
/* 00AF4 80B14594 3C0580B1 */  lui     $a1, %hi(func_80B144D8)    ## $a1 = 80B10000
/* 00AF8 80B14598 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 00AFC 80B1459C 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 00B00 80B145A0 24A544D8 */  addiu   $a1, $a1, %lo(func_80B144D8) ## $a1 = 80B144D8
/* 00B04 80B145A4 0C2C4EA8 */  jal     func_80B13AA0              
/* 00B08 80B145A8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00B0C 80B145AC 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 00B10 80B145B0 24190003 */  addiu   $t9, $zero, 0x0003         ## $t9 = 00000003
/* 00B14 80B145B4 2408003C */  addiu   $t0, $zero, 0x003C         ## $t0 = 0000003C
/* 00B18 80B145B8 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 00B1C 80B145BC 24A5E3D8 */  addiu   $a1, $a1, 0xE3D8           ## $a1 = 0600E3D8
/* 00B20 80B145C0 A4F902CE */  sh      $t9, 0x02CE($a3)           ## 000002CE
/* 00B24 80B145C4 A4E802CC */  sh      $t0, 0x02CC($a3)           ## 000002CC
/* 00B28 80B145C8 0C02947A */  jal     SkelAnimeChangeAnimationDefaultStop              
/* 00B2C 80B145CC 24E4014C */  addiu   $a0, $a3, 0x014C           ## $a0 = 0000014C
/* 00B30 80B145D0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00B34 80B145D4 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 00B38 80B145D8 25291C94 */  addiu   $t1, $t1, 0x1C94           ## $t1 = 06001C94
/* 00B3C 80B145DC 24056851 */  addiu   $a1, $zero, 0x6851         ## $a1 = 00006851
/* 00B40 80B145E0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00B44 80B145E4 AC8902E4 */  sw      $t1, 0x02E4($a0)           ## 000002E4
.L80B145E8:
/* 00B48 80B145E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B4C 80B145EC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B50 80B145F0 03E00008 */  jr      $ra                        
/* 00B54 80B145F4 00000000 */  nop


