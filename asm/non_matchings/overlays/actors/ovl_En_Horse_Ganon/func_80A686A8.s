glabel func_80A686A8
/* 00048 80A686A8 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 0004C 80A686AC AFB00018 */  sw      $s0, 0x0018($sp)
/* 00050 80A686B0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00054 80A686B4 AFBF001C */  sw      $ra, 0x001C($sp)
/* 00058 80A686B8 AFA5003C */  sw      $a1, 0x003C($sp)
/* 0005C 80A686BC 3C0480A7 */  lui     $a0, %hi(D_80A69248)       ## $a0 = 80A70000
/* 00060 80A686C0 24849248 */  addiu   $a0, $a0, %lo(D_80A69248)  ## $a0 = 80A69248
/* 00064 80A686C4 8E0501EC */  lw      $a1, 0x01EC($s0)           ## 000001EC
/* 00068 80A686C8 0C29A198 */  jal     func_80A68660
/* 0006C 80A686CC 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFF0
/* 00070 80A686D0 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00074 80A686D4 AFA50020 */  sw      $a1, 0x0020($sp)
/* 00078 80A686D8 0C032D9E */  jal     Math3D_Vec3f_DistXYZ
/* 0007C 80A686DC 27A40028 */  addiu   $a0, $sp, 0x0028           ## $a0 = FFFFFFF0
/* 00080 80A686E0 3C0143C8 */  lui     $at, 0x43C8                ## $at = 43C80000
/* 00084 80A686E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 400.00
/* 00088 80A686E8 00000000 */  nop
/* 0008C 80A686EC 4604003E */  c.le.s  $f0, $f4
/* 00090 80A686F0 00000000 */  nop
/* 00094 80A686F4 4502000D */  bc1fl   .L80A6872C
/* 00098 80A686F8 8FA40020 */  lw      $a0, 0x0020($sp)
/* 0009C 80A686FC 8E0E01EC */  lw      $t6, 0x01EC($s0)           ## 000001EC
/* 000A0 80A68700 3C0480A7 */  lui     $a0, %hi(D_80A69248)       ## $a0 = 80A70000
/* 000A4 80A68704 24849248 */  addiu   $a0, $a0, %lo(D_80A69248)  ## $a0 = 80A69248
/* 000A8 80A68708 25CF0001 */  addiu   $t7, $t6, 0x0001           ## $t7 = 00000001
/* 000AC 80A6870C 29E1000E */  slti    $at, $t7, 0x000E
/* 000B0 80A68710 14200005 */  bne     $at, $zero, .L80A68728
/* 000B4 80A68714 AE0F01EC */  sw      $t7, 0x01EC($s0)           ## 000001EC
/* 000B8 80A68718 AE0001EC */  sw      $zero, 0x01EC($s0)         ## 000001EC
/* 000BC 80A6871C 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 000C0 80A68720 0C29A198 */  jal     func_80A68660
/* 000C4 80A68724 27A60028 */  addiu   $a2, $sp, 0x0028           ## $a2 = FFFFFFF0
.L80A68728:
/* 000C8 80A68728 8FA40020 */  lw      $a0, 0x0020($sp)
.L80A6872C:
/* 000CC 80A6872C 0C01E01A */  jal     Math_Vec3f_Yaw

