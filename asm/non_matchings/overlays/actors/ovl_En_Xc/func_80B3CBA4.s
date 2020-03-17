glabel func_80B3CBA4
/* 009C4 80B3CBA4 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 009C8 80B3CBA8 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 009CC 80B3CBAC 848E001C */  lh      $t6, 0x001C($a0)           ## 0000001C
/* 009D0 80B3CBB0 24010007 */  addiu   $at, $zero, 0x0007         ## $at = 00000007
/* 009D4 80B3CBB4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 009D8 80B3CBB8 15C1004D */  bne     $t6, $at, .L80B3CCF0       
/* 009DC 80B3CBBC 00000000 */  nop
/* 009E0 80B3CBC0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 009E4 80B3CBC4 3C01C444 */  lui     $at, 0xC444                ## $at = C4440000
/* 009E8 80B3CBC8 44812000 */  mtc1    $at, $f4                   ## $f4 = -784.00
/* 009EC 80B3CBCC C4660024 */  lwc1    $f6, 0x0024($v1)           ## 00000024
/* 009F0 80B3CBD0 3C01C412 */  lui     $at, 0xC412                ## $at = C4120000
/* 009F4 80B3CBD4 24620024 */  addiu   $v0, $v1, 0x0024           ## $v0 = 00000024
/* 009F8 80B3CBD8 4606203C */  c.lt.s  $f4, $f6                   
/* 009FC 80B3CBDC 00000000 */  nop
/* 00A00 80B3CBE0 45000041 */  bc1f    .L80B3CCE8                 
/* 00A04 80B3CBE4 00000000 */  nop
/* 00A08 80B3CBE8 C4480000 */  lwc1    $f8, 0x0000($v0)           ## 00000024
/* 00A0C 80B3CBEC 44815000 */  mtc1    $at, $f10                  ## $f10 = -584.00
/* 00A10 80B3CBF0 3C0180B4 */  lui     $at, %hi(D_80B421FC)       ## $at = 80B40000
/* 00A14 80B3CBF4 460A403C */  c.lt.s  $f8, $f10                  
/* 00A18 80B3CBF8 00000000 */  nop
/* 00A1C 80B3CBFC 4500003A */  bc1f    .L80B3CCE8                 
/* 00A20 80B3CC00 00000000 */  nop
/* 00A24 80B3CC04 C4400004 */  lwc1    $f0, 0x0004($v0)           ## 00000028
/* 00A28 80B3CC08 C43021FC */  lwc1    $f16, %lo(D_80B421FC)($at) 
/* 00A2C 80B3CC0C 3C0180B4 */  lui     $at, %hi(D_80B42200)       ## $at = 80B40000
/* 00A30 80B3CC10 4600803C */  c.lt.s  $f16, $f0                  
/* 00A34 80B3CC14 00000000 */  nop
/* 00A38 80B3CC18 45000033 */  bc1f    .L80B3CCE8                 
/* 00A3C 80B3CC1C 00000000 */  nop
/* 00A40 80B3CC20 C4322200 */  lwc1    $f18, %lo(D_80B42200)($at) 
/* 00A44 80B3CC24 3C01C3DF */  lui     $at, 0xC3DF                ## $at = C3DF0000
/* 00A48 80B3CC28 4612003C */  c.lt.s  $f0, $f18                  
/* 00A4C 80B3CC2C 00000000 */  nop
/* 00A50 80B3CC30 4500002D */  bc1f    .L80B3CCE8                 
/* 00A54 80B3CC34 00000000 */  nop
/* 00A58 80B3CC38 C4400008 */  lwc1    $f0, 0x0008($v0)           ## 0000002C
/* 00A5C 80B3CC3C 44812000 */  mtc1    $at, $f4                   ## $f4 = -446.00
/* 00A60 80B3CC40 3C01C376 */  lui     $at, 0xC376                ## $at = C3760000
/* 00A64 80B3CC44 4600203C */  c.lt.s  $f4, $f0                   
/* 00A68 80B3CC48 00000000 */  nop
/* 00A6C 80B3CC4C 45000026 */  bc1f    .L80B3CCE8                 
/* 00A70 80B3CC50 00000000 */  nop
/* 00A74 80B3CC54 44813000 */  mtc1    $at, $f6                   ## $f6 = -246.00
/* 00A78 80B3CC58 00A02025 */  or      $a0, $a1, $zero            ## $a0 = 00000000
/* 00A7C 80B3CC5C 4606003C */  c.lt.s  $f0, $f6                   
/* 00A80 80B3CC60 00000000 */  nop
/* 00A84 80B3CC64 45000020 */  bc1f    .L80B3CCE8                 
/* 00A88 80B3CC68 00000000 */  nop
/* 00A8C 80B3CC6C 0C02FF21 */  jal     func_800BFC84              
/* 00A90 80B3CC70 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A94 80B3CC74 1440001C */  bne     $v0, $zero, .L80B3CCE8     
/* 00A98 80B3CC78 8FA6001C */  lw      $a2, 0x001C($sp)           
/* 00A9C 80B3CC7C 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00AA0 80B3CC80 244245D0 */  addiu   $v0, $v0, 0x45D0           ## $v0 = 020045D0
/* 00AA4 80B3CC84 00027900 */  sll     $t7, $v0,  4               
/* 00AA8 80B3CC88 000FC702 */  srl     $t8, $t7, 28               
/* 00AAC 80B3CC8C 0018C880 */  sll     $t9, $t8,  2               
/* 00AB0 80B3CC90 3C088016 */  lui     $t0, 0x8016                ## $t0 = 80160000
/* 00AB4 80B3CC94 01194021 */  addu    $t0, $t0, $t9              
/* 00AB8 80B3CC98 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00ABC 80B3CC9C 8D086FA8 */  lw      $t0, 0x6FA8($t0)           ## 80166FA8
/* 00AC0 80B3CCA0 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00AC4 80B3CCA4 00414824 */  and     $t1, $v0, $at              
/* 00AC8 80B3CCA8 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00ACC 80B3CCAC 01095021 */  addu    $t2, $t0, $t1              
/* 00AD0 80B3CCB0 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00AD4 80B3CCB4 01415821 */  addu    $t3, $t2, $at              
/* 00AD8 80B3CCB8 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00ADC 80B3CCBC ACCB1D68 */  sw      $t3, 0x1D68($a2)           ## 00001D68
/* 00AE0 80B3CCC0 946D0EDE */  lhu     $t5, 0x0EDE($v1)           ## 8015F53E
/* 00AE4 80B3CCC4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00AE8 80B3CCC8 A06C1414 */  sb      $t4, 0x1414($v1)           ## 8015FA74
/* 00AEC 80B3CCCC 35AE0002 */  ori     $t6, $t5, 0x0002           ## $t6 = 00000002
/* 00AF0 80B3CCD0 A46E0EDE */  sh      $t6, 0x0EDE($v1)           ## 8015F53E
/* 00AF4 80B3CCD4 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AF8 80B3CCD8 0C021344 */  jal     Item_Give              
/* 00AFC 80B3CCDC 2405005B */  addiu   $a1, $zero, 0x005B         ## $a1 = 0000005B
/* 00B00 80B3CCE0 10000003 */  beq     $zero, $zero, .L80B3CCF0   
/* 00B04 80B3CCE4 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80B3CCE8:
/* 00B08 80B3CCE8 10000001 */  beq     $zero, $zero, .L80B3CCF0   
/* 00B0C 80B3CCEC 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80B3CCF0:
/* 00B10 80B3CCF0 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00B14 80B3CCF4 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00B18 80B3CCF8 03E00008 */  jr      $ra                        
/* 00B1C 80B3CCFC 00000000 */  nop


