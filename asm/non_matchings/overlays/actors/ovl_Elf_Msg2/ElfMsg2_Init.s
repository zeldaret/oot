glabel ElfMsg2_Init
/* 00184 809AD884 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00188 809AD888 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 0018C 809AD88C 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00190 809AD890 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00194 809AD894 AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00198 809AD898 3C04809B */  lui     $a0, %hi(D_809ADDC0)       ## $a0 = 809B0000
/* 0019C 809AD89C 2484DDC0 */  addiu   $a0, $a0, %lo(D_809ADDC0)  ## $a0 = 809ADDC0
/* 001A0 809AD8A0 0C00084C */  jal     osSyncPrintf
              
/* 001A4 809AD8A4 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 001A8 809AD8A8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001AC 809AD8AC 0C26B5C2 */  jal     func_809AD708              
/* 001B0 809AD8B0 8FA50024 */  lw      $a1, 0x0024($sp)           
/* 001B4 809AD8B4 14400024 */  bne     $v0, $zero, .L809AD948     
/* 001B8 809AD8B8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001BC 809AD8BC 86020030 */  lh      $v0, 0x0030($s0)           ## 00000030
/* 001C0 809AD8C0 3C05809B */  lui     $a1, %hi(D_809ADC30)       ## $a1 = 809B0000
/* 001C4 809AD8C4 18400004 */  blez    $v0, .L809AD8D8            
/* 001C8 809AD8C8 28410008 */  slti    $at, $v0, 0x0008           
/* 001CC 809AD8CC 10200002 */  beq     $at, $zero, .L809AD8D8     
/* 001D0 809AD8D0 244EFFFF */  addiu   $t6, $v0, 0xFFFF           ## $t6 = FFFFFFFF
/* 001D4 809AD8D4 A20E001F */  sb      $t6, 0x001F($s0)           ## 0000001F
.L809AD8D8:
/* 001D8 809AD8D8 0C01E037 */  jal     Actor_ProcessInitChain
              
/* 001DC 809AD8DC 24A5DC30 */  addiu   $a1, $a1, %lo(D_809ADC30)  ## $a1 = 809ADC30
/* 001E0 809AD8E0 860F0032 */  lh      $t7, 0x0032($s0)           ## 00000032
/* 001E4 809AD8E4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 001E8 809AD8E8 3C05809B */  lui     $a1, %hi(func_809AD9F4)    ## $a1 = 809B0000
/* 001EC 809AD8EC 29E10041 */  slti    $at, $t7, 0x0041           
/* 001F0 809AD8F0 14200007 */  bne     $at, $zero, .L809AD910     
/* 001F4 809AD8F4 00000000 */  nop
/* 001F8 809AD8F8 3C05809B */  lui     $a1, %hi(func_809ADA28)    ## $a1 = 809B0000
/* 001FC 809AD8FC 24A5DA28 */  addiu   $a1, $a1, %lo(func_809ADA28) ## $a1 = 809ADA28
/* 00200 809AD900 0C26B5C0 */  jal     func_809AD700              
/* 00204 809AD904 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00208 809AD908 1000000C */  beq     $zero, $zero, .L809AD93C   
/* 0020C 809AD90C A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L809AD910:
/* 00210 809AD910 0C26B5C0 */  jal     func_809AD700              
/* 00214 809AD914 24A5D9F4 */  addiu   $a1, $a1, %lo(func_809AD9F4) ## $a1 = FFFFD9F4
/* 00218 809AD918 8E180004 */  lw      $t8, 0x0004($s0)           ## 00000004
/* 0021C 809AD91C 3C010004 */  lui     $at, 0x0004                ## $at = 00040000
/* 00220 809AD920 34210001 */  ori     $at, $at, 0x0001           ## $at = 00040001
/* 00224 809AD924 0301C825 */  or      $t9, $t8, $at              ## $t9 = 00040001
/* 00228 809AD928 AE190004 */  sw      $t9, 0x0004($s0)           ## 00000004
/* 0022C 809AD92C 0C26B65A */  jal     func_809AD968              
/* 00230 809AD930 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00234 809AD934 A602010E */  sh      $v0, 0x010E($s0)           ## 0000010E
/* 00238 809AD938 A60000B8 */  sh      $zero, 0x00B8($s0)         ## 000000B8
.L809AD93C:
/* 0023C 809AD93C 860200B8 */  lh      $v0, 0x00B8($s0)           ## 000000B8
/* 00240 809AD940 A60200B6 */  sh      $v0, 0x00B6($s0)           ## 000000B6
/* 00244 809AD944 A60200B4 */  sh      $v0, 0x00B4($s0)           ## 000000B4
.L809AD948:
/* 00248 809AD948 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 0024C 809AD94C 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00250 809AD950 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00254 809AD954 03E00008 */  jr      $ra                        
/* 00258 809AD958 00000000 */  nop


