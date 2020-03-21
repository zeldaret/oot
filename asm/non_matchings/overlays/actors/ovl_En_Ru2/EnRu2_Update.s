.rdata

glabel D_80AF51E8
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text

glabel EnRu2_Update
/* 01870 80AF3DC0 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01874 80AF3DC4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01878 80AF3DC8 8C8202A8 */  lw      $v0, 0x02A8($a0)           ## 000002A8
/* 0187C 80AF3DCC 04400008 */  bltz    $v0, .L80AF3DF0            
/* 01880 80AF3DD0 28410014 */  slti    $at, $v0, 0x0014           
/* 01884 80AF3DD4 10200006 */  beq     $at, $zero, .L80AF3DF0     
/* 01888 80AF3DD8 00027080 */  sll     $t6, $v0,  2               
/* 0188C 80AF3DDC 3C0380AF */  lui     $v1, %hi(D_80AF50BC)       ## $v1 = 80AF0000
/* 01890 80AF3DE0 006E1821 */  addu    $v1, $v1, $t6              
/* 01894 80AF3DE4 8C6350BC */  lw      $v1, %lo(D_80AF50BC)($v1)  
/* 01898 80AF3DE8 14600006 */  bne     $v1, $zero, .L80AF3E04     
/* 0189C 80AF3DEC 00000000 */  nop
.L80AF3DF0:
/* 018A0 80AF3DF0 3C0480AF */  lui     $a0, %hi(D_80AF51E8)       ## $a0 = 80AF0000
/* 018A4 80AF3DF4 0C00084C */  jal     osSyncPrintf
              
/* 018A8 80AF3DF8 248451E8 */  addiu   $a0, $a0, %lo(D_80AF51E8)  ## $a0 = 80AF51E8
/* 018AC 80AF3DFC 10000004 */  beq     $zero, $zero, .L80AF3E10   
/* 018B0 80AF3E00 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF3E04:
/* 018B4 80AF3E04 0060F809 */  jalr    $ra, $v1                   
/* 018B8 80AF3E08 00000000 */  nop
/* 018BC 80AF3E0C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80AF3E10:
/* 018C0 80AF3E10 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 018C4 80AF3E14 03E00008 */  jr      $ra                        
/* 018C8 80AF3E18 00000000 */  nop


