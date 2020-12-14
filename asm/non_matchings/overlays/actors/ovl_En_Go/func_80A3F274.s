glabel func_80A3F274
/* 00D04 80A3F274 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00D08 80A3F278 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00D0C 80A3F27C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00D10 80A3F280 8C820154 */  lw      $v0, 0x0154($a0)           ## 00000154
/* 00D14 80A3F284 3C030600 */  lui     $v1, %hi(D_06004930)                ## $v1 = 06000000
/* 00D18 80A3F288 24634930 */  addiu   $v1, $v1, %lo(D_06004930)           ## $v1 = 06004930
/* 00D1C 80A3F28C 14620008 */  bne     $v1, $v0, .L80A3F2B0       
/* 00D20 80A3F290 C4800164 */  lwc1    $f0, 0x0164($a0)           ## 00000164
/* 00D24 80A3F294 3C014200 */  lui     $at, 0x4200                ## $at = 42000000
/* 00D28 80A3F298 44812000 */  mtc1    $at, $f4                   ## $f4 = 32.00
/* 00D2C 80A3F29C 00000000 */  nop
/* 00D30 80A3F2A0 4600203C */  c.lt.s  $f4, $f0                   
/* 00D34 80A3F2A4 00000000 */  nop
/* 00D38 80A3F2A8 45010003 */  bc1t    .L80A3F2B8                 
/* 00D3C 80A3F2AC 00000000 */  nop
.L80A3F2B0:
/* 00D40 80A3F2B0 10620003 */  beq     $v1, $v0, .L80A3F2C0       
/* 00D44 80A3F2B4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
.L80A3F2B8:
/* 00D48 80A3F2B8 10000001 */  beq     $zero, $zero, .L80A3F2C0   
/* 00D4C 80A3F2BC 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
.L80A3F2C0:
/* 00D50 80A3F2C0 8FAF0030 */  lw      $t7, 0x0030($sp)           
/* 00D54 80A3F2C4 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 00D58 80A3F2C8 27A4002E */  addiu   $a0, $sp, 0x002E           ## $a0 = FFFFFFFE
/* 00D5C 80A3F2CC 91F800C8 */  lbu     $t8, 0x00C8($t7)           ## 000000C8
/* 00D60 80A3F2D0 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00D64 80A3F2D4 2406000A */  addiu   $a2, $zero, 0x000A         ## $a2 = 0000000A
/* 00D68 80A3F2D8 2407003C */  addiu   $a3, $zero, 0x003C         ## $a3 = 0000003C
/* 00D6C 80A3F2DC 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00D70 80A3F2E0 A7B8002E */  sh      $t8, 0x002E($sp)           
/* 00D74 80A3F2E4 87A8002E */  lh      $t0, 0x002E($sp)           
/* 00D78 80A3F2E8 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 00D7C 80A3F2EC A12800C8 */  sb      $t0, 0x00C8($t1)           ## 000000C8
/* 00D80 80A3F2F0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00D84 80A3F2F4 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00D88 80A3F2F8 03E00008 */  jr      $ra                        
/* 00D8C 80A3F2FC 00000000 */  nop
