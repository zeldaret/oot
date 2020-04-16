glabel func_80A9C164
/* 011C4 80A9C164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 011C8 80A9C168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 011CC 80A9C16C 8C8E0004 */  lw      $t6, 0x0004($a0)           ## 00000004
/* 011D0 80A9C170 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 011D4 80A9C174 00A03825 */  or      $a3, $a1, $zero            ## $a3 = 00000000
/* 011D8 80A9C178 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 011DC 80A9C17C 11E00006 */  beq     $t7, $zero, .L80A9C198     
/* 011E0 80A9C180 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 011E4 80A9C184 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 011E8 80A9C188 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 011EC 80A9C18C 24A502E0 */  addiu   $a1, $a1, 0x02E0           ## $a1 = 060002E0
/* 011F0 80A9C190 1000000A */  beq     $zero, $zero, .L80A9C1BC   
/* 011F4 80A9C194 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C198:
/* 011F8 80A9C198 84D8001C */  lh      $t8, 0x001C($a2)           ## 0000001C
/* 011FC 80A9C19C 3C0580AA */  lui     $a1, %hi(D_80A9C294)       ## $a1 = 80AA0000
/* 01200 80A9C1A0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 01204 80A9C1A4 33190003 */  andi    $t9, $t8, 0x0003           ## $t9 = 00000000
/* 01208 80A9C1A8 00194080 */  sll     $t0, $t9,  2               
/* 0120C 80A9C1AC 00A82821 */  addu    $a1, $a1, $t0              
/* 01210 80A9C1B0 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 01214 80A9C1B4 8CA5C294 */  lw      $a1, %lo(D_80A9C294)($a1)  
/* 01218 80A9C1B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A9C1BC:
/* 0121C 80A9C1BC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01220 80A9C1C0 03E00008 */  jr      $ra                        
/* 01224 80A9C1C4 00000000 */  nop
/* 01228 80A9C1C8 00000000 */  nop
/* 0122C 80A9C1CC 00000000 */  nop
