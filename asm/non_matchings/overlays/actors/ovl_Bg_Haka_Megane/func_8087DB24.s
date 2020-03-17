glabel func_8087DB24
/* 000E4 8087DB24 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 000E8 8087DB28 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 000EC 8087DB2C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 000F0 8087DB30 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 000F4 8087DB34 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 000F8 8087DB38 342117A4 */  ori     $at, $at, 0x17A4           ## $at = 000117A4
/* 000FC 8087DB3C 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00100 8087DB40 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00104 8087DB44 00A12021 */  addu    $a0, $a1, $at              
/* 00108 8087DB48 0C026062 */  jal     Object_IsLoaded
              
/* 0010C 8087DB4C 82050169 */  lb      $a1, 0x0169($s0)           ## 00000169
/* 00110 8087DB50 10400022 */  beq     $v0, $zero, .L8087DBDC     
/* 00114 8087DB54 3C0F8088 */  lui     $t7, %hi(func_8087DC94)    ## $t7 = 80880000
/* 00118 8087DB58 820E0169 */  lb      $t6, 0x0169($s0)           ## 00000169
/* 0011C 8087DB5C 25EFDC94 */  addiu   $t7, $t7, %lo(func_8087DC94) ## $t7 = 8087DC94
/* 00120 8087DB60 AE0F0134 */  sw      $t7, 0x0134($s0)           ## 00000134
/* 00124 8087DB64 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00128 8087DB68 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0012C 8087DB6C 0C00B591 */  jal     Actor_SetObjectDependency
              
/* 00130 8087DB70 A20E001E */  sb      $t6, 0x001E($s0)           ## 0000001E
/* 00134 8087DB74 3C180001 */  lui     $t8, 0x0001                ## $t8 = 00010000
/* 00138 8087DB78 0311C021 */  addu    $t8, $t8, $s1              
/* 0013C 8087DB7C 93181CC1 */  lbu     $t8, 0x1CC1($t8)           ## 00011CC1
/* 00140 8087DB80 3C0A8088 */  lui     $t2, %hi(func_8087DC64)    ## $t2 = 80880000
/* 00144 8087DB84 3C198088 */  lui     $t9, %hi(func_8087DBF0)    ## $t9 = 80880000
/* 00148 8087DB88 13000013 */  beq     $t8, $zero, .L8087DBD8     
/* 0014C 8087DB8C 254ADC64 */  addiu   $t2, $t2, %lo(func_8087DC64) ## $t2 = 8087DC64
/* 00150 8087DB90 8608001C */  lh      $t0, 0x001C($s0)           ## 0000001C
/* 00154 8087DB94 2739DBF0 */  addiu   $t9, $t9, %lo(func_8087DBF0) ## $t9 = 8087DBF0
/* 00158 8087DB98 3C048088 */  lui     $a0, %hi(D_8087DD54)       ## $a0 = 80880000
/* 0015C 8087DB9C 00084880 */  sll     $t1, $t0,  2               
/* 00160 8087DBA0 AE190164 */  sw      $t9, 0x0164($s0)           ## 00000164
/* 00164 8087DBA4 00892021 */  addu    $a0, $a0, $t1              
/* 00168 8087DBA8 8C84DD54 */  lw      $a0, %lo(D_8087DD54)($a0)  
/* 0016C 8087DBAC 5080000C */  beql    $a0, $zero, .L8087DBE0     
/* 00170 8087DBB0 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00174 8087DBB4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00178 8087DBB8 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFFC
/* 0017C 8087DBBC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00180 8087DBC0 26250810 */  addiu   $a1, $s1, 0x0810           ## $a1 = 00000810
/* 00184 8087DBC4 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 00188 8087DBC8 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 0018C 8087DBCC 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 00190 8087DBD0 10000002 */  beq     $zero, $zero, .L8087DBDC   
/* 00194 8087DBD4 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
.L8087DBD8:
/* 00198 8087DBD8 AE0A0164 */  sw      $t2, 0x0164($s0)           ## 00000164
.L8087DBDC:
/* 0019C 8087DBDC 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8087DBE0:
/* 001A0 8087DBE0 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 001A4 8087DBE4 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 001A8 8087DBE8 03E00008 */  jr      $ra                        
/* 001AC 8087DBEC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000


