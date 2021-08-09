.include "macro.inc"

 # assembler directives
 .set noat      # allow manual use of $at
 .set noreorder # don't insert nops after branches
 .set gp=64     # allow use of 64-bit general purpose registers

.section .data

.balign 16

glabel D_80811BB0
 .word 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDA0048, 0x00000000, 0x07000000, 0xFFFFFFFF, 0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDA0038, 0x00000000, 0x07000200, 0xFFFFFFFF, 0xFFA0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, 0xFFA0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF, 0xFFD0FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, 0xFFD0FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF, 0x0000FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF, 0x0000FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF, 0x0020FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x003CFFD0, 0x00000000, 0x03800000, 0xFFFFFFFF, 0x0020FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x003CFFC0, 0x00000000, 0x03800200, 0xFFFFFFFF, 0x0040FFD0, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x006CFFD0, 0x00000000, 0x05800000, 0xFFFFFFFF, 0x0040FFC0, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x006CFFC0, 0x00000000, 0x05800200, 0xFFFFFFFF
glabel D_80811D30
 .word 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF, 0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF, 0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF, 0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF, 0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC0004, 0x00000000, 0x08000000, 0xFFFFFFFF, 0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDCFFF4, 0x00000000, 0x08000200, 0xFFFFFFFF, 0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFDC, 0x00000000, 0x10000000, 0xFFFFFFFF, 0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFCC, 0x00000000, 0x10000200, 0xFFFFFFFF
glabel D_80811E30
 .word 0xFFA20048, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x00220048, 0x00000000, 0x10000000, 0xFFFFFFFF, 0xFFA20038, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x00220038, 0x00000000, 0x10000200, 0xFFFFFFFF, 0xFF9C002C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFDC002C, 0x00000000, 0x08000000, 0xFFFFFFFF, 0xFF9C001C, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFDC001C, 0x00000000, 0x08000200, 0xFFFFFFFF, 0xFF9C0004, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x002C0004, 0x00000000, 0x12000000, 0xFFFFFFFF, 0xFF9CFFF4, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x002CFFF4, 0x00000000, 0x12000200, 0xFFFFFFFF, 0xFF9CFFDC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x001CFFDC, 0x00000000, 0x10000000, 0xFFFFFFFF, 0xFF9CFFCC, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x001CFFCC, 0x00000000, 0x10000200, 0xFFFFFFFF
glabel D_80811F30
 .word 0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCCFFF2, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCCFFE2, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFFD0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000FFF2, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFFD0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000FFE2, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, 0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF
glabel D_80812130
 .word 0xFF9C001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFCC001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFF9C000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFCC000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFFD0001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0000001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0xFFD0000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0000000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0x0004001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0034001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0x0004000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0034000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0x0038001A, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0068001A, 0x00000000, 0x06000000, 0xFFFFFFFF, 0x0038000A, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0068000A, 0x00000000, 0x06000200, 0xFFFFFFFF, 0xFF9CFFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFECFFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF, 0xFF9CFFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFECFFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF, 0xFFF0FFF2, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x0040FFF2, 0x00000000, 0x0A000000, 0xFFFFFFFF, 0xFFF0FFE2, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x0040FFE2, 0x00000000, 0x0A000200, 0xFFFFFFFF, 0xFF9CFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, 0xFF9CFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF, 0xFFFCFFCA, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x005CFFCA, 0x00000000, 0x0C000000, 0xFFFFFFFF, 0xFFFCFFBA, 0x00000000, 0x00000200, 0xFFFFFFFF, 0x005CFFBA, 0x00000000, 0x0C000200, 0xFFFFFFFF
glabel D_80812330
 .word 0xFF9C001C, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009C001C, 0x00000000, 0x20000000, 0xFFFFFFFF, 0xFF9C001A, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009C001A, 0x00000000, 0x20000040, 0xFFFFFFFF
glabel D_80812370
 .word 0xFF9CFFF4, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009CFFF4, 0x00000000, 0x20000000, 0xFFFFFFFF, 0xFF9CFFF2, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009CFFF2, 0x00000000, 0x20000040, 0xFFFFFFFF
glabel D_808123B0
 .word 0xFF9CFFCC, 0x00000000, 0x00000000, 0xFFFFFFFF, 0x009CFFCC, 0x00000000, 0x20000000, 0xFFFFFFFF, 0xFF9CFFCA, 0x00000000, 0x00000040, 0xFFFFFFFF, 0x009CFFCA, 0x00000000, 0x20000040, 0xFFFFFFFF
