.rdata
glabel D_809829C0
    .asciz "\x1b[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n\x1b[m"
    .balign 4

.balign 4

.text
glabel DemoGt_Update
/* 04DA8 80982418 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 04DAC 8098241C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 04DB0 80982420 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 04DB4 80982424 04400008 */  bltz    $v0, .L80982448            
/* 04DB8 80982428 28410013 */  slti    $at, $v0, 0x0013           
/* 04DBC 8098242C 10200006 */  beq     $at, $zero, .L80982448     
/* 04DC0 80982430 00027080 */  sll     $t6, $v0,  2               
/* 04DC4 80982434 3C038098 */  lui     $v1, %hi(D_809826E8)       ## $v1 = 80980000
/* 04DC8 80982438 006E1821 */  addu    $v1, $v1, $t6              
/* 04DCC 8098243C 8C6326E8 */  lw      $v1, %lo(D_809826E8)($v1)  
/* 04DD0 80982440 14600006 */  bne     $v1, $zero, .L8098245C     
/* 04DD4 80982444 00000000 */  nop
.L80982448:
/* 04DD8 80982448 3C048098 */  lui     $a0, %hi(D_809829C0)       ## $a0 = 80980000
/* 04DDC 8098244C 0C00084C */  jal     osSyncPrintf
              
/* 04DE0 80982450 248429C0 */  addiu   $a0, $a0, %lo(D_809829C0)  ## $a0 = 809829C0
/* 04DE4 80982454 10000004 */  beq     $zero, $zero, .L80982468   
/* 04DE8 80982458 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8098245C:
/* 04DEC 8098245C 0060F809 */  jalr    $ra, $v1                   
/* 04DF0 80982460 00000000 */  nop
/* 04DF4 80982464 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80982468:
/* 04DF8 80982468 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 04DFC 8098246C 03E00008 */  jr      $ra                        
/* 04E00 80982470 00000000 */  nop


