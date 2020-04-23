glabel func_80AB7420
/* 01CA0 80AB7420 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01CA4 80AB7424 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01CA8 80AB7428 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01CAC 80AB742C 948E0088 */  lhu     $t6, 0x0088($a0)           ## 00000088
/* 01CB0 80AB7430 3C0180AC */  lui     $at, %hi(D_80AB8B08)       ## $at = 80AC0000
/* 01CB4 80AB7434 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 01CB8 80AB7438 51E0000D */  beql    $t7, $zero, .L80AB7470     
/* 01CBC 80AB743C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01CC0 80AB7440 C42C8B08 */  lwc1    $f12, %lo(D_80AB8B08)($at) 
/* 01CC4 80AB7444 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01CC8 80AB7448 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01CCC 80AB744C 4600010D */  trunc.w.s $f4, $f0                   
/* 01CD0 80AB7450 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01CD4 80AB7454 3C0B80AB */  lui     $t3, %hi(func_80AB627C)    ## $t3 = 80AB0000
/* 01CD8 80AB7458 256B627C */  addiu   $t3, $t3, %lo(func_80AB627C) ## $t3 = 80AB627C
/* 01CDC 80AB745C 44092000 */  mfc1    $t1, $f4                   
/* 01CE0 80AB7460 AC8B0250 */  sw      $t3, 0x0250($a0)           ## 00000250
/* 01CE4 80AB7464 252A0005 */  addiu   $t2, $t1, 0x0005           ## $t2 = 00000005
/* 01CE8 80AB7468 A48A02A4 */  sh      $t2, 0x02A4($a0)           ## 000002A4
/* 01CEC 80AB746C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AB7470:
/* 01CF0 80AB7470 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01CF4 80AB7474 03E00008 */  jr      $ra                        
/* 01CF8 80AB7478 00000000 */  nop
