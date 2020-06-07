glabel func_8084DFF4
/* 1BDE4 8084DFF4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 1BDE8 8084DFF8 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 1BDEC 8084DFFC 80A30434 */  lb      $v1, 0x0434($a1)           ## 00000434
/* 1BDF0 8084E000 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 1BDF4 8084E004 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 1BDF8 8084E008 54600004 */  bnel    $v1, $zero, .L8084E01C     
/* 1BDFC 8084E00C 80CE084F */  lb      $t6, 0x084F($a2)           ## 0000084F
/* 1BE00 8084E010 10000072 */  beq     $zero, $zero, .L8084E1DC   
/* 1BE04 8084E014 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
/* 1BE08 8084E018 80CE084F */  lb      $t6, 0x084F($a2)           ## 0000084F
.L8084E01C:
/* 1BE0C 8084E01C 00037880 */  sll     $t7, $v1,  2               
/* 1BE10 8084E020 01E37823 */  subu    $t7, $t7, $v1              
/* 1BE14 8084E024 15C00048 */  bne     $t6, $zero, .L8084E148     
/* 1BE18 8084E028 24E420D8 */  addiu   $a0, $a3, 0x20D8           ## $a0 = 000020D8
/* 1BE1C 8084E02C 000F7840 */  sll     $t7, $t7,  1               
/* 1BE20 8084E030 3C198085 */  lui     $t9, %hi(D_80853624)       ## $t9 = 80850000
/* 1BE24 8084E034 27393624 */  addiu   $t9, $t9, %lo(D_80853624)  ## $t9 = 80853624
/* 1BE28 8084E038 25F8FFFA */  addiu   $t8, $t7, 0xFFFA           ## $t8 = FFFFFFFA
/* 1BE2C 8084E03C 24080001 */  addiu   $t0, $zero, 0x0001         ## $t0 = 00000001
/* 1BE30 8084E040 03191021 */  addu    $v0, $t8, $t9              
/* 1BE34 8084E044 A0C8084F */  sb      $t0, 0x084F($a2)           ## 0000084F
/* 1BE38 8084E048 90450003 */  lbu     $a1, 0x0003($v0)           ## 00000004
/* 1BE3C 8084E04C AFA70028 */  sw      $a3, 0x0028($sp)           
/* 1BE40 8084E050 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 1BE44 8084E054 AFA20024 */  sw      $v0, 0x0024($sp)           
/* 1BE48 8084E058 0C042DA0 */  jal     func_8010B680              
/* 1BE4C 8084E05C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1BE50 8084E060 8FA20024 */  lw      $v0, 0x0024($sp)           
/* 1BE54 8084E064 8FA40028 */  lw      $a0, 0x0028($sp)           
/* 1BE58 8084E068 0C021344 */  jal     Item_Give              
/* 1BE5C 8084E06C 90450000 */  lbu     $a1, 0x0000($v0)           ## 00000000
/* 1BE60 8084E070 8FA9002C */  lw      $t1, 0x002C($sp)           
/* 1BE64 8084E074 81230434 */  lb      $v1, 0x0434($t1)           ## 00000434
/* 1BE68 8084E078 2861004C */  slti    $at, $v1, 0x004C           
/* 1BE6C 8084E07C 14200002 */  bne     $at, $zero, .L8084E088     
/* 1BE70 8084E080 2861004F */  slti    $at, $v1, 0x004F           
/* 1BE74 8084E084 1420000A */  bne     $at, $zero, .L8084E0B0     
.L8084E088:
/* 1BE78 8084E088 28610055 */  slti    $at, $v1, 0x0055           
/* 1BE7C 8084E08C 14200002 */  bne     $at, $zero, .L8084E098     
/* 1BE80 8084E090 28610057 */  slti    $at, $v1, 0x0057           
/* 1BE84 8084E094 14200006 */  bne     $at, $zero, .L8084E0B0     
.L8084E098:
/* 1BE88 8084E098 28610072 */  slti    $at, $v1, 0x0072           
/* 1BE8C 8084E09C 14200002 */  bne     $at, $zero, .L8084E0A8     
/* 1BE90 8084E0A0 28610076 */  slti    $at, $v1, 0x0076           
/* 1BE94 8084E0A4 14200002 */  bne     $at, $zero, .L8084E0B0     
.L8084E0A8:
/* 1BE98 8084E0A8 24010048 */  addiu   $at, $zero, 0x0048         ## $at = 00000048
/* 1BE9C 8084E0AC 1461000D */  bne     $v1, $at, .L8084E0E4       
.L8084E0B0:
/* 1BEA0 8084E0B0 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 1BEA4 8084E0B4 3C0A8013 */  lui     $t2, %hi(D_801333E8)
/* 1BEA8 8084E0B8 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 1BEAC 8084E0BC 254A33E8 */  addiu   $t2, %lo(D_801333E8)
/* 1BEB0 8084E0C0 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 1BEB4 8084E0C4 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 1BEB8 8084E0C8 AFAA0014 */  sw      $t2, 0x0014($sp)           
/* 1BEBC 8084E0CC AFA70010 */  sw      $a3, 0x0010($sp)           
/* 1BEC0 8084E0D0 24044831 */  addiu   $a0, $zero, 0x4831         ## $a0 = 00004831
/* 1BEC4 8084E0D4 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 1BEC8 8084E0D8 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 1BECC 8084E0DC 1000003F */  beq     $zero, $zero, .L8084E1DC   
/* 1BED0 8084E0E0 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084E0E4:
/* 1BED4 8084E0E4 2401004F */  addiu   $at, $zero, 0x004F         ## $at = 0000004F
/* 1BED8 8084E0E8 1061000B */  beq     $v1, $at, .L8084E118       
/* 1BEDC 8084E0EC 2401003D */  addiu   $at, $zero, 0x003D         ## $at = 0000003D
/* 1BEE0 8084E0F0 10610009 */  beq     $v1, $at, .L8084E118       
/* 1BEE4 8084E0F4 2402003E */  addiu   $v0, $zero, 0x003E         ## $v0 = 0000003E
/* 1BEE8 8084E0F8 14430009 */  bne     $v0, $v1, .L8084E120       
/* 1BEEC 8084E0FC 3C0B8016 */  lui     $t3, %hi(gSaveContext+0xa4)
/* 1BEF0 8084E100 8D6BE704 */  lw      $t3, %lo(gSaveContext+0xa4)($t3)
/* 1BEF4 8084E104 3C01F000 */  lui     $at, 0xF000                ## $at = F0000000
/* 1BEF8 8084E108 01616024 */  and     $t4, $t3, $at              
/* 1BEFC 8084E10C 3C014000 */  lui     $at, 0x4000                ## $at = 40000000
/* 1BF00 8084E110 15810003 */  bne     $t4, $at, .L8084E120       
/* 1BF04 8084E114 00000000 */  nop
.L8084E118:
/* 1BF08 8084E118 10000007 */  beq     $zero, $zero, .L8084E138   
/* 1BF0C 8084E11C 24020924 */  addiu   $v0, $zero, 0x0924         ## $v0 = 00000924
.L8084E120:
/* 1BF10 8084E120 54430004 */  bnel    $v0, $v1, .L8084E134       
/* 1BF14 8084E124 24030922 */  addiu   $v1, $zero, 0x0922         ## $v1 = 00000922
/* 1BF18 8084E128 10000002 */  beq     $zero, $zero, .L8084E134   
/* 1BF1C 8084E12C 24030039 */  addiu   $v1, $zero, 0x0039         ## $v1 = 00000039
/* 1BF20 8084E130 24030922 */  addiu   $v1, $zero, 0x0922         ## $v1 = 00000922
.L8084E134:
/* 1BF24 8084E134 00601025 */  or      $v0, $v1, $zero            ## $v0 = 00000922
.L8084E138:
/* 1BF28 8084E138 0C03D719 */  jal     func_800F5C64              
/* 1BF2C 8084E13C 3044FFFF */  andi    $a0, $v0, 0xFFFF           ## $a0 = 00000922
/* 1BF30 8084E140 10000026 */  beq     $zero, $zero, .L8084E1DC   
/* 1BF34 8084E144 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084E148:
/* 1BF38 8084E148 AFA6002C */  sw      $a2, 0x002C($sp)           
/* 1BF3C 8084E14C 0C042F6F */  jal     func_8010BDBC              
/* 1BF40 8084E150 AFA70028 */  sw      $a3, 0x0028($sp)           
/* 1BF44 8084E154 24010002 */  addiu   $at, $zero, 0x0002         ## $at = 00000002
/* 1BF48 8084E158 1441001F */  bne     $v0, $at, .L8084E1D8       
/* 1BF4C 8084E15C 8FA70028 */  lw      $a3, 0x0028($sp)           
/* 1BF50 8084E160 8FA2002C */  lw      $v0, 0x002C($sp)           
/* 1BF54 8084E164 24010035 */  addiu   $at, $zero, 0x0035         ## $at = 00000035
/* 1BF58 8084E168 240E0123 */  addiu   $t6, $zero, 0x0123         ## $t6 = 00000123
/* 1BF5C 8084E16C 804D0434 */  lb      $t5, 0x0434($v0)           ## 00000434
/* 1BF60 8084E170 240F0014 */  addiu   $t7, $zero, 0x0014         ## $t7 = 00000014
/* 1BF64 8084E174 3418FFF1 */  ori     $t8, $zero, 0xFFF1         ## $t8 = 0000FFF1
/* 1BF68 8084E178 15A10016 */  bne     $t5, $at, .L8084E1D4       
/* 1BF6C 8084E17C 2419000F */  addiu   $t9, $zero, 0x000F         ## $t9 = 0000000F
/* 1BF70 8084E180 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1BF74 8084E184 00270821 */  addu    $at, $at, $a3              
/* 1BF78 8084E188 A42E1E1A */  sh      $t6, 0x1E1A($at)           ## 00011E1A
/* 1BF7C 8084E18C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1BF80 8084E190 00270821 */  addu    $at, $at, $a3              
/* 1BF84 8084E194 A02F1E15 */  sb      $t7, 0x1E15($at)           ## 00011E15
/* 1BF88 8084E198 3C018016 */  lui     $at, %hi(gSaveContext+0x1412)
/* 1BF8C 8084E19C A438FA72 */  sh      $t8, %lo(gSaveContext+0x1412)($at)
/* 1BF90 8084E1A0 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 1BF94 8084E1A4 00270821 */  addu    $at, $at, $a3              
/* 1BF98 8084E1A8 A0391E5E */  sb      $t9, 0x1E5E($at)           ## 00011E5E
/* 1BF9C 8084E1AC 8C48067C */  lw      $t0, 0x067C($v0)           ## 0000067C
/* 1BFA0 8084E1B0 3C01DFFF */  lui     $at, 0xDFFF                ## $at = DFFF0000
/* 1BFA4 8084E1B4 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = DFFFFFFF
/* 1BFA8 8084E1B8 01014824 */  and     $t1, $t0, $at              
/* 1BFAC 8084E1BC AC49067C */  sw      $t1, 0x067C($v0)           ## 0000067C
/* 1BFB0 8084E1C0 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 1BFB4 8084E1C4 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 1BFB8 8084E1C8 0C214BFF */  jal     func_80852FFC              
/* 1BFBC 8084E1CC 24060008 */  addiu   $a2, $zero, 0x0008         ## $a2 = 00000008
/* 1BFC0 8084E1D0 8FA2002C */  lw      $v0, 0x002C($sp)           
.L8084E1D4:
/* 1BFC4 8084E1D4 A0400434 */  sb      $zero, 0x0434($v0)         ## 00000434
.L8084E1D8:
/* 1BFC8 8084E1D8 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L8084E1DC:
/* 1BFCC 8084E1DC 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 1BFD0 8084E1E0 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
/* 1BFD4 8084E1E4 03E00008 */  jr      $ra                        
/* 1BFD8 8084E1E8 00000000 */  nop
