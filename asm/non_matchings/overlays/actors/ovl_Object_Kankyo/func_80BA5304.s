.rdata
glabel D_80BA5B7C
    .asciz "0"
    .balign 4

glabel D_80BA5B80
    .asciz "../z_object_kankyo.c"
    .balign 4

.text
glabel func_80BA5304
/* 02864 80BA5304 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02868 80BA5308 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0286C 80BA530C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 02870 80BA5310 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 02874 80BA5314 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02878 80BA5318 00A12021 */  addu    $a0, $a1, $at              
/* 0287C 80BA531C 0C02604B */  jal     Object_GetIndex
              ## ObjectIndex
/* 02880 80BA5320 24050179 */  addiu   $a1, $zero, 0x0179         ## $a1 = 00000179
/* 02884 80BA5324 04410009 */  bgez    $v0, .L80BA534C            
/* 02888 80BA5328 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 0288C 80BA532C 3C0480BA */  lui     $a0, %hi(D_80BA5B7C)       ## $a0 = 80BA0000
/* 02890 80BA5330 3C0580BA */  lui     $a1, %hi(D_80BA5B80)       ## $a1 = 80BA0000
/* 02894 80BA5334 24A55B80 */  addiu   $a1, $a1, %lo(D_80BA5B80)  ## $a1 = 80BA5B80
/* 02898 80BA5338 24845B7C */  addiu   $a0, $a0, %lo(D_80BA5B7C)  ## $a0 = 80BA5B7C
/* 0289C 80BA533C 0C0007FC */  jal     __assert
              
/* 028A0 80BA5340 240605A9 */  addiu   $a2, $zero, 0x05A9         ## $a2 = 000005A9
/* 028A4 80BA5344 10000002 */  beq     $zero, $zero, .L80BA5350   
/* 028A8 80BA5348 00000000 */  nop
.L80BA534C:
/* 028AC 80BA534C A1C21658 */  sb      $v0, 0x1658($t6)           ## 00001658
.L80BA5350:
/* 028B0 80BA5350 3C0580BA */  lui     $a1, %hi(func_80BA5370)    ## $a1 = 80BA0000
/* 028B4 80BA5354 24A55370 */  addiu   $a1, $a1, %lo(func_80BA5370) ## $a1 = 80BA5370
/* 028B8 80BA5358 0C2E8AA8 */  jal     ObjectKankyo_SetupAction              
/* 028BC 80BA535C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 028C0 80BA5360 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 028C4 80BA5364 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 028C8 80BA5368 03E00008 */  jr      $ra                        
/* 028CC 80BA536C 00000000 */  nop
