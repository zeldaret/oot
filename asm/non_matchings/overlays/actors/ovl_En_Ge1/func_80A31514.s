glabel func_80A31514
/* 00BA4 80A31514 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00BA8 80A31518 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 00BAC 80A3151C 8DEFE704 */  lw      $t7, -0x18FC($t7)          ## 8015E704
/* 00BB0 80A31520 8DCE7178 */  lw      $t6, 0x7178($t6)           ## 80127178
/* 00BB4 80A31524 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00BB8 80A31528 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00BBC 80A3152C 01CFC024 */  and     $t8, $t6, $t7              
/* 00BC0 80A31530 13000009 */  beq     $t8, $zero, .L80A31558     
/* 00BC4 80A31534 24066013 */  addiu   $a2, $zero, 0x6013         ## $a2 = 00006013
/* 00BC8 80A31538 3C1980A3 */  lui     $t9, %hi(func_80A313E0)    ## $t9 = 80A30000
/* 00BCC 80A3153C 273913E0 */  addiu   $t9, $t9, %lo(func_80A313E0) ## $t9 = 80A313E0
/* 00BD0 80A31540 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00BD4 80A31544 24066014 */  addiu   $a2, $zero, 0x6014         ## $a2 = 00006014
/* 00BD8 80A31548 0C28C31C */  jal     func_80A30C70              
/* 00BDC 80A3154C 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00BE0 80A31550 10000007 */  beq     $zero, $zero, .L80A31570   
/* 00BE4 80A31554 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A31558:
/* 00BE8 80A31558 3C0880A3 */  lui     $t0, %hi(func_80A314D0)    ## $t0 = 80A30000
/* 00BEC 80A3155C 250814D0 */  addiu   $t0, $t0, %lo(func_80A314D0) ## $t0 = 80A314D0
/* 00BF0 80A31560 AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00BF4 80A31564 0C28C31C */  jal     func_80A30C70              
/* 00BF8 80A31568 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00BFC 80A3156C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80A31570:
/* 00C00 80A31570 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C04 80A31574 03E00008 */  jr      $ra                        
/* 00C08 80A31578 00000000 */  nop
