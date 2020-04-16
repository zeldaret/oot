glabel EnZo_Update
/* 01BCC 80B61DEC 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 01BD0 80B61DF0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BD4 80B61DF4 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01BD8 80B61DF8 AFA5004C */  sw      $a1, 0x004C($sp)           
/* 01BDC 80B61DFC C4840648 */  lwc1    $f4, 0x0648($a0)           ## 00000648
/* 01BE0 80B61E00 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BE4 80B61E04 4600218D */  trunc.w.s $f6, $f4                   
/* 01BE8 80B61E08 440F3000 */  mfc1    $t7, $f6                   
/* 01BEC 80B61E0C 00000000 */  nop
/* 01BF0 80B61E10 11E00005 */  beq     $t7, $zero, .L80B61E28     
/* 01BF4 80B61E14 00000000 */  nop
/* 01BF8 80B61E18 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 01BFC 80B61E1C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 01C00 80B61E20 0C2D84FE */  jal     func_80B613F8              
/* 01C04 80B61E24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B61E28:
/* 01C08 80B61E28 0C00B638 */  jal     Actor_MoveForward
              
/* 01C0C 80B61E2C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C10 80B61E30 861901FE */  lh      $t9, 0x01FE($s0)           ## 000001FE
/* 01C14 80B61E34 861801FC */  lh      $t8, 0x01FC($s0)           ## 000001FC
/* 01C18 80B61E38 3C013E80 */  lui     $at, 0x3E80                ## $at = 3E800000
/* 01C1C 80B61E3C 44995000 */  mtc1    $t9, $f10                  ## $f10 = 0.00
/* 01C20 80B61E40 44819000 */  mtc1    $at, $f18                  ## $f18 = 0.25
/* 01C24 80B61E44 44984000 */  mtc1    $t8, $f8                   ## $f8 = 0.00
/* 01C28 80B61E48 46805420 */  cvt.s.w $f16, $f10                 
/* 01C2C 80B61E4C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01C30 80B61E50 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 01C34 80B61E54 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 01C38 80B61E58 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01C3C 80B61E5C 46804220 */  cvt.s.w $f8, $f8                   
/* 01C40 80B61E60 46128102 */  mul.s   $f4, $f16, $f18            
/* 01C44 80B61E64 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 01C48 80B61E68 E7A60010 */  swc1    $f6, 0x0010($sp)           
/* 01C4C 80B61E6C 44064000 */  mfc1    $a2, $f8                   
/* 01C50 80B61E70 44072000 */  mfc1    $a3, $f4                   
/* 01C54 80B61E74 0C00B92D */  jal     func_8002E4B4              
/* 01C58 80B61E78 00000000 */  nop
/* 01C5C 80B61E7C 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 01C60 80B61E80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C64 80B61E84 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01C68 80B61E88 0320F809 */  jalr    $ra, $t9                   
/* 01C6C 80B61E8C 00000000 */  nop
/* 01C70 80B61E90 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C74 80B61E94 0C2D851C */  jal     func_80B61470              
/* 01C78 80B61E98 8FA5004C */  lw      $a1, 0x004C($sp)           
/* 01C7C 80B61E9C 8FA9004C */  lw      $t1, 0x004C($sp)           
/* 01C80 80B61EA0 8D2A009C */  lw      $t2, 0x009C($t1)           ## 0000009C
/* 01C84 80B61EA4 314B0008 */  andi    $t3, $t2, 0x0008           ## $t3 = 00000000
/* 01C88 80B61EA8 5160002D */  beql    $t3, $zero, .L80B61F60     
/* 01C8C 80B61EAC C6100648 */  lwc1    $f16, 0x0648($s0)          ## 00000648
/* 01C90 80B61EB0 8E0E0024 */  lw      $t6, 0x0024($s0)           ## 00000024
/* 01C94 80B61EB4 27AC0034 */  addiu   $t4, $sp, 0x0034           ## $t4 = FFFFFFEC
/* 01C98 80B61EB8 AD8E0000 */  sw      $t6, 0x0000($t4)           ## FFFFFFEC
/* 01C9C 80B61EBC 8E0D0028 */  lw      $t5, 0x0028($s0)           ## 00000028
/* 01CA0 80B61EC0 AD8D0004 */  sw      $t5, 0x0004($t4)           ## FFFFFFF0
/* 01CA4 80B61EC4 8E0E002C */  lw      $t6, 0x002C($s0)           ## 0000002C
/* 01CA8 80B61EC8 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01CAC 80B61ECC AD8E0008 */  sw      $t6, 0x0008($t4)           ## FFFFFFF4
/* 01CB0 80B61ED0 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01CB4 80B61ED4 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.50
/* 01CB8 80B61ED8 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 01CBC 80B61EDC 44818000 */  mtc1    $at, $f16                  ## $f16 = 10.00
/* 01CC0 80B61EE0 46080281 */  sub.s   $f10, $f0, $f8             
/* 01CC4 80B61EE4 3C014190 */  lui     $at, 0x4190                ## $at = 41900000
/* 01CC8 80B61EE8 44812000 */  mtc1    $at, $f4                   ## $f4 = 18.00
/* 01CCC 80B61EEC C7A80038 */  lwc1    $f8, 0x0038($sp)           
/* 01CD0 80B61EF0 46105482 */  mul.s   $f18, $f10, $f16           
/* 01CD4 80B61EF4 46049180 */  add.s   $f6, $f18, $f4             
/* 01CD8 80B61EF8 46064280 */  add.s   $f10, $f8, $f6             
/* 01CDC 80B61EFC 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01CE0 80B61F00 E7AA0038 */  swc1    $f10, 0x0038($sp)          
/* 01CE4 80B61F04 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01CE8 80B61F08 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01CEC 80B61F0C 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01CF0 80B61F10 44812000 */  mtc1    $at, $f4                   ## $f4 = 28.00
/* 01CF4 80B61F14 46100481 */  sub.s   $f18, $f0, $f16            
/* 01CF8 80B61F18 C7A60034 */  lwc1    $f6, 0x0034($sp)           
/* 01CFC 80B61F1C 46049202 */  mul.s   $f8, $f18, $f4             
/* 01D00 80B61F20 46083280 */  add.s   $f10, $f6, $f8             
/* 01D04 80B61F24 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 01D08 80B61F28 E7AA0034 */  swc1    $f10, 0x0034($sp)          
/* 01D0C 80B61F2C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 01D10 80B61F30 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 01D14 80B61F34 3C0141E0 */  lui     $at, 0x41E0                ## $at = 41E00000
/* 01D18 80B61F38 44812000 */  mtc1    $at, $f4                   ## $f4 = 28.00
/* 01D1C 80B61F3C 46100481 */  sub.s   $f18, $f0, $f16            
/* 01D20 80B61F40 C7A8003C */  lwc1    $f8, 0x003C($sp)           
/* 01D24 80B61F44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D28 80B61F48 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFEC
/* 01D2C 80B61F4C 46049182 */  mul.s   $f6, $f18, $f4             
/* 01D30 80B61F50 46064280 */  add.s   $f10, $f8, $f6             
/* 01D34 80B61F54 0C2D80AD */  jal     func_80B602B4              
/* 01D38 80B61F58 E7AA003C */  swc1    $f10, 0x003C($sp)          
/* 01D3C 80B61F5C C6100648 */  lwc1    $f16, 0x0648($s0)          ## 00000648
.L80B61F60:
/* 01D40 80B61F60 260601BC */  addiu   $a2, $s0, 0x01BC           ## $a2 = 000001BC
/* 01D44 80B61F64 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001BC
/* 01D48 80B61F68 4600848D */  trunc.w.s $f18, $f16                 
/* 01D4C 80B61F6C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D50 80B61F70 44189000 */  mfc1    $t8, $f18                  
/* 01D54 80B61F74 00000000 */  nop
/* 01D58 80B61F78 13000009 */  beq     $t8, $zero, .L80B61FA0     
/* 01D5C 80B61F7C 00000000 */  nop
/* 01D60 80B61F80 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01D64 80B61F84 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01D68 80B61F88 8FA4004C */  lw      $a0, 0x004C($sp)           
/* 01D6C 80B61F8C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01D70 80B61F90 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01D74 80B61F94 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01D78 80B61F98 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 01D7C 80B61F9C 00812821 */  addu    $a1, $a0, $at              
.L80B61FA0:
/* 01D80 80B61FA0 0C2D8154 */  jal     func_80B60550              
/* 01D84 80B61FA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D88 80B61FA8 0C2D8183 */  jal     func_80B6060C              
/* 01D8C 80B61FAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D90 80B61FB0 0C2D81CF */  jal     func_80B6073C              
/* 01D94 80B61FB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01D98 80B61FB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01D9C 80B61FBC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01DA0 80B61FC0 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
/* 01DA4 80B61FC4 03E00008 */  jr      $ra                        
/* 01DA8 80B61FC8 00000000 */  nop
