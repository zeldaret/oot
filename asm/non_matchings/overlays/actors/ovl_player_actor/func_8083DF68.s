glabel func_8083DF68
/* 0BD58 8083DF68 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0BD5C 8083DF6C 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 0BD60 8083DF70 8DCEFA90 */  lw      $t6, -0x0570($t6)          ## 8015FA90
/* 0BD64 8083DF74 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0BD68 8083DF78 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0BD6C 8083DF7C AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0BD70 8083DF80 85CF003A */  lh      $t7, 0x003A($t6)           ## 8016003A
/* 0BD74 8083DF84 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0BD78 8083DF88 44814000 */  mtc1    $at, $f8                   ## $f8 = 100.00
/* 0BD7C 8083DF8C 448F2000 */  mtc1    $t7, $f4                   ## $f4 = 0.00
/* 0BD80 8083DF90 44856000 */  mtc1    $a1, $f12                  ## $f12 = 0.00
/* 0BD84 8083DF94 24840838 */  addiu   $a0, $a0, 0x0838           ## $a0 = 00000838
/* 0BD88 8083DF98 468021A0 */  cvt.s.w $f6, $f4                   
/* 0BD8C 8083DF9C 44056000 */  mfc1    $a1, $f12                  
/* 0BD90 8083DFA0 3C073FC0 */  lui     $a3, 0x3FC0                ## $a3 = 3FC00000
/* 0BD94 8083DFA4 46083283 */  div.s   $f10, $f6, $f8             
/* 0BD98 8083DFA8 44065000 */  mfc1    $a2, $f10                  
/* 0BD9C 8083DFAC 0C01DF1B */  jal     func_80077C6C              
/* 0BDA0 8083DFB0 00000000 */  nop
/* 0BDA4 8083DFB4 3C188016 */  lui     $t8, 0x8016                ## $t8 = 80160000
/* 0BDA8 8083DFB8 8F18FA90 */  lw      $t8, -0x0570($t8)          ## 8015FA90
/* 0BDAC 8083DFBC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0BDB0 8083DFC0 87A50022 */  lh      $a1, 0x0022($sp)           
/* 0BDB4 8083DFC4 8706004A */  lh      $a2, 0x004A($t8)           ## 8016004A
/* 0BDB8 8083DFC8 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 0BDBC 8083DFCC 2484083C */  addiu   $a0, $a0, 0x083C           ## $a0 = 0000083C
/* 0BDC0 8083DFD0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0BDC4 8083DFD4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0BDC8 8083DFD8 03E00008 */  jr      $ra                        
/* 0BDCC 8083DFDC 00000000 */  nop
