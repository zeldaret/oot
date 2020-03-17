glabel func_80A98254
/* 014A4 80A98254 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 014A8 80A98258 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 014AC 80A9825C 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 014B0 80A98260 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 014B4 80A98264 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 014B8 80A98268 10200038 */  beq     $at, $zero, .L80A9834C     
/* 014BC 80A9826C 000F7880 */  sll     $t7, $t7,  2               
/* 014C0 80A98270 3C0180AA */  lui     $at, %hi(jtbl_80A9A888)       ## $at = 80AA0000
/* 014C4 80A98274 002F0821 */  addu    $at, $at, $t7              
/* 014C8 80A98278 8C2FA888 */  lw      $t7, %lo(jtbl_80A9A888)($at)  
/* 014CC 80A9827C 01E00008 */  jr      $t7                        
/* 014D0 80A98280 00000000 */  nop
glabel L80A98284
/* 014D4 80A98284 0C2A5F5A */  jal     func_80A97D68              
/* 014D8 80A98288 00000000 */  nop
/* 014DC 80A9828C 10000030 */  beq     $zero, $zero, .L80A98350   
/* 014E0 80A98290 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98294
/* 014E4 80A98294 0C2A5F86 */  jal     func_80A97E18              
/* 014E8 80A98298 00000000 */  nop
/* 014EC 80A9829C 1000002C */  beq     $zero, $zero, .L80A98350   
/* 014F0 80A982A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982A4
/* 014F4 80A982A4 0C2A600D */  jal     func_80A98034              
/* 014F8 80A982A8 00000000 */  nop
/* 014FC 80A982AC 10000028 */  beq     $zero, $zero, .L80A98350   
/* 01500 80A982B0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982B4
/* 01504 80A982B4 0C2A5F86 */  jal     func_80A97E18              
/* 01508 80A982B8 00000000 */  nop
/* 0150C 80A982BC 10000024 */  beq     $zero, $zero, .L80A98350   
/* 01510 80A982C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982C4
/* 01514 80A982C4 0C2A5FDC */  jal     func_80A97F70              
/* 01518 80A982C8 00000000 */  nop
/* 0151C 80A982CC 10000020 */  beq     $zero, $zero, .L80A98350   
/* 01520 80A982D0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982D4
/* 01524 80A982D4 0C2A5FAC */  jal     func_80A97EB0              
/* 01528 80A982D8 00000000 */  nop
/* 0152C 80A982DC 1000001C */  beq     $zero, $zero, .L80A98350   
/* 01530 80A982E0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982E4
/* 01534 80A982E4 0C2A5FC8 */  jal     func_80A97F20              
/* 01538 80A982E8 00000000 */  nop
/* 0153C 80A982EC 10000018 */  beq     $zero, $zero, .L80A98350   
/* 01540 80A982F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A982F4
/* 01544 80A982F4 0C2A5FAC */  jal     func_80A97EB0              
/* 01548 80A982F8 00000000 */  nop
/* 0154C 80A982FC 10000014 */  beq     $zero, $zero, .L80A98350   
/* 01550 80A98300 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98304
/* 01554 80A98304 0C2A5FAC */  jal     func_80A97EB0              
/* 01558 80A98308 00000000 */  nop
/* 0155C 80A9830C 10000010 */  beq     $zero, $zero, .L80A98350   
/* 01560 80A98310 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98314
/* 01564 80A98314 0C2A5FAC */  jal     func_80A97EB0              
/* 01568 80A98318 00000000 */  nop
/* 0156C 80A9831C 1000000C */  beq     $zero, $zero, .L80A98350   
/* 01570 80A98320 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98324
/* 01574 80A98324 0C2A5F86 */  jal     func_80A97E18              
/* 01578 80A98328 00000000 */  nop
/* 0157C 80A9832C 10000008 */  beq     $zero, $zero, .L80A98350   
/* 01580 80A98330 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98334
/* 01584 80A98334 0C2A5FAC */  jal     func_80A97EB0              
/* 01588 80A98338 00000000 */  nop
/* 0158C 80A9833C 10000004 */  beq     $zero, $zero, .L80A98350   
/* 01590 80A98340 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A98344
/* 01594 80A98344 0C2A5F86 */  jal     func_80A97E18              
/* 01598 80A98348 00000000 */  nop
.L80A9834C:
/* 0159C 80A9834C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98350:
/* 015A0 80A98350 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015A4 80A98354 03E00008 */  jr      $ra                        
/* 015A8 80A98358 00000000 */  nop


