glabel func_80AD7984
/* 00244 80AD7984 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00248 80AD7988 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0024C 80AD798C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00250 80AD7990 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00254 80AD7994 860E0198 */  lh      $t6, 0x0198($s0)           ## 00000198
/* 00258 80AD7998 3C1880AE */  lui     $t8, %hi(D_80AD8C30)       ## $t8 = 80AE0000
/* 0025C 80AD799C 27188C30 */  addiu   $t8, $t8, %lo(D_80AD8C30)  ## $t8 = 80AD8C30
/* 00260 80AD79A0 000E7880 */  sll     $t7, $t6,  2               
/* 00264 80AD79A4 01EE7823 */  subu    $t7, $t7, $t6              
/* 00268 80AD79A8 000F7840 */  sll     $t7, $t7,  1               
/* 0026C 80AD79AC 01F82821 */  addu    $a1, $t7, $t8              
/* 00270 80AD79B0 0C2B5E51 */  jal     func_80AD7944              
/* 00274 80AD79B4 27A40024 */  addiu   $a0, $sp, 0x0024           ## $a0 = FFFFFFF4
/* 00278 80AD79B8 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 0027C 80AD79BC 86080032 */  lh      $t0, 0x0032($s0)           ## 00000032
/* 00280 80AD79C0 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 00284 80AD79C4 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 00288 80AD79C8 03284823 */  subu    $t1, $t9, $t0              
/* 0028C 80AD79CC 01216021 */  addu    $t4, $t1, $at              
/* 00290 80AD79D0 000C6AC3 */  sra     $t5, $t4, 11               
/* 00294 80AD79D4 31AE001F */  andi    $t6, $t5, 0x001F           ## $t6 = 00000000
/* 00298 80AD79D8 0C0222CD */  jal     func_80088B34              
/* 0029C 80AD79DC A60E0196 */  sh      $t6, 0x0196($s0)           ## 00000196
/* 002A0 80AD79E0 3C0F8012 */  lui     $t7, %hi(gItemSlots+0xa)
/* 002A4 80AD79E4 91EF746E */  lbu     $t7, %lo(gItemSlots+0xa)($t7)
/* 002A8 80AD79E8 3C188016 */  lui     $t8, %hi(gSaveContext+0x74)
/* 002AC 80AD79EC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002B0 80AD79F0 030FC021 */  addu    $t8, $t8, $t7              
/* 002B4 80AD79F4 9318E6D4 */  lbu     $t8, %lo(gSaveContext+0x74)($t8)
/* 002B8 80AD79F8 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 002BC 80AD79FC 3B1900FF */  xori    $t9, $t8, 0x00FF           ## $t9 = 801600FF
/* 002C0 80AD7A00 0019C82B */  sltu    $t9, $zero, $t9            
/* 002C4 80AD7A04 0C00B6B0 */  jal     func_8002DAC0              
/* 002C8 80AD7A08 A2190194 */  sb      $t9, 0x0194($s0)           ## 00000194
/* 002CC 80AD7A0C 8E080004 */  lw      $t0, 0x0004($s0)           ## 00000004
/* 002D0 80AD7A10 3C010800 */  lui     $at, 0x0800                ## $at = 08000000
/* 002D4 80AD7A14 A602019A */  sh      $v0, 0x019A($s0)           ## 0000019A
/* 002D8 80AD7A18 01014825 */  or      $t1, $t0, $at              ## $t1 = 08000000
/* 002DC 80AD7A1C AE090004 */  sw      $t1, 0x0004($s0)           ## 00000004
/* 002E0 80AD7A20 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 002E4 80AD7A24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 002E8 80AD7A28 240538EC */  addiu   $a1, $zero, 0x38EC         ## $a1 = 000038EC
/* 002EC 80AD7A2C 3C0A80AD */  lui     $t2, %hi(func_80AD7C64)    ## $t2 = 80AD0000
/* 002F0 80AD7A30 254A7C64 */  addiu   $t2, $t2, %lo(func_80AD7C64) ## $t2 = 80AD7C64
/* 002F4 80AD7A34 AE0A0190 */  sw      $t2, 0x0190($s0)           ## 00000190
/* 002F8 80AD7A38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 002FC 80AD7A3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00300 80AD7A40 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00304 80AD7A44 03E00008 */  jr      $ra                        
/* 00308 80AD7A48 00000000 */  nop
