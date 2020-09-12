.rdata

glabel D_8082FCE4
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

glabel D_8082FD00
    .asciz "zoom_name=%d\n"
    .balign 4

glabel D_8082FD10
    .asciz "J_N=%d  point=%d\n"
    .balign 4

glabel D_8082FD24
    .asciz "../z_kaleido_scope_PAL.c"
    .balign 4

.text
glabel func_80823548
/* 0FD28 80823548 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 0FD2C 8082354C 3C030001 */  lui     $v1, 0x0001                ## $v1 = 00010000
/* 0FD30 80823550 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0FD34 80823554 00831021 */  addu    $v0, $a0, $v1              
/* 0FD38 80823558 944F0948 */  lhu     $t7, 0x0948($v0)           ## 00000948
/* 0FD3C 8082355C 944E099C */  lhu     $t6, 0x099C($v0)           ## 0000099C
/* 0FD40 80823560 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FD44 80823564 000FC040 */  sll     $t8, $t7,  1               
/* 0FD48 80823568 0098C821 */  addu    $t9, $a0, $t8              
/* 0FD4C 8082356C 03234021 */  addu    $t0, $t9, $v1              
/* 0FD50 80823570 9509099E */  lhu     $t1, 0x099E($t0)           ## 0000099E
/* 0FD54 80823574 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 0FD58 80823578 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 0FD5C 8082357C 15C90007 */  bne     $t6, $t1, .L8082359C       
/* 0FD60 80823580 00811021 */  addu    $v0, $a0, $at              
/* 0FD64 80823584 944401E8 */  lhu     $a0, 0x01E8($v0)           ## 000001E8
/* 0FD68 80823588 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0FD6C 8082358C 5481005C */  bnel    $a0, $at, .L80823700       
/* 0FD70 80823590 944F025E */  lhu     $t7, 0x025E($v0)           ## 0000025E
/* 0FD74 80823594 844A0238 */  lh      $t2, 0x0238($v0)           ## 00000238
/* 0FD78 80823598 11400058 */  beq     $t2, $zero, .L808236FC     
.L8082359C:
/* 0FD7C 8082359C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0FD80 808235A0 34210760 */  ori     $at, $at, 0x0760           ## $at = 00010760
/* 0FD84 808235A4 00E11021 */  addu    $v0, $a3, $at              
/* 0FD88 808235A8 944B01E8 */  lhu     $t3, 0x01E8($v0)           ## 000001E8
/* 0FD8C 808235AC 244401B8 */  addiu   $a0, $v0, 0x01B8           ## $a0 = 000001B8
/* 0FD90 808235B0 244501D0 */  addiu   $a1, $v0, 0x01D0           ## $a1 = 000001D0
/* 0FD94 808235B4 000B6040 */  sll     $t4, $t3,  1               
/* 0FD98 808235B8 004C6821 */  addu    $t5, $v0, $t4              
/* 0FD9C 808235BC 95A3023E */  lhu     $v1, 0x023E($t5)           ## 0000023E
/* 0FDA0 808235C0 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 0FDA4 808235C4 A443023C */  sh      $v1, 0x023C($v0)           ## 0000023C
/* 0FDA8 808235C8 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0FDAC 808235CC 0C001874 */  jal     osCreateMesgQueue
              
