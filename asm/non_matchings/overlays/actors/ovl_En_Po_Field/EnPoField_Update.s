glabel EnPoField_Update
/* 029A4 80AD64A4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 029A8 80AD64A8 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 029AC 80AD64AC AFB10020 */  sw      $s1, 0x0020($sp)           
/* 029B0 80AD64B0 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 029B4 80AD64B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 029B8 80AD64B8 0C2B571D */  jal     func_80AD5C74              
/* 029BC 80AD64BC 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 029C0 80AD64C0 8E190190 */  lw      $t9, 0x0190($s0)           ## 00000190
/* 029C4 80AD64C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029C8 80AD64C8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029CC 80AD64CC 0320F809 */  jalr    $ra, $t9                   
/* 029D0 80AD64D0 00000000 */  nop
/* 029D4 80AD64D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 029D8 80AD64D8 0C2B5758 */  jal     func_80AD5D60              
/* 029DC 80AD64DC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 029E0 80AD64E0 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
/* 029E4 80AD64E4 3C0E80AD */  lui     $t6, %hi(func_80AD4CA4)    ## $t6 = 80AD0000
/* 029E8 80AD64E8 25CE4CA4 */  addiu   $t6, $t6, %lo(func_80AD4CA4) ## $t6 = 80AD4CA4
/* 029EC 80AD64EC 11C20007 */  beq     $t6, $v0, .L80AD650C       
/* 029F0 80AD64F0 3C0F80AD */  lui     $t7, %hi(func_80AD4E48)    ## $t7 = 80AD0000
/* 029F4 80AD64F4 25EF4E48 */  addiu   $t7, $t7, %lo(func_80AD4E48) ## $t7 = 80AD4E48
/* 029F8 80AD64F8 11E20004 */  beq     $t7, $v0, .L80AD650C       
/* 029FC 80AD64FC 3C1880AD */  lui     $t8, %hi(func_80AD48CC)    ## $t8 = 80AD0000
/* 02A00 80AD6500 271848CC */  addiu   $t8, $t8, %lo(func_80AD48CC) ## $t8 = 80AD48CC
/* 02A04 80AD6504 17020004 */  bne     $t8, $v0, .L80AD6518       
/* 02A08 80AD6508 00000000 */  nop
.L80AD650C:
/* 02A0C 80AD650C 0C00B638 */  jal     Actor_MoveForward
              
/* 02A10 80AD6510 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A14 80AD6514 8E020190 */  lw      $v0, 0x0190($s0)           ## 00000190
.L80AD6518:
/* 02A18 80AD6518 3C0880AD */  lui     $t0, %hi(func_80AD4664)    ## $t0 = 80AD0000
/* 02A1C 80AD651C 25084664 */  addiu   $t0, $t0, %lo(func_80AD4664) ## $t0 = 80AD4664
/* 02A20 80AD6520 11020024 */  beq     $t0, $v0, .L80AD65B4       
/* 02A24 80AD6524 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A28 80AD6528 0C00B56E */  jal     Actor_SetHeight
              
/* 02A2C 80AD652C 3C054228 */  lui     $a1, 0x4228                ## $a1 = 42280000
/* 02A30 80AD6530 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02A34 80AD6534 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 02A38 80AD6538 24090004 */  addiu   $t1, $zero, 0x0004         ## $t1 = 00000004
/* 02A3C 80AD653C AFA90014 */  sw      $t1, 0x0014($sp)           
/* 02A40 80AD6540 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02A44 80AD6544 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02A48 80AD6548 24060000 */  addiu   $a2, $zero, 0x0000         ## $a2 = 00000000
/* 02A4C 80AD654C 3C0741D8 */  lui     $a3, 0x41D8                ## $a3 = 41D80000
/* 02A50 80AD6550 0C00B92D */  jal     func_8002E4B4              
/* 02A54 80AD6554 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 02A58 80AD6558 0C2B5867 */  jal     func_80AD619C              
/* 02A5C 80AD655C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A60 80AD6560 0C2B58CC */  jal     func_80AD6330              
/* 02A64 80AD6564 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A68 80AD6568 26050244 */  addiu   $a1, $s0, 0x0244           ## $a1 = 00000244
/* 02A6C 80AD656C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 02A70 80AD6570 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 02A74 80AD6574 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02A78 80AD6578 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 02A7C 80AD657C 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 02A80 80AD6580 02212821 */  addu    $a1, $s1, $at              
/* 02A84 80AD6584 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 02A88 80AD6588 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02A8C 80AD658C 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 02A90 80AD6590 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 02A94 80AD6594 920A0255 */  lbu     $t2, 0x0255($s0)           ## 00000255
/* 02A98 80AD6598 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 02A9C 80AD659C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 02AA0 80AD65A0 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 02AA4 80AD65A4 51600004 */  beql    $t3, $zero, .L80AD65B8     
/* 02AA8 80AD65A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 02AAC 80AD65AC 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 02AB0 80AD65B0 8FA60028 */  lw      $a2, 0x0028($sp)           
.L80AD65B4:
/* 02AB4 80AD65B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AD65B8:
/* 02AB8 80AD65B8 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 02ABC 80AD65BC 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 02AC0 80AD65C0 03E00008 */  jr      $ra                        
/* 02AC4 80AD65C4 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


