glabel func_809D38BC
/* 0030C 809D38BC 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 00310 809D38C0 00441021 */  addu    $v0, $v0, $a0              
/* 00314 809D38C4 44866000 */  mtc1    $a2, $f12                  ## $f12 = 0.00
/* 00318 809D38C8 44877000 */  mtc1    $a3, $f14                  ## $f14 = 0.00
/* 0031C 809D38CC 8C421E10 */  lw      $v0, 0x1E10($v0)           ## 00011E10
/* 00320 809D38D0 00001825 */  or      $v1, $zero, $zero          ## $v1 = 00000000
.L809D38D4:
/* 00324 809D38D4 904E0000 */  lbu     $t6, 0x0000($v0)           ## 00010000
/* 00328 809D38D8 15C00026 */  bne     $t6, $zero, .L809D3974     
/* 0032C 809D38DC 240F0004 */  addiu   $t7, $zero, 0x0004         ## $t7 = 00000004
/* 00330 809D38E0 A04F0000 */  sb      $t7, 0x0000($v0)           ## 00010000
/* 00334 809D38E4 8CB90000 */  lw      $t9, 0x0000($a1)           ## 00000000
/* 00338 809D38E8 3C03809D */  lui     $v1, %hi(D_809D5C34)       ## $v1 = 809D0000
/* 0033C 809D38EC 24635C34 */  addiu   $v1, $v1, %lo(D_809D5C34)  ## $v1 = 809D5C34
/* 00340 809D38F0 AC590004 */  sw      $t9, 0x0004($v0)           ## 00010004
/* 00344 809D38F4 8CB80004 */  lw      $t8, 0x0004($a1)           ## 00000004
/* 00348 809D38F8 460C6180 */  add.s   $f6, $f12, $f12            
/* 0034C 809D38FC 44802000 */  mtc1    $zero, $f4                 ## $f4 = 0.00
/* 00350 809D3900 AC580008 */  sw      $t8, 0x0008($v0)           ## 00010008
/* 00354 809D3904 8CB90008 */  lw      $t9, 0x0008($a1)           ## 00000008
/* 00358 809D3908 3C014334 */  lui     $at, 0x4334                ## $at = 43340000
/* 0035C 809D390C 44814000 */  mtc1    $at, $f8                   ## $f8 = 180.00
/* 00360 809D3910 AC59000C */  sw      $t9, 0x000C($v0)           ## 0001000C
/* 00364 809D3914 8C690000 */  lw      $t1, 0x0000($v1)           ## 809D5C34
/* 00368 809D3918 AC490010 */  sw      $t1, 0x0010($v0)           ## 00010010
/* 0036C 809D391C 8C680004 */  lw      $t0, 0x0004($v1)           ## 809D5C38
/* 00370 809D3920 AC480014 */  sw      $t0, 0x0014($v0)           ## 00010014
/* 00374 809D3924 8C690008 */  lw      $t1, 0x0008($v1)           ## 809D5C3C
/* 00378 809D3928 AC490018 */  sw      $t1, 0x0018($v0)           ## 00010018
/* 0037C 809D392C 8C6B0000 */  lw      $t3, 0x0000($v1)           ## 809D5C34
/* 00380 809D3930 AC4B001C */  sw      $t3, 0x001C($v0)           ## 0001001C
/* 00384 809D3934 8C6A0004 */  lw      $t2, 0x0004($v1)           ## 809D5C38
/* 00388 809D3938 AC4A0020 */  sw      $t2, 0x0020($v0)           ## 00010020
/* 0038C 809D393C 8C6B0008 */  lw      $t3, 0x0008($v1)           ## 809D5C3C
/* 00390 809D3940 E4460050 */  swc1    $f6, 0x0050($v0)           ## 00010050
/* 00394 809D3944 E44E005C */  swc1    $f14, 0x005C($v0)          ## 0001005C
/* 00398 809D3948 E444004C */  swc1    $f4, 0x004C($v0)           ## 0001004C
/* 0039C 809D394C AC4B0024 */  sw      $t3, 0x0024($v0)           ## 00010024
/* 003A0 809D3950 8FAC0010 */  lw      $t4, 0x0010($sp)           
/* 003A4 809D3954 8D8E0000 */  lw      $t6, 0x0000($t4)           ## 00000000
/* 003A8 809D3958 AC4E0060 */  sw      $t6, 0x0060($v0)           ## 00010060
/* 003AC 809D395C 8D8D0004 */  lw      $t5, 0x0004($t4)           ## 00000004
/* 003B0 809D3960 AC4D0064 */  sw      $t5, 0x0064($v0)           ## 00010064
/* 003B4 809D3964 8D8E0008 */  lw      $t6, 0x0008($t4)           ## 00000008
/* 003B8 809D3968 E4480034 */  swc1    $f8, 0x0034($v0)           ## 00010034
/* 003BC 809D396C 03E00008 */  jr      $ra                        
/* 003C0 809D3970 AC4E0068 */  sw      $t6, 0x0068($v0)           ## 00010068
.L809D3974:
/* 003C4 809D3974 24630001 */  addiu   $v1, $v1, 0x0001           ## $v1 = 809D5C35
/* 003C8 809D3978 00031C00 */  sll     $v1, $v1, 16               
/* 003CC 809D397C 00031C03 */  sra     $v1, $v1, 16               
/* 003D0 809D3980 28610064 */  slti    $at, $v1, 0x0064           
/* 003D4 809D3984 1420FFD3 */  bne     $at, $zero, .L809D38D4     
/* 003D8 809D3988 2442006C */  addiu   $v0, $v0, 0x006C           ## $v0 = 0001006C
/* 003DC 809D398C 03E00008 */  jr      $ra                        
/* 003E0 809D3990 00000000 */  nop
