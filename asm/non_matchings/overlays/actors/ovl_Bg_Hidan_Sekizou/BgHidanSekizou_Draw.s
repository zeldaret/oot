.rdata
glabel D_8088E2B8
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E2D0
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

glabel D_8088E2E8
    .asciz "../z_bg_hidan_sekizou.c"
    .balign 4

.text
glabel BgHidanSekizou_Draw
/* 01028 8088DEE8 27BDFF78 */  addiu   $sp, $sp, 0xFF78           ## $sp = FFFFFF78
/* 0102C 8088DEEC AFB40030 */  sw      $s4, 0x0030($sp)           
/* 01030 8088DEF0 00A0A025 */  or      $s4, $a1, $zero            ## $s4 = 00000000
/* 01034 8088DEF4 AFBF0034 */  sw      $ra, 0x0034($sp)           
/* 01038 8088DEF8 AFB3002C */  sw      $s3, 0x002C($sp)           
/* 0103C 8088DEFC AFB20028 */  sw      $s2, 0x0028($sp)           
/* 01040 8088DF00 AFB10024 */  sw      $s1, 0x0024($sp)           
/* 01044 8088DF04 AFB00020 */  sw      $s0, 0x0020($sp)           
/* 01048 8088DF08 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 0104C 8088DF0C 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 01050 8088DF10 3C068089 */  lui     $a2, %hi(D_8088E2B8)       ## $a2 = 80890000
/* 01054 8088DF14 24C6E2B8 */  addiu   $a2, $a2, %lo(D_8088E2B8)  ## $a2 = 8088E2B8
/* 01058 8088DF18 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFD0
/* 0105C 8088DF1C 2407033B */  addiu   $a3, $zero, 0x033B         ## $a3 = 0000033B
/* 01060 8088DF20 0C031AB1 */  jal     Graph_OpenDisps              
/* 01064 8088DF24 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 01068 8088DF28 0C024F46 */  jal     func_80093D18              
/* 0106C 8088DF2C 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 01070 8088DF30 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 01074 8088DF34 3C0FDA38 */  lui     $t7, 0xDA38                ## $t7 = DA380000
/* 01078 8088DF38 35EF0003 */  ori     $t7, $t7, 0x0003           ## $t7 = DA380003
/* 0107C 8088DF3C 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 01080 8088DF40 AE6E02C0 */  sw      $t6, 0x02C0($s3)           ## 000002C0
/* 01084 8088DF44 3C058089 */  lui     $a1, %hi(D_8088E2D0)       ## $a1 = 80890000
/* 01088 8088DF48 AC4F0000 */  sw      $t7, 0x0000($v0)           ## 00000000
/* 0108C 8088DF4C 8E840000 */  lw      $a0, 0x0000($s4)           ## 00000000
/* 01090 8088DF50 24A5E2D0 */  addiu   $a1, $a1, %lo(D_8088E2D0)  ## $a1 = 8088E2D0
/* 01094 8088DF54 2406033F */  addiu   $a2, $zero, 0x033F         ## $a2 = 0000033F
/* 01098 8088DF58 0C0346A2 */  jal     Matrix_NewMtx              
/* 0109C 8088DF5C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 010A0 8088DF60 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 010A4 8088DF64 8638001C */  lh      $t8, 0x001C($s1)           ## 0000001C
/* 010A8 8088DF68 3C08DE00 */  lui     $t0, 0xDE00                ## $t0 = DE000000
/* 010AC 8088DF6C 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 010B0 8088DF70 17000009 */  bne     $t8, $zero, .L8088DF98     
/* 010B4 8088DF74 24050014 */  addiu   $a1, $zero, 0x0014         ## $a1 = 00000014
/* 010B8 8088DF78 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 010BC 8088DF7C 3C090601 */  lui     $t1, 0x0601                ## $t1 = 06010000
/* 010C0 8088DF80 2529B0F8 */  addiu   $t1, $t1, 0xB0F8           ## $t1 = 0600B0F8
/* 010C4 8088DF84 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 010C8 8088DF88 AE7902C0 */  sw      $t9, 0x02C0($s3)           ## 000002C0
/* 010CC 8088DF8C AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 010D0 8088DF90 10000008 */  beq     $zero, $zero, .L8088DFB4   
/* 010D4 8088DF94 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
.L8088DF98:
/* 010D8 8088DF98 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 010DC 8088DF9C 3C0C0601 */  lui     $t4, 0x0601                ## $t4 = 06010000
/* 010E0 8088DFA0 258CABC8 */  addiu   $t4, $t4, 0xABC8           ## $t4 = 0600ABC8
/* 010E4 8088DFA4 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 010E8 8088DFA8 AE6A02C0 */  sw      $t2, 0x02C0($s3)           ## 000002C0
/* 010EC 8088DFAC AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 010F0 8088DFB0 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
.L8088DFB4:
/* 010F4 8088DFB4 0C024DDD */  jal     Gfx_CallSetupDL              
/* 010F8 8088DFB8 8E6402D0 */  lw      $a0, 0x02D0($s3)           ## 000002D0
/* 010FC 8088DFBC AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
/* 01100 8088DFC0 862D001C */  lh      $t5, 0x001C($s1)           ## 0000001C
/* 01104 8088DFC4 55A00039 */  bnel    $t5, $zero, .L8088E0AC     
/* 01108 8088DFC8 868D07A0 */  lh      $t5, 0x07A0($s4)           ## 000007A0
/* 0110C 8088DFCC 862E0168 */  lh      $t6, 0x0168($s1)           ## 00000168
/* 01110 8088DFD0 19C00055 */  blez    $t6, .L8088E128            
/* 01114 8088DFD4 00000000 */  nop
/* 01118 8088DFD8 868F07A0 */  lh      $t7, 0x07A0($s4)           ## 000007A0
/* 0111C 8088DFDC 000FC080 */  sll     $t8, $t7,  2               
/* 01120 8088DFE0 0298C821 */  addu    $t9, $s4, $t8              
/* 01124 8088DFE4 0C016A7D */  jal     func_8005A9F4              
/* 01128 8088DFE8 8F240790 */  lw      $a0, 0x0790($t9)           ## 00000790
/* 0112C 8088DFEC 862300B6 */  lh      $v1, 0x00B6($s1)           ## 000000B6
/* 01130 8088DFF0 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01134 8088DFF4 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01138 8088DFF8 00434023 */  subu    $t0, $v0, $v1              
/* 0113C 8088DFFC 00084C00 */  sll     $t1, $t0, 16               
/* 01140 8088E000 00095403 */  sra     $t2, $t1, 16               
/* 01144 8088E004 05400016 */  bltz    $t2, .L8088E060            
/* 01148 8088E008 2466E000 */  addiu   $a2, $v1, 0xE000           ## $a2 = FFFFE000
/* 0114C 8088E00C 8E6B02D0 */  lw      $t3, 0x02D0($s3)           ## 000002D0
/* 01150 8088E010 24662000 */  addiu   $a2, $v1, 0x2000           ## $a2 = 00002000
/* 01154 8088E014 00063400 */  sll     $a2, $a2, 16               
/* 01158 8088E018 86270168 */  lh      $a3, 0x0168($s1)           ## 00000168
/* 0115C 8088E01C 00063403 */  sra     $a2, $a2, 16               
/* 01160 8088E020 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01164 8088E024 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01168 8088E028 0C223714 */  jal     func_8088DC50              
/* 0116C 8088E02C AFAB0010 */  sw      $t3, 0x0010($sp)           
/* 01170 8088E030 AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
/* 01174 8088E034 862600B6 */  lh      $a2, 0x00B6($s1)           ## 000000B6
/* 01178 8088E038 86270168 */  lh      $a3, 0x0168($s1)           ## 00000168
/* 0117C 8088E03C AFA20010 */  sw      $v0, 0x0010($sp)           
/* 01180 8088E040 24C6E000 */  addiu   $a2, $a2, 0xE000           ## $a2 = FFFFE000
/* 01184 8088E044 00063400 */  sll     $a2, $a2, 16               
/* 01188 8088E048 00063403 */  sra     $a2, $a2, 16               
/* 0118C 8088E04C 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01190 8088E050 0C223714 */  jal     func_8088DC50              
/* 01194 8088E054 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01198 8088E058 10000033 */  beq     $zero, $zero, .L8088E128   
/* 0119C 8088E05C AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
.L8088E060:
/* 011A0 8088E060 8E6C02D0 */  lw      $t4, 0x02D0($s3)           ## 000002D0
/* 011A4 8088E064 00063400 */  sll     $a2, $a2, 16               
/* 011A8 8088E068 86270168 */  lh      $a3, 0x0168($s1)           ## 00000168
/* 011AC 8088E06C 00063403 */  sra     $a2, $a2, 16               
/* 011B0 8088E070 0C223714 */  jal     func_8088DC50              
/* 011B4 8088E074 AFAC0010 */  sw      $t4, 0x0010($sp)           
/* 011B8 8088E078 AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
/* 011BC 8088E07C 862600B6 */  lh      $a2, 0x00B6($s1)           ## 000000B6
/* 011C0 8088E080 86270168 */  lh      $a3, 0x0168($s1)           ## 00000168
/* 011C4 8088E084 AFA20010 */  sw      $v0, 0x0010($sp)           
/* 011C8 8088E088 24C62000 */  addiu   $a2, $a2, 0x2000           ## $a2 = 00002000
/* 011CC 8088E08C 00063400 */  sll     $a2, $a2, 16               
/* 011D0 8088E090 00063403 */  sra     $a2, $a2, 16               
/* 011D4 8088E094 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 011D8 8088E098 0C223714 */  jal     func_8088DC50              
/* 011DC 8088E09C 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 011E0 8088E0A0 10000021 */  beq     $zero, $zero, .L8088E128   
/* 011E4 8088E0A4 AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
/* 011E8 8088E0A8 868D07A0 */  lh      $t5, 0x07A0($s4)           ## 000007A0
.L8088E0AC:
/* 011EC 8088E0AC 000D7080 */  sll     $t6, $t5,  2               
/* 011F0 8088E0B0 028E7821 */  addu    $t7, $s4, $t6              
/* 011F4 8088E0B4 0C016A7D */  jal     func_8005A9F4              
/* 011F8 8088E0B8 8DE40790 */  lw      $a0, 0x0790($t7)           ## 00000790
/* 011FC 8088E0BC 00022400 */  sll     $a0, $v0, 16               
/* 01200 8088E0C0 00042403 */  sra     $a0, $a0, 16               
/* 01204 8088E0C4 862500B6 */  lh      $a1, 0x00B6($s1)           ## 000000B6
/* 01208 8088E0C8 0C223782 */  jal     func_8088DE08              
/* 0120C 8088E0CC 27A6006C */  addiu   $a2, $sp, 0x006C           ## $a2 = FFFFFFE4
/* 01210 8088E0D0 27B0006C */  addiu   $s0, $sp, 0x006C           ## $s0 = FFFFFFE4
/* 01214 8088E0D4 27B2007C */  addiu   $s2, $sp, 0x007C           ## $s2 = FFFFFFF4
/* 01218 8088E0D8 8E020000 */  lw      $v0, 0x0000($s0)           ## FFFFFFE4
.L8088E0DC:
/* 0121C 8088E0DC 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 01220 8088E0E0 02202825 */  or      $a1, $s1, $zero            ## $a1 = 00000000
/* 01224 8088E0E4 0002C040 */  sll     $t8, $v0,  1               
/* 01228 8088E0E8 0238C821 */  addu    $t9, $s1, $t8              
/* 0122C 8088E0EC 87270168 */  lh      $a3, 0x0168($t9)           ## 00000168
/* 01230 8088E0F0 58E0000B */  blezl   $a3, .L8088E120            
/* 01234 8088E0F4 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = FFFFFFE8
/* 01238 8088E0F8 862800B6 */  lh      $t0, 0x00B6($s1)           ## 000000B6
/* 0123C 8088E0FC 00024B80 */  sll     $t1, $v0, 14               
/* 01240 8088E100 8E6A02D0 */  lw      $t2, 0x02D0($s3)           ## 000002D0
/* 01244 8088E104 01093021 */  addu    $a2, $t0, $t1              
/* 01248 8088E108 00063400 */  sll     $a2, $a2, 16               
/* 0124C 8088E10C 00063403 */  sra     $a2, $a2, 16               
/* 01250 8088E110 0C223714 */  jal     func_8088DC50              
/* 01254 8088E114 AFAA0010 */  sw      $t2, 0x0010($sp)           
/* 01258 8088E118 AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
/* 0125C 8088E11C 26100004 */  addiu   $s0, $s0, 0x0004           ## $s0 = FFFFFFEC
.L8088E120:
/* 01260 8088E120 5612FFEE */  bnel    $s0, $s2, .L8088E0DC       
/* 01264 8088E124 8E020000 */  lw      $v0, 0x0000($s0)           ## FFFFFFEC
.L8088E128:
/* 01268 8088E128 3C068089 */  lui     $a2, %hi(D_8088E2E8)       ## $a2 = 80890000
/* 0126C 8088E12C 24C6E2E8 */  addiu   $a2, $a2, %lo(D_8088E2E8)  ## $a2 = 8088E2E8
/* 01270 8088E130 27A40058 */  addiu   $a0, $sp, 0x0058           ## $a0 = FFFFFFD0
/* 01274 8088E134 8E850000 */  lw      $a1, 0x0000($s4)           ## 00000000
/* 01278 8088E138 0C031AD5 */  jal     Graph_CloseDisps              
/* 0127C 8088E13C 24070383 */  addiu   $a3, $zero, 0x0383         ## $a3 = 00000383
/* 01280 8088E140 8FBF0034 */  lw      $ra, 0x0034($sp)           
/* 01284 8088E144 8FB00020 */  lw      $s0, 0x0020($sp)           
/* 01288 8088E148 8FB10024 */  lw      $s1, 0x0024($sp)           
/* 0128C 8088E14C 8FB20028 */  lw      $s2, 0x0028($sp)           
/* 01290 8088E150 8FB3002C */  lw      $s3, 0x002C($sp)           
/* 01294 8088E154 8FB40030 */  lw      $s4, 0x0030($sp)           
/* 01298 8088E158 03E00008 */  jr      $ra                        
/* 0129C 8088E15C 27BD0088 */  addiu   $sp, $sp, 0x0088           ## $sp = 00000000

