glabel EnJsjutan_Init
/* 00000 80A897A0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80A897A4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00008 80A897A8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0000C 80A897AC AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00010 80A897B0 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 00014 80A897B4 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 00018 80A897B8 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 0001C 80A897BC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00020 80A897C0 01C17824 */  and     $t7, $t6, $at              
/* 00024 80A897C4 AC8F0004 */  sw      $t7, 0x0004($a0)           ## 00000004
/* 00028 80A897C8 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 0002C 80A897CC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00030 80A897D0 3C0480A9 */  lui     $a0, %hi(D_80A8E400)       ## $a0 = 80A90000
/* 00034 80A897D4 2484E400 */  addiu   $a0, $a0, %lo(D_80A8E400)  ## $a0 = 80A8E400
/* 00038 80A897D8 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 0003C 80A897DC 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00040 80A897E0 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00044 80A897E4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00048 80A897E8 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0004C 80A897EC 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 00050 80A897F0 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 00054 80A897F4 3C053CA3 */  lui     $a1, 0x3CA3                ## $a1 = 3CA30000
/* 00058 80A897F8 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 0005C 80A897FC 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3CA3D70A
/* 00060 80A89800 0C00B58B */  jal     Actor_SetScale
              
/* 00064 80A89804 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00068 80A89808 3C0142C8 */  lui     $at, 0x42C8                ## $at = 42C80000
/* 0006C 80A8980C 44812000 */  mtc1    $at, $f4                   ## $f4 = 100.00
/* 00070 80A89810 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00074 80A89814 A2180164 */  sb      $t8, 0x0164($s0)           ## 00000164
/* 00078 80A89818 E604016C */  swc1    $f4, 0x016C($s0)           ## 0000016C
/* 0007C 80A8981C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00080 80A89820 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00084 80A89824 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00088 80A89828 03E00008 */  jr      $ra                        
/* 0008C 80A8982C 00000000 */  nop


