glabel func_80A6F164
/* 001C4 80A6F164 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 001C8 80A6F168 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 001CC 80A6F16C 0C00BCCD */  jal     func_8002F334              
/* 001D0 80A6F170 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 001D4 80A6F174 10400004 */  beq     $v0, $zero, .L80A6F188     
/* 001D8 80A6F178 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 001DC 80A6F17C 3C0E80A7 */  lui     $t6, %hi(func_80A6F1A4)    ## $t6 = 80A70000
/* 001E0 80A6F180 25CEF1A4 */  addiu   $t6, $t6, %lo(func_80A6F1A4) ## $t6 = 80A6F1A4
/* 001E4 80A6F184 AC8E02AC */  sw      $t6, 0x02AC($a0)           ## 000002AC
.L80A6F188:
/* 001E8 80A6F188 948F02A8 */  lhu     $t7, 0x02A8($a0)           ## 000002A8
/* 001EC 80A6F18C 35F80001 */  ori     $t8, $t7, 0x0001           ## $t8 = 00000001
/* 001F0 80A6F190 A49802A8 */  sh      $t8, 0x02A8($a0)           ## 000002A8
/* 001F4 80A6F194 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 001F8 80A6F198 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 001FC 80A6F19C 03E00008 */  jr      $ra                        
/* 00200 80A6F1A0 00000000 */  nop


