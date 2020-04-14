glabel func_809CB218
/* 00708 809CB218 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 0070C 809CB21C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00710 809CB220 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00714 809CB224 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00718 809CB228 24840164 */  addiu   $a0, $a0, 0x0164           ## $a0 = 00000164
/* 0071C 809CB22C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00720 809CB230 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00724 809CB234 AFA40024 */  sw      $a0, 0x0024($sp)           
/* 00728 809CB238 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0072C 809CB23C 0C0295B2 */  jal     func_800A56C8              
/* 00730 809CB240 3C0540C0 */  lui     $a1, 0x40C0                ## $a1 = 40C00000
/* 00734 809CB244 14400004 */  bne     $v0, $zero, .L809CB258     
/* 00738 809CB248 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 0073C 809CB24C 0C0295B2 */  jal     func_800A56C8              
/* 00740 809CB250 3C054170 */  lui     $a1, 0x4170                ## $a1 = 41700000
/* 00744 809CB254 10400003 */  beq     $v0, $zero, .L809CB264     
.L809CB258:
/* 00748 809CB258 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0074C 809CB25C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00750 809CB260 2405394A */  addiu   $a1, $zero, 0x394A         ## $a1 = 0000394A
.L809CB264:
/* 00754 809CB264 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
/* 00758 809CB268 3C0143FA */  lui     $at, 0x43FA                ## $at = 43FA0000
/* 0075C 809CB26C 10400003 */  beq     $v0, $zero, .L809CB27C     
/* 00760 809CB270 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00764 809CB274 A60E01AC */  sh      $t6, 0x01AC($s0)           ## 000001AC
/* 00768 809CB278 860201AC */  lh      $v0, 0x01AC($s0)           ## 000001AC
.L809CB27C:
/* 0076C 809CB27C 5440000A */  bnel    $v0, $zero, .L809CB2A8     
/* 00770 809CB280 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00774 809CB284 44812000 */  mtc1    $at, $f4                   ## $f4 = 500.00
/* 00778 809CB288 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 0077C 809CB28C 4606203C */  c.lt.s  $f4, $f6                   
/* 00780 809CB290 00000000 */  nop
/* 00784 809CB294 45020004 */  bc1fl   .L809CB2A8                 
/* 00788 809CB298 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0078C 809CB29C 0C272BE2 */  jal     func_809CAF88              
/* 00790 809CB2A0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00794 809CB2A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809CB2A8:
/* 00798 809CB2A8 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 0079C 809CB2AC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 007A0 809CB2B0 03E00008 */  jr      $ra                        
/* 007A4 809CB2B4 00000000 */  nop
