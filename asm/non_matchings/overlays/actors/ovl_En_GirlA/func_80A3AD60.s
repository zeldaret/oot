glabel func_80A3AD60
/* 00610 80A3AD60 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00614 80A3AD64 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00618 80A3AD68 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0061C 80A3AD6C 0C021AAF */  jal     Inventory_HasEmptyBottle              
/* 00620 80A3AD70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00624 80A3AD74 14400003 */  bne     $v0, $zero, .L80A3AD84     
/* 00628 80A3AD78 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 0062C 80A3AD7C 10000011 */  beq     $zero, $zero, .L80A3ADC4   
/* 00630 80A3AD80 24020003 */  addiu   $v0, $zero, 0x0003         ## $v0 = 00000003
.L80A3AD84:
/* 00634 80A3AD84 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 00638 80A3AD88 85CEE694 */  lh      $t6, -0x196C($t6)          ## 8015E694
/* 0063C 80A3AD8C 85F801C8 */  lh      $t8, 0x01C8($t7)           ## 000001C8
/* 00640 80A3AD90 01D8082A */  slt     $at, $t6, $t8              
/* 00644 80A3AD94 10200003 */  beq     $at, $zero, .L80A3ADA4     
/* 00648 80A3AD98 00000000 */  nop
/* 0064C 80A3AD9C 10000009 */  beq     $zero, $zero, .L80A3ADC4   
/* 00650 80A3ADA0 24020004 */  addiu   $v0, $zero, 0x0004         ## $v0 = 00000004
.L80A3ADA4:
/* 00654 80A3ADA4 0C0218E2 */  jal     Item_CheckObtainability              
/* 00658 80A3ADA8 24040019 */  addiu   $a0, $zero, 0x0019         ## $a0 = 00000019
/* 0065C 80A3ADAC 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 00660 80A3ADB0 54410004 */  bnel    $v0, $at, .L80A3ADC4       
/* 00664 80A3ADB4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 00668 80A3ADB8 10000002 */  beq     $zero, $zero, .L80A3ADC4   
/* 0066C 80A3ADBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00670 80A3ADC0 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80A3ADC4:
/* 00674 80A3ADC4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00678 80A3ADC8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0067C 80A3ADCC 03E00008 */  jr      $ra                        
/* 00680 80A3ADD0 00000000 */  nop


