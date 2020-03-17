glabel EnFdFire_Update
/* 00638 80A0EAE8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0063C 80A0EAEC 3C0E80A1 */  lui     $t6, %hi(func_80A0EA34)    ## $t6 = 80A10000
/* 00640 80A0EAF0 25CEEA34 */  addiu   $t6, $t6, %lo(func_80A0EA34) ## $t6 = 80A0EA34
/* 00644 80A0EAF4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00648 80A0EAF8 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 0064C 80A0EAFC AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00650 80A0EB00 AFAE002C */  sw      $t6, 0x002C($sp)           
/* 00654 80A0EB04 8C8F014C */  lw      $t7, 0x014C($a0)           ## 0000014C
/* 00658 80A0EB08 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0065C 80A0EB0C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00660 80A0EB10 11CF000B */  beq     $t6, $t7, .L80A0EB40       
/* 00664 80A0EB14 00000000 */  nop
/* 00668 80A0EB18 8C980118 */  lw      $t8, 0x0118($a0)           ## 00000118
/* 0066C 80A0EB1C 8F190130 */  lw      $t9, 0x0130($t8)           ## 00000130
/* 00670 80A0EB20 53200006 */  beql    $t9, $zero, .L80A0EB3C     
/* 00674 80A0EB24 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00678 80A0EB28 0C28395E */  jal     func_80A0E578              
/* 0067C 80A0EB2C 00000000 */  nop
/* 00680 80A0EB30 10400003 */  beq     $v0, $zero, .L80A0EB40     
/* 00684 80A0EB34 00000000 */  nop
/* 00688 80A0EB38 8FA8002C */  lw      $t0, 0x002C($sp)           
.L80A0EB3C:
/* 0068C 80A0EB3C AE08014C */  sw      $t0, 0x014C($s0)           ## 0000014C
.L80A0EB40:
/* 00690 80A0EB40 0C00B5FB */  jal     func_8002D7EC              
/* 00694 80A0EB44 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00698 80A0EB48 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 0069C 80A0EB4C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006A0 80A0EB50 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 006A4 80A0EB54 0320F809 */  jalr    $ra, $t9                   
/* 006A8 80A0EB58 00000000 */  nop
/* 006AC 80A0EB5C 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 006B0 80A0EB60 24090005 */  addiu   $t1, $zero, 0x0005         ## $t1 = 00000005
/* 006B4 80A0EB64 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 006B8 80A0EB68 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 006BC 80A0EB6C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 006C0 80A0EB70 3C064140 */  lui     $a2, 0x4140                ## $a2 = 41400000
/* 006C4 80A0EB74 3C074120 */  lui     $a3, 0x4120                ## $a3 = 41200000
/* 006C8 80A0EB78 0C00B92D */  jal     func_8002E4B4              
/* 006CC 80A0EB7C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 006D0 80A0EB80 8FAA002C */  lw      $t2, 0x002C($sp)           
/* 006D4 80A0EB84 8E0B014C */  lw      $t3, 0x014C($s0)           ## 0000014C
/* 006D8 80A0EB88 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006DC 80A0EB8C 26050150 */  addiu   $a1, $s0, 0x0150           ## $a1 = 00000150
/* 006E0 80A0EB90 514B000F */  beql    $t2, $t3, .L80A0EBD0       
/* 006E4 80A0EB94 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 006E8 80A0EB98 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 006EC 80A0EB9C AFA50028 */  sw      $a1, 0x0028($sp)           
/* 006F0 80A0EBA0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 006F4 80A0EBA4 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 006F8 80A0EBA8 02212821 */  addu    $a1, $s1, $at              
/* 006FC 80A0EBAC AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00700 80A0EBB0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00704 80A0EBB4 0C0175E7 */  jal     Actor_CollisionCheck_SetAT
              ## CollisionCheck_setAT
/* 00708 80A0EBB8 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0070C 80A0EBBC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00710 80A0EBC0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00714 80A0EBC4 0C01767D */  jal     Actor_CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 00718 80A0EBC8 8FA60028 */  lw      $a2, 0x0028($sp)           
/* 0071C 80A0EBCC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80A0EBD0:
/* 00720 80A0EBD0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00724 80A0EBD4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00728 80A0EBD8 03E00008 */  jr      $ra                        
/* 0072C 80A0EBDC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


