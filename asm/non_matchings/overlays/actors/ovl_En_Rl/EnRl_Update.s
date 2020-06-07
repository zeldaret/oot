.rdata
glabel D_80AE8240
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel EnRl_Update
/* 00C5C 80AE7F0C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00C60 80AE7F10 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00C64 80AE7F14 8C820194 */  lw      $v0, 0x0194($a0)           ## 00000194
/* 00C68 80AE7F18 04400008 */  bltz    $v0, .L80AE7F3C            
/* 00C6C 80AE7F1C 28410008 */  slti    $at, $v0, 0x0008           
/* 00C70 80AE7F20 10200006 */  beq     $at, $zero, .L80AE7F3C     
/* 00C74 80AE7F24 00027080 */  sll     $t6, $v0,  2               
/* 00C78 80AE7F28 3C0380AF */  lui     $v1, %hi(D_80AE81B0)       ## $v1 = 80AF0000
/* 00C7C 80AE7F2C 006E1821 */  addu    $v1, $v1, $t6              
/* 00C80 80AE7F30 8C6381B0 */  lw      $v1, %lo(D_80AE81B0)($v1)  
/* 00C84 80AE7F34 14600006 */  bne     $v1, $zero, .L80AE7F50     
/* 00C88 80AE7F38 00000000 */  nop
.L80AE7F3C:
/* 00C8C 80AE7F3C 3C0480AF */  lui     $a0, %hi(D_80AE8240)       ## $a0 = 80AF0000
/* 00C90 80AE7F40 0C00084C */  jal     osSyncPrintf
              
/* 00C94 80AE7F44 24848240 */  addiu   $a0, $a0, %lo(D_80AE8240)  ## $a0 = 80AE8240
/* 00C98 80AE7F48 10000004 */  beq     $zero, $zero, .L80AE7F5C   
/* 00C9C 80AE7F4C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE7F50:
/* 00CA0 80AE7F50 0060F809 */  jalr    $ra, $v1                   
/* 00CA4 80AE7F54 00000000 */  nop
/* 00CA8 80AE7F58 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE7F5C:
/* 00CAC 80AE7F5C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00CB0 80AE7F60 03E00008 */  jr      $ra                        
/* 00CB4 80AE7F64 00000000 */  nop
