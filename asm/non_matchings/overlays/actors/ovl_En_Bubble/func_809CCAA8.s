glabel func_809CCAA8
/* 00EA8 809CCAA8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00EAC 809CCAAC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00EB0 809CCAB0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00EB4 809CCAB4 0C272FF5 */  jal     func_809CBFD4              
/* 00EB8 809CCAB8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00EBC 809CCABC 04400008 */  bltz    $v0, .L809CCAE0            
/* 00EC0 809CCAC0 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00EC4 809CCAC4 3C0E8003 */  lui     $t6, 0x8003                ## $t6 = 80030000
/* 00EC8 809CCAC8 3C0F809D */  lui     $t7, %hi(func_809CCAF0)    ## $t7 = 809D0000
/* 00ECC 809CCACC 25CEB5EC */  addiu   $t6, $t6, 0xB5EC           ## $t6 = 8002B5EC
/* 00ED0 809CCAD0 25EFCAF0 */  addiu   $t7, $t7, %lo(func_809CCAF0) ## $t7 = 809CCAF0
/* 00ED4 809CCAD4 AC8E00C0 */  sw      $t6, 0x00C0($a0)           ## 000000C0
/* 00ED8 809CCAD8 A482020A */  sh      $v0, 0x020A($a0)           ## 0000020A
/* 00EDC 809CCADC AC8F014C */  sw      $t7, 0x014C($a0)           ## 0000014C
.L809CCAE0:
/* 00EE0 809CCAE0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00EE4 809CCAE4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE8 809CCAE8 03E00008 */  jr      $ra                        
/* 00EEC 809CCAEC 00000000 */  nop
