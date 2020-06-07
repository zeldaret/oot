glabel func_80892BE8
/* 00088 80892BE8 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 0008C 80892BEC AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00090 80892BF0 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00094 80892BF4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00098 80892BF8 8FA50020 */  lw      $a1, 0x0020($sp)           
/* 0009C 80892BFC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 000A0 80892C00 24A50164 */  addiu   $a1, $a1, 0x0164           ## $a1 = 00000164
/* 000A4 80892C04 0C0170D9 */  jal     Collider_InitCylinder
              
/* 000A8 80892C08 AFA50018 */  sw      $a1, 0x0018($sp)           
/* 000AC 80892C0C 3C078089 */  lui     $a3, %hi(D_80893104)       ## $a3 = 80890000
/* 000B0 80892C10 8FA50018 */  lw      $a1, 0x0018($sp)           
/* 000B4 80892C14 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 000B8 80892C18 24E73104 */  addiu   $a3, $a3, %lo(D_80893104)  ## $a3 = 80893104
/* 000BC 80892C1C 0C01712B */  jal     Collider_SetCylinder
              
/* 000C0 80892C20 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 000C4 80892C24 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 000C8 80892C28 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 000CC 80892C2C A1EE00AE */  sb      $t6, 0x00AE($t7)           ## 000000AE
/* 000D0 80892C30 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 000D4 80892C34 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 000D8 80892C38 03E00008 */  jr      $ra                        
/* 000DC 80892C3C 00000000 */  nop
