glabel BgTreemouth_Init
/* 00008 808BC508 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0000C 808BC50C AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 808BC510 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00014 808BC514 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00018 808BC518 3C05808C */  lui     $a1, %hi(D_808BD9B0)       ## $a1 = 808C0000
/* 0001C 808BC51C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 808BC520 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00024 808BC524 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00028 808BC528 24A5D9B0 */  addiu   $a1, $a1, %lo(D_808BD9B0)  ## $a1 = 808BD9B0
/* 0002C 808BC52C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00030 808BC530 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00034 808BC534 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00038 808BC538 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 0003C 808BC53C 24840E94 */  addiu   $a0, $a0, 0x0E94           ## $a0 = 06000E94
/* 00040 808BC540 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00044 808BC544 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00048 808BC548 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 0004C 808BC54C 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00050 808BC550 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00054 808BC554 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00058 808BC558 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 0005C 808BC55C 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 00060 808BC560 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 00064 808BC564 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00068 808BC568 44050000 */  mfc1    $a1, $f0                   
/* 0006C 808BC56C 44070000 */  mfc1    $a3, $f0                   
/* 00070 808BC570 0C00AC78 */  jal     ActorShape_Init
              
/* 00074 808BC574 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00078 808BC578 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0007C 808BC57C 0C00B56E */  jal     Actor_SetHeight
              
/* 00080 808BC580 3C054248 */  lui     $a1, 0x4248                ## $a1 = 42480000
/* 00084 808BC584 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00088 808BC588 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 0008C 808BC58C 8C621360 */  lw      $v0, 0x1360($v1)           ## 8015F9C0
/* 00090 808BC590 28410004 */  slti    $at, $v0, 0x0004           
/* 00094 808BC594 5020000B */  beql    $at, $zero, .L808BC5C4     
/* 00098 808BC598 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 8015E664
/* 0009C 808BC59C 8C6E0004 */  lw      $t6, 0x0004($v1)           ## 8015E664
/* 000A0 808BC5A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000A4 808BC5A4 3C05808C */  lui     $a1, %hi(func_808BC8B8)    ## $a1 = 808C0000
/* 000A8 808BC5A8 51C00006 */  beql    $t6, $zero, .L808BC5C4     
/* 000AC 808BC5AC 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 8015E664
/* 000B0 808BC5B0 0C22F140 */  jal     func_808BC500              
/* 000B4 808BC5B4 24A5C8B8 */  addiu   $a1, $a1, %lo(func_808BC8B8) ## $a1 = 808BC8B8
/* 000B8 808BC5B8 10000016 */  beq     $zero, $zero, .L808BC614   
/* 000BC 808BC5BC 24180905 */  addiu   $t8, $zero, 0x0905         ## $t8 = 00000905
/* 000C0 808BC5C0 8C6F0004 */  lw      $t7, 0x0004($v1)           ## 00000004
.L808BC5C4:
/* 000C4 808BC5C4 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 000C8 808BC5C8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000CC 808BC5CC 11E00003 */  beq     $t7, $zero, .L808BC5DC     
/* 000D0 808BC5D0 3C05808C */  lui     $a1, %hi(func_808BCB8C)    ## $a1 = 808C0000
/* 000D4 808BC5D4 54410008 */  bnel    $v0, $at, .L808BC5F8       
/* 000D8 808BC5D8 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L808BC5DC:
/* 000DC 808BC5DC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 000E0 808BC5E0 24A5CB8C */  addiu   $a1, $a1, %lo(func_808BCB8C) ## $a1 = 808BCB8C
/* 000E4 808BC5E4 0C22F140 */  jal     func_808BC500              
/* 000E8 808BC5E8 E6040168 */  swc1    $f4, 0x0168($s0)           ## 00000168
/* 000EC 808BC5EC 10000009 */  beq     $zero, $zero, .L808BC614   
/* 000F0 808BC5F0 24180905 */  addiu   $t8, $zero, 0x0905         ## $t8 = 00000905
/* 000F4 808BC5F4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
.L808BC5F8:
/* 000F8 808BC5F8 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 000FC 808BC5FC 3C05808C */  lui     $a1, %hi(func_808BC6F8)    ## $a1 = 808C0000
/* 00100 808BC600 24A5C6F8 */  addiu   $a1, $a1, %lo(func_808BC6F8) ## $a1 = 808BC6F8
/* 00104 808BC604 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00108 808BC608 0C22F140 */  jal     func_808BC500              
/* 0010C 808BC60C E6060168 */  swc1    $f6, 0x0168($s0)           ## 00000168
/* 00110 808BC610 24180905 */  addiu   $t8, $zero, 0x0905         ## $t8 = 00000905
.L808BC614:
/* 00114 808BC614 A618010E */  sh      $t8, 0x010E($s0)           ## 0000010E
/* 00118 808BC618 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0011C 808BC61C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00120 808BC620 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00124 808BC624 03E00008 */  jr      $ra                        
/* 00128 808BC628 00000000 */  nop
