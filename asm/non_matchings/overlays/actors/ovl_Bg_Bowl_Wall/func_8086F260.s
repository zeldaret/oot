.rdata
glabel D_8086FAD0
    .asciz "\n\n"
    .balign 4

.late_rodata
glabel D_8086FB10
    .float 2.990000009536743

.text
glabel func_8086F260
/* 00100 8086F260 27BDFF90 */  addiu   $sp, $sp, 0xFF90           ## $sp = FFFFFF90
/* 00104 8086F264 AFBF003C */  sw      $ra, 0x003C($sp)           
/* 00108 8086F268 AFB00038 */  sw      $s0, 0x0038($sp)           
/* 0010C 8086F26C AFA50074 */  sw      $a1, 0x0074($sp)           
/* 00110 8086F270 8482001C */  lh      $v0, 0x001C($a0)           ## 0000001C
/* 00114 8086F274 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00118 8086F278 3C018087 */  lui     $at, %hi(D_8086FB10)       ## $at = 80870000
/* 0011C 8086F27C 50400016 */  beql    $v0, $zero, .L8086F2D8     
/* 00120 8086F280 00024880 */  sll     $t1, $v0,  2               
/* 00124 8086F284 C42CFB10 */  lwc1    $f12, %lo(D_8086FB10)($at) 
/* 00128 8086F288 0C00CFBE */  jal     Math_Rand_ZeroFloat
              
/* 0012C 8086F28C A7A20062 */  sh      $v0, 0x0062($sp)           
/* 00130 8086F290 4600010D */  trunc.w.s $f4, $f0                   
/* 00134 8086F294 87A20062 */  lh      $v0, 0x0062($sp)           
/* 00138 8086F298 3C038087 */  lui     $v1, %hi(D_8086FA70)       ## $v1 = 80870000
/* 0013C 8086F29C 3C048087 */  lui     $a0, %hi(D_8086FAD0)       ## $a0 = 80870000
/* 00140 8086F2A0 44192000 */  mfc1    $t9, $f4                   
/* 00144 8086F2A4 2484FAD0 */  addiu   $a0, $a0, %lo(D_8086FAD0)  ## $a0 = 8086FAD0
/* 00148 8086F2A8 00591021 */  addu    $v0, $v0, $t9              
/* 0014C 8086F2AC 00021400 */  sll     $v0, $v0, 16               
/* 00150 8086F2B0 00021403 */  sra     $v0, $v0, 16               
/* 00154 8086F2B4 00024040 */  sll     $t0, $v0,  1               
/* 00158 8086F2B8 00681821 */  addu    $v1, $v1, $t0              
/* 0015C 8086F2BC 8463FA70 */  lh      $v1, %lo(D_8086FA70)($v1)  
/* 00160 8086F2C0 A6030034 */  sh      $v1, 0x0034($s0)           ## 00000034
/* 00164 8086F2C4 A60300B8 */  sh      $v1, 0x00B8($s0)           ## 000000B8
/* 00168 8086F2C8 0C00084C */  jal     osSyncPrintf
              
