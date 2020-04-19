glabel func_80B3D750
/* 01570 80B3D750 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01574 80B3D754 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01578 80B3D758 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 0157C 80B3D75C 0C2CF2A1 */  jal     func_80B3CA84              
/* 01580 80B3D760 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01584 80B3D764 10400007 */  beq     $v0, $zero, .L80B3D784     
/* 01588 80B3D768 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 0158C 80B3D76C 0C2CF2E9 */  jal     func_80B3CBA4              
/* 01590 80B3D770 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 01594 80B3D774 10400003 */  beq     $v0, $zero, .L80B3D784     
/* 01598 80B3D778 8FAF0018 */  lw      $t7, 0x0018($sp)           
/* 0159C 80B3D77C 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
/* 015A0 80B3D780 ADEE0260 */  sw      $t6, 0x0260($t7)           ## 00000260
.L80B3D784:
/* 015A4 80B3D784 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 015A8 80B3D788 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015AC 80B3D78C 03E00008 */  jr      $ra                        
/* 015B0 80B3D790 00000000 */  nop
