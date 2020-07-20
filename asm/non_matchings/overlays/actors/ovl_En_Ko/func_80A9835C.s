.late_rodata
glabel jtbl_80A9A8BC
    .word L80A9838C
    .word L80A9839C
    .word L80A983AC
    .word L80A983BC
    .word L80A983CC
    .word L80A983DC
    .word L80A983EC
    .word L80A983FC
    .word L80A9840C
    .word L80A9841C
    .word L80A9842C
    .word L80A9843C
    .word L80A9844C

.text
glabel func_80A9835C
/* 015AC 80A9835C 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 015B0 80A98360 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 015B4 80A98364 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 015B8 80A98368 31CF00FF */  andi    $t7, $t6, 0x00FF           ## $t7 = 00000000
/* 015BC 80A9836C 2DE1000D */  sltiu   $at, $t7, 0x000D           
/* 015C0 80A98370 10200038 */  beq     $at, $zero, .L80A98454     
/* 015C4 80A98374 000F7880 */  sll     $t7, $t7,  2               
/* 015C8 80A98378 3C0180AA */  lui     $at, %hi(jtbl_80A9A8BC)       ## $at = 80AA0000
/* 015CC 80A9837C 002F0821 */  addu    $at, $at, $t7              
/* 015D0 80A98380 8C2FA8BC */  lw      $t7, %lo(jtbl_80A9A8BC)($at)  
/* 015D4 80A98384 01E00008 */  jr      $t7                        
/* 015D8 80A98388 00000000 */  nop
glabel L80A9838C
/* 015DC 80A9838C 0C2A6049 */  jal     func_80A98124              
/* 015E0 80A98390 00000000 */  nop
/* 015E4 80A98394 10000030 */  beq     $zero, $zero, .L80A98458   
/* 015E8 80A98398 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9839C
/* 015EC 80A9839C 0C2A6049 */  jal     func_80A98124              
/* 015F0 80A983A0 00000000 */  nop
/* 015F4 80A983A4 1000002C */  beq     $zero, $zero, .L80A98458   
/* 015F8 80A983A8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983AC
/* 015FC 80A983AC 0C2A600D */  jal     func_80A98034              
/* 01600 80A983B0 00000000 */  nop
/* 01604 80A983B4 10000028 */  beq     $zero, $zero, .L80A98458   
/* 01608 80A983B8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983BC
/* 0160C 80A983BC 0C2A5FAC */  jal     func_80A97EB0              
/* 01610 80A983C0 00000000 */  nop
/* 01614 80A983C4 10000024 */  beq     $zero, $zero, .L80A98458   
/* 01618 80A983C8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983CC
/* 0161C 80A983CC 0C2A5FDC */  jal     func_80A97F70              
/* 01620 80A983D0 00000000 */  nop
/* 01624 80A983D4 10000020 */  beq     $zero, $zero, .L80A98458   
/* 01628 80A983D8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983DC
/* 0162C 80A983DC 0C2A5FAC */  jal     func_80A97EB0              
/* 01630 80A983E0 00000000 */  nop
/* 01634 80A983E4 1000001C */  beq     $zero, $zero, .L80A98458   
/* 01638 80A983E8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983EC
/* 0163C 80A983EC 0C2A5FC8 */  jal     func_80A97F20              
/* 01640 80A983F0 00000000 */  nop
/* 01644 80A983F4 10000018 */  beq     $zero, $zero, .L80A98458   
/* 01648 80A983F8 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A983FC
/* 0164C 80A983FC 0C2A5FAC */  jal     func_80A97EB0              
/* 01650 80A98400 00000000 */  nop
/* 01654 80A98404 10000014 */  beq     $zero, $zero, .L80A98458   
/* 01658 80A98408 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9840C
/* 0165C 80A9840C 0C2A5FAC */  jal     func_80A97EB0              
/* 01660 80A98410 00000000 */  nop
/* 01664 80A98414 10000010 */  beq     $zero, $zero, .L80A98458   
/* 01668 80A98418 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9841C
/* 0166C 80A9841C 0C2A5FAC */  jal     func_80A97EB0              
/* 01670 80A98420 00000000 */  nop
/* 01674 80A98424 1000000C */  beq     $zero, $zero, .L80A98458   
/* 01678 80A98428 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9842C
/* 0167C 80A9842C 0C2A5F86 */  jal     func_80A97E18              
/* 01680 80A98430 00000000 */  nop
/* 01684 80A98434 10000008 */  beq     $zero, $zero, .L80A98458   
/* 01688 80A98438 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9843C
/* 0168C 80A9843C 0C2A5FAC */  jal     func_80A97EB0              
/* 01690 80A98440 00000000 */  nop
/* 01694 80A98444 10000004 */  beq     $zero, $zero, .L80A98458   
/* 01698 80A98448 8FBF0014 */  lw      $ra, 0x0014($sp)           
glabel L80A9844C
/* 0169C 80A9844C 0C2A5F86 */  jal     func_80A97E18              
/* 016A0 80A98450 00000000 */  nop
.L80A98454:
/* 016A4 80A98454 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A98458:
/* 016A8 80A98458 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 016AC 80A9845C 03E00008 */  jr      $ra                        
/* 016B0 80A98460 00000000 */  nop
