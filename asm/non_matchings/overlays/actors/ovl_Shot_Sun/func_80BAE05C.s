.rdata
glabel D_80BAE34C
    .asciz "[36mSHOT_SUN HIT!!!!!!!\n[m"
    .balign 4

.late_rodata
glabel D_80BAE370
 .word 0x45E2E800
glabel D_80BAE374
 .word 0x45E2E800
glabel D_80BAE378
 .word 0x3E2AAAAB, 0x00000000

.text
glabel func_80BAE05C
/* 0039C 80BAE05C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 003A0 80BAE060 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 003A4 80BAE064 AFB00030 */  sw      $s0, 0x0030($sp)           
/* 003A8 80BAE068 908E015D */  lbu     $t6, 0x015D($a0)           ## 0000015D
/* 003AC 80BAE06C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 003B0 80BAE070 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 003B4 80BAE074 31CF0002 */  andi    $t7, $t6, 0x0002           ## $t7 = 00000000
/* 003B8 80BAE078 11E00048 */  beq     $t7, $zero, .L80BAE19C     
/* 003BC 80BAE07C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 003C0 80BAE080 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 003C4 80BAE084 0C01E221 */  jal     func_80078884              
/* 003C8 80BAE088 AFA70060 */  sw      $a3, 0x0060($sp)           
/* 003CC 80BAE08C 3C0480BB */  lui     $a0, %hi(D_80BAE34C)       ## $a0 = 80BB0000
/* 003D0 80BAE090 0C00084C */  jal     osSyncPrintf
              
/* 003D4 80BAE094 2484E34C */  addiu   $a0, $a0, %lo(D_80BAE34C)  ## $a0 = 80BAE34C
/* 003D8 80BAE098 3C188012 */  lui     $t8, %hi(gItemSlots+4)
/* 003DC 80BAE09C 93187468 */  lbu     $t8, %lo(gItemSlots+4)($t8)
/* 003E0 80BAE0A0 3C198016 */  lui     $t9, %hi(gSaveContext+0x74)
/* 003E4 80BAE0A4 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 003E8 80BAE0A8 0338C821 */  addu    $t9, $t9, $t8              
/* 003EC 80BAE0AC 9339E6D4 */  lbu     $t9, %lo(gSaveContext+0x74)($t9)
/* 003F0 80BAE0B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 003F4 80BAE0B4 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFE0
/* 003F8 80BAE0B8 17210024 */  bne     $t9, $at, .L80BAE14C       
/* 003FC 80BAE0BC 2406000E */  addiu   $a2, $zero, 0x000E         ## $a2 = 0000000E
/* 00400 80BAE0C0 3C01C448 */  lui     $at, 0xC448                ## $at = C4480000
/* 00404 80BAE0C4 44812000 */  mtc1    $at, $f4                   ## $f4 = -800.00
/* 00408 80BAE0C8 3C0180BB */  lui     $at, %hi(D_80BAE370)       ## $at = 80BB0000
/* 0040C 80BAE0CC C426E370 */  lwc1    $f6, %lo(D_80BAE370)($at)  
/* 00410 80BAE0D0 24080007 */  addiu   $t0, $zero, 0x0007         ## $t0 = 00000007
/* 00414 80BAE0D4 AFA80024 */  sw      $t0, 0x0024($sp)           
/* 00418 80BAE0D8 26041C24 */  addiu   $a0, $s0, 0x1C24           ## $a0 = 00001C24
/* 0041C 80BAE0DC 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00420 80BAE0E0 2406010F */  addiu   $a2, $zero, 0x010F         ## $a2 = 0000010F
/* 00424 80BAE0E4 3C07442F */  lui     $a3, 0x442F                ## $a3 = 442F0000
/* 00428 80BAE0E8 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0042C 80BAE0EC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00430 80BAE0F0 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 00434 80BAE0F4 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00438 80BAE0F8 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 0043C 80BAE0FC E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00440 80BAE100 3C030200 */  lui     $v1, 0x0200                ## $v1 = 02000000
/* 00444 80BAE104 24637020 */  addiu   $v1, $v1, 0x7020           ## $v1 = 02007020
/* 00448 80BAE108 00034900 */  sll     $t1, $v1,  4               
/* 0044C 80BAE10C 00095702 */  srl     $t2, $t1, 28               
/* 00450 80BAE110 000A5880 */  sll     $t3, $t2,  2               
/* 00454 80BAE114 3C0C8016 */  lui     $t4, %hi(gSegments)
/* 00458 80BAE118 018B6021 */  addu    $t4, $t4, $t3              
/* 0045C 80BAE11C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00460 80BAE120 8D8C6FA8 */  lw      $t4, %lo(gSegments)($t4)
/* 00464 80BAE124 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00468 80BAE128 00616824 */  and     $t5, $v1, $at              
/* 0046C 80BAE12C 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00470 80BAE130 018D7021 */  addu    $t6, $t4, $t5              
/* 00474 80BAE134 01C17821 */  addu    $t7, $t6, $at              
/* 00478 80BAE138 AE0F1D68 */  sw      $t7, 0x1D68($s0)           ## 00001D68
/* 0047C 80BAE13C 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 00480 80BAE140 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00484 80BAE144 10000011 */  beq     $zero, $zero, .L80BAE18C   
/* 00488 80BAE148 A038FA74 */  sb      $t8, %lo(gSaveContext+0x1414)($at)
.L80BAE14C:
/* 0048C 80BAE14C 3C01442F */  lui     $at, 0x442F                ## $at = 442F0000
/* 00490 80BAE150 44814000 */  mtc1    $at, $f8                   ## $f8 = 700.00
/* 00494 80BAE154 3C01C448 */  lui     $at, 0xC448                ## $at = C4480000
/* 00498 80BAE158 44815000 */  mtc1    $at, $f10                  ## $f10 = -800.00
/* 0049C 80BAE15C 3C0180BB */  lui     $at, %hi(D_80BAE374)       ## $at = 80BB0000
/* 004A0 80BAE160 C430E374 */  lwc1    $f16, %lo(D_80BAE374)($at) 
/* 004A4 80BAE164 E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 004A8 80BAE168 E7AA0044 */  swc1    $f10, 0x0044($sp)          
/* 004AC 80BAE16C 0C007D52 */  jal     Item_DropCollectible
              
