glabel func_80B5053C
/* 01BAC 80B5053C 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 01BB0 80B50540 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 01BB4 80B50544 10A0000A */  beq     $a1, $zero, .L80B50570     
/* 01BB8 80B50548 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 01BBC 80B5054C 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 01BC0 80B50550 24A53538 */  addiu   $a1, $a1, 0x3538           ## $a1 = 06003538
/* 01BC4 80B50554 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 01BC8 80B50558 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 01BCC 80B5055C 0C2D3F40 */  jal     func_80B4FD00              
/* 01BD0 80B50560 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 01BD4 80B50564 8FAF0020 */  lw      $t7, 0x0020($sp)           
/* 01BD8 80B50568 240E0008 */  addiu   $t6, $zero, 0x0008         ## $t6 = 00000008
/* 01BDC 80B5056C ADEE019C */  sw      $t6, 0x019C($t7)           ## 0000019C
.L80B50570:
/* 01BE0 80B50570 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 01BE4 80B50574 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 01BE8 80B50578 03E00008 */  jr      $ra                        
/* 01BEC 80B5057C 00000000 */  nop
