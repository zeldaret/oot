glabel ObjSwitch_Init
/* 004B4 80B9D6C4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 004B8 80B9D6C8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 004BC 80B9D6CC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004C0 80B9D6D0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004C4 80B9D6D4 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 004C8 80B9D6D8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 004CC 80B9D6DC 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 004D0 80B9D6E0 00052A03 */  sra     $a1, $a1,  8               
/* 004D4 80B9D6E4 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 004D8 80B9D6E8 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 004DC 80B9D6EC AFA20030 */  sw      $v0, 0x0030($sp)           
/* 004E0 80B9D6F0 8603001C */  lh      $v1, 0x001C($s0)           ## 0000001C
/* 004E4 80B9D6F4 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 004E8 80B9D6F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004EC 80B9D6FC 30630007 */  andi    $v1, $v1, 0x0007           ## $v1 = 00000000
/* 004F0 80B9D700 10600002 */  beq     $v1, $zero, .L80B9D70C     
/* 004F4 80B9D704 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 004F8 80B9D708 14610006 */  bne     $v1, $at, .L80B9D724       
.L80B9D70C:
/* 004FC 80B9D70C 3C060500 */  lui     $a2, 0x0500                ## $a2 = 05000000
/* 00500 80B9D710 24C65FB8 */  addiu   $a2, $a2, 0x5FB8           ## $a2 = 05005FB8
/* 00504 80B9D714 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 00508 80B9D718 0C2E74A5 */  jal     func_80B9D294              
/* 0050C 80B9D71C AFA3002C */  sw      $v1, 0x002C($sp)           
/* 00510 80B9D720 8FA3002C */  lw      $v1, 0x002C($sp)           
.L80B9D724:
/* 00514 80B9D724 3C0580BA */  lui     $a1, %hi(D_80B9ED78)       ## $a1 = 80BA0000
/* 00518 80B9D728 24A5ED78 */  addiu   $a1, $a1, %lo(D_80B9ED78)  ## $a1 = 80B9ED78
/* 0051C 80B9D72C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00520 80B9D730 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00524 80B9D734 AFA3002C */  sw      $v1, 0x002C($sp)           
/* 00528 80B9D738 8FA3002C */  lw      $v1, 0x002C($sp)           
/* 0052C 80B9D73C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00530 80B9D740 3C0F80BA */  lui     $t7, %hi(D_80B9EC20)       ## $t7 = 80BA0000
/* 00534 80B9D744 10600003 */  beq     $v1, $zero, .L80B9D754     
/* 00538 80B9D748 00037080 */  sll     $t6, $v1,  2               
/* 0053C 80B9D74C 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 00540 80B9D750 14610005 */  bne     $v1, $at, .L80B9D768       
.L80B9D754:
/* 00544 80B9D754 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00548 80B9D758 44813000 */  mtc1    $at, $f6                   ## $f6 = 1.00
/* 0054C 80B9D75C C604000C */  lwc1    $f4, 0x000C($s0)           ## 0000000C
/* 00550 80B9D760 46062200 */  add.s   $f8, $f4, $f6              
/* 00554 80B9D764 E6080028 */  swc1    $f8, 0x0028($s0)           ## 00000028
.L80B9D768:
/* 00558 80B9D768 25EFEC20 */  addiu   $t7, $t7, %lo(D_80B9EC20)  ## $t7 = 80B9EC20
/* 0055C 80B9D76C 01CF3821 */  addu    $a3, $t6, $t7              
/* 00560 80B9D770 8CE50000 */  lw      $a1, 0x0000($a3)           ## 00000000
/* 00564 80B9D774 0C00B56E */  jal     Actor_SetHeight
              
