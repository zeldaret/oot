glabel func_80AC4220
/* 01580 80AC4220 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 01584 80AC4224 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 01588 80AC4228 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 0158C 80AC422C 00451021 */  addu    $v0, $v0, $a1              
/* 01590 80AC4230 904204BD */  lbu     $v0, 0x04BD($v0)           ## 000104BD
/* 01594 80AC4234 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 01598 80AC4238 00A03025 */  or      $a2, $a1, $zero            ## $a2 = 00000000
/* 0159C 80AC423C 10400006 */  beq     $v0, $zero, .L80AC4258     
/* 015A0 80AC4240 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 015A4 80AC4244 24010001 */  addiu   $at, $zero, 0x0001         ## $at = 00000001
/* 015A8 80AC4248 10410007 */  beq     $v0, $at, .L80AC4268       
/* 015AC 80AC424C 00C02025 */  or      $a0, $a2, $zero            ## $a0 = 00000000
/* 015B0 80AC4250 10000009 */  beq     $zero, $zero, .L80AC4278   
/* 015B4 80AC4254 00001025 */  or      $v0, $zero, $zero          ## $v0 = 00000000
.L80AC4258:
/* 015B8 80AC4258 0C2B0EA0 */  jal     func_80AC3A80              
/* 015BC 80AC425C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 015C0 80AC4260 10000005 */  beq     $zero, $zero, .L80AC4278   
/* 015C4 80AC4264 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC4268:
/* 015C8 80AC4268 0C2B0DEA */  jal     EnOssan_EndInteraction              
/* 015CC 80AC426C 00E02825 */  or      $a1, $a3, $zero            ## $a1 = 00000000
/* 015D0 80AC4270 10000001 */  beq     $zero, $zero, .L80AC4278   
/* 015D4 80AC4274 24020001 */  addiu   $v0, $zero, 0x0001         ## $v0 = 00000001
.L80AC4278:
/* 015D8 80AC4278 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 015DC 80AC427C 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 015E0 80AC4280 03E00008 */  jr      $ra                        
/* 015E4 80AC4284 00000000 */  nop
