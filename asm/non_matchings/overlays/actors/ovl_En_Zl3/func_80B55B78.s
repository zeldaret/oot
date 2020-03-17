glabel func_80B55B78
/* 027C8 80B55B78 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 027CC 80B55B7C 10A00007 */  beq     $a1, $zero, .L80B55B9C     
/* 027D0 80B55B80 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 027D4 80B55B84 3C050600 */  lui     $a1, 0x0600                ## $a1 = 06000000
/* 027D8 80B55B88 24A561C4 */  addiu   $a1, $a1, 0x61C4           ## $a1 = 060061C4
/* 027DC 80B55B8C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 027E0 80B55B90 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 027E4 80B55B94 0C2D5385 */  jal     func_80B54E14              
/* 027E8 80B55B98 AFA00010 */  sw      $zero, 0x0010($sp)         
.L80B55B9C:
/* 027EC 80B55B9C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 027F0 80B55BA0 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 027F4 80B55BA4 03E00008 */  jr      $ra                        
/* 027F8 80B55BA8 00000000 */  nop


