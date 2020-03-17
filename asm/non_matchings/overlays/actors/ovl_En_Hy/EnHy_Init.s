glabel EnHy_Init
/* 017D0 80A70D80 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 017D4 80A70D84 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 017D8 80A70D88 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 017DC 80A70D8C AFA50024 */  sw      $a1, 0x0024($sp)           
/* 017E0 80A70D90 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 017E4 80A70D94 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 017E8 80A70D98 31CF007F */  andi    $t7, $t6, 0x007F           ## $t7 = 00000000
/* 017EC 80A70D9C 29E10015 */  slti    $at, $t7, 0x0015           
/* 017F0 80A70DA0 10200009 */  beq     $at, $zero, .L80A70DC8     
/* 017F4 80A70DA4 00000000 */  nop
/* 017F8 80A70DA8 0C29BDD1 */  jal     func_80A6F744              
/* 017FC 80A70DAC 00000000 */  nop
/* 01800 80A70DB0 10400005 */  beq     $v0, $zero, .L80A70DC8     
/* 01804 80A70DB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01808 80A70DB8 0C29BD6C */  jal     func_80A6F5B0              
/* 0180C 80A70DBC 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 01810 80A70DC0 54400004 */  bnel    $v0, $zero, .L80A70DD4     
/* 01814 80A70DC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A70DC8:
/* 01818 80A70DC8 0C00B55C */  jal     Actor_Kill
              
/* 0181C 80A70DCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01820 80A70DD0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A70DD4:
/* 01824 80A70DD4 0C29C2B9 */  jal     func_80A70AE4              
/* 01828 80A70DD8 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0182C 80A70DDC 14400003 */  bne     $v0, $zero, .L80A70DEC     
/* 01830 80A70DE0 00000000 */  nop
/* 01834 80A70DE4 0C00B55C */  jal     Actor_Kill
              
/* 01838 80A70DE8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80A70DEC:
/* 0183C 80A70DEC 3C1880A7 */  lui     $t8, %hi(func_80A70E34)    ## $t8 = 80A70000
/* 01840 80A70DF0 27180E34 */  addiu   $t8, $t8, %lo(func_80A70E34) ## $t8 = 80A70E34
/* 01844 80A70DF4 AE180190 */  sw      $t8, 0x0190($s0)           ## 00000190
/* 01848 80A70DF8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0184C 80A70DFC 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01850 80A70E00 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01854 80A70E04 03E00008 */  jr      $ra                        
/* 01858 80A70E08 00000000 */  nop


