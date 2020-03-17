glabel func_8087F5C8
/* 004C8 8087F5C8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 004CC 8087F5CC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 004D0 8087F5D0 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 004D4 8087F5D4 90820168 */  lbu     $v0, 0x0168($a0)           ## 00000168
/* 004D8 8087F5D8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 004DC 8087F5DC 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 004E0 8087F5E0 10400004 */  beq     $v0, $zero, .L8087F5F4     
/* 004E4 8087F5E4 24060080 */  addiu   $a2, $zero, 0x0080         ## $a2 = 00000080
/* 004E8 8087F5E8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 004EC 8087F5EC A08E0168 */  sb      $t6, 0x0168($a0)           ## 00000168
/* 004F0 8087F5F0 31C200FF */  andi    $v0, $t6, 0x00FF           ## $v0 = 000000FF
.L8087F5F4:
/* 004F4 8087F5F4 14400005 */  bne     $v0, $zero, .L8087F60C     
/* 004F8 8087F5F8 240F0028 */  addiu   $t7, $zero, 0x0028         ## $t7 = 00000028
/* 004FC 8087F5FC 3C188088 */  lui     $t8, %hi(func_8087F624)    ## $t8 = 80880000
/* 00500 8087F600 2718F624 */  addiu   $t8, $t8, %lo(func_8087F624) ## $t8 = 8087F624
/* 00504 8087F604 A0EF0168 */  sb      $t7, 0x0168($a3)           ## 00000168
/* 00508 8087F608 ACF80164 */  sw      $t8, 0x0164($a3)           ## 00000164
.L8087F60C:
/* 0050C 8087F60C 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00510 8087F610 24E4016A */  addiu   $a0, $a3, 0x016A           ## $a0 = 0000016A
/* 00514 8087F614 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00518 8087F618 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 0051C 8087F61C 03E00008 */  jr      $ra                        
/* 00520 8087F620 00000000 */  nop


