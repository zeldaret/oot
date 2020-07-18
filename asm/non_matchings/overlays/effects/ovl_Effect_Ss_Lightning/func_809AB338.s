.late_rodata
glabel D_809AB598
 .word 0x45638000
glabel D_809AB59C
    .float 0.01
    .balign 4

glabel D_809AB5A0
    .float 0.1
    .balign 4

.text
glabel func_809AB338
/* 00448 809AB338 27BDFFB0 */  addiu   $sp, $sp, 0xFFB0           ## $sp = FFFFFFB0
/* 0044C 809AB33C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00450 809AB340 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00454 809AB344 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00458 809AB348 F7B40010 */  sdc1    $f20, 0x0010($sp)          
/* 0045C 809AB34C AFA50054 */  sw      $a1, 0x0054($sp)           
/* 00460 809AB350 84CE0050 */  lh      $t6, 0x0050($a2)           ## 00000050
/* 00464 809AB354 00C08025 */  or      $s0, $a2, $zero            ## $s0 = 00000000
/* 00468 809AB358 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0046C 809AB35C 51C0006C */  beql    $t6, $zero, .L809AB510     
/* 00470 809AB360 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00474 809AB364 84CF005C */  lh      $t7, 0x005C($a2)           ## 0000005C
/* 00478 809AB368 84D90056 */  lh      $t9, 0x0056($a2)           ## 00000056
/* 0047C 809AB36C 25F80001 */  addiu   $t8, $t7, 0x0001           ## $t8 = 00000001
/* 00480 809AB370 57190067 */  bnel    $t8, $t9, .L809AB510       
/* 00484 809AB374 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00488 809AB378 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 0048C 809AB37C 00000000 */  nop
/* 00490 809AB380 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00494 809AB384 44812000 */  mtc1    $at, $f4                   ## $f4 = 0.50
/* 00498 809AB388 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 0049C 809AB38C 4604003C */  c.lt.s  $f0, $f4                   
/* 004A0 809AB390 00000000 */  nop
/* 004A4 809AB394 45000003 */  bc1f    .L809AB3A4                 
/* 004A8 809AB398 00000000 */  nop
/* 004AC 809AB39C 10000001 */  beq     $zero, $zero, .L809AB3A4   
/* 004B0 809AB3A0 2403FFFF */  addiu   $v1, $zero, 0xFFFF         ## $v1 = FFFFFFFF
.L809AB3A4:
/* 004B4 809AB3A4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 004B8 809AB3A8 AFA30034 */  sw      $v1, 0x0034($sp)           
/* 004BC 809AB3AC 3C01809B */  lui     $at, %hi(D_809AB598)       ## $at = 809B0000
/* 004C0 809AB3B0 C426B598 */  lwc1    $f6, %lo(D_809AB598)($at)  
/* 004C4 809AB3B4 8FA30034 */  lw      $v1, 0x0034($sp)           
/* 004C8 809AB3B8 86020054 */  lh      $v0, 0x0054($s0)           ## 00000054
/* 004CC 809AB3BC 46060202 */  mul.s   $f8, $f0, $f6              
/* 004D0 809AB3C0 3C01809B */  lui     $at, %hi(D_809AB59C)       ## $at = 809B0000
/* 004D4 809AB3C4 C424B59C */  lwc1    $f4, %lo(D_809AB59C)($at)  
/* 004D8 809AB3C8 3C0142A0 */  lui     $at, 0x42A0                ## $at = 42A00000
/* 004DC 809AB3CC 2444C000 */  addiu   $a0, $v0, 0xC000           ## $a0 = FFFFC000
/* 004E0 809AB3D0 00042400 */  sll     $a0, $a0, 16               
/* 004E4 809AB3D4 00042403 */  sra     $a0, $a0, 16               
/* 004E8 809AB3D8 4600428D */  trunc.w.s $f10, $f8                  
/* 004EC 809AB3DC 44814000 */  mtc1    $at, $f8                   ## $f8 = 80.00
/* 004F0 809AB3E0 44095000 */  mfc1    $t1, $f10                  
/* 004F4 809AB3E4 00000000 */  nop
/* 004F8 809AB3E8 00095400 */  sll     $t2, $t1, 16               
/* 004FC 809AB3EC 000A5C03 */  sra     $t3, $t2, 16               
/* 00500 809AB3F0 256C0E38 */  addiu   $t4, $t3, 0x0E38           ## $t4 = 00000E38
/* 00504 809AB3F4 01830019 */  multu   $t4, $v1                   
/* 00508 809AB3F8 00006812 */  mflo    $t5                        
/* 0050C 809AB3FC 01A27021 */  addu    $t6, $t5, $v0              
/* 00510 809AB400 A7AE003E */  sh      $t6, 0x003E($sp)           
/* 00514 809AB404 860F0052 */  lh      $t7, 0x0052($s0)           ## 00000052
/* 00518 809AB408 448F8000 */  mtc1    $t7, $f16                  ## $f16 = 0.00
/* 0051C 809AB40C 00000000 */  nop
/* 00520 809AB410 468084A0 */  cvt.s.w $f18, $f16                 
/* 00524 809AB414 46049182 */  mul.s   $f6, $f18, $f4             
/* 00528 809AB418 00000000 */  nop
/* 0052C 809AB41C 46083502 */  mul.s   $f20, $f6, $f8             
/* 00530 809AB420 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 00534 809AB424 00000000 */  nop
/* 00538 809AB428 46140282 */  mul.s   $f10, $f0, $f20            
/* 0053C 809AB42C C6100004 */  lwc1    $f16, 0x0004($s0)          ## 00000004
/* 00540 809AB430 46105480 */  add.s   $f18, $f10, $f16           
/* 00544 809AB434 E7B20044 */  swc1    $f18, 0x0044($sp)          
/* 00548 809AB438 86040054 */  lh      $a0, 0x0054($s0)           ## 00000054
/* 0054C 809AB43C 2484C000 */  addiu   $a0, $a0, 0xC000           ## $a0 = FFFFC000
/* 00550 809AB440 00042400 */  sll     $a0, $a0, 16               
/* 00554 809AB444 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 00558 809AB448 00042403 */  sra     $a0, $a0, 16               
/* 0055C 809AB44C 863807A0 */  lh      $t8, 0x07A0($s1)           ## 000007A0
/* 00560 809AB450 46140502 */  mul.s   $f20, $f0, $f20            
/* 00564 809AB454 0018C880 */  sll     $t9, $t8,  2               
/* 00568 809AB458 02394021 */  addu    $t0, $s1, $t9              
/* 0056C 809AB45C 0C016A52 */  jal     func_8005A948              
/* 00570 809AB460 8D040790 */  lw      $a0, 0x0790($t0)           ## 00000790
/* 00574 809AB464 00022400 */  sll     $a0, $v0, 16               
/* 00578 809AB468 0C01DE0D */  jal     Math_Coss
              ## coss?
