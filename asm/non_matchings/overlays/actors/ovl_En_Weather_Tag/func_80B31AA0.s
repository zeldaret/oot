glabel func_80B31AA0
/* 00A80 80B31AA0 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A84 80B31AA4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A88 80B31AA8 240E0004 */  addiu   $t6, $zero, 0x0004         ## $t6 = 00000004
/* 00A8C 80B31AAC 240F0064 */  addiu   $t7, $zero, 0x0064         ## $t7 = 00000064
/* 00A90 80B31AB0 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A94 80B31AB4 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00A98 80B31AB8 AFAF0018 */  sw      $t7, 0x0018($sp)           
/* 00A9C 80B31ABC AFAE0010 */  sw      $t6, 0x0010($sp)           
/* 00AA0 80B31AC0 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00AA4 80B31AC4 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00AA8 80B31AC8 0C2CC527 */  jal     func_80B3149C              
/* 00AAC 80B31ACC 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AB0 80B31AD0 50400011 */  beql    $v0, $zero, .L80B31B18     
/* 00AB4 80B31AD4 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00AB8 80B31AD8 0C01DDA1 */  jal     func_80077684              
/* 00ABC 80B31ADC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00AC0 80B31AE0 8FB9002C */  lw      $t9, 0x002C($sp)           
/* 00AC4 80B31AE4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00AC8 80B31AE8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 00ACC 80B31AEC 00390821 */  addu    $at, $at, $t9              
/* 00AD0 80B31AF0 A0380B03 */  sb      $t8, 0x0B03($at)           ## 00010B03
/* 00AD4 80B31AF4 8FA8002C */  lw      $t0, 0x002C($sp)           
/* 00AD8 80B31AF8 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00ADC 80B31AFC 3C0580B3 */  lui     $a1, %hi(func_80B31A10)    ## $a1 = 80B30000
/* 00AE0 80B31B00 00280821 */  addu    $at, $at, $t0              
/* 00AE4 80B31B04 A0200B12 */  sb      $zero, 0x0B12($at)         ## 00010B12
/* 00AE8 80B31B08 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 00AEC 80B31B0C 0C2CC408 */  jal     func_80B31020              
/* 00AF0 80B31B10 24A51A10 */  addiu   $a1, $a1, %lo(func_80B31A10) ## $a1 = 80B31A10
/* 00AF4 80B31B14 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B31B18:
/* 00AF8 80B31B18 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AFC 80B31B1C 03E00008 */  jr      $ra                        
/* 00B00 80B31B20 00000000 */  nop


