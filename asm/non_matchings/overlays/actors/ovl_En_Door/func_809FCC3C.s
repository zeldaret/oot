glabel func_809FCC3C
/* 00A6C 809FCC3C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00A70 809FCC40 AFA70034 */  sw      $a3, 0x0034($sp)           
/* 00A74 809FCC44 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00A78 809FCC48 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00A7C 809FCC4C AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A80 809FCC50 AFA40028 */  sw      $a0, 0x0028($sp)           
/* 00A84 809FCC54 14A10040 */  bne     $a1, $at, .L809FCD58       
/* 00A88 809FCC58 AFA60030 */  sw      $a2, 0x0030($sp)           
/* 00A8C 809FCC5C 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00A90 809FCC60 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 00A94 809FCC64 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00A98 809FCC68 806E0194 */  lb      $t6, 0x0194($v1)           ## 00000194
/* 00A9C 809FCC6C 846D0032 */  lh      $t5, 0x0032($v1)           ## 00000032
/* 00AA0 809FCC70 850C0004 */  lh      $t4, 0x0004($t0)           ## 00000004
/* 00AA4 809FCC74 9469001C */  lhu     $t1, 0x001C($v1)           ## 0000001C
/* 00AA8 809FCC78 3C1880A0 */  lui     $t8, %hi(D_809FCEE4)       ## $t8 = 80A00000
/* 00AAC 809FCC7C 00811021 */  addu    $v0, $a0, $at              
/* 00AB0 809FCC80 000E78C0 */  sll     $t7, $t6,  3               
/* 00AB4 809FCC84 8C591D38 */  lw      $t9, 0x1D38($v0)           ## 00001D38
/* 00AB8 809FCC88 2718CEE4 */  addiu   $t8, $t8, %lo(D_809FCEE4)  ## $t8 = 809FCEE4
/* 00ABC 809FCC8C 018D7021 */  addu    $t6, $t4, $t5              
/* 00AC0 809FCC90 01F83021 */  addu    $a2, $t7, $t8              
/* 00AC4 809FCC94 A50E0004 */  sh      $t6, 0x0004($t0)           ## 00000004
/* 00AC8 809FCC98 804F1CD0 */  lb      $t7, 0x1CD0($v0)           ## 00001CD0
/* 00ACC 809FCC9C 00095283 */  sra     $t2, $t1, 10               
/* 00AD0 809FCCA0 000A5900 */  sll     $t3, $t2,  4               
/* 00AD4 809FCCA4 05E10005 */  bgez    $t7, .L809FCCBC            
/* 00AD8 809FCCA8 032B2021 */  addu    $a0, $t9, $t3              
/* 00ADC 809FCCAC 80850000 */  lb      $a1, 0x0000($a0)           ## 00000000
/* 00AE0 809FCCB0 80980002 */  lb      $t8, 0x0002($a0)           ## 00000002
/* 00AE4 809FCCB4 8FAB0030 */  lw      $t3, 0x0030($sp)           
/* 00AE8 809FCCB8 14B8001E */  bne     $a1, $t8, .L809FCD34       
.L809FCCBC:
/* 00AEC 809FCCBC 24E400E0 */  addiu   $a0, $a3, 0x00E0           ## $a0 = 000000E0
/* 00AF0 809FCCC0 24650024 */  addiu   $a1, $v1, 0x0024           ## $a1 = 00000024
/* 00AF4 809FCCC4 0C01E01A */  jal     Math_Vec3f_Yaw
              
/* 00AF8 809FCCC8 AFA6001C */  sw      $a2, 0x001C($sp)           
/* 00AFC 809FCCCC 8FA3003C */  lw      $v1, 0x003C($sp)           
/* 00B00 809FCCD0 8FA80038 */  lw      $t0, 0x0038($sp)           
/* 00B04 809FCCD4 8FA50030 */  lw      $a1, 0x0030($sp)           
/* 00B08 809FCCD8 8C6A016C */  lw      $t2, 0x016C($v1)           ## 0000016C
/* 00B0C 809FCCDC 846900B6 */  lh      $t1, 0x00B6($v1)           ## 000000B6
/* 00B10 809FCCE0 850C0004 */  lh      $t4, 0x0004($t0)           ## 00000004
/* 00B14 809FCCE4 85590016 */  lh      $t9, 0x0016($t2)           ## 00000016
/* 00B18 809FCCE8 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00B1C 809FCCEC 01395821 */  addu    $t3, $t1, $t9              
/* 00B20 809FCCF0 016C6821 */  addu    $t5, $t3, $t4              
/* 00B24 809FCCF4 01A22023 */  subu    $a0, $t5, $v0              
/* 00B28 809FCCF8 00042400 */  sll     $a0, $a0, 16               
/* 00B2C 809FCCFC 00042403 */  sra     $a0, $a0, 16               
/* 00B30 809FCD00 04800003 */  bltz    $a0, .L809FCD10            
/* 00B34 809FCD04 00041023 */  subu    $v0, $zero, $a0            
/* 00B38 809FCD08 10000001 */  beq     $zero, $zero, .L809FCD10   
/* 00B3C 809FCD0C 00801025 */  or      $v0, $a0, $zero            ## $v0 = 00000000
.L809FCD10:
/* 00B40 809FCD10 28414000 */  slti    $at, $v0, 0x4000           
/* 00B44 809FCD14 50200005 */  beql    $at, $zero, .L809FCD2C     
/* 00B48 809FCD18 8CCF0004 */  lw      $t7, 0x0004($a2)           ## 00000004
/* 00B4C 809FCD1C 8CCE0000 */  lw      $t6, 0x0000($a2)           ## 00000000
/* 00B50 809FCD20 1000000D */  beq     $zero, $zero, .L809FCD58   
/* 00B54 809FCD24 ACAE0000 */  sw      $t6, 0x0000($a1)           ## 00000000
/* 00B58 809FCD28 8CCF0004 */  lw      $t7, 0x0004($a2)           ## 00000004
.L809FCD2C:
/* 00B5C 809FCD2C 1000000A */  beq     $zero, $zero, .L809FCD58   
/* 00B60 809FCD30 ACAF0000 */  sw      $t7, 0x0000($a1)           ## 00000000
.L809FCD34:
/* 00B64 809FCD34 80780003 */  lb      $t8, 0x0003($v1)           ## 00000003
/* 00B68 809FCD38 90620192 */  lbu     $v0, 0x0192($v1)           ## 00000192
/* 00B6C 809FCD3C 53050003 */  beql    $t8, $a1, .L809FCD4C       
/* 00B70 809FCD40 00025080 */  sll     $t2, $v0,  2               
/* 00B74 809FCD44 38420001 */  xori    $v0, $v0, 0x0001           ## $v0 = 00000001
/* 00B78 809FCD48 00025080 */  sll     $t2, $v0,  2               
.L809FCD4C:
/* 00B7C 809FCD4C 00CA4821 */  addu    $t1, $a2, $t2              
/* 00B80 809FCD50 8D390000 */  lw      $t9, 0x0000($t1)           ## 00000000
/* 00B84 809FCD54 AD790000 */  sw      $t9, 0x0000($t3)           ## 00000000
.L809FCD58:
/* 00B88 809FCD58 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B8C 809FCD5C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00B90 809FCD60 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
/* 00B94 809FCD64 03E00008 */  jr      $ra                        
/* 00B98 809FCD68 00000000 */  nop


