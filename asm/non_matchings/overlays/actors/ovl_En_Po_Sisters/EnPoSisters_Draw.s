.rdata
glabel D_80ADD828
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD840
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD858
    .asciz "../z_en_po_sisters.c"
    .balign 4

glabel D_80ADD870
    .asciz "../z_en_po_sisters.c"
    .balign 4

.late_rodata
glabel D_80ADD8A8
 .word 0x3BB78035
glabel D_80ADD8AC
    .float 0.0027

glabel D_80ADD8B0
    .float 0.0027

glabel D_80ADD8B4
 .word 0x3B656042
glabel D_80ADD8B8
    .float 0.0027

glabel D_80ADD8BC
    .float 0.8

glabel D_80ADD8C0
    .float 0.025

glabel D_80ADD8C4
 .word 0x3BE56042, 0x00000000, 0x00000000

.text
glabel EnPoSisters_Draw
/* 040B4 80ADD044 27BDFF08 */  addiu   $sp, $sp, 0xFF08           ## $sp = FFFFFF08
/* 040B8 80ADD048 AFBF006C */  sw      $ra, 0x006C($sp)
/* 040BC 80ADD04C AFB70068 */  sw      $s7, 0x0068($sp)
/* 040C0 80ADD050 AFB60064 */  sw      $s6, 0x0064($sp)
/* 040C4 80ADD054 AFB50060 */  sw      $s5, 0x0060($sp)
/* 040C8 80ADD058 AFB4005C */  sw      $s4, 0x005C($sp)
/* 040CC 80ADD05C AFB30058 */  sw      $s3, 0x0058($sp)
/* 040D0 80ADD060 AFB20054 */  sw      $s2, 0x0054($sp)
/* 040D4 80ADD064 AFB10050 */  sw      $s1, 0x0050($sp)
/* 040D8 80ADD068 AFB0004C */  sw      $s0, 0x004C($sp)
/* 040DC 80ADD06C F7B80040 */  sdc1    $f24, 0x0040($sp)
/* 040E0 80ADD070 F7B60038 */  sdc1    $f22, 0x0038($sp)
/* 040E4 80ADD074 F7B40030 */  sdc1    $f20, 0x0030($sp)
/* 040E8 80ADD078 AFA400F4 */  sw      $a0, 0x00F4($sp)
/* 040EC 80ADD07C 90820194 */  lbu     $v0, 0x0194($a0)           ## 00000194
/* 040F0 80ADD080 00A0B025 */  or      $s6, $a1, $zero            ## $s6 = 00000000
/* 040F4 80ADD084 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 040F8 80ADD088 3C0E80AE */  lui     $t6, %hi(D_80ADD700)       ## $t6 = 80AE0000
/* 040FC 80ADD08C 3C0F80AE */  lui     $t7, %hi(D_80ADD6F0)       ## $t7 = 80AE0000
/* 04100 80ADD090 0080A025 */  or      $s4, $a0, $zero            ## $s4 = 00000000
/* 04104 80ADD094 25CED700 */  addiu   $t6, $t6, %lo(D_80ADD700)  ## $t6 = 80ADD700
/* 04108 80ADD098 25EFD6F0 */  addiu   $t7, $t7, %lo(D_80ADD6F0)  ## $t7 = 80ADD6F0
/* 0410C 80ADD09C 3C0680AE */  lui     $a2, %hi(D_80ADD828)       ## $a2 = 80AE0000
/* 04110 80ADD0A0 00021080 */  sll     $v0, $v0,  2
/* 04114 80ADD0A4 004E8821 */  addu    $s1, $v0, $t6
/* 04118 80ADD0A8 004FB821 */  addu    $s7, $v0, $t7
/* 0411C 80ADD0AC 24C6D828 */  addiu   $a2, $a2, %lo(D_80ADD828)  ## $a2 = 80ADD828
/* 04120 80ADD0B0 27A400C4 */  addiu   $a0, $sp, 0x00C4           ## $a0 = FFFFFFCC
/* 04124 80ADD0B4 24070BAD */  addiu   $a3, $zero, 0x0BAD         ## $a3 = 00000BAD
/* 04128 80ADD0B8 0C031AB1 */  jal     Graph_OpenDisps
/* 0412C 80ADD0BC 00A09825 */  or      $s3, $a1, $zero            ## $s3 = 00000000
/* 04130 80ADD0C0 0C2B7157 */  jal     func_80ADC55C
/* 04134 80ADD0C4 02802025 */  or      $a0, $s4, $zero            ## $a0 = 00000000
/* 04138 80ADD0C8 0C024F46 */  jal     func_80093D18
/* 0413C 80ADD0CC 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 04140 80ADD0D0 0C024F61 */  jal     func_80093D84
/* 04144 80ADD0D4 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 04148 80ADD0D8 92820231 */  lbu     $v0, 0x0231($s4)           ## 00000231
/* 0414C 80ADD0DC 241200FF */  addiu   $s2, $zero, 0x00FF         ## $s2 = 000000FF
/* 04150 80ADD0E0 3C15FB00 */  lui     $s5, 0xFB00                ## $s5 = FB000000
/* 04154 80ADD0E4 12420003 */  beq     $s2, $v0, .L80ADD0F4
/* 04158 80ADD0E8 3C0E8011 */  lui     $t6, %hi(D_80116280+0x10)
/* 0415C 80ADD0EC 14400026 */  bne     $v0, $zero, .L80ADD188
/* 04160 80ADD0F0 2401FF00 */  addiu   $at, $zero, 0xFF00         ## $at = FFFFFF00
.L80ADD0F4:
/* 04164 80ADD0F4 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 04168 80ADD0F8 25CE6290 */  addiu   $t6, %lo(D_80116280+0x10)
/* 0416C 80ADD0FC 3C0780AE */  lui     $a3, %hi(func_80ADC77C)    ## $a3 = 80AE0000
/* 04170 80ADD100 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04174 80ADD104 AE7802C0 */  sw      $t8, 0x02C0($s3)           ## 000002C0
/* 04178 80ADD108 AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 0417C 80ADD10C 928B022F */  lbu     $t3, 0x022F($s4)           ## 0000022F
/* 04180 80ADD110 9288022E */  lbu     $t0, 0x022E($s4)           ## 0000022E
/* 04184 80ADD114 928F0230 */  lbu     $t7, 0x0230($s4)           ## 00000230
/* 04188 80ADD118 928A0231 */  lbu     $t2, 0x0231($s4)           ## 00000231
/* 0418C 80ADD11C 000B6400 */  sll     $t4, $t3, 16
/* 04190 80ADD120 00084E00 */  sll     $t1, $t0, 24
/* 04194 80ADD124 012C6825 */  or      $t5, $t1, $t4              ## $t5 = 00000000
/* 04198 80ADD128 000FC200 */  sll     $t8, $t7,  8
/* 0419C 80ADD12C 01B8C825 */  or      $t9, $t5, $t8              ## $t9 = 00000008
/* 041A0 80ADD130 032A5825 */  or      $t3, $t9, $t2              ## $t3 = 00000008
/* 041A4 80ADD134 AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 041A8 80ADD138 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 041AC 80ADD13C 3C0CDB06 */  lui     $t4, 0xDB06                ## $t4 = DB060000
/* 041B0 80ADD140 358C0024 */  ori     $t4, $t4, 0x0024           ## $t4 = DB060024
/* 041B4 80ADD144 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 041B8 80ADD148 AE6902C0 */  sw      $t1, 0x02C0($s3)           ## 000002C0
/* 041BC 80ADD14C AC4E0004 */  sw      $t6, 0x0004($v0)           ## 00000004
/* 041C0 80ADD150 AC4C0000 */  sw      $t4, 0x0000($v0)           ## 00000000
/* 041C4 80ADD154 8E86016C */  lw      $a2, 0x016C($s4)           ## 0000016C
/* 041C8 80ADD158 8E850150 */  lw      $a1, 0x0150($s4)           ## 00000150
/* 041CC 80ADD15C 3C0F80AE */  lui     $t7, %hi(func_80ADC970)    ## $t7 = 80AE0000
/* 041D0 80ADD160 25EFC970 */  addiu   $t7, $t7, %lo(func_80ADC970) ## $t7 = 80ADC970
/* 041D4 80ADD164 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 041D8 80ADD168 AFB40014 */  sw      $s4, 0x0014($sp)
/* 041DC 80ADD16C 8E6D02C0 */  lw      $t5, 0x02C0($s3)           ## 000002C0
/* 041E0 80ADD170 24E7C77C */  addiu   $a3, $a3, %lo(func_80ADC77C) ## $a3 = 80ADC77C
/* 041E4 80ADD174 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 041E8 80ADD178 0C0288A2 */  jal     SkelAnime_Draw
/* 041EC 80ADD17C AFAD0018 */  sw      $t5, 0x0018($sp)
/* 041F0 80ADD180 1000001F */  beq     $zero, $zero, .L80ADD200
/* 041F4 80ADD184 AE6202C0 */  sw      $v0, 0x02C0($s3)           ## 000002C0
.L80ADD188:
/* 041F8 80ADD188 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 041FC 80ADD18C 3C15FB00 */  lui     $s5, 0xFB00                ## $s5 = FB000000
/* 04200 80ADD190 3C09DB06 */  lui     $t1, 0xDB06                ## $t1 = DB060000
/* 04204 80ADD194 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 04208 80ADD198 AE7802D0 */  sw      $t8, 0x02D0($s3)           ## 000002D0
/* 0420C 80ADD19C AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 04210 80ADD1A0 92990231 */  lbu     $t9, 0x0231($s4)           ## 00000231
/* 04214 80ADD1A4 3C0C8011 */  lui     $t4, %hi(D_80116280)
/* 04218 80ADD1A8 258C6280 */  addiu   $t4, %lo(D_80116280)
/* 0421C 80ADD1AC 03215025 */  or      $t2, $t9, $at              ## $t2 = 00000000
/* 04220 80ADD1B0 AC4A0004 */  sw      $t2, 0x0004($v0)           ## 00000004
/* 04224 80ADD1B4 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 04228 80ADD1B8 35290024 */  ori     $t1, $t1, 0x0024           ## $t1 = DB060024
/* 0422C 80ADD1BC 3C0E80AE */  lui     $t6, %hi(func_80ADC970)    ## $t6 = 80AE0000
/* 04230 80ADD1C0 244B0008 */  addiu   $t3, $v0, 0x0008           ## $t3 = 00000008
/* 04234 80ADD1C4 AE6B02D0 */  sw      $t3, 0x02D0($s3)           ## 000002D0
/* 04238 80ADD1C8 AC4C0004 */  sw      $t4, 0x0004($v0)           ## 00000004
/* 0423C 80ADD1CC AC490000 */  sw      $t1, 0x0000($v0)           ## 00000000
/* 04240 80ADD1D0 8E86016C */  lw      $a2, 0x016C($s4)           ## 0000016C
/* 04244 80ADD1D4 8E850150 */  lw      $a1, 0x0150($s4)           ## 00000150
/* 04248 80ADD1D8 25CEC970 */  addiu   $t6, $t6, %lo(func_80ADC970) ## $t6 = 80ADC970
/* 0424C 80ADD1DC AFAE0010 */  sw      $t6, 0x0010($sp)
/* 04250 80ADD1E0 AFB40014 */  sw      $s4, 0x0014($sp)
/* 04254 80ADD1E4 8E6F02D0 */  lw      $t7, 0x02D0($s3)           ## 000002D0
/* 04258 80ADD1E8 3C0780AE */  lui     $a3, %hi(func_80ADC77C)    ## $a3 = 80AE0000
/* 0425C 80ADD1EC 24E7C77C */  addiu   $a3, $a3, %lo(func_80ADC77C) ## $a3 = 80ADC77C
/* 04260 80ADD1F0 02C02025 */  or      $a0, $s6, $zero            ## $a0 = 00000000
/* 04264 80ADD1F4 0C0288A2 */  jal     SkelAnime_Draw
/* 04268 80ADD1F8 AFAF0018 */  sw      $t7, 0x0018($sp)
/* 0426C 80ADD1FC AE6202D0 */  sw      $v0, 0x02D0($s3)           ## 000002D0
.L80ADD200:
/* 04270 80ADD200 928D0199 */  lbu     $t5, 0x0199($s4)           ## 00000199
/* 04274 80ADD204 31B80080 */  andi    $t8, $t5, 0x0080           ## $t8 = 00000000
/* 04278 80ADD208 57000019 */  bnel    $t8, $zero, .L80ADD270
/* 0427C 80ADD20C 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 04280 80ADD210 0C03423F */  jal     Matrix_Put
/* 04284 80ADD214 268402F8 */  addiu   $a0, $s4, 0x02F8           ## $a0 = 000002F8
/* 04288 80ADD218 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 0428C 80ADD21C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 04290 80ADD220 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 04294 80ADD224 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 04298 80ADD228 AE6802C0 */  sw      $t0, 0x02C0($s3)           ## 000002C0
/* 0429C 80ADD22C 3C0580AE */  lui     $a1, %hi(D_80ADD840)       ## $a1 = 80AE0000
/* 042A0 80ADD230 AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 042A4 80ADD234 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 042A8 80ADD238 24A5D840 */  addiu   $a1, $a1, %lo(D_80ADD840)  ## $a1 = 80ADD840
/* 042AC 80ADD23C 24060BDA */  addiu   $a2, $zero, 0x0BDA         ## $a2 = 00000BDA
/* 042B0 80ADD240 0C0346A2 */  jal     Matrix_NewMtx
/* 042B4 80ADD244 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 042B8 80ADD248 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 042BC 80ADD24C 8E6202C0 */  lw      $v0, 0x02C0($s3)           ## 000002C0
/* 042C0 80ADD250 3C090600 */  lui     $t1, 0x0600                ## $t1 = 06000000
/* 042C4 80ADD254 252927B0 */  addiu   $t1, $t1, 0x27B0           ## $t1 = 060027B0
/* 042C8 80ADD258 244A0008 */  addiu   $t2, $v0, 0x0008           ## $t2 = 00000008
/* 042CC 80ADD25C AE6A02C0 */  sw      $t2, 0x02C0($s3)           ## 000002C0
/* 042D0 80ADD260 3C0BDE00 */  lui     $t3, 0xDE00                ## $t3 = DE000000
/* 042D4 80ADD264 AC4B0000 */  sw      $t3, 0x0000($v0)           ## 00000000
/* 042D8 80ADD268 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 042DC 80ADD26C 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
.L80ADD270:
/* 042E0 80ADD270 3C0EDB06 */  lui     $t6, 0xDB06                ## $t6 = DB060000
/* 042E4 80ADD274 35CE0020 */  ori     $t6, $t6, 0x0020           ## $t6 = DB060020
/* 042E8 80ADD278 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 042EC 80ADD27C AE6C02D0 */  sw      $t4, 0x02D0($s3)           ## 000002D0
/* 042F0 80ADD280 AC4E0000 */  sw      $t6, 0x0000($v0)           ## 00000000
/* 042F4 80ADD284 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 042F8 80ADD288 240F0020 */  addiu   $t7, $zero, 0x0020         ## $t7 = 00000020
/* 042FC 80ADD28C 240D0040 */  addiu   $t5, $zero, 0x0040         ## $t5 = 00000040
/* 04300 80ADD290 24180001 */  addiu   $t8, $zero, 0x0001         ## $t8 = 00000001
/* 04304 80ADD294 3C080001 */  lui     $t0, 0x0001                ## $t0 = 00010000
/* 04308 80ADD298 01164021 */  addu    $t0, $t0, $s6
/* 0430C 80ADD29C AFB80018 */  sw      $t8, 0x0018($sp)
/* 04310 80ADD2A0 AFAD0014 */  sw      $t5, 0x0014($sp)
/* 04314 80ADD2A4 AFAF0010 */  sw      $t7, 0x0010($sp)
/* 04318 80ADD2A8 AFA0001C */  sw      $zero, 0x001C($sp)
/* 0431C 80ADD2AC 8D081DE4 */  lw      $t0, 0x1DE4($t0)           ## 00011DE4
/* 04320 80ADD2B0 240B0020 */  addiu   $t3, $zero, 0x0020         ## $t3 = 00000020
/* 04324 80ADD2B4 24090080 */  addiu   $t1, $zero, 0x0080         ## $t1 = 00000080
/* 04328 80ADD2B8 00080823 */  subu    $at, $zero, $t0
/* 0432C 80ADD2BC 0001C880 */  sll     $t9, $at,  2
/* 04330 80ADD2C0 0321C821 */  addu    $t9, $t9, $at
/* 04334 80ADD2C4 0019C880 */  sll     $t9, $t9,  2
/* 04338 80ADD2C8 332A01FF */  andi    $t2, $t9, 0x01FF           ## $t2 = 00000000
/* 0433C 80ADD2CC AFAA0020 */  sw      $t2, 0x0020($sp)
/* 04340 80ADD2D0 AFA90028 */  sw      $t1, 0x0028($sp)
/* 04344 80ADD2D4 AFAB0024 */  sw      $t3, 0x0024($sp)
/* 04348 80ADD2D8 00002825 */  or      $a1, $zero, $zero          ## $a1 = 00000000
/* 0434C 80ADD2DC 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 04350 80ADD2E0 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04354 80ADD2E4 0C0253D0 */  jal     Gfx_TwoTexScroll
/* 04358 80ADD2E8 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 0435C 80ADD2EC AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 04360 80ADD2F0 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 04364 80ADD2F4 3C0580AE */  lui     $a1, %hi(func_80ADB17C)    ## $a1 = 80AE0000
/* 04368 80ADD2F8 24A5B17C */  addiu   $a1, $a1, %lo(func_80ADB17C) ## $a1 = 80ADB17C
/* 0436C 80ADD2FC 244C0008 */  addiu   $t4, $v0, 0x0008           ## $t4 = 00000008
/* 04370 80ADD300 AE6C02D0 */  sw      $t4, 0x02D0($s3)           ## 000002D0
/* 04374 80ADD304 AC550000 */  sw      $s5, 0x0000($v0)           ## 00000000
/* 04378 80ADD308 92280001 */  lbu     $t0, 0x0001($s1)           ## 00000001
/* 0437C 80ADD30C 922F0000 */  lbu     $t7, 0x0000($s1)           ## 00000000
/* 04380 80ADD310 92290002 */  lbu     $t1, 0x0002($s1)           ## 00000002
/* 04384 80ADD314 92380003 */  lbu     $t8, 0x0003($s1)           ## 00000003
/* 04388 80ADD318 0008CC00 */  sll     $t9, $t0, 16
/* 0438C 80ADD31C 000F6E00 */  sll     $t5, $t7, 24
/* 04390 80ADD320 01B95025 */  or      $t2, $t5, $t9              ## $t2 = 00000000
/* 04394 80ADD324 00096200 */  sll     $t4, $t1,  8
/* 04398 80ADD328 014C7025 */  or      $t6, $t2, $t4              ## $t6 = 00000008
/* 0439C 80ADD32C 01D84025 */  or      $t0, $t6, $t8              ## $t0 = 00000008
/* 043A0 80ADD330 AC480004 */  sw      $t0, 0x0004($v0)           ## 00000004
/* 043A4 80ADD334 8E820190 */  lw      $v0, 0x0190($s4)           ## 00000190
/* 043A8 80ADD338 3C0B80AE */  lui     $t3, %hi(func_80ADBD38)    ## $t3 = 80AE0000
/* 043AC 80ADD33C 256BBD38 */  addiu   $t3, $t3, %lo(func_80ADBD38) ## $t3 = 80ADBD38
/* 043B0 80ADD340 14A20020 */  bne     $a1, $v0, .L80ADD3C4
/* 043B4 80ADD344 00000000 */  nop
/* 043B8 80ADD348 8682019A */  lh      $v0, 0x019A($s4)           ## 0000019A
/* 043BC 80ADD34C 240D0020 */  addiu   $t5, $zero, 0x0020         ## $t5 = 00000020
/* 043C0 80ADD350 28410020 */  slti    $at, $v0, 0x0020
/* 043C4 80ADD354 1020000D */  beq     $at, $zero, .L80ADD38C
/* 043C8 80ADD358 01A2C823 */  subu    $t9, $t5, $v0
/* 043CC 80ADD35C 03320019 */  multu   $t9, $s2
/* 043D0 80ADD360 0000A812 */  mflo    $s5
/* 043D4 80ADD364 06A10002 */  bgez    $s5, .L80ADD370
/* 043D8 80ADD368 02A00821 */  addu    $at, $s5, $zero
/* 043DC 80ADD36C 26A1001F */  addiu   $at, $s5, 0x001F           ## $at = FB00001F
.L80ADD370:
/* 043E0 80ADD370 0001A943 */  sra     $s5, $at,  5
/* 043E4 80ADD374 3C0180AE */  lui     $at, %hi(D_80ADD8A8)       ## $at = 80AE0000
/* 043E8 80ADD378 C434D8A8 */  lwc1    $f20, %lo(D_80ADD8A8)($at)
/* 043EC 80ADD37C 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 043F0 80ADD380 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 043F4 80ADD384 10000040 */  beq     $zero, $zero, .L80ADD488
/* 043F8 80ADD388 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000000
.L80ADD38C:
/* 043FC 80ADD38C 00520019 */  multu   $v0, $s2
/* 04400 80ADD390 0000A812 */  mflo    $s5
/* 04404 80ADD394 26B5E020 */  addiu   $s5, $s5, 0xE020           ## $s5 = FFFFE020
/* 04408 80ADD398 06A10002 */  bgez    $s5, .L80ADD3A4
/* 0440C 80ADD39C 02A00821 */  addu    $at, $s5, $zero
/* 04410 80ADD3A0 26A1001F */  addiu   $at, $s5, 0x001F           ## $at = FFFFE03F
.L80ADD3A4:
/* 04414 80ADD3A4 0001A943 */  sra     $s5, $at,  5
/* 04418 80ADD3A8 3C0180AE */  lui     $at, %hi(D_80ADD8AC)       ## $at = 80AE0000
/* 0441C 80ADD3AC 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000020
/* 04420 80ADD3B0 C434D8AC */  lwc1    $f20, %lo(D_80ADD8AC)($at)
/* 04424 80ADD3B4 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 04428 80ADD3B8 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 0442C 80ADD3BC 10000033 */  beq     $zero, $zero, .L80ADD48C
/* 04430 80ADD3C0 92990198 */  lbu     $t9, 0x0198($s4)           ## 00000198
.L80ADD3C4:
/* 04434 80ADD3C4 15620010 */  bne     $t3, $v0, .L80ADD408
/* 04438 80ADD3C8 3C0F80AE */  lui     $t7, %hi(func_80ADBEE8)    ## $t7 = 80AE0000
/* 0443C 80ADD3CC 8689019A */  lh      $t1, 0x019A($s4)           ## 0000019A
/* 04440 80ADD3D0 240A0020 */  addiu   $t2, $zero, 0x0020         ## $t2 = 00000020
/* 04444 80ADD3D4 01496023 */  subu    $t4, $t2, $t1
/* 04448 80ADD3D8 01920019 */  multu   $t4, $s2
/* 0444C 80ADD3DC 0000A812 */  mflo    $s5
/* 04450 80ADD3E0 06A10002 */  bgez    $s5, .L80ADD3EC
/* 04454 80ADD3E4 02A00821 */  addu    $at, $s5, $zero
/* 04458 80ADD3E8 26A1001F */  addiu   $at, $s5, 0x001F           ## $at = 0000003F
.L80ADD3EC:
/* 0445C 80ADD3EC 0001A943 */  sra     $s5, $at,  5
/* 04460 80ADD3F0 3C0180AE */  lui     $at, %hi(D_80ADD8B0)       ## $at = 80AE0000
/* 04464 80ADD3F4 C434D8B0 */  lwc1    $f20, %lo(D_80ADD8B0)($at)
/* 04468 80ADD3F8 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 0446C 80ADD3FC 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 04470 80ADD400 10000021 */  beq     $zero, $zero, .L80ADD488
/* 04474 80ADD404 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000020
.L80ADD408:
/* 04478 80ADD408 25EFBEE8 */  addiu   $t7, $t7, %lo(func_80ADBEE8) ## $t7 = 80ADBEE8
/* 0447C 80ADD40C 15E20010 */  bne     $t7, $v0, .L80ADD450
/* 04480 80ADD410 3C0D80AE */  lui     $t5, %hi(func_80ADBC88)    ## $t5 = 80AE0000
/* 04484 80ADD414 868E019A */  lh      $t6, 0x019A($s4)           ## 0000019A
/* 04488 80ADD418 24180020 */  addiu   $t8, $zero, 0x0020         ## $t8 = 00000020
/* 0448C 80ADD41C 030E4023 */  subu    $t0, $t8, $t6
/* 04490 80ADD420 01120019 */  multu   $t0, $s2
/* 04494 80ADD424 0000A812 */  mflo    $s5
/* 04498 80ADD428 06A10002 */  bgez    $s5, .L80ADD434
/* 0449C 80ADD42C 02A00821 */  addu    $at, $s5, $zero
/* 044A0 80ADD430 26A1001F */  addiu   $at, $s5, 0x001F           ## $at = 0000003F
.L80ADD434:
/* 044A4 80ADD434 0001A943 */  sra     $s5, $at,  5
/* 044A8 80ADD438 3C0180AE */  lui     $at, %hi(D_80ADD8B4)       ## $at = 80AE0000
/* 044AC 80ADD43C C434D8B4 */  lwc1    $f20, %lo(D_80ADD8B4)($at)
/* 044B0 80ADD440 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 044B4 80ADD444 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 044B8 80ADD448 1000000F */  beq     $zero, $zero, .L80ADD488
/* 044BC 80ADD44C 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000020
.L80ADD450:
/* 044C0 80ADD450 25ADBC88 */  addiu   $t5, $t5, %lo(func_80ADBC88) ## $t5 = 80ADBC88
/* 044C4 80ADD454 15A20007 */  bne     $t5, $v0, .L80ADD474
/* 044C8 80ADD458 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 044CC 80ADD45C 3C0180AE */  lui     $at, %hi(D_80ADD8B8)       ## $at = 80AE0000
/* 044D0 80ADD460 C434D8B8 */  lwc1    $f20, %lo(D_80ADD8B8)($at)
/* 044D4 80ADD464 3C013F00 */  lui     $at, 0x3F00                ## $at = 3F000000
/* 044D8 80ADD468 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 044DC 80ADD46C 10000006 */  beq     $zero, $zero, .L80ADD488
/* 044E0 80ADD470 93B500E7 */  lbu     $s5, 0x00E7($sp)
.L80ADD474:
/* 044E4 80ADD474 4481B000 */  mtc1    $at, $f22                  ## $f22 = 0.50
/* 044E8 80ADD478 C6840050 */  lwc1    $f4, 0x0050($s4)           ## 00000050
/* 044EC 80ADD47C 93B500E7 */  lbu     $s5, 0x00E7($sp)
/* 044F0 80ADD480 46162502 */  mul.s   $f20, $f4, $f22
/* 044F4 80ADD484 00000000 */  nop
.L80ADD488:
/* 044F8 80ADD488 92990198 */  lbu     $t9, 0x0198($s4)           ## 00000198
.L80ADD48C:
/* 044FC 80ADD48C 3C0B80AE */  lui     $t3, %hi(func_80ADAFC0)    ## $t3 = 80AE0000
/* 04500 80ADD490 256BAFC0 */  addiu   $t3, $t3, %lo(func_80ADAFC0) ## $t3 = 80ADAFC0
/* 04504 80ADD494 1B200081 */  blez    $t9, .L80ADD69C
/* 04508 80ADD498 00008825 */  or      $s1, $zero, $zero          ## $s1 = 00000000
/* 0450C 80ADD49C 3C0A0405 */  lui     $t2, 0x0405                ## $t2 = 04050000
/* 04510 80ADD4A0 254AD4E0 */  addiu   $t2, $t2, 0xD4E0           ## $t2 = 0404D4E0
/* 04514 80ADD4A4 3C0180AE */  lui     $at, %hi(D_80ADD8BC)       ## $at = 80AE0000
/* 04518 80ADD4A8 C438D8BC */  lwc1    $f24, %lo(D_80ADD8BC)($at)
/* 0451C 80ADD4AC AFAA0078 */  sw      $t2, 0x0078($sp)
/* 04520 80ADD4B0 AFAB007C */  sw      $t3, 0x007C($sp)
/* 04524 80ADD4B4 02809025 */  or      $s2, $s4, $zero            ## $s2 = 00000000
/* 04528 80ADD4B8 AFA50084 */  sw      $a1, 0x0084($sp)
/* 0452C 80ADD4BC 8FA50084 */  lw      $a1, 0x0084($sp)
.L80ADD4C0:
/* 04530 80ADD4C0 8E820190 */  lw      $v0, 0x0190($s4)           ## 00000190
/* 04534 80ADD4C4 3C0980AE */  lui     $t1, %hi(func_80ADBD38)    ## $t1 = 80AE0000
/* 04538 80ADD4C8 2529BD38 */  addiu   $t1, $t1, %lo(func_80ADBD38) ## $t1 = 80ADBD38
/* 0453C 80ADD4CC 10A2000C */  beq     $a1, $v0, .L80ADD500
/* 04540 80ADD4D0 3C18E700 */  lui     $t8, 0xE700                ## $t8 = E7000000
/* 04544 80ADD4D4 1122000A */  beq     $t1, $v0, .L80ADD500
/* 04548 80ADD4D8 3C0C80AE */  lui     $t4, %hi(func_80ADBEE8)    ## $t4 = 80AE0000
/* 0454C 80ADD4DC 258CBEE8 */  addiu   $t4, $t4, %lo(func_80ADBEE8) ## $t4 = 80ADBEE8
/* 04550 80ADD4E0 51820008 */  beql    $t4, $v0, .L80ADD504
/* 04554 80ADD4E4 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 04558 80ADD4E8 0011A823 */  subu    $s5, $zero, $s1
/* 0455C 80ADD4EC 02A00821 */  addu    $at, $s5, $zero
/* 04560 80ADD4F0 0015A940 */  sll     $s5, $s5,  5
/* 04564 80ADD4F4 02A1A823 */  subu    $s5, $s5, $at
/* 04568 80ADD4F8 26B500F8 */  addiu   $s5, $s5, 0x00F8           ## $s5 = 00000118
/* 0456C 80ADD4FC 32B500FF */  andi    $s5, $s5, 0x00FF           ## $s5 = 00000018
.L80ADD500:
/* 04570 80ADD500 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
.L80ADD504:
/* 04574 80ADD504 3C08FA00 */  lui     $t0, 0xFA00                ## $t0 = FA000000
/* 04578 80ADD508 35088080 */  ori     $t0, $t0, 0x8080           ## $t0 = FA008080
/* 0457C 80ADD50C 244F0008 */  addiu   $t7, $v0, 0x0008           ## $t7 = 00000008
/* 04580 80ADD510 AE6F02D0 */  sw      $t7, 0x02D0($s3)           ## 000002D0
/* 04584 80ADD514 AC400004 */  sw      $zero, 0x0004($v0)         ## 00000004
/* 04588 80ADD518 AC580000 */  sw      $t8, 0x0000($v0)           ## 00000000
/* 0458C 80ADD51C 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 04590 80ADD520 32A400FF */  andi    $a0, $s5, 0x00FF           ## $a0 = 00000018
/* 04594 80ADD524 00003825 */  or      $a3, $zero, $zero          ## $a3 = 00000000
/* 04598 80ADD528 244E0008 */  addiu   $t6, $v0, 0x0008           ## $t6 = 00000008
/* 0459C 80ADD52C AE6E02D0 */  sw      $t6, 0x02D0($s3)           ## 000002D0
/* 045A0 80ADD530 AC480000 */  sw      $t0, 0x0000($v0)           ## 00000000
/* 045A4 80ADD534 92E90001 */  lbu     $t1, 0x0001($s7)           ## 00000001
/* 045A8 80ADD538 92F90000 */  lbu     $t9, 0x0000($s7)           ## 00000000
/* 045AC 80ADD53C 92EE0002 */  lbu     $t6, 0x0002($s7)           ## 00000002
/* 045B0 80ADD540 00096400 */  sll     $t4, $t1, 16
/* 045B4 80ADD544 00195E00 */  sll     $t3, $t9, 24
/* 045B8 80ADD548 016C7825 */  or      $t7, $t3, $t4              ## $t7 = 80ADBFE8
/* 045BC 80ADD54C 000E4200 */  sll     $t0, $t6,  8
/* 045C0 80ADD550 01E86825 */  or      $t5, $t7, $t0              ## $t5 = FAADBFE8
/* 045C4 80ADD554 01A4C825 */  or      $t9, $t5, $a0              ## $t9 = FAADBFF8
/* 045C8 80ADD558 AC590004 */  sw      $t9, 0x0004($v0)           ## 00000004
/* 045CC 80ADD55C 8E46023C */  lw      $a2, 0x023C($s2)           ## 0000023C
/* 045D0 80ADD560 C64E0238 */  lwc1    $f14, 0x0238($s2)          ## 00000238
/* 045D4 80ADD564 C64C0234 */  lwc1    $f12, 0x0234($s2)          ## 00000234
/* 045D8 80ADD568 0C034261 */  jal     Matrix_Translate
/* 045DC 80ADD56C AFA50084 */  sw      $a1, 0x0084($sp)
/* 045E0 80ADD570 86CA07A0 */  lh      $t2, 0x07A0($s6)           ## 000007A0
/* 045E4 80ADD574 000A4880 */  sll     $t1, $t2,  2
/* 045E8 80ADD578 02C95821 */  addu    $t3, $s6, $t1
/* 045EC 80ADD57C 0C016A7D */  jal     func_8005A9F4
/* 045F0 80ADD580 8D640790 */  lw      $a0, 0x0790($t3)           ## 00000790
/* 045F4 80ADD584 34018000 */  ori     $at, $zero, 0x8000         ## $at = 00008000
/* 045F8 80ADD588 00412821 */  addu    $a1, $v0, $at
/* 045FC 80ADD58C 00052C00 */  sll     $a1, $a1, 16
/* 04600 80ADD590 00052C03 */  sra     $a1, $a1, 16
/* 04604 80ADD594 00002025 */  or      $a0, $zero, $zero          ## $a0 = 00000000
/* 04608 80ADD598 00003025 */  or      $a2, $zero, $zero          ## $a2 = 00000000
/* 0460C 80ADD59C 0C034421 */  jal     Matrix_RotateRPY
/* 04610 80ADD5A0 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04614 80ADD5A4 8FAC007C */  lw      $t4, 0x007C($sp)
/* 04618 80ADD5A8 8E980190 */  lw      $t8, 0x0190($s4)           ## 00000190
/* 0461C 80ADD5AC 24070001 */  addiu   $a3, $zero, 0x0001         ## $a3 = 00000001
/* 04620 80ADD5B0 5598001C */  bnel    $t4, $t8, .L80ADD624
/* 04624 80ADD5B4 4406A000 */  mfc1    $a2, $f20
/* 04628 80ADD5B8 868E019A */  lh      $t6, 0x019A($s4)           ## 0000019A
/* 0462C 80ADD5BC 3C0180AE */  lui     $at, %hi(D_80ADD8C0)       ## $at = 80AE0000
/* 04630 80ADD5C0 C42AD8C0 */  lwc1    $f10, %lo(D_80ADD8C0)($at)
/* 04634 80ADD5C4 01D17823 */  subu    $t7, $t6, $s1
/* 04638 80ADD5C8 448F3000 */  mtc1    $t7, $f6                   ## $f6 = 0.00
/* 0463C 80ADD5CC 3C0180AE */  lui     $at, %hi(D_80ADD8C4)       ## $at = 80AE0000
/* 04640 80ADD5D0 46803220 */  cvt.s.w $f8, $f6
/* 04644 80ADD5D4 460A4402 */  mul.s   $f16, $f8, $f10
/* 04648 80ADD5D8 46168500 */  add.s   $f20, $f16, $f22
/* 0464C 80ADD5DC 4616A03C */  c.lt.s  $f20, $f22
/* 04650 80ADD5E0 00000000 */  nop
/* 04654 80ADD5E4 45020004 */  bc1fl   .L80ADD5F8
/* 04658 80ADD5E8 4614C03C */  c.lt.s  $f24, $f20
/* 0465C 80ADD5EC 10000009 */  beq     $zero, $zero, .L80ADD614
/* 04660 80ADD5F0 4600B006 */  mov.s   $f0, $f22
/* 04664 80ADD5F4 4614C03C */  c.lt.s  $f24, $f20
.L80ADD5F8:
/* 04668 80ADD5F8 00000000 */  nop
/* 0466C 80ADD5FC 45020004 */  bc1fl   .L80ADD610
/* 04670 80ADD600 4600A086 */  mov.s   $f2, $f20
/* 04674 80ADD604 10000002 */  beq     $zero, $zero, .L80ADD610
/* 04678 80ADD608 4600C086 */  mov.s   $f2, $f24
/* 0467C 80ADD60C 4600A086 */  mov.s   $f2, $f20
.L80ADD610:
/* 04680 80ADD610 46001006 */  mov.s   $f0, $f2
.L80ADD614:
/* 04684 80ADD614 C432D8C4 */  lwc1    $f18, %lo(D_80ADD8C4)($at)
/* 04688 80ADD618 46120502 */  mul.s   $f20, $f0, $f18
/* 0468C 80ADD61C 00000000 */  nop
/* 04690 80ADD620 4406A000 */  mfc1    $a2, $f20
.L80ADD624:
/* 04694 80ADD624 4600A306 */  mov.s   $f12, $f20
/* 04698 80ADD628 0C0342A3 */  jal     Matrix_Scale
/* 0469C 80ADD62C 4600A386 */  mov.s   $f14, $f20
/* 046A0 80ADD630 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 046A4 80ADD634 3C0DDA38 */  lui     $t5, 0xDA38                ## $t5 = DA380000
/* 046A8 80ADD638 35AD0003 */  ori     $t5, $t5, 0x0003           ## $t5 = DA380003
/* 046AC 80ADD63C 24480008 */  addiu   $t0, $v0, 0x0008           ## $t0 = 00000008
/* 046B0 80ADD640 AE6802D0 */  sw      $t0, 0x02D0($s3)           ## 000002D0
/* 046B4 80ADD644 3C0580AE */  lui     $a1, %hi(D_80ADD858)       ## $a1 = 80AE0000
/* 046B8 80ADD648 AC4D0000 */  sw      $t5, 0x0000($v0)           ## 00000000
/* 046BC 80ADD64C 8EC40000 */  lw      $a0, 0x0000($s6)           ## 00000000
/* 046C0 80ADD650 24A5D858 */  addiu   $a1, $a1, %lo(D_80ADD858)  ## $a1 = 80ADD858
/* 046C4 80ADD654 24060C3C */  addiu   $a2, $zero, 0x0C3C         ## $a2 = 00000C3C
/* 046C8 80ADD658 0C0346A2 */  jal     Matrix_NewMtx
/* 046CC 80ADD65C 00408025 */  or      $s0, $v0, $zero            ## $s0 = 00000000
/* 046D0 80ADD660 AE020004 */  sw      $v0, 0x0004($s0)           ## 00000004
/* 046D4 80ADD664 8E6202D0 */  lw      $v0, 0x02D0($s3)           ## 000002D0
/* 046D8 80ADD668 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 046DC 80ADD66C 26310001 */  addiu   $s1, $s1, 0x0001           ## $s1 = 00000001
/* 046E0 80ADD670 24590008 */  addiu   $t9, $v0, 0x0008           ## $t9 = 00000008
/* 046E4 80ADD674 AE7902D0 */  sw      $t9, 0x02D0($s3)           ## 000002D0
/* 046E8 80ADD678 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
/* 046EC 80ADD67C 8FA90078 */  lw      $t1, 0x0078($sp)
/* 046F0 80ADD680 2652000C */  addiu   $s2, $s2, 0x000C           ## $s2 = 0000000C
/* 046F4 80ADD684 AC490004 */  sw      $t1, 0x0004($v0)           ## 00000004
/* 046F8 80ADD688 8FAB00F4 */  lw      $t3, 0x00F4($sp)
/* 046FC 80ADD68C 916C0198 */  lbu     $t4, 0x0198($t3)           ## 00000198
/* 04700 80ADD690 022C082A */  slt     $at, $s1, $t4
/* 04704 80ADD694 5420FF8A */  bnel    $at, $zero, .L80ADD4C0
/* 04708 80ADD698 8FA50084 */  lw      $a1, 0x0084($sp)
.L80ADD69C:
/* 0470C 80ADD69C 3C0680AE */  lui     $a2, %hi(D_80ADD870)       ## $a2 = 80AE0000
/* 04710 80ADD6A0 24C6D870 */  addiu   $a2, $a2, %lo(D_80ADD870)  ## $a2 = 80ADD870
/* 04714 80ADD6A4 27A400C4 */  addiu   $a0, $sp, 0x00C4           ## $a0 = FFFFFFCC
/* 04718 80ADD6A8 8EC50000 */  lw      $a1, 0x0000($s6)           ## 00000000
/* 0471C 80ADD6AC 0C031AD5 */  jal     Graph_CloseDisps
/* 04720 80ADD6B0 24070C43 */  addiu   $a3, $zero, 0x0C43         ## $a3 = 00000C43
/* 04724 80ADD6B4 8FBF006C */  lw      $ra, 0x006C($sp)
/* 04728 80ADD6B8 D7B40030 */  ldc1    $f20, 0x0030($sp)
/* 0472C 80ADD6BC D7B60038 */  ldc1    $f22, 0x0038($sp)
/* 04730 80ADD6C0 D7B80040 */  ldc1    $f24, 0x0040($sp)
/* 04734 80ADD6C4 8FB0004C */  lw      $s0, 0x004C($sp)
/* 04738 80ADD6C8 8FB10050 */  lw      $s1, 0x0050($sp)
/* 0473C 80ADD6CC 8FB20054 */  lw      $s2, 0x0054($sp)
/* 04740 80ADD6D0 8FB30058 */  lw      $s3, 0x0058($sp)
/* 04744 80ADD6D4 8FB4005C */  lw      $s4, 0x005C($sp)
/* 04748 80ADD6D8 8FB50060 */  lw      $s5, 0x0060($sp)
/* 0474C 80ADD6DC 8FB60064 */  lw      $s6, 0x0064($sp)
/* 04750 80ADD6E0 8FB70068 */  lw      $s7, 0x0068($sp)
/* 04754 80ADD6E4 03E00008 */  jr      $ra
/* 04758 80ADD6E8 27BD00F8 */  addiu   $sp, $sp, 0x00F8           ## $sp = 00000000
/* 0475C 80ADD6EC 00000000 */  nop
