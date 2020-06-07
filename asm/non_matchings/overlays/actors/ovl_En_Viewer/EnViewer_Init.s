glabel EnViewer_Init
/* 00008 80B2A208 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 80B2A20C AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00010 80B2A210 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00014 80B2A214 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 00018 80B2A218 3C0580B3 */  lui     $a1, %hi(D_80B2CEE4)       ## $a1 = 80B30000
/* 0001C 80B2A21C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80B2A220 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00024 80B2A224 24A5CEE4 */  addiu   $a1, $a1, %lo(D_80B2CEE4)  ## $a1 = 80B2CEE4
/* 00028 80B2A228 3C0580B3 */  lui     $a1, %hi(func_80B2A570)    ## $a1 = 80B30000
/* 0002C 80B2A22C 24A5A570 */  addiu   $a1, $a1, %lo(func_80B2A570) ## $a1 = 80B2A570
/* 00030 80B2A230 0C2CA880 */  jal     func_80B2A200              
/* 00034 80B2A234 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00038 80B2A238 3C0180B3 */  lui     $at, %hi(D_80B2CEC0)       ## $at = 80B30000
/* 0003C 80B2A23C A020CEC0 */  sb      $zero, %lo(D_80B2CEC0)($at) 
/* 00040 80B2A240 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 00044 80B2A244 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00048 80B2A248 A20001E4 */  sb      $zero, 0x01E4($s0)         ## 000001E4
/* 0004C 80B2A24C 00031A03 */  sra     $v1, $v1,  8               
/* 00050 80B2A250 306300FF */  andi    $v1, $v1, 0x00FF           ## $v1 = 00000000
/* 00054 80B2A254 A20001E5 */  sb      $zero, 0x01E5($s0)         ## 000001E5
/* 00058 80B2A258 1061000A */  beq     $v1, $at, .L80B2A284       
/* 0005C 80B2A25C A20001E6 */  sb      $zero, 0x01E6($s0)         ## 000001E6
/* 00060 80B2A260 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00064 80B2A264 10610007 */  beq     $v1, $at, .L80B2A284       
/* 00068 80B2A268 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 0006C 80B2A26C 10610005 */  beq     $v1, $at, .L80B2A284       
/* 00070 80B2A270 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00074 80B2A274 10610003 */  beq     $v1, $at, .L80B2A284       
/* 00078 80B2A278 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 0007C 80B2A27C 54610012 */  bnel    $v1, $at, .L80B2A2C8       
/* 00080 80B2A280 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80B2A284:
/* 00084 80B2A284 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00088 80B2A288 8FA60044 */  lw      $a2, 0x0044($sp)           
/* 0008C 80B2A28C 240E0023 */  addiu   $t6, $zero, 0x0023         ## $t6 = 00000023
/* 00090 80B2A290 AFAE0028 */  sw      $t6, 0x0028($sp)           
/* 00094 80B2A294 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00098 80B2A298 2407016F */  addiu   $a3, $zero, 0x016F         ## $a3 = 0000016F
/* 0009C 80B2A29C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 000A0 80B2A2A0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 000A4 80B2A2A4 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 000A8 80B2A2A8 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 000AC 80B2A2AC E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 000B0 80B2A2B0 E7A00014 */  swc1    $f0, 0x0014($sp)           
/* 000B4 80B2A2B4 0C00C916 */  jal     Actor_SpawnAttached
              
/* 000B8 80B2A2B8 E7A00018 */  swc1    $f0, 0x0018($sp)           
/* 000BC 80B2A2BC 3C0180B3 */  lui     $at, %hi(D_80B2D440)       ## $at = 80B30000
/* 000C0 80B2A2C0 AC22D440 */  sw      $v0, %lo(D_80B2D440)($at)  
/* 000C4 80B2A2C4 8FBF003C */  lw      $ra, 0x003C($sp)           
.L80B2A2C8:
/* 000C8 80B2A2C8 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 000CC 80B2A2CC 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 000D0 80B2A2D0 03E00008 */  jr      $ra                        
/* 000D4 80B2A2D4 00000000 */  nop
