glabel func_80A1C388
/* 019E8 80A1C388 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xeee)
/* 019EC 80A1C38C 95CEF54E */  lhu     $t6, %lo(gSaveContext+0xeee)($t6)
/* 019F0 80A1C390 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 019F4 80A1C394 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 019F8 80A1C398 31CF0001 */  andi    $t7, $t6, 0x0001           ## $t7 = 00000000
/* 019FC 80A1C39C 308400FF */  andi    $a0, $a0, 0x00FF           ## $a0 = 00000000
/* 01A00 80A1C3A0 15E00006 */  bne     $t7, $zero, .L80A1C3BC     
/* 01A04 80A1C3A4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01A08 80A1C3A8 3C188013 */  lui     $t8, %hi(D_80131854)
/* 01A0C 80A1C3AC 8F181854 */  lw      $t8, %lo(D_80131854)($t8)
/* 01A10 80A1C3B0 0098C821 */  addu    $t9, $a0, $t8              
/* 01A14 80A1C3B4 1000000E */  beq     $zero, $zero, .L80A1C3F0   
/* 01A18 80A1C3B8 93220000 */  lbu     $v0, 0x0000($t9)           ## 00000000
.L80A1C3BC:
/* 01A1C 80A1C3BC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01A20 80A1C3C0 44816000 */  mtc1    $at, $f12                  ## $f12 = 60.00
/* 01A24 80A1C3C4 0C00CFBE */  jal     Rand_ZeroFloat
              
/* 01A28 80A1C3C8 00000000 */  nop
/* 01A2C 80A1C3CC 4600010D */  trunc.w.s $f4, $f0                   
/* 01A30 80A1C3D0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 01A34 80A1C3D4 3C0280A2 */  lui     $v0, %hi(D_80A1D0F4)       ## $v0 = 80A20000
/* 01A38 80A1C3D8 44092000 */  mfc1    $t1, $f4                   
/* 01A3C 80A1C3DC 00000000 */  nop
/* 01A40 80A1C3E0 0121001A */  div     $zero, $t1, $at            
/* 01A44 80A1C3E4 00005010 */  mfhi    $t2                        
/* 01A48 80A1C3E8 004A1021 */  addu    $v0, $v0, $t2              
/* 01A4C 80A1C3EC 9042D0F4 */  lbu     $v0, %lo(D_80A1D0F4)($v0)  
.L80A1C3F0:
/* 01A50 80A1C3F0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01A54 80A1C3F4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01A58 80A1C3F8 03E00008 */  jr      $ra                        
/* 01A5C 80A1C3FC 00000000 */  nop
