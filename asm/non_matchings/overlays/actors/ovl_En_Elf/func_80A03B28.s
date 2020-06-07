glabel func_80A03B28
/* 01EF8 80A03B28 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 01EFC 80A03B2C AFBF002C */  sw      $ra, 0x002C($sp)           
/* 01F00 80A03B30 AFB00028 */  sw      $s0, 0x0028($sp)           
/* 01F04 80A03B34 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 01F08 80A03B38 848E02A8 */  lh      $t6, 0x02A8($a0)           ## 000002A8
/* 01F0C 80A03B3C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 01F10 80A03B40 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 01F14 80A03B44 15C10002 */  bne     $t6, $at, .L80A03B50       
/* 01F18 80A03B48 24030064 */  addiu   $v1, $zero, 0x0064         ## $v1 = 00000064
/* 01F1C 80A03B4C 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L80A03B50:
/* 01F20 80A03B50 960F02C4 */  lhu     $t7, 0x02C4($s0)           ## 000002C4
/* 01F24 80A03B54 26040278 */  addiu   $a0, $s0, 0x0278           ## $a0 = 00000278
/* 01F28 80A03B58 240C00FF */  addiu   $t4, $zero, 0x00FF         ## $t4 = 000000FF
/* 01F2C 80A03B5C 31F80020 */  andi    $t8, $t7, 0x0020           ## $t8 = 00000000
/* 01F30 80A03B60 13000029 */  beq     $t8, $zero, .L80A03C08     
/* 01F34 80A03B64 240D00FF */  addiu   $t5, $zero, 0x00FF         ## $t5 = 000000FF
/* 01F38 80A03B68 8FB9003C */  lw      $t9, 0x003C($sp)           
/* 01F3C 80A03B6C 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 01F40 80A03B70 240F00FF */  addiu   $t7, $zero, 0x00FF         ## $t7 = 000000FF
/* 01F44 80A03B74 8F221C44 */  lw      $v0, 0x1C44($t9)           ## 00001C44
/* 01F48 80A03B78 241900FF */  addiu   $t9, $zero, 0x00FF         ## $t9 = 000000FF
/* 01F4C 80A03B7C 241800FF */  addiu   $t8, $zero, 0x00FF         ## $t8 = 000000FF
/* 01F50 80A03B80 C4480028 */  lwc1    $f8, 0x0028($v0)           ## 00000028
/* 01F54 80A03B84 C4440024 */  lwc1    $f4, 0x0024($v0)           ## 00000024
/* 01F58 80A03B88 240800C8 */  addiu   $t0, $zero, 0x00C8         ## $t0 = 000000C8
/* 01F5C 80A03B8C 4600428D */  trunc.w.s $f10, $f8                  
/* 01F60 80A03B90 26040278 */  addiu   $a0, $s0, 0x0278           ## $a0 = 00000278
/* 01F64 80A03B94 4600218D */  trunc.w.s $f6, $f4                   
/* 01F68 80A03B98 440A5000 */  mfc1    $t2, $f10                  
/* 01F6C 80A03B9C 44812000 */  mtc1    $at, $f4                   ## $f4 = 60.00
/* 01F70 80A03BA0 C44A002C */  lwc1    $f10, 0x002C($v0)          ## 0000002C
/* 01F74 80A03BA4 000A5C00 */  sll     $t3, $t2, 16               
/* 01F78 80A03BA8 000B6403 */  sra     $t4, $t3, 16               
/* 01F7C 80A03BAC 448C8000 */  mtc1    $t4, $f16                  ## $f16 = 0.00
/* 01F80 80A03BB0 44053000 */  mfc1    $a1, $f6                   
/* 01F84 80A03BB4 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 01F88 80A03BB8 468084A0 */  cvt.s.w $f18, $f16                 
/* 01F8C 80A03BBC 00052C00 */  sll     $a1, $a1, 16               
/* 01F90 80A03BC0 00052C03 */  sra     $a1, $a1, 16               
/* 01F94 80A03BC4 AFA8001C */  sw      $t0, 0x001C($sp)           
/* 01F98 80A03BC8 AFB90018 */  sw      $t9, 0x0018($sp)           
/* 01F9C 80A03BCC 4600540D */  trunc.w.s $f16, $f10                 
/* 01FA0 80A03BD0 AFB80014 */  sw      $t8, 0x0014($sp)           
/* 01FA4 80A03BD4 AFAF0010 */  sw      $t7, 0x0010($sp)           
/* 01FA8 80A03BD8 46049180 */  add.s   $f6, $f18, $f4             
/* 01FAC 80A03BDC 44078000 */  mfc1    $a3, $f16                  
/* 01FB0 80A03BE0 4600320D */  trunc.w.s $f8, $f6                   
/* 01FB4 80A03BE4 00073C00 */  sll     $a3, $a3, 16               
/* 01FB8 80A03BE8 00073C03 */  sra     $a3, $a3, 16               
/* 01FBC 80A03BEC 44064000 */  mfc1    $a2, $f8                   
/* 01FC0 80A03BF0 00000000 */  nop
/* 01FC4 80A03BF4 00063400 */  sll     $a2, $a2, 16               
/* 01FC8 80A03BF8 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 01FCC 80A03BFC 00063403 */  sra     $a2, $a2, 16               
/* 01FD0 80A03C00 10000019 */  beq     $zero, $zero, .L80A03C68   
/* 01FD4 80A03C04 87A30036 */  lh      $v1, 0x0036($sp)           
.L80A03C08:
/* 01FD8 80A03C08 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 01FDC 80A03C0C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 01FE0 80A03C10 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 01FE4 80A03C14 4600910D */  trunc.w.s $f4, $f18                  
/* 01FE8 80A03C18 240E00FF */  addiu   $t6, $zero, 0x00FF         ## $t6 = 000000FF
/* 01FEC 80A03C1C 240FFFFF */  addiu   $t7, $zero, 0xFFFF         ## $t7 = FFFFFFFF
/* 01FF0 80A03C20 4600320D */  trunc.w.s $f8, $f6                   
/* 01FF4 80A03C24 44052000 */  mfc1    $a1, $f4                   
/* 01FF8 80A03C28 AFAF001C */  sw      $t7, 0x001C($sp)           
/* 01FFC 80A03C2C 4600540D */  trunc.w.s $f16, $f10                 
/* 02000 80A03C30 44064000 */  mfc1    $a2, $f8                   
/* 02004 80A03C34 00052C00 */  sll     $a1, $a1, 16               
/* 02008 80A03C38 00052C03 */  sra     $a1, $a1, 16               
/* 0200C 80A03C3C 44078000 */  mfc1    $a3, $f16                  
/* 02010 80A03C40 00063400 */  sll     $a2, $a2, 16               
/* 02014 80A03C44 00063403 */  sra     $a2, $a2, 16               
/* 02018 80A03C48 00073C00 */  sll     $a3, $a3, 16               
/* 0201C 80A03C4C 00073C03 */  sra     $a3, $a3, 16               
/* 02020 80A03C50 AFAE0018 */  sw      $t6, 0x0018($sp)           
/* 02024 80A03C54 A7A30036 */  sh      $v1, 0x0036($sp)           
/* 02028 80A03C58 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0202C 80A03C5C 0C01E763 */  jal     Lights_InitType0PositionalLight
              