/* 00568 80B9D778 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0056C 80B9D77C 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00570 80B9D780 3C1880BA */  lui     $t8, %hi(D_80B9EC24)       ## $t8 = 80BA0000
/* 00574 80B9D784 2718EC24 */  addiu   $t8, $t8, %lo(D_80B9EC24)  ## $t8 = 80B9EC24
/* 00578 80B9D788 14F80009 */  bne     $a3, $t8, .L80B9D7B0       
/* 0057C 80B9D78C 3C1980BA */  lui     $t9, %hi(D_80B9EC28)       ## $t9 = 80BA0000
/* 00580 80B9D790 3C0680BA */  lui     $a2, %hi(D_80B9ECAC)       ## $a2 = 80BA0000
/* 00584 80B9D794 24C6ECAC */  addiu   $a2, $a2, %lo(D_80B9ECAC)  ## $a2 = 80B9ECAC
/* 00588 80B9D798 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0058C 80B9D79C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00590 80B9D7A0 0C2E74EE */  jal     func_80B9D3B8              
/* 00594 80B9D7A4 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00598 80B9D7A8 10000018 */  beq     $zero, $zero, .L80B9D80C   
/* 0059C 80B9D7AC 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80B9D7B0:
/* 005A0 80B9D7B0 2739EC28 */  addiu   $t9, $t9, %lo(D_80B9EC28)  ## $t9 = FFFFEC28
/* 005A4 80B9D7B4 14F90009 */  bne     $a3, $t9, .L80B9D7DC       
/* 005A8 80B9D7B8 3C0880BA */  lui     $t0, %hi(D_80B9EC2C)       ## $t0 = 80BA0000
/* 005AC 80B9D7BC 3C0680BA */  lui     $a2, %hi(D_80B9ED34)       ## $a2 = 80BA0000
/* 005B0 80B9D7C0 24C6ED34 */  addiu   $a2, $a2, %lo(D_80B9ED34)  ## $a2 = 80B9ED34
/* 005B4 80B9D7C4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005B8 80B9D7C8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 005BC 80B9D7CC 0C2E74EE */  jal     func_80B9D3B8              
/* 005C0 80B9D7D0 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 005C4 80B9D7D4 1000000D */  beq     $zero, $zero, .L80B9D80C   
/* 005C8 80B9D7D8 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80B9D7DC:
/* 005CC 80B9D7DC 2508EC2C */  addiu   $t0, $t0, %lo(D_80B9EC2C)  ## $t0 = FFFFEC2C
/* 005D0 80B9D7E0 10E80003 */  beq     $a3, $t0, .L80B9D7F0       
/* 005D4 80B9D7E4 3C0980BA */  lui     $t1, %hi(D_80B9EC30)       ## $t1 = 80BA0000
/* 005D8 80B9D7E8 2529EC30 */  addiu   $t1, $t1, %lo(D_80B9EC30)  ## $t1 = 80B9EC30
/* 005DC 80B9D7EC 14E90007 */  bne     $a3, $t1, .L80B9D80C       
.L80B9D7F0:
/* 005E0 80B9D7F0 3C0680BA */  lui     $a2, %hi(D_80B9ED68)       ## $a2 = 80BA0000
/* 005E4 80B9D7F4 24C6ED68 */  addiu   $a2, $a2, %lo(D_80B9ED68)  ## $a2 = 80B9ED68
/* 005E8 80B9D7F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 005EC 80B9D7FC 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 005F0 80B9D800 0C2E74C7 */  jal     func_80B9D31C              
/* 005F4 80B9D804 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 005F8 80B9D808 8FA70024 */  lw      $a3, 0x0024($sp)           
.L80B9D80C:
/* 005FC 80B9D80C 3C0A80BA */  lui     $t2, %hi(D_80B9EC30)       ## $t2 = 80BA0000
/* 00600 80B9D810 254AEC30 */  addiu   $t2, $t2, %lo(D_80B9EC30)  ## $t2 = 80B9EC30
/* 00604 80B9D814 14EA0006 */  bne     $a3, $t2, .L80B9D830       
/* 00608 80B9D818 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0060C 80B9D81C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 00000004
/* 00610 80B9D820 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00614 80B9D824 A20D001F */  sb      $t5, 0x001F($s0)           ## 0000001F
/* 00618 80B9D828 356C0001 */  ori     $t4, $t3, 0x0001           ## $t4 = 00000001
/* 0061C 80B9D82C AE0C0004 */  sw      $t4, 0x0004($s0)           ## 00000004
.L80B9D830:
/* 00620 80B9D830 860F001C */  lh      $t7, 0x001C($s0)           ## 0000001C
/* 00624 80B9D834 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 00628 80B9D838 A20E00AE */  sb      $t6, 0x00AE($s0)           ## 000000AE
/* 0062C 80B9D83C 000FC1C3 */  sra     $t8, $t7,  7               
/* 00630 80B9D840 33190001 */  andi    $t9, $t8, 0x0001           ## $t9 = 00000000
/* 00634 80B9D844 13200016 */  beq     $t9, $zero, .L80B9D8A0     
/* 00638 80B9D848 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 0063C 80B9D84C 0C2E7536 */  jal     func_80B9D4D8              
/* 00640 80B9D850 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 00644 80B9D854 14400012 */  bne     $v0, $zero, .L80B9D8A0     
/* 00648 80B9D858 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 0064C 80B9D85C 3C0480BA */  lui     $a0, %hi(D_80B9EE54)       ## $a0 = 80BA0000
/* 00650 80B9D860 2484EE54 */  addiu   $a0, $a0, %lo(D_80B9EE54)  ## $a0 = 80B9EE54
/* 00654 80B9D864 0C00084C */  jal     osSyncPrintf
              
