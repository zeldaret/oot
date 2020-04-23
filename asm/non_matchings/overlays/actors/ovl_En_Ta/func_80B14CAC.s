glabel func_80B14CAC
/* 0120C 80B14CAC 3C0E8016 */  lui     $t6, %hi(gSaveContext+0xed6)
/* 01210 80B14CB0 95CEF536 */  lhu     $t6, %lo(gSaveContext+0xed6)($t6)
/* 01214 80B14CB4 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01218 80B14CB8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0121C 80B14CBC 31CF0100 */  andi    $t7, $t6, 0x0100           ## $t7 = 00000000
/* 01220 80B14CC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01224 80B14CC4 11E00010 */  beq     $t7, $zero, .L80B14D08     
/* 01228 80B14CC8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0122C 80B14CCC 0C2C50BD */  jal     func_80B142F4              
/* 01230 80B14CD0 24065017 */  addiu   $a2, $zero, 0x5017         ## $a2 = 00005017
/* 01234 80B14CD4 10400016 */  beq     $v0, $zero, .L80B14D30     
/* 01238 80B14CD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0123C 80B14CDC 3C0580B1 */  lui     $a1, %hi(func_80B14C60)    ## $a1 = 80B10000
/* 01240 80B14CE0 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 01244 80B14CE4 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 01248 80B14CE8 0C2C4EA8 */  jal     func_80B13AA0              
/* 0124C 80B14CEC 24A54C60 */  addiu   $a1, $a1, %lo(func_80B14C60) ## $a1 = 80B14C60
/* 01250 80B14CF0 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 01254 80B14CF4 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 01258 80B14CF8 94580EE0 */  lhu     $t8, 0x0EE0($v0)           ## 8015F540
/* 0125C 80B14CFC 37190800 */  ori     $t9, $t8, 0x0800           ## $t9 = 00000800
/* 01260 80B14D00 1000000B */  beq     $zero, $zero, .L80B14D30   
/* 01264 80B14D04 A4590EE0 */  sh      $t9, 0x0EE0($v0)           ## 8015F540
.L80B14D08:
/* 01268 80B14D08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0126C 80B14D0C 0C2C50BD */  jal     func_80B142F4              
/* 01270 80B14D10 24065016 */  addiu   $a2, $zero, 0x5016         ## $a2 = 00005016
/* 01274 80B14D14 10400006 */  beq     $v0, $zero, .L80B14D30     
/* 01278 80B14D18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0127C 80B14D1C 3C0580B1 */  lui     $a1, %hi(func_80B14C60)    ## $a1 = 80B10000
/* 01280 80B14D20 3C0680B1 */  lui     $a2, %hi(func_80B167C0)    ## $a2 = 80B10000
/* 01284 80B14D24 24C667C0 */  addiu   $a2, $a2, %lo(func_80B167C0) ## $a2 = 80B167C0
/* 01288 80B14D28 0C2C4EA8 */  jal     func_80B13AA0              
/* 0128C 80B14D2C 24A54C60 */  addiu   $a1, $a1, %lo(func_80B14C60) ## $a1 = 80B14C60
.L80B14D30:
/* 01290 80B14D30 0C2C5092 */  jal     func_80B14248              
/* 01294 80B14D34 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01298 80B14D38 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0129C 80B14D3C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 012A0 80B14D40 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 012A4 80B14D44 03E00008 */  jr      $ra                        
/* 012A8 80B14D48 00000000 */  nop