/* 004B0 80BAE170 E7B00048 */  swc1    $f16, 0x0048($sp)          
/* 004B4 80BAE174 10400005 */  beq     $v0, $zero, .L80BAE18C     
/* 004B8 80BAE178 00000000 */  nop
/* 004BC 80BAE17C 44809000 */  mtc1    $zero, $f18                ## $f18 = 0.00
/* 004C0 80BAE180 24191770 */  addiu   $t9, $zero, 0x1770         ## $t9 = 00001770
/* 004C4 80BAE184 A459015A */  sh      $t9, 0x015A($v0)           ## 0000015A
/* 004C8 80BAE188 E4520068 */  swc1    $f18, 0x0068($v0)          ## 00000068
.L80BAE18C:
/* 004CC 80BAE18C 0C00B55C */  jal     Actor_Kill
              
/* 004D0 80BAE190 8FA40060 */  lw      $a0, 0x0060($sp)           
/* 004D4 80BAE194 1000003E */  beq     $zero, $zero, .L80BAE290   
/* 004D8 80BAE198 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80BAE19C:
/* 004DC 80BAE19C 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 004E0 80BAE1A0 44812000 */  mtc1    $at, $f4                   ## $f4 = 120.00
/* 004E4 80BAE1A4 C4E60090 */  lwc1    $f6, 0x0090($a3)           ## 00000090
/* 004E8 80BAE1A8 3C028016 */  lui     $v0, %hi(gSaveContext+0xc)
/* 004EC 80BAE1AC 4606203C */  c.lt.s  $f4, $f6                   
/* 004F0 80BAE1B0 00000000 */  nop
/* 004F4 80BAE1B4 45030036 */  bc1tl   .L80BAE290                 
/* 004F8 80BAE1B8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 004FC 80BAE1BC 9442E66C */  lhu     $v0, %lo(gSaveContext+0xc)($v0)
/* 00500 80BAE1C0 28414555 */  slti    $at, $v0, 0x4555           
/* 00504 80BAE1C4 14200031 */  bne     $at, $zero, .L80BAE28C     
/* 00508 80BAE1C8 28415000 */  slti    $at, $v0, 0x5000           
/* 0050C 80BAE1CC 1020002F */  beq     $at, $zero, .L80BAE28C     
/* 00510 80BAE1D0 3C0180BB */  lui     $at, %hi(D_80BAE378)       ## $at = 80BB0000
/* 00514 80BAE1D4 C420E378 */  lwc1    $f0, %lo(D_80BAE378)($at)  
/* 00518 80BAE1D8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0051C 80BAE1DC 02011021 */  addu    $v0, $s0, $at              
/* 00520 80BAE1E0 C44A0A28 */  lwc1    $f10, 0x0A28($v0)          ## 80160A28
/* 00524 80BAE1E4 C468095C */  lwc1    $f8, 0x095C($v1)           ## 0000095C
/* 00528 80BAE1E8 3C0141F0 */  lui     $at, 0x41F0                ## $at = 41F00000
/* 0052C 80BAE1EC 46005402 */  mul.s   $f16, $f10, $f0            
/* 00530 80BAE1F0 44815000 */  mtc1    $at, $f10                  ## $f10 = 30.00
/* 00534 80BAE1F4 27A50058 */  addiu   $a1, $sp, 0x0058           ## $a1 = FFFFFFF8
/* 00538 80BAE1F8 24E6014C */  addiu   $a2, $a3, 0x014C           ## $a2 = 0000014C
/* 0053C 80BAE1FC 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 0000014C
/* 00540 80BAE200 46104480 */  add.s   $f18, $f8, $f16            
/* 00544 80BAE204 4600910D */  trunc.w.s $f4, $f18                  
/* 00548 80BAE208 44092000 */  mfc1    $t1, $f4                   
/* 0054C 80BAE20C 00000000 */  nop
/* 00550 80BAE210 A7A90058 */  sh      $t1, 0x0058($sp)           
/* 00554 80BAE214 C4500A2C */  lwc1    $f16, 0x0A2C($v0)          ## 80160A2C
/* 00558 80BAE218 C4660960 */  lwc1    $f6, 0x0960($v1)           ## 00000960
/* 0055C 80BAE21C 46008482 */  mul.s   $f18, $f16, $f0            
/* 00560 80BAE220 460A3201 */  sub.s   $f8, $f6, $f10             
/* 00564 80BAE224 46124100 */  add.s   $f4, $f8, $f18             
/* 00568 80BAE228 4600218D */  trunc.w.s $f6, $f4                   
/* 0056C 80BAE22C 440B3000 */  mfc1    $t3, $f6                   
/* 00570 80BAE230 00000000 */  nop
/* 00574 80BAE234 A7AB005A */  sh      $t3, 0x005A($sp)           
/* 00578 80BAE238 C4500A30 */  lwc1    $f16, 0x0A30($v0)          ## 80160A30
/* 0057C 80BAE23C C46A0964 */  lwc1    $f10, 0x0964($v1)          ## 00000964
/* 00580 80BAE240 46008202 */  mul.s   $f8, $f16, $f0             
/* 00584 80BAE244 46085480 */  add.s   $f18, $f10, $f8            
/* 00588 80BAE248 4600910D */  trunc.w.s $f4, $f18                  
/* 0058C 80BAE24C 440D2000 */  mfc1    $t5, $f4                   
/* 00590 80BAE250 00000000 */  nop
/* 00594 80BAE254 A7AD005C */  sh      $t5, 0x005C($sp)           
/* 00598 80BAE258 8CAF0000 */  lw      $t7, 0x0000($a1)           ## FFFFFFF8
/* 0059C 80BAE25C A8EF019C */  swl     $t7, 0x019C($a3)           ## 0000019C
/* 005A0 80BAE260 B8EF019F */  swr     $t7, 0x019F($a3)           ## 0000019F
/* 005A4 80BAE264 94AF0004 */  lhu     $t7, 0x0004($a1)           ## FFFFFFFC
/* 005A8 80BAE268 A4EF01A0 */  sh      $t7, 0x01A0($a3)           ## 000001A0
/* 005AC 80BAE26C 0C0189C6 */  jal     func_80062718              
/* 005B0 80BAE270 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 005B4 80BAE274 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 005B8 80BAE278 34211E60 */  ori     $at, $at, 0x1E60           ## $at = 00011E60
/* 005BC 80BAE27C 8FA6003C */  lw      $a2, 0x003C($sp)           
/* 005C0 80BAE280 02012821 */  addu    $a1, $s0, $at              
/* 005C4 80BAE284 0C01767D */  jal     CollisionCheck_SetAC
              ## CollisionCheck_setAC
/* 005C8 80BAE288 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80BAE28C:
/* 005CC 80BAE28C 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L80BAE290:
/* 005D0 80BAE290 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 005D4 80BAE294 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 005D8 80BAE298 03E00008 */  jr      $ra                        
/* 005DC 80BAE29C 00000000 */  nop