glabel D_808123F0
 .word 0x000A000B, 0x000C000D, 0x000E000F, 0x00100011, 0x00120013, 0x00140015, 0x00160017, 0x00180019, 0x001A001B, 0x001C001D, 0x001E001F, 0x00200021, 0x00220023, 0x00240025, 0x00260027, 0x00280029, 0x002A002B, 0x002C002D, 0x002E002F, 0x00300031, 0x00320033, 0x00340035, 0x00360037, 0x00380039, 0x003A003B, 0x003C003D, 0x00010002, 0x00030004, 0x00050006, 0x00070008, 0x00090000, 0x0040003F, 0x003E0000, 0x00000000, 0x00000000, 0x00000000
glabel D_80812480
 .word 0xFFD0FFD0, 0xFFD0FFE8, 0xFFE80000
glabel D_8081248C
 .word 0x0000FFD0, 0xFFD0FFC0, 0x0010FFD0, 0xFFC0FFC0, 0x00200000
glabel D_808124A0
 .word 0x000F0000
glabel D_808124A4
 .word 0xFFC8FFD8, 0xFFE80000
glabel D_808124AC
 .word 0x00000010, 0x00200000, 0x00000000, 0x00000000, 0x00000000
glabel D_808124C0
 .word 0x00020003, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010002, 0x00000001, 0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002, 0x00000001, 0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003, 0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003, 0x00020002, 0x00000002, 0x00020002, 0x00000003, 0x00010000
glabel D_80812544
 .word 0x00010002, 0x00000001, 0x00010002, 0x00010001, 0x00040002, 0x00020002, 0x00010001, 0x00000002, 0x00000001, 0x00010001, 0x00010001, 0x00000001, 0x00010001, 0x00020002, 0x00020002, 0x00020003, 0x00020002, 0x00040003, 0x00020004, 0x00010002, 0x00020001, 0x00010002, 0x00020003, 0x00020002, 0x00000002, 0x00020002, 0x00030002, 0x00020002, 0x00020002, 0x00020002, 0x00020002, 0x00010003
glabel D_808125C4
 .word 0x01033480, 0x01033480, 0x01033B80
glabel D_808125D0
 .word 0x01015280, 0x01014200, 0x01015280, 0x01014780, 0x01015280, 0x01014D00
glabel D_808125E8
 .word 0x001C002C
glabel D_808125EC
 .word 0xFFE2FFF0, 0xFFFA0004, 0x000E0018, 0x0022002C, 0x0036FFF0, 0xFFF00000
glabel D_80812604
 .word 0x00480045, 0x00450045, 0x00450045, 0x00450045, 0x00450045, 0x00450000
glabel D_8081261C
 .word 0x01032480, 0x01032C80, 0x01032480, 0x00800080, 0x00800010, 0x01041100, 0x01041100, 0x01041500, 0x00400040, 0x00400010, 0x01041F00, 0x01042300, 0x01042C00, 0x00400090, 0x00400010, 0x01044600, 0x01044E00, 0x01045600, 0x00800080, 0x00800010
glabel D_8081266C
 .word 0x01041900, 0x01041900, 0x01041C00, 0x00300030, 0x00300010, 0x01040E00, 0x01040E00, 0x01040E00, 0x00300030, 0x00300010, 0x01040500, 0x01040800, 0x01040B00, 0x00300030, 0x00300010, 0x01040200, 0x01040200, 0x01040200, 0x00300030, 0x00300010, 0x01043000, 0x01043300, 0x01043800, 0x00300050, 0x00300010, 0x01043B00, 0x01043E00, 0x01044300, 0x00300050, 0x00300010
glabel D_808126E4
 .word 0x00FF0000
glabel D_808126E8
 .word 0x00FF0000
glabel D_808126EC
 .word 0x00FF0000
glabel D_808126F0
 .word 0x00000000
glabel D_808126F4
 .word 0x00000000
glabel D_808126F8
 .word 0x00000000
glabel D_808126FC
 .word 0x00010000
glabel D_80812700
 .word 0x00140000
glabel D_80812704
 .word 0x00FF00FF, 0x00FF0000, 0x00FF00FF
glabel D_80812710
 .word 0x00000000, 0x00000000, 0x00960096, 0x00000000, 0x006A0000
glabel D_80812724
 .word 0x00FF0000
glabel D_80812728
 .word 0xE7000000, 0x00000000, 0xD9C0F9FA, 0x00000000, 0xEF802C30, 0x00504340, 0xFCFFFFFF, 0xFFFDF6FB, 0xDF000000, 0x00000000
glabel D_80812750
 .word 0x00240024, 0x00240024, 0x00180000
glabel D_8081275C
 .word 0x00640096, 0x00FF0064, 0x00640064
glabel D_80812768
 .word 0x3E3E3E3E, 0x3E3E3E3E


glabel D_80812770
 .word func_8080B40C
