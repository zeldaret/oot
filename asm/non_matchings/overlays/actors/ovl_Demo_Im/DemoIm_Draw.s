.rdata
glabel D_809889A0
    .asciz "\x1b[31m描画モードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.text
glabel DemoIm_Draw
/* 02BEC 809877CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 02BF0 809877D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 02BF4 809877D4 8C820264 */  lw      $v0, 0x0264($a0)           ## 00000264
/* 02BF8 809877D8 04400008 */  bltz    $v0, .L809877FC            
/* 02BFC 809877DC 28410003 */  slti    $at, $v0, 0x0003           
/* 02C00 809877E0 10200006 */  beq     $at, $zero, .L809877FC     
/* 02C04 809877E4 00027080 */  sll     $t6, $v0,  2               
/* 02C08 809877E8 3C038099 */  lui     $v1, %hi(D_809887E4)       ## $v1 = 80990000
/* 02C0C 809877EC 006E1821 */  addu    $v1, $v1, $t6              
/* 02C10 809877F0 8C6387E4 */  lw      $v1, %lo(D_809887E4)($v1)  
/* 02C14 809877F4 14600006 */  bne     $v1, $zero, .L80987810     
/* 02C18 809877F8 00000000 */  nop
.L809877FC:
/* 02C1C 809877FC 3C048099 */  lui     $a0, %hi(D_809889A0)       ## $a0 = 80990000
/* 02C20 80987800 0C00084C */  jal     osSyncPrintf
              
/* 02C24 80987804 248489A0 */  addiu   $a0, $a0, %lo(D_809889A0)  ## $a0 = 809889A0
/* 02C28 80987808 10000004 */  beq     $zero, $zero, .L8098781C   
/* 02C2C 8098780C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80987810:
/* 02C30 80987810 0060F809 */  jalr    $ra, $v1                   
/* 02C34 80987814 00000000 */  nop
/* 02C38 80987818 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098781C:
/* 02C3C 8098781C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 02C40 80987820 03E00008 */  jr      $ra                        
/* 02C44 80987824 00000000 */  nop
/* 02C48 80987828 00000000 */  nop
/* 02C4C 8098782C 00000000 */  nop
