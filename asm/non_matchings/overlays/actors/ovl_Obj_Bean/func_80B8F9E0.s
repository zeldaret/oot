glabel func_80B8F9E0
/* 00F60 80B8F9E0 3C0E80B9 */  lui     $t6, %hi(func_80B8FA20)    ## $t6 = 80B90000
/* 00F64 80B8F9E4 25CEFA20 */  addiu   $t6, $t6, %lo(func_80B8FA20) ## $t6 = 80B8FA20
/* 00F68 80B8F9E8 240F0BB8 */  addiu   $t7, $zero, 0x0BB8         ## $t7 = 00000BB8
/* 00F6C 80B8F9EC 241800C8 */  addiu   $t8, $zero, 0x00C8         ## $t8 = 000000C8
/* 00F70 80B8F9F0 24193E80 */  addiu   $t9, $zero, 0x3E80         ## $t9 = 00003E80
/* 00F74 80B8F9F4 240801F4 */  addiu   $t0, $zero, 0x01F4         ## $t0 = 000001F4
/* 00F78 80B8F9F8 24090010 */  addiu   $t1, $zero, 0x0010         ## $t1 = 00000010
/* 00F7C 80B8F9FC AC8E01BC */  sw      $t6, 0x01BC($a0)           ## 000001BC
/* 00F80 80B8FA00 A48F01C2 */  sh      $t7, 0x01C2($a0)           ## 000001C2
/* 00F84 80B8FA04 A48001C4 */  sh      $zero, 0x01C4($a0)         ## 000001C4
/* 00F88 80B8FA08 A49801C6 */  sh      $t8, 0x01C6($a0)           ## 000001C6
/* 00F8C 80B8FA0C A49901C8 */  sh      $t9, 0x01C8($a0)           ## 000001C8
/* 00F90 80B8FA10 A48801CA */  sh      $t0, 0x01CA($a0)           ## 000001CA
/* 00F94 80B8FA14 A48001CC */  sh      $zero, 0x01CC($a0)         ## 000001CC
/* 00F98 80B8FA18 03E00008 */  jr      $ra                        
/* 00F9C 80B8FA1C A48901C0 */  sh      $t1, 0x01C0($a0)           ## 000001C0


