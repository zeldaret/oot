glabel func_808B5B6C
/* 00F3C 808B5B6C 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00F40 808B5B70 AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00F44 808B5B74 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 00F48 808B5B78 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 00F4C 808B5B7C 0C00B638 */  jal     Actor_MoveForward
              
/* 00F50 808B5B80 AFA5002C */  sw      $a1, 0x002C($sp)           
/* 00F54 808B5B84 860E00B4 */  lh      $t6, 0x00B4($s0)           ## 000000B4
/* 00F58 808B5B88 860F0210 */  lh      $t7, 0x0210($s0)           ## 00000210
/* 00F5C 808B5B8C 861900B8 */  lh      $t9, 0x00B8($s0)           ## 000000B8
/* 00F60 808B5B90 86080212 */  lh      $t0, 0x0212($s0)           ## 00000212
/* 00F64 808B5B94 860A0154 */  lh      $t2, 0x0154($s0)           ## 00000154
/* 00F68 808B5B98 01CFC021 */  addu    $t8, $t6, $t7              
/* 00F6C 808B5B9C 03284821 */  addu    $t1, $t9, $t0              
/* 00F70 808B5BA0 2941003D */  slti    $at, $t2, 0x003D           
/* 00F74 808B5BA4 A61800B4 */  sh      $t8, 0x00B4($s0)           ## 000000B4
/* 00F78 808B5BA8 14200005 */  bne     $at, $zero, .L808B5BC0     
/* 00F7C 808B5BAC A60900B8 */  sh      $t1, 0x00B8($s0)           ## 000000B8
/* 00F80 808B5BB0 0C00B55C */  jal     Actor_Kill
              
/* 00F84 808B5BB4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F88 808B5BB8 10000026 */  beq     $zero, $zero, .L808B5C54   
/* 00F8C 808B5BBC 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808B5BC0:
/* 00F90 808B5BC0 96020088 */  lhu     $v0, 0x0088($s0)           ## 00000088
/* 00F94 808B5BC4 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00F98 808B5BC8 304B0008 */  andi    $t3, $v0, 0x0008           ## $t3 = 00000000
/* 00F9C 808B5BCC 1560000A */  bne     $t3, $zero, .L808B5BF8     
/* 00FA0 808B5BD0 304C0001 */  andi    $t4, $v0, 0x0001           ## $t4 = 00000000
/* 00FA4 808B5BD4 11800016 */  beq     $t4, $zero, .L808B5C30     
/* 00FA8 808B5BD8 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 00FAC 808B5BDC C6040060 */  lwc1    $f4, 0x0060($s0)           ## 00000060
/* 00FB0 808B5BE0 44803000 */  mtc1    $zero, $f6                 ## $f6 = 0.00
/* 00FB4 808B5BE4 00000000 */  nop
/* 00FB8 808B5BE8 4606203C */  c.lt.s  $f4, $f6                   
/* 00FBC 808B5BEC 00000000 */  nop
/* 00FC0 808B5BF0 45020010 */  bc1fl   .L808B5C34                 
/* 00FC4 808B5BF4 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L808B5BF8:
/* 00FC8 808B5BF8 0C22D4EA */  jal     func_808B53A8              
/* 00FCC 808B5BFC 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00FD0 808B5C00 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FD4 808B5C04 0C22D46A */  jal     func_808B51A8              
/* 00FD8 808B5C08 8FA5002C */  lw      $a1, 0x002C($sp)           
/* 00FDC 808B5C0C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 00FE0 808B5C10 26050024 */  addiu   $a1, $s0, 0x0024           ## $a1 = 00000024
/* 00FE4 808B5C14 24060014 */  addiu   $a2, $zero, 0x0014         ## $a2 = 00000014
/* 00FE8 808B5C18 0C01AEB6 */  jal     Audio_PlaySoundAtPosition
              
/* 00FEC 808B5C1C 24072852 */  addiu   $a3, $zero, 0x2852         ## $a3 = 00002852
/* 00FF0 808B5C20 0C00B55C */  jal     Actor_Kill
              
/* 00FF4 808B5C24 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 00FF8 808B5C28 1000000A */  beq     $zero, $zero, .L808B5C54   
/* 00FFC 808B5C2C 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808B5C30:
/* 01000 808B5C30 44804000 */  mtc1    $zero, $f8                 ## $f8 = 0.00
.L808B5C34:
/* 01004 808B5C34 240D0005 */  addiu   $t5, $zero, 0x0005         ## $t5 = 00000005
/* 01008 808B5C38 AFAD0014 */  sw      $t5, 0x0014($sp)           
/* 0100C 808B5C3C 8FA4002C */  lw      $a0, 0x002C($sp)           
/* 01010 808B5C40 3C06418C */  lui     $a2, 0x418C                ## $a2 = 418C0000
/* 01014 808B5C44 3C07420C */  lui     $a3, 0x420C                ## $a3 = 420C0000
/* 01018 808B5C48 0C00B92D */  jal     func_8002E4B4              
/* 0101C 808B5C4C E7A80010 */  swc1    $f8, 0x0010($sp)           
/* 01020 808B5C50 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L808B5C54:
/* 01024 808B5C54 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01028 808B5C58 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 0102C 808B5C5C 03E00008 */  jr      $ra                        
/* 01030 808B5C60 00000000 */  nop
