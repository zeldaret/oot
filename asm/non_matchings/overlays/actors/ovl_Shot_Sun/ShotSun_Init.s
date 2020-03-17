glabel ShotSun_Init
/* 00000 80BADCC0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 80BADCC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00008 80BADCC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0000C 80BADCCC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00010 80BADCD0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00014 80BADCD4 3C0480BB */  lui     $a0, %hi(D_80BAE320)       ## $a0 = 80BB0000
/* 00018 80BADCD8 2484E320 */  addiu   $a0, $a0, %lo(D_80BAE320)  ## $a0 = 80BAE320
/* 0001C 80BADCDC 0C00084C */  jal     osSyncPrintf
              
/* 00020 80BADCE0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00024 80BADCE4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00028 80BADCE8 24010040 */  addiu   $at, $zero, 0x0040         ## $at = 00000040
/* 0002C 80BADCEC 3C0880BB */  lui     $t0, %hi(func_80BADF0C)    ## $t0 = 80BB0000
/* 00030 80BADCF0 304200FF */  andi    $v0, $v0, 0x00FF           ## $v0 = 00000000
/* 00034 80BADCF4 10410004 */  beq     $v0, $at, .L80BADD08       
/* 00038 80BADCF8 2508DF0C */  addiu   $t0, $t0, %lo(func_80BADF0C) ## $t0 = 80BADF0C
/* 0003C 80BADCFC 24010041 */  addiu   $at, $zero, 0x0041         ## $at = 00000041
/* 00040 80BADD00 1441000D */  bne     $v0, $at, .L80BADD38       
/* 00044 80BADD04 8FA40034 */  lw      $a0, 0x0034($sp)           
.L80BADD08:
/* 00048 80BADD08 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 0004C 80BADD0C 3C010200 */  lui     $at, 0x0200                ## $at = 02000000
/* 00050 80BADD10 A20001A4 */  sb      $zero, 0x01A4($s0)         ## 000001A4
/* 00054 80BADD14 35CF0010 */  ori     $t7, $t6, 0x0010           ## $t7 = 00000010
/* 00058 80BADD18 01E1C825 */  or      $t9, $t7, $at              ## $t9 = 02000010
/* 0005C 80BADD1C AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 00060 80BADD20 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 00064 80BADD24 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 00068 80BADD28 03215025 */  or      $t2, $t9, $at              ## $t2 = 0A000010
/* 0006C 80BADD2C AE080198 */  sw      $t0, 0x0198($s0)           ## 00000198
/* 00070 80BADD30 10000011 */  beq     $zero, $zero, .L80BADD78   
/* 00074 80BADD34 AE0A0004 */  sw      $t2, 0x0004($s0)           ## 00000004
.L80BADD38:
/* 00078 80BADD38 2605014C */  addiu   $a1, $s0, 0x014C           ## $a1 = 0000014C
/* 0007C 80BADD3C 0C0170D9 */  jal     ActorCollider_AllocCylinder
              
/* 00080 80BADD40 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00084 80BADD44 3C0780BB */  lui     $a3, %hi(D_80BAE2F0)       ## $a3 = 80BB0000
/* 00088 80BADD48 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 0008C 80BADD4C 24E7E2F0 */  addiu   $a3, $a3, %lo(D_80BAE2F0)  ## $a3 = 80BAE2F0
/* 00090 80BADD50 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00094 80BADD54 0C01712B */  jal     ActorCollider_InitCylinder
              
/* 00098 80BADD58 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 0009C 80BADD5C 8E0C0004 */  lw      $t4, 0x0004($s0)           ## 00000004
/* 000A0 80BADD60 3C0B80BB */  lui     $t3, %hi(func_80BAE05C)    ## $t3 = 80BB0000
/* 000A4 80BADD64 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 000A8 80BADD68 256BE05C */  addiu   $t3, $t3, %lo(func_80BAE05C) ## $t3 = 80BAE05C
/* 000AC 80BADD6C 01816824 */  and     $t5, $t4, $at              
/* 000B0 80BADD70 AE0B0198 */  sw      $t3, 0x0198($s0)           ## 00000198
/* 000B4 80BADD74 AE0D0004 */  sw      $t5, 0x0004($s0)           ## 00000004
.L80BADD78:
/* 000B8 80BADD78 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000BC 80BADD7C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000C0 80BADD80 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 000C4 80BADD84 03E00008 */  jr      $ra                        
/* 000C8 80BADD88 00000000 */  nop