/* 00658 80B9D868 AFA70024 */  sw      $a3, 0x0024($sp)           
/* 0065C 80B9D86C 3C0480BA */  lui     $a0, %hi(D_80B9EE5C)       ## $a0 = 80BA0000
/* 00660 80B9D870 3C0580BA */  lui     $a1, %hi(D_80B9EE78)       ## $a1 = 80BA0000
/* 00664 80B9D874 24A5EE78 */  addiu   $a1, $a1, %lo(D_80B9EE78)  ## $a1 = 80B9EE78
/* 00668 80B9D878 2484EE5C */  addiu   $a0, $a0, %lo(D_80B9EE5C)  ## $a0 = 80B9EE5C
/* 0066C 80B9D87C 0C00084C */  jal     osSyncPrintf
              
/* 00670 80B9D880 240602DC */  addiu   $a2, $zero, 0x02DC         ## $a2 = 000002DC
/* 00674 80B9D884 3C0480BA */  lui     $a0, %hi(D_80B9EE8C)       ## $a0 = 80BA0000
/* 00678 80B9D888 0C00084C */  jal     osSyncPrintf
              
/* 0067C 80B9D88C 2484EE8C */  addiu   $a0, $a0, %lo(D_80B9EE8C)  ## $a0 = 80B9EE8C
/* 00680 80B9D890 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00684 80B9D894 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00688 80B9D898 3109FF7F */  andi    $t1, $t0, 0xFF7F           ## $t1 = 00000000
/* 0068C 80B9D89C A609001C */  sh      $t1, 0x001C($s0)           ## 0000001C
.L80B9D8A0:
/* 00690 80B9D8A0 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00694 80B9D8A4 3C0C80BA */  lui     $t4, %hi(D_80B9EC20)       ## $t4 = 80BA0000
/* 00698 80B9D8A8 258CEC20 */  addiu   $t4, $t4, %lo(D_80B9EC20)  ## $t4 = 80B9EC20
/* 0069C 80B9D8AC 000551C3 */  sra     $t2, $a1,  7               
/* 006A0 80B9D8B0 314B0001 */  andi    $t3, $t2, 0x0001           ## $t3 = 00000000
/* 006A4 80B9D8B4 11600005 */  beq     $t3, $zero, .L80B9D8CC     
/* 006A8 80B9D8B8 00000000 */  nop
/* 006AC 80B9D8BC 0C2E77E3 */  jal     func_80B9DF8C              
/* 006B0 80B9D8C0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006B4 80B9D8C4 1000002F */  beq     $zero, $zero, .L80B9D984   
/* 006B8 80B9D8C8 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B9D8CC:
/* 006BC 80B9D8CC 10EC0004 */  beq     $a3, $t4, .L80B9D8E0       
/* 006C0 80B9D8D0 3C0D80BA */  lui     $t5, %hi(D_80B9EC24)       ## $t5 = 80BA0000
/* 006C4 80B9D8D4 25ADEC24 */  addiu   $t5, $t5, %lo(D_80B9EC24)  ## $t5 = 80B9EC24
/* 006C8 80B9D8D8 14ED000C */  bne     $a3, $t5, .L80B9D90C       
/* 006CC 80B9D8DC 3C0F80BA */  lui     $t7, %hi(D_80B9EC28)       ## $t7 = 80BA0000
.L80B9D8E0:
/* 006D0 80B9D8E0 8FAE0030 */  lw      $t6, 0x0030($sp)           
/* 006D4 80B9D8E4 11C00005 */  beq     $t6, $zero, .L80B9D8FC     
/* 006D8 80B9D8E8 00000000 */  nop
/* 006DC 80B9D8EC 0C2E772C */  jal     func_80B9DCB0              
/* 006E0 80B9D8F0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 006E4 80B9D8F4 10000003 */  beq     $zero, $zero, .L80B9D904   
/* 006E8 80B9D8F8 00000000 */  nop
.L80B9D8FC:
/* 006EC 80B9D8FC 0C2E7692 */  jal     func_80B9DA48              
/* 006F0 80B9D900 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9D904:
/* 006F4 80B9D904 1000001F */  beq     $zero, $zero, .L80B9D984   
/* 006F8 80B9D908 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B9D90C:
/* 006FC 80B9D90C 25EFEC28 */  addiu   $t7, $t7, %lo(D_80B9EC28)  ## $t7 = FFFFEC28
/* 00700 80B9D910 14EF000C */  bne     $a3, $t7, .L80B9D944       
/* 00704 80B9D914 3C1980BA */  lui     $t9, %hi(D_80B9EC2C)       ## $t9 = 80BA0000
/* 00708 80B9D918 8FB80030 */  lw      $t8, 0x0030($sp)           
/* 0070C 80B9D91C 13000005 */  beq     $t8, $zero, .L80B9D934     
/* 00710 80B9D920 00000000 */  nop
/* 00714 80B9D924 0C2E7840 */  jal     func_80B9E100              
/* 00718 80B9D928 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0071C 80B9D92C 10000003 */  beq     $zero, $zero, .L80B9D93C   
/* 00720 80B9D930 00000000 */  nop
.L80B9D934:
/* 00724 80B9D934 0C2E77FC */  jal     func_80B9DFF0              
/* 00728 80B9D938 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L80B9D93C:
/* 0072C 80B9D93C 10000011 */  beq     $zero, $zero, .L80B9D984   
/* 00730 80B9D940 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B9D944:
/* 00734 80B9D944 2739EC2C */  addiu   $t9, $t9, %lo(D_80B9EC2C)  ## $t9 = FFFFEC2C
/* 00738 80B9D948 10F90004 */  beq     $a3, $t9, .L80B9D95C       
/* 0073C 80B9D94C 3C0880BA */  lui     $t0, %hi(D_80B9EC30)       ## $t0 = 80BA0000
/* 00740 80B9D950 2508EC30 */  addiu   $t0, $t0, %lo(D_80B9EC30)  ## $t0 = 80B9EC30
/* 00744 80B9D954 14E8000B */  bne     $a3, $t0, .L80B9D984       
/* 00748 80B9D958 00000000 */  nop
.L80B9D95C:
/* 0074C 80B9D95C 8FA90030 */  lw      $t1, 0x0030($sp)           
/* 00750 80B9D960 11200005 */  beq     $t1, $zero, .L80B9D978     
/* 00754 80B9D964 00000000 */  nop
/* 00758 80B9D968 0C2E791F */  jal     func_80B9E47C              
/* 0075C 80B9D96C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00760 80B9D970 10000004 */  beq     $zero, $zero, .L80B9D984   
/* 00764 80B9D974 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B9D978:
/* 00768 80B9D978 0C2E78A0 */  jal     func_80B9E280              
/* 0076C 80B9D97C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00770 80B9D980 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L80B9D984:
/* 00774 80B9D984 3C0480BA */  lui     $a0, %hi(D_80B9EE90)       ## $a0 = 80BA0000
/* 00778 80B9D988 0C00084C */  jal     osSyncPrintf
              
/* 0077C 80B9D98C 2484EE90 */  addiu   $a0, $a0, %lo(D_80B9EE90)  ## $a0 = 80B9EE90
/* 00780 80B9D990 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00784 80B9D994 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00788 80B9D998 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 0078C 80B9D99C 03E00008 */  jr      $ra                        
/* 00790 80B9D9A0 00000000 */  nop


