.rdata
glabel D_80A78978
    .asciz "[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel EnIk_Draw
/* 03D64 80A78074 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 03D68 80A78078 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 03D6C 80A7807C 8C8204CC */  lw      $v0, 0x04CC($a0)           ## 000004CC
/* 03D70 80A78080 04400008 */  bltz    $v0, .L80A780A4            
/* 03D74 80A78084 28410003 */  slti    $at, $v0, 0x0003           
/* 03D78 80A78088 10200006 */  beq     $at, $zero, .L80A780A4     
/* 03D7C 80A7808C 00027080 */  sll     $t6, $v0,  2               
/* 03D80 80A78090 3C0380A8 */  lui     $v1, %hi(D_80A7861C)       ## $v1 = 80A80000
/* 03D84 80A78094 006E1821 */  addu    $v1, $v1, $t6              
/* 03D88 80A78098 8C63861C */  lw      $v1, %lo(D_80A7861C)($v1)  
/* 03D8C 80A7809C 14600006 */  bne     $v1, $zero, .L80A780B8     
/* 03D90 80A780A0 00000000 */  nop
.L80A780A4:
/* 03D94 80A780A4 3C0480A8 */  lui     $a0, %hi(D_80A78978)       ## $a0 = 80A80000
/* 03D98 80A780A8 0C00084C */  jal     osSyncPrintf
              
/* 03D9C 80A780AC 24848978 */  addiu   $a0, $a0, %lo(D_80A78978)  ## $a0 = 80A78978
/* 03DA0 80A780B0 10000004 */  beq     $zero, $zero, .L80A780C4   
/* 03DA4 80A780B4 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A780B8:
/* 03DA8 80A780B8 0060F809 */  jalr    $ra, $v1                   
/* 03DAC 80A780BC 00000000 */  nop
/* 03DB0 80A780C0 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A780C4:
/* 03DB4 80A780C4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03DB8 80A780C8 03E00008 */  jr      $ra                        
/* 03DBC 80A780CC 00000000 */  nop
