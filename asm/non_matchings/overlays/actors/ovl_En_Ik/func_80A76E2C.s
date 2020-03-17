glabel func_80A76E2C
/* 02B1C 80A76E2C 27BDFF48 */  addiu   $sp, $sp, 0xFF48           ## $sp = FFFFFF48
/* 02B20 80A76E30 AFBF006C */  sw      $ra, 0x006C($sp)           
/* 02B24 80A76E34 AFBE0068 */  sw      $s8, 0x0068($sp)           
/* 02B28 80A76E38 AFB70064 */  sw      $s7, 0x0064($sp)           
/* 02B2C 80A76E3C AFB60060 */  sw      $s6, 0x0060($sp)           
/* 02B30 80A76E40 AFB5005C */  sw      $s5, 0x005C($sp)           
/* 02B34 80A76E44 AFB40058 */  sw      $s4, 0x0058($sp)           
/* 02B38 80A76E48 AFB30054 */  sw      $s3, 0x0054($sp)           
/* 02B3C 80A76E4C AFB20050 */  sw      $s2, 0x0050($sp)           
/* 02B40 80A76E50 AFB1004C */  sw      $s1, 0x004C($sp)           
/* 02B44 80A76E54 AFB00048 */  sw      $s0, 0x0048($sp)           
/* 02B48 80A76E58 F7BA0040 */  sdc1    $f26, 0x0040($sp)          
/* 02B4C 80A76E5C F7B80038 */  sdc1    $f24, 0x0038($sp)          
/* 02B50 80A76E60 F7B60030 */  sdc1    $f22, 0x0030($sp)          
/* 02B54 80A76E64 F7B40028 */  sdc1    $f20, 0x0028($sp)          
/* 02B58 80A76E68 AFA400B8 */  sw      $a0, 0x00B8($sp)           
/* 02B5C 80A76E6C AFA600C0 */  sw      $a2, 0x00C0($sp)           
/* 02B60 80A76E70 8C8F04D4 */  lw      $t7, 0x04D4($a0)           ## 000004D4
/* 02B64 80A76E74 00A0B825 */  or      $s7, $a1, $zero            ## $s7 = 00000000
/* 02B68 80A76E78 27BE00A8 */  addiu   $s8, $sp, 0x00A8           ## $s8 = FFFFFFF0
/* 02B6C 80A76E7C 15E0005D */  bne     $t7, $zero, .L80A76FF4     
/* 02B70 80A76E80 3C1880A8 */  lui     $t8, %hi(D_80A784F4)       ## $t8 = 80A80000
/* 02B74 80A76E84 271884F4 */  addiu   $t8, $t8, %lo(D_80A784F4)  ## $t8 = 80A784F4
/* 02B78 80A76E88 8F080000 */  lw      $t0, 0x0000($t8)           ## 80A784F4
/* 02B7C 80A76E8C 3C0A80A8 */  lui     $t2, %hi(D_80A78500)       ## $t2 = 80A80000
/* 02B80 80A76E90 254A8500 */  addiu   $t2, $t2, %lo(D_80A78500)  ## $t2 = 80A78500
/* 02B84 80A76E94 AFC80000 */  sw      $t0, 0x0000($s8)           ## FFFFFFF0
/* 02B88 80A76E98 8F190004 */  lw      $t9, 0x0004($t8)           ## 80A784F8
/* 02B8C 80A76E9C 3C014396 */  lui     $at, 0x4396                ## $at = 43960000
/* 02B90 80A76EA0 4481D000 */  mtc1    $at, $f26                  ## $f26 = 300.00
/* 02B94 80A76EA4 AFD90004 */  sw      $t9, 0x0004($s8)           ## FFFFFFF4
/* 02B98 80A76EA8 8F080008 */  lw      $t0, 0x0008($t8)           ## 80A784FC
/* 02B9C 80A76EAC 3C014270 */  lui     $at, 0x4270                ## $at = 42700000
/* 02BA0 80A76EB0 27A9009C */  addiu   $t1, $sp, 0x009C           ## $t1 = FFFFFFE4
/* 02BA4 80A76EB4 AFC80008 */  sw      $t0, 0x0008($s8)           ## FFFFFFF8
/* 02BA8 80A76EB8 8D4C0000 */  lw      $t4, 0x0000($t2)           ## 80A78500
/* 02BAC 80A76EBC 4481C000 */  mtc1    $at, $f24                  ## $f24 = 60.00
/* 02BB0 80A76EC0 3C014120 */  lui     $at, 0x4120                ## $at = 41200000
/* 02BB4 80A76EC4 AD2C0000 */  sw      $t4, 0x0000($t1)           ## FFFFFFE4
/* 02BB8 80A76EC8 8D4C0008 */  lw      $t4, 0x0008($t2)           ## 80A78508
/* 02BBC 80A76ECC 8D4B0004 */  lw      $t3, 0x0004($t2)           ## 80A78504
/* 02BC0 80A76ED0 4481B000 */  mtc1    $at, $f22                  ## $f22 = 10.00
/* 02BC4 80A76ED4 3C0141A0 */  lui     $at, 0x41A0                ## $at = 41A00000
/* 02BC8 80A76ED8 3C1080A8 */  lui     $s0, %hi(D_80A785F8)       ## $s0 = 80A80000
/* 02BCC 80A76EDC 3C1680A8 */  lui     $s6, %hi(D_80A78514)       ## $s6 = 80A80000
/* 02BD0 80A76EE0 3C1580A8 */  lui     $s5, %hi(D_80A78510)       ## $s5 = 80A80000
/* 02BD4 80A76EE4 3C1480A8 */  lui     $s4, %hi(D_80A7850C)       ## $s4 = 80A80000
/* 02BD8 80A76EE8 4481A000 */  mtc1    $at, $f20                  ## $f20 = 20.00
/* 02BDC 80A76EEC 2694850C */  addiu   $s4, $s4, %lo(D_80A7850C)  ## $s4 = 80A7850C
/* 02BE0 80A76EF0 26B58510 */  addiu   $s5, $s5, %lo(D_80A78510)  ## $s5 = 80A78510
/* 02BE4 80A76EF4 26D68514 */  addiu   $s6, $s6, %lo(D_80A78514)  ## $s6 = 80A78514
/* 02BE8 80A76EF8 261085F8 */  addiu   $s0, $s0, %lo(D_80A785F8)  ## $s0 = 80A785F8
/* 02BEC 80A76EFC 27B30080 */  addiu   $s3, $sp, 0x0080           ## $s3 = FFFFFFC8
/* 02BF0 80A76F00 27B20090 */  addiu   $s2, $sp, 0x0090           ## $s2 = FFFFFFD8
/* 02BF4 80A76F04 27B10094 */  addiu   $s1, $sp, 0x0094           ## $s1 = FFFFFFDC
/* 02BF8 80A76F08 AD2C0008 */  sw      $t4, 0x0008($t1)           ## FFFFFFEC
/* 02BFC 80A76F0C AD2B0004 */  sw      $t3, 0x0004($t1)           ## FFFFFFE8
/* 02C00 80A76F10 8E8E0000 */  lw      $t6, 0x0000($s4)           ## 80A7850C
.L80A76F14:
/* 02C04 80A76F14 8EB80000 */  lw      $t8, 0x0000($s5)           ## 80A78510
/* 02C08 80A76F18 02002025 */  or      $a0, $s0, $zero            ## $a0 = 80A785F8
/* 02C0C 80A76F1C 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFC8
/* 02C10 80A76F20 AE2E0000 */  sw      $t6, 0x0000($s1)           ## FFFFFFDC
/* 02C14 80A76F24 0C0346BD */  jal     Matrix_MultVec3f              
/* 02C18 80A76F28 AE580000 */  sw      $t8, 0x0000($s2)           ## FFFFFFD8
/* 02C1C 80A76F2C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02C20 80A76F30 00000000 */  nop
/* 02C24 80A76F34 46140102 */  mul.s   $f4, $f0, $f20             
/* 02C28 80A76F38 93A80094 */  lbu     $t0, 0x0094($sp)           
/* 02C2C 80A76F3C 93AA0095 */  lbu     $t2, 0x0095($sp)           
/* 02C30 80A76F40 93AC0096 */  lbu     $t4, 0x0096($sp)           
/* 02C34 80A76F44 93AE0090 */  lbu     $t6, 0x0090($sp)           
/* 02C38 80A76F48 93B80091 */  lbu     $t8, 0x0091($sp)           
/* 02C3C 80A76F4C 46162181 */  sub.s   $f6, $f4, $f22             
/* 02C40 80A76F50 4600320D */  trunc.w.s $f8, $f6                   
/* 02C44 80A76F54 44024000 */  mfc1    $v0, $f8                   
/* 02C48 80A76F58 00000000 */  nop
/* 02C4C 80A76F5C 01024821 */  addu    $t1, $t0, $v0              
/* 02C50 80A76F60 93A80092 */  lbu     $t0, 0x0092($sp)           
/* 02C54 80A76F64 A3A90094 */  sb      $t1, 0x0094($sp)           
/* 02C58 80A76F68 01425821 */  addu    $t3, $t2, $v0              
/* 02C5C 80A76F6C 01826821 */  addu    $t5, $t4, $v0              
/* 02C60 80A76F70 01C27821 */  addu    $t7, $t6, $v0              
/* 02C64 80A76F74 0302C821 */  addu    $t9, $t8, $v0              
/* 02C68 80A76F78 01024821 */  addu    $t1, $t0, $v0              
/* 02C6C 80A76F7C A3AB0095 */  sb      $t3, 0x0095($sp)           
/* 02C70 80A76F80 A3AD0096 */  sb      $t5, 0x0096($sp)           
/* 02C74 80A76F84 A3AF0090 */  sb      $t7, 0x0090($sp)           
/* 02C78 80A76F88 A3B90091 */  sb      $t9, 0x0091($sp)           
/* 02C7C 80A76F8C 0C03F66B */  jal     Math_Rand_ZeroOne
              ## Rand.Next() float
