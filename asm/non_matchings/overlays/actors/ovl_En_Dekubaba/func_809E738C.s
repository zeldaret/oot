glabel func_809E738C
/* 01BBC 809E738C 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 01BC0 809E7390 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 01BC4 809E7394 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01BC8 809E7398 848201C6 */  lh      $v0, 0x01C6($a0)           ## 000001C6
/* 01BCC 809E739C 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 01BD0 809E73A0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01BD4 809E73A4 10400003 */  beq     $v0, $zero, .L809E73B4     
/* 01BD8 809E73A8 24051800 */  addiu   $a1, $zero, 0x1800         ## $a1 = 00001800
/* 01BDC 809E73AC 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 01BE0 809E73B0 A48E01C6 */  sh      $t6, 0x01C6($a0)           ## 000001C6
.L809E73B4:
/* 01BE4 809E73B4 240F071C */  addiu   $t7, $zero, 0x071C         ## $t7 = 0000071C
/* 01BE8 809E73B8 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01BEC 809E73BC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 01BF0 809E73C0 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01BF4 809E73C4 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 01BF8 809E73C8 0C01E1A7 */  jal     Math_SmoothStepToS
              
/* 01BFC 809E73CC AFA3002C */  sw      $v1, 0x002C($sp)           
/* 01C00 809E73D0 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 01C04 809E73D4 26040008 */  addiu   $a0, $s0, 0x0008           ## $a0 = 00000008
/* 01C08 809E73D8 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 01C0C 809E73DC 24650024 */  addiu   $a1, $v1, 0x0024           ## $a1 = 00000024
/* 01C10 809E73E0 00022C00 */  sll     $a1, $v0, 16               
/* 01C14 809E73E4 00052C03 */  sra     $a1, $a1, 16               
/* 01C18 809E73E8 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 01C1C 809E73EC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 01C20 809E73F0 0C01E1EF */  jal     Math_ApproachS
              
/* 01C24 809E73F4 24070E38 */  addiu   $a3, $zero, 0x0E38         ## $a3 = 00000E38
/* 01C28 809E73F8 260401CA */  addiu   $a0, $s0, 0x01CA           ## $a0 = 000001CA
/* 01C2C 809E73FC 24050AAA */  addiu   $a1, $zero, 0x0AAA         ## $a1 = 00000AAA
/* 01C30 809E7400 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01C34 809E7404 24060444 */  addiu   $a2, $zero, 0x0444         ## $a2 = 00000444
/* 01C38 809E7408 260401CC */  addiu   $a0, $s0, 0x01CC           ## $a0 = 000001CC
/* 01C3C 809E740C 2405B8E8 */  addiu   $a1, $zero, 0xB8E8         ## $a1 = FFFFB8E8
/* 01C40 809E7410 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01C44 809E7414 24060888 */  addiu   $a2, $zero, 0x0888         ## $a2 = 00000888
/* 01C48 809E7418 260401CE */  addiu   $a0, $s0, 0x01CE           ## $a0 = 000001CE
/* 01C4C 809E741C 2405955C */  addiu   $a1, $zero, 0x955C         ## $a1 = FFFF955C
/* 01C50 809E7420 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 01C54 809E7424 24060888 */  addiu   $a2, $zero, 0x0888         ## $a2 = 00000888
/* 01C58 809E7428 861801C6 */  lh      $t8, 0x01C6($s0)           ## 000001C6
/* 01C5C 809E742C 17000003 */  bne     $t8, $zero, .L809E743C     
/* 01C60 809E7430 00000000 */  nop
/* 01C64 809E7434 0C2797EF */  jal     func_809E5FBC              
/* 01C68 809E7438 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L809E743C:
/* 01C6C 809E743C 0C279B73 */  jal     func_809E6DCC              
/* 01C70 809E7440 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 01C74 809E7444 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 01C78 809E7448 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01C7C 809E744C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 01C80 809E7450 03E00008 */  jr      $ra                        
/* 01C84 809E7454 00000000 */  nop
