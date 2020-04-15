glabel func_8088ABA0
/* 00B80 8088ABA0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B84 8088ABA4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B88 8088ABA8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B8C 8088ABAC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B90 8088ABB0 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00B94 8088ABB4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B98 8088ABB8 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00B9C 8088ABBC 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00BA0 8088ABC0 10400008 */  beq     $v0, $zero, .L8088ABE4     
/* 00BA4 8088ABC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BA8 8088ABC8 1041000A */  beq     $v0, $at, .L8088ABF4       
/* 00BAC 8088ABCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB0 8088ABD0 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00BB4 8088ABD4 1041000B */  beq     $v0, $at, .L8088AC04       
/* 00BB8 8088ABD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BBC 8088ABDC 1000000C */  beq     $zero, $zero, .L8088AC10   
/* 00BC0 8088ABE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8088ABE4:
/* 00BC4 8088ABE4 0C2228EC */  jal     func_8088A3B0              
/* 00BC8 8088ABE8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00BCC 8088ABEC 10000008 */  beq     $zero, $zero, .L8088AC10   
/* 00BD0 8088ABF0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8088ABF4:
/* 00BD4 8088ABF4 0C22299F */  jal     func_8088A67C              
/* 00BD8 8088ABF8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00BDC 8088ABFC 10000004 */  beq     $zero, $zero, .L8088AC10   
/* 00BE0 8088AC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8088AC04:
/* 00BE4 8088AC04 0C222A45 */  jal     func_8088A914              
/* 00BE8 8088AC08 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00BEC 8088AC0C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8088AC10:
/* 00BF0 8088AC10 0C2228A4 */  jal     func_8088A290              
/* 00BF4 8088AC14 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 00BF8 8088AC18 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00BFC 8088AC1C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C00 8088AC20 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C04 8088AC24 03E00008 */  jr      $ra                        
/* 00C08 8088AC28 00000000 */  nop
