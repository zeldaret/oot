glabel func_8084EAC0
/* 1C8B0 8084EAC0 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 1C8B4 8084EAC4 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 1C8B8 8084EAC8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 1C8BC 8084EACC AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1C8C0 8084EAD0 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 1C8C4 8084EAD4 260601B4 */  addiu   $a2, $s0, 0x01B4           ## $a2 = 000001B4
/* 1C8C8 8084EAD8 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 1C8CC 8084EADC 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 000001B4
/* 1C8D0 8084EAE0 0C028EF0 */  jal     func_800A3BC0              
/* 1C8D4 8084EAE4 AFA60020 */  sw      $a2, 0x0020($sp)           
/* 1C8D8 8084EAE8 10400043 */  beq     $v0, $zero, .L8084EBF8     
/* 1C8DC 8084EAEC 8FA60020 */  lw      $a2, 0x0020($sp)           
/* 1C8E0 8084EAF0 860E0850 */  lh      $t6, 0x0850($s0)           ## 00000850
/* 1C8E4 8084EAF4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1C8E8 8084EAF8 15C00036 */  bne     $t6, $zero, .L8084EBD4     
/* 1C8EC 8084EAFC 00000000 */  nop
/* 1C8F0 8084EB00 82020154 */  lb      $v0, 0x0154($s0)           ## 00000154
/* 1C8F4 8084EB04 24010022 */  addiu   $at, $zero, 0x0022         ## $at = 00000022
/* 1C8F8 8084EB08 3C038085 */  lui     $v1, %hi(D_808549D7)       ## $v1 = 80850000
/* 1C8FC 8084EB0C 14410018 */  bne     $v0, $at, .L8084EB70       
/* 1C900 8084EB10 00621821 */  addu    $v1, $v1, $v0              
/* 1C904 8084EB14 2404FFFF */  addiu   $a0, $zero, 0xFFFF         ## $a0 = FFFFFFFF
/* 1C908 8084EB18 0C01DF64 */  jal     Math_Rand_S16Offset
              
