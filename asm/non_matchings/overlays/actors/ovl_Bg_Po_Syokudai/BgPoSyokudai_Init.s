.late_rodata
glabel D_808A8A30
 .word 0xC4C3C000

.text
glabel BgPoSyokudai_Init
/* 00000 808A80B0 27BDFFB8 */  addiu   $sp, $sp, 0xFFB8           ## $sp = FFFFFFB8
/* 00004 808A80B4 AFB10030 */  sw      $s1, 0x0030($sp)           
/* 00008 808A80B8 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 0000C 808A80BC AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 00010 808A80C0 AFB0002C */  sw      $s0, 0x002C($sp)           
/* 00014 808A80C4 3C05808B */  lui     $a1, %hi(D_808A89CC)       ## $a1 = 808B0000
/* 00018 808A80C8 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 0001C 808A80CC 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 808A80D0 24A589CC */  addiu   $a1, $a1, %lo(D_808A89CC)  ## $a1 = 808A89CC
/* 00024 808A80D4 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 808A80D8 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0002C 808A80DC 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 00030 808A80E0 000EC203 */  sra     $t8, $t6,  8               
/* 00034 808A80E4 3328003F */  andi    $t0, $t9, 0x003F           ## $t0 = 00000000
/* 00038 808A80E8 A218014C */  sb      $t8, 0x014C($s0)           ## 0000014C
/* 0003C 808A80EC A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00040 808A80F0 A20900AE */  sb      $t1, 0x00AE($s0)           ## 000000AE
/* 00044 808A80F4 26060154 */  addiu   $a2, $s0, 0x0154           ## $a2 = 00000154
/* 00048 808A80F8 AFA6003C */  sw      $a2, 0x003C($sp)           
/* 0004C 808A80FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00050 808A8100 0C01E9D9 */  jal     LightContext_InsertNewNode
/* 00054 808A8104 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 00058 808A8108 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 0005C 808A810C C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 00060 808A8110 C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 00064 808A8114 4600428D */  trunc.w.s $f10, $f8                  
/* 00068 808A8118 AE020150 */  sw      $v0, 0x0150($s0)           ## 00000150
/* 0006C 808A811C AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00070 808A8120 4600218D */  trunc.w.s $f6, $f4                   
/* 00074 808A8124 44065000 */  mfc1    $a2, $f10                  
/* 00078 808A8128 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 0007C 808A812C 4600848D */  trunc.w.s $f18, $f16                 
/* 00080 808A8130 44053000 */  mfc1    $a1, $f6                   
/* 00084 808A8134 00063400 */  sll     $a2, $a2, 16               
/* 00088 808A8138 00063403 */  sra     $a2, $a2, 16               
/* 0008C 808A813C 44079000 */  mfc1    $a3, $f18                  
/* 00090 808A8140 24C60041 */  addiu   $a2, $a2, 0x0041           ## $a2 = 00000041
/* 00094 808A8144 00063400 */  sll     $a2, $a2, 16               
/* 00098 808A8148 00052C00 */  sll     $a1, $a1, 16               
/* 0009C 808A814C 00073C00 */  sll     $a3, $a3, 16               
/* 000A0 808A8150 00073C03 */  sra     $a3, $a3, 16               
/* 000A4 808A8154 00052C03 */  sra     $a1, $a1, 16               
/* 000A8 808A8158 00063403 */  sra     $a2, $a2, 16               
/* 000AC 808A815C AFA00014 */  sw      $zero, 0x0014($sp)         
/* 000B0 808A8160 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 000B4 808A8164 0C01E77C */  jal     Lights_PointGlowSetInfo
/* 000B8 808A8168 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 000BC 808A816C 26050164 */  addiu   $a1, $s0, 0x0164           ## $a1 = 00000164
/* 000C0 808A8170 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 000C4 808A8174 0C0170D9 */  jal     Collider_InitCylinder
              
/* 000C8 808A8178 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000CC 808A817C 3C07808B */  lui     $a3, %hi(D_808A8960)       ## $a3 = 808B0000
/* 000D0 808A8180 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 000D4 808A8184 24E78960 */  addiu   $a3, $a3, %lo(D_808A8960)  ## $a3 = 808A8960
/* 000D8 808A8188 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000DC 808A818C 0C01712B */  jal     Collider_SetCylinder
              
