.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purposee registers

.section .rodata

glabel D_80926940
    .asciz "[33m"
    .balign 4

glabel D_80926948
    .asciz "Core_Damage_check START\n"
    .balign 4

glabel D_80926964
    .asciz "Core_Damage_check 当り！！\n"
    .balign 4

glabel D_80926980
    .asciz "Core_Damage_check 当り 2 ！！\n"
    .balign 4

glabel D_809269A0
    .asciz "Core_Damage_check 剣 当り！！\n"
    .balign 4

glabel D_809269C0
    .asciz "Core_Damage_check 終わり ！！\n"
    .balign 4

glabel D_809269E0
    .asciz "\x1b[m"
    .balign 4

glabel D_809269E4
    .asciz "CORE mode = <%d>\n"
    .balign 4

glabel D_809269F8
    .asciz "MO : Move mode = <%d>\n"
    .balign 4

glabel D_80926A10
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A20
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A30
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A40
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A50
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A60
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A70
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A80
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926A90
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AA0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AB0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AC0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AD0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AE0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926AF0
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B00
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B10
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B20
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B30
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B40
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B50
    .asciz "../z_boss_mo.c"
    .balign 4

glabel D_80926B60
    .float 30269.0
    .balign 4

glabel D_80926B64
    .float 30307.0
    .balign 4

glabel D_80926B68
    .float 30323.0
    .balign 4

glabel D_80926B6C
    .float 0.0025
    .balign 4

glabel D_80926B70
    .float 0.05
    .balign 4

glabel D_80926B74
    .float 0.1
    .balign 4

glabel D_80926B78
    .float 2500.0
    .balign 4

glabel D_80926B7C
    .float 3000.0
    .balign 4

glabel D_80926B80
    .float 1500.0
    .balign 4

glabel D_80926B84
    .float 2500.0
    .balign 4

glabel D_80926B88
    .float 3000.0
    .balign 4

glabel D_80926B8C
    .float 1500.0
    .balign 4

glabel D_80926B90
    .float 2500.0
    .balign 4

glabel D_80926B94
    .float 3000.0
    .balign 4

glabel D_80926B98
    .float 1500.0
    .balign 4

glabel D_80926B9C
    .float 2500.0
    .balign 4

glabel D_80926BA0
    .float 1300.0
    .balign 4

glabel D_80926BA4
    .float 7000.0
    .balign 4

glabel D_80926BA8
    .float 5000.0
    .balign 4

glabel D_80926BAC
    .float 2500.0
    .balign 4

glabel D_80926BB0
    .float 5000.0
    .balign 4

glabel D_80926BB4
    .float 1500.0
    .balign 4

glabel D_80926BB8
    .float 2500.0
    .balign 4

glabel D_80926BBC
    .float 1300.0
    .balign 4

glabel D_80926BC0
    .float 7000.0
    .balign 4

glabel D_80926BC4
    .float 5000.0
    .balign 4

glabel D_80926BC8
 .word 0x450FC000
glabel jtbl_80926BCC
.word L8091E614
.word L8091E83C
.word L8091EA54
.word L8091E624
.word L8091F118
.word L8091ED18
.word L8091F118
glabel jtbl_80926BE8
.word L8091CD0C
.word L8091CD0C
.word L8091D0B0
.word L8091D430
.word L8091D430
.word L8091D918
.word L8091F118
.word L8091F118
.word L8091F118
.word L8091F118
.word L8091CAD8
.word L8091CB1C
glabel D_80926C18
    .float 0.01
    .balign 4

glabel D_80926C1C
    .float 0.025
    .balign 4

glabel D_80926C20
    .float 0.7
    .balign 4

glabel D_80926C24
    .float 0.01
    .balign 4

glabel D_80926C28
    .float 0.001
    .balign 4

glabel D_80926C2C
    .float 0.001
    .balign 4

glabel D_80926C30
    .float 0.001
    .balign 4

glabel D_80926C34
    .float 0.001
    .balign 4

glabel D_80926C38
    .float 0.025
    .balign 4

glabel D_80926C3C
    .float 0.01
    .balign 4

glabel D_80926C40
    .float 0.3
    .balign 4

glabel D_80926C44
    .float 0.03
    .balign 4

glabel D_80926C48
    .float 0.01
    .balign 4

