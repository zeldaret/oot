glabel func_809BADA4
/* 02AC4 809BADA4 27BDFFC8 */  addiu   $sp, $sp, 0xFFC8           ## $sp = FFFFFFC8
/* 02AC8 809BADA8 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 02ACC 809BADAC AFB00030 */  sw      $s0, 0x0030($sp)           
/* 02AD0 809BADB0 AFA5003C */  sw      $a1, 0x003C($sp)           
/* 02AD4 809BADB4 8486007E */  lh      $a2, 0x007E($a0)           ## 0000007E
/* 02AD8 809BADB8 84870032 */  lh      $a3, 0x0032($a0)           ## 00000032
/* 02ADC 809BADBC 94830088 */  lhu     $v1, 0x0088($a0)           ## 00000088
/* 02AE0 809BADC0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 02AE4 809BADC4 00E61023 */  subu    $v0, $a3, $a2              
/* 02AE8 809BADC8 00021400 */  sll     $v0, $v0, 16               
/* 02AEC 809BADCC 306E0008 */  andi    $t6, $v1, 0x0008           ## $t6 = 00000000
/* 02AF0 809BADD0 11C00010 */  beq     $t6, $zero, .L809BAE14     
/* 02AF4 809BADD4 00021403 */  sra     $v0, $v0, 16               
/* 02AF8 809BADD8 04400003 */  bltz    $v0, .L809BADE8            
/* 02AFC 809BADDC 00022023 */  subu    $a0, $zero, $v0            
/* 02B00 809BADE0 10000001 */  beq     $zero, $zero, .L809BADE8   
/* 02B04 809BADE4 00402025 */  or      $a0, $v0, $zero            ## $a0 = 00000000
.L809BADE8:
/* 02B08 809BADE8 28814001 */  slti    $at, $a0, 0x4001           
/* 02B0C 809BADEC 14200006 */  bne     $at, $zero, .L809BAE08     
/* 02B10 809BADF0 00C67821 */  addu    $t7, $a2, $a2              
/* 02B14 809BADF4 01E7C023 */  subu    $t8, $t7, $a3              
/* 02B18 809BADF8 24018000 */  addiu   $at, $zero, 0x8000         ## $at = FFFF8000
/* 02B1C 809BADFC 0301C821 */  addu    $t9, $t8, $at              
/* 02B20 809BAE00 A6190032 */  sh      $t9, 0x0032($s0)           ## 00000032
/* 02B24 809BAE04 96030088 */  lhu     $v1, 0x0088($s0)           ## 00000088
.L809BAE08:
/* 02B28 809BAE08 3068FFF7 */  andi    $t0, $v1, 0xFFF7           ## $t0 = 00000000
/* 02B2C 809BAE0C A6080088 */  sh      $t0, 0x0088($s0)           ## 00000088
/* 02B30 809BAE10 3103FFFF */  andi    $v1, $t0, 0xFFFF           ## $v1 = 00000000
.L809BAE14:
/* 02B34 809BAE14 30690002 */  andi    $t1, $v1, 0x0002           ## $t1 = 00000000
/* 02B38 809BAE18 1120001E */  beq     $t1, $zero, .L809BAE94     
/* 02B3C 809BAE1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02B40 809BAE20 0C00BE0A */  jal     Audio_PlayActorSound2
              
