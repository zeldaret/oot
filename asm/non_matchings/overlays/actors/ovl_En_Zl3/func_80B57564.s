glabel func_80B57564
/* 041B4 80B57564 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 041B8 80B57568 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 041BC 80B5756C AFA40018 */  sw      $a0, 0x0018($sp)           
/* 041C0 80B57570 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 041C4 80B57574 0C2D5CFF */  jal     func_80B573FC              
/* 041C8 80B57578 3C064248 */  lui     $a2, 0x4248                ## $a2 = 42480000
/* 041CC 80B5757C 14400005 */  bne     $v0, $zero, .L80B57594     
/* 041D0 80B57580 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 041D4 80B57584 0C2D5D16 */  jal     func_80B57458              
/* 041D8 80B57588 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 041DC 80B5758C 50400004 */  beql    $v0, $zero, .L80B575A0     
/* 041E0 80B57590 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B57594:
/* 041E4 80B57594 10000002 */  beq     $zero, $zero, .L80B575A0   
/* 041E8 80B57598 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 041EC 80B5759C 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B575A0:
/* 041F0 80B575A0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 041F4 80B575A4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 041F8 80B575A8 03E00008 */  jr      $ra                        
/* 041FC 80B575AC 00000000 */  nop
