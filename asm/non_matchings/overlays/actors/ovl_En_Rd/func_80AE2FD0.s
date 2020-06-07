glabel func_80AE2FD0
/* 00BD0 80AE2FD0 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 00BD4 80AE2FD4 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00BD8 80AE2FD8 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00BDC 80AE2FDC AFA5003C */  sw      $a1, 0x003C($sp)           
/* 00BE0 80AE2FE0 8CAF1C44 */  lw      $t7, 0x1C44($a1)           ## 00001C44
/* 00BE4 80AE2FE4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00BE8 80AE2FE8 26050008 */  addiu   $a1, $s0, 0x0008           ## $a1 = 00000008
/* 00BEC 80AE2FEC AFA50028 */  sw      $a1, 0x0028($sp)           
/* 00BF0 80AE2FF0 0C00B6B0 */  jal     func_8002DAC0              
/* 00BF4 80AE2FF4 AFAF0034 */  sw      $t7, 0x0034($sp)           
/* 00BF8 80AE2FF8 A7A2002E */  sh      $v0, 0x002E($sp)           
/* 00BFC 80AE2FFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C00 80AE3000 0C00B6DB */  jal     func_8002DB6C              
/* 00C04 80AE3004 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00C08 80AE3008 3C0140A0 */  lui     $at, 0x40A0                ## $at = 40A00000
/* 00C0C 80AE300C 44812000 */  mtc1    $at, $f4                   ## $f4 = 5.00
/* 00C10 80AE3010 87A5002E */  lh      $a1, 0x002E($sp)           
/* 00C14 80AE3014 240701C2 */  addiu   $a3, $zero, 0x01C2         ## $a3 = 000001C2
/* 00C18 80AE3018 4600203E */  c.le.s  $f4, $f0                   
/* 00C1C 80AE301C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00C20 80AE3020 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C24 80AE3024 45020008 */  bc1fl   .L80AE3048                 
/* 00C28 80AE3028 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00C2C 80AE302C 260400B6 */  addiu   $a0, $s0, 0x00B6           ## $a0 = 000000B6
/* 00C30 80AE3030 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C34 80AE3034 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C38 80AE3038 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C3C 80AE303C 10000014 */  beq     $zero, $zero, .L80AE3090   
/* 00C40 80AE3040 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
/* 00C44 80AE3044 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
.L80AE3048:
/* 00C48 80AE3048 86050016 */  lh      $a1, 0x0016($s0)           ## 00000016
/* 00C4C 80AE304C 240701C2 */  addiu   $a3, $zero, 0x01C2         ## $a3 = 000001C2
/* 00C50 80AE3050 E6060068 */  swc1    $f6, 0x0068($s0)           ## 00000068
/* 00C54 80AE3054 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00C58 80AE3058 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00C5C 80AE305C 5440000C */  bnel    $v0, $zero, .L80AE3090     
/* 00C60 80AE3060 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
/* 00C64 80AE3064 8618001C */  lh      $t8, 0x001C($s0)           ## 0000001C
/* 00C68 80AE3068 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 00C6C 80AE306C 13010005 */  beq     $t8, $at, .L80AE3084       
/* 00C70 80AE3070 00000000 */  nop
/* 00C74 80AE3074 0C2B89A7 */  jal     func_80AE269C              
/* 00C78 80AE3078 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C7C 80AE307C 10000004 */  beq     $zero, $zero, .L80AE3090   
/* 00C80 80AE3080 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
.L80AE3084:
/* 00C84 80AE3084 0C2B8E75 */  jal     func_80AE39D4              
/* 00C88 80AE3088 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00C8C 80AE308C 2604030E */  addiu   $a0, $s0, 0x030E           ## $a0 = 0000030E
.L80AE3090:
/* 00C90 80AE3090 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00C94 80AE3094 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00C98 80AE3098 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 00C9C 80AE309C 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00CA0 80AE30A0 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00CA4 80AE30A4 26040310 */  addiu   $a0, $s0, 0x0310           ## $a0 = 00000310
/* 00CA8 80AE30A8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 00CAC 80AE30AC 24060001 */  addiu   $a2, $zero, 0x0001         ## $a2 = 00000001
/* 00CB0 80AE30B0 24070064 */  addiu   $a3, $zero, 0x0064         ## $a3 = 00000064
/* 00CB4 80AE30B4 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00CB8 80AE30B8 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00CBC 80AE30BC 861900B6 */  lh      $t9, 0x00B6($s0)           ## 000000B6
/* 00CC0 80AE30C0 26040188 */  addiu   $a0, $s0, 0x0188           ## $a0 = 00000188
/* 00CC4 80AE30C4 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00CC8 80AE30C8 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 00CCC 80AE30CC 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 00CD0 80AE30D0 3C01002C */  lui     $at, 0x002C                ## $at = 002C0000
/* 00CD4 80AE30D4 34216080 */  ori     $at, $at, 0x6080           ## $at = 002C6080
/* 00CD8 80AE30D8 8C88067C */  lw      $t0, 0x067C($a0)           ## 0000067C
/* 00CDC 80AE30DC 01014824 */  and     $t1, $t0, $at              
/* 00CE0 80AE30E0 55200014 */  bnel    $t1, $zero, .L80AE3134     
/* 00CE4 80AE30E4 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00CE8 80AE30E8 8C8A0680 */  lw      $t2, 0x0680($a0)           ## 00000680
/* 00CEC 80AE30EC 314B0080 */  andi    $t3, $t2, 0x0080           ## $t3 = 00000000
/* 00CF0 80AE30F0 55600010 */  bnel    $t3, $zero, .L80AE3134     
/* 00CF4 80AE30F4 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00CF8 80AE30F8 0C00B6DB */  jal     func_8002DB6C              
/* 00CFC 80AE30FC 8FA50028 */  lw      $a1, 0x0028($sp)           
/* 00D00 80AE3100 3C014316 */  lui     $at, 0x4316                ## $at = 43160000
/* 00D04 80AE3104 44814000 */  mtc1    $at, $f8                   ## $f8 = 150.00
/* 00D08 80AE3108 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D0C 80AE310C 4608003C */  c.lt.s  $f0, $f8                   
/* 00D10 80AE3110 00000000 */  nop
/* 00D14 80AE3114 45020007 */  bc1fl   .L80AE3134                 
/* 00D18 80AE3118 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 00D1C 80AE311C A200001F */  sb      $zero, 0x001F($s0)         ## 0000001F
/* 00D20 80AE3120 0C2B8AE4 */  jal     func_80AE2B90              
/* 00D24 80AE3124 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 00D28 80AE3128 1000000D */  beq     $zero, $zero, .L80AE3160   
/* 00D2C 80AE312C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00D30 80AE3130 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
.L80AE3134:
/* 00D34 80AE3134 5980000A */  blezl   $t4, .L80AE3160            
/* 00D38 80AE3138 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00D3C 80AE313C 8E0D0118 */  lw      $t5, 0x0118($s0)           ## 00000118
/* 00D40 80AE3140 51A00006 */  beql    $t5, $zero, .L80AE315C     
/* 00D44 80AE3144 A2000305 */  sb      $zero, 0x0305($s0)         ## 00000305
/* 00D48 80AE3148 0C2B8C77 */  jal     func_80AE31DC              
/* 00D4C 80AE314C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D50 80AE3150 10000003 */  beq     $zero, $zero, .L80AE3160   
/* 00D54 80AE3154 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 00D58 80AE3158 A2000305 */  sb      $zero, 0x0305($s0)         ## 00000305
.L80AE315C:
/* 00D5C 80AE315C 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
.L80AE3160:
/* 00D60 80AE3160 44815000 */  mtc1    $at, $f10                  ## $f10 = 10.00
/* 00D64 80AE3164 C60001A0 */  lwc1    $f0, 0x01A0($s0)           ## 000001A0
/* 00D68 80AE3168 3C0141B0 */  lui     $at, 0x41B0                ## $at = 41B00000
/* 00D6C 80AE316C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00D70 80AE3170 46005032 */  c.eq.s  $f10, $f0                  
/* 00D74 80AE3174 00000000 */  nop
/* 00D78 80AE3178 45010008 */  bc1t    .L80AE319C                 
/* 00D7C 80AE317C 00000000 */  nop
/* 00D80 80AE3180 44818000 */  mtc1    $at, $f16                  ## $f16 = 22.00
/* 00D84 80AE3184 8FAE003C */  lw      $t6, 0x003C($sp)           
/* 00D88 80AE3188 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00D8C 80AE318C 46008032 */  c.eq.s  $f16, $f0                  
/* 00D90 80AE3190 01EE7821 */  addu    $t7, $t7, $t6              
/* 00D94 80AE3194 45020006 */  bc1fl   .L80AE31B0                 
/* 00D98 80AE3198 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00011DE4
.L80AE319C:
/* 00D9C 80AE319C 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DA0 80AE31A0 2405382E */  addiu   $a1, $zero, 0x382E         ## $a1 = 0000382E
/* 00DA4 80AE31A4 10000009 */  beq     $zero, $zero, .L80AE31CC   
/* 00DA8 80AE31A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DAC 80AE31AC 8DEF1DE4 */  lw      $t7, 0x1DE4($t7)           ## 00001DE4
.L80AE31B0:
/* 00DB0 80AE31B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00DB4 80AE31B4 31F8005F */  andi    $t8, $t7, 0x005F           ## $t8 = 00000000
/* 00DB8 80AE31B8 57000004 */  bnel    $t8, $zero, .L80AE31CC     
/* 00DBC 80AE31BC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00DC0 80AE31C0 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 00DC4 80AE31C4 240538E4 */  addiu   $a1, $zero, 0x38E4         ## $a1 = 000038E4
/* 00DC8 80AE31C8 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80AE31CC:
/* 00DCC 80AE31CC 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00DD0 80AE31D0 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 00DD4 80AE31D4 03E00008 */  jr      $ra                        
/* 00DD8 80AE31D8 00000000 */  nop
