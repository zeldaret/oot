glabel func_80A3BB6C
/* 0141C 80A3BB6C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01420 80A3BB70 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01424 80A3BB74 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01428 80A3BB78 84AE001C */  lh      $t6, 0x001C($a1)           ## 0000001C
/* 0142C 80A3BB7C 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 01430 80A3BB80 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 01434 80A3BB84 55C10019 */  bnel    $t6, $at, .L80A3BBEC       
/* 01438 80A3BB88 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 0143C 80A3BB8C 95EFF566 */  lhu     $t7, -0x0A9A($t7)          ## 8015F566
/* 01440 80A3BB90 3C0180A4 */  lui     $at, %hi(D_80A3D0EC)       ## $at = 80A40000
/* 01444 80A3BB94 31F80040 */  andi    $t8, $t7, 0x0040           ## $t8 = 00000000
/* 01448 80A3BB98 53000014 */  beql    $t8, $zero, .L80A3BBEC     
/* 0144C 80A3BB9C 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
/* 01450 80A3BBA0 C42CD0EC */  lwc1    $f12, %lo(D_80A3D0EC)($at) 
/* 01454 80A3BBA4 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 01458 80A3BBA8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 0145C 80A3BBAC 4600010D */  trunc.w.s $f4, $f0                   
/* 01460 80A3BBB0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01464 80A3BBB4 3C0B80A4 */  lui     $t3, %hi(D_80A3CCB4)       ## $t3 = 80A40000
/* 01468 80A3BBB8 44092000 */  mfc1    $t1, $f4                   
/* 0146C 80A3BBBC 84B901C8 */  lh      $t9, 0x01C8($a1)           ## 000001C8
/* 01470 80A3BBC0 00095040 */  sll     $t2, $t1,  1               
/* 01474 80A3BBC4 016A5821 */  addu    $t3, $t3, $t2              
/* 01478 80A3BBC8 856BCCB4 */  lh      $t3, %lo(D_80A3CCB4)($t3)  
/* 0147C 80A3BBCC 032B2023 */  subu    $a0, $t9, $t3              
/* 01480 80A3BBD0 00042023 */  subu    $a0, $zero, $a0            
/* 01484 80A3BBD4 00042400 */  sll     $a0, $a0, 16               
/* 01488 80A3BBD8 0C021CC3 */  jal     Rupees_ChangeBy              
/* 0148C 80A3BBDC 00042403 */  sra     $a0, $a0, 16               
/* 01490 80A3BBE0 10000007 */  beq     $zero, $zero, .L80A3BC00   
/* 01494 80A3BBE4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01498 80A3BBE8 84A401C8 */  lh      $a0, 0x01C8($a1)           ## 000001C8
.L80A3BBEC:
/* 0149C 80A3BBEC 00042023 */  subu    $a0, $zero, $a0            
/* 014A0 80A3BBF0 00042400 */  sll     $a0, $a0, 16               
/* 014A4 80A3BBF4 0C021CC3 */  jal     Rupees_ChangeBy              
/* 014A8 80A3BBF8 00042403 */  sra     $a0, $a0, 16               
/* 014AC 80A3BBFC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A3BC00:
/* 014B0 80A3BC00 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 014B4 80A3BC04 03E00008 */  jr      $ra                        
/* 014B8 80A3BC08 00000000 */  nop