/* 0FDB0 808235D0 A7A3002A */  sh      $v1, 0x002A($sp)           
/* 0FDB4 808235D4 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0FDB8 808235D8 240103E7 */  addiu   $at, $zero, 0x03E7         ## $at = 000003E7
/* 0FDBC 808235DC 97A3002A */  lhu     $v1, 0x002A($sp)           
/* 0FDC0 808235E0 9445023C */  lhu     $a1, 0x023C($v0)           ## 0000023C
/* 0FDC4 808235E4 50A10070 */  beql    $a1, $at, .L808237A8       
/* 0FDC8 808235E8 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0FDCC 808235EC 945801E8 */  lhu     $t8, 0x01E8($v0)           ## 000001E8
/* 0FDD0 808235F0 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 0FDD4 808235F4 3C198083 */  lui     $t9, %hi(D_8082ABA8)       ## $t9 = 80830000
/* 0FDD8 808235F8 1701001A */  bne     $t8, $at, .L80823664       
/* 0FDDC 808235FC 3C048083 */  lui     $a0, %hi(D_8082FD00)       ## $a0 = 80830000
/* 0FDE0 80823600 8739ABA8 */  lh      $t9, %lo(D_8082ABA8)($t9)  
/* 0FDE4 80823604 3C0E0088 */  lui     $t6, %hi(_map_name_staticSegmentRomStart)
/* 0FDE8 80823608 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0FDEC 8082360C 17200015 */  bne     $t9, $zero, .L80823664     
/* 0FDF0 80823610 25CEE000 */  addiu   $t6, %lo(_map_name_staticSegmentRomStart)
/* 0FDF4 80823614 3C048016 */  lui     $a0, %hi(gSaveContext+0x1409)
/* 0FDF8 80823618 9084FA69 */  lbu     $a0, %lo(gSaveContext+0x1409)($a0)
/* 0FDFC 8082361C 3C078083 */  lui     $a3, %hi(D_8082FCE4)       ## $a3 = 80830000
/* 0FE00 80823620 24E7FCE4 */  addiu   $a3, $a3, %lo(D_8082FCE4)  ## $a3 = 8082FCE4
/* 0FE04 80823624 10800003 */  beq     $a0, $zero, .L80823634     
/* 0FE08 80823628 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 0FE0C 8082362C 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 0000000C
/* 0FE10 80823630 3063FFFF */  andi    $v1, $v1, 0xFFFF           ## $v1 = 0000000C
.L80823634:
/* 0FE14 80823634 14810003 */  bne     $a0, $at, .L80823644       
/* 0FE18 80823638 2409082D */  addiu   $t1, $zero, 0x082D         ## $t1 = 0000082D
/* 0FE1C 8082363C 2463000C */  addiu   $v1, $v1, 0x000C           ## $v1 = 00000018
/* 0FE20 80823640 3063FFFF */  andi    $v1, $v1, 0xFFFF           ## $v1 = 00000018
.L80823644:
/* 0FE24 80823644 8C440138 */  lw      $a0, 0x0138($v0)           ## 00000138
/* 0FE28 80823648 00034280 */  sll     $t0, $v1, 10               
/* 0FE2C 8082364C 010E2821 */  addu    $a1, $t0, $t6              
/* 0FE30 80823650 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0FE34 80823654 0C0006A8 */  jal     DmaMgr_SendRequest1              
/* 0FE38 80823658 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 0FE3C 8082365C 10000025 */  beq     $zero, $zero, .L808236F4   
/* 0FE40 80823660 8FA20024 */  lw      $v0, 0x0024($sp)           
.L80823664:
/* 0FE44 80823664 2484FD00 */  addiu   $a0, $a0, %lo(D_8082FD00)  ## $a0 = FFFFFD00
/* 0FE48 80823668 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0FE4C 8082366C 0C00084C */  jal     osSyncPrintf
              
/* 0FE50 80823670 A7A3002A */  sh      $v1, 0x002A($sp)           
/* 0FE54 80823674 3C048016 */  lui     $a0, %hi(gSaveContext+0x1409)
/* 0FE58 80823678 9084FA69 */  lbu     $a0, %lo(gSaveContext+0x1409)($a0)
/* 0FE5C 8082367C 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0FE60 80823680 97A3002A */  lhu     $v1, 0x002A($sp)           
/* 0FE64 80823684 10800003 */  beq     $a0, $zero, .L80823694     
/* 0FE68 80823688 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0FE6C 8082368C 2463007B */  addiu   $v1, $v1, 0x007B           ## $v1 = 0000007B
/* 0FE70 80823690 3063FFFF */  andi    $v1, $v1, 0xFFFF           ## $v1 = 0000007B
.L80823694:
/* 0FE74 80823694 14810003 */  bne     $a0, $at, .L808236A4       
/* 0FE78 80823698 00802825 */  or      $a1, $a0, $zero            ## $a1 = 80160000
/* 0FE7C 8082369C 2463007B */  addiu   $v1, $v1, 0x007B           ## $v1 = 000000F6
/* 0FE80 808236A0 3063FFFF */  andi    $v1, $v1, 0xFFFF           ## $v1 = 000000F6
.L808236A4:
/* 0FE84 808236A4 3C048083 */  lui     $a0, %hi(D_8082FD10)       ## $a0 = 80830000
/* 0FE88 808236A8 2484FD10 */  addiu   $a0, $a0, %lo(D_8082FD10)  ## $a0 = 8082FD10
/* 0FE8C 808236AC 00603025 */  or      $a2, $v1, $zero            ## $a2 = 000000F6
/* 0FE90 808236B0 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 0FE94 808236B4 0C00084C */  jal     osSyncPrintf
              
