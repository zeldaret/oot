glabel ObjBean_Draw
/* 02310 80B90D90 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02314 80B90D94 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02318 80B90D98 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0231C 80B90D9C 908201F7 */  lbu     $v0, 0x01F7($a0)           ## 000001F7
/* 02320 80B90DA0 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 02324 80B90DA4 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 02328 80B90DA8 304E0002 */  andi    $t6, $v0, 0x0002           ## $t6 = 00000000
/* 0232C 80B90DAC 11C00006 */  beq     $t6, $zero, .L80B90DC8     
/* 02330 80B90DB0 3C050600 */  lui     $a1, %hi(D_06000090)                ## $a1 = 06000000
/* 02334 80B90DB4 24A50090 */  addiu   $a1, $a1, %lo(D_06000090)           ## $a1 = 06000090
/* 02338 80B90DB8 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 0233C 80B90DBC AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02340 80B90DC0 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02344 80B90DC4 90C201F7 */  lbu     $v0, 0x01F7($a2)           ## 000001F7
.L80B90DC8:
/* 02348 80B90DC8 304F0004 */  andi    $t7, $v0, 0x0004           ## $t7 = 00000000
/* 0234C 80B90DCC 11E00007 */  beq     $t7, $zero, .L80B90DEC     
/* 02350 80B90DD0 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 02354 80B90DD4 3C050600 */  lui     $a1, %hi(D_060003F0)                ## $a1 = 06000000
/* 02358 80B90DD8 24A503F0 */  addiu   $a1, $a1, %lo(D_060003F0)           ## $a1 = 060003F0
/* 0235C 80B90DDC 0C00D498 */  jal     Gfx_DrawDListOpa
              
/* 02360 80B90DE0 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02364 80B90DE4 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02368 80B90DE8 90C201F7 */  lbu     $v0, 0x01F7($a2)           ## 000001F7
.L80B90DEC:
/* 0236C 80B90DEC 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 02370 80B90DF0 13000006 */  beq     $t8, $zero, .L80B90E0C     
/* 02374 80B90DF4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02378 80B90DF8 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0237C 80B90DFC 0C2E431F */  jal     ObjBean_DrawSoftSoilSpot              
/* 02380 80B90E00 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 02384 80B90E04 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 02388 80B90E08 90C201F7 */  lbu     $v0, 0x01F7($a2)           ## 000001F7
.L80B90E0C:
/* 0238C 80B90E0C 30590008 */  andi    $t9, $v0, 0x0008           ## $t9 = 00000000
/* 02390 80B90E10 13200003 */  beq     $t9, $zero, .L80B90E20     
/* 02394 80B90E14 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 02398 80B90E18 0C2E4341 */  jal     ObjBean_DrawBeanstalk              
/* 0239C 80B90E1C 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80B90E20:
/* 023A0 80B90E20 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 023A4 80B90E24 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 023A8 80B90E28 03E00008 */  jr      $ra                        
/* 023AC 80B90E2C 00000000 */  nop
