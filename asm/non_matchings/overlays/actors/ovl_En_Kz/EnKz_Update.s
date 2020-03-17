glabel EnKz_Update
/* 01064 80A9D5B4 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 01068 80A9D5B8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0106C 80A9D5BC 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 01070 80A9D5C0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01074 80A9D5C4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 01078 80A9D5C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0107C 80A9D5CC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01080 80A9D5D0 15C00006 */  bne     $t6, $zero, .L80A9D5EC     
/* 01084 80A9D5D4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 01088 80A9D5D8 94620F1E */  lhu     $v0, 0x0F1E($v1)           ## 8015F57E
/* 0108C 80A9D5DC 304F0100 */  andi    $t7, $v0, 0x0100           ## $t7 = 00000000
/* 01090 80A9D5E0 15E00002 */  bne     $t7, $zero, .L80A9D5EC     
/* 01094 80A9D5E4 34580100 */  ori     $t8, $v0, 0x0100           ## $t8 = 00000100
/* 01098 80A9D5E8 A4780F1E */  sh      $t8, 0x0F1E($v1)           ## 8015F57E
.L80A9D5EC:
/* 0109C 80A9D5EC 26060194 */  addiu   $a2, $s0, 0x0194           ## $a2 = 00000194
/* 010A0 80A9D5F0 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000194
/* 010A4 80A9D5F4 AFA60024 */  sw      $a2, 0x0024($sp)           
/* 010A8 80A9D5F8 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 010AC 80A9D5FC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010B0 80A9D600 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 010B4 80A9D604 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 010B8 80A9D608 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 010BC 80A9D60C 8FA60024 */  lw      $a2, 0x0024($sp)           
/* 010C0 80A9D610 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 010C4 80A9D614 00812821 */  addu    $a1, $a0, $at              
/* 010C8 80A9D618 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 010CC 80A9D61C 2604014C */  addiu   $a0, $s0, 0x014C           ## $a0 = 0000014C
/* 010D0 80A9D620 0C2A7239 */  jal     func_80A9C8E4              
/* 010D4 80A9D624 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010D8 80A9D628 0C00B638 */  jal     Actor_MoveForward
              
/* 010DC 80A9D62C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010E0 80A9D630 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 010E4 80A9D634 3C1980AA */  lui     $t9, %hi(func_80A9D520)    ## $t9 = 80AA0000
/* 010E8 80A9D638 2739D520 */  addiu   $t9, $t9, %lo(func_80A9D520) ## $t9 = 80A9D520
/* 010EC 80A9D63C 13220004 */  beq     $t9, $v0, .L80A9D650       
/* 010F0 80A9D640 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 010F4 80A9D644 0C2A72C6 */  jal     func_80A9CB18              
/* 010F8 80A9D648 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 010FC 80A9D64C 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80A9D650:
/* 01100 80A9D650 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01104 80A9D654 0040F809 */  jalr    $ra, $v0                   
/* 01108 80A9D658 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 0110C 80A9D65C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01110 80A9D660 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 01114 80A9D664 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01118 80A9D668 03E00008 */  jr      $ra                        
/* 0111C 80A9D66C 00000000 */  nop