/* 1C90C 8084EB1C 24050003 */  addiu   $a1, $zero, 0x0003         ## $a1 = 00000003
/* 1C910 8084EB20 14400002 */  bne     $v0, $zero, .L8084EB2C     
/* 1C914 8084EB24 00401825 */  or      $v1, $v0, $zero            ## $v1 = 00000000
/* 1C918 8084EB28 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L8084EB2C:
/* 1C91C 8084EB2C 04610006 */  bgez    $v1, .L8084EB48            
/* 1C920 8084EB30 3C0F8016 */  lui     $t7, 0x8016                ## $t7 = 80160000
/* 1C924 8084EB34 85EFE690 */  lh      $t7, -0x1970($t7)          ## 8015E690
/* 1C928 8084EB38 29E10011 */  slti    $at, $t7, 0x0011           
/* 1C92C 8084EB3C 10200002 */  beq     $at, $zero, .L8084EB48     
/* 1C930 8084EB40 00000000 */  nop
/* 1C934 8084EB44 24030003 */  addiu   $v1, $zero, 0x0003         ## $v1 = 00000003
.L8084EB48:
/* 1C938 8084EB48 04610006 */  bgez    $v1, .L8084EB64            
/* 1C93C 8084EB4C 0003C100 */  sll     $t8, $v1,  4               
/* 1C940 8084EB50 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1C944 8084EB54 0C021C5D */  jal     Health_ChangeBy              
/* 1C948 8084EB58 2405FFF0 */  addiu   $a1, $zero, 0xFFF0         ## $a1 = FFFFFFF0
/* 1C94C 8084EB5C 10000015 */  beq     $zero, $zero, .L8084EBB4   
/* 1C950 8084EB60 00000000 */  nop
.L8084EB64:
/* 1C954 8084EB64 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 1C958 8084EB68 10000012 */  beq     $zero, $zero, .L8084EBB4   
/* 1C95C 8084EB6C A438FA84 */  sh      $t8, -0x057C($at)          ## 8015FA84
.L8084EB70:
/* 1C960 8084EB70 906349D7 */  lbu     $v1, %lo(D_808549D7)($v1)  
/* 1C964 8084EB74 24080140 */  addiu   $t0, $zero, 0x0140         ## $t0 = 00000140
/* 1C968 8084EB78 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 1C96C 8084EB7C 30790001 */  andi    $t9, $v1, 0x0001           ## $t9 = 00000000
/* 1C970 8084EB80 13200002 */  beq     $t9, $zero, .L8084EB8C     
/* 1C974 8084EB84 30690002 */  andi    $t1, $v1, 0x0002           ## $t1 = 00000000
/* 1C978 8084EB88 A428FA84 */  sh      $t0, -0x057C($at)          ## 8015FA84
.L8084EB8C:
/* 1C97C 8084EB8C 11200004 */  beq     $t1, $zero, .L8084EBA0     
/* 1C980 8084EB90 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1C984 8084EB94 0C021DA0 */  jal     func_80087680              
/* 1C988 8084EB98 AFA30028 */  sw      $v1, 0x0028($sp)           
/* 1C98C 8084EB9C 8FA30028 */  lw      $v1, 0x0028($sp)           
.L8084EBA0:
/* 1C990 8084EBA0 306A0004 */  andi    $t2, $v1, 0x0004           ## $t2 = 00000000
/* 1C994 8084EBA4 11400003 */  beq     $t2, $zero, .L8084EBB4     
/* 1C998 8084EBA8 240B0050 */  addiu   $t3, $zero, 0x0050         ## $t3 = 00000050
/* 1C99C 8084EBAC 3C018016 */  lui     $at, 0x8016                ## $at = 80160000
/* 1C9A0 8084EBB0 A42BFA84 */  sh      $t3, -0x057C($at)          ## 8015FA84
.L8084EBB4:
/* 1C9A4 8084EBB4 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1C9A8 8084EBB8 24C62670 */  addiu   $a2, $a2, 0x2670           ## $a2 = 04002670
/* 1C9AC 8084EBBC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1C9B0 8084EBC0 0C20C8A9 */  jal     func_808322A4              
/* 1C9B4 8084EBC4 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1C9B8 8084EBC8 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 1C9BC 8084EBCC 10000030 */  beq     $zero, $zero, .L8084EC90   
/* 1C9C0 8084EBD0 A60C0850 */  sh      $t4, 0x0850($s0)           ## 00000850
.L8084EBD4:
/* 1C9C4 8084EBD4 0C20F03A */  jal     func_8083C0E8              
/* 1C9C8 8084EBD8 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 1C9CC 8084EBDC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1C9D0 8084EBE0 0C030129 */  jal     func_800C04A4              
/* 1C9D4 8084EBE4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1C9D8 8084EBE8 0C016C69 */  jal     func_8005B1A4              
/* 1C9DC 8084EBEC 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
/* 1C9E0 8084EBF0 10000028 */  beq     $zero, $zero, .L8084EC94   
/* 1C9E4 8084EBF4 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084EBF8:
/* 1C9E8 8084EBF8 86020850 */  lh      $v0, 0x0850($s0)           ## 00000850
/* 1C9EC 8084EBFC 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 1C9F0 8084EC00 3C0D8016 */  lui     $t5, 0x8016                ## $t5 = 80160000
/* 1C9F4 8084EC04 5441001A */  bnel    $v0, $at, .L8084EC70       
/* 1C9F8 8084EC08 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1C9FC 8084EC0C 85ADFA84 */  lh      $t5, -0x057C($t5)          ## 8015FA84
/* 1CA00 8084EC10 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 1CA04 8084EC14 55A00011 */  bnel    $t5, $zero, .L8084EC5C     
/* 1CA08 8084EC18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CA0C 8084EC1C 85CEFA50 */  lh      $t6, -0x05B0($t6)          ## 8015FA50
/* 1CA10 8084EC20 24010009 */  addiu   $at, $zero, 0x0009         ## $at = 00000009
/* 1CA14 8084EC24 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1CA18 8084EC28 11C1000B */  beq     $t6, $at, .L8084EC58       
/* 1CA1C 8084EC2C 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CA20 8084EC30 3C060400 */  lui     $a2, 0x0400                ## $a2 = 04000000
/* 1CA24 8084EC34 0C20CADE */  jal     func_80832B78              
/* 1CA28 8084EC38 24C62660 */  addiu   $a2, $a2, 0x2660           ## $a2 = 04002660
/* 1CA2C 8084EC3C 240F0002 */  addiu   $t7, $zero, 0x0002         ## $t7 = 00000002
/* 1CA30 8084EC40 A60F0850 */  sh      $t7, 0x0850($s0)           ## 00000850
/* 1CA34 8084EC44 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 1CA38 8084EC48 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 1CA3C 8084EC4C 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 1CA40 8084EC50 0C023B67 */  jal     func_8008ED9C              
/* 1CA44 8084EC54 2407001E */  addiu   $a3, $zero, 0x001E         ## $a3 = 0000001E
.L8084EC58:
/* 1CA48 8084EC58 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
.L8084EC5C:
/* 1CA4C 8084EC5C 0C20C9A6 */  jal     func_80832698              
/* 1CA50 8084EC60 24056010 */  addiu   $a1, $zero, 0x6010         ## $a1 = 00006010
/* 1CA54 8084EC64 1000000B */  beq     $zero, $zero, .L8084EC94   
/* 1CA58 8084EC68 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1CA5C 8084EC6C 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
.L8084EC70:
/* 1CA60 8084EC70 14410007 */  bne     $v0, $at, .L8084EC90       
/* 1CA64 8084EC74 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 1CA68 8084EC78 0C02914C */  jal     func_800A4530              
/* 1CA6C 8084EC7C 3C0541E8 */  lui     $a1, 0x41E8                ## $a1 = 41E80000
/* 1CA70 8084EC80 10400003 */  beq     $v0, $zero, .L8084EC90     
/* 1CA74 8084EC84 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 1CA78 8084EC88 0C20C9A6 */  jal     func_80832698              
/* 1CA7C 8084EC8C 2405680A */  addiu   $a1, $zero, 0x680A         ## $a1 = 0000680A
.L8084EC90:
/* 1CA80 8084EC90 8FBF001C */  lw      $ra, 0x001C($sp)           
.L8084EC94:
/* 1CA84 8084EC94 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 1CA88 8084EC98 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 1CA8C 8084EC9C 03E00008 */  jr      $ra                        
/* 1CA90 8084ECA0 00000000 */  nop
