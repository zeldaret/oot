glabel EnGoroiwa_Update
/* 02028 80A4DCC8 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0202C 80A4DCCC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 02030 80A4DCD0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 02034 80A4DCD4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 02038 80A4DCD8 8CA21C44 */  lw      $v0, 0x1C44($a1)           ## 00001C44
/* 0203C 80A4DCDC 3C013000 */  lui     $at, 0x3000                ## $at = 30000000
/* 02040 80A4DCE0 342100C0 */  ori     $at, $at, 0x00C0           ## $at = 300000C0
/* 02044 80A4DCE4 8C4E067C */  lw      $t6, 0x067C($v0)           ## 0000067C
/* 02048 80A4DCE8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0204C 80A4DCEC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 02050 80A4DCF0 01C17824 */  and     $t7, $t6, $at              
/* 02054 80A4DCF4 55E00048 */  bnel    $t7, $zero, .L80A4DE18     
/* 02058 80A4DCF8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0205C 80A4DCFC 848201C8 */  lh      $v0, 0x01C8($a0)           ## 000001C8
/* 02060 80A4DD00 18400002 */  blez    $v0, .L80A4DD0C            
/* 02064 80A4DD04 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 02068 80A4DD08 A49801C8 */  sh      $t8, 0x01C8($a0)           ## 000001C8
.L80A4DD0C:
/* 0206C 80A4DD0C 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 02070 80A4DD10 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02074 80A4DD14 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 02078 80A4DD18 0320F809 */  jalr    $ra, $t9                   
/* 0207C 80A4DD1C 00000000 */  nop
/* 02080 80A4DD20 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 02084 80A4DD24 262407C0 */  addiu   $a0, $s1, 0x07C0           ## $a0 = 000007C0
/* 02088 80A4DD28 26050078 */  addiu   $a1, $s0, 0x0078           ## $a1 = 00000078
/* 0208C 80A4DD2C 00021283 */  sra     $v0, $v0, 10               
/* 02090 80A4DD30 30420001 */  andi    $v0, $v0, 0x0001           ## $v0 = 00000000
/* 02094 80A4DD34 1040000E */  beq     $v0, $zero, .L80A4DD70     
/* 02098 80A4DD38 27A60030 */  addiu   $a2, $sp, 0x0030           ## $a2 = FFFFFFF0
/* 0209C 80A4DD3C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 020A0 80A4DD40 14410010 */  bne     $v0, $at, .L80A4DD84       
/* 020A4 80A4DD44 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 020A8 80A4DD48 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 020AC 80A4DD4C 2408001C */  addiu   $t0, $zero, 0x001C         ## $t0 = 0000001C
/* 020B0 80A4DD50 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 020B4 80A4DD54 44060000 */  mfc1    $a2, $f0                   
/* 020B8 80A4DD58 44070000 */  mfc1    $a3, $f0                   
/* 020BC 80A4DD5C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 020C0 80A4DD60 0C00B92D */  jal     func_8002E4B4              
/* 020C4 80A4DD64 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 020C8 80A4DD68 10000007 */  beq     $zero, $zero, .L80A4DD88   
/* 020CC 80A4DD6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A4DD70:
/* 020D0 80A4DD70 26090024 */  addiu   $t1, $s0, 0x0024           ## $t1 = 00000024
/* 020D4 80A4DD74 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 020D8 80A4DD78 0C00F269 */  jal     func_8003C9A4              
/* 020DC 80A4DD7C 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 020E0 80A4DD80 E6000080 */  swc1    $f0, 0x0080($s0)           ## 00000080
.L80A4DD84:
/* 020E4 80A4DD84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A4DD88:
/* 020E8 80A4DD88 0C2933B6 */  jal     func_80A4CED8              
/* 020EC 80A4DD8C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 020F0 80A4DD90 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 020F4 80A4DD94 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 020F8 80A4DD98 C6040090 */  lwc1    $f4, 0x0090($s0)           ## 00000090
/* 020FC 80A4DD9C 4606203C */  c.lt.s  $f4, $f6                   
/* 02100 80A4DDA0 00000000 */  nop
/* 02104 80A4DDA4 4502001C */  bc1fl   .L80A4DE18                 
/* 02108 80A4DDA8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 0210C 80A4DDAC 0C292F28 */  jal     func_80A4BCA0              
/* 02110 80A4DDB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02114 80A4DDB4 920201D3 */  lbu     $v0, 0x01D3($s0)           ## 000001D3
/* 02118 80A4DDB8 304A0001 */  andi    $t2, $v0, 0x0001           ## $t2 = 00000000
/* 0211C 80A4DDBC 5140000B */  beql    $t2, $zero, .L80A4DDEC     
/* 02120 80A4DDC0 304C0002 */  andi    $t4, $v0, 0x0002           ## $t4 = 00000000
/* 02124 80A4DDC4 860B01C8 */  lh      $t3, 0x01C8($s0)           ## 000001C8
/* 02128 80A4DDC8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0212C 80A4DDCC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02130 80A4DDD0 1D600005 */  bgtz    $t3, .L80A4DDE8            
/* 02134 80A4DDD4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02138 80A4DDD8 02212821 */  addu    $a1, $s1, $at              
/* 0213C 80A4DDDC 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 02140 80A4DDE0 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
/* 02144 80A4DDE4 920201D3 */  lbu     $v0, 0x01D3($s0)           ## 000001D3
.L80A4DDE8:
/* 02148 80A4DDE8 304C0002 */  andi    $t4, $v0, 0x0002           ## $t4 = 00000000
.L80A4DDEC:
/* 0214C 80A4DDEC 5180000A */  beql    $t4, $zero, .L80A4DE18     
/* 02150 80A4DDF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02154 80A4DDF4 860D01C8 */  lh      $t5, 0x01C8($s0)           ## 000001C8
/* 02158 80A4DDF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0215C 80A4DDFC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02160 80A4DE00 1DA00004 */  bgtz    $t5, .L80A4DE14            
/* 02164 80A4DE04 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02168 80A4DE08 02212821 */  addu    $a1, $s1, $at              
/* 0216C 80A4DE0C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02170 80A4DE10 26060150 */  addiu   $a2, $s0, 0x0150           ## $a2 = 00000150
.L80A4DE14:
/* 02174 80A4DE14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A4DE18:
/* 02178 80A4DE18 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 0217C 80A4DE1C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02180 80A4DE20 03E00008 */  jr      $ra                        
/* 02184 80A4DE24 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
