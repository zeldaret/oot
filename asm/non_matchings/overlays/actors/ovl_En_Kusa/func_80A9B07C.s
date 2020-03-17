glabel func_80A9B07C
/* 000DC 80A9B07C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 000E0 80A9B080 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000E4 80A9B084 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 000E8 80A9B088 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 000EC 80A9B08C 8483001C */  lh      $v1, 0x001C($a0)           ## 0000001C
/* 000F0 80A9B090 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000F4 80A9B094 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 000F8 80A9B098 30620003 */  andi    $v0, $v1, 0x0003           ## $v0 = 00000000
/* 000FC 80A9B09C 10400004 */  beq     $v0, $zero, .L80A9B0B0     
/* 00100 80A9B0A0 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00104 80A9B0A4 10410011 */  beq     $v0, $at, .L80A9B0EC       
/* 00108 80A9B0A8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0010C 80A9B0AC 14410020 */  bne     $v0, $at, .L80A9B130       
.L80A9B0B0:
/* 00110 80A9B0B0 00031203 */  sra     $v0, $v1,  8               
/* 00114 80A9B0B4 3042000F */  andi    $v0, $v0, 0x000F           ## $v0 = 00000000
/* 00118 80A9B0B8 00021400 */  sll     $v0, $v0, 16               
/* 0011C 80A9B0BC 00021403 */  sra     $v0, $v0, 16               
/* 00120 80A9B0C0 2841000D */  slti    $at, $v0, 0x000D           
/* 00124 80A9B0C4 14200002 */  bne     $at, $zero, .L80A9B0D0     
/* 00128 80A9B0C8 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0012C 80A9B0CC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80A9B0D0:
/* 00130 80A9B0D0 00403825 */  or      $a3, $v0, $zero            ## $a3 = 00000000
/* 00134 80A9B0D4 00073D00 */  sll     $a3, $a3, 20               
/* 00138 80A9B0D8 00073C03 */  sra     $a3, $a3, 16               
/* 0013C 80A9B0DC 0C007E50 */  jal     Item_DropCollectibleRandom
              
/* 00140 80A9B0E0 24C60024 */  addiu   $a2, $a2, 0x0024           ## $a2 = 00000024
/* 00144 80A9B0E4 10000013 */  beq     $zero, $zero, .L80A9B134   
/* 00148 80A9B0E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9B0EC:
/* 0014C 80A9B0EC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00150 80A9B0F0 00000000 */  nop
/* 00154 80A9B0F4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00158 80A9B0F8 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 0015C 80A9B0FC 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 00160 80A9B100 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00164 80A9B104 4604003C */  c.lt.s  $f0, $f4                   
/* 00168 80A9B108 24060010 */  addiu   $a2, $zero, 0x0010         ## $a2 = 00000010
/* 0016C 80A9B10C 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00170 80A9B110 45000005 */  bc1f    .L80A9B128                 
/* 00174 80A9B114 00000000 */  nop
/* 00178 80A9B118 0C007D52 */  jal     Item_DropCollectible
              
/* 0017C 80A9B11C 24450024 */  addiu   $a1, $v0, 0x0024           ## $a1 = 00000024
/* 00180 80A9B120 10000004 */  beq     $zero, $zero, .L80A9B134   
/* 00184 80A9B124 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9B128:
/* 00188 80A9B128 0C007D52 */  jal     Item_DropCollectible
              
/* 0018C 80A9B12C 24060003 */  addiu   $a2, $zero, 0x0003         ## $a2 = 00000003
.L80A9B130:
/* 00190 80A9B130 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9B134:
/* 00194 80A9B134 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00198 80A9B138 03E00008 */  jr      $ra                        
/* 0019C 80A9B13C 00000000 */  nop