/* 02C80 80A76F90 A3A90092 */  sb      $t1, 0x0092($sp)           
/* 02C84 80A76F94 46180282 */  mul.s   $f10, $f0, $f24            
/* 02C88 80A76F98 02E02025 */  or      $a0, $s7, $zero            ## $a0 = 00000000
/* 02C8C 80A76F9C 02602825 */  or      $a1, $s3, $zero            ## $a1 = FFFFFFC8
/* 02C90 80A76FA0 03C03025 */  or      $a2, $s8, $zero            ## $a2 = FFFFFFF0
/* 02C94 80A76FA4 27A7009C */  addiu   $a3, $sp, 0x009C           ## $a3 = FFFFFFE4
/* 02C98 80A76FA8 AFB10010 */  sw      $s1, 0x0010($sp)           
/* 02C9C 80A76FAC AFB20014 */  sw      $s2, 0x0014($sp)           
/* 02CA0 80A76FB0 461A5400 */  add.s   $f16, $f10, $f26           
/* 02CA4 80A76FB4 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02CA8 80A76FB8 4600848D */  trunc.w.s $f18, $f16                 
/* 02CAC 80A76FBC 440B9000 */  mfc1    $t3, $f18                  
/* 02CB0 80A76FC0 0C00A0A7 */  jal     func_8002829C              
/* 02CB4 80A76FC4 AFAB0018 */  sw      $t3, 0x0018($sp)           
/* 02CB8 80A76FC8 2610FFF4 */  addiu   $s0, $s0, 0xFFF4           ## $s0 = 80A785EC
/* 02CBC 80A76FCC 0216082B */  sltu    $at, $s0, $s6              
/* 02CC0 80A76FD0 5020FFD0 */  beql    $at, $zero, .L80A76F14     
/* 02CC4 80A76FD4 8E8E0000 */  lw      $t6, 0x0000($s4)           ## 80A7850C
/* 02CC8 80A76FD8 8FAD00B8 */  lw      $t5, 0x00B8($sp)           
/* 02CCC 80A76FDC 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 02CD0 80A76FE0 02E02825 */  or      $a1, $s7, $zero            ## $a1 = 00000000
/* 02CD4 80A76FE4 ADAC04D4 */  sw      $t4, 0x04D4($t5)           ## 000004D4
/* 02CD8 80A76FE8 8FA600C0 */  lw      $a2, 0x00C0($sp)           
/* 02CDC 80A76FEC 0C29DB77 */  jal     func_80A76DDC              
/* 02CE0 80A76FF0 8FA400B8 */  lw      $a0, 0x00B8($sp)           
.L80A76FF4:
/* 02CE4 80A76FF4 8FBF006C */  lw      $ra, 0x006C($sp)           
/* 02CE8 80A76FF8 D7B40028 */  ldc1    $f20, 0x0028($sp)          
/* 02CEC 80A76FFC D7B60030 */  ldc1    $f22, 0x0030($sp)          
/* 02CF0 80A77000 D7B80038 */  ldc1    $f24, 0x0038($sp)          
/* 02CF4 80A77004 D7BA0040 */  ldc1    $f26, 0x0040($sp)          
/* 02CF8 80A77008 8FB00048 */  lw      $s0, 0x0048($sp)           
/* 02CFC 80A7700C 8FB1004C */  lw      $s1, 0x004C($sp)           
/* 02D00 80A77010 8FB20050 */  lw      $s2, 0x0050($sp)           
/* 02D04 80A77014 8FB30054 */  lw      $s3, 0x0054($sp)           
/* 02D08 80A77018 8FB40058 */  lw      $s4, 0x0058($sp)           
/* 02D0C 80A7701C 8FB5005C */  lw      $s5, 0x005C($sp)           
/* 02D10 80A77020 8FB60060 */  lw      $s6, 0x0060($sp)           
/* 02D14 80A77024 8FB70064 */  lw      $s7, 0x0064($sp)           
/* 02D18 80A77028 8FBE0068 */  lw      $s8, 0x0068($sp)           
/* 02D1C 80A7702C 03E00008 */  jr      $ra                        
/* 02D20 80A77030 27BD00B8 */  addiu   $sp, $sp, 0x00B8           ## $sp = 00000000


