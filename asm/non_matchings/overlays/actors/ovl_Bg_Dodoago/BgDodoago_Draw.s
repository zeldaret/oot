.rdata
glabel D_80872650
    .asciz "../z_bg_dodoago.c"
    .balign 4

glabel D_80872664
    .asciz "../z_bg_dodoago.c"
    .balign 4

glabel D_80872678
    .asciz "../z_bg_dodoago.c"
    .balign 4

.text
glabel BgDodoago_Draw
/* 00A40 80872440 27BDFFC0 */  addiu   $sp, $sp, 0xFFC0           ## $sp = FFFFFFC0
/* 00A44 80872444 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 00A48 80872448 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 00A4C 8087244C AFA40040 */  sw      $a0, 0x0040($sp)           
/* 00A50 80872450 AFA50044 */  sw      $a1, 0x0044($sp)           
/* 00A54 80872454 8CA50000 */  lw      $a1, 0x0000($a1)           ## 00000000
/* 00A58 80872458 3C068087 */  lui     $a2, %hi(D_80872650)       ## $a2 = 80870000
/* 00A5C 8087245C 24C62650 */  addiu   $a2, $a2, %lo(D_80872650)  ## $a2 = 80872650
/* 00A60 80872460 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 00A64 80872464 240702A0 */  addiu   $a3, $zero, 0x02A0         ## $a3 = 000002A0
/* 00A68 80872468 0C031AB1 */  jal     Graph_OpenDisps              
/* 00A6C 8087246C 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00A70 80872470 0C00D6D3 */  jal     Flags_GetEventChkInf
              
/* 00A74 80872474 240400B0 */  addiu   $a0, $zero, 0x00B0         ## $a0 = 000000B0
/* 00A78 80872478 1040001A */  beq     $v0, $zero, .L808724E4     
/* 00A7C 8087247C 8FAF0044 */  lw      $t7, 0x0044($sp)           
/* 00A80 80872480 0C024F46 */  jal     func_80093D18              
/* 00A84 80872484 8DE40000 */  lw      $a0, 0x0000($t7)           ## 00000000
/* 00A88 80872488 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00A8C 8087248C 3C19DA38 */  lui     $t9, 0xDA38                ## $t9 = DA380000
/* 00A90 80872490 37390003 */  ori     $t9, $t9, 0x0003           ## $t9 = DA380003
/* 00A94 80872494 24580008 */  addiu   $t8, $v0, 0x0008           ## $t8 = 00000008
/* 00A98 80872498 AE1802C0 */  sw      $t8, 0x02C0($s0)           ## 000002C0
/* 00A9C 8087249C AC590000 */  sw      $t9, 0x0000($v0)           ## 00000000
/* 00AA0 808724A0 8FA80044 */  lw      $t0, 0x0044($sp)           
/* 00AA4 808724A4 3C058087 */  lui     $a1, %hi(D_80872664)       ## $a1 = 80870000
/* 00AA8 808724A8 24A52664 */  addiu   $a1, $a1, %lo(D_80872664)  ## $a1 = 80872664
/* 00AAC 808724AC 8D040000 */  lw      $a0, 0x0000($t0)           ## 00000000
/* 00AB0 808724B0 240602A5 */  addiu   $a2, $zero, 0x02A5         ## $a2 = 000002A5
/* 00AB4 808724B4 0C0346A2 */  jal     Matrix_NewMtx              
/* 00AB8 808724B8 AFA20028 */  sw      $v0, 0x0028($sp)           
/* 00ABC 808724BC 8FA30028 */  lw      $v1, 0x0028($sp)           
/* 00AC0 808724C0 3C0B0600 */  lui     $t3, 0x0600                ## $t3 = 06000000
/* 00AC4 808724C4 256B1350 */  addiu   $t3, $t3, 0x1350           ## $t3 = 06001350
/* 00AC8 808724C8 AC620004 */  sw      $v0, 0x0004($v1)           ## 00000004
/* 00ACC 808724CC 8E0202C0 */  lw      $v0, 0x02C0($s0)           ## 000002C0
/* 00AD0 808724D0 3C0ADE00 */  lui     $t2, 0xDE00                ## $t2 = DE000000
/* 00AD4 808724D4 24490008 */  addiu   $t1, $v0, 0x0008           ## $t1 = 00000008
/* 00AD8 808724D8 AE0902C0 */  sw      $t1, 0x02C0($s0)           ## 000002C0
/* 00ADC 808724DC AC4B0004 */  sw      $t3, 0x0004($v0)           ## 00000004
/* 00AE0 808724E0 AC4A0000 */  sw      $t2, 0x0000($v0)           ## 00000000
.L808724E4:
/* 00AE4 808724E4 8FAC0044 */  lw      $t4, 0x0044($sp)           
/* 00AE8 808724E8 3C068087 */  lui     $a2, %hi(D_80872678)       ## $a2 = 80870000
/* 00AEC 808724EC 24C62678 */  addiu   $a2, $a2, %lo(D_80872678)  ## $a2 = 80872678
/* 00AF0 808724F0 27A4002C */  addiu   $a0, $sp, 0x002C           ## $a0 = FFFFFFEC
/* 00AF4 808724F4 240702A9 */  addiu   $a3, $zero, 0x02A9         ## $a3 = 000002A9
/* 00AF8 808724F8 0C031AD5 */  jal     Graph_CloseDisps              
/* 00AFC 808724FC 8D850000 */  lw      $a1, 0x0000($t4)           ## 00000000
/* 00B00 80872500 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 00B04 80872504 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 00B08 80872508 27BD0040 */  addiu   $sp, $sp, 0x0040           ## $sp = 00000000
/* 00B0C 8087250C 03E00008 */  jr      $ra                        
/* 00B10 80872510 00000000 */  nop
/* 00B14 80872514 00000000 */  nop
/* 00B18 80872518 00000000 */  nop
/* 00B1C 8087251C 00000000 */  nop
