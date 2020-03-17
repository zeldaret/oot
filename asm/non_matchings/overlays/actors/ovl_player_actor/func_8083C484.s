glabel func_8083C484
/* 0A274 8083C484 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0A278 8083C488 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0A27C 8083C48C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0A280 8083C490 84CF0000 */  lh      $t7, 0x0000($a2)           ## 00000000
/* 0A284 8083C494 848E083C */  lh      $t6, 0x083C($a0)           ## 0000083C
/* 0A288 8083C498 01CF1023 */  subu    $v0, $t6, $t7              
/* 0A28C 8083C49C 00021400 */  sll     $v0, $v0, 16               
/* 0A290 8083C4A0 00021403 */  sra     $v0, $v0, 16               
/* 0A294 8083C4A4 04400003 */  bltz    $v0, .L8083C4B4            
/* 0A298 8083C4A8 00021823 */  subu    $v1, $zero, $v0            
/* 0A29C 8083C4AC 10000001 */  beq     $zero, $zero, .L8083C4B4   
/* 0A2A0 8083C4B0 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
.L8083C4B4:
/* 0A2A4 8083C4B4 28616001 */  slti    $at, $v1, 0x6001           
/* 0A2A8 8083C4B8 54200010 */  bnel    $at, $zero, .L8083C4FC     
/* 0A2AC 8083C4BC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 0A2B0 8083C4C0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0A2B4 8083C4C4 0C20DC87 */  jal     func_8083721C              
/* 0A2B8 8083C4C8 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 0A2BC 8083C4CC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0A2C0 8083C4D0 10400007 */  beq     $v0, $zero, .L8083C4F0     
/* 0A2C4 8083C4D4 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 0A2C8 8083C4D8 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 0A2CC 8083C4DC 8FB8001C */  lw      $t8, 0x001C($sp)           
/* 0A2D0 8083C4E0 E7040000 */  swc1    $f4, 0x0000($t8)           ## 00000000
/* 0A2D4 8083C4E4 8499083C */  lh      $t9, 0x083C($a0)           ## 0000083C
/* 0A2D8 8083C4E8 10000003 */  beq     $zero, $zero, .L8083C4F8   
/* 0A2DC 8083C4EC A4D90000 */  sh      $t9, 0x0000($a2)           ## 00000000
.L8083C4F0:
/* 0A2E0 8083C4F0 10000002 */  beq     $zero, $zero, .L8083C4FC   
/* 0A2E4 8083C4F4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L8083C4F8:
/* 0A2E8 8083C4F8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8083C4FC:
/* 0A2EC 8083C4FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0A2F0 8083C500 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0A2F4 8083C504 03E00008 */  jr      $ra                        
/* 0A2F8 8083C508 00000000 */  nop


