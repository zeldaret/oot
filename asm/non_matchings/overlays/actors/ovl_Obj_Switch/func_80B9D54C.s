glabel func_80B9D54C
/* 0033C 80B9D54C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00340 80B9D550 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00344 80B9D554 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00348 80B9D558 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0034C 80B9D55C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00350 80B9D560 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00354 80B9D564 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00358 80B9D568 00052A03 */  sra     $a1, $a1,  8               
/* 0035C 80B9D56C 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00360 80B9D570 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00364 80B9D574 50400004 */  beql    $v0, $zero, .L80B9D588     
/* 00368 80B9D578 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 0036C 80B9D57C 10000019 */  beq     $zero, $zero, .L80B9D5E4   
/* 00370 80B9D580 A200016E */  sb      $zero, 0x016E($s0)         ## 0000016E
/* 00374 80B9D584 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
.L80B9D588:
/* 00378 80B9D588 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 0037C 80B9D58C 00021903 */  sra     $v1, $v0,  4               
/* 00380 80B9D590 30630007 */  andi    $v1, $v1, 0x0007           ## $v1 = 00000000
/* 00384 80B9D594 00022A03 */  sra     $a1, $v0,  8               
/* 00388 80B9D598 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 0038C 80B9D59C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 00390 80B9D5A0 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 00394 80B9D5A4 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 00398 80B9D5A8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0039C 80B9D5AC 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 003A0 80B9D5B0 10600003 */  beq     $v1, $zero, .L80B9D5C0     
/* 003A4 80B9D5B4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 003A8 80B9D5B8 14610005 */  bne     $v1, $at, .L80B9D5D0       
/* 003AC 80B9D5BC 24064807 */  addiu   $a2, $zero, 0x4807         ## $a2 = 00004807
.L80B9D5C0:
/* 003B0 80B9D5C0 0C0201AF */  jal     func_800806BC              
/* 003B4 80B9D5C4 24064802 */  addiu   $a2, $zero, 0x4802         ## $a2 = 00004802
/* 003B8 80B9D5C8 10000005 */  beq     $zero, $zero, .L80B9D5E0   
/* 003BC 80B9D5CC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
.L80B9D5D0:
/* 003C0 80B9D5D0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 003C4 80B9D5D4 0C0201AF */  jal     func_800806BC              
/* 003C8 80B9D5D8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 003CC 80B9D5DC 240E0001 */  addiu   $t6, $zero, 0x0001         ## $t6 = 00000001
.L80B9D5E0:
/* 003D0 80B9D5E0 A20E016E */  sb      $t6, 0x016E($s0)           ## 0000016E
.L80B9D5E4:
/* 003D4 80B9D5E4 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 003D8 80B9D5E8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 003DC 80B9D5EC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 003E0 80B9D5F0 03E00008 */  jr      $ra                        
/* 003E4 80B9D5F4 00000000 */  nop