/* 0016C 8086F2CC A7A20062 */  sh      $v0, 0x0062($sp)           
/* 00170 8086F2D0 87A20062 */  lh      $v0, 0x0062($sp)           
/* 00174 8086F2D4 00024880 */  sll     $t1, $v0,  2               
.L8086F2D8:
/* 00178 8086F2D8 01224823 */  subu    $t1, $t1, $v0              
/* 0017C 8086F2DC 3C0A8087 */  lui     $t2, %hi(D_8086FA40)       ## $t2 = 80870000
/* 00180 8086F2E0 254AFA40 */  addiu   $t2, $t2, %lo(D_8086FA40)  ## $t2 = 8086FA40
/* 00184 8086F2E4 00094880 */  sll     $t1, $t1,  2               
/* 00188 8086F2E8 012A1821 */  addu    $v1, $t1, $t2              
/* 0018C 8086F2EC C4660000 */  lwc1    $f6, 0x0000($v1)           ## 00000000
/* 00190 8086F2F0 C6080024 */  lwc1    $f8, 0x0024($s0)           ## 00000024
/* 00194 8086F2F4 C6120028 */  lwc1    $f18, 0x0028($s0)          ## 00000028
/* 00198 8086F2F8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 0019C 8086F2FC 46083280 */  add.s   $f10, $f6, $f8             
/* 001A0 8086F300 C608002C */  lwc1    $f8, 0x002C($s0)           ## 0000002C
/* 001A4 8086F304 240701BE */  addiu   $a3, $zero, 0x01BE         ## $a3 = 000001BE
/* 001A8 8086F308 E60A0174 */  swc1    $f10, 0x0174($s0)          ## 00000174
/* 001AC 8086F30C C4700004 */  lwc1    $f16, 0x0004($v1)          ## 00000004
/* 001B0 8086F310 46128100 */  add.s   $f4, $f16, $f18            
/* 001B4 8086F314 C6100174 */  lwc1    $f16, 0x0174($s0)          ## 00000174
/* 001B8 8086F318 E6040178 */  swc1    $f4, 0x0178($s0)           ## 00000178
/* 001BC 8086F31C C4660008 */  lwc1    $f6, 0x0008($v1)           ## 00000008
/* 001C0 8086F320 46083280 */  add.s   $f10, $f6, $f8             
/* 001C4 8086F324 E60A017C */  swc1    $f10, 0x017C($s0)          ## 0000017C
/* 001C8 8086F328 E7B00010 */  swc1    $f16, 0x0010($sp)          
/* 001CC 8086F32C C6120178 */  lwc1    $f18, 0x0178($s0)          ## 00000178
/* 001D0 8086F330 8FA60074 */  lw      $a2, 0x0074($sp)           
/* 001D4 8086F334 E7B20014 */  swc1    $f18, 0x0014($sp)          
/* 001D8 8086F338 C604017C */  lwc1    $f4, 0x017C($s0)           ## 0000017C
/* 001DC 8086F33C AFA00024 */  sw      $zero, 0x0024($sp)         
/* 001E0 8086F340 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 001E4 8086F344 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 001E8 8086F348 E7A40018 */  swc1    $f4, 0x0018($sp)           
/* 001EC 8086F34C 860C001C */  lh      $t4, 0x001C($s0)           ## 0000001C
/* 001F0 8086F350 AFA30048 */  sw      $v1, 0x0048($sp)           
/* 001F4 8086F354 24C41C24 */  addiu   $a0, $a2, 0x1C24           ## $a0 = 00001C24
/* 001F8 8086F358 0C00C916 */  jal     Actor_SpawnChild
              
