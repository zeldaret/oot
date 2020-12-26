glabel func_80930284
/* 03CB4 80930284 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 03CB8 80930288 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 03CBC 8093028C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03CC0 80930290 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 03CC4 80930294 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 03CC8 80930298 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 03CCC 8093029C 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 03CD0 809302A0 8E0E011C */  lw      $t6, 0x011C($s0)           ## 0000011C
/* 03CD4 809302A4 3C198093 */  lui     $t9, %hi(D_8093746C)       ## $t9 = 80930000
/* 03CD8 809302A8 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 03CDC 809302AC 85CF001C */  lh      $t7, 0x001C($t6)           ## 0000001C
/* 03CE0 809302B0 26040028 */  addiu   $a0, $s0, 0x0028           ## $a0 = 00000028
/* 03CE4 809302B4 3C054220 */  lui     $a1, 0x4220                ## $a1 = 42200000
/* 03CE8 809302B8 000FC080 */  sll     $t8, $t7,  2               
/* 03CEC 809302BC 0338C821 */  addu    $t9, $t9, $t8              
/* 03CF0 809302C0 8F39746C */  lw      $t9, %lo(D_8093746C)($t9)  
/* 03CF4 809302C4 3C063F00 */  lui     $a2, 0x3F00                ## $a2 = 3F000000
/* 03CF8 809302C8 57210006 */  bnel    $t9, $at, .L809302E4       
/* 03CFC 809302CC 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
/* 03D00 809302D0 0C24BEF9 */  jal     func_8092FBE4              
/* 03D04 809302D4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D08 809302D8 10000037 */  beq     $zero, $zero, .L809303B8   
/* 03D0C 809302DC 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03D10 809302E0 3C014040 */  lui     $at, 0x4040                ## $at = 40400000
.L809302E4:
/* 03D14 809302E4 44812000 */  mtc1    $at, $f4                   ## $f4 = 3.00
/* 03D18 809302E8 3C0741A0 */  lui     $a3, 0x41A0                ## $a3 = 41A00000
/* 03D1C 809302EC 0C01E0C4 */  jal     Math_SmoothStepToF
              
/* 03D20 809302F0 E7A40010 */  swc1    $f4, 0x0010($sp)           
/* 03D24 809302F4 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 03D28 809302F8 2405FC00 */  addiu   $a1, $zero, 0xFC00         ## $a1 = FFFFFC00
/* 03D2C 809302FC 0C01DE2B */  jal     Math_ScaledStepToS
              
/* 03D30 80930300 240600A0 */  addiu   $a2, $zero, 0x00A0         ## $a2 = 000000A0
/* 03D34 80930304 26040024 */  addiu   $a0, $s0, 0x0024           ## $a0 = 00000024
/* 03D38 80930308 8E050008 */  lw      $a1, 0x0008($s0)           ## 00000008
/* 03D3C 8093030C 0C01DE80 */  jal     Math_StepToF
              
/* 03D40 80930310 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03D44 80930314 2604002C */  addiu   $a0, $s0, 0x002C           ## $a0 = 0000002C
/* 03D48 80930318 8E050010 */  lw      $a1, 0x0010($s0)           ## 00000010
/* 03D4C 8093031C 0C01DE80 */  jal     Math_StepToF
              
/* 03D50 80930320 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 03D54 80930324 3C028094 */  lui     $v0, %hi(D_80938C90)       ## $v0 = 80940000
/* 03D58 80930328 8C428C90 */  lw      $v0, %lo(D_80938C90)($v0)  
/* 03D5C 8093032C 3C088093 */  lui     $t0, %hi(func_8092DAB8)    ## $t0 = 80930000
/* 03D60 80930330 2508DAB8 */  addiu   $t0, $t0, %lo(func_8092DAB8) ## $t0 = 8092DAB8
/* 03D64 80930334 8C430190 */  lw      $v1, 0x0190($v0)           ## 80940190
/* 03D68 80930338 3C0A8093 */  lui     $t2, %hi(func_8092CC58)    ## $t2 = 80930000
/* 03D6C 8093033C 254ACC58 */  addiu   $t2, $t2, %lo(func_8092CC58) ## $t2 = 8092CC58
/* 03D70 80930340 1503000C */  bne     $t0, $v1, .L80930374       
/* 03D74 80930344 00000000 */  nop
/* 03D78 80930348 82090195 */  lb      $t1, 0x0195($s0)           ## 00000195
/* 03D7C 8093034C 11200005 */  beq     $t1, $zero, .L80930364     
/* 03D80 80930350 00000000 */  nop
/* 03D84 80930354 0C24CEE1 */  jal     func_80933B84              
/* 03D88 80930358 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D8C 8093035C 10000016 */  beq     $zero, $zero, .L809303B8   
/* 03D90 80930360 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80930364:
/* 03D94 80930364 0C24BEF9 */  jal     func_8092FBE4              
/* 03D98 80930368 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03D9C 8093036C 10000012 */  beq     $zero, $zero, .L809303B8   
/* 03DA0 80930370 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L80930374:
/* 03DA4 80930374 51430010 */  beql    $t2, $v1, .L809303B8       
/* 03DA8 80930378 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03DAC 8093037C 84430198 */  lh      $v1, 0x0198($v0)           ## 00000198
/* 03DB0 80930380 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 03DB4 80930384 24040005 */  addiu   $a0, $zero, 0x0005         ## $a0 = 00000005
/* 03DB8 80930388 0061001A */  div     $zero, $v1, $at            
/* 03DBC 8093038C 00005810 */  mfhi    $t3                        
/* 03DC0 80930390 2401001C */  addiu   $at, $zero, 0x001C         ## $at = 0000001C
/* 03DC4 80930394 548B0008 */  bnel    $a0, $t3, .L809303B8       
/* 03DC8 80930398 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03DCC 8093039C 0061001A */  div     $zero, $v1, $at            
/* 03DD0 809303A0 00006010 */  mfhi    $t4                        
/* 03DD4 809303A4 508C0004 */  beql    $a0, $t4, .L809303B8       
/* 03DD8 809303A8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 03DDC 809303AC 0C24C039 */  jal     func_809300E4              
/* 03DE0 809303B0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03DE4 809303B4 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809303B8:
/* 03DE8 809303B8 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 03DEC 809303BC 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 03DF0 809303C0 03E00008 */  jr      $ra                        
/* 03DF4 809303C4 00000000 */  nop
