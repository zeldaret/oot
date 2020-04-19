glabel EnDekunuts_Init
/* 00000 809E9560 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 00004 809E9564 AFB10038 */  sw      $s1, 0x0038($sp)           
/* 00008 809E9568 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 809E956C AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00010 809E9570 AFB00034 */  sw      $s0, 0x0034($sp)           
/* 00014 809E9574 3C05809F */  lui     $a1, %hi(D_809EABA4)       ## $a1 = 809F0000
/* 00018 809E9578 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 809E957C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 809E9580 24A5ABA4 */  addiu   $a1, $a1, %lo(D_809EABA4)  ## $a1 = 809EABA4
/* 00024 809E9584 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 809E9588 2401000A */  addiu   $at, $zero, 0x000A         ## $at = 0000000A
/* 0002C 809E958C 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00030 809E9590 15C10006 */  bne     $t6, $at, .L809E95AC       
/* 00034 809E9594 24050000 */  addiu   $a1, $zero, 0x0000         ## $a1 = 00000000
/* 00038 809E9598 8E0F0004 */  lw      $t7, 0x0004($s0)           ## 00000004
/* 0003C 809E959C 2401FFFA */  addiu   $at, $zero, 0xFFFA         ## $at = FFFFFFFA
/* 00040 809E95A0 01E1C024 */  and     $t8, $t7, $at              
/* 00044 809E95A4 10000043 */  beq     $zero, $zero, .L809E96B4   
/* 00048 809E95A8 AE180004 */  sw      $t8, 0x0004($s0)           ## 00000004
.L809E95AC:
/* 0004C 809E95AC 3C068003 */  lui     $a2, %hi(ActorShadow_DrawFunc_Circle)
/* 00050 809E95B0 24C6B5EC */  addiu   $a2, %lo(ActorShadow_DrawFunc_Circle)
/* 00054 809E95B4 0C00AC78 */  jal     ActorShape_Init
              
/* 00058 809E95B8 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 0005C 809E95BC 3C060600 */  lui     $a2, 0x0600                ## $a2 = 06000000
/* 00060 809E95C0 3C070600 */  lui     $a3, 0x0600                ## $a3 = 06000000
/* 00064 809E95C4 2619019C */  addiu   $t9, $s0, 0x019C           ## $t9 = 0000019C
/* 00068 809E95C8 26080232 */  addiu   $t0, $s0, 0x0232           ## $t0 = 00000232
/* 0006C 809E95CC 24090019 */  addiu   $t1, $zero, 0x0019         ## $t1 = 00000019
/* 00070 809E95D0 AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00074 809E95D4 AFA80014 */  sw      $t0, 0x0014($sp)           
/* 00078 809E95D8 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 0007C 809E95DC 24E70E6C */  addiu   $a3, $a3, 0x0E6C           ## $a3 = 06000E6C
/* 00080 809E95E0 24C63268 */  addiu   $a2, $a2, 0x3268           ## $a2 = 06003268
/* 00084 809E95E4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00088 809E95E8 0C02915F */  jal     SkelAnime_Init
              
/* 0008C 809E95EC 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 00090 809E95F0 260502C8 */  addiu   $a1, $s0, 0x02C8           ## $a1 = 000002C8
/* 00094 809E95F4 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00098 809E95F8 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 0009C 809E95FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000A0 809E9600 3C07809F */  lui     $a3, %hi(D_809EAB50)       ## $a3 = 809F0000
/* 000A4 809E9604 8FA50044 */  lw      $a1, 0x0044($sp)           
/* 000A8 809E9608 24E7AB50 */  addiu   $a3, $a3, %lo(D_809EAB50)  ## $a3 = 809EAB50
/* 000AC 809E960C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000B0 809E9610 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 000B4 809E9614 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000B8 809E9618 3C05809F */  lui     $a1, %hi(D_809EAB84)       ## $a1 = 809F0000
/* 000BC 809E961C 3C06809F */  lui     $a2, %hi(D_809EAB7C)       ## $a2 = 809F0000
/* 000C0 809E9620 24C6AB7C */  addiu   $a2, $a2, %lo(D_809EAB7C)  ## $a2 = 809EAB7C
/* 000C4 809E9624 24A5AB84 */  addiu   $a1, $a1, %lo(D_809EAB84)  ## $a1 = 809EAB84
/* 000C8 809E9628 0C0187B5 */  jal     func_80061ED4              
/* 000CC 809E962C 26040098 */  addiu   $a0, $s0, 0x0098           ## $a0 = 00000098
/* 000D0 809E9630 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 000D4 809E9634 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 000D8 809E9638 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 000DC 809E963C 000A5A03 */  sra     $t3, $t2,  8               
/* 000E0 809E9640 316C00FF */  andi    $t4, $t3, 0x00FF           ## $t4 = 00000000
/* 000E4 809E9644 A60C019A */  sh      $t4, 0x019A($s0)           ## 0000019A
/* 000E8 809E9648 8602019A */  lh      $v0, 0x019A($s0)           ## 0000019A
/* 000EC 809E964C 31AE00FF */  andi    $t6, $t5, 0x00FF           ## $t6 = 00000000
/* 000F0 809E9650 A60E001C */  sh      $t6, 0x001C($s0)           ## 0000001C
/* 000F4 809E9654 10410003 */  beq     $v0, $at, .L809E9664       
/* 000F8 809E9658 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 000FC 809E965C 14400002 */  bne     $v0, $zero, .L809E9668     
/* 00100 809E9660 00000000 */  nop
.L809E9664:
/* 00104 809E9664 A60F019A */  sh      $t7, 0x019A($s0)           ## 0000019A
.L809E9668:
/* 00108 809E9668 0C27A5BF */  jal     func_809E96FC              
/* 0010C 809E966C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00110 809E9670 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00114 809E9674 2419000A */  addiu   $t9, $zero, 0x000A         ## $t9 = 0000000A
/* 00118 809E9678 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 0011C 809E967C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00120 809E9680 C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 00124 809E9684 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00128 809E9688 02203025 */  or      $a2, $s1, $zero            ## $a2 = 00000000
/* 0012C 809E968C E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00130 809E9690 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 00134 809E9694 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00138 809E9698 24070060 */  addiu   $a3, $zero, 0x0060         ## $a3 = 00000060
/* 0013C 809E969C E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 00140 809E96A0 86180032 */  lh      $t8, 0x0032($s0)           ## 00000032
/* 00144 809E96A4 AFB90028 */  sw      $t9, 0x0028($sp)           
/* 00148 809E96A8 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0014C 809E96AC 0C00C916 */  jal     Actor_SpawnAttached
              
/* 00150 809E96B0 AFB80020 */  sw      $t8, 0x0020($sp)           
.L809E96B4:
/* 00154 809E96B4 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 00158 809E96B8 8FB00034 */  lw      $s0, 0x0034($sp)           
/* 0015C 809E96BC 8FB10038 */  lw      $s1, 0x0038($sp)           
/* 00160 809E96C0 03E00008 */  jr      $ra                        
/* 00164 809E96C4 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
