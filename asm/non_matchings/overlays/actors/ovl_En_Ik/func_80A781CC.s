glabel func_80A781CC
/* 03EBC 80A781CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03EC0 80A781D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03EC4 80A781D4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03EC8 80A781D8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03ECC 80A781DC 0C02FF21 */  jal     Gameplay_InCsMode              
/* 03ED0 80A781E0 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 03ED4 80A781E4 1440001A */  bne     $v0, $zero, .L80A78250     
/* 03ED8 80A781E8 3C0E80A7 */  lui     $t6, %hi(EnIk_Update)    ## $t6 = 80A70000
/* 03EDC 80A781EC 8FA20018 */  lw      $v0, 0x0018($sp)           
/* 03EE0 80A781F0 3C0F80A8 */  lui     $t7, %hi(EnIk_Draw)    ## $t7 = 80A80000
/* 03EE4 80A781F4 25CE7B9C */  addiu   $t6, $t6, %lo(EnIk_Update) ## $t6 = 80A77B9C
/* 03EE8 80A781F8 25EF8074 */  addiu   $t7, $t7, %lo(EnIk_Draw) ## $t7 = 80A78074
/* 03EEC 80A781FC 3C050200 */  lui     $a1, 0x0200                ## $a1 = 02000000
/* 03EF0 80A78200 AC4E0130 */  sw      $t6, 0x0130($v0)           ## 00000130
/* 03EF4 80A78204 AC4F0134 */  sw      $t7, 0x0134($v0)           ## 00000134
/* 03EF8 80A78208 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 03EFC 80A7820C 0C01A4F6 */  jal     Cutscene_SetSegment
              
/* 03F00 80A78210 24A53F80 */  addiu   $a1, $a1, 0x3F80           ## $a1 = 02003F80
/* 03F04 80A78214 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 03F08 80A78218 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 03F0C 80A7821C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 03F10 80A78220 A038FA74 */  sb      $t8, %lo(gSaveContext+0x1414)($at)
/* 03F14 80A78224 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 03F18 80A78228 0C00B58B */  jal     Actor_SetScale
              
/* 03F1C 80A7822C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03F20 80A78230 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 03F24 80A78234 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 03F28 80A78238 94590EDA */  lhu     $t9, 0x0EDA($v0)           ## 8015F53A
/* 03F2C 80A7823C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03F30 80A78240 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 03F34 80A78244 37281000 */  ori     $t0, $t9, 0x1000           ## $t0 = 00001000
/* 03F38 80A78248 0C29DCD7 */  jal     func_80A7735C              
/* 03F3C 80A7824C A4480EDA */  sh      $t0, 0x0EDA($v0)           ## 8015F53A
.L80A78250:
/* 03F40 80A78250 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03F44 80A78254 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03F48 80A78258 03E00008 */  jr      $ra                        
/* 03F4C 80A7825C 00000000 */  nop
