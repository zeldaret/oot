glabel func_809FE6CC
/* 00A9C 809FE6CC 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00AA0 809FE6D0 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AA4 809FE6D4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00AA8 809FE6D8 848201E2 */  lh      $v0, 0x01E2($a0)           ## 000001E2
/* 00AAC 809FE6DC 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00AB0 809FE6E0 240F3039 */  addiu   $t7, $zero, 0x3039         ## $t7 = 00003039
/* 00AB4 809FE6E4 14400003 */  bne     $v0, $zero, .L809FE6F4     
/* 00AB8 809FE6E8 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00ABC 809FE6EC 10000003 */  beq     $zero, $zero, .L809FE6FC   
/* 00AC0 809FE6F0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809FE6F4:
/* 00AC4 809FE6F4 A4EE01E2 */  sh      $t6, 0x01E2($a3)           ## 000001E2
/* 00AC8 809FE6F8 84E301E2 */  lh      $v1, 0x01E2($a3)           ## 000001E2
.L809FE6FC:
/* 00ACC 809FE6FC 1460000C */  bne     $v1, $zero, .L809FE730     
/* 00AD0 809FE700 31E5FFFF */  andi    $a1, $t7, 0xFFFF           ## $a1 = 00003039
/* 00AD4 809FE704 A4EF010E */  sh      $t7, 0x010E($a3)           ## 0000010E
/* 00AD8 809FE708 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 00ADC 809FE70C 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00AE0 809FE710 0C042DA0 */  jal     func_8010B680              
/* 00AE4 809FE714 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00AE8 809FE718 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AEC 809FE71C 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 00AF0 809FE720 3C0580A0 */  lui     $a1, %hi(func_809FE740)    ## $a1 = 80A00000
/* 00AF4 809FE724 24A5E740 */  addiu   $a1, $a1, %lo(func_809FE740) ## $a1 = 809FE740
/* 00AF8 809FE728 0C27F70C */  jal     func_809FDC30              
/* 00AFC 809FE72C A49801F4 */  sh      $t8, 0x01F4($a0)           ## 000001F4
.L809FE730:
/* 00B00 809FE730 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B04 809FE734 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B08 809FE738 03E00008 */  jr      $ra                        
/* 00B0C 809FE73C 00000000 */  nop
