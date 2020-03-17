glabel func_80A890C0
/* 002B0 80A890C0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 002B4 80A890C4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 002B8 80A890C8 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 002BC 80A890CC 0C00BC65 */  jal     func_8002F194              
/* 002C0 80A890D0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 002C4 80A890D4 10400006 */  beq     $v0, $zero, .L80A890F0     
/* 002C8 80A890D8 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 002CC 80A890DC 3C0580A9 */  lui     $a1, %hi(func_80A89078)    ## $a1 = 80A90000
/* 002D0 80A890E0 0C2A2384 */  jal     func_80A88E10              
/* 002D4 80A890E4 24A59078 */  addiu   $a1, $a1, %lo(func_80A89078) ## $a1 = 80A89078
/* 002D8 80A890E8 10000005 */  beq     $zero, $zero, .L80A89100   
/* 002DC 80A890EC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A890F0:
/* 002E0 80A890F0 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 002E4 80A890F4 0C00BCB3 */  jal     func_8002F2CC              
/* 002E8 80A890F8 3C06447A */  lui     $a2, 0x447A                ## $a2 = 447A0000
/* 002EC 80A890FC 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80A89100:
/* 002F0 80A89100 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 002F4 80A89104 03E00008 */  jr      $ra                        
/* 002F8 80A89108 00000000 */  nop


