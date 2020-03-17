glabel EnGuest_Init
/* 00000 80A50220 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00004 80A50224 95CEF566 */  lhu     $t6, -0x0A9A($t6)          ## 8015F566
/* 00008 80A50228 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0000C 80A5022C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00010 80A50230 31CF0040 */  andi    $t7, $t6, 0x0040           ## $t7 = 00000000
/* 00014 80A50234 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00018 80A50238 11E00005 */  beq     $t7, $zero, .L80A50250     
/* 0001C 80A5023C 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 00020 80A50240 0C00B55C */  jal     Actor_Kill
              
/* 00024 80A50244 00000000 */  nop
/* 00028 80A50248 1000001F */  beq     $zero, $zero, .L80A502C8   
/* 0002C 80A5024C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A50250:
/* 00030 80A50250 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00034 80A50254 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 00038 80A50258 00E12021 */  addu    $a0, $a3, $at              
/* 0003C 80A5025C 240500C5 */  addiu   $a1, $zero, 0x00C5         ## $a1 = 000000C5
/* 00040 80A50260 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 00044 80A50264 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00048 80A50268 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 0004C 80A5026C 3C0480A5 */  lui     $a0, %hi(D_80A50BB0)       ## $a0 = 80A50000
/* 00050 80A50270 A0C2030C */  sb      $v0, 0x030C($a2)           ## 0000030C
/* 00054 80A50274 80D8030C */  lb      $t8, 0x030C($a2)           ## 0000030C
/* 00058 80A50278 07030013 */  bgezl   $t8, .L80A502C8            
/* 0005C 80A5027C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00060 80A50280 0C00084C */  jal     osSyncPrintf
              
/* 00064 80A50284 24840BB0 */  addiu   $a0, $a0, %lo(D_80A50BB0)  ## $a0 = 80A50BB0
/* 00068 80A50288 3C0480A5 */  lui     $a0, %hi(D_80A50BBC)       ## $a0 = 80A50000
/* 0006C 80A5028C 3C0580A5 */  lui     $a1, %hi(D_80A50BDC)       ## $a1 = 80A50000
/* 00070 80A50290 24A50BDC */  addiu   $a1, $a1, %lo(D_80A50BDC)  ## $a1 = 80A50BDC
/* 00074 80A50294 24840BBC */  addiu   $a0, $a0, %lo(D_80A50BBC)  ## $a0 = 80A50BBC
/* 00078 80A50298 0C00084C */  jal     osSyncPrintf
              
/* 0007C 80A5029C 24060081 */  addiu   $a2, $zero, 0x0081         ## $a2 = 00000081
/* 00080 80A502A0 3C0480A5 */  lui     $a0, %hi(D_80A50BEC)       ## $a0 = 80A50000
/* 00084 80A502A4 0C00084C */  jal     osSyncPrintf
              
/* 00088 80A502A8 24840BEC */  addiu   $a0, $a0, %lo(D_80A50BEC)  ## $a0 = 80A50BEC
/* 0008C 80A502AC 3C0480A5 */  lui     $a0, %hi(D_80A50BF0)       ## $a0 = 80A50000
/* 00090 80A502B0 3C0580A5 */  lui     $a1, %hi(D_80A50BF4)       ## $a1 = 80A50000
/* 00094 80A502B4 24A50BF4 */  addiu   $a1, $a1, %lo(D_80A50BF4)  ## $a1 = 80A50BF4
/* 00098 80A502B8 24840BF0 */  addiu   $a0, $a0, %lo(D_80A50BF0)  ## $a0 = 80A50BF0
/* 0009C 80A502BC 0C0007FC */  jal     __assert
              
/* 000A0 80A502C0 24060084 */  addiu   $a2, $zero, 0x0084         ## $a2 = 00000084
/* 000A4 80A502C4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A502C8:
/* 000A8 80A502C8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 000AC 80A502CC 03E00008 */  jr      $ra                        
/* 000B0 80A502D0 00000000 */  nop


