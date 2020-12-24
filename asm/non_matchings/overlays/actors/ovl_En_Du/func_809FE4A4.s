glabel func_809FE4A4
/* 00874 809FE4A4 27BDFFD8 */  addiu   $sp, $sp, 0xFFD8           ## $sp = FFFFFFD8
/* 00878 809FE4A8 3C020001 */  lui     $v0, 0x0001                ## $v0 = 00010000
/* 0087C 809FE4AC AFBF0024 */  sw      $ra, 0x0024($sp)           
/* 00880 809FE4B0 AFB10020 */  sw      $s1, 0x0020($sp)           
/* 00884 809FE4B4 AFB0001C */  sw      $s0, 0x001C($sp)           
/* 00888 809FE4B8 00451021 */  addu    $v0, $v0, $a1              
/* 0088C 809FE4BC 944204C6 */  lhu     $v0, 0x04C6($v0)           ## 000104C6
/* 00890 809FE4C0 24010004 */  addiu   $at, $zero, 0x0004         ## $at = 00000004
/* 00894 809FE4C4 00A08025 */  or      $s0, $a1, $zero            ## $s0 = 00000000
/* 00898 809FE4C8 00808825 */  or      $s1, $a0, $zero            ## $s1 = 00000000
/* 0089C 809FE4CC 14410009 */  bne     $v0, $at, .L809FE4F4       
/* 008A0 809FE4D0 8CA31C44 */  lw      $v1, 0x1C44($a1)           ## 00001C44
/* 008A4 809FE4D4 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 008A8 809FE4D8 00250821 */  addu    $at, $at, $a1              
/* 008AC 809FE4DC 3C0580A0 */  lui     $a1, %hi(func_809FE3C0)    ## $a1 = 80A00000
/* 008B0 809FE4E0 A42004C6 */  sh      $zero, 0x04C6($at)         ## 000104C6
/* 008B4 809FE4E4 0C27F70C */  jal     func_809FDC30              
/* 008B8 809FE4E8 24A5E3C0 */  addiu   $a1, $a1, %lo(func_809FE3C0) ## $a1 = 809FE3C0
/* 008BC 809FE4EC 1000004E */  beq     $zero, $zero, .L809FE628   
/* 008C0 809FE4F0 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FE4F4:
/* 008C4 809FE4F4 28410006 */  slti    $at, $v0, 0x0006           
/* 008C8 809FE4F8 1420001D */  bne     $at, $zero, .L809FE570     
/* 008CC 809FE4FC 3C198016 */  lui     $t9, %hi(gSegments)
/* 008D0 809FE500 3C020200 */  lui     $v0, %hi(D_02007DE0)                ## $v0 = 02000000
/* 008D4 809FE504 24427DE0 */  addiu   $v0, $v0, %lo(D_02007DE0)           ## $v0 = 02007DE0
/* 008D8 809FE508 00027100 */  sll     $t6, $v0,  4               
/* 008DC 809FE50C 000E7F02 */  srl     $t7, $t6, 28               
/* 008E0 809FE510 000FC080 */  sll     $t8, $t7,  2               
/* 008E4 809FE514 0338C821 */  addu    $t9, $t9, $t8              
/* 008E8 809FE518 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 008EC 809FE51C 8F396FA8 */  lw      $t9, %lo(gSegments)($t9)
/* 008F0 809FE520 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 008F4 809FE524 00414024 */  and     $t0, $v0, $at              
/* 008F8 809FE528 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 008FC 809FE52C 03284821 */  addu    $t1, $t9, $t0              
/* 00900 809FE530 01215021 */  addu    $t2, $t1, $at              
/* 00904 809FE534 AE0A1D68 */  sw      $t2, 0x1D68($s0)           ## 00001D68
/* 00908 809FE538 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 0090C 809FE53C 240B0001 */  addiu   $t3, $zero, 0x0001         ## $t3 = 00000001
/* 00910 809FE540 A02BFA74 */  sb      $t3, %lo(gSaveContext+0x1414)($at)
/* 00914 809FE544 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 00918 809FE548 3C0580A0 */  lui     $a1, %hi(func_809FE890)    ## $a1 = 80A00000
/* 0091C 809FE54C A62C01E8 */  sh      $t4, 0x01E8($s1)           ## 000001E8
/* 00920 809FE550 24A5E890 */  addiu   $a1, $a1, %lo(func_809FE890) ## $a1 = 809FE890
/* 00924 809FE554 0C27F70C */  jal     func_809FDC30              
/* 00928 809FE558 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 0092C 809FE55C 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 00930 809FE560 00300821 */  addu    $at, $at, $s0              
/* 00934 809FE564 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 00938 809FE568 1000002E */  beq     $zero, $zero, .L809FE624   
/* 0093C 809FE56C A42D04C6 */  sh      $t5, 0x04C6($at)           ## 000104C6
.L809FE570:
/* 00940 809FE570 24010003 */  addiu   $at, $zero, 0x0003         ## $at = 00000003
/* 00944 809FE574 14410027 */  bne     $v0, $at, .L809FE614       
/* 00948 809FE578 3C078013 */  lui     $a3, %hi(D_801333E0)
/* 0094C 809FE57C 3C0E8013 */  lui     $t6, %hi(D_801333E8)
/* 00950 809FE580 24E733E0 */  addiu   $a3, %lo(D_801333E0)
/* 00954 809FE584 25CE33E8 */  addiu   $t6, %lo(D_801333E8)
/* 00958 809FE588 3C058013 */  lui     $a1, %hi(D_801333D4)
/* 0095C 809FE58C 24A533D4 */  addiu   $a1, %lo(D_801333D4)
/* 00960 809FE590 AFAE0014 */  sw      $t6, 0x0014($sp)           
/* 00964 809FE594 AFA70010 */  sw      $a3, 0x0010($sp)           
/* 00968 809FE598 24044802 */  addiu   $a0, $zero, 0x4802         ## $a0 = 00004802
/* 0096C 809FE59C 0C03DCE3 */  jal     Audio_PlaySoundGeneral
              
