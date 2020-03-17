glabel func_80A7F31C
/* 00EBC 80A7F31C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00EC0 80A7F320 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00EC4 80A7F324 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00EC8 80A7F328 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00ECC 80A7F32C 0C00BD68 */  jal     func_8002F5A0              
/* 00ED0 80A7F330 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00ED4 80A7F334 10400027 */  beq     $v0, $zero, .L80A7F3D4     
/* 00ED8 80A7F338 8FAE002C */  lw      $t6, 0x002C($sp)           
/* 00EDC 80A7F33C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00EE0 80A7F340 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00EE4 80A7F344 01EE7821 */  addu    $t7, $t7, $t6              
/* 00EE8 80A7F348 81EF1CBC */  lb      $t7, 0x1CBC($t7)           ## 00011CBC
/* 00EEC 80A7F34C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00EF0 80A7F350 30580001 */  andi    $t8, $v0, 0x0001           ## $t8 = 00000000
/* 00EF4 80A7F354 17010008 */  bne     $t8, $at, .L80A7F378       
/* 00EF8 80A7F358 A20F0003 */  sb      $t7, 0x0003($s0)           ## 00000003
/* 00EFC 80A7F35C 0002CA83 */  sra     $t9, $v0, 10               
/* 00F00 80A7F360 00024983 */  sra     $t1, $v0,  6               
/* 00F04 80A7F364 312A0003 */  andi    $t2, $t1, 0x0003           ## $t2 = 00000000
/* 00F08 80A7F368 3328003C */  andi    $t0, $t9, 0x003C           ## $t0 = 00000000
/* 00F0C 80A7F36C 010A2825 */  or      $a1, $t0, $t2              ## $a1 = 00000000
/* 00F10 80A7F370 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00F14 80A7F374 8FA4002C */  lw      $a0, 0x002C($sp)           
.L80A7F378:
/* 00F18 80A7F378 0C29FCFA */  jal     func_80A7F3E8              
/* 00F1C 80A7F37C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F20 80A7F380 0C29FB58 */  jal     func_80A7ED60              
/* 00F24 80A7F384 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F28 80A7F388 860B001C */  lh      $t3, 0x001C($s0)           ## 0000001C
/* 00F2C 80A7F38C 3C0580A8 */  lui     $a1, %hi(D_80A7FA28)       ## $a1 = 80A80000
/* 00F30 80A7F390 2604005C */  addiu   $a0, $s0, 0x005C           ## $a0 = 0000005C
/* 00F34 80A7F394 316C0001 */  andi    $t4, $t3, 0x0001           ## $t4 = 00000000
/* 00F38 80A7F398 000C6880 */  sll     $t5, $t4,  2               
/* 00F3C 80A7F39C 00AD2821 */  addu    $a1, $a1, $t5              
/* 00F40 80A7F3A0 0C29FB65 */  jal     func_80A7ED94              
/* 00F44 80A7F3A4 8CA5FA28 */  lw      $a1, %lo(D_80A7FA28)($a1)  
/* 00F48 80A7F3A8 0C00B5FB */  jal     func_8002D7EC              
/* 00F4C 80A7F3AC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F50 80A7F3B0 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00F54 80A7F3B4 240E00C5 */  addiu   $t6, $zero, 0x00C5         ## $t6 = 000000C5
/* 00F58 80A7F3B8 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00F5C 80A7F3BC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00F60 80A7F3C0 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00F64 80A7F3C4 3C0640F0 */  lui     $a2, 0x40F0                ## $a2 = 40F00000
/* 00F68 80A7F3C8 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 00F6C 80A7F3CC 0C00B92D */  jal     func_8002E4B4              
/* 00F70 80A7F3D0 E7A40010 */  swc1    $f4, 0x0010($sp)           
.L80A7F3D4:
/* 00F74 80A7F3D4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00F78 80A7F3D8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00F7C 80A7F3DC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00F80 80A7F3E0 03E00008 */  jr      $ra                        
/* 00F84 80A7F3E4 00000000 */  nop


