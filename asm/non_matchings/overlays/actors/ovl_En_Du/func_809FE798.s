glabel func_809FE798
/* 00B68 809FE798 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00B6C 809FE79C AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00B70 809FE7A0 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00B74 809FE7A4 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00B78 809FE7A8 848301E2 */  lh      $v1, 0x01E2($a0)           ## 000001E2
/* 00B7C 809FE7AC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B80 809FE7B0 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00B84 809FE7B4 14600003 */  bne     $v1, $zero, .L809FE7C4     
/* 00B88 809FE7B8 246EFFFF */  addiu   $t6, $v1, 0xFFFF           ## $t6 = FFFFFFFF
/* 00B8C 809FE7BC 10000004 */  beq     $zero, $zero, .L809FE7D0   
/* 00B90 809FE7C0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L809FE7C4:
/* 00B94 809FE7C4 A60E01E2 */  sh      $t6, 0x01E2($s0)           ## 000001E2
/* 00B98 809FE7C8 860301E2 */  lh      $v1, 0x01E2($s0)           ## 000001E2
/* 00B9C 809FE7CC 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000000
.L809FE7D0:
/* 00BA0 809FE7D0 10400023 */  beq     $v0, $zero, .L809FE860     
/* 00BA4 809FE7D4 00000000 */  nop
/* 00BA8 809FE7D8 10610016 */  beq     $v1, $at, .L809FE834       
/* 00BAC 809FE7DC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB0 809FE7E0 2401000F */  addiu   $at, $zero, 0x000F         ## $at = 0000000F
/* 00BB4 809FE7E4 1061000F */  beq     $v1, $at, .L809FE824       
/* 00BB8 809FE7E8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BBC 809FE7EC 2401003C */  addiu   $at, $zero, 0x003C         ## $at = 0000003C
/* 00BC0 809FE7F0 10610008 */  beq     $v1, $at, .L809FE814       
/* 00BC4 809FE7F4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BC8 809FE7F8 24010050 */  addiu   $at, $zero, 0x0050         ## $at = 00000050
/* 00BCC 809FE7FC 14610010 */  bne     $v1, $at, .L809FE840       
/* 00BD0 809FE800 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BD4 809FE804 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BD8 809FE808 240528A9 */  addiu   $a1, $zero, 0x28A9         ## $a1 = 000028A9
/* 00BDC 809FE80C 1000000C */  beq     $zero, $zero, .L809FE840   
/* 00BE0 809FE810 860301E2 */  lh      $v1, 0x01E2($s0)           ## 000001E2
.L809FE814:
/* 00BE4 809FE814 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BE8 809FE818 24052814 */  addiu   $a1, $zero, 0x2814         ## $a1 = 00002814
/* 00BEC 809FE81C 10000008 */  beq     $zero, $zero, .L809FE840   
/* 00BF0 809FE820 860301E2 */  lh      $v1, 0x01E2($s0)           ## 000001E2
.L809FE824:
/* 00BF4 809FE824 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00BF8 809FE828 2405281C */  addiu   $a1, $zero, 0x281C         ## $a1 = 0000281C
/* 00BFC 809FE82C 10000004 */  beq     $zero, $zero, .L809FE840   
/* 00C00 809FE830 860301E2 */  lh      $v1, 0x01E2($s0)           ## 000001E2
.L809FE834:
/* 00C04 809FE834 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00C08 809FE838 2405281D */  addiu   $a1, $zero, 0x281D         ## $a1 = 0000281D
/* 00C0C 809FE83C 860301E2 */  lh      $v1, 0x01E2($s0)           ## 000001E2
.L809FE840:
/* 00C10 809FE840 2861003D */  slti    $at, $v1, 0x003D           
/* 00C14 809FE844 1420000D */  bne     $at, $zero, .L809FE87C     
/* 00C18 809FE848 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00C1C 809FE84C 44813000 */  mtc1    $at, $f6                   ## $f6 = 10.00
/* 00C20 809FE850 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00C24 809FE854 46062201 */  sub.s   $f8, $f4, $f6              
/* 00C28 809FE858 10000008 */  beq     $zero, $zero, .L809FE87C   
/* 00C2C 809FE85C E6080024 */  swc1    $f8, 0x0024($s0)           ## 00000024
.L809FE860:
/* 00C30 809FE860 0C00B55C */  jal     Actor_Kill
              
/* 00C34 809FE864 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C38 809FE868 3C028016 */  lui     $v0, %hi(gSaveContext)
/* 00C3C 809FE86C 2442E660 */  addiu   $v0, %lo(gSaveContext)
/* 00C40 809FE870 944F0F1A */  lhu     $t7, 0x0F1A($v0)           ## 8015F57A
/* 00C44 809FE874 35F80400 */  ori     $t8, $t7, 0x0400           ## $t8 = 00000400
/* 00C48 809FE878 A4580F1A */  sh      $t8, 0x0F1A($v0)           ## 8015F57A
.L809FE87C:
/* 00C4C 809FE87C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00C50 809FE880 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00C54 809FE884 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00C58 809FE888 03E00008 */  jr      $ra                        
/* 00C5C 809FE88C 00000000 */  nop
