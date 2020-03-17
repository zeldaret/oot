glabel func_808017F0
/* 00C60 808017F0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00C64 808017F4 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00C68 808017F8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00C6C 808017FC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00C70 80801800 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00C74 80801804 2405000A */  addiu   $a1, $zero, 0x000A         ## $a1 = 0000000A
/* 00C78 80801808 0C03ED07 */  jal     GfxPrint_SetPos              
/* 00C7C 8080180C 2406000F */  addiu   $a2, $zero, 0x000F         ## $a2 = 0000000F
/* 00C80 80801810 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00C84 80801814 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00C88 80801818 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00C8C 8080181C 240500FF */  addiu   $a1, $zero, 0x00FF         ## $a1 = 000000FF
/* 00C90 80801820 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00C94 80801824 0C03ECEB */  jal     GfxPrint_SetColor              
/* 00C98 80801828 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 00C9C 8080182C 0C03F66B */  jal     Math_Rand_ZeroOne          ## Rand.Next() float
/* 00CA0 80801830 00000000 */  nop
/* 00CA4 80801834 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00CA8 80801838 44812000 */  mtc1    $at, $f4                   ## $f4 = 12.00
/* 00CAC 8080183C 3C068080 */  lui     $a2, %hi(D_808025A8)       ## $a2 = 80800000
/* 00CB0 80801840 3C058080 */  lui     $a1, %hi(D_8080344C)       ## $a1 = 80800000
/* 00CB4 80801844 46040182 */  mul.s   $f6, $f0, $f4              
/* 00CB8 80801848 24A5344C */  addiu   $a1, $a1, %lo(D_8080344C)  ## $a1 = 8080344C
/* 00CBC 8080184C 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00CC0 80801850 4600320D */  trunc.w.s $f8, $f6                   
/* 00CC4 80801854 44184000 */  mfc1    $t8, $f8                   
/* 00CC8 80801858 00000000 */  nop
/* 00CCC 8080185C 0018C880 */  sll     $t9, $t8,  2               
/* 00CD0 80801860 00D93021 */  addu    $a2, $a2, $t9              
/* 00CD4 80801864 0C03EF2D */  jal     GfxPrint_Printf              
/* 00CD8 80801868 8CC625A8 */  lw      $a2, %lo(D_808025A8)($a2)  
/* 00CDC 8080186C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00CE0 80801870 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00CE4 80801874 03E00008 */  jr      $ra                        
/* 00CE8 80801878 00000000 */  nop