.word func_8080B494
.word func_8080B52C
.word func_80803D40
.word func_80803ED8
.word func_80804248
.word func_808043D8
.word func_808044A0
.word func_80804858
.word func_80804924
.word func_80804A50
.word func_80804C74
.word func_80804CD0
.word func_80804ED8
.word func_8080510C
.word func_808051C8
.word func_80805318
.word func_80805434
.word func_80805524
.word func_80805824
.word func_8080595C
.word func_80805B2C
.word func_80805EB8
.word func_80806180
.word func_8080625C
.word func_80806444
.word func_808064F4
.word func_80806710
.word func_808068F0
.word func_808069B4
.word func_80806C20
.word L8080BE28
.word func_8080BE84
.word func_80809038
.word func_80808F84
.word func_8080BF6C
.word func_8080BEF8
.word func_8080969C
.word func_8080960C
.word func_8080BF6C
.word func_8080BE30
glabel D_80812814
 .word 0x004600C8
glabel D_80812818
 .word 0x001A000A, 0x000A000A
glabel D_80812820
 .word 0x0020000C, 0x000C000C
glabel D_80812828
 .word 0x0010000C, 0x000C000C
glabel D_80812830
 .word 0x00400054, 0x00680274, 0x0278027C
glabel D_8081283C
 .word 0x00400054, 0x00680278
glabel D_80812844
 .word 0x02740278
glabel D_80812848
 .word 0x02740278
glabel D_8081284C
 .word 0x007C0124, 0x01CC0000
glabel D_80812854
 .word 0x0101C880, 0x0101CC80, 0x0101D080, 0x01000180, 0x01000280, 0x01000380, 0x01000480, 0x01000580, 0x01000680
glabel D_80812878
 .word 0x00FF00FF, 0x00FF0000, 0x00FF0000, 0x00FF00C8, 0x00C80000
glabel D_8081288C
 .word 0x00FF00FF, 0x00FF00FF, 0x003C0064, 0x00820032, 0x00C80000
glabel D_808128A0
 .word 0x00FF00FF, 0x00FF0000, 0x000000FF, 0x000000FF, 0x00000000
glabel D_808128B4
 .word 0x00120013, 0x00140000, 0x00010002, 0x00030004, 0x00050000
glabel D_808128C8
 .word 0x00FF00FF, 0x00FF0064, 0x00640064
glabel D_808128D4
 .word gHeartFullTex, gDefenseHeartFullTex
glabel D_808128DC
 .word 0x00FF0046, 0x003200C8, 0x00000000
glabel D_808128E8
 .word 0x00320028, 0x003C00FF, 0x00FF00FF
glabel D_808128F4
 .word 0x01016380, 0x01017340, 0x01018300, 0x010192C0, 0x0101A280
glabel D_80812908
 .word 0x0102AC80, 0x0102B480, 0x01024C80, 0x01025480, 0x01025C80, 0x01026480, 0x0102DC80, 0x0102E480, 0x0102EC80, 0x0102BC80, 0x0102C480, 0x01026C80, 0x01027480, 0x01027C80, 0x01028480, 0x0102F480, 0x0102FC80, 0x01030480, 0x0102CC80, 0x0102D480, 0x01028C80, 0x01029480, 0x01029C80, 0x0102A480, 0x01030C80, 0x01031480, 0x01031C80
glabel D_80812974
 .word 0x0101D480, 0x0101DC80, 0x0101E480, 0x0101EC80, 0x0101F480, 0x0101FC80, 0x01020480, 0x01020C80, 0x01021480, 0x01021C80, 0x01022480, 0x01022C80, 0x01023480, 0x01023C80, 0x01024480
glabel D_808129B0
 .word 0x01037200, 0x01037A00, 0x01038200, 0x01038A00, 0x01039200, 0x01039A00, 0x0103A200, 0x0103AA00, 0x0103B200
glabel D_808129D4
 .word 0x01035A00, 0x0103D200, 0x0103BA00, 0x0103EA00, 0x01036200, 0x0103DA00, 0x0103C200, 0x0103F200, 0x01036A00, 0x0103E200, 0x0103CA00, 0x0103FA00
glabel D_80812A04
 .word 0x01045E00, 0x01046600, 0x01045E00
glabel D_80812A10
 .word 0x00000010, 0x00200000
glabel D_80812A18
 .word func_8080FE2C
.word func_8080FF98
.word func_8081009C
.word func_8081017C
.word func_80810354
.word func_80810440
.word func_80810698
.word func_808106F4
glabel jtbl_80812A38
.word L8080B224
.word func_8080F560
.word func_808109B8
glabel D_80812A44
 .word func_8080B1A8
.word func_8080C2F4
.word func_8081097C
glabel D_80812A50
 .word 0x01033F00, 0x01034800, 0x01035100, 0x00000000

