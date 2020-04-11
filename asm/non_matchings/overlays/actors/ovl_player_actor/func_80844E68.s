.late_rodata
glabel D_8085545C
    .float 0.1
    .balign 4

.text
glabel func_80844E68
/* 12C58 80844E68 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 12C5C 80844E6C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 12C60 80844E70 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 12C64 80844E74 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 12C68 80844E78 8C8E067C */  lw      $t6, 0x067C($a0)           ## 0000067C
/* 12C6C 80844E7C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 12C70 80844E80 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 12C74 80844E84 35CF1000 */  ori     $t7, $t6, 0x1000           ## $t7 = 00001000
/* 12C78 80844E88 AC8F067C */  sw      $t7, 0x067C($a0)           ## 0000067C
/* 12C7C 80844E8C 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 12C80 80844E90 0C028EF0 */  jal     func_800A3BC0              
/* 12C84 80844E94 260501B4 */  addiu   $a1, $s0, 0x01B4           ## $a1 = 000001B4
/* 12C88 80844E98 10400015 */  beq     $v0, $zero, .L80844EF0     
/* 12C8C 80844E9C 00000000 */  nop
/* 12C90 80844EA0 0C20CB6F */  jal     func_80832DBC              
/* 12C94 80844EA4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12C98 80844EA8 0C20D577 */  jal     func_808355DC              
/* 12C9C 80844EAC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12CA0 80844EB0 8E18067C */  lw      $t8, 0x067C($s0)           ## 0000067C
/* 12CA4 80844EB4 3C01FFFD */  lui     $at, 0xFFFD                ## $at = FFFD0000
/* 12CA8 80844EB8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = FFFDFFFF
/* 12CAC 80844EBC 0301C824 */  and     $t9, $t8, $at              
/* 12CB0 80844EC0 AE19067C */  sw      $t9, 0x067C($s0)           ## 0000067C
/* 12CB4 80844EC4 0C023C68 */  jal     func_8008F1A0              
/* 12CB8 80844EC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12CBC 80844ECC 00024080 */  sll     $t0, $v0,  2               
/* 12CC0 80844ED0 3C068085 */  lui     $a2, %hi(D_80854360)       ## $a2 = 80850000
/* 12CC4 80844ED4 00C83021 */  addu    $a2, $a2, $t0              
/* 12CC8 80844ED8 8CC64360 */  lw      $a2, %lo(D_80854360)($a2)  
/* 12CCC 80844EDC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 12CD0 80844EE0 0C20C8A1 */  jal     func_80832284              
/* 12CD4 80844EE4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 12CD8 80844EE8 2409FFFF */  addiu   $t1, $zero, 0xFFFF         ## $t1 = FFFFFFFF
/* 12CDC 80844EEC A6090850 */  sh      $t1, 0x0850($s0)           ## 00000850
.L80844EF0:
/* 12CE0 80844EF0 0C20DC87 */  jal     func_8083721C              
/* 12CE4 80844EF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12CE8 80844EF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12CEC 80844EFC 0C210A59 */  jal     func_80842964              
/* 12CF0 80844F00 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 12CF4 80844F04 5440003A */  bnel    $v0, $zero, .L80844FF0     
/* 12CF8 80844F08 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 12CFC 80844F0C 860A0850 */  lh      $t2, 0x0850($s0)           ## 00000850
/* 12D00 80844F10 51400037 */  beql    $t2, $zero, .L80844FF0     
/* 12D04 80844F14 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 12D08 80844F18 0C21138F */  jal     func_80844E3C              
/* 12D0C 80844F1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12D10 80844F20 860B0850 */  lh      $t3, 0x0850($s0)           ## 00000850
/* 12D14 80844F24 3C018085 */  lui     $at, %hi(D_8085545C)       ## $at = 80850000
/* 12D18 80844F28 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12D1C 80844F2C 05610017 */  bgez    $t3, .L80844F8C            
/* 12D20 80844F30 00000000 */  nop
/* 12D24 80844F34 C6040858 */  lwc1    $f4, 0x0858($s0)           ## 00000858
/* 12D28 80844F38 C426545C */  lwc1    $f6, %lo(D_8085545C)($at)  
/* 12D2C 80844F3C 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 12D30 80844F40 3C0D8086 */  lui     $t5, %hi(D_80858AB4)       ## $t5 = 80860000
/* 12D34 80844F44 4604303E */  c.le.s  $f6, $f4                   
/* 12D38 80844F48 00000000 */  nop
/* 12D3C 80844F4C 45000004 */  bc1f    .L80844F60                 
/* 12D40 80844F50 00000000 */  nop
/* 12D44 80844F54 A2000845 */  sb      $zero, 0x0845($s0)         ## 00000845
/* 12D48 80844F58 10000024 */  beq     $zero, $zero, .L80844FEC   
/* 12D4C 80844F5C A60C0850 */  sh      $t4, 0x0850($s0)           ## 00000850
.L80844F60:
/* 12D50 80844F60 8DAD8AB4 */  lw      $t5, %lo(D_80858AB4)($t5)  
/* 12D54 80844F64 2401BFFF */  addiu   $at, $zero, 0xBFFF         ## $at = FFFFBFFF
/* 12D58 80844F68 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12D5C 80844F6C 95AE0000 */  lhu     $t6, 0x0000($t5)           ## 80860000
/* 12D60 80844F70 01C17827 */  nor     $t7, $t6, $at              
/* 12D64 80844F74 51E0001E */  beql    $t7, $zero, .L80844FF0     
/* 12D68 80844F78 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 12D6C 80844F7C 0C21135A */  jal     func_80844D68              
/* 12D70 80844F80 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 12D74 80844F84 1000001A */  beq     $zero, $zero, .L80844FF0   
/* 12D78 80844F88 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80844F8C:
/* 12D7C 80844F8C 0C2112F9 */  jal     func_80844BE4              
/* 12D80 80844F90 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 12D84 80844F94 14400015 */  bne     $v0, $zero, .L80844FEC     
/* 12D88 80844F98 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12D8C 80844F9C 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 12D90 80844FA0 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 12D94 80844FA4 24070000 */  addiu   $a3, $zero, 0x0000         ## $a3 = 00000000
/* 12D98 80844FA8 0C20DC9A */  jal     func_80837268              
/* 12D9C 80844FAC AFB10010 */  sw      $s1, 0x0010($sp)           
/* 12DA0 80844FB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12DA4 80844FB4 27A50034 */  addiu   $a1, $sp, 0x0034           ## $a1 = FFFFFFFC
/* 12DA8 80844FB8 27A60032 */  addiu   $a2, $sp, 0x0032           ## $a2 = FFFFFFFA
/* 12DAC 80844FBC 0C210016 */  jal     func_80840058              
/* 12DB0 80844FC0 02203825 */  or      $a3, $s1, $zero            ## $a3 = 00000000
/* 12DB4 80844FC4 18400005 */  blez    $v0, .L80844FDC            
/* 12DB8 80844FC8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12DBC 80844FCC 0C21133E */  jal     func_80844CF8              
/* 12DC0 80844FD0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 12DC4 80844FD4 10000006 */  beq     $zero, $zero, .L80844FF0   
/* 12DC8 80844FD8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80844FDC:
/* 12DCC 80844FDC 04410003 */  bgez    $v0, .L80844FEC            
/* 12DD0 80844FE0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 12DD4 80844FE4 0C21134C */  jal     func_80844D30              
/* 12DD8 80844FE8 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L80844FEC:
/* 12DDC 80844FEC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80844FF0:
/* 12DE0 80844FF0 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 12DE4 80844FF4 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 12DE8 80844FF8 03E00008 */  jr      $ra                        
/* 12DEC 80844FFC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000


