glabel func_809CB054
/* 00544 809CB054 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00548 809CB058 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 0054C 809CB05C AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00550 809CB060 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00554 809CB064 848201AC */  lh      $v0, 0x01AC($a0)           ## 000001AC
/* 00558 809CB068 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0055C 809CB06C 10400003 */  beq     $v0, $zero, .L809CB07C     
/* 00560 809CB070 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 00564 809CB074 A48E01AC */  sh      $t6, 0x01AC($a0)           ## 000001AC
/* 00568 809CB078 848201AC */  lh      $v0, 0x01AC($a0)           ## 000001AC
.L809CB07C:
/* 0056C 809CB07C 1440001D */  bne     $v0, $zero, .L809CB0F4     
/* 00570 809CB080 28410051 */  slti    $at, $v0, 0x0051           
/* 00574 809CB084 0C010D5B */  jal     func_8004356C              
/* 00578 809CB088 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0057C 809CB08C 1040000E */  beq     $v0, $zero, .L809CB0C8     
/* 00580 809CB090 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00584 809CB094 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00588 809CB098 44812000 */  mtc1    $at, $f4                   ## $f4 = 1.00
/* 0058C 809CB09C 8607008A */  lh      $a3, 0x008A($s0)           ## 0000008A
/* 00590 809CB0A0 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00594 809CB0A4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00598 809CB0A8 3C0640A0 */  lui     $a2, 0x40A0                ## $a2 = 40A00000
/* 0059C 809CB0AC 0C00BDC7 */  jal     func_8002F71C              
/* 005A0 809CB0B0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 005A4 809CB0B4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005A8 809CB0B8 0C272B91 */  jal     func_809CAE44              
/* 005AC 809CB0BC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 005B0 809CB0C0 10000010 */  beq     $zero, $zero, .L809CB104   
/* 005B4 809CB0C4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CB0C8:
/* 005B8 809CB0C8 C6060090 */  lwc1    $f6, 0x0090($s0)           ## 00000090
/* 005BC 809CB0CC 44814000 */  mtc1    $at, $f8                   ## $f8 = 0.00
/* 005C0 809CB0D0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005C4 809CB0D4 4608303C */  c.lt.s  $f6, $f8                   
/* 005C8 809CB0D8 00000000 */  nop
/* 005CC 809CB0DC 45020009 */  bc1fl   .L809CB104                 
/* 005D0 809CB0E0 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005D4 809CB0E4 0C272B91 */  jal     func_809CAE44              
/* 005D8 809CB0E8 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 005DC 809CB0EC 10000005 */  beq     $zero, $zero, .L809CB104   
/* 005E0 809CB0F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CB0F4:
/* 005E4 809CB0F4 14200002 */  bne     $at, $zero, .L809CB100     
/* 005E8 809CB0F8 240F0050 */  addiu   $t7, $zero, 0x0050         ## $t7 = 00000050
/* 005EC 809CB0FC A20F0114 */  sb      $t7, 0x0114($s0)           ## 00000114
.L809CB100:
/* 005F0 809CB100 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809CB104:
/* 005F4 809CB104 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 005F8 809CB108 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 005FC 809CB10C 03E00008 */  jr      $ra                        
/* 00600 809CB110 00000000 */  nop