/* 000D0 80A68730 27A50028 */  addiu   $a1, $sp, 0x0028           ## $a1 = FFFFFFF0
/* 000D4 80A68734 86030032 */  lh      $v1, 0x0032($s0)           ## 00000032
/* 000D8 80A68738 00432023 */  subu    $a0, $v0, $v1
/* 000DC 80A6873C 00042400 */  sll     $a0, $a0, 16
/* 000E0 80A68740 00042403 */  sra     $a0, $a0, 16
/* 000E4 80A68744 2881012D */  slti    $at, $a0, 0x012D
/* 000E8 80A68748 14200003 */  bne     $at, $zero, .L80A68758
/* 000EC 80A6874C 2479012C */  addiu   $t9, $v1, 0x012C           ## $t9 = 0000012C
/* 000F0 80A68750 10000008 */  beq     $zero, $zero, .L80A68774
/* 000F4 80A68754 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
.L80A68758:
/* 000F8 80A68758 2881FED4 */  slti    $at, $a0, 0xFED4
/* 000FC 80A6875C 10200004 */  beq     $at, $zero, .L80A68770
/* 00100 80A68760 00644821 */  addu    $t1, $v1, $a0
/* 00104 80A68764 2468FED4 */  addiu   $t0, $v1, 0xFED4           ## $t0 = FFFFFED4
/* 00108 80A68768 10000002 */  beq     $zero, $zero, .L80A68774
/* 0010C 80A6876C A6080032 */  sh      $t0, 0x0032($s0)           ## 00000032
.L80A68770:
/* 00110 80A68770 A6090032 */  sh      $t1, 0x0032($s0)           ## 00000032
.L80A68774:
/* 00114 80A68774 860A0032 */  lh      $t2, 0x0032($s0)           ## 00000032
/* 00118 80A68778 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0011C 80A6877C A60A00B6 */  sh      $t2, 0x00B6($s0)           ## 000000B6
/* 00120 80A68780 8FAB003C */  lw      $t3, 0x003C($sp)
/* 00124 80A68784 0C00B6E3 */  jal     func_8002DB8C
/* 00128 80A68788 8D651C44 */  lw      $a1, 0x1C44($t3)           ## 00001C44
/* 0012C 80A6878C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 00130 80A68790 44813000 */  mtc1    $at, $f6                   ## $f6 = 300.00
/* 00134 80A68794 3C014140 */  lui     $at, 0x4140                ## $at = 41400000
/* 00138 80A68798 4606003E */  c.le.s  $f0, $f6
/* 0013C 80A6879C 00000000 */  nop
/* 00140 80A687A0 45020014 */  bc1fl   .L80A687F4
/* 00144 80A687A4 8E0C01EC */  lw      $t4, 0x01EC($s0)           ## 000001EC
/* 00148 80A687A8 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 0014C 80A687AC 44814000 */  mtc1    $at, $f8                   ## $f8 = 12.00
/* 00150 80A687B0 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00154 80A687B4 4608003C */  c.lt.s  $f0, $f8
/* 00158 80A687B8 00000000 */  nop
/* 0015C 80A687BC 45020008 */  bc1fl   .L80A687E0
/* 00160 80A687C0 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
/* 00164 80A687C4 3C013F80 */  lui     $at, 0x3F80                ## $at = 3F800000
/* 00168 80A687C8 44815000 */  mtc1    $at, $f10                  ## $f10 = 1.00
/* 0016C 80A687CC 00000000 */  nop
/* 00170 80A687D0 460A0400 */  add.s   $f16, $f0, $f10
/* 00174 80A687D4 10000021 */  beq     $zero, $zero, .L80A6885C
/* 00178 80A687D8 E6100068 */  swc1    $f16, 0x0068($s0)          ## 00000068
/* 0017C 80A687DC 44819000 */  mtc1    $at, $f18                  ## $f18 = 1.00
.L80A687E0:
/* 00180 80A687E0 00000000 */  nop
/* 00184 80A687E4 46120101 */  sub.s   $f4, $f0, $f18
/* 00188 80A687E8 1000001C */  beq     $zero, $zero, .L80A6885C
/* 0018C 80A687EC E6040068 */  swc1    $f4, 0x0068($s0)           ## 00000068
/* 00190 80A687F0 8E0C01EC */  lw      $t4, 0x01EC($s0)           ## 000001EC
.L80A687F4:
/* 00194 80A687F4 3C0E80A7 */  lui     $t6, %hi(D_80A6924E)       ## $t6 = 80A70000
/* 00198 80A687F8 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 0019C 80A687FC 000C68C0 */  sll     $t5, $t4,  3
/* 001A0 80A68800 01CD7021 */  addu    $t6, $t6, $t5
/* 001A4 80A68804 91CE924E */  lbu     $t6, %lo(D_80A6924E)($t6)
/* 001A8 80A68808 3C014F80 */  lui     $at, 0x4F80                ## $at = 4F800000
/* 001AC 80A6880C 448E3000 */  mtc1    $t6, $f6                   ## $f6 = -0.00
/* 001B0 80A68810 05C10004 */  bgez    $t6, .L80A68824
/* 001B4 80A68814 46803220 */  cvt.s.w $f8, $f6
/* 001B8 80A68818 44815000 */  mtc1    $at, $f10                  ## $f10 = 4294967296.00
/* 001BC 80A6881C 00000000 */  nop
/* 001C0 80A68820 460A4200 */  add.s   $f8, $f8, $f10
.L80A68824:
/* 001C4 80A68824 4608003C */  c.lt.s  $f0, $f8
/* 001C8 80A68828 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001CC 80A6882C 45020008 */  bc1fl   .L80A68850
/* 001D0 80A68830 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 001D4 80A68834 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 001D8 80A68838 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 001DC 80A6883C 00000000 */  nop
/* 001E0 80A68840 46100480 */  add.s   $f18, $f0, $f16
/* 001E4 80A68844 10000005 */  beq     $zero, $zero, .L80A6885C
/* 001E8 80A68848 E6120068 */  swc1    $f18, 0x0068($s0)          ## 00000068
/* 001EC 80A6884C 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
.L80A68850:
/* 001F0 80A68850 00000000 */  nop
/* 001F4 80A68854 46040181 */  sub.s   $f6, $f0, $f4
/* 001F8 80A68858 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
.L80A6885C:
/* 001FC 80A6885C 8FBF001C */  lw      $ra, 0x001C($sp)
/* 00200 80A68860 8FB00018 */  lw      $s0, 0x0018($sp)
/* 00204 80A68864 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00208 80A68868 03E00008 */  jr      $ra
/* 0020C 80A6886C 00000000 */  nop


