glabel EnKarebaba_Init
/* 00000 80A95350 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00004 80A95354 AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00008 80A95358 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 80A9535C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 00010 80A95360 AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00014 80A95364 3C0580A9 */  lui     $a1, %hi(D_80A96A50)       ## $a1 = 80A90000
/* 00018 80A95368 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 80A9536C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 80A95370 24A56A50 */  addiu   $a1, $a1, %lo(D_80A96A50)  ## $a1 = 80A96A50
/* 00024 80A95374 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00028 80A95378 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 0002C 80A9537C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 80A95380 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00034 80A95384 0C00AC78 */  jal     ActorShape_Init
              
/* 00038 80A95388 3C0741B0 */  lui     $a3, 0x41B0                ## $a3 = 41B00000
/* 0003C 80A9538C 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00040 80A95390 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00044 80A95394 260E0194 */  addiu   $t6, $s0, 0x0194           ## $t6 = 00000194
/* 00048 80A95398 260F01C4 */  addiu   $t7, $s0, 0x01C4           ## $t7 = 000001C4
/* 0004C 80A9539C 24180008 */  addiu   $t8, $zero, 0x0008         ## $t8 = 00000008
/* 00050 80A953A0 AFB80018 */  sw      $t8, 0x0018($sp)           
/* 00054 80A953A4 AFAF0014 */  sw      $t7, 0x0014($sp)           
/* 00058 80A953A8 AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 0005C 80A953AC 24E702B8 */  addiu   $a3, $a3, 0x02B8           ## $a3 = 060002B8
/* 00060 80A953B0 24C62A40 */  addiu   $a2, $a2, 0x2A40           ## $a2 = 06002A40
/* 00064 80A953B4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00068 80A953B8 0C02915F */  jal     SkelAnime_Init
              
/* 0006C 80A953BC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00070 80A953C0 26050244 */  addiu   $a1, $s0, 0x0244           ## $a1 = 00000244
/* 00074 80A953C4 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00078 80A953C8 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0007C 80A953CC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00080 80A953D0 3C0780A9 */  lui     $a3, %hi(D_80A969F0)       ## $a3 = 80A90000
/* 00084 80A953D4 24E769F0 */  addiu   $a3, $a3, %lo(D_80A969F0)  ## $a3 = 80A969F0
/* 00088 80A953D8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0008C 80A953DC 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00090 80A953E0 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00094 80A953E4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00098 80A953E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0009C 80A953EC 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000A0 80A953F0 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 000A4 80A953F4 260501F8 */  addiu   $a1, $s0, 0x01F8           ## $a1 = 000001F8
/* 000A8 80A953F8 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000AC 80A953FC 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 000B0 80A95400 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B4 80A95404 3C0780A9 */  lui     $a3, %hi(D_80A96A1C)       ## $a3 = 80A90000
/* 000B8 80A95408 24E76A1C */  addiu   $a3, $a3, %lo(D_80A96A1C)  ## $a3 = 80A96A1C
/* 000BC 80A9540C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000C0 80A95410 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 000C4 80A95414 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000C8 80A95418 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000CC 80A9541C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000D0 80A95420 0C0189B7 */  jal     ActorCollider_Cylinder_Update
              
/* 000D4 80A95424 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 000D8 80A95428 0C016C80 */  jal     CollisionBtlTbl_Get
              
/* 000DC 80A9542C 24040001 */  addiu   $a0, $zero, 0x0001         ## $a0 = 00000001
/* 000E0 80A95430 3C0680A9 */  lui     $a2, %hi(D_80A96A48)       ## $a2 = 80A90000
/* 000E4 80A95434 24C66A48 */  addiu   $a2, $a2, %lo(D_80A96A48)  ## $a2 = 80A96A48
/* 000E8 80A95438 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000EC 80A9543C 0C0187B5 */  jal     func_80061ED4              
/* 000F0 80A95440 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 000F4 80A95444 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 000F8 80A95448 AE0001F4 */  sw      $zero, 0x01F4($s0)         ## 000001F4
/* 000FC 80A9544C 17200005 */  bne     $t9, $zero, .L80A95464     
/* 00100 80A95450 00000000 */  nop
/* 00104 80A95454 0C2A553E */  jal     func_80A954F8              
/* 00108 80A95458 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0010C 80A9545C 10000004 */  beq     $zero, $zero, .L80A95470   
/* 00110 80A95460 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A95464:
/* 00114 80A95464 0C2A5552 */  jal     func_80A95548              
/* 00118 80A95468 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0011C 80A9546C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A95470:
/* 00120 80A95470 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00124 80A95474 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 00128 80A95478 03E00008 */  jr      $ra                        
/* 0012C 80A9547C 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