/* 02B44 809BAE24 2405387B */  addiu   $a1, $zero, 0x387B         ## $a1 = 0000387B
/* 02B48 809BAE28 3C01C160 */  lui     $at, 0xC160                ## $at = C1600000
/* 02B4C 809BAE2C 44812000 */  mtc1    $at, $f4                   ## $f4 = -14.00
/* 02B50 809BAE30 C6000060 */  lwc1    $f0, 0x0060($s0)           ## 00000060
/* 02B54 809BAE34 3C01809C */  lui     $at, %hi(D_809BBCCC)       ## $at = 809C0000
/* 02B58 809BAE38 02002825 */  or      $a1, $s0, $zero            ## $a1 = 00000000
/* 02B5C 809BAE3C 4604003C */  c.lt.s  $f0, $f4                   
/* 02B60 809BAE40 26060024 */  addiu   $a2, $s0, 0x0024           ## $a2 = 00000024
/* 02B64 809BAE44 3C0740E0 */  lui     $a3, 0x40E0                ## $a3 = 40E00000
/* 02B68 809BAE48 240A0002 */  addiu   $t2, $zero, 0x0002         ## $t2 = 00000002
/* 02B6C 809BAE4C 45020006 */  bc1fl   .L809BAE68                 
/* 02B70 809BAE50 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
/* 02B74 809BAE54 C426BCCC */  lwc1    $f6, %lo(D_809BBCCC)($at)  
/* 02B78 809BAE58 46060202 */  mul.s   $f8, $f0, $f6              
/* 02B7C 809BAE5C 10000004 */  beq     $zero, $zero, .L809BAE70   
/* 02B80 809BAE60 E6080060 */  swc1    $f8, 0x0060($s0)           ## 00000060
/* 02B84 809BAE64 44805000 */  mtc1    $zero, $f10                ## $f10 = 0.00
.L809BAE68:
/* 02B88 809BAE68 00000000 */  nop
/* 02B8C 809BAE6C E60A0060 */  swc1    $f10, 0x0060($s0)          ## 00000060
.L809BAE70:
/* 02B90 809BAE70 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 02B94 809BAE74 44818000 */  mtc1    $at, $f16                  ## $f16 = 2.00
/* 02B98 809BAE78 8FA4003C */  lw      $a0, 0x003C($sp)           
/* 02B9C 809BAE7C AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 02BA0 809BAE80 AFA00018 */  sw      $zero, 0x0018($sp)         
/* 02BA4 809BAE84 AFA0001C */  sw      $zero, 0x001C($sp)         
/* 02BA8 809BAE88 AFA00020 */  sw      $zero, 0x0020($sp)         
/* 02BAC 809BAE8C 0C00CC98 */  jal     func_80033260              
/* 02BB0 809BAE90 E7B00014 */  swc1    $f16, 0x0014($sp)          
.L809BAE94:
/* 02BB4 809BAE94 920B0114 */  lbu     $t3, 0x0114($s0)           ## 00000114
/* 02BB8 809BAE98 3C014348 */  lui     $at, 0x4348                ## $at = 43480000
/* 02BBC 809BAE9C 55600025 */  bnel    $t3, $zero, .L809BAF34     
/* 02BC0 809BAEA0 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02BC4 809BAEA4 920C00AF */  lbu     $t4, 0x00AF($s0)           ## 000000AF
/* 02BC8 809BAEA8 44819000 */  mtc1    $at, $f18                  ## $f18 = 200.00
/* 02BCC 809BAEAC 11800019 */  beq     $t4, $zero, .L809BAF14     
/* 02BD0 809BAEB0 E61200BC */  swc1    $f18, 0x00BC($s0)          ## 000000BC
/* 02BD4 809BAEB4 8602001C */  lh      $v0, 0x001C($s0)           ## 0000001C
/* 02BD8 809BAEB8 2401FFFC */  addiu   $at, $zero, 0xFFFC         ## $at = FFFFFFFC
/* 02BDC 809BAEBC 10410003 */  beq     $v0, $at, .L809BAECC       
/* 02BE0 809BAEC0 2401FFFB */  addiu   $at, $zero, 0xFFFB         ## $at = FFFFFFFB
/* 02BE4 809BAEC4 54410006 */  bnel    $v0, $at, .L809BAEE0       
/* 02BE8 809BAEC8 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
.L809BAECC:
/* 02BEC 809BAECC 0C26E964 */  jal     func_809BA590              
/* 02BF0 809BAED0 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02BF4 809BAED4 10000017 */  beq     $zero, $zero, .L809BAF34   
/* 02BF8 809BAED8 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 02BFC 809BAEDC 2401FFFD */  addiu   $at, $zero, 0xFFFD         ## $at = FFFFFFFD
.L809BAEE0:
/* 02C00 809BAEE0 14410008 */  bne     $v0, $at, .L809BAF04       
/* 02C04 809BAEE4 240D0008 */  addiu   $t5, $zero, 0x0008         ## $t5 = 00000008
/* 02C08 809BAEE8 3C05809C */  lui     $a1, %hi(func_809BA0D8)    ## $a1 = 809C0000
/* 02C0C 809BAEEC AE0D0250 */  sw      $t5, 0x0250($s0)           ## 00000250
/* 02C10 809BAEF0 24A5A0D8 */  addiu   $a1, $a1, %lo(func_809BA0D8) ## $a1 = 809BA0D8
/* 02C14 809BAEF4 0C26E0B8 */  jal     func_809B82E0              
/* 02C18 809BAEF8 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C1C 809BAEFC 1000000D */  beq     $zero, $zero, .L809BAF34   
/* 02C20 809BAF00 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809BAF04:
/* 02C24 809BAF04 0C26E5BB */  jal     func_809B96EC              
/* 02C28 809BAF08 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C2C 809BAF0C 10000009 */  beq     $zero, $zero, .L809BAF34   
/* 02C30 809BAF10 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809BAF14:
/* 02C34 809BAF14 8E0E0004 */  lw      $t6, 0x0004($s0)           ## 00000004
/* 02C38 809BAF18 2401FFFE */  addiu   $at, $zero, 0xFFFE         ## $at = FFFFFFFE
/* 02C3C 809BAF1C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 02C40 809BAF20 01C17824 */  and     $t7, $t6, $at              
/* 02C44 809BAF24 AE0F0004 */  sw      $t7, 0x0004($s0)           ## 00000004
/* 02C48 809BAF28 0C26E2C0 */  jal     func_809B8B00              
/* 02C4C 809BAF2C 8FA5003C */  lw      $a1, 0x003C($sp)           
/* 02C50 809BAF30 8FBF0034 */  lw      $ra, 0x0034($sp)           
.L809BAF34:
/* 02C54 809BAF34 8FB00030 */  lw      $s0, 0x0030($sp)           
/* 02C58 809BAF38 27BD0038 */  addiu   $sp, $sp, 0x0038           ## $sp = 00000000
/* 02C5C 809BAF3C 03E00008 */  jr      $ra                        
/* 02C60 809BAF40 00000000 */  nop


