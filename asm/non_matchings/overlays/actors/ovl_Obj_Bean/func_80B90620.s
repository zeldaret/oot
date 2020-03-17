glabel func_80B90620
/* 01BA0 80B90620 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01BA4 80B90624 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 01BA8 80B90628 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 01BAC 80B9062C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BB0 80B90630 8C9901BC */  lw      $t9, 0x01BC($a0)           ## 000001BC
/* 01BB4 80B90634 0320F809 */  jalr    $ra, $t9                   
/* 01BB8 80B90638 00000000 */  nop
/* 01BBC 80B9063C 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01BC0 80B90640 848E01B4 */  lh      $t6, 0x01B4($a0)           ## 000001B4
/* 01BC4 80B90644 5DC00009 */  bgtzl   $t6, .L80B9066C            
/* 01BC8 80B90648 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 01BCC 80B9064C 0C2E3FD4 */  jal     func_80B8FF50              
/* 01BD0 80B90650 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 01BD4 80B90654 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 01BD8 80B90658 2401FFEF */  addiu   $at, $zero, 0xFFEF         ## $at = FFFFFFEF
/* 01BDC 80B9065C 8C8F0004 */  lw      $t7, 0x0004($a0)           ## 00000004
/* 01BE0 80B90660 01E1C024 */  and     $t8, $t7, $at              
/* 01BE4 80B90664 AC980004 */  sw      $t8, 0x0004($a0)           ## 00000004
/* 01BE8 80B90668 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80B9066C:
/* 01BEC 80B9066C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 01BF0 80B90670 03E00008 */  jr      $ra                        
/* 01BF4 80B90674 00000000 */  nop


