glabel func_8084FBF4
/* 1D9E4 8084FBF4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 1D9E8 8084FBF8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1D9EC 8084FBFC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1D9F0 8084FC00 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1D9F4 8084FC04 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 1D9F8 8084FC08 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1D9FC 8084FC0C 0C028EF0 */  jal     func_800A3BC0              
/* 1DA00 8084FC10 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 1DA04 8084FC14 0C20E0AF */  jal     func_808382BC              
/* 1DA08 8084FC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1DA0C 8084FC1C 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1DA10 8084FC20 24010019 */  addiu   $at, $zero, 0x0019         ## $at = 00000019
/* 1DA14 8084FC24 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 1DA18 8084FC28 0041001A */  div     $zero, $v0, $at            
/* 1DA1C 8084FC2C 00007010 */  mfhi    $t6                        
/* 1DA20 8084FC30 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1DA24 8084FC34 15C00006 */  bne     $t6, $zero, .L8084FC50     
/* 1DA28 8084FC38 00000000 */  nop
/* 1DA2C 8084FC3C 0C20DEC6 */  jal     func_80837B18              
/* 1DA30 8084FC40 2406FFFF */  addiu   $a2, $zero, 0xFFFF         ## $a2 = FFFFFFFF
/* 1DA34 8084FC44 5040000D */  beql    $v0, $zero, .L8084FC7C     
/* 1DA38 8084FC48 8E190678 */  lw      $t9, 0x0678($s0)           ## 00000678
/* 1DA3C 8084FC4C 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
.L8084FC50:
/* 1DA40 8084FC50 14400003 */  bne     $v0, $zero, .L8084FC60     
/* 1DA44 8084FC54 244FFFFF */  addiu   $t7, $v0, 0xFFFF           ## $t7 = FFFFFFFF
/* 1DA48 8084FC58 10000003 */  beq     $zero, $zero, .L8084FC68   
/* 1DA4C 8084FC5C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L8084FC60:
/* 1DA50 8084FC60 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
/* 1DA54 8084FC64 86030850 */  lh      $v1, 0x0850($s0)           ## 00000850
.L8084FC68:
/* 1DA58 8084FC68 14600003 */  bne     $v1, $zero, .L8084FC78     
/* 1DA5C 8084FC6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1DA60 8084FC70 0C20E7E4 */  jal     func_80839F90              
/* 1DA64 8084FC74 8FA50024 */  lw      $a1, 0x0024($sp)           
.L8084FC78:
/* 1DA68 8084FC78 8E190678 */  lw      $t9, 0x0678($s0)           ## 00000678
.L8084FC7C:
/* 1DA6C 8084FC7C 24180028 */  addiu   $t8, $zero, 0x0028         ## $t8 = 00000028
/* 1DA70 8084FC80 A2180891 */  sb      $t8, 0x0891($s0)           ## 00000891
/* 1DA74 8084FC84 97250092 */  lhu     $a1, 0x0092($t9)           ## 00000092
/* 1DA78 8084FC88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1DA7C 8084FC8C 24A5600C */  addiu   $a1, $a1, 0x600C           ## $a1 = 0000600C
/* 1DA80 8084FC90 0C00BE3C */  jal     func_8002F8F0              
/* 1DA84 8084FC94 30A5FFFF */  andi    $a1, $a1, 0xFFFF           ## $a1 = 0000600C
/* 1DA88 8084FC98 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1DA8C 8084FC9C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1DA90 8084FCA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 1DA94 8084FCA4 03E00008 */  jr      $ra                        
/* 1DA98 8084FCA8 00000000 */  nop


