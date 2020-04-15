glabel func_80801DE4
/* 01254 80801DE4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01258 80801DE8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0125C 80801DEC 0C20032D */  jal     func_80800CB4              
/* 01260 80801DF0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01264 80801DF4 0C200741 */  jal     func_80801D04              
/* 01268 80801DF8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0126C 80801DFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01270 80801E00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01274 80801E04 03E00008 */  jr      $ra                        
/* 01278 80801E08 00000000 */  nop
