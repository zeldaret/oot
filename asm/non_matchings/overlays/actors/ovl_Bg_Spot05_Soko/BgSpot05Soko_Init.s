glabel BgSpot05Soko_Init
/* 00000 808AE470 27BDFFD0 */  addiu   $sp, $sp, 0xFFD0           ## $sp = FFFFFFD0
/* 00004 808AE474 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 00008 808AE478 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 0000C 808AE47C AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00010 808AE480 3C05808B */  lui     $a1, %hi(D_808AE720)       ## $a1 = 808B0000
/* 00014 808AE484 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00018 808AE488 AFA00024 */  sw      $zero, 0x0024($sp)         
/* 0001C 808AE48C 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00020 808AE490 24A5E720 */  addiu   $a1, $a1, %lo(D_808AE720)  ## $a1 = 808AE720
/* 00024 808AE494 860E001C */  lh      $t6, 0x001C($s0)           ## 0000001C
/* 00028 808AE498 8619001C */  lh      $t9, 0x001C($s0)           ## 0000001C
/* 0002C 808AE49C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00030 808AE4A0 000E7A03 */  sra     $t7, $t6,  8               
/* 00034 808AE4A4 31F800FF */  andi    $t8, $t7, 0x00FF           ## $t8 = 00000000
/* 00038 808AE4A8 332800FF */  andi    $t0, $t9, 0x00FF           ## $t0 = 00000000
/* 0003C 808AE4AC AE180168 */  sw      $t8, 0x0168($s0)           ## 00000168
/* 00040 808AE4B0 A608001C */  sh      $t0, 0x001C($s0)           ## 0000001C
/* 00044 808AE4B4 0C010D20 */  jal     DynaPolyInfo_SetActorMove
              
/* 00048 808AE4B8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0004C 808AE4BC 8609001C */  lh      $t1, 0x001C($s0)           ## 0000001C
/* 00050 808AE4C0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00054 808AE4C4 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 00058 808AE4C8 15200010 */  bne     $t1, $zero, .L808AE50C     
/* 0005C 808AE4CC 248412C0 */  addiu   $a0, $a0, 0x12C0           ## $a0 = 060012C0
/* 00060 808AE4D0 3C040600 */  lui     $a0, 0x0600                ## $a0 = 06000000
/* 00064 808AE4D4 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 00068 808AE4D8 24840918 */  addiu   $a0, $a0, 0x0918           ## $a0 = 06000918
/* 0006C 808AE4DC 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00070 808AE4E0 8D4AE664 */  lw      $t2, -0x199C($t2)          ## 8015E664
/* 00074 808AE4E4 3C0B808B */  lui     $t3, %hi(func_808AE5A8)    ## $t3 = 808B0000
/* 00078 808AE4E8 256BE5A8 */  addiu   $t3, $t3, %lo(func_808AE5A8) ## $t3 = 808AE5A8
/* 0007C 808AE4EC 15400005 */  bne     $t2, $zero, .L808AE504     
/* 00080 808AE4F0 00000000 */  nop
/* 00084 808AE4F4 0C00B55C */  jal     Actor_Kill
              
/* 00088 808AE4F8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 0008C 808AE4FC 10000014 */  beq     $zero, $zero, .L808AE550   
/* 00090 808AE500 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AE504:
/* 00094 808AE504 10000011 */  beq     $zero, $zero, .L808AE54C   
/* 00098 808AE508 AE0B0164 */  sw      $t3, 0x0164($s0)           ## 00000164
.L808AE50C:
/* 0009C 808AE50C 0C010620 */  jal     DynaPolyInfo_Alloc
              
/* 000A0 808AE510 27A50024 */  addiu   $a1, $sp, 0x0024           ## $a1 = FFFFFFF4
/* 000A4 808AE514 8FA40034 */  lw      $a0, 0x0034($sp)           
/* 000A8 808AE518 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 000AC 808AE51C 8E050168 */  lw      $a1, 0x0168($s0)           ## 00000168
/* 000B0 808AE520 10400005 */  beq     $v0, $zero, .L808AE538     
/* 000B4 808AE524 3C0C808B */  lui     $t4, %hi(func_808AE5B4)    ## $t4 = 808B0000
/* 000B8 808AE528 0C00B55C */  jal     Actor_Kill
              
/* 000BC 808AE52C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 000C0 808AE530 10000007 */  beq     $zero, $zero, .L808AE550   
/* 000C4 808AE534 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AE538:
/* 000C8 808AE538 8E0D0004 */  lw      $t5, 0x0004($s0)           ## 00000004
/* 000CC 808AE53C 258CE5B4 */  addiu   $t4, $t4, %lo(func_808AE5B4) ## $t4 = FFFFE5B4
/* 000D0 808AE540 AE0C0164 */  sw      $t4, 0x0164($s0)           ## 00000164
/* 000D4 808AE544 35AE0010 */  ori     $t6, $t5, 0x0010           ## $t6 = 00000010
/* 000D8 808AE548 AE0E0004 */  sw      $t6, 0x0004($s0)           ## 00000004
.L808AE54C:
/* 000DC 808AE54C 8FA40034 */  lw      $a0, 0x0034($sp)           
.L808AE550:
/* 000E0 808AE550 02003025 */  or      $a2, $s0, $zero            ## $a2 = 00000000
/* 000E4 808AE554 8FA70024 */  lw      $a3, 0x0024($sp)           
/* 000E8 808AE558 0C00FA9D */  jal     DynaPolyInfo_RegisterActor
              ## DynaPolyInfo_setActor
/* 000EC 808AE55C 24850810 */  addiu   $a1, $a0, 0x0810           ## $a1 = 00000810
/* 000F0 808AE560 AE02014C */  sw      $v0, 0x014C($s0)           ## 0000014C
/* 000F4 808AE564 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 000F8 808AE568 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 000FC 808AE56C 27BD0030 */  addiu   $sp, $sp, 0x0030           ## $sp = 00000000
/* 00100 808AE570 03E00008 */  jr      $ra                        
/* 00104 808AE574 00000000 */  nop


