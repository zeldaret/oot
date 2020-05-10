glabel BgHidanRock_Update
/* 00AF8 8088BB78 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00AFC 8088BB7C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B00 8088BB80 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B04 8088BB84 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B08 8088BB88 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B0C 8088BB8C 8E190164 */  lw      $t9, 0x0164($s0)           ## 00000164
/* 00B10 8088BB90 0320F809 */  jalr    $ra, $t9                   
/* 00B14 8088BB94 00000000 */  nop
/* 00B18 8088BB98 8E0F0164 */  lw      $t7, 0x0164($s0)           ## 00000164
/* 00B1C 8088BB9C 3C0E8089 */  lui     $t6, %hi(func_8088B79C)    ## $t6 = 80890000
/* 00B20 8088BBA0 25CEB79C */  addiu   $t6, $t6, %lo(func_8088B79C) ## $t6 = 8088B79C
/* 00B24 8088BBA4 55CF000D */  bnel    $t6, $t7, .L8088BBDC       
/* 00B28 8088BBA8 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
/* 00B2C 8088BBAC 0C00B638 */  jal     Actor_MoveForward
              
/* 00B30 8088BBB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B34 8088BBB4 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00B38 8088BBB8 24180004 */  addiu   $t8, $zero, 0x0004         ## $t8 = 00000004
/* 00B3C 8088BBBC AFB80014 */  sw      $t8, 0x0014($sp)           
/* 00B40 8088BBC0 44060000 */  mfc1    $a2, $f0                   
/* 00B44 8088BBC4 44070000 */  mfc1    $a3, $f0                   
/* 00B48 8088BBC8 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00B4C 8088BBCC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B50 8088BBD0 0C00B92D */  jal     func_8002E4B4              
/* 00B54 8088BBD4 E7A00010 */  swc1    $f0, 0x0010($sp)           
/* 00B58 8088BBD8 C600016C */  lwc1    $f0, 0x016C($s0)           ## 0000016C
.L8088BBDC:
/* 00B5C 8088BBDC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00B60 8088BBE0 3C088089 */  lui     $t0, %hi(D_8088BFAE)       ## $t0 = 80890000
/* 00B64 8088BBE4 4600203C */  c.lt.s  $f4, $f0                   
/* 00B68 8088BBE8 00000000 */  nop
/* 00B6C 8088BBEC 45020010 */  bc1fl   .L8088BC30                 
/* 00B70 8088BBF0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B74 8088BBF4 8508BFAE */  lh      $t0, %lo(D_8088BFAE)($t0)  
/* 00B78 8088BBF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00B7C 8088BBFC 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00B80 8088BC00 44883000 */  mtc1    $t0, $f6                   ## $f6 = -0.00
/* 00B84 8088BC04 2606017C */  addiu   $a2, $s0, 0x017C           ## $a2 = 0000017C
/* 00B88 8088BC08 46803220 */  cvt.s.w $f8, $f6                   
/* 00B8C 8088BC0C 46004282 */  mul.s   $f10, $f8, $f0             
/* 00B90 8088BC10 4600540D */  trunc.w.s $f16, $f10                 
/* 00B94 8088BC14 440A8000 */  mfc1    $t2, $f16                  
/* 00B98 8088BC18 00000000 */  nop
/* 00B9C 8088BC1C A60A01BE */  sh      $t2, 0x01BE($s0)           ## 000001BE
/* 00BA0 8088BC20 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00BA4 8088BC24 0C0175E7 */  jal     CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00BA8 8088BC28 00812821 */  addu    $a1, $a0, $at              
/* 00BAC 8088BC2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L8088BC30:
/* 00BB0 8088BC30 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BB4 8088BC34 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BB8 8088BC38 03E00008 */  jr      $ra                        
/* 00BBC 8088BC3C 00000000 */  nop
