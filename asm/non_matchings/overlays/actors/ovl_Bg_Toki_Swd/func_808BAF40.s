glabel func_808BAF40
/* 00100 808BAF40 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00104 808BAF44 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 00108 808BAF48 3C108016 */  lui     $s0, 0x8016                ## $s0 = 80160000
/* 0010C 808BAF4C 2610E660 */  addiu   $s0, $s0, 0xE660           ## $s0 = 8015E660
/* 00110 808BAF50 960E0EDC */  lhu     $t6, 0x0EDC($s0)           ## 8015F53C
/* 00114 808BAF54 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 00118 808BAF58 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0011C 808BAF5C 31CF8000 */  andi    $t7, $t6, 0x8000           ## $t7 = 00000000
/* 00120 808BAF60 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00124 808BAF64 15E00015 */  bne     $t7, $zero, .L808BAFBC     
/* 00128 808BAF68 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 0012C 808BAF6C 8E181360 */  lw      $t8, 0x1360($s0)           ## 8015F9C0
/* 00130 808BAF70 3C054448 */  lui     $a1, 0x4448                ## $a1 = 44480000
/* 00134 808BAF74 2B010004 */  slti    $at, $t8, 0x0004           
/* 00138 808BAF78 50200011 */  beql    $at, $zero, .L808BAFC0     
/* 0013C 808BAF7C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 8015E664
/* 00140 808BAF80 0C00B84B */  jal     func_8002E12C              
/* 00144 808BAF84 24067530 */  addiu   $a2, $zero, 0x7530         ## $a2 = 00007530
/* 00148 808BAF88 5040000D */  beql    $v0, $zero, .L808BAFC0     
/* 0014C 808BAF8C 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 8015E664
/* 00150 808BAF90 0C02FF21 */  jal     func_800BFC84              
/* 00154 808BAF94 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00158 808BAF98 14400008 */  bne     $v0, $zero, .L808BAFBC     
/* 0015C 808BAF9C 3C09808C */  lui     $t1, %hi(D_808BBD90)       ## $t1 = 808C0000
/* 00160 808BAFA0 96190EDC */  lhu     $t9, 0x0EDC($s0)           ## 8015F53C
/* 00164 808BAFA4 2529BD90 */  addiu   $t1, $t1, %lo(D_808BBD90)  ## $t1 = 808BBD90
/* 00168 808BAFA8 240A0001 */  addiu   $t2, $zero, 0x0001         ## $t2 = 00000001
/* 0016C 808BAFAC 37288000 */  ori     $t0, $t9, 0x8000           ## $t0 = 00008000
/* 00170 808BAFB0 A6080EDC */  sh      $t0, 0x0EDC($s0)           ## 8015F53C
/* 00174 808BAFB4 AE291D68 */  sw      $t1, 0x1D68($s1)           ## 00001D68
/* 00178 808BAFB8 A20A1414 */  sb      $t2, 0x1414($s0)           ## 8015FA74
.L808BAFBC:
/* 0017C 808BAFBC 8E0B0004 */  lw      $t3, 0x0004($s0)           ## 8015E664
.L808BAFC0:
/* 00180 808BAFC0 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00184 808BAFC4 15600005 */  bne     $t3, $zero, .L808BAFDC     
/* 00188 808BAFC8 00000000 */  nop
/* 0018C 808BAFCC 960C0EDE */  lhu     $t4, 0x0EDE($s0)           ## 8015F53E
/* 00190 808BAFD0 318D0020 */  andi    $t5, $t4, 0x0020           ## $t5 = 00000000
/* 00194 808BAFD4 51A00026 */  beql    $t5, $zero, .L808BB070     
/* 00198 808BAFD8 8E081360 */  lw      $t0, 0x1360($s0)           ## 8015F9C0
.L808BAFDC:
/* 0019C 808BAFDC 0C00BD04 */  jal     func_8002F410              
/* 001A0 808BAFE0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001A4 808BAFE4 1040001B */  beq     $v0, $zero, .L808BB054     
/* 001A8 808BAFE8 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001AC 808BAFEC 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 8015E664
/* 001B0 808BAFF0 3C18808C */  lui     $t8, %hi(D_808BB7A0)       ## $t8 = 808C0000
/* 001B4 808BAFF4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B8 808BAFF8 11C00007 */  beq     $t6, $zero, .L808BB018     
/* 001BC 808BAFFC 2718B7A0 */  addiu   $t8, $t8, %lo(D_808BB7A0)  ## $t8 = 808BB7A0
/* 001C0 808BB000 0C021344 */  jal     Item_Give              
/* 001C4 808BB004 2405003C */  addiu   $a1, $zero, 0x003C         ## $a1 = 0000003C
/* 001C8 808BB008 3C0F808C */  lui     $t7, %hi(D_808BB2F0)       ## $t7 = 808C0000
/* 001CC 808BB00C 25EFB2F0 */  addiu   $t7, $t7, %lo(D_808BB2F0)  ## $t7 = 808BB2F0
/* 001D0 808BB010 10000002 */  beq     $zero, $zero, .L808BB01C   
/* 001D4 808BB014 AE2F1D68 */  sw      $t7, 0x1D68($s1)           ## 00001D68
.L808BB018:
/* 001D8 808BB018 AE381D68 */  sw      $t8, 0x1D68($s1)           ## 00001D68
.L808BB01C:
/* 001DC 808BB01C 3C041000 */  lui     $a0, 0x1000                ## $a0 = 10000000
/* 001E0 808BB020 0C03E803 */  jal     Audio_SetBGM
              
