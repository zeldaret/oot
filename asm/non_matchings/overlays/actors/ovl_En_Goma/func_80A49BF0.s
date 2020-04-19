glabel func_80A49BF0
/* 00D30 80A49BF0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00D34 80A49BF4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00D38 80A49BF8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00D3C 80A49BFC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D40 80A49C00 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00D44 80A49C04 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00D48 80A49C08 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00D4C 80A49C0C 960E0088 */  lhu     $t6, 0x0088($s0)           ## 00000088
/* 00D50 80A49C10 26040068 */  addiu   $a0, $s0, 0x0068           ## $a0 = 00000068
/* 00D54 80A49C14 3C053F80 */  lui     $a1, 0x3F80                ## $a1 = 3F800000
/* 00D58 80A49C18 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 00D5C 80A49C1C 51E00004 */  beql    $t7, $zero, .L80A49C30     
/* 00D60 80A49C20 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
/* 00D64 80A49C24 0C01E123 */  jal     Math_SmoothDownscaleMaxF
              
/* 00D68 80A49C28 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00D6C 80A49C2C 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
.L80A49C30:
/* 00D70 80A49C30 24010011 */  addiu   $at, $zero, 0x0011         ## $at = 00000011
/* 00D74 80A49C34 1441000E */  bne     $v0, $at, .L80A49C70       
/* 00D78 80A49C38 00000000 */  nop
/* 00D7C 80A49C3C 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00D80 80A49C40 240539E3 */  addiu   $a1, $zero, 0x39E3         ## $a1 = 000039E3
/* 00D84 80A49C44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D88 80A49C48 2B010006 */  slti    $at, $t8, 0x0006           
/* 00D8C 80A49C4C 10200005 */  beq     $at, $zero, .L80A49C64     
/* 00D90 80A49C50 00000000 */  nop
/* 00D94 80A49C54 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00D98 80A49C58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D9C 80A49C5C 10000004 */  beq     $zero, $zero, .L80A49C70   
/* 00DA0 80A49C60 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
.L80A49C64:
/* 00DA4 80A49C64 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DA8 80A49C68 240539E5 */  addiu   $a1, $zero, 0x39E5         ## $a1 = 000039E5
/* 00DAC 80A49C6C 860202CC */  lh      $v0, 0x02CC($s0)           ## 000002CC
.L80A49C70:
/* 00DB0 80A49C70 54400004 */  bnel    $v0, $zero, .L80A49C84     
/* 00DB4 80A49C74 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00DB8 80A49C78 0C292725 */  jal     func_80A49C94              
/* 00DBC 80A49C7C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DC0 80A49C80 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A49C84:
/* 00DC4 80A49C84 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00DC8 80A49C88 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00DCC 80A49C8C 03E00008 */  jr      $ra                        
/* 00DD0 80A49C90 00000000 */  nop
