glabel func_809C38A8
/* 00278 809C38A8 27BDFFE8 */  addiu   $sp, $sp, 0xFFE8           ## $sp = FFFFFFE8
/* 0027C 809C38AC AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00280 809C38B0 00803825 */  or      $a3, $a0, $zero            ## $a3 = 00000000
/* 00284 809C38B4 AFA5001C */  sw      $a1, 0x001C($sp)           
/* 00288 809C38B8 AFA70018 */  sw      $a3, 0x0018($sp)           
/* 0028C 809C38BC 0C02927F */  jal     SkelAnime_Update
              
/* 00290 809C38C0 2484014C */  addiu   $a0, $a0, 0x014C           ## $a0 = 0000014C
/* 00294 809C38C4 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00298 809C38C8 0C00BC65 */  jal     func_8002F194              
/* 0029C 809C38CC 8FA5001C */  lw      $a1, 0x001C($sp)           
/* 002A0 809C38D0 10400005 */  beq     $v0, $zero, .L809C38E8     
/* 002A4 809C38D4 8FA70018 */  lw      $a3, 0x0018($sp)           
/* 002A8 809C38D8 3C0E809C */  lui     $t6, %hi(func_809C395C)    ## $t6 = 809C0000
/* 002AC 809C38DC 25CE395C */  addiu   $t6, $t6, %lo(func_809C395C) ## $t6 = 809C395C
/* 002B0 809C38E0 1000001A */  beq     $zero, $zero, .L809C394C   
/* 002B4 809C38E4 ACEE0214 */  sw      $t6, 0x0214($a3)           ## 00000214
.L809C38E8:
/* 002B8 809C38E8 84EF008A */  lh      $t7, 0x008A($a3)           ## 0000008A
/* 002BC 809C38EC 84F800B6 */  lh      $t8, 0x00B6($a3)           ## 000000B6
/* 002C0 809C38F0 3C0142F0 */  lui     $at, 0x42F0                ## $at = 42F00000
/* 002C4 809C38F4 44810000 */  mtc1    $at, $f0                   ## $f0 = 120.00
/* 002C8 809C38F8 01F81023 */  subu    $v0, $t7, $t8              
/* 002CC 809C38FC 00021400 */  sll     $v0, $v0, 16               
/* 002D0 809C3900 00021403 */  sra     $v0, $v0, 16               
/* 002D4 809C3904 04400004 */  bltz    $v0, .L809C3918            
/* 002D8 809C3908 00021823 */  subu    $v1, $zero, $v0            
/* 002DC 809C390C 00021C00 */  sll     $v1, $v0, 16               
/* 002E0 809C3910 10000003 */  beq     $zero, $zero, .L809C3920   
/* 002E4 809C3914 00031C03 */  sra     $v1, $v1, 16               
.L809C3918:
/* 002E8 809C3918 00031C00 */  sll     $v1, $v1, 16               
/* 002EC 809C391C 00031C03 */  sra     $v1, $v1, 16               
.L809C3920:
/* 002F0 809C3920 C4E40090 */  lwc1    $f4, 0x0090($a3)           ## 00000090
/* 002F4 809C3924 28614300 */  slti    $at, $v1, 0x4300           
/* 002F8 809C3928 4604003C */  c.lt.s  $f0, $f4                   
/* 002FC 809C392C 00000000 */  nop
/* 00300 809C3930 45030007 */  bc1tl   .L809C3950                 
/* 00304 809C3934 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00308 809C3938 10200004 */  beq     $at, $zero, .L809C394C     
/* 0030C 809C393C 00E02025 */  or      $a0, $a3, $zero            ## $a0 = 00000000
/* 00310 809C3940 44060000 */  mfc1    $a2, $f0                   
/* 00314 809C3944 0C00BCB3 */  jal     func_8002F2CC              
/* 00318 809C3948 8FA5001C */  lw      $a1, 0x001C($sp)           
.L809C394C:
/* 0031C 809C394C 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L809C3950:
/* 00320 809C3950 27BD0018 */  addiu   $sp, $sp, 0x0018           ## $sp = 00000000
/* 00324 809C3954 03E00008 */  jr      $ra                        
/* 00328 809C3958 00000000 */  nop
