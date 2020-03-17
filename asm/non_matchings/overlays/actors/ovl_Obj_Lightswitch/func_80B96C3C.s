glabel func_80B96C3C
/* 0009C 80B96C3C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000A0 80B96C40 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 000A4 80B96C44 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 000A8 80B96C48 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 000AC 80B96C4C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 000B0 80B96C50 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 000B4 80B96C54 84E5001C */  lh      $a1, 0x001C($a3)           ## 0000001C
/* 000B8 80B96C58 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 000BC 80B96C5C 00052A03 */  sra     $a1, $a1,  8               
/* 000C0 80B96C60 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000C4 80B96C64 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000C8 80B96C68 14400020 */  bne     $v0, $zero, .L80B96CEC     
/* 000CC 80B96C6C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 000D0 80B96C70 84E2001C */  lh      $v0, 0x001C($a3)           ## 0000001C
/* 000D4 80B96C74 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 000D8 80B96C78 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000DC 80B96C7C 00021903 */  sra     $v1, $v0,  4               
/* 000E0 80B96C80 30630003 */  andi    $v1, $v1, 0x0003           ## $v1 = 00000000
/* 000E4 80B96C84 00022A03 */  sra     $a1, $v0,  8               
/* 000E8 80B96C88 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 000EC 80B96C8C 0C00B2DD */  jal     Flags_SetSwitch
              
/* 000F0 80B96C90 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 000F4 80B96C94 8FA30020 */  lw      $v1, 0x0020($sp)           
/* 000F8 80B96C98 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 000FC 80B96C9C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00100 80B96CA0 14610006 */  bne     $v1, $at, .L80B96CBC       
/* 00104 80B96CA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00108 80B96CA8 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 0010C 80B96CAC 0C0201AF */  jal     func_800806BC              
/* 00110 80B96CB0 24064807 */  addiu   $a2, $zero, 0x4807         ## $a2 = 00004807
/* 00114 80B96CB4 1000000E */  beq     $zero, $zero, .L80B96CF0   
/* 00118 80B96CB8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B96CBC:
/* 0011C 80B96CBC 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00120 80B96CC0 14610007 */  bne     $v1, $at, .L80B96CE0       
/* 00124 80B96CC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00128 80B96CC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0012C 80B96CCC 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00130 80B96CD0 0C0201AF */  jal     func_800806BC              
/* 00134 80B96CD4 24064806 */  addiu   $a2, $zero, 0x4806         ## $a2 = 00004806
/* 00138 80B96CD8 10000005 */  beq     $zero, $zero, .L80B96CF0   
/* 0013C 80B96CDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B96CE0:
/* 00140 80B96CE0 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 00144 80B96CE4 0C0201AF */  jal     func_800806BC              
/* 00148 80B96CE8 24064802 */  addiu   $a2, $zero, 0x4802         ## $a2 = 00004802
.L80B96CEC:
/* 0014C 80B96CEC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80B96CF0:
/* 00150 80B96CF0 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00154 80B96CF4 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00158 80B96CF8 03E00008 */  jr      $ra                        
/* 0015C 80B96CFC 00000000 */  nop


