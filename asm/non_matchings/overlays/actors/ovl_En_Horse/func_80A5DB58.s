.late_rodata
glabel D_80A668BC
 .word 0x3D75C28F

.text
glabel func_80A5DB58
/* 02868 80A5DB58 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 0286C 80A5DB5C 44812000 */  mtc1    $at, $f4                   ## $f4 = 10.00
/* 02870 80A5DB60 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 02874 80A5DB64 3C0180A6 */  lui     $at, %hi(D_80A668BC)       ## $at = 80A60000
/* 02878 80A5DB68 C42668BC */  lwc1    $f6, %lo(D_80A668BC)($at)  
/* 0287C 80A5DB6C 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 02880 80A5DB70 44814000 */  mtc1    $at, $f8                   ## $f8 = 6.00
/* 02884 80A5DB74 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 02888 80A5DB78 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 0288C 80A5DB7C 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 02890 80A5DB80 240E0190 */  addiu   $t6, $zero, 0x0190         ## $t6 = 00000190
/* 02894 80A5DB84 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02898 80A5DB88 AFAE001C */  sw      $t6, 0x001C($sp)           
/* 0289C 80A5DB8C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 028A0 80A5DB90 3C07BF00 */  lui     $a3, 0xBF00                ## $a3 = BF000000
/* 028A4 80A5DB94 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 028A8 80A5DB98 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 028AC 80A5DB9C 0C2972BB */  jal     func_80A5CAEC              
/* 028B0 80A5DBA0 E7A80018 */  swc1    $f8, 0x0018($sp)           
/* 028B4 80A5DBA4 26040264 */  addiu   $a0, $s0, 0x0264           ## $a0 = 00000264
/* 028B8 80A5DBA8 27A5003C */  addiu   $a1, $sp, 0x003C           ## $a1 = FFFFFFFC
/* 028BC 80A5DBAC 0C298C52 */  jal     func_80A63148              
/* 028C0 80A5DBB0 27A6003A */  addiu   $a2, $sp, 0x003A           ## $a2 = FFFFFFFA
/* 028C4 80A5DBB4 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 028C8 80A5DBB8 44815000 */  mtc1    $at, $f10                  ## $f10 = 3.00
/* 028CC 80A5DBBC C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 028D0 80A5DBC0 460A003C */  c.lt.s  $f0, $f10                  
/* 028D4 80A5DBC4 00000000 */  nop
/* 028D8 80A5DBC8 45020005 */  bc1fl   .L80A5DBE0                 
/* 028DC 80A5DBCC 3C013EC0 */  lui     $at, 0x3EC0                ## $at = 3EC00000
/* 028E0 80A5DBD0 0C29759E */  jal     func_80A5D678              
/* 028E4 80A5DBD4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 028E8 80A5DBD8 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 028EC 80A5DBDC 3C013EC0 */  lui     $at, 0x3EC0                ## $at = 3EC00000
.L80A5DBE0:
/* 028F0 80A5DBE0 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.38
/* 028F4 80A5DBE4 260401AC */  addiu   $a0, $s0, 0x01AC           ## $a0 = 000001AC
/* 028F8 80A5DBE8 46100482 */  mul.s   $f18, $f0, $f16            
/* 028FC 80A5DBEC 0C02927F */  jal     SkelAnime_Update
              
/* 02900 80A5DBF0 E61201C8 */  swc1    $f18, 0x01C8($s0)          ## 000001C8
/* 02904 80A5DBF4 50400021 */  beql    $v0, $zero, .L80A5DC7C     
/* 02908 80A5DBF8 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 0290C 80A5DBFC 0C296EA1 */  jal     func_80A5BA84              
/* 02910 80A5DC00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02914 80A5DC04 44806000 */  mtc1    $zero, $f12                ## $f12 = 0.00
/* 02918 80A5DC08 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 0291C 80A5DC0C 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 02920 80A5DC10 0C02A800 */  jal     func_800AA000              
/* 02924 80A5DC14 240700FF */  addiu   $a3, $zero, 0x00FF         ## $a3 = 000000FF
/* 02928 80A5DC18 3C0140C0 */  lui     $at, 0x40C0                ## $at = 40C00000
/* 0292C 80A5DC1C 44812000 */  mtc1    $at, $f4                   ## $f4 = 6.00
/* 02930 80A5DC20 C6000068 */  lwc1    $f0, 0x0068($s0)           ## 00000068
/* 02934 80A5DC24 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 02938 80A5DC28 4600203E */  c.le.s  $f4, $f0                   
/* 0293C 80A5DC2C 00000000 */  nop
/* 02940 80A5DC30 45020006 */  bc1fl   .L80A5DC4C                 
/* 02944 80A5DC34 44813000 */  mtc1    $at, $f6                   ## $f6 = 3.00
/* 02948 80A5DC38 0C297723 */  jal     func_80A5DC8C              
/* 0294C 80A5DC3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02950 80A5DC40 1000000E */  beq     $zero, $zero, .L80A5DC7C   
/* 02954 80A5DC44 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 02958 80A5DC48 44813000 */  mtc1    $at, $f6                   ## $f6 = 0.00
.L80A5DC4C:
/* 0295C 80A5DC4C 00000000 */  nop
/* 02960 80A5DC50 4606003C */  c.lt.s  $f0, $f6                   
/* 02964 80A5DC54 00000000 */  nop
/* 02968 80A5DC58 45000005 */  bc1f    .L80A5DC70                 
/* 0296C 80A5DC5C 00000000 */  nop
/* 02970 80A5DC60 0C29759E */  jal     func_80A5D678              
/* 02974 80A5DC64 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02978 80A5DC68 10000004 */  beq     $zero, $zero, .L80A5DC7C   
/* 0297C 80A5DC6C 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A5DC70:
/* 02980 80A5DC70 0C2976C3 */  jal     func_80A5DB0C              
/* 02984 80A5DC74 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02988 80A5DC78 8FBF002C */  lw      $ra, 0x002C($sp)           
.L80A5DC7C:
/* 0298C 80A5DC7C 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 02990 80A5DC80 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 02994 80A5DC84 03E00008 */  jr      $ra                        
/* 02998 80A5DC88 00000000 */  nop