/* 0057C 809AB46C 00042403 */  sra     $a0, $a0, 16               
/* 00580 809AB470 46140182 */  mul.s   $f6, $f0, $f20             
/* 00584 809AB474 C6040000 */  lwc1    $f4, 0x0000($s0)           ## 00000000
/* 00588 809AB478 46062201 */  sub.s   $f8, $f4, $f6              
/* 0058C 809AB47C E7A80040 */  swc1    $f8, 0x0040($sp)           
/* 00590 809AB480 862907A0 */  lh      $t1, 0x07A0($s1)           ## 000007A0
/* 00594 809AB484 00095080 */  sll     $t2, $t1,  2               
/* 00598 809AB488 022A5821 */  addu    $t3, $s1, $t2              
/* 0059C 809AB48C 0C016A52 */  jal     func_8005A948              
/* 005A0 809AB490 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 005A4 809AB494 00022400 */  sll     $a0, $v0, 16               
/* 005A8 809AB498 0C01DE1C */  jal     Math_Sins
              ## sins?
/* 005AC 809AB49C 00042403 */  sra     $a0, $a0, 16               
/* 005B0 809AB4A0 46140282 */  mul.s   $f10, $f0, $f20            
/* 005B4 809AB4A4 C6100008 */  lwc1    $f16, 0x0008($s0)          ## 00000008
/* 005B8 809AB4A8 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005BC 809AB4AC 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFF0
/* 005C0 809AB4B0 87A6003E */  lh      $a2, 0x003E($sp)           
/* 005C4 809AB4B4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 005C8 809AB4B8 46105480 */  add.s   $f18, $f10, $f16           
/* 005CC 809AB4BC 0C26ABF5 */  jal     func_809AAFD4              
/* 005D0 809AB4C0 E7B20048 */  swc1    $f18, 0x0048($sp)          
/* 005D4 809AB4C4 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 005D8 809AB4C8 00000000 */  nop
/* 005DC 809AB4CC 3C01809B */  lui     $at, %hi(D_809AB5A0)       ## $at = 809B0000
/* 005E0 809AB4D0 C424B5A0 */  lwc1    $f4, %lo(D_809AB5A0)($at)  
/* 005E4 809AB4D4 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 005E8 809AB4D8 27A50040 */  addiu   $a1, $sp, 0x0040           ## $a1 = FFFFFFF0
/* 005EC 809AB4DC 4604003C */  c.lt.s  $f0, $f4                   
/* 005F0 809AB4E0 00000000 */  nop
/* 005F4 809AB4E4 4502000A */  bc1fl   .L809AB510                 
/* 005F8 809AB4E8 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 005FC 809AB4EC 860C0054 */  lh      $t4, 0x0054($s0)           ## 00000054
/* 00600 809AB4F0 87AE003E */  lh      $t6, 0x003E($sp)           
/* 00604 809AB4F4 02003825 */  or      $a3, $s0, $zero            ## $a3 = 00000000
/* 00608 809AB4F8 000C6840 */  sll     $t5, $t4,  1               
/* 0060C 809AB4FC 01AE3023 */  subu    $a2, $t5, $t6              
/* 00610 809AB500 00063400 */  sll     $a2, $a2, 16               
/* 00614 809AB504 0C26ABF5 */  jal     func_809AAFD4              
/* 00618 809AB508 00063403 */  sra     $a2, $a2, 16               
/* 0061C 809AB50C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809AB510:
/* 00620 809AB510 D7B40010 */  ldc1    $f20, 0x0010($sp)          
/* 00624 809AB514 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 00628 809AB518 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 0062C 809AB51C 03E00008 */  jr      $ra                        
/* 00630 809AB520 27BD0050 */  addiu   $sp, $sp, 0x0050           ## $sp = 00000000
/* 00634 809AB524 00000000 */  nop
/* 00638 809AB528 00000000 */  nop
/* 0063C 809AB52C 00000000 */  nop
