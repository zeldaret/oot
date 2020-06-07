glabel func_8083A0D4
/* 07EC4 8083A0D4 8C820438 */  lw      $v0, 0x0438($a0)           ## 00000438
/* 07EC8 8083A0D8 0002102B */  sltu    $v0, $zero, $v0            
/* 07ECC 8083A0DC 10400003 */  beq     $v0, $zero, .L8083A0EC     
/* 07ED0 8083A0E0 00000000 */  nop
/* 07ED4 8083A0E4 8C8203AC */  lw      $v0, 0x03AC($a0)           ## 000003AC
/* 07ED8 8083A0E8 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L8083A0EC:
/* 07EDC 8083A0EC 03E00008 */  jr      $ra                        
/* 07EE0 8083A0F0 00000000 */  nop
