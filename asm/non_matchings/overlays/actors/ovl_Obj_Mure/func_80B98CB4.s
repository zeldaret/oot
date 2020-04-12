.rdata
glabel D_80B99C10
    .asciz "おかしなの (%s %d)\n"
    .balign 4

glabel D_80B99C24
    .asciz "../z_obj_mure.c"
    .balign 4

.text
glabel func_80B98CB4
/* 00214 80B98CB4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00218 80B98CB8 28C10004 */  slti    $at, $a2, 0x0004           
/* 0021C 80B98CBC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00220 80B98CC0 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00224 80B98CC4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00228 80B98CC8 14200007 */  bne     $at, $zero, .L80B98CE8     
/* 0022C 80B98CCC AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00230 80B98CD0 3C0480BA */  lui     $a0, %hi(D_80B99C10)       ## $a0 = 80BA0000
/* 00234 80B98CD4 3C0580BA */  lui     $a1, %hi(D_80B99C24)       ## $a1 = 80BA0000
/* 00238 80B98CD8 24A59C24 */  addiu   $a1, $a1, %lo(D_80B99C24)  ## $a1 = 80B99C24
/* 0023C 80B98CDC 24849C10 */  addiu   $a0, $a0, %lo(D_80B99C10)  ## $a0 = 80B99C10
/* 00240 80B98CE0 0C00084C */  jal     osSyncPrintf
              
/* 00244 80B98CE4 24060133 */  addiu   $a2, $zero, 0x0133         ## $a2 = 00000133
.L80B98CE8:
/* 00248 80B98CE8 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 0024C 80B98CEC 8FAE0018 */  lw      $t6, 0x0018($sp)           
/* 00250 80B98CF0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 00000000
/* 00254 80B98CF4 ADD90000 */  sw      $t9, 0x0000($t6)           ## 00000000
/* 00258 80B98CF8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 00000004
/* 0025C 80B98CFC ADD80004 */  sw      $t8, 0x0004($t6)           ## 00000004
/* 00260 80B98D00 8DF90008 */  lw      $t9, 0x0008($t7)           ## 00000008
/* 00264 80B98D04 ADD90008 */  sw      $t9, 0x0008($t6)           ## 00000008
/* 00268 80B98D08 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0026C 80B98D0C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00270 80B98D10 03E00008 */  jr      $ra                        
/* 00274 80B98D14 00000000 */  nop