/* 00970 809FE5A0 24060004 */  addiu   $a2, $zero, 0x0004         ## $a2 = 00000004
/* 00974 809FE5A4 3C020200 */  lui     $v0, %hi(D_020059E0)                ## $v0 = 02000000
/* 00978 809FE5A8 244259E0 */  addiu   $v0, $v0, %lo(D_020059E0)           ## $v0 = 020059E0
/* 0097C 809FE5AC 00027900 */  sll     $t7, $v0,  4               
/* 00980 809FE5B0 000FC702 */  srl     $t8, $t7, 28               
/* 00984 809FE5B4 0018C880 */  sll     $t9, $t8,  2               
/* 00988 809FE5B8 3C088016 */  lui     $t0, %hi(gSegments)
/* 0098C 809FE5BC 01194021 */  addu    $t0, $t0, $t9              
/* 00990 809FE5C0 3C0100FF */  lui     $at, 0x00FF                ## $at = 00FF0000
/* 00994 809FE5C4 8D086FA8 */  lw      $t0, %lo(gSegments)($t0)
/* 00998 809FE5C8 3421FFFF */  ori     $at, $at, 0xFFFF           ## $at = 00FFFFFF
/* 0099C 809FE5CC 00414824 */  and     $t1, $v0, $at              
/* 009A0 809FE5D0 3C018000 */  lui     $at, 0x8000                ## $at = 80000000
/* 009A4 809FE5D4 01095021 */  addu    $t2, $t0, $t1              
/* 009A8 809FE5D8 01415821 */  addu    $t3, $t2, $at              
/* 009AC 809FE5DC AE0B1D68 */  sw      $t3, 0x1D68($s0)           ## 00001D68
/* 009B0 809FE5E0 3C018016 */  lui     $at, %hi(gSaveContext+0x1414)
/* 009B4 809FE5E4 240C0001 */  addiu   $t4, $zero, 0x0001         ## $t4 = 00000001
/* 009B8 809FE5E8 A02CFA74 */  sb      $t4, %lo(gSaveContext+0x1414)($at)
/* 009BC 809FE5EC 3C0580A0 */  lui     $a1, %hi(func_809FE890)    ## $a1 = 80A00000
/* 009C0 809FE5F0 A62001E8 */  sh      $zero, 0x01E8($s1)         ## 000001E8
/* 009C4 809FE5F4 24A5E890 */  addiu   $a1, $a1, %lo(func_809FE890) ## $a1 = 809FE890
/* 009C8 809FE5F8 0C27F70C */  jal     func_809FDC30              
/* 009CC 809FE5FC 02202025 */  or      $a0, $s1, $zero            ## $a0 = 00000000
/* 009D0 809FE600 3C010001 */  lui     $at, 0x0001                ## $at = 00010000
/* 009D4 809FE604 00300821 */  addu    $at, $at, $s0              
/* 009D8 809FE608 240D0004 */  addiu   $t5, $zero, 0x0004         ## $t5 = 00000004
/* 009DC 809FE60C 10000005 */  beq     $zero, $zero, .L809FE624   
/* 009E0 809FE610 A42D04C6 */  sh      $t5, 0x04C6($at)           ## 000104C6
.L809FE614:
/* 009E4 809FE614 8C6E0680 */  lw      $t6, 0x0680($v1)           ## 00000680
/* 009E8 809FE618 3C010080 */  lui     $at, 0x0080                ## $at = 00800000
/* 009EC 809FE61C 01C17825 */  or      $t7, $t6, $at              ## $t7 = 00800000
/* 009F0 809FE620 AC6F0680 */  sw      $t7, 0x0680($v1)           ## 00000680
.L809FE624:
/* 009F4 809FE624 8FBF0024 */  lw      $ra, 0x0024($sp)           
.L809FE628:
/* 009F8 809FE628 8FB0001C */  lw      $s0, 0x001C($sp)           
/* 009FC 809FE62C 8FB10020 */  lw      $s1, 0x0020($sp)           
/* 00A00 809FE630 03E00008 */  jr      $ra                        
/* 00A04 809FE634 27BD0028 */  addiu   $sp, $sp, 0x0028           ## $sp = 00000000
