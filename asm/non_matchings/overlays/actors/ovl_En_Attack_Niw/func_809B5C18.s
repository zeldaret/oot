glabel func_809B5C18
/* 00B18 809B5C18 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00B1C 809B5C1C AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00B20 809B5C20 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00B24 809B5C24 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00B28 809B5C28 0C26D57B */  jal     func_809B55EC              
/* 00B2C 809B5C2C AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00B30 809B5C30 54400006 */  bnel    $v0, $zero, .L809B5C4C     
/* 00B34 809B5C34 C60402D0 */  lwc1    $f4, 0x02D0($s0)           ## 000002D0
/* 00B38 809B5C38 0C00B55C */  jal     Actor_Kill
              
/* 00B3C 809B5C3C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00B40 809B5C40 10000020 */  beq     $zero, $zero, .L809B5CC4   
/* 00B44 809B5C44 8FBF0024 */  lw      $ra, 0x0024($sp)           
/* 00B48 809B5C48 C60402D0 */  lwc1    $f4, 0x02D0($s0)           ## 000002D0
.L809B5C4C:
/* 00B4C 809B5C4C C60802DC */  lwc1    $f8, 0x02DC($s0)           ## 000002DC
/* 00B50 809B5C50 AFA00010 */  sw      $zero, 0x0010($sp)         
/* 00B54 809B5C54 4600218D */  trunc.w.s $f6, $f4                   
/* 00B58 809B5C58 26040030 */  addiu   $a0, $s0, 0x0030           ## $a0 = 00000030
/* 00B5C 809B5C5C 24060005 */  addiu   $a2, $zero, 0x0005         ## $a2 = 00000005
/* 00B60 809B5C60 4600428D */  trunc.w.s $f10, $f8                  
/* 00B64 809B5C64 44053000 */  mfc1    $a1, $f6                   
/* 00B68 809B5C68 44075000 */  mfc1    $a3, $f10                  
/* 00B6C 809B5C6C 00052C00 */  sll     $a1, $a1, 16               
/* 00B70 809B5C70 00052C03 */  sra     $a1, $a1, 16               
/* 00B74 809B5C74 00073C00 */  sll     $a3, $a3, 16               
/* 00B78 809B5C78 0C01E1A7 */  jal     Math_SmoothScaleMaxMinS
              
/* 00B7C 809B5C7C 00073C03 */  sra     $a3, $a3, 16               
/* 00B80 809B5C80 3C05459C */  lui     $a1, 0x459C                ## $a1 = 459C0000
/* 00B84 809B5C84 34A54000 */  ori     $a1, $a1, 0x4000           ## $a1 = 459C4000
/* 00B88 809B5C88 260402DC */  addiu   $a0, $s0, 0x02DC           ## $a0 = 000002DC
/* 00B8C 809B5C8C 3C063F80 */  lui     $a2, 0x3F80                ## $a2 = 3F800000
/* 00B90 809B5C90 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00B94 809B5C94 3C0742C8 */  lui     $a3, 0x42C8                ## $a3 = 42C80000
/* 00B98 809B5C98 3C063E99 */  lui     $a2, 0x3E99                ## $a2 = 3E990000
/* 00B9C 809B5C9C 34C6999A */  ori     $a2, $a2, 0x999A           ## $a2 = 3E99999A
/* 00BA0 809B5CA0 26040060 */  addiu   $a0, $s0, 0x0060           ## $a0 = 00000060
/* 00BA4 809B5CA4 3C0540A0 */  lui     $a1, 0x40A0                ## $a1 = 40A00000
/* 00BA8 809B5CA8 0C01E107 */  jal     Math_SmoothScaleMaxF
              
/* 00BAC 809B5CAC 3C073F80 */  lui     $a3, 0x3F80                ## $a3 = 3F800000
/* 00BB0 809B5CB0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00BB4 809B5CB4 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00BB8 809B5CB8 0C26D49A */  jal     func_809B5268              
/* 00BBC 809B5CBC 24060002 */  addiu   $a2, $zero, 0x0002         ## $a2 = 00000002
/* 00BC0 809B5CC0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809B5CC4:
/* 00BC4 809B5CC4 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 00BC8 809B5CC8 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00BCC 809B5CCC 03E00008 */  jr      $ra                        
/* 00BD0 809B5CD0 00000000 */  nop
