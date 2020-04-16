glabel func_80AEAC54
/* 00044 80AEAC54 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00048 80AEAC58 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0004C 80AEAC5C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00050 80AEAC60 24860300 */  addiu   $a2, $a0, 0x0300           ## $a2 = 00000300
/* 00054 80AEAC64 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000300
/* 00058 80AEAC68 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 0005C 80AEAC6C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00060 80AEAC70 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00064 80AEAC74 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 00068 80AEAC78 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0006C 80AEAC7C 8FA70034 */  lw      $a3, 0x0034($sp)           
/* 00070 80AEAC80 8C8E034C */  lw      $t6, 0x034C($a0)           ## 0000034C
/* 00074 80AEAC84 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 00078 80AEAC88 51C00009 */  beql    $t6, $zero, .L80AEACB0     
/* 0007C 80AEAC8C 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 00080 80AEAC90 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00084 80AEAC94 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00088 80AEAC98 00E12821 */  addu    $a1, $a3, $at              
/* 0008C 80AEAC9C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00090 80AEACA0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00094 80AEACA4 1000000A */  beq     $zero, $zero, .L80AEACD0   
/* 00098 80AEACA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0009C 80AEACAC 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
.L80AEACB0:
/* 000A0 80AEACB0 C4860090 */  lwc1    $f6, 0x0090($a0)           ## 00000090
/* 000A4 80AEACB4 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 000A8 80AEACB8 4606203C */  c.lt.s  $f4, $f6                   
/* 000AC 80AEACBC 00000000 */  nop
/* 000B0 80AEACC0 45020003 */  bc1fl   .L80AEACD0                 
/* 000B4 80AEACC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000B8 80AEACC8 AC8F034C */  sw      $t7, 0x034C($a0)           ## 0000034C
/* 000BC 80AEACCC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AEACD0:
/* 000C0 80AEACD0 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000C4 80AEACD4 03E00008 */  jr      $ra                        
/* 000C8 80AEACD8 00000000 */  nop