/* 001FC 8086F35C AFAC0028 */  sw      $t4, 0x0028($sp)           
/* 00200 8086F360 10400032 */  beq     $v0, $zero, .L8086F42C     
/* 00204 8086F364 8FA30048 */  lw      $v1, 0x0048($sp)           
/* 00208 8086F368 26040174 */  addiu   $a0, $s0, 0x0174           ## $a0 = 00000174
/* 0020C 8086F36C 8C8E0000 */  lw      $t6, 0x0000($a0)           ## 00000174
/* 00210 8086F370 24450154 */  addiu   $a1, $v0, 0x0154           ## $a1 = 00000154
/* 00214 8086F374 3C0F8087 */  lui     $t7, %hi(D_8086FA40)       ## $t7 = 80870000
/* 00218 8086F378 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000154
/* 0021C 8086F37C 8C8D0004 */  lw      $t5, 0x0004($a0)           ## 00000178
/* 00220 8086F380 25EFFA40 */  addiu   $t7, $t7, %lo(D_8086FA40)  ## $t7 = 8086FA40
/* 00224 8086F384 ACAD0004 */  sw      $t5, 0x0004($a1)           ## 00000158
/* 00228 8086F388 8C8E0008 */  lw      $t6, 0x0008($a0)           ## 0000017C
/* 0022C 8086F38C 106F0014 */  beq     $v1, $t7, .L8086F3E0       
/* 00230 8086F390 ACAE0008 */  sw      $t6, 0x0008($a1)           ## 0000015C
/* 00234 8086F394 8E190024 */  lw      $t9, 0x0024($s0)           ## 00000024
/* 00238 8086F398 27A3004C */  addiu   $v1, $sp, 0x004C           ## $v1 = FFFFFFDC
/* 0023C 8086F39C AC790000 */  sw      $t9, 0x0000($v1)           ## FFFFFFDC
/* 00240 8086F3A0 8E180028 */  lw      $t8, 0x0028($s0)           ## 00000028
/* 00244 8086F3A4 8C690000 */  lw      $t1, 0x0000($v1)           ## FFFFFFDC
/* 00248 8086F3A8 AC780004 */  sw      $t8, 0x0004($v1)           ## FFFFFFE0
/* 0024C 8086F3AC 8E19002C */  lw      $t9, 0x002C($s0)           ## 0000002C
/* 00250 8086F3B0 AC790008 */  sw      $t9, 0x0008($v1)           ## FFFFFFE4
/* 00254 8086F3B4 AC890000 */  sw      $t1, 0x0000($a0)           ## 00000174
/* 00258 8086F3B8 8C680004 */  lw      $t0, 0x0004($v1)           ## FFFFFFE0
/* 0025C 8086F3BC AC880004 */  sw      $t0, 0x0004($a0)           ## 00000178
/* 00260 8086F3C0 8C690008 */  lw      $t1, 0x0008($v1)           ## FFFFFFE4
/* 00264 8086F3C4 AC890008 */  sw      $t1, 0x0008($a0)           ## 0000017C
/* 00268 8086F3C8 8C6B0000 */  lw      $t3, 0x0000($v1)           ## FFFFFFDC
/* 0026C 8086F3CC ACAB0000 */  sw      $t3, 0x0000($a1)           ## 00000154
/* 00270 8086F3D0 8C6A0004 */  lw      $t2, 0x0004($v1)           ## FFFFFFE0
/* 00274 8086F3D4 ACAA0004 */  sw      $t2, 0x0004($a1)           ## 00000158
/* 00278 8086F3D8 8C6B0008 */  lw      $t3, 0x0008($v1)           ## FFFFFFE4
/* 0027C 8086F3DC ACAB0008 */  sw      $t3, 0x0008($a1)           ## 0000015C
.L8086F3E0:
/* 00280 8086F3E0 8E0C0184 */  lw      $t4, 0x0184($s0)           ## 00000184
/* 00284 8086F3E4 3C0F8087 */  lui     $t7, %hi(func_8086F440)    ## $t7 = 80870000
/* 00288 8086F3E8 8FAD0074 */  lw      $t5, 0x0074($sp)           
/* 0028C 8086F3EC 1580000E */  bne     $t4, $zero, .L8086F428     
/* 00290 8086F3F0 25EFF440 */  addiu   $t7, $t7, %lo(func_8086F440) ## $t7 = 8086F440
/* 00294 8086F3F4 8DA21C54 */  lw      $v0, 0x1C54($t5)           ## 00001C54
/* 00298 8086F3F8 2403014B */  addiu   $v1, $zero, 0x014B         ## $v1 = 0000014B
/* 0029C 8086F3FC 5040000B */  beql    $v0, $zero, .L8086F42C     
/* 002A0 8086F400 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
/* 002A4 8086F404 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L8086F408:
/* 002A8 8086F408 106E0003 */  beq     $v1, $t6, .L8086F418       
/* 002AC 8086F40C 00000000 */  nop
/* 002B0 8086F410 10000003 */  beq     $zero, $zero, .L8086F420   
/* 002B4 8086F414 8C420124 */  lw      $v0, 0x0124($v0)           ## 00000124
.L8086F418:
/* 002B8 8086F418 10000003 */  beq     $zero, $zero, .L8086F428   
/* 002BC 8086F41C AE020184 */  sw      $v0, 0x0184($s0)           ## 00000184
.L8086F420:
/* 002C0 8086F420 5440FFF9 */  bnel    $v0, $zero, .L8086F408     
/* 002C4 8086F424 844E0000 */  lh      $t6, 0x0000($v0)           ## 00000000
.L8086F428:
/* 002C8 8086F428 AE0F0164 */  sw      $t7, 0x0164($s0)           ## 00000164
.L8086F42C:
/* 002CC 8086F42C 8FBF003C */  lw      $ra, 0x003C($sp)           
/* 002D0 8086F430 8FB00038 */  lw      $s0, 0x0038($sp)           
/* 002D4 8086F434 27BD0070 */  addiu   $sp, $sp, 0x0070           ## $sp = 00000000
/* 002D8 8086F438 03E00008 */  jr      $ra                        
/* 002DC 8086F43C 00000000 */  nop
