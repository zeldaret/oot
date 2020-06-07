glabel func_80B51644
/* 02CB4 80B51644 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 02CB8 80B51648 10A00007 */  beq     $a1, $zero, .L80B51668     
/* 02CBC 80B5164C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 02CC0 80B51650 3C050601 */  lui     $a1, 0x0601                ## $a1 = 06010000
/* 02CC4 80B51654 24A587B8 */  addiu   $a1, $a1, 0x87B8           ## $a1 = 060087B8
/* 02CC8 80B51658 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 02CCC 80B5165C 3C07C100 */  lui     $a3, 0xC100                ## $a3 = C1000000
/* 02CD0 80B51660 0C2D3F40 */  jal     func_80B4FD00              
/* 02CD4 80B51664 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B51668:
/* 02CD8 80B51668 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 02CDC 80B5166C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 02CE0 80B51670 03E00008 */  jr      $ra                        
/* 02CE4 80B51674 00000000 */  nop