/* 000E0 808A8190 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000E4 808A8194 C6040024 */  lwc1    $f4, 0x0024($s0)           ## 00000024
/* 000E8 808A8198 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 000EC 808A819C C610002C */  lwc1    $f16, 0x002C($s0)          ## 0000002C
/* 000F0 808A81A0 4600218D */  trunc.w.s $f6, $f4                   
/* 000F4 808A81A4 9209014C */  lbu     $t1, 0x014C($s0)           ## 0000014C
/* 000F8 808A81A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000FC 808A81AC 4600428D */  trunc.w.s $f10, $f8                  
/* 00100 808A81B0 440E3000 */  mfc1    $t6, $f6                   
/* 00104 808A81B4 4600848D */  trunc.w.s $f18, $f16                 
/* 00108 808A81B8 44185000 */  mfc1    $t8, $f10                  
/* 0010C 808A81BC A60E01AA */  sh      $t6, 0x01AA($s0)           ## 000001AA
/* 00110 808A81C0 44089000 */  mfc1    $t0, $f18                  
/* 00114 808A81C4 A61801AC */  sh      $t8, 0x01AC($s0)           ## 000001AC
/* 00118 808A81C8 15200025 */  bne     $t1, $zero, .L808A8260     
/* 0011C 808A81CC A60801AE */  sh      $t0, 0x01AE($s0)           ## 000001AE
/* 00120 808A81D0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00124 808A81D4 2405001F */  addiu   $a1, $zero, 0x001F         ## $a1 = 0000001F
/* 00128 808A81D8 10400021 */  beq     $v0, $zero, .L808A8260     
/* 0012C 808A81DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00130 808A81E0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00134 808A81E4 2405001E */  addiu   $a1, $zero, 0x001E         ## $a1 = 0000001E
/* 00138 808A81E8 1040001D */  beq     $v0, $zero, .L808A8260     
/* 0013C 808A81EC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00140 808A81F0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00144 808A81F4 2405001D */  addiu   $a1, $zero, 0x001D         ## $a1 = 0000001D
/* 00148 808A81F8 10400019 */  beq     $v0, $zero, .L808A8260     
/* 0014C 808A81FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00150 808A8200 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00154 808A8204 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00158 808A8208 14400015 */  bne     $v0, $zero, .L808A8260     
/* 0015C 808A820C 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 00160 808A8210 3C014361 */  lui     $at, 0x4361                ## $at = 43610000
/* 00164 808A8214 44812000 */  mtc1    $at, $f4                   ## $f4 = 225.00
/* 00168 808A8218 3C01808B */  lui     $at, %hi(D_808A8A30)       ## $at = 808B0000
/* 0016C 808A821C C4268A30 */  lwc1    $f6, %lo(D_808A8A30)($at)  
/* 00170 808A8220 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00174 808A8224 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00178 808A8228 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 0017C 808A822C E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 00180 808A8230 E7A60014 */  swc1    $f6, 0x0014($sp)           
/* 00184 808A8234 860A001C */  lh      $t2, 0x001C($s0)           ## 0000001C
/* 00188 808A8238 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 0018C 808A823C 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 00190 808A8240 3C0742EE */  lui     $a3, 0x42EE                ## $a3 = 42EE0000
/* 00194 808A8244 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00198 808A8248 AFAA0024 */  sw      $t2, 0x0024($sp)           
/* 0019C 808A824C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 001A0 808A8250 00310821 */  addu    $at, $at, $s1              
/* 001A4 808A8254 240B0004 */  addiu   $t3, $zero, 0x0004         ## $t3 = 00000004
/* 001A8 808A8258 1000002D */  beq     $zero, $zero, .L808A8310   
/* 001AC 808A825C A02B0AE3 */  sb      $t3, 0x0AE3($at)           ## 00010AE3
.L808A8260:
/* 001B0 808A8260 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001B4 808A8264 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001B8 808A8268 2405001C */  addiu   $a1, $zero, 0x001C         ## $a1 = 0000001C
/* 001BC 808A826C 1440001B */  bne     $v0, $zero, .L808A82DC     
/* 001C0 808A8270 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 001C4 808A8274 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 001C8 808A8278 2405001B */  addiu   $a1, $zero, 0x001B         ## $a1 = 0000001B
/* 001CC 808A827C 14400017 */  bne     $v0, $zero, .L808A82DC     
/* 001D0 808A8280 3C014250 */  lui     $at, 0x4250                ## $at = 42500000
/* 001D4 808A8284 C6080028 */  lwc1    $f8, 0x0028($s0)           ## 00000028
/* 001D8 808A8288 44815000 */  mtc1    $at, $f10                  ## $f10 = 52.00
/* 001DC 808A828C 8E070024 */  lw      $a3, 0x0024($s0)           ## 00000024
/* 001E0 808A8290 26241C24 */  addiu   $a0, $s1, 0x1C24           ## $a0 = 00001C24
/* 001E4 808A8294 460A4400 */  add.s   $f16, $f8, $f10            
/* 001E8 808A8298 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 001EC 808A829C 24060091 */  addiu   $a2, $zero, 0x0091         ## $a2 = 00000091
/* 001F0 808A82A0 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 001F4 808A82A4 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 001F8 808A82A8 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 001FC 808A82AC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00200 808A82B0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00204 808A82B4 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 00208 808A82B8 920C014C */  lbu     $t4, 0x014C($s0)           ## 0000014C
/* 0020C 808A82BC 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00210 808A82C0 000C6A00 */  sll     $t5, $t4,  8               
/* 00214 808A82C4 01AE7821 */  addu    $t7, $t5, $t6              
/* 00218 808A82C8 25F81000 */  addiu   $t8, $t7, 0x1000           ## $t8 = 00001000
/* 0021C 808A82CC 0C00C7D4 */  jal     Actor_Spawn
              ## ActorSpawn
