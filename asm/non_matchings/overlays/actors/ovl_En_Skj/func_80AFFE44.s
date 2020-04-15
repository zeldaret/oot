glabel func_80AFFE44
/* 01B94 80AFFE44 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01B98 80AFFE48 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01B9C 80AFFE4C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01BA0 80AFFE50 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BA4 80AFFE54 0C00BD04 */  jal     func_8002F410              
/* 01BA8 80AFFE58 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01BAC 80AFFE5C 10400005 */  beq     $v0, $zero, .L80AFFE74     
/* 01BB0 80AFFE60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BB4 80AFFE64 0C2BFFAD */  jal     func_80AFFEB4              
/* 01BB8 80AFFE68 AE000118 */  sw      $zero, 0x0118($s0)         ## 00000118
/* 01BBC 80AFFE6C 1000000D */  beq     $zero, $zero, .L80AFFEA4   
/* 01BC0 80AFFE70 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFFE74:
/* 01BC4 80AFFE74 0C2BFA5A */  jal     func_80AFE968              
/* 01BC8 80AFFE78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BCC 80AFFE7C E7A00028 */  swc1    $f0, 0x0028($sp)           
/* 01BD0 80AFFE80 0C2BFA6B */  jal     func_80AFE9AC              
/* 01BD4 80AFFE84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BD8 80AFFE88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01BDC 80AFFE8C 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 01BE0 80AFFE90 2406003E */  addiu   $a2, $zero, 0x003E         ## $a2 = 0000003E
/* 01BE4 80AFFE94 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 01BE8 80AFFE98 0C00BD0D */  jal     func_8002F434              
/* 01BEC 80AFFE9C E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 01BF0 80AFFEA0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AFFEA4:
/* 01BF4 80AFFEA4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01BF8 80AFFEA8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01BFC 80AFFEAC 03E00008 */  jr      $ra                        
/* 01C00 80AFFEB0 00000000 */  nop
