.late_rodata
glabel D_80A4E070
    .float 0.01

.text
glabel func_80A4CA50
/* 00DB0 80A4CA50 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00DB4 80A4CA54 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00DB8 80A4CA58 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00DBC 80A4CA5C 8498001C */  lh      $t8, 0x001C($a0)           ## 0000001C
/* 00DC0 80A4CA60 3C0F0001 */  lui     $t7, 0x0001                ## $t7 = 00010000
/* 00DC4 80A4CA64 01E57821 */  addu    $t7, $t7, $a1              
/* 00DC8 80A4CA68 8DEF1E08 */  lw      $t7, 0x1E08($t7)           ## 00011E08
/* 00DCC 80A4CA6C 331900FF */  andi    $t9, $t8, 0x00FF           ## $t9 = 00000000
/* 00DD0 80A4CA70 001948C0 */  sll     $t1, $t9,  3               
/* 00DD4 80A4CA74 01E91821 */  addu    $v1, $t7, $t1              
/* 00DD8 80A4CA78 8C620004 */  lw      $v0, 0x0004($v1)           ## 00000004
/* 00DDC 80A4CA7C 3C098016 */  lui     $t1, %hi(gGameInfo)
/* 00DE0 80A4CA80 8D29FA90 */  lw      $t1, %lo(gGameInfo)($t1)
/* 00DE4 80A4CA84 00025100 */  sll     $t2, $v0,  4               
/* 00DE8 80A4CA88 000A5F02 */  srl     $t3, $t2, 28               
/* 00DEC 80A4CA8C 849901CE */  lh      $t9, 0x01CE($a0)           ## 000001CE
/* 00DF0 80A4CA90 852A116C */  lh      $t2, 0x116C($t1)           ## 8016116C
/* 00DF4 80A4CA94 000B6080 */  sll     $t4, $t3,  2               
/* 00DF8 80A4CA98 3C0D8016 */  lui     $t5, %hi(gSegments)
/* 00DFC 80A4CA9C 01AC6821 */  addu    $t5, $t5, $t4              
/* 00E00 80A4CAA0 8DAD6FA8 */  lw      $t5, %lo(gSegments)($t5)
/* 00E04 80A4CAA4 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00E08 80A4CAA8 448A2000 */  mtc1    $t2, $f4                   ## $f4 = 0.00
/* 00E0C 80A4CAAC 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00E10 80A4CAB0 00197880 */  sll     $t7, $t9,  2               
/* 00E14 80A4CAB4 00417024 */  and     $t6, $v0, $at              
/* 00E18 80A4CAB8 01F97823 */  subu    $t7, $t7, $t9              
/* 00E1C 80A4CABC 000F7840 */  sll     $t7, $t7,  1               
/* 00E20 80A4CAC0 01AEC021 */  addu    $t8, $t5, $t6              
/* 00E24 80A4CAC4 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E28 80A4CAC8 030F4021 */  addu    $t0, $t8, $t7              
/* 00E2C 80A4CACC 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00E30 80A4CAD0 01014021 */  addu    $t0, $t0, $at              
/* 00E34 80A4CAD4 3C0180A5 */  lui     $at, %hi(D_80A4E070)       ## $at = 80A50000
/* 00E38 80A4CAD8 C428E070 */  lwc1    $f8, %lo(D_80A4E070)($at)  
/* 00E3C 80A4CADC 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 00E40 80A4CAE0 44818000 */  mtc1    $at, $f16                  ## $f16 = 0.50
/* 00E44 80A4CAE4 46083282 */  mul.s   $f10, $f6, $f8             
/* 00E48 80A4CAE8 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00E4C 80A4CAEC 3C063E38 */  lui     $a2, 0x3E38                ## $a2 = 3E380000
/* 00E50 80A4CAF0 34C651EC */  ori     $a2, $a2, 0x51EC           ## $a2 = 3E3851EC
/* 00E54 80A4CAF4 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 00E58 80A4CAF8 24840060 */  addiu   $a0, $a0, 0x0060           ## $a0 = 00000060
/* 00E5C 80A4CAFC AFA8001C */  sw      $t0, 0x001C($sp)           
/* 00E60 80A4CB00 46105482 */  mul.s   $f18, $f10, $f16           
/* 00E64 80A4CB04 44059000 */  mfc1    $a1, $f18                  
/* 00E68 80A4CB08 0C01DE80 */  jal     Math_ApproxF
              
/* 00E6C 80A4CB0C 00000000 */  nop
/* 00E70 80A4CB10 8FA8001C */  lw      $t0, 0x001C($sp)           
/* 00E74 80A4CB14 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 00E78 80A4CB18 850B0000 */  lh      $t3, 0x0000($t0)           ## 00000000
/* 00E7C 80A4CB1C C4E00060 */  lwc1    $f0, 0x0060($a3)           ## 00000060
/* 00E80 80A4CB20 24E40028 */  addiu   $a0, $a3, 0x0028           ## $a0 = 00000028
/* 00E84 80A4CB24 448B2000 */  mtc1    $t3, $f4                   ## $f4 = 0.00
/* 00E88 80A4CB28 46000005 */  abs.s   $f0, $f0                   
/* 00E8C 80A4CB2C 468021A0 */  cvt.s.w $f6, $f4                   
/* 00E90 80A4CB30 44060000 */  mfc1    $a2, $f0                   
/* 00E94 80A4CB34 E4E60024 */  swc1    $f6, 0x0024($a3)           ## 00000024
/* 00E98 80A4CB38 850C0004 */  lh      $t4, 0x0004($t0)           ## 00000004
/* 00E9C 80A4CB3C 448C4000 */  mtc1    $t4, $f8                   ## $f8 = 0.00
/* 00EA0 80A4CB40 00000000 */  nop
/* 00EA4 80A4CB44 468042A0 */  cvt.s.w $f10, $f8                  
/* 00EA8 80A4CB48 E4EA002C */  swc1    $f10, 0x002C($a3)          ## 0000002C
/* 00EAC 80A4CB4C 850D0002 */  lh      $t5, 0x0002($t0)           ## 00000002
/* 00EB0 80A4CB50 448D8000 */  mtc1    $t5, $f16                  ## $f16 = 0.00
/* 00EB4 80A4CB54 00000000 */  nop
/* 00EB8 80A4CB58 46808420 */  cvt.s.w $f16, $f16                 
/* 00EBC 80A4CB5C 44058000 */  mfc1    $a1, $f16                  
/* 00EC0 80A4CB60 0C01DE80 */  jal     Math_ApproxF
              
/* 00EC4 80A4CB64 00000000 */  nop
/* 00EC8 80A4CB68 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00ECC 80A4CB6C 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 00ED0 80A4CB70 03E00008 */  jr      $ra                        
/* 00ED4 80A4CB74 00000000 */  nop