/* 00220 808A82D0 AFB80024 */  sw      $t8, 0x0024($sp)           
/* 00224 808A82D4 1000000E */  beq     $zero, $zero, .L808A8310   
/* 00228 808A82D8 00000000 */  nop
.L808A82DC:
/* 0022C 808A82DC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00230 808A82E0 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 00234 808A82E4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00238 808A82E8 14400009 */  bne     $v0, $zero, .L808A8310     
/* 0023C 808A82EC 3C190001 */  lui     $t9, 0x0001                ## $t9 = 00010000
/* 00240 808A82F0 0331C821 */  addu    $t9, $t9, $s1              
/* 00244 808A82F4 93390AE3 */  lbu     $t9, 0x0AE3($t9)           ## 00010AE3
/* 00248 808A82F8 240100FF */  addiu   $at, $zero, 0x00FF         ## $at = 000000FF
/* 0024C 808A82FC 24080004 */  addiu   $t0, $zero, 0x0004         ## $t0 = 00000004
/* 00250 808A8300 17210003 */  bne     $t9, $at, .L808A8310       
/* 00254 808A8304 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00258 808A8308 00310821 */  addu    $at, $at, $s1              
/* 0025C 808A830C A0280AE3 */  sb      $t0, 0x0AE3($at)           ## 00010AE3
.L808A8310:
/* 00260 808A8310 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 00264 808A8314 00000000 */  nop
/* 00268 808A8318 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 0026C 808A831C 44812000 */  mtc1    $at, $f4                   ## $f4 = 20.00
/* 00270 808A8320 00000000 */  nop
/* 00274 808A8324 46040182 */  mul.s   $f6, $f0, $f4              
/* 00278 808A8328 4600320D */  trunc.w.s $f8, $f6                   
/* 0027C 808A832C 440A4000 */  mfc1    $t2, $f8                   
/* 00280 808A8330 00000000 */  nop
/* 00284 808A8334 A60A014E */  sh      $t2, 0x014E($s0)           ## 0000014E
/* 00288 808A8338 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 0028C 808A833C 8FB10030 */  lw      $s1, 0x0030($sp)           
/* 00290 808A8340 8FB0002C */  lw      $s0, 0x002C($sp)           
/* 00294 808A8344 03E00008 */  jr      $ra                        
/* 00298 808A8348 27BD0048 */  addiu   $sp, $sp, 0x0048           ## $sp = 00000000