glabel D_80926C4C
    .float 0.2
    .balign 4

glabel D_80926C50
    .float 0.1
    .balign 4

glabel D_80926C54
    .float 0.005
    .balign 4

glabel D_80926C58
    .float 7000.0
    .balign 4

glabel D_80926C5C
    .float 5000.0
    .balign 4

glabel D_80926C60
    .float 0.025
    .balign 4

glabel D_80926C64
    .float 0.01
    .balign 4

glabel D_80926C68
    .float 3.14159274101
    .balign 4

glabel D_80926C6C
 .word 0x41A73333
glabel D_80926C70
    .float 0.001
    .balign 4

glabel D_80926C74
    .float 0.025
    .balign 4

glabel D_80926C78
    .float 0.05
    .balign 4

glabel D_80926C7C
 .word 0x44228000
glabel D_80926C80
    .float 0.025
    .balign 4

glabel D_80926C84
    .float 0.05
    .balign 4

glabel D_80926C88
 .word 0x44228000
glabel D_80926C8C
    .float 0.025
    .balign 4

glabel D_80926C90
    .float 0.1
    .balign 4

glabel D_80926C94
    .float 0.05
    .balign 4

glabel D_80926C98
    .float 0.001
    .balign 4

glabel D_80926C9C
    .float 0.05
    .balign 4

glabel D_80926CA0
    .float 0.05
    .balign 4

glabel D_80926CA4
    .float 0.3
    .balign 4

glabel D_80926CA8
 .word 0x44228000
glabel D_80926CAC
    .float 0.2
    .balign 4

glabel D_80926CB0
 .word 0x3A03126F
glabel D_80926CB4
    .float 0.002
    .balign 4

glabel D_80926CB8
 .word 0x3E6B851F
glabel D_80926CBC
    .float 0.03
    .balign 4

glabel D_80926CC0
    .float 0.0015
    .balign 4

glabel D_80926CC4
 .word 0x3E051EB8
glabel D_80926CC8
    .float 0.8
    .balign 4

glabel D_80926CCC
    .float 0.001
    .balign 4

glabel D_80926CD0
    .float 0.1
    .balign 4

glabel D_80926CD4
    .float 0.1
    .balign 4

glabel D_80926CD8
    .float 0.02
    .balign 4

glabel D_80926CDC
    .float 0.05
    .balign 4

glabel D_80926CE0
    .float 0.2
    .balign 4

glabel D_80926CE4
 .word 0x3E051EB8
glabel D_80926CE8
    .float 0.08
    .balign 4

glabel jtbl_80926CEC
.word L8091F61C
.word L8091F7D0
.word L8091F8F8
.word L8091FF00
.word L80920280
glabel D_80926D00
    .float 0.05
    .balign 4

glabel D_80926D04
 .word 0x3E051EB8
glabel D_80926D08
 .word 0x4622F983
glabel D_80926D0C
 .word 0x4622F983
glabel D_80926D10
    .float 0.05
    .balign 4

glabel D_80926D14
 .word 0x3E051EB8
glabel D_80926D18
    .float 0.1
    .balign 4

glabel D_80926D1C
    .float 0.4
    .balign 4

glabel D_80926D20
    .float 0.3
    .balign 4

glabel D_80926D24
    .float 2500.0
    .balign 4

glabel D_80926D28
    .float 2500.0
    .balign 4

glabel D_80926D2C
    .float 0.1
    .balign 4

glabel D_80926D30
    .float 0.01
    .balign 4

glabel D_80926D34
    .float 0.001
    .balign 4

glabel D_80926D38
    .float 0.1
    .balign 4

glabel D_80926D3C
    .float 0.1
    .balign 4

glabel D_80926D40
    .float 0.03
    .balign 4

glabel D_80926D44
    .float 0.03
    .balign 4

glabel D_80926D48
    .float 0.01
    .balign 4

glabel D_80926D4C
    .float 0.03
    .balign 4

glabel jtbl_80926D50
.word L80920734
.word L80920CB0
.word L80920D48
.word L80920D8C
.word L80920DFC
.word L8092107C
glabel D_80926D68
    .float 0.005
    .balign 4

glabel D_80926D6C
 .word 0x3C75C28F
glabel D_80926D70
 .word 0x3C75C28F
glabel D_80926D74
    .float 0.005
    .balign 4

