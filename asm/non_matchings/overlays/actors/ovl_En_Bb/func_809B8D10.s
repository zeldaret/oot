glabel func_809B8D10
/* 00A30 809B8D10 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A34 809B8D14 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00A38 809B8D18 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00A3C 809B8D1C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00A40 809B8D20 AC800250 */  sw      $zero, 0x0250($a0)         ## 00000250
/* 00A44 809B8D24 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00A48 809B8D28 240538E3 */  addiu   $a1, $zero, 0x38E3         ## $a1 = 000038E3
/* 00A4C 809B8D2C 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00A50 809B8D30 2841FFFD */  slti    $at, $v0, 0xFFFD           
/* 00A54 809B8D34 5420000F */  bnel    $at, $zero, .L809B8D74     
/* 00A58 809B8D38 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00A5C 809B8D3C 960F0088 */  lhu     $t7, 0x0088($s0)           ## 00000088
/* 00A60 809B8D40 860E008A */  lh      $t6, 0x008A($s0)           ## 0000008A
/* 00A64 809B8D44 3C01C0E0 */  lui     $at, 0xC0E0                ## $at = C0E00000
/* 00A68 809B8D48 31F80008 */  andi    $t8, $t7, 0x0008           ## $t8 = 00000000
/* 00A6C 809B8D4C 17000004 */  bne     $t8, $zero, .L809B8D60     
/* 00A70 809B8D50 A60E0032 */  sh      $t6, 0x0032($s0)           ## 00000032
/* 00A74 809B8D54 44812000 */  mtc1    $at, $f4                   ## $f4 = -7.00
/* 00A78 809B8D58 00000000 */  nop
/* 00A7C 809B8D5C E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
.L809B8D60:
/* 00A80 809B8D60 3C01809C */  lui     $at, %hi(D_809BBC88)       ## $at = 809C0000
/* 00A84 809B8D64 C426BC88 */  lwc1    $f6, %lo(D_809BBC88)($at)  
/* 00A88 809B8D68 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 00A8C 809B8D6C E60600BC */  swc1    $f6, 0x00BC($s0)           ## 000000BC
/* 00A90 809B8D70 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
.L809B8D74:
/* 00A94 809B8D74 54410004 */  bnel    $v0, $at, .L809B8D88       
/* 00A98 809B8D78 2419000C */  addiu   $t9, $zero, 0x000C         ## $t9 = 0000000C
/* 00A9C 809B8D7C 0C26E146 */  jal     func_809B8518              
/* 00AA0 809B8D80 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AA4 809B8D84 2419000C */  addiu   $t9, $zero, 0x000C         ## $t9 = 0000000C
.L809B8D88:
/* 00AA8 809B8D88 AFB90010 */  sw      $t9, 0x0010($sp)           
/* 00AAC 809B8D8C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AB0 809B8D90 24054000 */  addiu   $a1, $zero, 0x4000         ## $a1 = 00004000
/* 00AB4 809B8D94 240600FF */  addiu   $a2, $zero, 0x00FF         ## $a2 = 000000FF
/* 00AB8 809B8D98 0C00D09B */  jal     func_8003426C              
/* 00ABC 809B8D9C 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00AC0 809B8DA0 24080005 */  addiu   $t0, $zero, 0x0005         ## $t0 = 00000005
/* 00AC4 809B8DA4 3C05809C */  lui     $a1, %hi(func_809B8DCC)    ## $a1 = 809C0000
/* 00AC8 809B8DA8 AE080260 */  sw      $t0, 0x0260($s0)           ## 00000260
/* 00ACC 809B8DAC 24A58DCC */  addiu   $a1, $a1, %lo(func_809B8DCC) ## $a1 = 809B8DCC
/* 00AD0 809B8DB0 0C26E0B8 */  jal     func_809B82E0              
/* 00AD4 809B8DB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00AD8 809B8DB8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00ADC 809B8DBC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00AE0 809B8DC0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00AE4 809B8DC4 03E00008 */  jr      $ra                        
/* 00AE8 809B8DC8 00000000 */  nop


