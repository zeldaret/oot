glabel func_80AFC218
/* 00698 80AFC218 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0069C 80AFC21C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 006A0 80AFC220 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 006A4 80AFC224 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 006A8 80AFC228 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 006AC 80AFC22C 0C2BEF72 */  jal     func_80AFBDC8              
/* 006B0 80AFC230 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 006B4 80AFC234 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B8 80AFC238 0C2BEFA3 */  jal     func_80AFBE8C              
/* 006BC 80AFC23C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006C0 80AFC240 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006C4 80AFC244 0C2BF074 */  jal     func_80AFC1D0              
/* 006C8 80AFC248 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006CC 80AFC24C 8E0E0168 */  lw      $t6, 0x0168($s0)           ## 00000168
/* 006D0 80AFC250 25C5FFFF */  addiu   $a1, $t6, 0xFFFF           ## $a1 = FFFFFFFF
/* 006D4 80AFC254 04A10021 */  bgez    $a1, .L80AFC2DC            
/* 006D8 80AFC258 AE050168 */  sw      $a1, 0x0168($s0)           ## 00000168
/* 006DC 80AFC25C 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 006E0 80AFC260 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006E4 80AFC264 00052983 */  sra     $a1, $a1,  6               
/* 006E8 80AFC268 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 006EC 80AFC26C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 0000003F
/* 006F0 80AFC270 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 006F4 80AFC274 3C1880B0 */  lui     $t8, %hi(func_80AFC34C)    ## $t8 = 80B00000
/* 006F8 80AFC278 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 006FC 80AFC27C 00021B03 */  sra     $v1, $v0, 12               
/* 00700 80AFC280 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
/* 00704 80AFC284 10600006 */  beq     $v1, $zero, .L80AFC2A0     
/* 00708 80AFC288 2718C34C */  addiu   $t8, $t8, %lo(func_80AFC34C) ## $t8 = 80AFC34C
/* 0070C 80AFC28C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00710 80AFC290 1061000A */  beq     $v1, $at, .L80AFC2BC       
/* 00714 80AFC294 3C1980B0 */  lui     $t9, %hi(func_80AFC478)    ## $t9 = 80B00000
/* 00718 80AFC298 10000016 */  beq     $zero, $zero, .L80AFC2F4   
/* 0071C 80AFC29C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80AFC2A0:
/* 00720 80AFC2A0 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 00724 80AFC2A4 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.00
/* 00728 80AFC2A8 AE180164 */  sw      $t8, 0x0164($s0)           ## 00000164
/* 0072C 80AFC2AC 00021B03 */  sra     $v1, $v0, 12               
/* 00730 80AFC2B0 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
/* 00734 80AFC2B4 1000000E */  beq     $zero, $zero, .L80AFC2F0   
/* 00738 80AFC2B8 E604017C */  swc1    $f4, 0x017C($s0)           ## 0000017C
.L80AFC2BC:
/* 0073C 80AFC2BC 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 00740 80AFC2C0 C6060198 */  lwc1    $f6, 0x0198($s0)           ## 00000198
/* 00744 80AFC2C4 2739C478 */  addiu   $t9, $t9, %lo(func_80AFC478) ## $t9 = 80AFC478
/* 00748 80AFC2C8 00021B03 */  sra     $v1, $v0, 12               
/* 0074C 80AFC2CC AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 00750 80AFC2D0 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
/* 00754 80AFC2D4 10000006 */  beq     $zero, $zero, .L80AFC2F0   
/* 00758 80AFC2D8 E606017C */  swc1    $f6, 0x017C($s0)           ## 0000017C
.L80AFC2DC:
/* 0075C 80AFC2DC 0C00BE65 */  jal     func_8002F994              
/* 00760 80AFC2E0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00764 80AFC2E4 9602001C */  lhu     $v0, 0x001C($s0)           ## 0000001C
/* 00768 80AFC2E8 00021B03 */  sra     $v1, $v0, 12               
/* 0076C 80AFC2EC 3063000F */  andi    $v1, $v1, 0x000F           ## $v1 = 00000000
.L80AFC2F0:
/* 00770 80AFC2F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
.L80AFC2F4:
/* 00774 80AFC2F4 14610010 */  bne     $v1, $at, .L80AFC338       
/* 00778 80AFC2F8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0077C 80AFC2FC 0C00B32C */  jal     Flags_GetTreasure
              
/* 00780 80AFC300 3045003F */  andi    $a1, $v0, 0x003F           ## $a1 = 00000000
/* 00784 80AFC304 1040000C */  beq     $v0, $zero, .L80AFC338     
/* 00788 80AFC308 3C01C234 */  lui     $at, 0xC234                ## $at = C2340000
/* 0078C 80AFC30C 9605001C */  lhu     $a1, 0x001C($s0)           ## 0000001C
/* 00790 80AFC310 44810000 */  mtc1    $at, $f0                   ## $f0 = -45.00
/* 00794 80AFC314 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00798 80AFC318 00052983 */  sra     $a1, $a1,  6               
/* 0079C 80AFC31C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 007A0 80AFC320 E6000180 */  swc1    $f0, 0x0180($s0)           ## 00000180
/* 007A4 80AFC324 0C00B2ED */  jal     Flags_UnsetSwitch
              
/* 007A8 80AFC328 E600017C */  swc1    $f0, 0x017C($s0)           ## 0000017C
/* 007AC 80AFC32C 3C0880B0 */  lui     $t0, %hi(func_80AFC544)    ## $t0 = 80B00000
/* 007B0 80AFC330 2508C544 */  addiu   $t0, $t0, %lo(func_80AFC544) ## $t0 = 80AFC544
/* 007B4 80AFC334 AE080164 */  sw      $t0, 0x0164($s0)           ## 00000164
.L80AFC338:
/* 007B8 80AFC338 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 007BC 80AFC33C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 007C0 80AFC340 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 007C4 80AFC344 03E00008 */  jr      $ra                        
/* 007C8 80AFC348 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