glabel D_80926D78
    .float 0.002
    .balign 4

glabel D_80926D7C
    .float 0.08
    .balign 4

glabel D_80926D80
 .word 0x3E051EB8
glabel D_80926D84
    .float 0.05
    .balign 4

glabel D_80926D88
    .float 0.02
    .balign 4

glabel D_80926D8C
    .float 0.2
    .balign 4

glabel D_80926D90
    .float 3000.0
    .balign 4

glabel D_80926D94
    .float 2500.0
    .balign 4

glabel D_80926D98
    .float 0.05
    .balign 4

glabel D_80926D9C
 .word 0x406CCCCE
glabel D_80926DA0
    .float 0.02
    .balign 4

glabel D_80926DA4
    .float 0.08
    .balign 4

glabel D_80926DA8
 .word 0x3E051EB8
glabel D_80926DAC
    .float 0.005
    .balign 4

glabel D_80926DB0
 .word 0x3C75C28F
glabel D_80926DB4
 .word 0x3C75C28F
glabel D_80926DB8
    .float 0.005
    .balign 4

glabel D_80926DBC
    .float 0.008
    .balign 4

glabel jtbl_80926DC0
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921B08
.word L80921928
.word L809219DC
.word L80921A60
.word L80921B08
.word L80921B08
.word L80921AA0
glabel D_80926E04
    .float 0.02
    .balign 4

glabel D_80926E08
    .float 0.05
    .balign 4

glabel D_80926E0C
    .float -0.01
    .balign 4

glabel D_80926E10
    .float 0.08
    .balign 4

glabel D_80926E14
 .word 0x3E051EB8
glabel D_80926E18
    .float 0.4
    .balign 4

glabel D_80926E1C
    .float 3.14159274101
    .balign 4

glabel D_80926E20
 .word 0x45418000
glabel D_80926E24
 .word 0x452EC000
glabel D_80926E28
 .word 0x4622F983
glabel D_80926E2C
 .word 0x4622F983
glabel D_80926E30
    .float 0.2
    .balign 4

glabel D_80926E34
 .word 0x4048F5C3
glabel D_80926E38
    .float 0.6
    .balign 4

glabel D_80926E3C
    .float 1.6
    .balign 4

glabel D_80926E40
    .float 0.3
    .balign 4

glabel D_80926E44
    .float 0.075
    .balign 4

glabel D_80926E48
    .float 0.15
    .balign 4

glabel D_80926E4C
    .float 0.1
    .balign 4

glabel D_80926E50
    .float 0.05
    .balign 4

glabel D_80926E54
    .float 0.1
    .balign 4

glabel D_80926E58
 .word 0x463B8000
glabel D_80926E5C
 .word 0x469C4000
glabel D_80926E60
 .word 0x3F2AA64C
glabel D_80926E64
    .float 6.28318548203
    .balign 4

glabel D_80926E68
    .float 0.05
    .balign 4

glabel D_80926E6C
    .float 0.2
    .balign 4

glabel D_80926E70
    .float 3.14159274101
    .balign 4

glabel D_80926E74
    .float 3.14159274101
    .balign 4

glabel D_80926E78
    .float 3.14159274101
    .balign 4

glabel D_80926E7C
    .float 3.14159274101
    .balign 4

glabel D_80926E80
    .float 1.57079637051
    .balign 4

glabel D_80926E84
    .float 0.1
    .balign 4

glabel D_80926E88
 .word 0x3E3851EC
glabel D_80926E8C
    .float 0.08
    .balign 4

glabel D_80926E90
    .float 0.08
    .balign 4

glabel D_80926E94
 .word 0xBFDBE958
glabel D_80926E98
    .float 0.8
    .balign 4

glabel D_80926E9C
 .word 0x3E6B851F
glabel D_80926EA0
    .float 0.01
    .balign 4

glabel D_80926EA4
    .float 0.1
    .balign 4

glabel D_80926EA8
 .word 0x3F533333
glabel D_80926EAC
 .word 0x3F966666
glabel D_80926EB0
    .float 0.1
    .balign 4

glabel D_80926EB4
    .float 1.57079637051
    .balign 4

glabel D_80926EB8
    .float 0.05
    .balign 4

glabel D_80926EBC
    .float 0.15
    .balign 4


