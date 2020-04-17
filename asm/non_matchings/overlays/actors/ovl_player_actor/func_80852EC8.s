glabel func_80852EC8
/* 20CB8 80852EC8 8C831C44 */  lw      $v1, 0x1C44($a0)           ## 00001C44
/* 20CBC 80852ECC 3C0F8085 */  lui     $t7, %hi(func_8084EFC0)    ## $t7 = 80850000
/* 20CC0 80852ED0 25EFEFC0 */  addiu   $t7, $t7, %lo(func_8084EFC0) ## $t7 = 8084EFC0
/* 20CC4 80852ED4 8C6E0674 */  lw      $t6, 0x0674($v1)           ## 00000674
/* 20CC8 80852ED8 01CF1026 */  xor     $v0, $t6, $t7              
/* 20CCC 80852EDC 2C420001 */  sltiu   $v0, $v0, 0x0001           
/* 20CD0 80852EE0 10400004 */  beq     $v0, $zero, .L80852EF4     
/* 20CD4 80852EE4 00000000 */  nop
/* 20CD8 80852EE8 80620154 */  lb      $v0, 0x0154($v1)           ## 00000154
/* 20CDC 80852EEC 3842001F */  xori    $v0, $v0, 0x001F           ## $v0 = 0000001F
/* 20CE0 80852EF0 2C420001 */  sltiu   $v0, $v0, 0x0001           
.L80852EF4:
/* 20CE4 80852EF4 03E00008 */  jr      $ra                        
/* 20CE8 80852EF8 00000000 */  nop
