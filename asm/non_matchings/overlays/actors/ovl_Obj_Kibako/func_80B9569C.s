glabel func_80B9569C
/* 009FC 80B9569C 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00A00 80B956A0 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A04 80B956A4 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00A08 80B956A8 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00A0C 80B956AC 94820088 */  lhu     $v0, 0x0088($a0)           ## 00000088
/* 00A10 80B956B0 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00A14 80B956B4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A18 80B956B8 304E000B */  andi    $t6, $v0, 0x000B           ## $t6 = 00000000
/* 00A1C 80B956BC 15C00006 */  bne     $t6, $zero, .L80B956D8     
/* 00A20 80B956C0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A24 80B956C4 908F0160 */  lbu     $t7, 0x0160($a0)           ## 00000160
/* 00A28 80B956C8 30590040 */  andi    $t9, $v0, 0x0040           ## $t9 = 00000000
/* 00A2C 80B956CC 31F80002 */  andi    $t8, $t7, 0x0002           ## $t8 = 00000000
/* 00A30 80B956D0 1300000F */  beq     $t8, $zero, .L80B95710     
/* 00A34 80B956D4 00000000 */  nop
.L80B956D8:
/* 00A38 80B956D8 0C2E538E */  jal     func_80B94E38              
/* 00A3C 80B956DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A40 80B956E0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A44 80B956E4 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00A48 80B956E8 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00A4C 80B956EC 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00A50 80B956F0 240728AA */  addiu   $a3, $zero, 0x28AA         ## $a3 = 000028AA
/* 00A54 80B956F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A58 80B956F8 0C2E5328 */  jal     func_80B94CA0              
/* 00A5C 80B956FC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A60 80B95700 0C00B55C */  jal     Actor_Kill
              
/* 00A64 80B95704 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A68 80B95708 1000002E */  beq     $zero, $zero, .L80B957C4   
/* 00A6C 80B9570C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B95710:
/* 00A70 80B95710 1320000F */  beq     $t9, $zero, .L80B95750     
/* 00A74 80B95714 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A78 80B95718 0C2E542E */  jal     func_80B950B8              
/* 00A7C 80B9571C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00A80 80B95720 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00A84 80B95724 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00A88 80B95728 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00A8C 80B9572C 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00A90 80B95730 240728AA */  addiu   $a3, $zero, 0x28AA         ## $a3 = 000028AA
/* 00A94 80B95734 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00A98 80B95738 0C2E5328 */  jal     func_80B94CA0              
/* 00A9C 80B9573C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00AA0 80B95740 0C00B55C */  jal     Actor_Kill
              
/* 00AA4 80B95744 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA8 80B95748 1000001E */  beq     $zero, $zero, .L80B957C4   
/* 00AAC 80B9574C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B95750:
/* 00AB0 80B95750 0C2E5340 */  jal     func_80B94D00              
/* 00AB4 80B95754 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB8 80B95758 0C00B5FB */  jal     func_8002D7EC              
/* 00ABC 80B9575C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AC0 80B95760 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00AC4 80B95764 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00AC8 80B95768 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00ACC 80B9576C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00AD0 80B95770 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00AD4 80B95774 3C064198 */  lui     $a2, 0x4198                ## $a2 = 41980000
/* 00AD8 80B95778 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 00ADC 80B9577C 0C00B92D */  jal     func_8002E4B4              
/* 00AE0 80B95780 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00AE4 80B95784 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 00AE8 80B95788 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00AEC 80B9578C 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 00AF0 80B95790 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AF4 80B95794 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00AF8 80B95798 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 00AFC 80B9579C 02218021 */  addu    $s0, $s1, $at              
/* 00B00 80B957A0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B04 80B957A4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B08 80B957A8 0C017713 */  jal     Actor_CollisionCheck_SetOT
              ## CollisionCheck_setOT
/* 00B0C 80B957AC 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00B10 80B957B0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00B14 80B957B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00B18 80B957B8 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00B1C 80B957BC 8FA6002C */  lw      $a2, 0x002C($sp)           
/* 00B20 80B957C0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B957C4:
/* 00B24 80B957C4 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00B28 80B957C8 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00B2C 80B957CC 03E00008 */  jr      $ra                        
/* 00B30 80B957D0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


