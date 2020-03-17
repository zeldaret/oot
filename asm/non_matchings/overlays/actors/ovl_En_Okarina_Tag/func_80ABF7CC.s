glabel func_80ABF7CC
/* 00AAC 80ABF7CC 27BDFFE0 */  addiu   $sp, $sp, 0xFFE0           ## $sp = FFFFFFE0
/* 00AB0 80ABF7D0 AFA40020 */  sw      $a0, 0x0020($sp)           
/* 00AB4 80ABF7D4 AFBF0014 */  sw      $ra, 0x0014($sp)           
/* 00AB8 80ABF7D8 24A420D8 */  addiu   $a0, $a1, 0x20D8           ## $a0 = 000020D8
/* 00ABC 80ABF7DC AFA50024 */  sw      $a1, 0x0024($sp)           
/* 00AC0 80ABF7E0 0C042F6F */  jal     func_8010BDBC              
/* 00AC4 80ABF7E4 AFA40018 */  sw      $a0, 0x0018($sp)           
/* 00AC8 80ABF7E8 3C0480AC */  lui     $a0, %hi(D_80AC04D0)       ## $a0 = 80AC0000
/* 00ACC 80ABF7EC 248404D0 */  addiu   $a0, $a0, %lo(D_80AC04D0)  ## $a0 = 80AC04D0
/* 00AD0 80ABF7F0 0C00084C */  jal     osSyncPrintf
              
/* 00AD4 80ABF7F4 00402825 */  or      $a1, $v0, $zero            ## $a1 = 00000000
/* 00AD8 80ABF7F8 0C042F6F */  jal     func_8010BDBC              
/* 00ADC 80ABF7FC 8FA40018 */  lw      $a0, 0x0018($sp)           
/* 00AE0 80ABF800 24010005 */  addiu   $at, $zero, 0x0005         ## $at = 00000005
/* 00AE4 80ABF804 54410025 */  bnel    $v0, $at, .L80ABF89C       
/* 00AE8 80ABF808 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AEC 80ABF80C 0C041AF2 */  jal     func_80106BC8              
/* 00AF0 80ABF810 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00AF4 80ABF814 50400021 */  beql    $v0, $zero, .L80ABF89C     
/* 00AF8 80ABF818 8FBF0014 */  lw      $ra, 0x0014($sp)           
/* 00AFC 80ABF81C 0C041B33 */  jal     func_80106CCC              
/* 00B00 80ABF820 8FA40024 */  lw      $a0, 0x0024($sp)           
/* 00B04 80ABF824 3C038016 */  lui     $v1, 0x8016                ## $v1 = 80160000
/* 00B08 80ABF828 2463E660 */  addiu   $v1, $v1, 0xE660           ## $v1 = 8015E660
/* 00B0C 80ABF82C 3C0E8012 */  lui     $t6, 0x8012                ## $t6 = 80120000
/* 00B10 80ABF830 8DCE715C */  lw      $t6, 0x715C($t6)           ## 8012715C
/* 00B14 80ABF834 8C6F00A4 */  lw      $t7, 0x00A4($v1)           ## 8015E704
/* 00B18 80ABF838 3C020200 */  lui     $v0, 0x0200                ## $v0 = 02000000
/* 00B1C 80ABF83C 244224A0 */  addiu   $v0, $v0, 0x24A0           ## $v0 = 020024A0
/* 00B20 80ABF840 01CFC024 */  and     $t8, $t6, $t7              
/* 00B24 80ABF844 17000010 */  bne     $t8, $zero, .L80ABF888     
/* 00B28 80ABF848 0002C900 */  sll     $t9, $v0,  4               
/* 00B2C 80ABF84C 00194702 */  srl     $t0, $t9, 28               
/* 00B30 80ABF850 00084880 */  sll     $t1, $t0,  2               
/* 00B34 80ABF854 3C0A8016 */  lui     $t2, 0x8016                ## $t2 = 80160000
/* 00B38 80ABF858 01495021 */  addu    $t2, $t2, $t1              
/* 00B3C 80ABF85C 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00B40 80ABF860 8D4A6FA8 */  lw      $t2, 0x6FA8($t2)           ## 80166FA8
/* 00B44 80ABF864 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 00B48 80ABF868 00415824 */  and     $t3, $v0, $at              
/* 00B4C 80ABF86C 8FAE0024 */  lw      $t6, 0x0024($sp)           
/* 00B50 80ABF870 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 00B54 80ABF874 014B6021 */  addu    $t4, $t2, $t3              
/* 00B58 80ABF878 01816821 */  addu    $t5, $t4, $at              
/* 00B5C 80ABF87C 240F0001 */  addiu   $t7, $zero, 0x0001         ## $t7 = 00000001
/* 00B60 80ABF880 ADCD1D68 */  sw      $t5, 0x1D68($t6)           ## 80121D68
/* 00B64 80ABF884 A06F1414 */  sb      $t7, 0x1414($v1)           ## 8015FA74
.L80ABF888:
/* 00B68 80ABF888 8FB90020 */  lw      $t9, 0x0020($sp)           
/* 00B6C 80ABF88C 3C1880AC */  lui     $t8, %hi(func_80ABF708)    ## $t8 = 80AC0000
/* 00B70 80ABF890 2718F708 */  addiu   $t8, $t8, %lo(func_80ABF708) ## $t8 = 80ABF708
/* 00B74 80ABF894 AF38014C */  sw      $t8, 0x014C($t9)           ## 0000014C
/* 00B78 80ABF898 8FBF0014 */  lw      $ra, 0x0014($sp)           
.L80ABF89C:
/* 00B7C 80ABF89C 27BD0020 */  addiu   $sp, $sp, 0x0020           ## $sp = 00000000
/* 00B80 80ABF8A0 03E00008 */  jr      $ra                        
/* 00B84 80ABF8A4 00000000 */  nop


