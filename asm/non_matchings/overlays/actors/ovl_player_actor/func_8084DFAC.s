glabel func_8084DFAC
/* 1BD9C 8084DFAC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1BDA0 8084DFB0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1BDA4 8084DFB4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1BDA8 8084DFB8 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 1BDAC 8084DFBC 0C2137DB */  jal     func_8084DF6C              
/* 1BDB0 8084DFC0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 1BDB4 8084DFC4 0C20C8BF */  jal     func_808322FC              
/* 1BDB8 8084DFC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BDBC 8084DFCC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1BDC0 8084DFD0 0C20F03A */  jal     func_8083C0E8              
/* 1BDC4 8084DFD4 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 1BDC8 8084DFD8 860E00B6 */  lh      $t6, 0x00B6($s0)           ## 000000B6
/* 1BDCC 8084DFDC A60E083C */  sh      $t6, 0x083C($s0)           ## 0000083C
/* 1BDD0 8084DFE0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1BDD4 8084DFE4 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1BDD8 8084DFE8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1BDDC 8084DFEC 03E00008 */  jr      $ra                        
/* 1BDE0 8084DFF0 00000000 */  nop


