glabel func_80AAAC78
/* 00A28 80AAAC78 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A2C 80AAAC7C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A30 80AAAC80 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A34 80AAAC84 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A38 80AAAC88 0C042F6F */  jal     func_8010BDBC              
/* 00A3C 80AAAC8C 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00A40 80AAAC90 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A44 80AAAC94 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00A48 80AAAC98 00022400 */  sll     $a0, $v0, 16               
/* 00A4C 80AAAC9C 90C30209 */  lbu     $v1, 0x0209($a2)           ## 00000209
/* 00A50 80AAACA0 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 00A54 80AAACA4 00042403 */  sra     $a0, $a0, 16               
/* 00A58 80AAACA8 10610007 */  beq     $v1, $at, .L80AAACC8       
/* 00A5C 80AAACAC 00057400 */  sll     $t6, $a1, 16               
/* 00A60 80AAACB0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00A64 80AAACB4 10610004 */  beq     $v1, $at, .L80AAACC8       
/* 00A68 80AAACB8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00A6C 80AAACBC 10610002 */  beq     $v1, $at, .L80AAACC8       
/* 00A70 80AAACC0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00A74 80AAACC4 14610006 */  bne     $v1, $at, .L80AAACE0       
.L80AAACC8:
/* 00A78 80AAACC8 000E7C03 */  sra     $t7, $t6, 16               
/* 00A7C 80AAACCC 51E30005 */  beql    $t7, $v1, .L80AAACE4       
/* 00A80 80AAACD0 A0C40209 */  sb      $a0, 0x0209($a2)           ## 00000209
/* 00A84 80AAACD4 90D80208 */  lbu     $t8, 0x0208($a2)           ## 00000208
/* 00A88 80AAACD8 27190001 */  addiu   $t9, $t8, 0x0001           ## $t9 = 00000001
/* 00A8C 80AAACDC A0D90208 */  sb      $t9, 0x0208($a2)           ## 00000208
.L80AAACE0:
/* 00A90 80AAACE0 A0C40209 */  sb      $a0, 0x0209($a2)           ## 00000209
.L80AAACE4:
/* 00A94 80AAACE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00A98 80AAACE8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00A9C 80AAACEC 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
/* 00AA0 80AAACF0 03E00008 */  jr      $ra                        
/* 00AA4 80AAACF4 00000000 */  nop
