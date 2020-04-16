glabel func_80AD7A88
/* 00348 80AD7A88 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0034C 80AD7A8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00350 80AD7A90 84820198 */  lh      $v0, 0x0198($a0)           ## 00000198
/* 00354 80AD7A94 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00358 80AD7A98 3C0F80AE */  lui     $t7, %hi(D_80AD8C32)       ## $t7 = 80AE0000
/* 0035C 80AD7A9C 2841001C */  slti    $at, $v0, 0x001C           
/* 00360 80AD7AA0 14200003 */  bne     $at, $zero, .L80AD7AB0     
/* 00364 80AD7AA4 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 00368 80AD7AA8 10000001 */  beq     $zero, $zero, .L80AD7AB0   
/* 0036C 80AD7AAC 2403001B */  addiu   $v1, $zero, 0x001B         ## $v1 = 0000001B
.L80AD7AB0:
/* 00370 80AD7AB0 00037080 */  sll     $t6, $v1,  2               
/* 00374 80AD7AB4 01C37023 */  subu    $t6, $t6, $v1              
/* 00378 80AD7AB8 000E7040 */  sll     $t6, $t6,  1               
/* 0037C 80AD7ABC 01EE7821 */  addu    $t7, $t7, $t6              
/* 00380 80AD7AC0 85EF8C32 */  lh      $t7, %lo(D_80AD8C32)($t7)  
/* 00384 80AD7AC4 3C014234 */  lui     $at, 0x4234                ## $at = 42340000
/* 00388 80AD7AC8 44814000 */  mtc1    $at, $f8                   ## $f8 = 45.00
/* 0038C 80AD7ACC 448F2000 */  mtc1    $t7, $f4                   ## $f4 = -0.00
/* 00390 80AD7AD0 24E4000C */  addiu   $a0, $a3, 0x000C           ## $a0 = 0000000C
/* 00394 80AD7AD4 3C064000 */  lui     $a2, 0x4000                ## $a2 = 40000000
/* 00398 80AD7AD8 468021A0 */  cvt.s.w $f6, $f4                   
/* 0039C 80AD7ADC AFA70018 */  sw      $a3, 0x0018($sp)           
/* 003A0 80AD7AE0 46083280 */  add.s   $f10, $f6, $f8             
/* 003A4 80AD7AE4 44055000 */  mfc1    $a1, $f10                  
/* 003A8 80AD7AE8 0C01DE80 */  jal     Math_ApproxF
              
/* 003AC 80AD7AEC 00000000 */  nop
/* 003B0 80AD7AF0 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 003B4 80AD7AF4 90E40195 */  lbu     $a0, 0x0195($a3)           ## 00000195
/* 003B8 80AD7AF8 000422C0 */  sll     $a0, $a0, 11               
/* 003BC 80AD7AFC 00042400 */  sll     $a0, $a0, 16               
/* 003C0 80AD7B00 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 003C4 80AD7B04 00042403 */  sra     $a0, $a0, 16               
/* 003C8 80AD7B08 3C014100 */  lui     $at, 0x4100                ## $at = 41000000
/* 003CC 80AD7B0C 44818000 */  mtc1    $at, $f16                  ## $f16 = 8.00
/* 003D0 80AD7B10 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 003D4 80AD7B14 46100482 */  mul.s   $f18, $f0, $f16            
/* 003D8 80AD7B18 C4E4000C */  lwc1    $f4, 0x000C($a3)           ## 0000000C
/* 003DC 80AD7B1C 46049180 */  add.s   $f6, $f18, $f4             
/* 003E0 80AD7B20 E4E60028 */  swc1    $f6, 0x0028($a3)           ## 00000028
/* 003E4 80AD7B24 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 003E8 80AD7B28 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 003EC 80AD7B2C 03E00008 */  jr      $ra                        
/* 003F0 80AD7B30 00000000 */  nop
