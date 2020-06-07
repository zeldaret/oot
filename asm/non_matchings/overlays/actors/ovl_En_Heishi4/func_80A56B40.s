glabel func_80A56B40
/* 00A70 80A56B40 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 00A74 80A56B44 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00A78 80A56B48 00803025 */  or      $a2, $a0, $zero            ## $a2 = 00000000
/* 00A7C 80A56B4C AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00A80 80A56B50 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00A84 80A56B54 0C02927F */  jal     SkelAnime_FrameUpdateMatrix
              
/* 00A88 80A56B58 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00A8C 80A56B5C 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00A90 80A56B60 8FA4001C */  lw      $a0, 0x001C($sp)           
/* 00A94 80A56B64 3C0580A5 */  lui     $a1, %hi(D_80A56EF0)       ## $a1 = 80A50000
/* 00A98 80A56B68 84C30280 */  lh      $v1, 0x0280($a2)           ## 00000280
/* 00A9C 80A56B6C 2463FFFC */  addiu   $v1, $v1, 0xFFFC           ## $v1 = FFFFFFFC
/* 00AA0 80A56B70 00031C00 */  sll     $v1, $v1, 16               
/* 00AA4 80A56B74 00031C03 */  sra     $v1, $v1, 16               
/* 00AA8 80A56B78 04630003 */  bgezl   $v1, .L80A56B88            
/* 00AAC 80A56B7C 28610003 */  slti    $at, $v1, 0x0003           
/* 00AB0 80A56B80 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
/* 00AB4 80A56B84 28610003 */  slti    $at, $v1, 0x0003           
.L80A56B88:
/* 00AB8 80A56B88 54200003 */  bnel    $at, $zero, .L80A56B98     
/* 00ABC 80A56B8C 00037080 */  sll     $t6, $v1,  2               
/* 00AC0 80A56B90 24030001 */  addiu   $v1, $zero, 0x0001         ## $v1 = 00000001
/* 00AC4 80A56B94 00037080 */  sll     $t6, $v1,  2               
.L80A56B98:
/* 00AC8 80A56B98 00AE2821 */  addu    $a1, $a1, $t6              
/* 00ACC 80A56B9C 8CA56EF0 */  lw      $a1, %lo(D_80A56EF0)($a1)  
/* 00AD0 80A56BA0 0C01B0D8 */  jal     Text_GetFaceReaction              
/* 00AD4 80A56BA4 AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00AD8 80A56BA8 10400013 */  beq     $v0, $zero, .L80A56BF8     
/* 00ADC 80A56BAC 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00AE0 80A56BB0 90CF02B4 */  lbu     $t7, 0x02B4($a2)           ## 000002B4
/* 00AE4 80A56BB4 55E00023 */  bnel    $t7, $zero, .L80A56C44     
/* 00AE8 80A56BB8 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00AEC 80A56BBC 84C20280 */  lh      $v0, 0x0280($a2)           ## 00000280
/* 00AF0 80A56BC0 3C1880A5 */  lui     $t8, %hi(func_80A563BC)    ## $t8 = 80A50000
/* 00AF4 80A56BC4 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00AF8 80A56BC8 10400003 */  beq     $v0, $zero, .L80A56BD8     
/* 00AFC 80A56BCC 271863BC */  addiu   $t8, $t8, %lo(func_80A563BC) ## $t8 = 80A563BC
/* 00B00 80A56BD0 54410004 */  bnel    $v0, $at, .L80A56BE4       
/* 00B04 80A56BD4 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L80A56BD8:
/* 00B08 80A56BD8 10000032 */  beq     $zero, $zero, .L80A56CA4   
/* 00B0C 80A56BDC ACD8025C */  sw      $t8, 0x025C($a2)           ## 0000025C
/* 00B10 80A56BE0 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L80A56BE4:
/* 00B14 80A56BE4 14410016 */  bne     $v0, $at, .L80A56C40       
/* 00B18 80A56BE8 3C1980A5 */  lui     $t9, %hi(func_80A56614)    ## $t9 = 80A50000
/* 00B1C 80A56BEC 27396614 */  addiu   $t9, $t9, %lo(func_80A56614) ## $t9 = 80A56614
/* 00B20 80A56BF0 1000002C */  beq     $zero, $zero, .L80A56CA4   
/* 00B24 80A56BF4 ACD9025C */  sw      $t9, 0x025C($a2)           ## 0000025C
.L80A56BF8:
/* 00B28 80A56BF8 90C802B4 */  lbu     $t0, 0x02B4($a2)           ## 000002B4
/* 00B2C 80A56BFC 51000011 */  beql    $t0, $zero, .L80A56C44     
/* 00B30 80A56C00 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00B34 80A56C04 84C20280 */  lh      $v0, 0x0280($a2)           ## 00000280
/* 00B38 80A56C08 3C0980A5 */  lui     $t1, %hi(func_80A563BC)    ## $t1 = 80A50000
/* 00B3C 80A56C0C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B40 80A56C10 10400003 */  beq     $v0, $zero, .L80A56C20     
/* 00B44 80A56C14 252963BC */  addiu   $t1, $t1, %lo(func_80A563BC) ## $t1 = 80A563BC
/* 00B48 80A56C18 54410004 */  bnel    $v0, $at, .L80A56C2C       
/* 00B4C 80A56C1C 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L80A56C20:
/* 00B50 80A56C20 10000020 */  beq     $zero, $zero, .L80A56CA4   
/* 00B54 80A56C24 ACC9025C */  sw      $t1, 0x025C($a2)           ## 0000025C
/* 00B58 80A56C28 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
.L80A56C2C:
/* 00B5C 80A56C2C 14410004 */  bne     $v0, $at, .L80A56C40       
/* 00B60 80A56C30 3C0A80A5 */  lui     $t2, %hi(func_80A56614)    ## $t2 = 80A50000
/* 00B64 80A56C34 254A6614 */  addiu   $t2, $t2, %lo(func_80A56614) ## $t2 = 80A56614
/* 00B68 80A56C38 1000001A */  beq     $zero, $zero, .L80A56CA4   
/* 00B6C 80A56C3C ACCA025C */  sw      $t2, 0x025C($a2)           ## 0000025C
.L80A56C40:
/* 00B70 80A56C40 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
.L80A56C44:
/* 00B74 80A56C44 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 00B78 80A56C48 0C00BC65 */  jal     func_8002F194              
/* 00B7C 80A56C4C AFA60018 */  sw      $a2, 0x0018($sp)           
/* 00B80 80A56C50 10400011 */  beq     $v0, $zero, .L80A56C98     
/* 00B84 80A56C54 8FA60018 */  lw      $a2, 0x0018($sp)           
/* 00B88 80A56C58 84C20280 */  lh      $v0, 0x0280($a2)           ## 00000280
/* 00B8C 80A56C5C 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00B90 80A56C60 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00B94 80A56C64 10400002 */  beq     $v0, $zero, .L80A56C70     
/* 00B98 80A56C68 3C0C80A5 */  lui     $t4, %hi(func_80A563BC)    ## $t4 = 80A50000
/* 00B9C 80A56C6C 14410004 */  bne     $v0, $at, .L80A56C80       
.L80A56C70:
/* 00BA0 80A56C70 258C63BC */  addiu   $t4, $t4, %lo(func_80A563BC) ## $t4 = 80A563BC
/* 00BA4 80A56C74 A4CB0284 */  sh      $t3, 0x0284($a2)           ## 00000284
/* 00BA8 80A56C78 1000000A */  beq     $zero, $zero, .L80A56CA4   
/* 00BAC 80A56C7C ACCC025C */  sw      $t4, 0x025C($a2)           ## 0000025C
.L80A56C80:
/* 00BB0 80A56C80 24010008 */  addiu   $at, $zero, 0x0008         ## $at = 00000008
/* 00BB4 80A56C84 14410004 */  bne     $v0, $at, .L80A56C98       
/* 00BB8 80A56C88 3C0D80A5 */  lui     $t5, %hi(func_80A56614)    ## $t5 = 80A50000
/* 00BBC 80A56C8C 25AD6614 */  addiu   $t5, $t5, %lo(func_80A56614) ## $t5 = 80A56614
/* 00BC0 80A56C90 10000004 */  beq     $zero, $zero, .L80A56CA4   
/* 00BC4 80A56C94 ACCD025C */  sw      $t5, 0x025C($a2)           ## 0000025C
.L80A56C98:
/* 00BC8 80A56C98 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 00BCC 80A56C9C 0C00BCBD */  jal     func_8002F2F4              
/* 00BD0 80A56CA0 8FA5001C */  lw      $a1, 0x001C($sp)           
.L80A56CA4:
/* 00BD4 80A56CA4 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00BD8 80A56CA8 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00BDC 80A56CAC 03E00008 */  jr      $ra                        
/* 00BE0 80A56CB0 00000000 */  nop
