.rdata
glabel D_8099C5B0
    .asciz "\nBOSSWARP arg_data=[%d]"
    .balign 4

.text
glabel DoorWarp1_Init
/* 00008 80998788 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 0000C 8099878C AFB10028 */  sw      $s1, 0x0028($sp)           
/* 00010 80998790 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00014 80998794 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 00018 80998798 AFBF002C */  sw      $ra, 0x002C($sp)           
/* 0001C 8099879C AFB00024 */  sw      $s0, 0x0024($sp)           
/* 00020 809987A0 3C05809A */  lui     $a1, %hi(D_8099C5A0)       ## $a1 = 809A0000
/* 00024 809987A4 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00028 809987A8 A48001B8 */  sh      $zero, 0x01B8($a0)         ## 000001B8
/* 0002C 809987AC 24A5C5A0 */  addiu   $a1, $a1, %lo(D_8099C5A0)  ## $a1 = 8099C5A0
/* 00030 809987B0 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 00034 809987B4 E48401B4 */  swc1    $f4, 0x01B4($a0)           ## 000001B4
/* 00038 809987B8 44800000 */  mtc1    $zero, $f0                 ## $f0 = 0.00
/* 0003C 809987BC 260400B4 */  addiu   $a0, $s0, 0x00B4           ## $a0 = 000000B4
/* 00040 809987C0 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 00044 809987C4 44050000 */  mfc1    $a1, $f0                   
/* 00048 809987C8 44070000 */  mfc1    $a3, $f0                   
/* 0004C 809987CC 0C00AC78 */  jal     ActorShape_Init
              
/* 00050 809987D0 00000000 */  nop
/* 00054 809987D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 00058 809987D8 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 0005C 809987DC 10A1003E */  beq     $a1, $at, .L809988D8       
/* 00060 809987E0 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 00064 809987E4 10A1003C */  beq     $a1, $at, .L809988D8       
/* 00068 809987E8 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 0006C 809987EC 10A1003A */  beq     $a1, $at, .L809988D8       
/* 00070 809987F0 24010006 */  addiu   $at, $zero, 0x0006         ## $at = 00000006
/* 00074 809987F4 10A10038 */  beq     $a1, $at, .L809988D8       
/* 00078 809987F8 260401C8 */  addiu   $a0, $s0, 0x01C8           ## $a0 = 000001C8
/* 0007C 809987FC C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 00080 80998800 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 00084 80998804 C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 00088 80998808 4600320D */  trunc.w.s $f8, $f6                   
/* 0008C 8099880C AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00090 80998810 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00094 80998814 4600540D */  trunc.w.s $f16, $f10                 
/* 00098 80998818 44054000 */  mfc1    $a1, $f8                   
/* 0009C 8099881C AFA00018 */  sw      $zero, 0x0018($sp)         
/* 000A0 80998820 4600910D */  trunc.w.s $f4, $f18                  
/* 000A4 80998824 44068000 */  mfc1    $a2, $f16                  
/* 000A8 80998828 00052C00 */  sll     $a1, $a1, 16               
/* 000AC 8099882C 00052C03 */  sra     $a1, $a1, 16               
/* 000B0 80998830 44072000 */  mfc1    $a3, $f4                   
/* 000B4 80998834 00063400 */  sll     $a2, $a2, 16               
/* 000B8 80998838 00063403 */  sra     $a2, $a2, 16               
/* 000BC 8099883C 00073C00 */  sll     $a3, $a3, 16               
/* 000C0 80998840 00073C03 */  sra     $a3, $a3, 16               
/* 000C4 80998844 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 000C8 80998848 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 000CC 8099884C AFA00010 */  sw      $zero, 0x0010($sp)         
/* 000D0 80998850 262507A8 */  addiu   $a1, $s1, 0x07A8           ## $a1 = 000007A8
/* 000D4 80998854 AFA50034 */  sw      $a1, 0x0034($sp)           
/* 000D8 80998858 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 000DC 8099885C 0C01E9D9 */  jal     Lights_Insert
              
/* 000E0 80998860 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 000E4 80998864 C6060024 */  lwc1    $f6, 0x0024($s0)           ## 00000024
/* 000E8 80998868 C60A0028 */  lwc1    $f10, 0x0028($s0)          ## 00000028
/* 000EC 8099886C C612002C */  lwc1    $f18, 0x002C($s0)          ## 0000002C
/* 000F0 80998870 4600320D */  trunc.w.s $f8, $f6                   
/* 000F4 80998874 AE0201C4 */  sw      $v0, 0x01C4($s0)           ## 000001C4
/* 000F8 80998878 260401DC */  addiu   $a0, $s0, 0x01DC           ## $a0 = 000001DC
/* 000FC 8099887C 4600540D */  trunc.w.s $f16, $f10                 
/* 00100 80998880 44054000 */  mfc1    $a1, $f8                   
/* 00104 80998884 AFA40030 */  sw      $a0, 0x0030($sp)           
/* 00108 80998888 4600910D */  trunc.w.s $f4, $f18                  
/* 0010C 8099888C 44068000 */  mfc1    $a2, $f16                  
/* 00110 80998890 00052C00 */  sll     $a1, $a1, 16               
/* 00114 80998894 00052C03 */  sra     $a1, $a1, 16               
/* 00118 80998898 44072000 */  mfc1    $a3, $f4                   
/* 0011C 8099889C 00063400 */  sll     $a2, $a2, 16               
/* 00120 809988A0 00063403 */  sra     $a2, $a2, 16               
/* 00124 809988A4 00073C00 */  sll     $a3, $a3, 16               
/* 00128 809988A8 00073C03 */  sra     $a3, $a3, 16               
/* 0012C 809988AC AFA0001C */  sw      $zero, 0x001C($sp)         
/* 00130 809988B0 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 00134 809988B4 AFA00014 */  sw      $zero, 0x0014($sp)         
/* 00138 809988B8 0C01E763 */  jal     Lights_PointNoGlowSetInfo
              
/* 0013C 809988BC AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00140 809988C0 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00144 809988C4 8FA50034 */  lw      $a1, 0x0034($sp)           
/* 00148 809988C8 0C01E9D9 */  jal     Lights_Insert
              
/* 0014C 809988CC 8FA60030 */  lw      $a2, 0x0030($sp)           
/* 00150 809988D0 AE0201D8 */  sw      $v0, 0x01D8($s0)           ## 000001D8
/* 00154 809988D4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
.L809988D8:
/* 00158 809988D8 3C04809A */  lui     $a0, %hi(D_8099C5B0)       ## $a0 = 809A0000
/* 0015C 809988DC 0C00084C */  jal     osSyncPrintf
              
/* 00160 809988E0 2484C5B0 */  addiu   $a0, $a0, %lo(D_8099C5B0)  ## $a0 = 8099C5B0
/* 00164 809988E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00168 809988E8 0C266542 */  jal     func_80999508              
/* 0016C 809988EC 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00170 809988F0 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 00174 809988F4 8FB00024 */  lw      $s0, 0x0024($sp)           
/* 00178 809988F8 8FB10028 */  lw      $s1, 0x0028($sp)           
/* 0017C 809988FC 03E00008 */  jr      $ra                        
/* 00180 80998900 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
