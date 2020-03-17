glabel func_80AD6BF4
/* 030F4 80AD6BF4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 030F8 80AD6BF8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 030FC 80AD6BFC AFA5001C */  sw      $a1, 0x001C($sp)           
/* 03100 80AD6C00 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03104 80AD6C04 8C990190 */  lw      $t9, 0x0190($a0)           ## 00000190
/* 03108 80AD6C08 0320F809 */  jalr    $ra, $t9                   
/* 0310C 80AD6C0C 00000000 */  nop
/* 03110 80AD6C10 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 03114 80AD6C14 3C0E80AD */  lui     $t6, %hi(func_80AD53F0)    ## $t6 = 80AD0000
/* 03118 80AD6C18 25CE53F0 */  addiu   $t6, $t6, %lo(func_80AD53F0) ## $t6 = 80AD53F0
/* 0311C 80AD6C1C 8C8F0190 */  lw      $t7, 0x0190($a0)           ## 00000190
/* 03120 80AD6C20 15CF0004 */  bne     $t6, $t7, .L80AD6C34       
/* 03124 80AD6C24 00000000 */  nop
/* 03128 80AD6C28 0C2B58CC */  jal     func_80AD6330              
/* 0312C 80AD6C2C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 03130 80AD6C30 8FA40018 */  lw      $a0, 0x0018($sp)           
.L80AD6C34:
/* 03134 80AD6C34 0C2B5758 */  jal     func_80AD5D60              
/* 03138 80AD6C38 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 0313C 80AD6C3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 03140 80AD6C40 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 03144 80AD6C44 03E00008 */  jr      $ra                        
/* 03148 80AD6C48 00000000 */  nop


