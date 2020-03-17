glabel EnGirlA_Init
/* 002D8 80A3AA28 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002DC 80A3AA2C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002E0 80A3AA30 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002E4 80A3AA34 0C28E9D6 */  jal     func_80A3A758              
/* 002E8 80A3AA38 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002EC 80A3AA3C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002F0 80A3AA40 0C28EA34 */  jal     func_80A3A8D0              
/* 002F4 80A3AA44 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 002F8 80A3AA48 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 002FC 80A3AA4C 3C0580A4 */  lui     $a1, %hi(D_80A3C590)       ## $a1 = 80A40000
/* 00300 80A3AA50 3C0480A4 */  lui     $a0, %hi(D_80A3D088)       ## $a0 = 80A40000
/* 00304 80A3AA54 85C6001C */  lh      $a2, 0x001C($t6)           ## 0000001C
/* 00308 80A3AA58 2484D088 */  addiu   $a0, $a0, %lo(D_80A3D088)  ## $a0 = 80A3D088
/* 0030C 80A3AA5C 00067880 */  sll     $t7, $a2,  2               
/* 00310 80A3AA60 00AF2821 */  addu    $a1, $a1, $t7              
/* 00314 80A3AA64 0C00084C */  jal     osSyncPrintf
              
/* 00318 80A3AA68 8CA5C590 */  lw      $a1, %lo(D_80A3C590)($a1)  
/* 0031C 80A3AA6C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00320 80A3AA70 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00324 80A3AA74 03E00008 */  jr      $ra                        
/* 00328 80A3AA78 00000000 */  nop