/* 0FE98 808236B8 AFA30020 */  sw      $v1, 0x0020($sp)           
/* 0FE9C 808236BC 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 0FEA0 808236C0 8FAA0020 */  lw      $t2, 0x0020($sp)           
/* 0FEA4 808236C4 3C0C0082 */  lui     $t4, %hi(_item_name_staticSegmentRomStart)
/* 0FEA8 808236C8 258C1000 */  addiu   $t4, %lo(_item_name_staticSegmentRomStart)
/* 0FEAC 808236CC 3C078083 */  lui     $a3, %hi(D_8082FD24)       ## $a3 = 80830000
/* 0FEB0 808236D0 240D0848 */  addiu   $t5, $zero, 0x0848         ## $t5 = 00000848
/* 0FEB4 808236D4 8C440138 */  lw      $a0, 0x0138($v0)           ## 00000138
/* 0FEB8 808236D8 000A5A80 */  sll     $t3, $t2, 10               
/* 0FEBC 808236DC 016C2821 */  addu    $a1, $t3, $t4              
/* 0FEC0 808236E0 AFAD0010 */  sw      $t5, 0x0010($sp)           
/* 0FEC4 808236E4 24E7FD24 */  addiu   $a3, $a3, %lo(D_8082FD24)  ## $a3 = 8082FD24
/* 0FEC8 808236E8 0C0006A8 */  jal     DmaMgr_SendRequest1              
/* 0FECC 808236EC 24060400 */  addiu   $a2, $zero, 0x0400         ## $a2 = 00000400
/* 0FED0 808236F0 8FA20024 */  lw      $v0, 0x0024($sp)           
.L808236F4:
/* 0FED4 808236F4 1000002B */  beq     $zero, $zero, .L808237A4   
/* 0FED8 808236F8 A440025C */  sh      $zero, 0x025C($v0)         ## 0000025C
.L808236FC:
/* 0FEDC 808236FC 944F025E */  lhu     $t7, 0x025E($v0)           ## 0000025E
.L80823700:
/* 0FEE0 80823700 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0FEE4 80823704 55E00027 */  bnel    $t7, $zero, .L808237A4     
/* 0FEE8 80823708 A440025C */  sh      $zero, 0x025C($v0)         ## 0000025C
/* 0FEEC 8082370C 1481000B */  bne     $a0, $at, .L8082373C       
/* 0FEF0 80823710 00000000 */  nop
/* 0FEF4 80823714 9443024A */  lhu     $v1, 0x024A($v0)           ## 0000024A
/* 0FEF8 80823718 28610006 */  slti    $at, $v1, 0x0006           
/* 0FEFC 8082371C 14200007 */  bne     $at, $zero, .L8082373C     
/* 0FF00 80823720 28610012 */  slti    $at, $v1, 0x0012           
/* 0FF04 80823724 10200005 */  beq     $at, $zero, .L8082373C     
/* 0FF08 80823728 00000000 */  nop
/* 0FF0C 8082372C 945801E4 */  lhu     $t8, 0x01E4($v0)           ## 000001E4
/* 0FF10 80823730 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 0FF14 80823734 53010009 */  beql    $t8, $at, .L8082375C       
/* 0FF18 80823738 9448023C */  lhu     $t0, 0x023C($v0)           ## 0000023C
.L8082373C:
/* 0FF1C 8082373C 10800006 */  beq     $a0, $zero, .L80823758     
/* 0FF20 80823740 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 0FF24 80823744 14810014 */  bne     $a0, $at, .L80823798       
/* 0FF28 80823748 00000000 */  nop
/* 0FF2C 8082374C 84590228 */  lh      $t9, 0x0228($v0)           ## 00000228
/* 0FF30 80823750 13200011 */  beq     $t9, $zero, .L80823798     
/* 0FF34 80823754 00000000 */  nop
.L80823758:
/* 0FF38 80823758 9448023C */  lhu     $t0, 0x023C($v0)           ## 0000023C
.L8082375C:
/* 0FF3C 8082375C 2401002C */  addiu   $at, $zero, 0x002C         ## $at = 0000002C
/* 0FF40 80823760 51010011 */  beql    $t0, $at, .L808237A8       
/* 0FF44 80823764 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0FF48 80823768 944E025C */  lhu     $t6, 0x025C($v0)           ## 0000025C
/* 0FF4C 8082376C 3C0A8016 */  lui     $t2, %hi(gGameInfo)
/* 0FF50 80823770 25C90001 */  addiu   $t1, $t6, 0x0001           ## $t1 = 00000001
/* 0FF54 80823774 A449025C */  sh      $t1, 0x025C($v0)           ## 0000025C
/* 0FF58 80823778 8D4AFA90 */  lw      $t2, %lo(gGameInfo)($t2)
/* 0FF5C 8082377C 312CFFFF */  andi    $t4, $t1, 0xFFFF           ## $t4 = 00000001
/* 0FF60 80823780 854B0E44 */  lh      $t3, 0x0E44($t2)           ## 80160E44
/* 0FF64 80823784 016C082A */  slt     $at, $t3, $t4              
/* 0FF68 80823788 50200007 */  beql    $at, $zero, .L808237A8     
/* 0FF6C 8082378C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0FF70 80823790 10000004 */  beq     $zero, $zero, .L808237A4   
/* 0FF74 80823794 A440025C */  sh      $zero, 0x025C($v0)         ## 0000025C
.L80823798:
/* 0FF78 80823798 10000002 */  beq     $zero, $zero, .L808237A4   
/* 0FF7C 8082379C A440025C */  sh      $zero, 0x025C($v0)         ## 0000025C
/* 0FF80 808237A0 A440025C */  sh      $zero, 0x025C($v0)         ## 0000025C
.L808237A4:
/* 0FF84 808237A4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L808237A8:
/* 0FF88 808237A8 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 0FF8C 808237AC 03E00008 */  jr      $ra                        
/* 0FF90 808237B0 00000000 */  nop
