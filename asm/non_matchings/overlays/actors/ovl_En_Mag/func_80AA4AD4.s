glabel func_80AA4AD4
/* 00FD4 80AA4AD4 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 00FD8 80AA4AD8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00FDC 80AA4ADC AFA400B8 */  sw      $a0, 0x00B8($sp)           
/* 00FE0 80AA4AE0 AFA500BC */  sw      $a1, 0x00BC($sp)           
/* 00FE4 80AA4AE4 AFA600C0 */  sw      $a2, 0x00C0($sp)           
/* 00FE8 80AA4AE8 AFA700C4 */  sw      $a3, 0x00C4($sp)           
/* 00FEC 80AA4AEC 8C8F0000 */  lw      $t7, 0x0000($a0)           ## 00000000
/* 00FF0 80AA4AF0 27A400B4 */  addiu   $a0, $sp, 0x00B4           ## $a0 = FFFFFFFC
/* 00FF4 80AA4AF4 0C02534A */  jal     func_80094D28              
/* 00FF8 80AA4AF8 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 00FFC 80AA4AFC 8FA400C8 */  lw      $a0, 0x00C8($sp)           
/* 01000 80AA4B00 240E1000 */  addiu   $t6, $zero, 0x1000         ## $t6 = 00001000
/* 01004 80AA4B04 8FA300CC */  lw      $v1, 0x00CC($sp)           
/* 01008 80AA4B08 00043880 */  sll     $a3, $a0,  2               
/* 0100C 80AA4B0C 01C7001B */  divu    $zero, $t6, $a3            
/* 01010 80AA4B10 00002812 */  mflo    $a1                        
/* 01014 80AA4B14 87B800C2 */  lh      $t8, 0x00C2($sp)           
/* 01018 80AA4B18 0003C842 */  srl     $t9, $v1,  1               
/* 0101C 80AA4B1C 00830019 */  multu   $a0, $v1                   
/* 01020 80AA4B20 03194023 */  subu    $t0, $t8, $t9              
/* 01024 80AA4B24 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 01028 80AA4B28 00045840 */  sll     $t3, $a0,  1               
/* 0102C 80AA4B2C 8FAA00C4 */  lw      $t2, 0x00C4($sp)           
/* 01030 80AA4B30 14E00002 */  bne     $a3, $zero, .L80AA4B3C     
/* 01034 80AA4B34 00000000 */  nop
/* 01038 80AA4B38 0007000D */  break 7
.L80AA4B3C:
/* 0103C 80AA4B3C 00003012 */  mflo    $a2                        
/* 01040 80AA4B40 00063080 */  sll     $a2, $a2,  2               
/* 01044 80AA4B44 00A04825 */  or      $t1, $a1, $zero            ## $t1 = 00000000
/* 01048 80AA4B48 00850019 */  multu   $a0, $a1                   
/* 0104C 80AA4B4C 256B0007 */  addiu   $t3, $t3, 0x0007           ## $t3 = 00000007
/* 01050 80AA4B50 3C0EE700 */  lui     $t6, 0xE700                ## $t6 = E7000000
/* 01054 80AA4B54 3C0DE800 */  lui     $t5, 0xE800                ## $t5 = E8000000
/* 01058 80AA4B58 27190008 */  addiu   $t9, $t8, 0x0008           ## $t9 = 00000008
/* 0105C 80AA4B5C 00006012 */  mflo    $t4                        
/* 01060 80AA4B60 000C6080 */  sll     $t4, $t4,  2               
/* 01064 80AA4B64 00000000 */  nop
/* 01068 80AA4B68 00CC001A */  div     $zero, $a2, $t4            
/* 0106C 80AA4B6C 15800002 */  bne     $t4, $zero, .L80AA4B78     
/* 01070 80AA4B70 00000000 */  nop
/* 01074 80AA4B74 0007000D */  break 7
.L80AA4B78:
/* 01078 80AA4B78 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 0107C 80AA4B7C 15810004 */  bne     $t4, $at, .L80AA4B90       
/* 01080 80AA4B80 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 01084 80AA4B84 14C10002 */  bne     $a2, $at, .L80AA4B90       
/* 01088 80AA4B88 00000000 */  nop
/* 0108C 80AA4B8C 0006000D */  break 6
.L80AA4B90:
/* 01090 80AA4B90 00001012 */  mflo    $v0                        
/* 01094 80AA4B94 00007810 */  mfhi    $t7                        
/* 01098 80AA4B98 0040F825 */  or      $ra, $v0, $zero            ## $ra = 00000000
/* 0109C 80AA4B9C 11E00002 */  beq     $t7, $zero, .L80AA4BA8     
/* 010A0 80AA4BA0 3C01F518 */  lui     $at, 0xF518                ## $at = F5180000
/* 010A4 80AA4BA4 245F0001 */  addiu   $ra, $v0, 0x0001           ## $ra = 00000001
.L80AA4BA8:
/* 010A8 80AA4BA8 AFB900B4 */  sw      $t9, 0x00B4($sp)           
/* 010AC 80AA4BAC AF000004 */  sw      $zero, 0x0004($t8)         ## 00000004
/* 010B0 80AA4BB0 AF0E0000 */  sw      $t6, 0x0000($t8)           ## 00000000
/* 010B4 80AA4BB4 8FAF00B4 */  lw      $t7, 0x00B4($sp)           
/* 010B8 80AA4BB8 000B58C2 */  srl     $t3, $t3,  3               
/* 010BC 80AA4BBC 316B01FF */  andi    $t3, $t3, 0x01FF           ## $t3 = 00000007
/* 010C0 80AA4BC0 25F80008 */  addiu   $t8, $t7, 0x0008           ## $t8 = 00000008
/* 010C4 80AA4BC4 AFB800B4 */  sw      $t8, 0x00B4($sp)           
/* 010C8 80AA4BC8 ADE00004 */  sw      $zero, 0x0004($t7)         ## 00000004
/* 010CC 80AA4BCC ADED0000 */  sw      $t5, 0x0000($t7)           ## 00000000
/* 010D0 80AA4BD0 8FB900B4 */  lw      $t9, 0x00B4($sp)           
/* 010D4 80AA4BD4 3C0F0708 */  lui     $t7, 0x0708                ## $t7 = 07080000
/* 010D8 80AA4BD8 000B5A40 */  sll     $t3, $t3,  9               
/* 010DC 80AA4BDC 272E0008 */  addiu   $t6, $t9, 0x0008           ## $t6 = 00000010
/* 010E0 80AA4BE0 AFAE00B4 */  sw      $t6, 0x00B4($sp)           
/* 010E4 80AA4BE4 01615825 */  or      $t3, $t3, $at              ## $t3 = F5180007
/* 010E8 80AA4BE8 35EF0200 */  ori     $t7, $t7, 0x0200           ## $t7 = 07080200
/* 010EC 80AA4BEC AF2F0004 */  sw      $t7, 0x0004($t9)           ## 0000000C
/* 010F0 80AA4BF0 AF2B0000 */  sw      $t3, 0x0000($t9)           ## 00000008
/* 010F4 80AA4BF4 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 010F8 80AA4BF8 2483FFFF */  addiu   $v1, $a0, 0xFFFF           ## $v1 = FFFFFFFF
/* 010FC 80AA4BFC 3C01FD18 */  lui     $at, 0xFD18                ## $at = FD180000
/* 01100 80AA4C00 27190008 */  addiu   $t9, $t8, 0x0008           ## $t9 = 00000010
/* 01104 80AA4C04 AFB900B4 */  sw      $t9, 0x00B4($sp)           
/* 01108 80AA4C08 AF000004 */  sw      $zero, 0x0004($t8)         ## 0000000C
/* 0110C 80AA4C0C AF0D0000 */  sw      $t5, 0x0000($t8)           ## 00000008
/* 01110 80AA4C10 8FAE00B4 */  lw      $t6, 0x00B4($sp)           
/* 01114 80AA4C14 3C180008 */  lui     $t8, 0x0008                ## $t8 = 00080000
/* 01118 80AA4C18 37180200 */  ori     $t8, $t8, 0x0200           ## $t8 = 00080200
/* 0111C 80AA4C1C 25CF0008 */  addiu   $t7, $t6, 0x0008           ## $t7 = 00000018
/* 01120 80AA4C20 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 01124 80AA4C24 ADD80004 */  sw      $t8, 0x0004($t6)           ## 00000014
/* 01128 80AA4C28 ADCB0000 */  sw      $t3, 0x0000($t6)           ## 00000010
/* 0112C 80AA4C2C 8FA200B4 */  lw      $v0, 0x00B4($sp)           
/* 01130 80AA4C30 AFBF00AC */  sw      $ra, 0x00AC($sp)           
/* 01134 80AA4C34 0003F880 */  sll     $ra, $v1,  2               
/* 01138 80AA4C38 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0113C 80AA4C3C AFAE00B4 */  sw      $t6, 0x00B4($sp)           
/* 01140 80AA4C40 24B8FFFF */  addiu   $t8, $a1, 0xFFFF           ## $t8 = FFFFFFFF
/* 01144 80AA4C44 0018C880 */  sll     $t9, $t8,  2               
/* 01148 80AA4C48 33FF0FFF */  andi    $ra, $ra, 0x0FFF           ## $ra = 00000001
/* 0114C 80AA4C4C AFA70040 */  sw      $a3, 0x0040($sp)           
/* 01150 80AA4C50 3C0FF200 */  lui     $t7, 0xF200                ## $t7 = F2000000
/* 01154 80AA4C54 001FFB00 */  sll     $ra, $ra, 12               
/* 01158 80AA4C58 332E0FFF */  andi    $t6, $t9, 0x0FFF           ## $t6 = 00000010
/* 0115C 80AA4C5C AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 01160 80AA4C60 03EE7825 */  or      $t7, $ra, $t6              ## $t7 = 00000011
/* 01164 80AA4C64 AC4F0004 */  sw      $t7, 0x0004($v0)           ## 00000004
/* 01168 80AA4C68 8FB800AC */  lw      $t8, 0x00AC($sp)           
/* 0116C 80AA4C6C 00CC2823 */  subu    $a1, $a2, $t4              
/* 01170 80AA4C70 87B900BE */  lh      $t9, 0x00BE($sp)           
/* 01174 80AA4C74 1B000089 */  blez    $t8, .L80AA4E9C            
/* 01178 80AA4C78 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 0117C 80AA4C7C 306F0FFF */  andi    $t7, $v1, 0x0FFF           ## $t7 = 00000FFF
/* 01180 80AA4C80 01E1C025 */  or      $t8, $t7, $at              ## $t8 = FD180FFF
/* 01184 80AA4C84 00047042 */  srl     $t6, $a0,  1               
/* 01188 80AA4C88 032E1023 */  subu    $v0, $t9, $t6              
/* 0118C 80AA4C8C 00827021 */  addu    $t6, $a0, $v0              
/* 01190 80AA4C90 3C010700 */  lui     $at, 0x0700                ## $at = 07000000
/* 01194 80AA4C94 03E1C825 */  or      $t9, $ra, $at              ## $t9 = 07000001
/* 01198 80AA4C98 000E7880 */  sll     $t7, $t6,  2               
/* 0119C 80AA4C9C AFB80028 */  sw      $t8, 0x0028($sp)           
/* 011A0 80AA4CA0 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 011A4 80AA4CA4 AFB90024 */  sw      $t9, 0x0024($sp)           
/* 011A8 80AA4CA8 0018CB00 */  sll     $t9, $t8, 12               
/* 011AC 80AA4CAC 00027880 */  sll     $t7, $v0,  2               
/* 011B0 80AA4CB0 3C01E400 */  lui     $at, 0xE400                ## $at = E4000000
/* 011B4 80AA4CB4 03217025 */  or      $t6, $t9, $at              ## $t6 = E7000001
/* 011B8 80AA4CB8 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000FFF
/* 011BC 80AA4CBC 2526FFFF */  addiu   $a2, $t1, 0xFFFF           ## $a2 = FFFFFFFF
/* 011C0 80AA4CC0 00063080 */  sll     $a2, $a2,  2               
/* 011C4 80AA4CC4 0018CB00 */  sll     $t9, $t8, 12               
/* 011C8 80AA4CC8 AFB9001C */  sw      $t9, 0x001C($sp)           
/* 011CC 80AA4CCC 30C60FFF */  andi    $a2, $a2, 0x0FFF           ## $a2 = 00000FFF
/* 011D0 80AA4CD0 AFAE0020 */  sw      $t6, 0x0020($sp)           
/* 011D4 80AA4CD4 8FAF00B4 */  lw      $t7, 0x00B4($sp)           
.L80AA4CD8:
/* 011D8 80AA4CD8 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 011DC 80AA4CDC 8FB90028 */  lw      $t9, 0x0028($sp)           
/* 011E0 80AA4CE0 25F80008 */  addiu   $t8, $t7, 0x0008           ## $t8 = 00001007
/* 011E4 80AA4CE4 AFB800B4 */  sw      $t8, 0x00B4($sp)           
/* 011E8 80AA4CE8 ADEA0004 */  sw      $t2, 0x0004($t7)           ## 00001003
/* 011EC 80AA4CEC 01C61825 */  or      $v1, $t6, $a2              ## $v1 = E7000FFF
/* 011F0 80AA4CF0 ADF90000 */  sw      $t9, 0x0000($t7)           ## 00000FFF
/* 011F4 80AA4CF4 8FAE00B4 */  lw      $t6, 0x00B4($sp)           
/* 011F8 80AA4CF8 3C18E600 */  lui     $t8, 0xE600                ## $t8 = E6000000
/* 011FC 80AA4CFC 00AC2023 */  subu    $a0, $a1, $t4              
/* 01200 80AA4D00 25CF0008 */  addiu   $t7, $t6, 0x0008           ## $t7 = E7000009
/* 01204 80AA4D04 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 01208 80AA4D08 ADC00004 */  sw      $zero, 0x0004($t6)         ## E7000005
/* 0120C 80AA4D0C ADD80000 */  sw      $t8, 0x0000($t6)           ## E7000001
/* 01210 80AA4D10 8FB900B4 */  lw      $t9, 0x00B4($sp)           
/* 01214 80AA4D14 3C0FF400 */  lui     $t7, 0xF400                ## $t7 = F4000000
/* 01218 80AA4D18 014C5021 */  addu    $t2, $t2, $t4              
/* 0121C 80AA4D1C 272E0008 */  addiu   $t6, $t9, 0x0008           ## $t6 = 07000009
/* 01220 80AA4D20 AFAE00B4 */  sw      $t6, 0x00B4($sp)           
/* 01224 80AA4D24 AF230004 */  sw      $v1, 0x0004($t9)           ## 07000005
/* 01228 80AA4D28 AF2F0000 */  sw      $t7, 0x0000($t9)           ## 07000001
/* 0122C 80AA4D2C 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 01230 80AA4D30 8FAE0020 */  lw      $t6, 0x0020($sp)           
/* 01234 80AA4D34 01091821 */  addu    $v1, $t0, $t1              
/* 01238 80AA4D38 27190008 */  addiu   $t9, $t8, 0x0008           ## $t9 = E6000008
/* 0123C 80AA4D3C 00037880 */  sll     $t7, $v1,  2               
/* 01240 80AA4D40 03001025 */  or      $v0, $t8, $zero            ## $v0 = E6000000
/* 01244 80AA4D44 31F80FFF */  andi    $t8, $t7, 0x0FFF           ## $t8 = 00000000
/* 01248 80AA4D48 AFB900B4 */  sw      $t9, 0x00B4($sp)           
/* 0124C 80AA4D4C 01D8C825 */  or      $t9, $t6, $t8              ## $t9 = 07000009
/* 01250 80AA4D50 AC590000 */  sw      $t9, 0x0000($v0)           ## E6000000
/* 01254 80AA4D54 8FAF001C */  lw      $t7, 0x001C($sp)           
/* 01258 80AA4D58 00087080 */  sll     $t6, $t0,  2               
/* 0125C 80AA4D5C 31D80FFF */  andi    $t8, $t6, 0x0FFF           ## $t8 = 00000009
/* 01260 80AA4D60 01F8C825 */  or      $t9, $t7, $t8              ## $t9 = F4000009
/* 01264 80AA4D64 AC590004 */  sw      $t9, 0x0004($v0)           ## E6000004
/* 01268 80AA4D68 8FAE00B4 */  lw      $t6, 0x00B4($sp)           
/* 0126C 80AA4D6C 3C18E100 */  lui     $t8, 0xE100                ## $t8 = E1000000
/* 01270 80AA4D70 00604025 */  or      $t0, $v1, $zero            ## $t0 = E7000FFF
/* 01274 80AA4D74 25CF0008 */  addiu   $t7, $t6, 0x0008           ## $t7 = 07000011
/* 01278 80AA4D78 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 0127C 80AA4D7C ADC00004 */  sw      $zero, 0x0004($t6)         ## 0700000D
/* 01280 80AA4D80 ADD80000 */  sw      $t8, 0x0000($t6)           ## 07000009
/* 01284 80AA4D84 8FA200B4 */  lw      $v0, 0x00B4($sp)           
/* 01288 80AA4D88 3C180400 */  lui     $t8, 0x0400                ## $t8 = 04000000
/* 0128C 80AA4D8C 37180400 */  ori     $t8, $t8, 0x0400           ## $t8 = 04000400
/* 01290 80AA4D90 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = E6000008
/* 01294 80AA4D94 AFAE00B4 */  sw      $t6, 0x00B4($sp)           
/* 01298 80AA4D98 3C0FF100 */  lui     $t7, 0xF100                ## $t7 = F1000000
/* 0129C 80AA4D9C AC4F0000 */  sw      $t7, 0x0000($v0)           ## E6000000
/* 012A0 80AA4DA0 04810039 */  bgez    $a0, .L80AA4E88            
/* 012A4 80AA4DA4 AC580004 */  sw      $t8, 0x0004($v0)           ## E6000004
/* 012A8 80AA4DA8 18A00038 */  blez    $a1, .L80AA4E8C            
/* 012AC 80AA4DAC 8FB90040 */  lw      $t9, 0x0040($sp)           
/* 012B0 80AA4DB0 00B9001A */  div     $zero, $a1, $t9            
/* 012B4 80AA4DB4 8FAE00B4 */  lw      $t6, 0x00B4($sp)           
/* 012B8 80AA4DB8 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 012BC 80AA4DBC 17200002 */  bne     $t9, $zero, .L80AA4DC8     
/* 012C0 80AA4DC0 00000000 */  nop
/* 012C4 80AA4DC4 0007000D */  break 7
.L80AA4DC8:
/* 012C8 80AA4DC8 2401FFFF */  addiu   $at, $zero, 0xFFFF         ## $at = FFFFFFFF
/* 012CC 80AA4DCC 17210004 */  bne     $t9, $at, .L80AA4DE0       
/* 012D0 80AA4DD0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 012D4 80AA4DD4 14A10002 */  bne     $a1, $at, .L80AA4DE0       
/* 012D8 80AA4DD8 00000000 */  nop
/* 012DC 80AA4DDC 0006000D */  break 6
.L80AA4DE0:
/* 012E0 80AA4DE0 25CF0008 */  addiu   $t7, $t6, 0x0008           ## $t7 = E6000010
/* 012E4 80AA4DE4 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 012E8 80AA4DE8 ADC00004 */  sw      $zero, 0x0004($t6)         ## E600000C
/* 012EC 80AA4DEC ADD80000 */  sw      $t8, 0x0000($t6)           ## E6000008
/* 012F0 80AA4DF0 8FB900B4 */  lw      $t9, 0x00B4($sp)           
/* 012F4 80AA4DF4 00004812 */  mflo    $t1                        
/* 012F8 80AA4DF8 2526FFFF */  addiu   $a2, $t1, 0xFFFF           ## $a2 = FFFFFFFF
/* 012FC 80AA4DFC 272E0008 */  addiu   $t6, $t9, 0x0008           ## $t6 = F4000011
/* 01300 80AA4E00 AFAE00B4 */  sw      $t6, 0x00B4($sp)           
/* 01304 80AA4E04 AF200004 */  sw      $zero, 0x0004($t9)         ## F400000D
/* 01308 80AA4E08 AF2D0000 */  sw      $t5, 0x0000($t9)           ## F4000009
/* 0130C 80AA4E0C 8FAF00B4 */  lw      $t7, 0x00B4($sp)           
/* 01310 80AA4E10 3C190708 */  lui     $t9, 0x0708                ## $t9 = 07080000
/* 01314 80AA4E14 37390200 */  ori     $t9, $t9, 0x0200           ## $t9 = 07080200
/* 01318 80AA4E18 25F80008 */  addiu   $t8, $t7, 0x0008           ## $t8 = E6000018
/* 0131C 80AA4E1C AFB800B4 */  sw      $t8, 0x00B4($sp)           
/* 01320 80AA4E20 ADF90004 */  sw      $t9, 0x0004($t7)           ## E6000014
/* 01324 80AA4E24 ADEB0000 */  sw      $t3, 0x0000($t7)           ## E6000010
/* 01328 80AA4E28 8FAE00B4 */  lw      $t6, 0x00B4($sp)           
/* 0132C 80AA4E2C 00063080 */  sll     $a2, $a2,  2               
/* 01330 80AA4E30 30C60FFF */  andi    $a2, $a2, 0x0FFF           ## $a2 = 00000FFF
/* 01334 80AA4E34 25CF0008 */  addiu   $t7, $t6, 0x0008           ## $t7 = F4000019
/* 01338 80AA4E38 AFAF00B4 */  sw      $t7, 0x00B4($sp)           
/* 0133C 80AA4E3C ADC00004 */  sw      $zero, 0x0004($t6)         ## F4000015
/* 01340 80AA4E40 ADCD0000 */  sw      $t5, 0x0000($t6)           ## F4000011
/* 01344 80AA4E44 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 01348 80AA4E48 3C0E0008 */  lui     $t6, 0x0008                ## $t6 = 00080000
/* 0134C 80AA4E4C 35CE0200 */  ori     $t6, $t6, 0x0200           ## $t6 = 00080200
/* 01350 80AA4E50 27190008 */  addiu   $t9, $t8, 0x0008           ## $t9 = E6000020
/* 01354 80AA4E54 AFB900B4 */  sw      $t9, 0x00B4($sp)           
/* 01358 80AA4E58 AF0E0004 */  sw      $t6, 0x0004($t8)           ## E600001C
/* 0135C 80AA4E5C AF0B0000 */  sw      $t3, 0x0000($t8)           ## E6000018
/* 01360 80AA4E60 8FAF00B4 */  lw      $t7, 0x00B4($sp)           
/* 01364 80AA4E64 03E67025 */  or      $t6, $ra, $a2              ## $t6 = 00000FFF
/* 01368 80AA4E68 3C19F200 */  lui     $t9, 0xF200                ## $t9 = F2000000
/* 0136C 80AA4E6C 25F80008 */  addiu   $t8, $t7, 0x0008           ## $t8 = F4000021
/* 01370 80AA4E70 AFB800B4 */  sw      $t8, 0x00B4($sp)           
/* 01374 80AA4E74 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
/* 01378 80AA4E78 ADEE0004 */  sw      $t6, 0x0004($t7)           ## F400001D
/* 0137C 80AA4E7C ADF90000 */  sw      $t9, 0x0000($t7)           ## F4000019
/* 01380 80AA4E80 10000002 */  beq     $zero, $zero, .L80AA4E8C   
/* 01384 80AA4E84 01E01025 */  or      $v0, $t7, $zero            ## $v0 = F4000019
.L80AA4E88:
/* 01388 80AA4E88 00802825 */  or      $a1, $a0, $zero            ## $a1 = 00000000
.L80AA4E8C:
/* 0138C 80AA4E8C 8FAF00AC */  lw      $t7, 0x00AC($sp)           
/* 01390 80AA4E90 24E70001 */  addiu   $a3, $a3, 0x0001           ## $a3 = 00000001
/* 01394 80AA4E94 54EFFF90 */  bnel    $a3, $t7, .L80AA4CD8       
/* 01398 80AA4E98 8FAF00B4 */  lw      $t7, 0x00B4($sp)           
.L80AA4E9C:
/* 0139C 80AA4E9C 8FB800B4 */  lw      $t8, 0x00B4($sp)           
/* 013A0 80AA4EA0 8FB900B8 */  lw      $t9, 0x00B8($sp)           
/* 013A4 80AA4EA4 AF380000 */  sw      $t8, 0x0000($t9)           ## F2000000
/* 013A8 80AA4EA8 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 013AC 80AA4EAC 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000
/* 013B0 80AA4EB0 03E00008 */  jr      $ra                        
/* 013B4 80AA4EB4 00000000 */  nop


