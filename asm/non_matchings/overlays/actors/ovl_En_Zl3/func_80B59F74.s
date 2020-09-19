.rdata
glabel D_80B5AA0C
    .asciz "\x1b[31m描画前処理モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel func_80B59F74
/* 06BC4 80B59F74 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 06BC8 80B59F78 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 06BCC 80B59F7C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 06BD0 80B59F80 8DC20308 */  lw      $v0, 0x0308($t6)           ## 00000308
/* 06BD4 80B59F84 04400009 */  bltz    $v0, .L80B59FAC            
/* 06BD8 80B59F88 28410002 */  slti    $at, $v0, 0x0002           
/* 06BDC 80B59F8C 10200007 */  beq     $at, $zero, .L80B59FAC     
/* 06BE0 80B59F90 00027880 */  sll     $t7, $v0,  2               
/* 06BE4 80B59F94 3C0380B6 */  lui     $v1, %hi(D_80B5A560)       ## $v1 = 80B60000
/* 06BE8 80B59F98 006F1821 */  addu    $v1, $v1, $t7              
/* 06BEC 80B59F9C 8C63A560 */  lw      $v1, %lo(D_80B5A560)($v1)  
/* 06BF0 80B59FA0 8FB80038 */  lw      $t8, 0x0038($sp)           
/* 06BF4 80B59FA4 54600007 */  bnel    $v1, $zero, .L80B59FC4     
/* 06BF8 80B59FA8 8FB9003C */  lw      $t9, 0x003C($sp)           
.L80B59FAC:
/* 06BFC 80B59FAC 3C0480B6 */  lui     $a0, %hi(D_80B5AA0C)       ## $a0 = 80B60000
/* 06C00 80B59FB0 0C00084C */  jal     osSyncPrintf
              
/* 06C04 80B59FB4 2484AA0C */  addiu   $a0, $a0, %lo(D_80B5AA0C)  ## $a0 = 80B5AA0C
/* 06C08 80B59FB8 10000007 */  beq     $zero, $zero, .L80B59FD8   
/* 06C0C 80B59FBC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 06C10 80B59FC0 8FB9003C */  lw      $t9, 0x003C($sp)           
.L80B59FC4:
/* 06C14 80B59FC4 8FA80040 */  lw      $t0, 0x0040($sp)           
/* 06C18 80B59FC8 AFB80010 */  sw      $t8, 0x0010($sp)           
/* 06C1C 80B59FCC AFB90014 */  sw      $t9, 0x0014($sp)           
/* 06C20 80B59FD0 0060F809 */  jalr    $ra, $v1                   
/* 06C24 80B59FD4 AFA80018 */  sw      $t0, 0x0018($sp)           
.L80B59FD8:
/* 06C28 80B59FD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 06C2C 80B59FDC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 06C30 80B59FE0 03E00008 */  jr      $ra                        
/* 06C34 80B59FE4 00000000 */  nop
