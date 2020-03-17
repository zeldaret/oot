glabel func_80AA9870
/* 03820 80AA9870 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 03824 80AA9874 8FAE0048 */  lw      $t6, 0x0048($sp)           
/* 03828 80AA9878 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0382C 80AA987C AFA40038 */  sw      $a0, 0x0038($sp)           
/* 03830 80AA9880 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 03834 80AA9884 AFA60040 */  sw      $a2, 0x0040($sp)           
/* 03838 80AA9888 AFA70044 */  sw      $a3, 0x0044($sp)           
/* 0383C 80AA988C 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 03840 80AA9890 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
/* 03844 80AA9894 2401000C */  addiu   $at, $zero, 0x000C         ## $at = 0000000C
/* 03848 80AA9898 55E0001D */  bnel    $t7, $zero, .L80AA9910     
/* 0384C 80AA989C 8FAA0048 */  lw      $t2, 0x0048($sp)           
/* 03850 80AA98A0 14A1000F */  bne     $a1, $at, .L80AA98E0       
/* 03854 80AA98A4 3C0480AB */  lui     $a0, %hi(D_80AA9E08)       ## $a0 = 80AB0000
/* 03858 80AA98A8 24849E08 */  addiu   $a0, $a0, %lo(D_80AA9E08)  ## $a0 = 80AA9E08
/* 0385C 80AA98AC 25C50338 */  addiu   $a1, $t6, 0x0338           ## $a1 = 00000338
/* 03860 80AA98B0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03864 80AA98B4 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 03868 80AA98B8 8FB90048 */  lw      $t9, 0x0048($sp)           
/* 0386C 80AA98BC 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 03870 80AA98C0 8FA50038 */  lw      $a1, 0x0038($sp)           
/* 03874 80AA98C4 87280334 */  lh      $t0, 0x0334($t9)           ## 00000334
/* 03878 80AA98C8 03202025 */  or      $a0, $t9, $zero            ## $a0 = 00000000
/* 0387C 80AA98CC 19000004 */  blez    $t0, .L80AA98E0            
/* 03880 80AA98D0 00000000 */  nop
/* 03884 80AA98D4 0C2AA510 */  jal     func_80AA9440              
/* 03888 80AA98D8 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 0388C 80AA98DC 8FA30034 */  lw      $v1, 0x0034($sp)           
.L80AA98E0:
/* 03890 80AA98E0 3C0780AB */  lui     $a3, %hi(D_80AA9DFC)       ## $a3 = 80AB0000
/* 03894 80AA98E4 24E79DFC */  addiu   $a3, $a3, %lo(D_80AA9DFC)  ## $a3 = 80AA9DFC
/* 03898 80AA98E8 2409001B */  addiu   $t1, $zero, 0x001B         ## $t1 = 0000001B
/* 0389C 80AA98EC AFA90010 */  sw      $t1, 0x0010($sp)           
/* 038A0 80AA98F0 AFA70014 */  sw      $a3, 0x0014($sp)           
/* 038A4 80AA98F4 8FA40048 */  lw      $a0, 0x0048($sp)           
/* 038A8 80AA98F8 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 038AC 80AA98FC 24060016 */  addiu   $a2, $zero, 0x0016         ## $a2 = 00000016
/* 038B0 80AA9900 0C00AF6C */  jal     func_8002BDB0              
/* 038B4 80AA9904 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 038B8 80AA9908 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 038BC 80AA990C 8FAA0048 */  lw      $t2, 0x0048($sp)           
.L80AA9910:
/* 038C0 80AA9910 8FAC003C */  lw      $t4, 0x003C($sp)           
/* 038C4 80AA9914 854B0328 */  lh      $t3, 0x0328($t2)           ## 00000328
/* 038C8 80AA9918 258DFFFA */  addiu   $t5, $t4, 0xFFFA           ## $t5 = FFFFFFFA
/* 038CC 80AA991C 2DA10016 */  sltiu   $at, $t5, 0x0016           
/* 038D0 80AA9920 51600036 */  beql    $t3, $zero, .L80AA99FC     
/* 038D4 80AA9924 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 038D8 80AA9928 10200019 */  beq     $at, $zero, .L80AA9990     
/* 038DC 80AA992C 000D6880 */  sll     $t5, $t5,  2               
/* 038E0 80AA9930 3C0180AB */  lui     $at, %hi(jtbl_80AA9EA0)       ## $at = 80AB0000
/* 038E4 80AA9934 002D0821 */  addu    $at, $at, $t5              
/* 038E8 80AA9938 8C2D9EA0 */  lw      $t5, %lo(jtbl_80AA9EA0)($at)  
/* 038EC 80AA993C 01A00008 */  jr      $t5                        
/* 038F0 80AA9940 00000000 */  nop
glabel L80AA9944
/* 038F4 80AA9944 10000012 */  beq     $zero, $zero, .L80AA9990   
/* 038F8 80AA9948 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
glabel L80AA994C
/* 038FC 80AA994C 10000010 */  beq     $zero, $zero, .L80AA9990   
/* 03900 80AA9950 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
glabel L80AA9954
/* 03904 80AA9954 1000000E */  beq     $zero, $zero, .L80AA9990   
/* 03908 80AA9958 24030002 */  addiu   $v1, $zero, 0x0002         ## $v1 = 00000002
glabel L80AA995C
/* 0390C 80AA995C 1000000C */  beq     $zero, $zero, .L80AA9990   
/* 03910 80AA9960 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
glabel L80AA9964
/* 03914 80AA9964 1000000A */  beq     $zero, $zero, .L80AA9990   
/* 03918 80AA9968 24030004 */  addiu   $v1, $zero, 0x0004         ## $v1 = 00000004
glabel L80AA996C
/* 0391C 80AA996C 10000008 */  beq     $zero, $zero, .L80AA9990   
/* 03920 80AA9970 24030005 */  addiu   $v1, $zero, 0x0005         ## $v1 = 00000005
glabel L80AA9974
/* 03924 80AA9974 10000006 */  beq     $zero, $zero, .L80AA9990   
/* 03928 80AA9978 24030006 */  addiu   $v1, $zero, 0x0006         ## $v1 = 00000006
glabel L80AA997C
/* 0392C 80AA997C 10000004 */  beq     $zero, $zero, .L80AA9990   
/* 03930 80AA9980 24030007 */  addiu   $v1, $zero, 0x0007         ## $v1 = 00000007
glabel L80AA9984
/* 03934 80AA9984 10000002 */  beq     $zero, $zero, .L80AA9990   
/* 03938 80AA9988 24030008 */  addiu   $v1, $zero, 0x0008         ## $v1 = 00000008
glabel L80AA998C
/* 0393C 80AA998C 24030009 */  addiu   $v1, $zero, 0x0009         ## $v1 = 00000009
glabel L80AA9990
.L80AA9990:
/* 03940 80AA9990 04600019 */  bltz    $v1, .L80AA99F8            
/* 03944 80AA9994 3C0480AB */  lui     $a0, %hi(D_80AA9E14)       ## $a0 = 80AB0000
/* 03948 80AA9998 24849E14 */  addiu   $a0, $a0, %lo(D_80AA9E14)  ## $a0 = 80AA9E14
/* 0394C 80AA999C 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFEC
/* 03950 80AA99A0 0C0346BD */  jal     Matrix_MultVec3f              
/* 03954 80AA99A4 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 03958 80AA99A8 C7A40024 */  lwc1    $f4, 0x0024($sp)           
/* 0395C 80AA99AC 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 03960 80AA99B0 8FAF0048 */  lw      $t7, 0x0048($sp)           
/* 03964 80AA99B4 4600218D */  trunc.w.s $f6, $f4                   
/* 03968 80AA99B8 0003C080 */  sll     $t8, $v1,  2               
/* 0396C 80AA99BC 0303C023 */  subu    $t8, $t8, $v1              
/* 03970 80AA99C0 0018C040 */  sll     $t8, $t8,  1               
/* 03974 80AA99C4 44083000 */  mfc1    $t0, $f6                   
/* 03978 80AA99C8 01F81021 */  addu    $v0, $t7, $t8              
/* 0397C 80AA99CC A448014C */  sh      $t0, 0x014C($v0)           ## 0000014C
/* 03980 80AA99D0 C7A80028 */  lwc1    $f8, 0x0028($sp)           
/* 03984 80AA99D4 4600428D */  trunc.w.s $f10, $f8                  
/* 03988 80AA99D8 44095000 */  mfc1    $t1, $f10                  
/* 0398C 80AA99DC 00000000 */  nop
/* 03990 80AA99E0 A449014E */  sh      $t1, 0x014E($v0)           ## 0000014E
/* 03994 80AA99E4 C7B0002C */  lwc1    $f16, 0x002C($sp)          
/* 03998 80AA99E8 4600848D */  trunc.w.s $f18, $f16                 
/* 0399C 80AA99EC 440B9000 */  mfc1    $t3, $f18                  
/* 039A0 80AA99F0 00000000 */  nop
/* 039A4 80AA99F4 A44B0150 */  sh      $t3, 0x0150($v0)           ## 00000150
.L80AA99F8:
/* 039A8 80AA99F8 8FBF001C */  lw      $ra, 0x001C($sp)           
.L80AA99FC:
/* 039AC 80AA99FC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 039B0 80AA9A00 03E00008 */  jr      $ra                        
/* 039B4 80AA9A04 00000000 */  nop


