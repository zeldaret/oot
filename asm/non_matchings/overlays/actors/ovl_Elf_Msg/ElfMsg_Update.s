glabel ElfMsg_Update
/* 004BC 809ACFDC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 004C0 809ACFE0 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 004C4 809ACFE4 AFB10018 */  sw      $s1, 0x0018($sp)           
/* 004C8 809ACFE8 AFB00014 */  sw      $s0, 0x0014($sp)           
/* 004CC 809ACFEC 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 004D0 809ACFF0 0C26B2CA */  jal     func_809ACB28              
/* 004D4 809ACFF4 00A08825 */  or      $s1, $a1, $zero            ## $s1 = 00000000
/* 004D8 809ACFF8 14400020 */  bne     $v0, $zero, .L809AD07C     
/* 004DC 809ACFFC 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 004E0 809AD000 0C00BC65 */  jal     func_8002F194              
/* 004E4 809AD004 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 004E8 809AD008 5040000E */  beql    $v0, $zero, .L809AD044     
/* 004EC 809AD00C 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
/* 004F0 809AD010 8605001C */  lh      $a1, 0x001C($s0)           ## 0000001C
/* 004F4 809AD014 2401003F */  addiu   $at, $zero, 0x003F         ## $at = 0000003F
/* 004F8 809AD018 00052A03 */  sra     $a1, $a1,  8               
/* 004FC 809AD01C 30A5003F */  andi    $a1, $a1, 0x003F           ## $a1 = 00000000
/* 00500 809AD020 10A10003 */  beq     $a1, $at, .L809AD030       
/* 00504 809AD024 00000000 */  nop
/* 00508 809AD028 0C00B2DD */  jal     Flags_SetSwitch
              
/* 0050C 809AD02C 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
.L809AD030:
/* 00510 809AD030 0C00B55C */  jal     Actor_Kill
              
/* 00514 809AD034 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00518 809AD038 10000011 */  beq     $zero, $zero, .L809AD080   
/* 0051C 809AD03C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00520 809AD040 86020032 */  lh      $v0, 0x0032($s0)           ## 00000032
.L809AD044:
/* 00524 809AD044 28410042 */  slti    $at, $v0, 0x0042           
/* 00528 809AD048 14200007 */  bne     $at, $zero, .L809AD068     
/* 0052C 809AD04C 28410081 */  slti    $at, $v0, 0x0081           
/* 00530 809AD050 10200005 */  beq     $at, $zero, .L809AD068     
/* 00534 809AD054 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 00538 809AD058 0C00B2D0 */  jal     Flags_GetSwitch
              
/* 0053C 809AD05C 2445FFBF */  addiu   $a1, $v0, 0xFFBF           ## $a1 = FFFFFFBF
/* 00540 809AD060 50400007 */  beql    $v0, $zero, .L809AD080     
/* 00544 809AD064 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809AD068:
/* 00548 809AD068 8E19014C */  lw      $t9, 0x014C($s0)           ## 0000014C
/* 0054C 809AD06C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00550 809AD070 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 00554 809AD074 0320F809 */  jalr    $ra, $t9                   
/* 00558 809AD078 00000000 */  nop
.L809AD07C:
/* 0055C 809AD07C 8FBF001C */  lw      $ra, 0x001C($sp)           
.L809AD080:
/* 00560 809AD080 8FB00014 */  lw      $s0, 0x0014($sp)           
/* 00564 809AD084 8FB10018 */  lw      $s1, 0x0018($sp)           
/* 00568 809AD088 03E00008 */  jr      $ra                        
/* 0056C 809AD08C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000