/* 02030 80A03C60 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 02034 80A03C64 87A30036 */  lh      $v1, 0x0036($sp)           
.L80A03C68:
/* 02038 80A03C68 C6120024 */  lwc1    $f18, 0x0024($s0)          ## 00000024
/* 0203C 80A03C6C C6060028 */  lwc1    $f6, 0x0028($s0)           ## 00000028
/* 02040 80A03C70 C60A002C */  lwc1    $f10, 0x002C($s0)          ## 0000002C
/* 02044 80A03C74 4600910D */  trunc.w.s $f4, $f18                  
/* 02048 80A03C78 240900FF */  addiu   $t1, $zero, 0x00FF         ## $t1 = 000000FF
/* 0204C 80A03C7C 240A00FF */  addiu   $t2, $zero, 0x00FF         ## $t2 = 000000FF
/* 02050 80A03C80 4600320D */  trunc.w.s $f8, $f6                   
/* 02054 80A03C84 44052000 */  mfc1    $a1, $f4                   
/* 02058 80A03C88 240B00FF */  addiu   $t3, $zero, 0x00FF         ## $t3 = 000000FF
/* 0205C 80A03C8C 4600540D */  trunc.w.s $f16, $f10                 
/* 02060 80A03C90 44064000 */  mfc1    $a2, $f8                   
/* 02064 80A03C94 00052C00 */  sll     $a1, $a1, 16               
/* 02068 80A03C98 00052C03 */  sra     $a1, $a1, 16               
/* 0206C 80A03C9C 44078000 */  mfc1    $a3, $f16                  
/* 02070 80A03CA0 00063400 */  sll     $a2, $a2, 16               
/* 02074 80A03CA4 00063403 */  sra     $a2, $a2, 16               
/* 02078 80A03CA8 00073C00 */  sll     $a3, $a3, 16               
/* 0207C 80A03CAC 00073C03 */  sra     $a3, $a3, 16               
/* 02080 80A03CB0 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 02084 80A03CB4 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 02088 80A03CB8 AFA90010 */  sw      $t1, 0x0010($sp)           
/* 0208C 80A03CBC AFA3001C */  sw      $v1, 0x001C($sp)           
/* 02090 80A03CC0 0C01E77C */  jal     Lights_InitType2PositionalLight
              
/* 02094 80A03CC4 26040264 */  addiu   $a0, $s0, 0x0264           ## $a0 = 00000264
/* 02098 80A03CC8 C60C0064 */  lwc1    $f12, 0x0064($s0)          ## 00000064
/* 0209C 80A03CCC 0C034199 */  jal     atan2s
              
/* 020A0 80A03CD0 C60E005C */  lwc1    $f14, 0x005C($s0)          ## 0000005C
/* 020A4 80A03CD4 A60202BC */  sh      $v0, 0x02BC($s0)           ## 000002BC
/* 020A8 80A03CD8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 020AC 80A03CDC 0C00B58B */  jal     Actor_SetScale
              
/* 020B0 80A03CE0 8E050050 */  lw      $a1, 0x0050($s0)           ## 00000050
/* 020B4 80A03CE4 8FBF002C */  lw      $ra, 0x002C($sp)           
/* 020B8 80A03CE8 8FB00028 */  lw      $s0, 0x0028($sp)           
/* 020BC 80A03CEC 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 020C0 80A03CF0 03E00008 */  jr      $ra                        
/* 020C4 80A03CF4 00000000 */  nop
