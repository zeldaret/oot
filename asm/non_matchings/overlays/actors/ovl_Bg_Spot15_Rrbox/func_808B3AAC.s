.late_rodata
glabel D_808B46F8
 .word 0x44688000

.text
glabel func_808B3AAC
/* 0014C 808B3AAC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00150 808B3AB0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00154 808B3AB4 84AE00A4 */  lh      $t6, 0x00A4($a1)           ## 000000A4
/* 00158 808B3AB8 2401004C */  addiu   $at, $zero, 0x004C         ## $at = 0000004C
/* 0015C 808B3ABC 15C10003 */  bne     $t6, $at, .L808B3ACC       
/* 00160 808B3AC0 00000000 */  nop
/* 00164 808B3AC4 1000002F */  beq     $zero, $zero, .L808B3B84   
/* 00168 808B3AC8 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B3ACC:
/* 0016C 808B3ACC 0C22CE90 */  jal     func_808B3A40              
/* 00170 808B3AD0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00174 808B3AD4 10400003 */  beq     $v0, $zero, .L808B3AE4     
/* 00178 808B3AD8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0017C 808B3ADC 10000029 */  beq     $zero, $zero, .L808B3B84   
/* 00180 808B3AE0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L808B3AE4:
/* 00184 808B3AE4 3C01808B */  lui     $at, %hi(D_808B46F8)       ## $at = 808B0000
/* 00188 808B3AE8 C42446F8 */  lwc1    $f4, %lo(D_808B46F8)($at)  
/* 0018C 808B3AEC C4860024 */  lwc1    $f6, 0x0024($a0)           ## 00000024
/* 00190 808B3AF0 3C01C3B4 */  lui     $at, 0xC3B4                ## $at = C3B40000
/* 00194 808B3AF4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00198 808B3AF8 4604303E */  c.le.s  $f6, $f4                   
/* 0019C 808B3AFC 00000000 */  nop
/* 001A0 808B3B00 45000020 */  bc1f    .L808B3B84                 
/* 001A4 808B3B04 00000000 */  nop
/* 001A8 808B3B08 C488002C */  lwc1    $f8, 0x002C($a0)           ## 0000002C
/* 001AC 808B3B0C 44815000 */  mtc1    $at, $f10                  ## $f10 = -360.00
/* 001B0 808B3B10 00000000 */  nop
/* 001B4 808B3B14 4608503E */  c.le.s  $f10, $f8                  
/* 001B8 808B3B18 00000000 */  nop
/* 001BC 808B3B1C 45000019 */  bc1f    .L808B3B84                 
/* 001C0 808B3B20 00000000 */  nop
/* 001C4 808B3B24 C4900150 */  lwc1    $f16, 0x0150($a0)          ## 00000150
/* 001C8 808B3B28 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 001CC 808B3B2C 00000000 */  nop
/* 001D0 808B3B30 4610903E */  c.le.s  $f18, $f16                 
/* 001D4 808B3B34 00000000 */  nop
/* 001D8 808B3B38 45020004 */  bc1fl   .L808B3B4C                 
/* 001DC 808B3B3C 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
/* 001E0 808B3B40 10000006 */  beq     $zero, $zero, .L808B3B5C   
/* 001E4 808B3B44 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
/* 001E8 808B3B48 84820032 */  lh      $v0, 0x0032($a0)           ## 00000032
.L808B3B4C:
/* 001EC 808B3B4C 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 001F0 808B3B50 00411021 */  addu    $v0, $v0, $at              
/* 001F4 808B3B54 00021400 */  sll     $v0, $v0, 16               
/* 001F8 808B3B58 00021403 */  sra     $v0, $v0, 16               
.L808B3B5C:
/* 001FC 808B3B5C 28412000 */  slti    $at, $v0, 0x2000           
/* 00200 808B3B60 10200006 */  beq     $at, $zero, .L808B3B7C     
/* 00204 808B3B64 2841A001 */  slti    $at, $v0, 0xA001           
/* 00208 808B3B68 14200004 */  bne     $at, $zero, .L808B3B7C     
/* 0020C 808B3B6C 3C028016 */  lui     $v0, %hi(gSaveContext+0xed6)
/* 00210 808B3B70 9442F536 */  lhu     $v0, %lo(gSaveContext+0xed6)($v0)
/* 00214 808B3B74 10000003 */  beq     $zero, $zero, .L808B3B84   
/* 00218 808B3B78 30420010 */  andi    $v0, $v0, 0x0010           ## $v0 = 00000000
.L808B3B7C:
/* 0021C 808B3B7C 10000001 */  beq     $zero, $zero, .L808B3B84   
/* 00220 808B3B80 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L808B3B84:
/* 00224 808B3B84 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00228 808B3B88 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0022C 808B3B8C 03E00008 */  jr      $ra                        
/* 00230 808B3B90 00000000 */  nop
