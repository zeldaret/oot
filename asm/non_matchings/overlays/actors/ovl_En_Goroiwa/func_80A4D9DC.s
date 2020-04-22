glabel func_80A4D9DC
/* 01D3C 80A4D9DC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 01D40 80A4D9E0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01D44 80A4D9E4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01D48 80A4D9E8 3C0E80A5 */  lui     $t6, %hi(func_80A4DA3C)    ## $t6 = 80A50000
/* 01D4C 80A4D9EC 25CEDA3C */  addiu   $t6, $t6, %lo(func_80A4DA3C) ## $t6 = 80A4DA3C
/* 01D50 80A4D9F0 AC8E014C */  sw      $t6, 0x014C($a0)           ## 0000014C
/* 01D54 80A4D9F4 E4840068 */  swc1    $f4, 0x0068($a0)           ## 00000068
/* 01D58 80A4D9F8 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01D5C 80A4D9FC 0C292F5C */  jal     func_80A4BD70              
/* 01D60 80A4DA00 24050002 */  addiu   $a1, $zero, 0x0002         ## $a1 = 00000002
/* 01D64 80A4DA04 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01D68 80A4DA08 3C0880A5 */  lui     $t0, %hi(D_80A4DF28)       ## $t0 = 80A50000
/* 01D6C 80A4DA0C 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 01D70 80A4DA10 848F0018 */  lh      $t7, 0x0018($a0)           ## 00000018
/* 01D74 80A4DA14 31F80001 */  andi    $t8, $t7, 0x0001           ## $t8 = 00000000
/* 01D78 80A4DA18 0018C840 */  sll     $t9, $t8,  1               
/* 01D7C 80A4DA1C 01194021 */  addu    $t0, $t0, $t9              
/* 01D80 80A4DA20 8508DF28 */  lh      $t0, %lo(D_80A4DF28)($t0)  
/* 01D84 80A4DA24 E48601C0 */  swc1    $f6, 0x01C0($a0)           ## 000001C0
/* 01D88 80A4DA28 A48801C4 */  sh      $t0, 0x01C4($a0)           ## 000001C4
/* 01D8C 80A4DA2C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01D90 80A4DA30 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01D94 80A4DA34 03E00008 */  jr      $ra                        
/* 01D98 80A4DA38 00000000 */  nop
