glabel func_809DFE98
/* 01098 809DFE98 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0109C 809DFE9C AFB00028 */  sw      $s0, 0x0028($sp)           
/* 010A0 809DFEA0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010A4 809DFEA4 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 010A8 809DFEA8 248401E4 */  addiu   $a0, $a0, 0x01E4           ## $a0 = 000001E4
/* 010AC 809DFEAC AFA50044 */  sw      $a1, 0x0044($sp)           
/* 010B0 809DFEB0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010B4 809DFEB4 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 010B8 809DFEB8 50400029 */  beql    $v0, $zero, .L809DFF60     
/* 010BC 809DFEBC 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
/* 010C0 809DFEC0 8E0E01EC */  lw      $t6, 0x01EC($s0)           ## 000001EC
/* 010C4 809DFEC4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 010C8 809DFEC8 24844348 */  addiu   $a0, $a0, 0x4348           ## $a0 = 06004348
/* 010CC 809DFECC 148E0014 */  bne     $a0, $t6, .L809DFF20       
/* 010D0 809DFED0 00000000 */  nop
/* 010D4 809DFED4 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 010D8 809DFED8 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 010DC 809DFEDC 24844E98 */  addiu   $a0, $a0, 0x4E98           ## $a0 = 06004E98
/* 010E0 809DFEE0 44822000 */  mtc1    $v0, $f4                   ## $f4 = 0.00
/* 010E4 809DFEE4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 010E8 809DFEE8 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 010EC 809DFEEC 468021A0 */  cvt.s.w $f6, $f4                   
/* 010F0 809DFEF0 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 010F4 809DFEF4 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 010F8 809DFEF8 44060000 */  mfc1    $a2, $f0                   
/* 010FC 809DFEFC AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 01100 809DFF00 24A54E98 */  addiu   $a1, $a1, 0x4E98           ## $a1 = 06004E98
/* 01104 809DFF04 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01108 809DFF08 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 0110C 809DFF0C 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01110 809DFF10 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01114 809DFF14 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 01118 809DFF18 10000011 */  beq     $zero, $zero, .L809DFF60   
/* 0111C 809DFF1C 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
.L809DFF20:
/* 01120 809DFF20 0C028800 */  jal     SkelAnime_GetFrameCount
              
/* 01124 809DFF24 00000000 */  nop
/* 01128 809DFF28 44824000 */  mtc1    $v0, $f8                   ## $f8 = 0.00
/* 0112C 809DFF2C 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 01130 809DFF30 44810000 */  mtc1    $at, $f0                   ## $f0 = 1.00
/* 01134 809DFF34 468042A0 */  cvt.s.w $f10, $f8                  
/* 01138 809DFF38 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 0113C 809DFF3C 44060000 */  mfc1    $a2, $f0                   
/* 01140 809DFF40 24A54348 */  addiu   $a1, $a1, 0x4348           ## $a1 = 06004348
/* 01144 809DFF44 8FA40030 */  lw      $a0, 0x0030($sp)           
/* 01148 809DFF48 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 0114C 809DFF4C E7AA0010 */  swc1    $f10, 0x0010($sp)          
/* 01150 809DFF50 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 01154 809DFF54 0C029468 */  jal     SkelAnime_ChangeAnimation
              
/* 01158 809DFF58 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 0115C 809DFF5C 8E19027C */  lw      $t9, 0x027C($s0)           ## 0000027C
.L809DFF60:
/* 01160 809DFF60 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01164 809DFF64 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 01168 809DFF68 0320F809 */  jalr    $ra, $t9                   
/* 0116C 809DFF6C 00000000 */  nop
/* 01170 809DFF70 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 01174 809DFF74 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 01178 809DFF78 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 0117C 809DFF7C 03E00008 */  jr      $ra                        
/* 01180 809DFF80 00000000 */  nop


