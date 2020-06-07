glabel func_80850E84
/* 1EC74 80850E84 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 1EC78 80850E88 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 1EC7C 80850E8C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 1EC80 80850E90 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 1EC84 80850E94 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1EC88 80850E98 24E501B4 */  addiu   $a1, $a3, 0x01B4           ## $a1 = 000001B4
/* 1EC8C 80850E9C 0C028EF0 */  jal     func_800A3BC0              
/* 1EC90 80850EA0 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 1EC94 80850EA4 10400008 */  beq     $v0, $zero, .L80850EC8     
/* 1EC98 80850EA8 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 1EC9C 80850EAC 84EE0860 */  lh      $t6, 0x0860($a3)           ## 00000860
/* 1ECA0 80850EB0 3C050400 */  lui     $a1, 0x0400                ## $a1 = 04000000
/* 1ECA4 80850EB4 24A52C08 */  addiu   $a1, $a1, 0x2C08           ## $a1 = 04002C08
/* 1ECA8 80850EB8 15C00003 */  bne     $t6, $zero, .L80850EC8     
/* 1ECAC 80850EBC 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1ECB0 80850EC0 0C20E826 */  jal     func_8083A098              
/* 1ECB4 80850EC4 8FA6001C */  lw      $a2, 0x001C($sp)           
.L80850EC8:
/* 1ECB8 80850EC8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 1ECBC 80850ECC 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 1ECC0 80850ED0 03E00008 */  jr      $ra                        
/* 1ECC4 80850ED4 00000000 */  nop
