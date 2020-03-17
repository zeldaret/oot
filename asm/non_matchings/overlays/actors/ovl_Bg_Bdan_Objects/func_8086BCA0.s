glabel func_8086BCA0
/* 00000 8086BCA0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00004 8086BCA4 10A00008 */  beq     $a1, $zero, .L8086BCC8     
/* 00008 8086BCA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0000C 8086BCAC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00010 8086BCB0 10A1000C */  beq     $a1, $at, .L8086BCE4       
/* 00014 8086BCB4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00018 8086BCB8 10A10007 */  beq     $a1, $at, .L8086BCD8       
/* 0001C 8086BCBC 3C028016 */  lui     $v0, 0x8016                ## $v0 = 80160000
/* 00020 8086BCC0 1000000C */  beq     $zero, $zero, .L8086BCF4   
/* 00024 8086BCC4 3C048087 */  lui     $a0, %hi(D_8086CDB0)       ## $a0 = 80870000
.L8086BCC8:
/* 00028 8086BCC8 8C8201B8 */  lw      $v0, 0x01B8($a0)           ## 808701B8
/* 0002C 8086BCCC 38420001 */  xori    $v0, $v0, 0x0001           ## $v0 = 80160001
/* 00030 8086BCD0 1000000B */  beq     $zero, $zero, .L8086BD00   
/* 00034 8086BCD4 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L8086BCD8:
/* 00038 8086BCD8 9442F580 */  lhu     $v0, -0x0A80($v0)          ## 8015F581
/* 0003C 8086BCDC 10000008 */  beq     $zero, $zero, .L8086BD00   
/* 00040 8086BCE0 30420040 */  andi    $v0, $v0, 0x0040           ## $v0 = 00000000
.L8086BCE4:
/* 00044 8086BCE4 8C8201B8 */  lw      $v0, 0x01B8($a0)           ## 808701B8
/* 00048 8086BCE8 38420004 */  xori    $v0, $v0, 0x0004           ## $v0 = 00000004
/* 0004C 8086BCEC 10000004 */  beq     $zero, $zero, .L8086BD00   
/* 00050 8086BCF0 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L8086BCF4:
/* 00054 8086BCF4 0C00084C */  jal     osSyncPrintf
              
/* 00058 8086BCF8 2484CDB0 */  addiu   $a0, $a0, %lo(D_8086CDB0)  ## $a0 = 8086CDB0
/* 0005C 8086BCFC 2402FFFF */  addiu   $v0, $zero, 0xFFFF         ## $v0 = FFFFFFFF
.L8086BD00:
/* 00060 8086BD00 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00064 8086BD04 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00068 8086BD08 03E00008 */  jr      $ra                        
/* 0006C 8086BD0C 00000000 */  nop


