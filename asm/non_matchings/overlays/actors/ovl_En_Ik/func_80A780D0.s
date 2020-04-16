.rdata
glabel D_80A789B0
    .asciz "En_Ik_inConfrontion_Init : %d !!!!!!!!!!!!!!!!\n"
    .balign 4

.text
glabel func_80A780D0
/* 03DC0 80A780D0 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 03DC4 80A780D4 AFBF001C */  sw      $ra, 0x001C($sp)           
/* 03DC8 80A780D8 AFB00018 */  sw      $s0, 0x0018($sp)           
/* 03DCC 80A780DC 8486001C */  lh      $a2, 0x001C($a0)           ## 0000001C
/* 03DD0 80A780E0 00808025 */  or      $s0, $a0, $zero            ## $s0 = 00000000
/* 03DD4 80A780E4 3C0E8016 */  lui     $t6, 0x8016                ## $t6 = 80160000
/* 03DD8 80A780E8 14C00014 */  bne     $a2, $zero, .L80A7813C     
/* 03DDC 80A780EC 00000000 */  nop
/* 03DE0 80A780F0 95CEF53A */  lhu     $t6, -0x0AC6($t6)          ## 8015F53A
/* 03DE4 80A780F4 3C1880A7 */  lui     $t8, %hi(EnIk_Update)    ## $t8 = 80A70000
/* 03DE8 80A780F8 27187B9C */  addiu   $t8, $t8, %lo(EnIk_Update) ## $t8 = 80A77B9C
/* 03DEC 80A780FC 31CF0800 */  andi    $t7, $t6, 0x0800           ## $t7 = 00000000
/* 03DF0 80A78100 15E00009 */  bne     $t7, $zero, .L80A78128     
/* 03DF4 80A78104 3C1980A8 */  lui     $t9, %hi(EnIk_Draw)    ## $t9 = 80A80000
/* 03DF8 80A78108 27398074 */  addiu   $t9, $t9, %lo(EnIk_Draw) ## $t9 = 80A78074
/* 03DFC 80A7810C 3C053C23 */  lui     $a1, 0x3C23                ## $a1 = 3C230000
/* 03E00 80A78110 AC980130 */  sw      $t8, 0x0130($a0)           ## 00000130
/* 03E04 80A78114 AC990134 */  sw      $t9, 0x0134($a0)           ## 00000134
/* 03E08 80A78118 0C00B58B */  jal     Actor_SetScale
              
/* 03E0C 80A7811C 34A5D70A */  ori     $a1, $a1, 0xD70A           ## $a1 = 3C23D70A
/* 03E10 80A78120 10000006 */  beq     $zero, $zero, .L80A7813C   
/* 03E14 80A78124 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
.L80A78128:
/* 03E18 80A78128 0C29E058 */  jal     func_80A78160              
/* 03E1C 80A7812C 02002025 */  or      $a0, $s0, $zero            ## $a0 = 00000000
/* 03E20 80A78130 0C29DAFD */  jal     func_80A76BF4              
/* 03E24 80A78134 00000000 */  nop
/* 03E28 80A78138 8606001C */  lh      $a2, 0x001C($s0)           ## 0000001C
.L80A7813C:
/* 03E2C 80A7813C 3C0480A8 */  lui     $a0, %hi(D_80A789B0)       ## $a0 = 80A80000
/* 03E30 80A78140 248489B0 */  addiu   $a0, $a0, %lo(D_80A789B0)  ## $a0 = 80A789B0
/* 03E34 80A78144 0C00084C */  jal     osSyncPrintf
              
/* 03E38 80A78148 00C02825 */  or      $a1, $a2, $zero            ## $a1 = 00000000
/* 03E3C 80A7814C 8FBF001C */  lw      $ra, 0x001C($sp)           
/* 03E40 80A78150 8FB00018 */  lw      $s0, 0x0018($sp)           
/* 03E44 80A78154 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 03E48 80A78158 03E00008 */  jr      $ra                        
/* 03E4C 80A7815C 00000000 */  nop
