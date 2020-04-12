.rdata
glabel D_8097C0E4
    .asciz "[31mメインモードがおかしい!!!!!!!!!!!!!!!!!!!!!!!!!\n[m"
    .balign 4

.text
glabel DemoGj_Update
/* 032CC 8097BBFC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 032D0 8097BC00 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 032D4 8097BC04 8C820164 */  lw      $v0, 0x0164($a0)           ## 00000164
/* 032D8 8097BC08 04400008 */  bltz    $v0, .L8097BC2C            
/* 032DC 8097BC0C 28410015 */  slti    $at, $v0, 0x0015           
/* 032E0 8097BC10 10200006 */  beq     $at, $zero, .L8097BC2C     
/* 032E4 8097BC14 00027080 */  sll     $t6, $v0,  2               
/* 032E8 8097BC18 3C038098 */  lui     $v1, %hi(D_8097BED0)       ## $v1 = 80980000
/* 032EC 8097BC1C 006E1821 */  addu    $v1, $v1, $t6              
/* 032F0 8097BC20 8C63BED0 */  lw      $v1, %lo(D_8097BED0)($v1)  
/* 032F4 8097BC24 14600006 */  bne     $v1, $zero, .L8097BC40     
/* 032F8 8097BC28 00000000 */  nop
.L8097BC2C:
/* 032FC 8097BC2C 3C048098 */  lui     $a0, %hi(D_8097C0E4)       ## $a0 = 80980000
/* 03300 8097BC30 0C00084C */  jal     osSyncPrintf
              
/* 03304 8097BC34 2484C0E4 */  addiu   $a0, $a0, %lo(D_8097C0E4)  ## $a0 = 8097C0E4
/* 03308 8097BC38 10000004 */  beq     $zero, $zero, .L8097BC4C   
/* 0330C 8097BC3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097BC40:
/* 03310 8097BC40 0060F809 */  jalr    $ra, $v1                   
/* 03314 8097BC44 00000000 */  nop
/* 03318 8097BC48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L8097BC4C:
/* 0331C 8097BC4C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03320 8097BC50 03E00008 */  jr      $ra                        
/* 03324 8097BC54 00000000 */  nop
