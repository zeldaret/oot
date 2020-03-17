glabel func_809ACB28
/* 00008 809ACB28 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0000C 809ACB2C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 809ACB30 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00014 809ACB34 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00018 809ACB38 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
/* 0001C 809ACB3C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 809ACB40 1840001B */  blez    $v0, .L809ACBB0            
/* 00024 809ACB44 28410041 */  slti    $at, $v0, 0x0041           
/* 00028 809ACB48 10200019 */  beq     $at, $zero, .L809ACBB0     
/* 0002C 809ACB4C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00030 809ACB50 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00034 809ACB54 2445FFFF */  addiu   $a1, $v0, 0xFFFF           ## $a1 = FFFFFFFF
/* 00038 809ACB58 10400015 */  beq     $v0, $zero, .L809ACBB0     
/* 0003C 809ACB5C 3C04809B */  lui     $a0, %hi(D_809AD500)       ## $a0 = 809B0000
/* 00040 809ACB60 2484D500 */  addiu   $a0, $a0, %lo(D_809AD500)  ## $a0 = 809AD500
/* 00044 809ACB64 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 00048 809ACB68 240500A1 */  addiu   $a1, $zero, 0x00A1         ## $a1 = 000000A1
/* 0004C 809ACB6C 3C04809B */  lui     $a0, %hi(D_809AD510)       ## $a0 = 809B0000
/* 00050 809ACB70 3C05809B */  lui     $a1, %hi(D_809AD520)       ## $a1 = 809B0000
/* 00054 809ACB74 24A5D520 */  addiu   $a1, $a1, %lo(D_809AD520)  ## $a1 = 809AD520
/* 00058 809ACB78 0C00084C */  jal     osSyncPrintf
              
/* 0005C 809ACB7C 2484D510 */  addiu   $a0, $a0, %lo(D_809AD510)  ## $a0 = 809AD510
/* 00060 809ACB80 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00064 809ACB84 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 00068 809ACB88 00052A03 */  sra     $a1, $a1,  8               
/* 0006C 809ACB8C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00070 809ACB90 10A10003 */  beq     $a1, $at, .L809ACBA0       
/* 00074 809ACB94 00000000 */  nop
/* 00078 809ACB98 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0007C 809ACB9C 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809ACBA0:
/* 00080 809ACBA0 0C00B55C */  jal     Actor_Kill
              
/* 00084 809ACBA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00088 809ACBA8 1000002F */  beq     $zero, $zero, .L809ACC68   
/* 0008C 809ACBAC 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809ACBB0:
/* 00090 809ACBB0 860E0032 */  lh      $t6, 0x0032($s0)           ## 00000032
/* 00094 809ACBB4 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 00098 809ACBB8 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0009C 809ACBBC 55C1001A */  bnel    $t6, $at, .L809ACC28       
/* 000A0 809ACBC0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000A4 809ACBC4 0C00B337 */  jal     Flags_GetClear
              
/* 000A8 809ACBC8 82050003 */  lb      $a1, 0x0003($s0)           ## 00000003
/* 000AC 809ACBCC 10400015 */  beq     $v0, $zero, .L809ACC24     
/* 000B0 809ACBD0 3C04809B */  lui     $a0, %hi(D_809AD528)       ## $a0 = 809B0000
/* 000B4 809ACBD4 2484D528 */  addiu   $a0, $a0, %lo(D_809AD528)  ## $a0 = 809AD528
/* 000B8 809ACBD8 0C000B84 */  jal     LogUtils_LogThreadId
              
/* 000BC 809ACBDC 240500AC */  addiu   $a1, $zero, 0x00AC         ## $a1 = 000000AC
/* 000C0 809ACBE0 3C04809B */  lui     $a0, %hi(D_809AD538)       ## $a0 = 809B0000
/* 000C4 809ACBE4 3C05809B */  lui     $a1, %hi(D_809AD548)       ## $a1 = 809B0000
/* 000C8 809ACBE8 24A5D548 */  addiu   $a1, $a1, %lo(D_809AD548)  ## $a1 = 809AD548
/* 000CC 809ACBEC 0C00084C */  jal     osSyncPrintf
              
/* 000D0 809ACBF0 2484D538 */  addiu   $a0, $a0, %lo(D_809AD538)  ## $a0 = 809AD538
/* 000D4 809ACBF4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 000D8 809ACBF8 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 000DC 809ACBFC 00052A03 */  sra     $a1, $a1,  8               
/* 000E0 809ACC00 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000E4 809ACC04 10A10003 */  beq     $a1, $at, .L809ACC14       
/* 000E8 809ACC08 00000000 */  nop
/* 000EC 809ACC0C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 000F0 809ACC10 8FA40024 */  lw      $a0, 0x0024($sp)           
.L809ACC14:
/* 000F4 809ACC14 0C00B55C */  jal     Actor_Kill
              
/* 000F8 809ACC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000FC 809ACC1C 10000012 */  beq     $zero, $zero, .L809ACC68   
/* 00100 809ACC20 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809ACC24:
/* 00104 809ACC24 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809ACC28:
/* 00108 809ACC28 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 0010C 809ACC2C 00052A03 */  sra     $a1, $a1,  8               
/* 00110 809ACC30 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00114 809ACC34 14A10003 */  bne     $a1, $at, .L809ACC44       
/* 00118 809ACC38 00000000 */  nop
/* 0011C 809ACC3C 1000000A */  beq     $zero, $zero, .L809ACC68   
/* 00120 809ACC40 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809ACC44:
/* 00124 809ACC44 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00128 809ACC48 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0012C 809ACC4C 50400006 */  beql    $v0, $zero, .L809ACC68     
/* 00130 809ACC50 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00134 809ACC54 0C00B55C */  jal     Actor_Kill
              
/* 00138 809ACC58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0013C 809ACC5C 10000002 */  beq     $zero, $zero, .L809ACC68   
/* 00140 809ACC60 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00144 809ACC64 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809ACC68:
/* 00148 809ACC68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0014C 809ACC6C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00150 809ACC70 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00154 809ACC74 03E00008 */  jr      $ra                        
/* 00158 809ACC78 00000000 */  nop