/* 001E4 808BB024 348400FF */  ori     $a0, $a0, 0x00FF           ## $a0 = 100000FF
/* 001E8 808BB028 0C03E803 */  jal     Audio_SetBGM
              
/* 001EC 808BB02C 24040053 */  addiu   $a0, $zero, 0x0053         ## $a0 = 00000053
/* 001F0 808BB030 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 001F4 808BB034 24190001 */  addiu   $t9, $zero, 0x0001         ## $t9 = 00000001
/* 001F8 808BB038 A2191414 */  sb      $t9, 0x1414($s0)           ## 8015FA74
/* 001FC 808BB03C 3C05808C */  lui     $a1, %hi(func_808BB0AC)    ## $a1 = 808C0000
/* 00200 808BB040 24A5B0AC */  addiu   $a1, $a1, %lo(func_808BB0AC) ## $a1 = 808BB0AC
/* 00204 808BB044 0C22EB90 */  jal     BgTokiSwd_SetupAction              
/* 00208 808BB048 AC800118 */  sw      $zero, 0x0118($a0)         ## 00000118
/* 0020C 808BB04C 10000008 */  beq     $zero, $zero, .L808BB070   
/* 00210 808BB050 8E081360 */  lw      $t0, 0x1360($s0)           ## 8015F9C0
.L808BB054:
/* 00214 808BB054 0C00B821 */  jal     func_8002E084              
/* 00218 808BB058 24052000 */  addiu   $a1, $zero, 0x2000         ## $a1 = 00002000
/* 0021C 808BB05C 10400003 */  beq     $v0, $zero, .L808BB06C     
/* 00220 808BB060 8FA40020 */  lw      $a0, 0x0020($sp)           
/* 00224 808BB064 0C00BD60 */  jal     func_8002F580              
/* 00228 808BB068 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
.L808BB06C:
/* 0022C 808BB06C 8E081360 */  lw      $t0, 0x1360($s0)           ## 8015F9C0
.L808BB070:
/* 00230 808BB070 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00234 808BB074 15010008 */  bne     $t0, $at, .L808BB098       
/* 00238 808BB078 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 0023C 808BB07C 02211021 */  addu    $v0, $s1, $at              
/* 00240 808BB080 84431D30 */  lh      $v1, 0x1D30($v0)           ## 00001D30
/* 00244 808BB084 18600003 */  blez    $v1, .L808BB094            
/* 00248 808BB088 2469FFFF */  addiu   $t1, $v1, 0xFFFF           ## $t1 = FFFFFFFF
/* 0024C 808BB08C 10000002 */  beq     $zero, $zero, .L808BB098   
/* 00250 808BB090 A4491D30 */  sh      $t1, 0x1D30($v0)           ## 00001D30
.L808BB094:
/* 00254 808BB094 A4401D30 */  sh      $zero, 0x1D30($v0)         ## 00001D30
.L808BB098:
/* 00258 808BB098 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0025C 808BB09C 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00260 808BB0A0 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00264 808BB0A4 03E00008 */  jr      $ra                        
/* 00268 808BB0A8 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


