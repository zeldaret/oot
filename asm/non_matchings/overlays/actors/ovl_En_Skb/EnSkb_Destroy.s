glabel EnSkb_Destroy
/* 0036C 80AFCD0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00370 80AFCD10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00374 80AFCD14 8C830118 */  lw      $v1, 0x0118($a0)           ## 00000118
/* 00378 80AFCD18 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 0037C 80AFCD1C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00380 80AFCD20 10600009 */  beq     $v1, $zero, .L80AFCD48     
/* 00384 80AFCD24 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00388 80AFCD28 8C6E0130 */  lw      $t6, 0x0130($v1)           ## 00000130
/* 0038C 80AFCD2C 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
/* 00390 80AFCD30 11C00005 */  beq     $t6, $zero, .L80AFCD48     
/* 00394 80AFCD34 00000000 */  nop
/* 00398 80AFCD38 84630152 */  lh      $v1, 0x0152($v1)           ## 00000152
/* 0039C 80AFCD3C 18600002 */  blez    $v1, .L80AFCD48            
/* 003A0 80AFCD40 246FFFFF */  addiu   $t7, $v1, 0xFFFF           ## $t7 = FFFFFFFF
/* 003A4 80AFCD44 A44F0152 */  sh      $t7, 0x0152($v0)           ## 00000152
.L80AFCD48:
/* 003A8 80AFCD48 0C016F32 */  jal     func_8005BCC8              
/* 003AC 80AFCD4C 24C502A4 */  addiu   $a1, $a2, 0x02A4           ## $a1 = 000002A4
/* 003B0 80AFCD50 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003B4 80AFCD54 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003B8 80AFCD58 03E00008 */  jr      $ra                        
/* 003BC 80AFCD5C 00000000 */  nop


