glabel EnPoRelay_Update
/* 0109C 80AD87DC 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 010A0 80AD87E0 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 010A4 80AD87E4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 010A8 80AD87E8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 010AC 80AD87EC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 010B0 80AD87F0 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010B4 80AD87F4 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 010B8 80AD87F8 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 010BC 80AD87FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010C0 80AD8800 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 010C4 80AD8804 0320F809 */  jalr    $ra, $t9                   
/* 010C8 80AD8808 00000000 */  nop
/* 010CC 80AD880C 0C00B638 */  jal     Actor_MoveForward
              
/* 010D0 80AD8810 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010D4 80AD8814 0C2B5EA2 */  jal     func_80AD7A88              
/* 010D8 80AD8818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010DC 80AD881C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 010E0 80AD8820 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 010E4 80AD8824 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 010E8 80AD8828 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 010EC 80AD882C 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 010F0 80AD8830 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 010F4 80AD8834 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 010F8 80AD8838 3C0741D8 */  lui     $a3, 0x41D8                ## $a3 = 41D80000
/* 010FC 80AD883C 0C00B92D */  jal     func_8002E4B4              
/* 01100 80AD8840 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 01104 80AD8844 26060290 */  addiu   $a2, $s0, 0x0290           ## $a2 = 00000290
/* 01108 80AD8848 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000290
/* 0110C 80AD884C AFA6002C */  sw      $a2, 0x002C($sp)           
/* 01110 80AD8850 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 01114 80AD8854 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01118 80AD8858 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 0111C 80AD885C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 01120 80AD8860 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 01124 80AD8864 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 01128 80AD8868 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 0112C 80AD886C 00812821 */  addu    $a1, $a0, $at              
/* 01130 80AD8870 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01134 80AD8874 0C00B56E */  jal     Actor_SetHeight
              
/* 01138 80AD8878 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 0113C 80AD887C 92020195 */  lbu     $v0, 0x0195($s0)           ## 00000195
/* 01140 80AD8880 24080020 */  addiu   $t0, $zero, 0x0020         ## $t0 = 00000020
/* 01144 80AD8884 10400003 */  beq     $v0, $zero, .L80AD8894     
/* 01148 80AD8888 2458FFFF */  addiu   $t8, $v0, 0xFFFF           ## $t8 = FFFFFFFF
/* 0114C 80AD888C A2180195 */  sb      $t8, 0x0195($s0)           ## 00000195
/* 01150 80AD8890 330200FF */  andi    $v0, $t8, 0x00FF           ## $v0 = 000000FF
.L80AD8894:
/* 01154 80AD8894 54400003 */  bnel    $v0, $zero, .L80AD88A4     
/* 01158 80AD8898 9609019E */  lhu     $t1, 0x019E($s0)           ## 0000019E
/* 0115C 80AD889C A2080195 */  sb      $t0, 0x0195($s0)           ## 00000195
/* 01160 80AD88A0 9609019E */  lhu     $t1, 0x019E($s0)           ## 0000019E
.L80AD88A4:
/* 01164 80AD88A4 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 01168 80AD88A8 252A0001 */  addiu   $t2, $t1, 0x0001           ## $t2 = 00000001
/* 0116C 80AD88AC 314BFFFF */  andi    $t3, $t2, 0xFFFF           ## $t3 = 00000001
/* 01170 80AD88B0 15610002 */  bne     $t3, $at, .L80AD88BC       
/* 01174 80AD88B4 A60A019E */  sh      $t2, 0x019E($s0)           ## 0000019E
/* 01178 80AD88B8 A600019E */  sh      $zero, 0x019E($s0)         ## 0000019E
.L80AD88BC:
/* 0117C 80AD88BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01180 80AD88C0 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01184 80AD88C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 01188 80AD88C8 03E00008 */  jr      $ra                        
/* 0118C 80AD88CC 00000000 */  nop


