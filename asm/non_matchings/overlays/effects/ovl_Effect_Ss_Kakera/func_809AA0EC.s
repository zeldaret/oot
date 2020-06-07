glabel func_809AA0EC
/* 00A6C 809AA0EC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00A70 809AA0F0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A74 809AA0F4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A78 809AA0F8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A7C 809AA0FC 0C26A770 */  jal     func_809A9DC0              
/* 00A80 809AA100 F7B40018 */  sdc1    $f20, 0x0018($sp)          
/* 00A84 809AA104 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000000
/* 00A88 809AA108 C606002C */  lwc1    $f6, 0x002C($s0)           ## 0000002C
/* 00A8C 809AA10C 3C01447A */  lui     $at, 0x447A                ## $at = 447A0000
/* 00A90 809AA110 46062201 */  sub.s   $f8, $f4, $f6              
/* 00A94 809AA114 E7A8002C */  swc1    $f8, 0x002C($sp)           
/* 00A98 809AA118 C6100030 */  lwc1    $f16, 0x0030($s0)          ## 00000030
/* 00A9C 809AA11C C60A0004 */  lwc1    $f10, 0x0004($s0)          ## 00000004
/* 00AA0 809AA120 46105481 */  sub.s   $f18, $f10, $f16           
/* 00AA4 809AA124 C7AA002C */  lwc1    $f10, 0x002C($sp)          
/* 00AA8 809AA128 E7B20030 */  swc1    $f18, 0x0030($sp)          
/* 00AAC 809AA12C C6060034 */  lwc1    $f6, 0x0034($s0)           ## 00000034
/* 00AB0 809AA130 C6040008 */  lwc1    $f4, 0x0008($s0)           ## 00000008
/* 00AB4 809AA134 460A5402 */  mul.s   $f16, $f10, $f10           
/* 00AB8 809AA138 C7B20030 */  lwc1    $f18, 0x0030($sp)          
/* 00ABC 809AA13C 46062201 */  sub.s   $f8, $f4, $f6              
/* 00AC0 809AA140 46129102 */  mul.s   $f4, $f18, $f18            
/* 00AC4 809AA144 44819000 */  mtc1    $at, $f18                  ## $f18 = 1000.00
/* 00AC8 809AA148 E7A80034 */  swc1    $f8, 0x0034($sp)           
/* 00ACC 809AA14C C7A80034 */  lwc1    $f8, 0x0034($sp)           
/* 00AD0 809AA150 46084282 */  mul.s   $f10, $f8, $f8             
/* 00AD4 809AA154 46048180 */  add.s   $f6, $f16, $f4             
/* 00AD8 809AA158 460A3000 */  add.s   $f0, $f6, $f10             
/* 00ADC 809AA15C 46000504 */  sqrt.s  $f20, $f0                  
/* 00AE0 809AA160 4614903C */  c.lt.s  $f18, $f20                 
/* 00AE4 809AA164 00000000 */  nop
/* 00AE8 809AA168 45020004 */  bc1fl   .L809AA17C                 
/* 00AEC 809AA16C 860E0040 */  lh      $t6, 0x0040($s0)           ## 00000040
/* 00AF0 809AA170 1000002A */  beq     $zero, $zero, .L809AA21C   
/* 00AF4 809AA174 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00AF8 809AA178 860E0040 */  lh      $t6, 0x0040($s0)           ## 00000040
.L809AA17C:
/* 00AFC 809AA17C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B00 809AA180 51C0001E */  beql    $t6, $zero, .L809AA1FC     
/* 00B04 809AA184 4406A000 */  mfc1    $a2, $f20                  
/* 00B08 809AA188 4406A000 */  mfc1    $a2, $f20                  
/* 00B0C 809AA18C 0C26A7A2 */  jal     func_809A9E88              
/* 00B10 809AA190 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00B14 809AA194 14400003 */  bne     $v0, $zero, .L809AA1A4     
/* 00B18 809AA198 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B1C 809AA19C 1000001F */  beq     $zero, $zero, .L809AA21C   
/* 00B20 809AA1A0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809AA1A4:
/* 00B24 809AA1A4 4406A000 */  mfc1    $a2, $f20                  
/* 00B28 809AA1A8 0C26A7C4 */  jal     func_809A9F10              
/* 00B2C 809AA1AC 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00B30 809AA1B0 14400003 */  bne     $v0, $zero, .L809AA1C0     
/* 00B34 809AA1B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B38 809AA1B8 10000018 */  beq     $zero, $zero, .L809AA21C   
/* 00B3C 809AA1BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809AA1C0:
/* 00B40 809AA1C0 4406A000 */  mfc1    $a2, $f20                  
/* 00B44 809AA1C4 0C26A7D3 */  jal     func_809A9F4C              
/* 00B48 809AA1C8 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00B4C 809AA1CC 14400003 */  bne     $v0, $zero, .L809AA1DC     
/* 00B50 809AA1D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B54 809AA1D4 10000011 */  beq     $zero, $zero, .L809AA21C   
/* 00B58 809AA1D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809AA1DC:
/* 00B5C 809AA1DC 4406A000 */  mfc1    $a2, $f20                  
/* 00B60 809AA1E0 0C26A7F6 */  jal     func_809A9FD8              
/* 00B64 809AA1E4 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00B68 809AA1E8 54400004 */  bnel    $v0, $zero, .L809AA1FC     
/* 00B6C 809AA1EC 4406A000 */  mfc1    $a2, $f20                  
/* 00B70 809AA1F0 1000000A */  beq     $zero, $zero, .L809AA21C   
/* 00B74 809AA1F4 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B78 809AA1F8 4406A000 */  mfc1    $a2, $f20                  
.L809AA1FC:
/* 00B7C 809AA1FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B80 809AA200 0C26A82E */  jal     func_809AA0B8              
/* 00B84 809AA204 27A5002C */  addiu   $a1, $sp, 0x002C           ## $a1 = FFFFFFF4
/* 00B88 809AA208 54400004 */  bnel    $v0, $zero, .L809AA21C     
/* 00B8C 809AA20C 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00B90 809AA210 10000002 */  beq     $zero, $zero, .L809AA21C   
/* 00B94 809AA214 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B98 809AA218 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L809AA21C:
/* 00B9C 809AA21C 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00BA0 809AA220 D7B40018 */  ldc1    $f20, 0x0018($sp)          
/* 00BA4 809AA224 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BA8 809AA228 03E00008 */  jr      $ra                        
/* 00BAC 809AA22C 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
