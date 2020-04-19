glabel func_80B2EE9C
/* 000AC 80B2EE9C 27BDFFA0 */  addiu   $sp, $sp, 0xFFA0           ## $sp = FFFFFFA0
/* 000B0 80B2EEA0 3C0F80B3 */  lui     $t7, %hi(D_80B2F340)       ## $t7 = 80B30000
/* 000B4 80B2EEA4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 000B8 80B2EEA8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 000BC 80B2EEAC 25EFF340 */  addiu   $t7, $t7, %lo(D_80B2F340)  ## $t7 = 80B2F340
/* 000C0 80B2EEB0 8DF90000 */  lw      $t9, 0x0000($t7)           ## 80B2F340
/* 000C4 80B2EEB4 27AE004C */  addiu   $t6, $sp, 0x004C           ## $t6 = FFFFFFEC
/* 000C8 80B2EEB8 8DF80004 */  lw      $t8, 0x0004($t7)           ## 80B2F344
/* 000CC 80B2EEBC ADD90000 */  sw      $t9, 0x0000($t6)           ## FFFFFFEC
/* 000D0 80B2EEC0 8DF90008 */  lw      $t9, 0x0008($t7)           ## 80B2F348
/* 000D4 80B2EEC4 3C0980B3 */  lui     $t1, %hi(D_80B2F34C)       ## $t1 = 80B30000
/* 000D8 80B2EEC8 2529F34C */  addiu   $t1, $t1, %lo(D_80B2F34C)  ## $t1 = 80B2F34C
/* 000DC 80B2EECC ADD80004 */  sw      $t8, 0x0004($t6)           ## FFFFFFF0
/* 000E0 80B2EED0 ADD90008 */  sw      $t9, 0x0008($t6)           ## FFFFFFF4
/* 000E4 80B2EED4 8D2B0000 */  lw      $t3, 0x0000($t1)           ## 80B2F34C
/* 000E8 80B2EED8 27A80040 */  addiu   $t0, $sp, 0x0040           ## $t0 = FFFFFFE0
/* 000EC 80B2EEDC 8D2A0004 */  lw      $t2, 0x0004($t1)           ## 80B2F350
/* 000F0 80B2EEE0 AD0B0000 */  sw      $t3, 0x0000($t0)           ## FFFFFFE0
/* 000F4 80B2EEE4 8D2B0008 */  lw      $t3, 0x0008($t1)           ## 80B2F354
/* 000F8 80B2EEE8 AD0A0004 */  sw      $t2, 0x0004($t0)           ## FFFFFFE4
/* 000FC 80B2EEEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00100 80B2EEF0 AD0B0008 */  sw      $t3, 0x0008($t0)           ## FFFFFFE8
/* 00104 80B2EEF4 8C860160 */  lw      $a2, 0x0160($a0)           ## 00000160
/* 00108 80B2EEF8 90CC0258 */  lbu     $t4, 0x0258($a2)           ## 00000258
/* 0010C 80B2EEFC 5180006A */  beql    $t4, $zero, .L80B2F0A8     
/* 00110 80B2EF00 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00114 80B2EF04 8CAD0790 */  lw      $t5, 0x0790($a1)           ## 00000790
/* 00118 80B2EF08 24010015 */  addiu   $at, $zero, 0x0015         ## $at = 00000015
/* 0011C 80B2EF0C 85AE0142 */  lh      $t6, 0x0142($t5)           ## 00000142
/* 00120 80B2EF10 55C10065 */  bnel    $t6, $at, .L80B2F0A8       
/* 00124 80B2EF14 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00128 80B2EF18 8CA21C4C */  lw      $v0, 0x1C4C($a1)           ## 00001C4C
/* 0012C 80B2EF1C 3C014220 */  lui     $at, 0x4220                ## $at = 42200000
/* 00130 80B2EF20 240400DA */  addiu   $a0, $zero, 0x00DA         ## $a0 = 000000DA
/* 00134 80B2EF24 1040005F */  beq     $v0, $zero, .L80B2F0A4     
/* 00138 80B2EF28 3C038016 */  lui     $v1, %hi(gGameInfo)
/* 0013C 80B2EF2C 44818000 */  mtc1    $at, $f16                  ## $f16 = 40.00
/* 00140 80B2EF30 2463FA90 */  addiu   $v1, %lo(gGameInfo)
.L80B2EF34:
/* 00144 80B2EF34 10500004 */  beq     $v0, $s0, .L80B2EF48       
/* 00148 80B2EF38 00000000 */  nop
/* 0014C 80B2EF3C 844F0000 */  lh      $t7, 0x0000($v0)           ## 00000000
/* 00150 80B2EF40 508F0004 */  beql    $a0, $t7, .L80B2EF54       
/* 00154 80B2EF44 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
.L80B2EF48:
/* 00158 80B2EF48 10000054 */  beq     $zero, $zero, .L80B2F09C   
/* 0015C 80B2EF4C 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 00160 80B2EF50 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
.L80B2EF54:
/* 00164 80B2EF54 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00168 80B2EF58 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 0016C 80B2EF5C C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00170 80B2EF60 46062081 */  sub.s   $f2, $f4, $f6              
/* 00174 80B2EF64 C604002C */  lwc1    $f4, 0x002C($s0)           ## 0000002C
/* 00178 80B2EF68 C452002C */  lwc1    $f18, 0x002C($v0)          ## 0000002C
/* 0017C 80B2EF6C 460A4301 */  sub.s   $f12, $f8, $f10            
/* 00180 80B2EF70 46001005 */  abs.s   $f0, $f2                   
/* 00184 80B2EF74 46049381 */  sub.s   $f14, $f18, $f4            
/* 00188 80B2EF78 4610003C */  c.lt.s  $f0, $f16                  
/* 0018C 80B2EF7C 00000000 */  nop
/* 00190 80B2EF80 45030006 */  bc1tl   .L80B2EF9C                 
/* 00194 80B2EF84 46006005 */  abs.s   $f0, $f12                  
/* 00198 80B2EF88 8C780000 */  lw      $t8, 0x0000($v1)           ## 8015FA90
/* 0019C 80B2EF8C 871912D8 */  lh      $t9, 0x12D8($t8)           ## 000012D8
/* 001A0 80B2EF90 53200042 */  beql    $t9, $zero, .L80B2F09C     
/* 001A4 80B2EF94 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 001A8 80B2EF98 46006005 */  abs.s   $f0, $f12                  
.L80B2EF9C:
/* 001AC 80B2EF9C 4610003C */  c.lt.s  $f0, $f16                  
/* 001B0 80B2EFA0 00000000 */  nop
/* 001B4 80B2EFA4 45030006 */  bc1tl   .L80B2EFC0                 
/* 001B8 80B2EFA8 46007005 */  abs.s   $f0, $f14                  
/* 001BC 80B2EFAC 8C680000 */  lw      $t0, 0x0000($v1)           ## 8015FA90
/* 001C0 80B2EFB0 850912D8 */  lh      $t1, 0x12D8($t0)           ## 000012B8
/* 001C4 80B2EFB4 51200039 */  beql    $t1, $zero, .L80B2F09C     
/* 001C8 80B2EFB8 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 001CC 80B2EFBC 46007005 */  abs.s   $f0, $f14                  
.L80B2EFC0:
/* 001D0 80B2EFC0 4610003C */  c.lt.s  $f0, $f16                  
/* 001D4 80B2EFC4 00000000 */  nop
/* 001D8 80B2EFC8 45030006 */  bc1tl   .L80B2EFE4                 
/* 001DC 80B2EFCC 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
/* 001E0 80B2EFD0 8C6A0000 */  lw      $t2, 0x0000($v1)           ## 8015FA90
/* 001E4 80B2EFD4 854B12D8 */  lh      $t3, 0x12D8($t2)           ## 000012D8
/* 001E8 80B2EFD8 51600030 */  beql    $t3, $zero, .L80B2F09C     
/* 001EC 80B2EFDC 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
/* 001F0 80B2EFE0 860D001C */  lh      $t5, 0x001C($s0)           ## 0000001C
.L80B2EFE4:
/* 001F4 80B2EFE4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 001F8 80B2EFE8 24180002 */  addiu   $t8, $zero, 0x0002         ## $t8 = 00000002
/* 001FC 80B2EFEC 000D7040 */  sll     $t6, $t5,  1               
/* 00200 80B2EFF0 00CE7821 */  addu    $t7, $a2, $t6              
/* 00204 80B2EFF4 A5EC023E */  sh      $t4, 0x023E($t7)           ## 80B2F57E
/* 00208 80B2EFF8 A4580150 */  sh      $t8, 0x0150($v0)           ## 00000150
/* 0020C 80B2EFFC AFA50064 */  sw      $a1, 0x0064($sp)           
/* 00210 80B2F000 0C01E221 */  jal     func_80078884              
/* 00214 80B2F004 24044807 */  addiu   $a0, $zero, 0x4807         ## $a0 = 00004807
/* 00218 80B2F008 2419003C */  addiu   $t9, $zero, 0x003C         ## $t9 = 0000003C
/* 0021C 80B2F00C A6190150 */  sh      $t9, 0x0150($s0)           ## 00000150
/* 00220 80B2F010 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 00224 80B2F014 24090028 */  addiu   $t1, $zero, 0x0028         ## $t1 = 00000028
/* 00228 80B2F018 AFA90014 */  sw      $t1, 0x0014($sp)           
/* 0022C 80B2F01C AFA80010 */  sw      $t0, 0x0010($sp)           
/* 00230 80B2F020 8FA40064 */  lw      $a0, 0x0064($sp)           
/* 00234 80B2F024 26050154 */  addiu   $a1, $s0, 0x0154           ## $a1 = 00000154
/* 00238 80B2F028 27A60040 */  addiu   $a2, $sp, 0x0040           ## $a2 = FFFFFFE0
/* 0023C 80B2F02C 0C00A3A1 */  jal     func_80028E84              
/* 00240 80B2F030 27A7004C */  addiu   $a3, $sp, 0x004C           ## $a3 = FFFFFFEC
/* 00244 80B2F034 8FA20064 */  lw      $v0, 0x0064($sp)           
/* 00248 80B2F038 24050001 */  addiu   $a1, $zero, 0x0001         ## $a1 = 00000001
/* 0024C 80B2F03C 844A07A0 */  lh      $t2, 0x07A0($v0)           ## 000007A0
/* 00250 80B2F040 000A5880 */  sll     $t3, $t2,  2               
/* 00254 80B2F044 004B6821 */  addu    $t5, $v0, $t3              
/* 00258 80B2F048 0C024BE2 */  jal     Quake_Add              
/* 0025C 80B2F04C 8DA40790 */  lw      $a0, 0x0790($t5)           ## 00000790
/* 00260 80B2F050 00022400 */  sll     $a0, $v0, 16               
/* 00264 80B2F054 A7A20032 */  sh      $v0, 0x0032($sp)           
/* 00268 80B2F058 00042403 */  sra     $a0, $a0, 16               
/* 0026C 80B2F05C 0C024B6B */  jal     Quake_SetSpeed              
/* 00270 80B2F060 24057FFF */  addiu   $a1, $zero, 0x7FFF         ## $a1 = 00007FFF
/* 00274 80B2F064 87A40032 */  lh      $a0, 0x0032($sp)           
/* 00278 80B2F068 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 0027C 80B2F06C 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00280 80B2F070 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 00284 80B2F074 0C024B9C */  jal     Quake_SetQuakeValues              
/* 00288 80B2F078 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 0028C 80B2F07C 87A40032 */  lh      $a0, 0x0032($sp)           
/* 00290 80B2F080 0C024B7C */  jal     Quake_SetCountdown              
/* 00294 80B2F084 24050064 */  addiu   $a1, $zero, 0x0064         ## $a1 = 00000064
/* 00298 80B2F088 3C0E80B3 */  lui     $t6, %hi(func_80B2F0B8)    ## $t6 = 80B30000
/* 0029C 80B2F08C 25CEF0B8 */  addiu   $t6, $t6, %lo(func_80B2F0B8) ## $t6 = 80B2F0B8
/* 002A0 80B2F090 10000004 */  beq     $zero, $zero, .L80B2F0A4   
/* 002A4 80B2F094 AE0E014C */  sw      $t6, 0x014C($s0)           ## 0000014C
/* 002A8 80B2F098 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
.L80B2F09C:
/* 002AC 80B2F09C 1440FFA5 */  bne     $v0, $zero, .L80B2EF34     
/* 002B0 80B2F0A0 00000000 */  nop
.L80B2F0A4:
/* 002B4 80B2F0A4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80B2F0A8:
/* 002B8 80B2F0A8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 002BC 80B2F0AC 27BD0060 */  addiu   $sp, $sp, 0x0060           ## $sp = 00000000
/* 002C0 80B2F0B0 03E00008 */  jr      $ra                        
/* 002C4 80B2F0B4 00000000 */  nop
