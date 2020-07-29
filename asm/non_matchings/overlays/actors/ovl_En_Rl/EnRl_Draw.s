.rdata
glabel D_80AE829C
    .asciz "\x1b[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel EnRl_Draw
/* 00E90 80AE8140 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00E94 80AE8144 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00E98 80AE8148 8C820198 */  lw      $v0, 0x0198($a0)           ## 00000198
/* 00E9C 80AE814C 04400008 */  bltz    $v0, .L80AE8170            
/* 00EA0 80AE8150 28410003 */  slti    $at, $v0, 0x0003           
/* 00EA4 80AE8154 10200006 */  beq     $at, $zero, .L80AE8170     
/* 00EA8 80AE8158 00027080 */  sll     $t6, $v0,  2               
/* 00EAC 80AE815C 3C0380AF */  lui     $v1, %hi(D_80AE81D0)       ## $v1 = 80AF0000
/* 00EB0 80AE8160 006E1821 */  addu    $v1, $v1, $t6              
/* 00EB4 80AE8164 8C6381D0 */  lw      $v1, %lo(D_80AE81D0)($v1)  
/* 00EB8 80AE8168 14600006 */  bne     $v1, $zero, .L80AE8184     
/* 00EBC 80AE816C 00000000 */  nop
.L80AE8170:
/* 00EC0 80AE8170 3C0480AF */  lui     $a0, %hi(D_80AE829C)       ## $a0 = 80AF0000
/* 00EC4 80AE8174 0C00084C */  jal     osSyncPrintf
              
/* 00EC8 80AE8178 2484829C */  addiu   $a0, $a0, %lo(D_80AE829C)  ## $a0 = 80AE829C
/* 00ECC 80AE817C 10000004 */  beq     $zero, $zero, .L80AE8190   
/* 00ED0 80AE8180 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE8184:
/* 00ED4 80AE8184 0060F809 */  jalr    $ra, $v1                   
/* 00ED8 80AE8188 00000000 */  nop
/* 00EDC 80AE818C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AE8190:
/* 00EE0 80AE8190 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00EE4 80AE8194 03E00008 */  jr      $ra                        
/* 00EE8 80AE8198 00000000 */  nop
/* 00EEC 80AE819C 00000000 */  nop
