glabel func_808A9D24
/* 005A4 808A9D24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 005A8 808A9D28 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 005AC 808A9D2C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 005B0 808A9D30 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 005B4 808A9D34 84E50168 */  lh      $a1, 0x0168($a3)           ## 00000168
/* 005B8 808A9D38 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 005BC 808A9D3C 248400B4 */  addiu   $a0, $a0, 0x00B4           ## $a0 = 000000B4
/* 005C0 808A9D40 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 005C4 808A9D44 24060050 */  addiu   $a2, $zero, 0x0050         ## $a2 = 00000050
/* 005C8 808A9D48 10400004 */  beq     $v0, $zero, .L808A9D5C     
/* 005CC 808A9D4C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 005D0 808A9D50 3C0E808B */  lui     $t6, %hi(func_808A9BE8)    ## $t6 = 808B0000
/* 005D4 808A9D54 25CE9BE8 */  addiu   $t6, $t6, %lo(func_808A9BE8) ## $t6 = 808A9BE8
/* 005D8 808A9D58 ACEE0164 */  sw      $t6, 0x0164($a3)           ## 00000164
.L808A9D5C:
/* 005DC 808A9D5C 84EF00B4 */  lh      $t7, 0x00B4($a3)           ## 000000B4
/* 005E0 808A9D60 3C09808B */  lui     $t1, %hi(func_808A9BE8)    ## $t1 = 808B0000
/* 005E4 808A9D64 25299BE8 */  addiu   $t1, $t1, %lo(func_808A9BE8) ## $t1 = 808A9BE8
/* 005E8 808A9D68 29E1D828 */  slti    $at, $t7, 0xD828           
/* 005EC 808A9D6C 1420001B */  bne     $at, $zero, .L808A9DDC     
/* 005F0 808A9D70 24180050 */  addiu   $t8, $zero, 0x0050         ## $t8 = 00000050
/* 005F4 808A9D74 44982000 */  mtc1    $t8, $f4                   ## $f4 = 0.00
/* 005F8 808A9D78 3C01808B */  lui     $at, %hi(D_808AA878)       ## $at = 808B0000
/* 005FC 808A9D7C C428A878 */  lwc1    $f8, %lo(D_808AA878)($at)  
/* 00600 808A9D80 468021A0 */  cvt.s.w $f6, $f4                   
/* 00604 808A9D84 8CE3011C */  lw      $v1, 0x011C($a3)           ## 0000011C
/* 00608 808A9D88 84650168 */  lh      $a1, 0x0168($v1)           ## 00000168
/* 0060C 808A9D8C AFA90018 */  sw      $t1, 0x0018($sp)           
/* 00610 808A9D90 46083282 */  mul.s   $f10, $f6, $f8             
/* 00614 808A9D94 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 00618 808A9D98 AFA30024 */  sw      $v1, 0x0024($sp)           
/* 0061C 808A9D9C 246400B4 */  addiu   $a0, $v1, 0x00B4           ## $a0 = 000000B4
/* 00620 808A9DA0 4600540D */  trunc.w.s $f16, $f10                 
/* 00624 808A9DA4 44068000 */  mfc1    $a2, $f16                  
/* 00628 808A9DA8 00000000 */  nop
/* 0062C 808A9DAC 00063400 */  sll     $a2, $a2, 16               
/* 00630 808A9DB0 00063403 */  sra     $a2, $a2, 16               
/* 00634 808A9DB4 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00638 808A9DB8 A7A6001E */  sh      $a2, 0x001E($sp)           
/* 0063C 808A9DBC 8FA30024 */  lw      $v1, 0x0024($sp)           
/* 00640 808A9DC0 87A6001E */  lh      $a2, 0x001E($sp)           
/* 00644 808A9DC4 8C68011C */  lw      $t0, 0x011C($v1)           ## 0000011C
/* 00648 808A9DC8 84650168 */  lh      $a1, 0x0168($v1)           ## 00000168
/* 0064C 808A9DCC 0C01DE2B */  jal     Math_ApproxUpdateScaledS
              
/* 00650 808A9DD0 250400B4 */  addiu   $a0, $t0, 0x00B4           ## $a0 = 000000B4
/* 00654 808A9DD4 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00658 808A9DD8 8FA90018 */  lw      $t1, 0x0018($sp)           
.L808A9DDC:
/* 0065C 808A9DDC 84EA0168 */  lh      $t2, 0x0168($a3)           ## 00000168
/* 00660 808A9DE0 0543000F */  bgezl   $t2, .L808A9E20            
/* 00664 808A9DE4 8CEC0164 */  lw      $t4, 0x0164($a3)           ## 00000164
/* 00668 808A9DE8 8CEB0164 */  lw      $t3, 0x0164($a3)           ## 00000164
/* 0066C 808A9DEC 2405280F */  addiu   $a1, $zero, 0x280F         ## $a1 = 0000280F
/* 00670 808A9DF0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00674 808A9DF4 152B0005 */  bne     $t1, $t3, .L808A9E0C       
/* 00678 808A9DF8 00000000 */  nop
/* 0067C 808A9DFC 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00680 808A9E00 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00684 808A9E04 10000011 */  beq     $zero, $zero, .L808A9E4C   
/* 00688 808A9E08 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9E0C:
/* 0068C 808A9E0C 0C00BE5D */  jal     func_8002F974              
/* 00690 808A9E10 2405200D */  addiu   $a1, $zero, 0x200D         ## $a1 = 0000200D
/* 00694 808A9E14 1000000D */  beq     $zero, $zero, .L808A9E4C   
/* 00698 808A9E18 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 0069C 808A9E1C 8CEC0164 */  lw      $t4, 0x0164($a3)           ## 00000164
.L808A9E20:
/* 006A0 808A9E20 2405280E */  addiu   $a1, $zero, 0x280E         ## $a1 = 0000280E
/* 006A4 808A9E24 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006A8 808A9E28 152C0005 */  bne     $t1, $t4, .L808A9E40       
/* 006AC 808A9E2C 00000000 */  nop
/* 006B0 808A9E30 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 006B4 808A9E34 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 006B8 808A9E38 10000004 */  beq     $zero, $zero, .L808A9E4C   
/* 006BC 808A9E3C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9E40:
/* 006C0 808A9E40 0C00BE5D */  jal     func_8002F974              
/* 006C4 808A9E44 2405200C */  addiu   $a1, $zero, 0x200C         ## $a1 = 0000200C
/* 006C8 808A9E48 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L808A9E4C:
/* 006CC 808A9E4C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 006D0 808A9E50 03E00008 */  jr      $ra                        
/* 006D4 808A9E54 00000000 */  nop


