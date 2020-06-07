glabel func_80AFC3C8
/* 00848 80AFC3C8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0084C 80AFC3CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00850 80AFC3D0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00854 80AFC3D4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00858 80AFC3D8 0C2BEF72 */  jal     func_80AFBDC8              
/* 0085C 80AFC3DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00860 80AFC3E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00864 80AFC3E4 0C2BEFA3 */  jal     func_80AFBE8C              
/* 00868 80AFC3E8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0086C 80AFC3EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00870 80AFC3F0 0C2BF074 */  jal     func_80AFC1D0              
/* 00874 80AFC3F4 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00878 80AFC3F8 8E0E0168 */  lw      $t6, 0x0168($s0)           ## 00000168
/* 0087C 80AFC3FC 3C01C234 */  lui     $at, 0xC234                ## $at = C2340000
/* 00880 80AFC400 3C0980B0 */  lui     $t1, %hi(func_80AFC218)    ## $t1 = 80B00000
/* 00884 80AFC404 25CFFFFF */  addiu   $t7, $t6, 0xFFFF           ## $t7 = FFFFFFFF
/* 00888 80AFC408 05E1000A */  bgez    $t7, .L80AFC434            
/* 0088C 80AFC40C AE0F0168 */  sw      $t7, 0x0168($s0)           ## 00000168
/* 00890 80AFC410 86190196 */  lh      $t9, 0x0196($s0)           ## 00000196
/* 00894 80AFC414 44812000 */  mtc1    $at, $f4                   ## $f4 = -45.00
/* 00898 80AFC418 2529C218 */  addiu   $t1, $t1, %lo(func_80AFC218) ## $t1 = 80AFC218
/* 0089C 80AFC41C 00194080 */  sll     $t0, $t9,  2               
/* 008A0 80AFC420 01194021 */  addu    $t0, $t0, $t9              
/* 008A4 80AFC424 00084080 */  sll     $t0, $t0,  2               
/* 008A8 80AFC428 AE080168 */  sw      $t0, 0x0168($s0)           ## 00000168
/* 008AC 80AFC42C AE090164 */  sw      $t1, 0x0164($s0)           ## 00000164
/* 008B0 80AFC430 E604017C */  swc1    $f4, 0x017C($s0)           ## 0000017C
.L80AFC434:
/* 008B4 80AFC434 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 008B8 80AFC438 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 008BC 80AFC43C 0C00B32C */  jal     Flags_GetTreasure
              
/* 008C0 80AFC440 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 008C4 80AFC444 3C01C234 */  lui     $at, 0xC234                ## $at = C2340000
/* 008C8 80AFC448 44810000 */  mtc1    $at, $f0                   ## $f0 = -45.00
/* 008CC 80AFC44C 10400005 */  beq     $v0, $zero, .L80AFC464     
/* 008D0 80AFC450 3C0A80B0 */  lui     $t2, %hi(func_80AFC544)    ## $t2 = 80B00000
/* 008D4 80AFC454 254AC544 */  addiu   $t2, $t2, %lo(func_80AFC544) ## $t2 = 80AFC544
/* 008D8 80AFC458 E6000180 */  swc1    $f0, 0x0180($s0)           ## 00000180
/* 008DC 80AFC45C E600017C */  swc1    $f0, 0x017C($s0)           ## 0000017C
/* 008E0 80AFC460 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
.L80AFC464:
/* 008E4 80AFC464 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 008E8 80AFC468 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 008EC 80AFC46C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 008F0 80AFC470 03E00008 */  jr      $ra                        
/* 008F4 80AFC474 00000000 */  nop
