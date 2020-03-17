glabel func_8087DC94
/* 00254 8087DC94 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00258 8087DC98 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0025C 8087DC9C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00260 8087DCA0 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00264 8087DCA4 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00268 8087DCA8 24010080 */  addiu   $at, $zero, 0x0080         ## $at = 00000080
/* 0026C 8087DCAC 31CF0080 */  andi    $t7, $t6, 0x0080           ## $t7 = 00000000
/* 00270 8087DCB0 15E1000B */  bne     $t7, $at, .L8087DCE0       
/* 00274 8087DCB4 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00278 8087DCB8 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 0027C 8087DCBC 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00280 8087DCC0 3C058088 */  lui     $a1, %hi(D_8087DD88)       ## $a1 = 80880000
/* 00284 8087DCC4 0018C880 */  sll     $t9, $t8,  2               
/* 00288 8087DCC8 00B92821 */  addu    $a1, $a1, $t9              
/* 0028C 8087DCCC 8CA5DD88 */  lw      $a1, %lo(D_8087DD88)($a1)  
/* 00290 8087DCD0 0C00D4C9 */  jal     Draw_DListXlu
              
/* 00294 8087DCD4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00298 8087DCD8 10000009 */  beq     $zero, $zero, .L8087DD00   
/* 0029C 8087DCDC 8FAA0018 */  lw      $t2, 0x0018($sp)           
.L8087DCE0:
/* 002A0 8087DCE0 84C8001C */  lh      $t0, 0x001C($a2)           ## 0000001C
/* 002A4 8087DCE4 3C058088 */  lui     $a1, %hi(D_8087DD88)       ## $a1 = 80880000
/* 002A8 8087DCE8 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 002AC 8087DCEC 00084880 */  sll     $t1, $t0,  2               
/* 002B0 8087DCF0 00A92821 */  addu    $a1, $a1, $t1              
/* 002B4 8087DCF4 0C00D498 */  jal     Draw_DListOpa
              
/* 002B8 8087DCF8 8CA5DD88 */  lw      $a1, %lo(D_8087DD88)($a1)  
/* 002BC 8087DCFC 8FAA0018 */  lw      $t2, 0x0018($sp)           
.L8087DD00:
/* 002C0 8087DD00 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 002C4 8087DD04 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 002C8 8087DD08 854B001C */  lh      $t3, 0x001C($t2)           ## 0000001C
/* 002CC 8087DD0C 55600004 */  bnel    $t3, $zero, .L8087DD20     
/* 002D0 8087DD10 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 002D4 8087DD14 0C00D4C9 */  jal     Draw_DListXlu
              
/* 002D8 8087DD18 24A51250 */  addiu   $a1, $a1, 0x1250           ## $a1 = 06001250
/* 002DC 8087DD1C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8087DD20:
/* 002E0 8087DD20 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002E4 8087DD24 03E00008 */  jr      $ra                        
/* 002E8 8087DD28 00000000 */  nop
/* 002EC 8087DD2C 00000000 */  nop

