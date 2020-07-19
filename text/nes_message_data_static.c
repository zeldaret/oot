#include <ultra64.h>
#include <global.h>

#include <message_data_fmt.h>

#define DECLARE_MESSAGE_NES(textId, message) DECLARE_MESSAGE(textId, nes, message)

DECLARE_MESSAGE_NES(0x0001,
UNSKIPPABLE  ITEM_ICON("\x2D")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Pocket Egg" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"A Pocket Cucco will hatch from\n"
"it overnight. Be sure to give it\n"
"back when you are done with it."
);

DECLARE_MESSAGE_NES(0x0002,
UNSKIPPABLE  ITEM_ICON("\x2F")  QUICKTEXT_ENABLE "You returned the Pocket Cucco\n"
"and got " COLOR("\x41") "Cojiro" COLOR("\x40") " in return!" QUICKTEXT_DISABLE "\n"
"Unlike other Cuccos, Cojiro\n"
"rarely crows."
);

DECLARE_MESSAGE_NES(0x0003,
UNSKIPPABLE  ITEM_ICON("\x30")  QUICKTEXT_ENABLE "You got an " COLOR("\x41") "Odd Mushroom" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"A fresh mushroom like this is\n"
"sure to spoil quickly! Take it to\n"
"the Kakariko Potion Shop, quickly!"
);

DECLARE_MESSAGE_NES(0x0004,
UNSKIPPABLE  ITEM_ICON("\x31")  QUICKTEXT_ENABLE "You received an " COLOR("\x41") "Odd Potion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You don't know what's going on\n"
"between this lady and that guy,\n"
"but take it to the Lost Woods!"
);

DECLARE_MESSAGE_NES(0x0005,
UNSKIPPABLE  ITEM_ICON("\x32")  QUICKTEXT_ENABLE "You returned the Odd Potion \n"
"and got the " COLOR("\x41") "Poacher's Saw" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"The young punk guy must have\n"
"left this behind."
);

DECLARE_MESSAGE_NES(0x0006,
QUICKTEXT_ENABLE "Bombs   20 Pieces   80 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0007,
UNSKIPPABLE  ITEM_ICON("\x48")  QUICKTEXT_ENABLE "You got a \n"
COLOR("\x41") "Deku Seeds Bullet Bag" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"This bag can hold up to " COLOR("\x46") "40" COLOR("\x40") "\n"
"slingshot bullets."
);

DECLARE_MESSAGE_NES(0x0008,
UNSKIPPABLE  ITEM_ICON("\x33")  QUICKTEXT_ENABLE "You traded the Poacher's Saw \n"
"for a " COLOR("\x41") "Broken Goron's Sword" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Visit Biggoron to get it repaired!"
);

DECLARE_MESSAGE_NES(0x0009,
UNSKIPPABLE  ITEM_ICON("\x34")  QUICKTEXT_ENABLE "You checked in the Broken \n"
"Goron's Sword and received a \n"
COLOR("\x41") "Prescription" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Go see King Zora!"
);

DECLARE_MESSAGE_NES(0x000A,
UNSKIPPABLE  ITEM_ICON("\x37")  QUICKTEXT_ENABLE "The Biggoron's Sword..." QUICKTEXT_DISABLE "\n"
"You got a " COLOR("\x41") "Claim Check " COLOR("\x40") "for it!\n"
"You can't wait for the sword\n"
"to be completed!"
);

DECLARE_MESSAGE_NES(0x000B,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "You traded the Giant's Knife \n"
"for the " COLOR("\x41") "Biggoron's Sword" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This blade was forged by a \n"
"master smith and won't break!"
);

DECLARE_MESSAGE_NES(0x000C,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "You handed in the Claim Check\n"
"and got the " COLOR("\x41") "Biggoron's Sword" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This blade was forged by a \n"
"master smith and won't break!"
);

DECLARE_MESSAGE_NES(0x000D,
UNSKIPPABLE  ITEM_ICON("\x35")  QUICKTEXT_ENABLE "You used the Prescription and\n"
"received an " COLOR("\x41") "Eyeball Frog" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Be quick and deliver it to Lake \n"
"Hylia while it's cold!"
);

DECLARE_MESSAGE_NES(0x000E,
UNSKIPPABLE  ITEM_ICON("\x36")  QUICKTEXT_ENABLE "You traded the Eyeball Frog \n"
"for the " COLOR("\x41") "World's Finest Eye Drops" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Hurry! Take them to Biggoron\n"
"before they go bad!"
);

DECLARE_MESSAGE_NES(0x000F,
SHIFT("\x41")  COLOR("\x41") "WINNER!!" COLOR("\x40")  EVENT
);

DECLARE_MESSAGE_NES(0x0010,
ITEM_ICON("\x25")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Skull Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it off!\n"
"You feel like a monster while you\n"
"wear this mask !"
);

DECLARE_MESSAGE_NES(0x0011,
ITEM_ICON("\x26")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Spooky Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! You can scare many people\n"
"with this mask!"
);

DECLARE_MESSAGE_NES(0x0012,
ITEM_ICON("\x24")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Keaton Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! You'll be a popular guy with\n"
"this mask on!"
);

DECLARE_MESSAGE_NES(0x0013,
ITEM_ICON("\x27")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Bunny Hood" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! The hood's long ears are so\n"
"cute!"
);

DECLARE_MESSAGE_NES(0x0014,
ITEM_ICON("\x28")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Goron Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! It will make your head look\n"
"big, though."
);

DECLARE_MESSAGE_NES(0x0015,
ITEM_ICON("\x29")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Zora Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! With this mask, you can\n"
"become one of the Zoras!"
);

DECLARE_MESSAGE_NES(0x0016,
ITEM_ICON("\x2A")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Gerudo Mask" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it off!\n"
"This mask will make you look\n"
"like...a girl?"
);

DECLARE_MESSAGE_NES(0x0017,
ITEM_ICON("\x2B")  QUICKTEXT_ENABLE "You borrowed a " COLOR("\x41") "Mask of Truth" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Wear it with " COLOR("\x46") "[C]" COLOR("\x40") " to show it\n"
"off! Show it to many people!"
);

DECLARE_MESSAGE_NES(0x0018,
"Welcome to our cutting-edge \n"
"amusement center:"BOX_BREAK
SHIFT("\x15")  COLOR("\x41") "The Bombchu Bowling Alley!" COLOR("\x40") BOX_BREAK"Do you want to know what you \n"
"can win? Well, it's a " TEXT_SPEED("\x03") "secret." TEXT_SPEED("\x00") "\n"
"I can't tell you until you've\n"
"paid to play."BOX_BREAK"It's " COLOR("\x41") "30 Rupees" COLOR("\x40") " per game.\n"
"Do you want to play?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0019,
QUICKTEXT_ENABLE  SHIFT("\x3C") "OKAY!!" QUICKTEXT_DISABLE BOX_BREAK"Aim for the hole in the center \n"
"and let " COLOR("\x41") "Bombchu " COLOR("\x40") "go!\n"
"You get " COLOR("\x41") "ten tries" COLOR("\x40") ". Ready..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x41") "LET'S BOWL!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x001A,
"Do you want to play again?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x001B,
"Oh, I almost forgot!\n"
"Here is what you can win!" EVENT
);

DECLARE_MESSAGE_NES(0x001C,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombs   (20 pieces)   80 Rupees\n"
COLOR("\x40") "Take it out with " COLOR("\x46") "[C]" COLOR("\x40") " and press \n"
COLOR("\x46") "[C]" COLOR("\x40") " again to throw it. You can't\n"
"buy them without a bomb bag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x001D,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombs   (30 pieces)   120 Rupees\n"
COLOR("\x40") "Take it out with " COLOR("\x46") "[C]" COLOR("\x40") " and press \n"
COLOR("\x46") "[C]" COLOR("\x40") " again to throw it. You can't\n"
"buy them without a bomb bag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x001E,
QUICKTEXT_ENABLE "Bombs   30 Pieces   120 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x001F,
"I'm so happy everyone is \n"
"back to normal!"
);

DECLARE_MESSAGE_NES(0x0020,
"Please save my other brothers\n"
"too! I'm sure they will give you\n"
"something a lot better!"BOX_BREAK"Will you do it?!"
);

DECLARE_MESSAGE_NES(0x0021,
UNSKIPPABLE "The curse has been broken!\n"
"Thank you!\n"
"Here's a reward for you!" EVENT
);

DECLARE_MESSAGE_NES(0x0022,
"Yeaaarrgh! I'm cursed!!"
);

DECLARE_MESSAGE_NES(0x0023,
"We'll be careful not to get\n"
"cursed again!"
);

DECLARE_MESSAGE_NES(0x0024,
"Since you've destroyed " COLOR("\x41")  TOKENS  COLOR("\x40") "\n"
"Spiders of the Curse, the curse\n"
"is starting to weaken!"BOX_BREAK"Did the kids who returned to\n"
"normal give you any rewards?"BOX_BREAK"You should know that the only\n"
"way to become " COLOR("\x41") "very rich " COLOR("\x40") "is to\n"
"destroy as many Spiders of the\n"
"Curse as possible!"BOX_BREAK"There are some tricks to finding\n"
"them all! First of all, you'll have\n"
"to hunt at night. Secondly, keep in\n"
"mind that they love soft soil..."BOX_BREAK"Pay close attention to your\n"
"surroundings!\n"
"Please, we're counting on you!"
);

DECLARE_MESSAGE_NES(0x0025,
UNSKIPPABLE "We look like this because of \n"
"the spider's curse. But..." TEXTID("\x00\x24")
);

DECLARE_MESSAGE_NES(0x0026,
"We all look like this because of\n"
"the spider's curse."BOX_BREAK"If every " COLOR("\x41") "Spider of the Curse " COLOR("\x40") "in\n"
"the entire world were destroyed,\n"
"the curse would be broken."BOX_BREAK"When you destroy a Spider of the \n"
"Curse, a token will appear. Collect\n"
"it as proof of your achievement."BOX_BREAK
ITEM_ICON("\x71") "The number next to this " COLOR("\x46") "icon" COLOR("\x40") " on\n"
"the " COLOR("\x44") "Quest Status Subscreen" COLOR("\x43") " \n"
COLOR("\x40") "indicates how many Spiders of the \n"
"Curse you have destroyed so far."BOX_BREAK
ITEM_ICON("\x71") "When this " COLOR("\x46") "icon" COLOR("\x40") " is displayed \n"
"next to the name of the area on\n"
"the " COLOR("\x41") "Map Subscreen" COLOR("\x40") ", there are no\n"
"more Spiders in that area." TEXTID("\x00\xFE")
);

DECLARE_MESSAGE_NES(0x0027,
"If you break the curse on my\n"
"family, we will make you " COLOR("\x41") "very\n"
"rich" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x0028,
UNSKIPPABLE "Since you've destroyed " COLOR("\x41")  TOKENS  COLOR("\x40") " Spiders\n"
"of the Curse, the curse on me \n"
"has been broken."BOX_BREAK
UNSKIPPABLE "Thank you! Here is a token of my\n"
"appreciation! Please take it." EVENT
);

DECLARE_MESSAGE_NES(0x0029,
"Thank you for saving my kids."BOX_BREAK"What? Me? Oh, that's OK..."BOX_BREAK"You have already destroyed " COLOR("\x41")  TOKENS  COLOR("\x40") "\n"
"Spiders of the Curse so far, so...\n"
"that's fine...don't worry about me..."
);

DECLARE_MESSAGE_NES(0x002A,
QUICKTEXT_ENABLE "Bombchu   20 Pieces   180 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x002B,
"Do you want to play a game?\n"
"It's " COLOR("\x41") "20 Rupees " COLOR("\x40") "per play.\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"Nope" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x002C,
"You can't! You need a bow!" EVENT
);

DECLARE_MESSAGE_NES(0x002D,
"All right. You don't have to play\n"
"if you don't want to." EVENT
);

DECLARE_MESSAGE_NES(0x002E,
QUICKTEXT_ENABLE "OKAY!!" QUICKTEXT_DISABLE "\n"
"This is a game for grownups!\n"
"Hyrule's famous " COLOR("\x41") "Shooting Gallery" COLOR("\x40") "!"BOX_BREAK"Take aim at the targets from that \n"
"platform over there! Can you hit\n"
COLOR("\x41") "ten targets" COLOR("\x40") "? You get " COLOR("\x41") "fifteen \n"
COLOR("\x40") "shots!"BOX_BREAK"Draw your weapon with " COLOR("\x42") "[B]" COLOR("\x40") ". \n"
"Are you ready?\n"
"Go for a perfect score!\n"
"Good Luck!" EVENT
);

DECLARE_MESSAGE_NES(0x002F,
"You see a small mound of soft\n"
"soil here."
);

DECLARE_MESSAGE_NES(0x0030,
UNSKIPPABLE  ITEM_ICON("\x06")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Fairy Slingshot" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "Press " COLOR("\x46") "[C] " COLOR("\x40") "to take it out and hold\n"
"it. As you hold " COLOR("\x46") "[C] " COLOR("\x40") "you can aim \n"
"with " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Release " COLOR("\x46") "[C]" COLOR("\x40") " to unleash \n"
"a " COLOR("\x41") "Deku Seed" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "If you want to shoot right \n"
"away, when you first press " COLOR("\x46") "[C]" COLOR("\x40") ", \n"
"hold down " COLOR("\x46") "[C] " COLOR("\x40") "a little longer to \n"
"get a seed ready."
);

DECLARE_MESSAGE_NES(0x0031,
UNSKIPPABLE  ITEM_ICON("\x03")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Fairy Bow" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x03") "Press " COLOR("\x46") "[C] " COLOR("\x40") "to take it out\n"
"and hold it. As you hold down\n"
COLOR("\x46") "[C]" COLOR("\x40") " you can aim with " COLOR("\x44") "[Control Stick]" COLOR("\x40") "." COLOR("\x46") " " COLOR("\x40") "Release\n"
COLOR("\x46") "[C]" COLOR("\x40") " to let fly with an " COLOR("\x41") "arrow" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x0032,
ITEM_ICON("\x02")  QUICKTEXT_ENABLE "You got " COLOR("\x41") "Bombs" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x02") "Use " COLOR("\x46") "[C]" COLOR("\x40") " to lift and place\n"
"it. Press " COLOR("\x46") "[C]" COLOR("\x40") " while running to\n"
"throw it. If you see something\n"
"suspicious, bomb it!"
);

DECLARE_MESSAGE_NES(0x0033,
ITEM_ICON("\x09")  QUICKTEXT_ENABLE "You got " COLOR("\x41") "Bombchu" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x09") " Carry and place with " COLOR("\x46") "[C]" COLOR("\x40") ".\n"
"This is a new type bomb that\n"
"can even crawl up walls.\n"
"Aim well and release it!"
);

DECLARE_MESSAGE_NES(0x0034,
ITEM_ICON("\x01")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Deku Nut" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x01") "Set it to " COLOR("\x46") "[C] " COLOR("\x40") "and try \n"
"throwing it! It will flash and \n"
"stun the enemy!"
);

DECLARE_MESSAGE_NES(0x0035,
UNSKIPPABLE  ITEM_ICON("\x0E")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Boomerang" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0E") "Press " COLOR("\x46") "[C]" COLOR("\x40") " to use it to \n"
"attack distant enemies!"
);

DECLARE_MESSAGE_NES(0x0036,
UNSKIPPABLE  ITEM_ICON("\x0A")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Hookshot" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"It's a spring-loaded chain that\n"
"you can cast out to hook things."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "You can use it to drag\n"
"distant items toward you, or\n"
"you can use it to pull yourself\n"
"toward something."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "While holding " COLOR("\x46") "[C]" COLOR("\x40") ", you can\n"
"aim with " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Shoot it by\n"
"releasing " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x0037,
ITEM_ICON("\x00")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Deku Stick" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x00") "Set it to " COLOR("\x46") "[C]" COLOR("\x40") " and swing it\n"
"with " COLOR("\x46") "[C]" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x00") "When you want to put it away, \n"
"stand still and press " COLOR("\x43") "[A]" COLOR("\x40") ". \n"
"You can carry up to 10 sticks,\n"
"but don't waste them."
);

DECLARE_MESSAGE_NES(0x0038,
UNSKIPPABLE  ITEM_ICON("\x11")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Megaton Hammer" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Press " COLOR("\x46") "[C]" COLOR("\x40") " to smash and break \n"
"junk! It's so heavy, you need to \n"
"use two hands to swing it!"
);

DECLARE_MESSAGE_NES(0x0039,
UNSKIPPABLE  ITEM_ICON("\x0F")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Lens of Truth" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Set it to " COLOR("\x46") "[C]" COLOR("\x40") " and press " COLOR("\x46") "[C]" COLOR("\x40") " to \n"
"look through it! Mysterious \n"
"things are hidden everywhere!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0F") "Be sure to try to use it outside\n"
"of the well. Seeing the truth will\n"
"cost magic power, so press " COLOR("\x46") "[C]\n"
COLOR("\x40") "again to stop using it."
);

DECLARE_MESSAGE_NES(0x003A,
UNSKIPPABLE  ITEM_ICON("\x08")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Ocarina of Time" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is the Royal Family's hidden \n"
"treasure which Zelda left behind.\n"
"It glows with a mystical light..."
);

DECLARE_MESSAGE_NES(0x003B,
"You cast Farore's Wind!\n"
THREE_CHOICE  COLOR("\x42") "Return to the Warp Point\n"
"Dispel the Warp Point\n"
"Exit" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x003C,
UNSKIPPABLE  ITEM_ICON("\x67")  QUICKTEXT_ENABLE "You received the " COLOR("\x41") "Fire\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Darunia awakens as a Sage and\n"
"adds his power to yours!"
);

DECLARE_MESSAGE_NES(0x003D,
UNSKIPPABLE  ITEM_ICON("\x68")  QUICKTEXT_ENABLE "You received the " COLOR("\x43") "Water\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Ruto awakens as a Sage and\n"
"adds her power to yours!"
);

DECLARE_MESSAGE_NES(0x003E,
UNSKIPPABLE  ITEM_ICON("\x66")  QUICKTEXT_ENABLE "You received the " COLOR("\x42") "Forest\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Saria awakens as a Sage and\n"
"adds her power to yours!"
);

DECLARE_MESSAGE_NES(0x003F,
UNSKIPPABLE  ITEM_ICON("\x69")  QUICKTEXT_ENABLE "You received the " COLOR("\x46") "Spirit\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Nabooru awakens as a Sage and\n"
"adds her power to yours!"
);

DECLARE_MESSAGE_NES(0x0040,
UNSKIPPABLE  ITEM_ICON("\x6B")  QUICKTEXT_ENABLE "You received the " COLOR("\x44") "Light\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Rauru the Sage adds his power\n"
"to yours!"
);

DECLARE_MESSAGE_NES(0x0041,
UNSKIPPABLE  ITEM_ICON("\x6A")  QUICKTEXT_ENABLE "You received the " COLOR("\x45") "Shadow\n"
"Medallion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Impa awakens as a Sage and\n"
"adds her power to yours!"
);

DECLARE_MESSAGE_NES(0x0042,
UNSKIPPABLE  ITEM_ICON("\x14")  QUICKTEXT_ENABLE "You got an " COLOR("\x41") "Empty Bottle" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"After you put something in this\n"
"bottle, set it to " COLOR("\x46") "[C]" COLOR("\x40") " when you\n"
"want to use the item inside."
);

DECLARE_MESSAGE_NES(0x0043,
ITEM_ICON("\x15")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Red Potion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x15") "Drink it with " COLOR("\x46") "[C]" COLOR("\x40") " to recover\n"
"your life energy.\n"
"You carry this potion in one\n"
"of your bottles."
);

DECLARE_MESSAGE_NES(0x0044,
ITEM_ICON("\x16")  QUICKTEXT_ENABLE "You got a " COLOR("\x42") "Green Potion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x16") "Drink it with " COLOR("\x46") "[C]" COLOR("\x40") " to recover\n"
"your magic power.\n"
"You carry this potion in one\n"
"of your bottles."
);

DECLARE_MESSAGE_NES(0x0045,
ITEM_ICON("\x17")  QUICKTEXT_ENABLE "You got a " COLOR("\x43") "Blue Potion" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Drink it with " COLOR("\x46") "[C]" COLOR("\x40") " to recover\n"
"your life energy and magic power."
);

DECLARE_MESSAGE_NES(0x0046,
ITEM_ICON("\x18")  QUICKTEXT_ENABLE "You caught a " COLOR("\x41") "Fairy" COLOR("\x40") " in a bottle!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x18") "This tiny fairy is a reliable \n"
"partner who will revive you\n"
"the moment you run out of life \n"
"energy."BOX_BREAK
ITEM_ICON("\x18") "Once you set it to " COLOR("\x46") "[C]" COLOR("\x40") ",\n"
"though, you can ask for its help\n"
"anytime."
);

DECLARE_MESSAGE_NES(0x0047,
ITEM_ICON("\x19")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Fish" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Use it with " COLOR("\x46") "[C]" COLOR("\x40") " and something \n"
"might happen... It looks so \n"
"fresh and delicious!"BOX_BREAK
ITEM_ICON("\x19") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"or " COLOR("\x46") "[C-Right]" COLOR("\x40") ", and then press that\n"
COLOR("\x46") "[C] " COLOR("\x40") "to use it."
);

DECLARE_MESSAGE_NES(0x0048,
ITEM_ICON("\x10")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Magic Bean" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Find a suitable spot for a garden\n"
"and plant it with " COLOR("\x46") "[C]" COLOR("\x40") ". Then, wait\n"
"for something fun to happen!"BOX_BREAK
ITEM_ICON("\x10") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"or " COLOR("\x46") "[C-Right]" COLOR("\x40") ", and then use that\n"
COLOR("\x46") "[C] " COLOR("\x40") "to plant it."
);

DECLARE_MESSAGE_NES(0x0049,
"Sorry about that...OK, well..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3D")  COLOR("\x41") "LET'S BOWL" COLOR("\x40") "!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x004A,
UNSKIPPABLE  ITEM_ICON("\x07")  QUICKTEXT_ENABLE "You received the " COLOR("\x41") "Fairy Ocarina" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is a memento from Saria.\n"
"Set it to " COLOR("\x46") "[C]" COLOR("\x40") " and press " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"to start playing it!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"or " COLOR("\x46") "[C-Right]" COLOR("\x40") ", and then use that\n"
COLOR("\x46") "[C] " COLOR("\x40") "to start playing it."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "You can play different notes\n"
"with " COLOR("\x43") "[A]" COLOR("\x40") " and the four " COLOR("\x46") "[C] Buttons" COLOR("\x40") ". \n"
"Press " COLOR("\x42") "[B]" COLOR("\x40") " to quit playing, or \n"
"to start your song over again."
);

DECLARE_MESSAGE_NES(0x004B,
ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "You got the " COLOR("\x42") "Giant's Knife" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Hold it with both hands and use \n"
COLOR("\x42") "[B] " COLOR("\x40") "to attack! It's so long, you\n"
"can't use it with a " COLOR("\x44") "shield" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x004C,
ITEM_ICON("\x3E")  QUICKTEXT_ENABLE "You got a " COLOR("\x44") "Deku Shield" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Switch to the " COLOR("\x43") "Equipment \n"
"Subscreen" COLOR("\x41") " " COLOR("\x40") "and select the\n"
"shield. Press " COLOR("\x43") "[A] " COLOR("\x40") "to equip it."BOX_BREAK
ITEM_ICON("\x3E") "Press " COLOR("\x44") "[R]" COLOR("\x40") " to crouch and\n"
"defend. If you press " COLOR("\x44") "[R]" COLOR("\x40") " while \n"
COLOR("\x44") "[Z] Targeting" COLOR("\x40") ", you can move\n"
"while defending."
);

DECLARE_MESSAGE_NES(0x004D,
ITEM_ICON("\x3F")  QUICKTEXT_ENABLE "You got a " COLOR("\x44") "Hylian Shield" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Switch to the " COLOR("\x43") "Equipment \n"
"Subscreen" COLOR("\x40") " and select this\n"
"shield, then equip it with " COLOR("\x43") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x004E,
UNSKIPPABLE  ITEM_ICON("\x40")  QUICKTEXT_ENABLE "You found the " COLOR("\x44") "Mirror Shield" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"The shield's polished surface can\n"
"reflect light or energy. Press " COLOR("\x44") "[R]\n"
COLOR("\x40") "to use it."
);

DECLARE_MESSAGE_NES(0x004F,
UNSKIPPABLE  ITEM_ICON("\x0B")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Longshot" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"It's an upgraded Hookshot.\n"
"It extends " COLOR("\x41") "twice" COLOR("\x40") " as far!"
);

DECLARE_MESSAGE_NES(0x0050,
ITEM_ICON("\x42")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Goron Tunic" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This heat-resistant tunic is\n"
"adult size, so it won't fit a kid...\n"
"Going to a hot place? No worry!"
);

DECLARE_MESSAGE_NES(0x0051,
ITEM_ICON("\x43")  QUICKTEXT_ENABLE "You got a " COLOR("\x43") "Zora Tunic" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This diving suit is adult size,\n"
"so it won't fit a kid. Wear it,\n"
"and you won't drown underwater."
);

DECLARE_MESSAGE_NES(0x0052,
QUICKTEXT_ENABLE "You got a " COLOR("\x42") "Magic Jar" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Your Magic Meter is filled!"
);

DECLARE_MESSAGE_NES(0x0053,
UNSKIPPABLE  ITEM_ICON("\x45")  QUICKTEXT_ENABLE "You got the " COLOR("\x41") "Iron Boots" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"So heavy, you can't run.\n"
"So heavy, you can't float."
);

DECLARE_MESSAGE_NES(0x0054,
UNSKIPPABLE  ITEM_ICON("\x46")  QUICKTEXT_ENABLE "You got the " COLOR("\x41") "Hover Boots" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"With these mysterious boots\n"
"you can hover above the ground.\n"
"The downside? No traction!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x46") "You can even use these to\n"
"walk for short periods where \n"
"there is no solid ground. Be brave\n"
"and trust in the boots!"
);

DECLARE_MESSAGE_NES(0x0055,
QUICKTEXT_ENABLE "You got a " COLOR("\x45") "Recovery Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Your life energy is recovered!"
);

DECLARE_MESSAGE_NES(0x0056,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "You upgraded your quiver to a\n"
COLOR("\x41") "Big Quiver" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can carry more arrows-\n"
COLOR("\x46") "40 " COLOR("\x40") "in total!"
);

DECLARE_MESSAGE_NES(0x0057,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "You upgraded your quiver to\n"
"the " COLOR("\x41") "Biggest Quiver" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can carry even more \n"
"arrows, to a maximum of " COLOR("\x46") "50" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0058,
UNSKIPPABLE  ITEM_ICON("\x4D")  QUICKTEXT_ENABLE "You found a " COLOR("\x41") "Bomb Bag" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This bomb-holding bag is made \n"
"from a Dodongo's stomach!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x02")  QUICKTEXT_ENABLE "You found " COLOR("\x41") "20 Bombs" COLOR("\x40") " inside!" QUICKTEXT_DISABLE "\n"
"Now you can set Bombs to " COLOR("\x46") "[C]\n"
COLOR("\x40") "and blow stuff up! What a lucky \n"
"guy!"
);

DECLARE_MESSAGE_NES(0x0059,
UNSKIPPABLE  ITEM_ICON("\x4E")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Big Bomb Bag" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can carry more \n"
"Bombs, up to a maximum of " COLOR("\x46") "30" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x005A,
UNSKIPPABLE  ITEM_ICON("\x4F")  QUICKTEXT_ENABLE "You got the \n"
COLOR("\x41") "Biggest Bomb Bag" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now, you can carry up to \n"
COLOR("\x46") "40" COLOR("\x40") " Bombs!"
);

DECLARE_MESSAGE_NES(0x005B,
UNSKIPPABLE  ITEM_ICON("\x51")  QUICKTEXT_ENABLE "You found the " COLOR("\x43") "Silver Gauntlets" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"If you wore them, you would\n"
"feel power in your arms, the \n"
"power to lift big things with " COLOR("\x43") "[A]" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x51") "But, these gauntlets won't fit\n"
"a kid... Plus, you promised to give\n"
"them to " COLOR("\x41") "Nabooru" COLOR("\x40") ". You should keep\n"
"your word..."
);

DECLARE_MESSAGE_NES(0x005C,
UNSKIPPABLE  ITEM_ICON("\x52")  QUICKTEXT_ENABLE "You found the " COLOR("\x43") "Golden Gauntlets" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You can feel even more power \n"
"coursing through your arms!\n"
"Grab with " COLOR("\x43") "[A] " COLOR("\x40") "and lift stuff up!"
);

DECLARE_MESSAGE_NES(0x005D,
ITEM_ICON("\x1C")  QUICKTEXT_ENABLE "You put a " COLOR("\x44") "Blue Fire" COLOR("\x40") "\n"
"into the bottle!" QUICKTEXT_DISABLE "\n"
"This is a cool flame you can\n"
"use with " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down]" COLOR("\x40") " or" COLOR("\x46") " [C-Right]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x005E,
UNSKIPPABLE  ITEM_ICON("\x56")  QUICKTEXT_ENABLE "You got an " COLOR("\x43") "Adult's Wallet" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Adults are allowed to carry a \n"
"lot of money. Now you can hold \n"
"up to " COLOR("\x46") "200" COLOR("\x40") " " COLOR("\x46") "Rupees" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x005F,
UNSKIPPABLE  ITEM_ICON("\x57")  QUICKTEXT_ENABLE "You got a " COLOR("\x43") "Giant's Wallet" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"What a huge wallet! Now \n"
"you can carry up to " COLOR("\x46") "500" COLOR("\x40") " " COLOR("\x46") "Rupees" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x0060,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "You found a " COLOR("\x41") "Small Key" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This key will open a locked \n"
"door. You can use it only\n"
"in this dungeon."
);

DECLARE_MESSAGE_NES(0x0061,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombchu  (20 pieces)  180 Rupees\n"
COLOR("\x40") "This looks like a toy mouse, but\n"
"it's actually a self-propelled time\n"
"bomb!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0062,
QUICKTEXT_ENABLE "Red Potion   40 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0063,
QUICKTEXT_ENABLE "Red Potion   50 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0064,
QUICKTEXT_ENABLE  COLOR("\x41") "Red Potion   40 Rupees\n"
COLOR("\x40") "If you drink this, you will\n"
"recover your life energy.\n"
"This is a single dose." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0065,
QUICKTEXT_ENABLE  COLOR("\x41") "Red Potion   50 Rupees\n"
COLOR("\x40") "If you drink this, you will\n"
"recover your life energy.\n"
"This is a single dose." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0066,
ITEM_ICON("\x76")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Dungeon Map" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Press " COLOR("\x41") "START " COLOR("\x40") "to get into the \n"
"Subscreens and look at the\n"
COLOR("\x41") "Map Subscreen" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x76")  COLOR("\x43") "Blue chambers" COLOR("\x40") " are places \n"
"you have already visited. \n"
"Your current location is \n"
"the " COLOR("\x44") "flashing room" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x76") "Move " COLOR("\x44") "[Control Stick] up and down" COLOR("\x40") " to \n"
"select a floor to view."
);

DECLARE_MESSAGE_NES(0x0067,
ITEM_ICON("\x75")  QUICKTEXT_ENABLE "You found the " COLOR("\x41") "Compass" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can see the locations\n"
"of many hidden things in the\n"
"dungeon!"
);

DECLARE_MESSAGE_NES(0x0068,
UNSKIPPABLE  ITEM_ICON("\x6F")  QUICKTEXT_ENABLE "You obtained the " COLOR("\x41") "Stone of Agony" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"If you equip a " COLOR("\x44") "Rumble Pak" COLOR("\x40") ", it\n"
"will react to nearby...secrets."
);

DECLARE_MESSAGE_NES(0x0069,
UNSKIPPABLE  ITEM_ICON("\x23")  QUICKTEXT_ENABLE "You received " COLOR("\x41") "Zelda's Letter" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Wow! This letter has Princess\n"
"Zelda's autograph! Set it to " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"and show it with " COLOR("\x46") "[C]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x23") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down] " COLOR("\x40") "or " COLOR("\x46") "[C-Right]" COLOR("\x40") ",\n"
"and then use that " COLOR("\x46") "[C] " COLOR("\x40") "to show it\n"
"to people."
);

DECLARE_MESSAGE_NES(0x006A,
QUICKTEXT_ENABLE "Welcome! May I help you?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "I want to shop\n"
"Just looking" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x006B,
QUICKTEXT_ENABLE "Would you like to buy something\n"
"else?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x006C,
ITEM_ICON("\x49")  QUICKTEXT_ENABLE "Your " COLOR("\x41") "Deku Seeds Bullet Bag \n"
COLOR("\x40") "has become bigger!" QUICKTEXT_DISABLE "\n"
"Now you can carry more bullets!\n"
"This bag can hold " COLOR("\x46") "50" COLOR("\x41") " " COLOR("\x40") "bullets!"
);

DECLARE_MESSAGE_NES(0x006D,
"Open the chest and...Surprise!\n"
"If you find a Key inside, you'll \n"
"be able to advance. Left or\n"
"right--try your luck!"BOX_BREAK
COLOR("\x41") "10 Rupees " COLOR("\x40") "to play. Do you want \n"
"to try it?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x006E,
"Great! You are a real gambler!"
);

DECLARE_MESSAGE_NES(0x006F,
QUICKTEXT_ENABLE "You got a " COLOR("\x42") "Green Rupee" COLOR("\x40") "!\n"
"That's " COLOR("\x42") "one Rupee" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0070,
UNSKIPPABLE  ITEM_ICON("\x04")  QUICKTEXT_ENABLE "You got the " COLOR("\x41") "Fire Arrow" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Set it to " COLOR("\x46") "[C] " COLOR("\x40") "and your arrows will\n"
"be powered up! If you hit\n"
"your target, it will catch fire."
);

DECLARE_MESSAGE_NES(0x0071,
UNSKIPPABLE  ITEM_ICON("\x0C")  QUICKTEXT_ENABLE "You got the " COLOR("\x43") "Ice Arrow" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Set it to " COLOR("\x46") "[C] " COLOR("\x40") "and your arrows will\n"
"be powered up! If you hit your \n"
"target, it will freeze."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0C") "This arrow magic is granted\n"
"only to those who complete the \n"
"difficult training of the Gerudos,\n"
"so use it with pride!"
);

DECLARE_MESSAGE_NES(0x0072,
UNSKIPPABLE  ITEM_ICON("\x12")  QUICKTEXT_ENABLE "You got the " COLOR("\x44") "Light Arrow" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Set it to " COLOR("\x46") "[C] " COLOR("\x40") "and your arrows will\n"
"be powered up! The light of\n"
"justice will smite evil!"
);

DECLARE_MESSAGE_NES(0x0073,
UNSKIPPABLE  SHIFT("\x28") "You have learned the\n"
SHIFT("\x2F")  COLOR("\x42") "Minuet of Forest" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0074,
UNSKIPPABLE  SHIFT("\x28") "You have learned the\n"
SHIFT("\x37")  COLOR("\x41") "Bolero of Fire" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0075,
UNSKIPPABLE  SHIFT("\x28") "You have learned the \n"
SHIFT("\x29")  COLOR("\x43") "Serenade of Water" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0076,
UNSKIPPABLE  SHIFT("\x28") "You have learned the \n"
SHIFT("\x2D")  COLOR("\x46") "Requiem of Spirit" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0077,
UNSKIPPABLE  SHIFT("\x28") "You have learned the \n"
SHIFT("\x28")  COLOR("\x45") "Nocturne of Shadow" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0078,
UNSKIPPABLE  SHIFT("\x28") "You have learned the \n"
SHIFT("\x32")  COLOR("\x44") "Prelude of Light" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0079,
UNSKIPPABLE  ITEM_ICON("\x50")  QUICKTEXT_ENABLE "You got the " COLOR("\x41") "Goron's Bracelet" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can pull up Bomb \n"
"Flowers. Stand next to one and\n"
"use " COLOR("\x43") "[A]" COLOR("\x40") " to pull it up!"
);

DECLARE_MESSAGE_NES(0x007A,
ITEM_ICON("\x1D")  QUICKTEXT_ENABLE "You put a " COLOR("\x41") "Bug " COLOR("\x40") "in the bottle!" QUICKTEXT_DISABLE "\n"
"You can release it by pressing\n"
COLOR("\x46") "[C]" COLOR("\x40") ". This kind of bug prefers to\n"
"live in small holes in the ground."
);

DECLARE_MESSAGE_NES(0x007B,
UNSKIPPABLE  ITEM_ICON("\x70")  QUICKTEXT_ENABLE "You obtained the " COLOR("\x41") "Gerudo's \n"
"Membership Card" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You can get into the Gerudo's\n"
"training ground in their hideout."
);

DECLARE_MESSAGE_NES(0x007C,
QUICKTEXT_ENABLE "Bombs  10 pieces  50 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x007D,
QUICKTEXT_ENABLE "Arrows  50 pieces  90 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x007E,
QUICKTEXT_ENABLE "Fish   200 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x007F,
QUICKTEXT_ENABLE "Deku Nuts   5 Pieces   15 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0080,
UNSKIPPABLE  ITEM_ICON("\x6C")  QUICKTEXT_ENABLE "You got the " COLOR("\x42") "Kokiri's Emerald" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is the Spiritual Stone of \n"
"the Forest, now entrusted to \n"
"you by the Great Deku Tree."
);

DECLARE_MESSAGE_NES(0x0081,
UNSKIPPABLE  ITEM_ICON("\x6D")  QUICKTEXT_ENABLE "You obtained the " COLOR("\x41") "Goron's Ruby" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is the Spiritual Stone of \n"
"Fire passed down by the Gorons!"
);

DECLARE_MESSAGE_NES(0x0082,
UNSKIPPABLE  ITEM_ICON("\x6E")  QUICKTEXT_ENABLE "You obtained " COLOR("\x43") "Zora's Sapphire" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is the Spiritual Stone of\n"
"Water passed down by the\n"
"Zoras!"
);

DECLARE_MESSAGE_NES(0x0083,
QUICKTEXT_ENABLE "Shop around by moving the \n"
COLOR("\x44") "[Control Stick] " COLOR("\x40") "left or right.\n"
TWO_CHOICE  COLOR("\x42") "Talk to the owner\n"
"Quit" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0084,
QUICKTEXT_ENABLE "Thanks a lot!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0085,
QUICKTEXT_ENABLE "You don't have enough Rupees!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0086,
QUICKTEXT_ENABLE "You can't get this now." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0087,
QUICKTEXT_ENABLE "Deku Nuts   10 pieces  30 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0088,
QUICKTEXT_ENABLE "Deku Stick  1 piece   10 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0089,
QUICKTEXT_ENABLE "Deku Shield   40 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x008A,
QUICKTEXT_ENABLE "Arrow   10 pieces   20 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x008B,
QUICKTEXT_ENABLE "Bomb   5 pieces   25 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x008C,
QUICKTEXT_ENABLE "Bombchu  10 pieces   100 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x008D,
"You can't use a Big Poe here!\n"
"Sell it to the man at the Hyrule\n"
"Castle Town gate!"
);

DECLARE_MESSAGE_NES(0x008E,
QUICKTEXT_ENABLE "Red Potion   30 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x008F,
QUICKTEXT_ENABLE "Green Potion   30 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0090,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Now you can pick up \n"
"many " COLOR("\x41") "Deku Sticks" COLOR("\x40") "!\n"
"You can carry up to " COLOR("\x46") "20" COLOR("\x40") " of them!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0091,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "You can now pick up \n"
"even more " COLOR("\x41") "Deku Sticks" COLOR("\x40") "!\n"
"You can carry up to " COLOR("\x46") "30" COLOR("\x40") " of them!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0092,
QUICKTEXT_ENABLE "Hylian Shield   80 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0093,
QUICKTEXT_ENABLE "Goron Tunic   200 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0094,
QUICKTEXT_ENABLE "Zora Tunic   300 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0095,
QUICKTEXT_ENABLE "Recovery Heart   10 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0096,
QUICKTEXT_ENABLE "I'm sorry...I can't sell this to\n"
"you unless you have a bottle to \n"
"put it in." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x0097,
ITEM_ICON("\x20")  QUICKTEXT_ENABLE "You caught a " COLOR("\x41") "Poe " COLOR("\x40") "in a bottle!" QUICKTEXT_DISABLE "\n"
"Something good might happen!"
);

DECLARE_MESSAGE_NES(0x0098,
ITEM_ICON("\x1A")  QUICKTEXT_ENABLE "You got " COLOR("\x41") "Lon Lon Milk" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This milk is very nutritious!\n"
"Use it with " COLOR("\x46") "[C] " COLOR("\x40") "to recover your \n"
"life energy!"BOX_BREAK
ITEM_ICON("\x1A") "You will recover " COLOR("\x41") "five hearts" COLOR("\x40") "\n"
"per drink. There are two\n"
"drinks per bottle."BOX_BREAK
ITEM_ICON("\x1A") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down] " COLOR("\x40") "or " COLOR("\x46") "[C-Right]" COLOR("\x40") ",\n"
"and then use that " COLOR("\x46") "[C] " COLOR("\x40") "to take \n"
"a drink."
);

DECLARE_MESSAGE_NES(0x0099,
UNSKIPPABLE  ITEM_ICON("\x1B")  QUICKTEXT_ENABLE "You got an " COLOR("\x41") "Empty Bottle" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Put something inside and \n"
"press " COLOR("\x46") "[C] " COLOR("\x40") "to use it... What?\n"
"Something's already inside!?"
);

DECLARE_MESSAGE_NES(0x009A,
UNSKIPPABLE  ITEM_ICON("\x21")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Weird Egg" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Feels like there's something\n"
"moving inside! Set it to " COLOR("\x46") "[C] " COLOR("\x40") "and \n"
"see what happens!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x21") "On the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") ",\n"
"you can set it to " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down] " COLOR("\x40") "or " COLOR("\x46") "[C-Right]" COLOR("\x40") ",\n"
"and then press " COLOR("\x46") "[C] " COLOR("\x40") "to use it."
);

DECLARE_MESSAGE_NES(0x009B,
QUICKTEXT_ENABLE "Arrows   30 pieces   60 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x009C,
"My current hot seller is the \n"
COLOR("\x44") "Hylian Shield" COLOR("\x40") ", but it might be too \n"
"big for you, kid." EVENT
);

DECLARE_MESSAGE_NES(0x009D,
"We moved here from the castle \n"
"town. I know times are tough, but\n"
"I hope you will be a steady \n"
"customer for us!" EVENT
);

DECLARE_MESSAGE_NES(0x009E,
QUICKTEXT_ENABLE  SHIFT("\x47") "Welcome!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x009F,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku Shield   40 Rupees\n"
COLOR("\x40") "Once equipped, you can defend \n"
"with " COLOR("\x44") "[R]" COLOR("\x40") ". If set on fire, it will\n"
"burn!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A0,
QUICKTEXT_ENABLE  COLOR("\x41") "Arrow   (10 pieces)   20 Rupees\n"
COLOR("\x40") "You need a bow to shoot them.\n"
"You can't buy them unless you\n"
"have a bow." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A1,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku Stick  (1 piece)  10 Rupees\n"
COLOR("\x40") "A long branch gathered from the\n"
"Great Deku Tree. You can use it\n"
"as a weapon, but it will break." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A2,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku Nuts  (10 pieces) 30 Rupees\n"
COLOR("\x40") "Throw them to stun your enemies.\n"
"You can buy only the amount you\n"
"can actually carry." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A3,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombs   (5 pieces)   25 Rupees\n"
COLOR("\x40") "Take it out with " COLOR("\x46") "[C]" COLOR("\x40") " and press \n"
COLOR("\x46") "[C]" COLOR("\x40") " to throw it. You can buy them\n"
"only if you have a bomb bag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A4,
UNSKIPPABLE  ITEM_ICON("\x3B")  QUICKTEXT_ENABLE "You got the " COLOR("\x42") "Kokiri Sword" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"On the " COLOR("\x43") "Equipment Subscreen" COLOR("\x40") ",\n"
"select it with the cursor and\n"
"equip it with " COLOR("\x43") "[A]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x3B") "This is a hidden treasure of\n"
"the Kokiri, but you can borrow it\n"
"for a while. Be sure to practice \n"
"with it before you really fight!"
);

DECLARE_MESSAGE_NES(0x00A5,
QUICKTEXT_ENABLE  COLOR("\x41") "Red Potion   30 Rupees\n"
COLOR("\x40") "Drink to recover your life energy.\n"
"This is just a single dose." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A6,
QUICKTEXT_ENABLE  COLOR("\x41") "Green Potion   30 Rupees\n"
COLOR("\x40") "Drink to recover your magic power.\n"
"This is just a single dose." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00A7,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Now you can carry\n"
"many " COLOR("\x41") "Deku Nuts" COLOR("\x40") "!\n"
"You can hold up to " COLOR("\x46") "30" COLOR("\x40") " nuts!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00A8,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "You can now carry even\n"
"more " COLOR("\x41") "Deku Nuts" COLOR("\x40") "! You can carry\n"
"up to " COLOR("\x46") "40" COLOR("\x41") " " COLOR("\x40") "nuts!" QUICKTEXT_DISABLE " "
);

DECLARE_MESSAGE_NES(0x00A9,
QUICKTEXT_ENABLE  COLOR("\x41") "Hylian Shield   80 Rupees\n"
COLOR("\x40") "This is a big, heavy shield just \n"
"like the ones Hylian Knights use.\n"
"It can stand up to flame attacks!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00AA,
QUICKTEXT_ENABLE  COLOR("\x41") "Goron Tunic   200 Rupees\n"
COLOR("\x40") "A tunic made by Gorons. Adult\n"
"size. Protects you from heat\n"
"damage." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00AB,
QUICKTEXT_ENABLE  COLOR("\x41") "Zora Tunic   300 Rupees\n"
COLOR("\x40") "A tunic made by Zoras. Adult size.\n"
"Prevents you from drowning\n"
"underwater." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00AC,
QUICKTEXT_ENABLE  COLOR("\x41") "Recovery Heart   10 Rupees\n"
COLOR("\x40") "This will instantly refill one\n"
"Heart Container." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00AD,
UNSKIPPABLE  ITEM_ICON("\x05")  QUICKTEXT_ENABLE "You got " COLOR("\x41") "Din's Fire" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Its fireball engulfs everything!\n"
"It's attack magic you can use\n"
"with " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x00AE,
UNSKIPPABLE  ITEM_ICON("\x0D")  QUICKTEXT_ENABLE "You got " COLOR("\x42") "Farore's Wind" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"This is warp magic you can use \n"
"with " COLOR("\x46") "[C]" COLOR("\x40") ". Warp when you are in \n"
"danger!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "You will teleport to the " COLOR("\x42") "Warp\n"
"Point" COLOR("\x40") ". When you first use the\n"
"magic, you will create a Warp\n"
"Point."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "When you use the magic \n"
"again, you can either dispel\n"
"the Warp Point you created last\n"
"time or warp to that point."
);

DECLARE_MESSAGE_NES(0x00AF,
UNSKIPPABLE  ITEM_ICON("\x13")  QUICKTEXT_ENABLE "You got " COLOR("\x43") "Nayru's Love" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cast this to create a powerful\n"
"protective barrier. It's defensive \n"
"magic you can use with " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x00B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Arrows  (50 pieces)  90 Rupees\n"
COLOR("\x40") "Shoot these with a bow. You can't\n"
"buy them unless you have a bow." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombs  (10 pieces)  50 Rupees\n"
COLOR("\x40") "Take it out with " COLOR("\x46") "[C]" COLOR("\x40") " and press \n"
COLOR("\x46") "[C]" COLOR("\x40") " again to throw it. You can't\n"
"buy them without a bomb bag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku Nuts  (5 pieces)  15 Rupees\n"
COLOR("\x40") "Throw them to stun your enemies.\n"
"You can carry only a limited \n"
"amount of them." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Fish   200 Rupees\n"
COLOR("\x40") "Just caught and so fresh!\n"
"You can keep it in a bottle." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00B4,
"You destroyed a " COLOR("\x41") "Gold Skulltula" COLOR("\x40") ".\n"
"You got a token proving you \n"
"destroyed it!"
);

DECLARE_MESSAGE_NES(0x00B5,
"You destroyed a " COLOR("\x41") "Gold Skulltula" COLOR("\x40") ".\n"
"You got a token proving you \n"
"destroyed it!"
);

DECLARE_MESSAGE_NES(0x00B6,
QUICKTEXT_ENABLE "Fairy's Spirit    50 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Fairy's Spirit   50 Rupees\n"
COLOR("\x40") "You need an empty bottle to put\n"
"it in. Don't go into battle \n"
"without it!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00B8,
QUICKTEXT_ENABLE "Blue Fire    300 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Blue Fire   300 Rupees\n"
COLOR("\x40") "You need an empty bottle to put\n"
"this in. Use it to feel \n"
"refreshing coolness." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00BA,
QUICKTEXT_ENABLE "Bottle Bug   50 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Bottle Bug    50 Rupees\n"
COLOR("\x40") "You need an empty bottle to put\n"
"it in. It looks like just an\n"
"ordinary bug..." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00BC,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombchu  (10 pieces)  100 Rupees\n"
COLOR("\x40") "This looks like a toy mouse, but\n"
"it's actually a self-propelled time\n"
"bomb!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00BD,
QUICKTEXT_ENABLE  COLOR("\x41") "We're temporarily out of\n"
"stock on that item." COLOR("\x40")  QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00BE,
"C'mon, man! You're too old for \n"
"this game!" EVENT
);

DECLARE_MESSAGE_NES(0x00BF,
SHIFT("\x40") "Huh? Wha--!"BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x50") "Uh-oh!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3E") "A customer!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x00C0,
SHIFT("\x39") "zzzzz...zzzzz..." EVENT
);

DECLARE_MESSAGE_NES(0x00C1,
QUICKTEXT_ENABLE  COLOR("\x41") "Arrows   (30 pieces)   60 Rupees\n"
COLOR("\x40") "You need a bow to shoot them.\n"
"Use them, and you'll run out." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00C2,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Collect four pieces total to get\n"
"another Heart Container. More\n"
"containers mean more life energy!"
);

DECLARE_MESSAGE_NES(0x00C3,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"So far, you've collected two \n"
"pieces. With two more pieces, \n"
"you will gain more life energy!"
);

DECLARE_MESSAGE_NES(0x00C4,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you've collected three \n"
"pieces! With another piece, your \n"
"life energy will be powered up!"
);

DECLARE_MESSAGE_NES(0x00C5,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You've completed another Heart\n"
"Container! Your maximum life\n"
"energy is increased!"
);

DECLARE_MESSAGE_NES(0x00C6,
ITEM_ICON("\x72")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Heart Container" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Your maximum life energy is \n"
"increased by one heart. Your life\n"
"energy will be totally filled."
);

DECLARE_MESSAGE_NES(0x00C7,
ITEM_ICON("\x74")  QUICKTEXT_ENABLE "You got the " COLOR("\x41") "Boss Key" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Now you can get inside the \n"
"chamber where the Boss lurks."
);

DECLARE_MESSAGE_NES(0x00C8,
"Nope, you don't have enough\n"
"Rupees!" EVENT
);

DECLARE_MESSAGE_NES(0x00C9,
QUICKTEXT_ENABLE  SHIFT("\x24") "All right, you're done!" QUICKTEXT_DISABLE "\n"
"Please wait outside while I set \n"
"up your next challenge!" EVENT
);

DECLARE_MESSAGE_NES(0x00CA,
QUICKTEXT_ENABLE "Bombs   5 pieces   35 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00CB,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombs   (5 pieces)   35 Rupees\n"
COLOR("\x40") "Take it out with " COLOR("\x46") "[C]" COLOR("\x40") " and press \n"
COLOR("\x46") "[C]" COLOR("\x40") " again to throw it. You can't\n"
"buy them without a bomb bag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00CC,
QUICKTEXT_ENABLE "You got a " COLOR("\x43") "Blue Rupee" COLOR("\x40") "!\n"
"That's " COLOR("\x43") "five Rupees" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00CD,
UNSKIPPABLE  ITEM_ICON("\x53")  QUICKTEXT_ENABLE "You got the " COLOR("\x43") "Silver Scale" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jump into the water and press \n"
COLOR("\x43") "[A]" COLOR("\x40") ". You can dive deeper than you\n"
"could before."
);

DECLARE_MESSAGE_NES(0x00CE,
UNSKIPPABLE  ITEM_ICON("\x54")  QUICKTEXT_ENABLE "You got the " COLOR("\x43") "Golden Scale" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jump into the water and press \n"
COLOR("\x43") "[A]" COLOR("\x40") ". Now you can dive much\n"
"deeper than you could before!"
);

DECLARE_MESSAGE_NES(0x00CF,
QUICKTEXT_ENABLE  COLOR("\x44") "It looks like this item doesn't \n"
"work here..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00D0,
QUICKTEXT_ENABLE  COLOR("\x44") "It won't open!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00D1,
UNSKIPPABLE  SHIFT("\x14") "You've learned " COLOR("\x42") "Saria's Song" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D2,
UNSKIPPABLE  SHIFT("\x11") "You've learned " COLOR("\x41") "Epona's Song" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D3,
UNSKIPPABLE  SHIFT("\x0B") "You've learned the " COLOR("\x46") "Sun's Song" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D4,
UNSKIPPABLE  SHIFT("\x15") "You've learned " COLOR("\x43") "Zelda's Lullaby" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D5,
UNSKIPPABLE  SHIFT("\x05") "You've learned the " COLOR("\x44") "Song of Time" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D6,
UNSKIPPABLE "You've learned the " COLOR("\x45") "Song of Storms" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00D7,
UNSKIPPABLE "Welcome " NAME "!\n"
"I am the Great Fairy of Power!"BOX_BREAK
UNSKIPPABLE "I'm going to grant you a " COLOR("\x42") "sword\n"
"technique" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Receive it now!"
);

DECLARE_MESSAGE_NES(0x00D8,
UNSKIPPABLE "Welcome " NAME "!\n"
"I am the Great Fairy of Wisdom!"BOX_BREAK
UNSKIPPABLE "I'm going to enhance your " COLOR("\x42") "magic \n"
"power" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Receive it now!"
);

DECLARE_MESSAGE_NES(0x00D9,
UNSKIPPABLE "Welcome " NAME "!\n"
"I am the Great Fairy of Courage!"BOX_BREAK
UNSKIPPABLE "I'm going to enhance your \n"
COLOR("\x44") "defensive power" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Receive it now!"
);

DECLARE_MESSAGE_NES(0x00DA,
"When you are weary of battle,\n"
"please come back to visit me!" EVENT
);

DECLARE_MESSAGE_NES(0x00DB,
"Welcome " NAME "!\n"
"I will soothe your wounds." EVENT
);

DECLARE_MESSAGE_NES(0x00DC,
ITEM_ICON("\x58")  QUICKTEXT_ENABLE "You got " COLOR("\x41") "Deku Seeds" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"These are small, hard seeds\n"
"that you can use as bullets\n"
"for your Slingshot."
);

DECLARE_MESSAGE_NES(0x00DD,
QUICKTEXT_ENABLE  UNSKIPPABLE "You mastered the secret sword\n"
"technique of the " COLOR("\x41") "Spin Attack" COLOR("\x40") "!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Hold " COLOR("\x42") "[B]" COLOR("\x40") " to charge your weapon!\n"
"Release " COLOR("\x42") "[B]" COLOR("\x40") " to unleash a wave\n"
"of energy with your spin!"BOX_BREAK
UNSKIPPABLE "If you want to release energy\n"
"without charging your weapon, just \n"
COLOR("\x44") "rotate [Control Stick] once " COLOR("\x40") "and press " COLOR("\x42") "[B] " COLOR("\x40") "for" COLOR("\x42") "\n"
COLOR("\x40") "a very effective quick spin!"
);

DECLARE_MESSAGE_NES(0x00DE,
QUICKTEXT_ENABLE "Deku Seeds 30 pieces 30 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00DF,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku Seed (30 pieces) 30 Rupees\n"
COLOR("\x40") "You can use them as bullets for\n"
"your Slingshot. You can't buy \n"
"them unless you have a Slingshot." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00E0,
COLOR("\x44") "You want to talk to Saria, right?\n"
COLOR("\x40") "\n"
TWO_CHOICE  COLOR("\x42") "Talk to Saria\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00E1,
COLOR("\x44") "Really? Then do you want to talk \n"
"to me?\n"
COLOR("\x40")  TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00E2,
SHIFT("\x3C")  NAME "...?\n"
SHIFT("\x0D") "This is " COLOR("\x42") "Saria" COLOR("\x40") ". Can you hear me?" EVENT
);

DECLARE_MESSAGE_NES(0x00E3,
COLOR("\x44") "Do you want to talk to Saria\n"
"again?" COLOR("\x40") "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x00E4,
UNSKIPPABLE  QUICKTEXT_ENABLE "Your " COLOR("\x42") "Magic Meter" COLOR("\x40") " is enhanced!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00E5,
UNSKIPPABLE  QUICKTEXT_ENABLE "Your " COLOR("\x44") "defensive power" COLOR("\x40") " is enhanced!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00E6,
UNSKIPPABLE  QUICKTEXT_ENABLE "You got a " COLOR("\x46") "bundle of arrows" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00E7,
UNSKIPPABLE "When you charge power for a Spin\n"
"Attack, magic power will be\n"
"consumed. Pay attention to your\n"
"green " COLOR("\x42") "Magic Meter" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Hey, boy! You're a messenger of\n"
"the Royal Family, aren't you?"BOX_BREAK
UNSKIPPABLE "Next time you're in their\n"
"neighborhood, you should drop in\n"
"on a friend of mine who lives by\n"
"Hyrule Castle."BOX_BREAK
UNSKIPPABLE "She'll surely grant you another\n"
"new power!"
);

DECLARE_MESSAGE_NES(0x00E8,
UNSKIPPABLE "Your magic power has been \n"
"enhanced! Now you have twice\n"
"as much " COLOR("\x41") "Magic Power" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x00E9,
UNSKIPPABLE "Your defensive power has been \n"
"enhanced! Damage inflicted by \n"
"enemies will be " COLOR("\x41") "reduced by half" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x00EA,
UNSKIPPABLE "Welcome " NAME "!\n"
"I am the Great Fairy of Magic!"BOX_BREAK
UNSKIPPABLE "I will give you a " COLOR("\x41") "magic spell" COLOR("\x40") ".\n"
"Please take it."
);

DECLARE_MESSAGE_NES(0x00EB,
QUICKTEXT_ENABLE "I'm sorry, but you can't borrow\n"
"this mask yet." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x00EC,
UNSKIPPABLE "You can use " COLOR("\x41") "Din's Fire" COLOR("\x40") " not only to\n"
"attack but also to burn things!"
);

DECLARE_MESSAGE_NES(0x00ED,
UNSKIPPABLE "Remember, you can use " COLOR("\x42") "Farore's\n"
"Wind" COLOR("\x40") " only in dungeons that have\n"
"a dungeon map hidden inside, OK?"
);

DECLARE_MESSAGE_NES(0x00EE,
UNSKIPPABLE  COLOR("\x43") "Nayru's Love" COLOR("\x44") " " COLOR("\x40") "is in effect for only\n"
"a limited time, so use it carefully."
);

DECLARE_MESSAGE_NES(0x00EF,
"When battle has made you weary,\n"
"please come back to see me."
);

DECLARE_MESSAGE_NES(0x00F0,
QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Red Rupee" COLOR("\x40") "!\n"
"That's " COLOR("\x41") "twenty Rupees" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F1,
QUICKTEXT_ENABLE "You got a " COLOR("\x45") "Purple Rupee" COLOR("\x40") "!\n"
"That's " COLOR("\x45") "fifty Rupees" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F2,
QUICKTEXT_ENABLE "You got a " COLOR("\x46") "Huge Rupee" COLOR("\x40") "!\n"
"This Rupee is worth a whopping\n"
COLOR("\x46") "two hundred Rupees" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F3,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Door Key" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Use this key to continue to the\n"
"next room. Select a treasure \n"
"chest and see how lucky you are!"
);

DECLARE_MESSAGE_NES(0x00F4,
COLOR("\x44") "Loser!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "You found only " COLOR("\x42") "one Rupee" COLOR("\x40") ".\n"
"You are not very lucky." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F5,
COLOR("\x44") "Loser!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "You found " COLOR("\x43") "five Rupees" COLOR("\x40") ".\n"
"Even so, you are not very lucky." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F6,
COLOR("\x44") "Loser!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "You found " COLOR("\x41") "twenty Rupees" COLOR("\x40") ".\n"
"Your last selection was a mistake,\n"
"wasn't it! How frustrating!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F7,
COLOR("\x41") "Winner!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "You found " COLOR("\x46") "fifty Rupees" COLOR("\x40") ".\n"
"You are a genuinely lucky guy!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x00F8,
"00f8"
);

DECLARE_MESSAGE_NES(0x00F9,
ITEM_ICON("\x1E")  QUICKTEXT_ENABLE "You put a " COLOR("\x41") "Big Poe " COLOR("\x40") "in a bottle!" QUICKTEXT_DISABLE "\n"
"Let's sell it at the " COLOR("\x41") "Ghost Shop" COLOR("\x40") "!\n"
"Something good might happen!"
);

DECLARE_MESSAGE_NES(0x00FA,
SHIFT("\x49")  COLOR("\x41") "WINNER" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Collect four pieces total to get\n"
"another Heart Container. More\n"
"containers mean more life energy!"
);

DECLARE_MESSAGE_NES(0x00FB,
SHIFT("\x49")  COLOR("\x41") "WINNER" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"So far, you've collected two \n"
"pieces. With two more pieces, \n"
"you will gain more life energy!"
);

DECLARE_MESSAGE_NES(0x00FC,
SHIFT("\x49")  COLOR("\x41") "WINNER" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You've collected three pieces!\n"
"With another piece, your life \n"
"energy will be powered up!"
);

DECLARE_MESSAGE_NES(0x00FD,
SHIFT("\x49")  COLOR("\x41") "WINNER" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "You got a " COLOR("\x41") "Piece of Heart" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"You've completed another Heart\n"
"Container! Your maximum life\n"
"energy is increased!"
);

DECLARE_MESSAGE_NES(0x00FE,
"Look for them not only out in the\n"
"open, but also inside the dungeons."BOX_BREAK"Of course, this is just our dream...\n"
"You don't have to do it if you\n"
"don't want to..." TEXTID("\x00\x27")
);

DECLARE_MESSAGE_NES(0x0100,
COLOR("\x44") "What's that?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0101,
UNSKIPPABLE  COLOR("\x44") "Look, look, " NAME "!\n"
"You can see down below this " COLOR("\x40") "web" COLOR("\x44") "\n"
"using " COLOR("\x46") "[C-Up]" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0102,
UNSKIPPABLE  COLOR("\x44") "Look at this wall! The vines\n"
"growing on it give it a rough\n"
"surface... Maybe you can climb \n"
"it, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0103,
UNSKIPPABLE  COLOR("\x44") "You can open a " COLOR("\x40") "door" COLOR("\x44") " by standing\n"
"in front of it and pressing " COLOR("\x43") "[A]" COLOR("\x44") "." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Pay attention to what the\n"
COLOR("\x43") "Action" COLOR("\x44") " " COLOR("\x43") "Icon" COLOR("\x44") " says.\n"
"That's the " COLOR("\x43") "blue icon" COLOR("\x44") " at the top of\n"
"the screen!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0104,
UNSKIPPABLE  COLOR("\x44") "Look! Something is hanging up\n"
"there! It looks like an old " COLOR("\x40") "ladder" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0105,
UNSKIPPABLE  COLOR("\x44") "Hey...\n"
"Isn't that the same design that's\n"
"on the " COLOR("\x40") "Door of Time" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0106,
UNSKIPPABLE  COLOR("\x44") "It looks like that torch was\n"
"burning not too long ago..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0107,
UNSKIPPABLE  COLOR("\x44") "From here on, we'll be going\n"
"through some narrow passages!\n"
"If you take it slow, maybe you\n"
"can sneak up on some enemies."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Use " COLOR("\x40") "[Z] Targeting " COLOR("\x44") "to always look\n"
"in the proper direction. Set your\n"
"view so you can see down the next\n"
"corridor before you turn a corner."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Once your view is set, hold down\n"
COLOR("\x40") "[Z] " COLOR("\x44") "to " COLOR("\x40") "sidestep " COLOR("\x44") "around the corner.\n"
"That way you won't be surprised\n"
"by an enemy waiting in ambush." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0108,
UNSKIPPABLE  COLOR("\x44") "Stand next to this " COLOR("\x40") "block" COLOR("\x44") " and grab\n"
"hold of it with " COLOR("\x43") "[A]" COLOR("\x44") ". While holding\n"
COLOR("\x43") "[A]" COLOR("\x44") ", you can push or pull it."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "If you stand next to the " COLOR("\x40") "block" COLOR("\x44") "\n"
"and press " COLOR("\x43") "[A]" COLOR("\x44") " while pressing " COLOR("\x40") "[Control Stick]" COLOR("\x44") "\n"
"towards the " COLOR("\x40") "block" COLOR("\x44") ", you can climb\n"
"on top of it."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Pay attention to what the " COLOR("\x43") "Action\n"
"Icon " COLOR("\x44") "says!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0109,
"0109"
);

DECLARE_MESSAGE_NES(0x010A,
"010a"
);

DECLARE_MESSAGE_NES(0x010B,
"010b"
);

DECLARE_MESSAGE_NES(0x010C,
UNSKIPPABLE  COLOR("\x44") "After you get into the water, if\n"
"you hold down" COLOR("\x43") " [A]" COLOR("\x44") ", you can dive!\n"
"I bet there are some interesting\n"
"things underwater!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x010D,
"010d"
);

DECLARE_MESSAGE_NES(0x010E,
"010e"
);

DECLARE_MESSAGE_NES(0x010F,
"010f"
);

DECLARE_MESSAGE_NES(0x0110,
"0110"
);

DECLARE_MESSAGE_NES(0x0111,
"0111"
);

DECLARE_MESSAGE_NES(0x0112,
"0112"
);

DECLARE_MESSAGE_NES(0x0113,
"0113"
);

DECLARE_MESSAGE_NES(0x0114,
UNSKIPPABLE  COLOR("\x44") "Wow! Look at all those \n"
COLOR("\x40") "Bomb Flowers" COLOR("\x44") "!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Is there any way you can set\n"
"them all off at once?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0115,
UNSKIPPABLE  COLOR("\x44") "It looks like there are many " COLOR("\x40") "lava\n"
"pits " COLOR("\x44") "around here, so watch your\n"
"step!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0116,
UNSKIPPABLE  COLOR("\x44") "With that switch on, the moving\n"
COLOR("\x40") "platform " COLOR("\x44") "goes higher. Now you can\n"
"quickly reach the second floor!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0117,
"0117"
);

DECLARE_MESSAGE_NES(0x0118,
"0118"
);

DECLARE_MESSAGE_NES(0x0119,
UNSKIPPABLE  COLOR("\x44") "You never know what will be \n"
"around the corner in these narrow\n"
"paths...."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Use " COLOR("\x40") "[Z] Targeting " COLOR("\x44") "to always look\n"
"in the proper direction. This is a\n"
"useful technique, isn't it?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x011A,
"011a"
);

DECLARE_MESSAGE_NES(0x011B,
"011b"
);

DECLARE_MESSAGE_NES(0x011C,
"011c"
);

DECLARE_MESSAGE_NES(0x011D,
"011d"
);

DECLARE_MESSAGE_NES(0x011E,
"011e"
);

DECLARE_MESSAGE_NES(0x011F,
UNSKIPPABLE  COLOR("\x44")  NAME ", what are you \n"
"looking at?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0120,
"0120"
);

DECLARE_MESSAGE_NES(0x0121,
"0121"
);

DECLARE_MESSAGE_NES(0x0122,
"0122"
);

DECLARE_MESSAGE_NES(0x0123,
"0123"
);

DECLARE_MESSAGE_NES(0x0124,
UNSKIPPABLE  COLOR("\x44") "The Desert Colossus's face...it \n"
"sure looks evil!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0125,
"0125"
);

DECLARE_MESSAGE_NES(0x0126,
UNSKIPPABLE  COLOR("\x44") "I can hear the spirits whispering \n"
"in this room..."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE "\"Look for the eye of truth...\"\n"
COLOR("\x44") "That's what they are saying!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0127,
"0127"
);

DECLARE_MESSAGE_NES(0x0128,
UNSKIPPABLE  COLOR("\x44") "Here...I can hear the spirits\n"
"whispering in this room..." COLOR("\x40") BOX_BREAK
UNSKIPPABLE "\"Those who have " COLOR("\x41") "sacred feet " COLOR("\x40") "\n"
"should let the wind guide them.\n"
"Then, they will be led to the \n"
"hidden path.\""BOX_BREAK
COLOR("\x44") "That's what they are saying!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0129,
UNSKIPPABLE  COLOR("\x44") "This wall...it says something here...\n"
COLOR("\x40") "\"Danger above...\"" COLOR("\x44") "\n"
"That's what it says." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x012A,
UNSKIPPABLE  COLOR("\x44") "This wall...it says something here...\n"
COLOR("\x40") "\"Danger below...\"\n"
COLOR("\x44") "That's what it says." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x012B,
UNSKIPPABLE  COLOR("\x44") "The water flowing out of this \n"
"statue is flooding the entire floor." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x012C,
"012c"
);

DECLARE_MESSAGE_NES(0x012D,
"012d"
);

DECLARE_MESSAGE_NES(0x012E,
"012e"
);

DECLARE_MESSAGE_NES(0x012F,
UNSKIPPABLE  COLOR("\x44") "Watch out, " NAME "!\n"
"Electricity is running through\n"
"this " COLOR("\x42") "green slimy thing" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0130,
"0130"
);

DECLARE_MESSAGE_NES(0x0131,
UNSKIPPABLE  COLOR("\x44") "Watch out " NAME "!\n"
"Electricity is running through\n"
"this " COLOR("\x41") "red slimy thing" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0132,
UNSKIPPABLE  COLOR("\x44") "Watch out " NAME "!\n"
"Electricity is running through\n"
"this " COLOR("\x43") "blue slimy thing" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0133,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "switch" COLOR("\x44") "...\n"
"It doesn't look like you can press\n"
"it down with your weight alone,\n"
NAME "..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0134,
"0134"
);

DECLARE_MESSAGE_NES(0x0135,
"0135"
);

DECLARE_MESSAGE_NES(0x0136,
"0136"
);

DECLARE_MESSAGE_NES(0x0137,
UNSKIPPABLE  COLOR("\x44") "The " COLOR("\x41") "red slimy thing " COLOR("\x44") "is gone! \n"
"That must be because you cut the\n"
COLOR("\x41") "red tail" COLOR("\x44") "! Will that work with \n"
"the other ones too?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0138,
"0138"
);

DECLARE_MESSAGE_NES(0x0139,
UNSKIPPABLE  COLOR("\x44") "There's a switch beyond this \n"
"wall!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x013A,
UNSKIPPABLE  COLOR("\x44") "It looks like there is something\n"
"up there on top of the platform!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x013B,
"013b"
);

DECLARE_MESSAGE_NES(0x013C,
"013c"
);

DECLARE_MESSAGE_NES(0x013D,
UNSKIPPABLE  SHIFT("\x42")  COLOR("\x44") "WHAAAT!?"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Look at all those " COLOR("\x40") "flags" COLOR("\x44") "!\n"
"Can you figure out which ones are\n"
"real?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x013E,
"013e"
);

DECLARE_MESSAGE_NES(0x013F,
"013f"
);

DECLARE_MESSAGE_NES(0x0140,
COLOR("\x44") "The " COLOR("\x40") "Great Deku Tree" COLOR("\x41") " " COLOR("\x44") "has \n"
"summoned you!\n"
"Please come with me!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0141,
COLOR("\x44") "C'mon! Be brave!\n"
"Let's go into the \n"
"Great Deku Tree!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0142,
COLOR("\x44") "The Great Deku Tree wanted us\n"
"to go to visit the princess at\n"
COLOR("\x40") "Hyrule Castle" COLOR("\x44") ".... Shouldn't we\n"
"get going?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0143,
COLOR("\x44") "The girl from the ranch asked us\n"
"to find her " COLOR("\x40") "father" COLOR("\x44") "...I wonder where\n"
"he is?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0144,
COLOR("\x44") "I wonder where we'll find the \n"
COLOR("\x40") "princess " COLOR("\x44") "in this big old castle?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0145,
COLOR("\x44") "What would " COLOR("\x40") "Saria" COLOR("\x41") " " COLOR("\x44") "say if we told\n"
"her we're going to save Hyrule?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0146,
"Impa " COLOR("\x44") "said that the Spiritual Stone\n"
"of Fire is somewhere on " COLOR("\x40") "Death\n"
"Mountain" COLOR("\x44") "." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0147,
COLOR("\x44") "Let's go inside the Dodongo's\n"
"Cavern using a " COLOR("\x40") "Bomb Flower" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0148,
COLOR("\x44") "Darunia said that a " COLOR("\x40") "fairy\n"
COLOR("\x44") "lives on top of Death Mountain,\n"
"didn't he?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0149,
COLOR("\x44") "I wonder if " COLOR("\x40") "Saria " COLOR("\x44") "knows anything\n"
"about the other Spiritual Stone?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014A,
COLOR("\x44") "It seems " COLOR("\x40") "Princess Ruto " COLOR("\x44") "somehow " COLOR("\x40") "\n"
COLOR("\x44") "got inside Jabu-Jabu's belly..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014B,
COLOR("\x44") "You collected three Spiritual\n"
"Stones! Let's go back to " COLOR("\x40") "Hyrule\n"
"Castle" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014C,
COLOR("\x44") "Those people on the white horse...\n"
"they were Zelda and Impa, weren't\n"
"they? It looked like they threw \n"
"something into the " COLOR("\x40") "moat" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014D,
COLOR("\x44") "Let's go check inside the \n"
COLOR("\x40") "Temple of Time" COLOR("\x44") "." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014E,
COLOR("\x44") "Should we believe what Sheik said \n"
"and go to " COLOR("\x40") "Kakariko Village" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x014F,
"014f"
);

DECLARE_MESSAGE_NES(0x0150,
COLOR("\x44") "I wonder what's going on in the\n"
"forest right now... I'm worried\n"
"about " COLOR("\x40") "Saria" COLOR("\x44") ", too!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0151,
COLOR("\x44") "That cloud over " COLOR("\x40") "Death Mountain" COLOR("\x44") "...\n"
"there is something strange about \n"
"it..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0152,
COLOR("\x44") "An arctic wind is blowing from\n"
COLOR("\x40") "Zora's River" COLOR("\x44") "...do you feel it?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0153,
COLOR("\x44") "Those " COLOR("\x40") "Iron Boots " COLOR("\x44") "look like\n"
"they weigh a ton! If you wear\n"
"those boots, you may be able to\n"
"walk at the bottom of a lake." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0154,
COLOR("\x44") "Let's look for someone who might\n"
"know something about the other\n"
COLOR("\x40") "Sages" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0155,
COLOR("\x44") "That monster! It came out of the \n"
COLOR("\x40") "well in the village" COLOR("\x44") "! Let's go \n"
"check out the well!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0156,
COLOR("\x44") "I wonder who built the " COLOR("\x40") "Spirit" COLOR("\x44") "\n"
COLOR("\x40") "Temple" COLOR("\x44") ", and for what purpose?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0157,
COLOR("\x44") "Have you ever played the \n"
COLOR("\x45") "Nocturne of Shadow" COLOR("\x44") " that Sheik\n"
"taught you?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0158,
COLOR("\x44") "The " COLOR("\x40") "desert" COLOR("\x44") "...that is where\n"
"Ganondorf the Evil King was born.\n"
"If we go there, we might find\n"
"something..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0159,
"0159"
);

DECLARE_MESSAGE_NES(0x015A,
COLOR("\x44") "Equip the " COLOR("\x40") "Silver Gauntlets \n"
COLOR("\x44") "and try to move things you \n"
"couldn't budge before!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x015B,
COLOR("\x44") "The one who is waiting for us at\n"
"the Temple of Time...it could be..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x015C,
COLOR("\x44") "We have to save Princess Zelda\n"
"from her imprisonment in Ganon's\n"
"Castle!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x015D,
"015D"
);

DECLARE_MESSAGE_NES(0x015E,
"015E"
);

DECLARE_MESSAGE_NES(0x015F,
COLOR("\x44")  NAME "...\n"
"Try to keep moving!!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0160,
"I don't mind talking to you \n"
"using the Ocarina's magic, but\n"
"I'd really like to talk to you\n"
"face-to-face!" EVENT
);

DECLARE_MESSAGE_NES(0x0161,
"The forest is connected to many \n"
"places! If you can hear my song,\n"
"you must be somewhere that is\n"
"connected to the forest!" EVENT
);

DECLARE_MESSAGE_NES(0x0162,
"I was so happy to hear that\n"
"Mr. Darunia loved my song so\n"
"much!"BOX_BREAK"I was even happier to find out\n"
"that it helped you on your quest,\n"
NAME "!\n"
"Tee hee hee!" EVENT
);

DECLARE_MESSAGE_NES(0x0163,
"Are you collecting Spiritual\n"
"Stones? You have one more to\n"
"find? You mean the " COLOR("\x43") "Spiritual \n"
"Stone of Water" COLOR("\x40") ", don't you?"BOX_BREAK"The Great Deku Tree once told me\n"
"that " COLOR("\x43") "King Zora, ruler of Zora's \n"
"Domain, " COLOR("\x40") "has it..." EVENT
);

DECLARE_MESSAGE_NES(0x0164,
"Are you collecting Spiritual\n"
"Stones? You have one more to\n"
"find? You mean the " COLOR("\x41") "Spiritual \n"
"Stone of Fire" COLOR("\x40") ", don't you?"BOX_BREAK"The Great Deku Tree once told me\n"
"that " COLOR("\x41") "Mr. Darunia of the Gorons\n"
COLOR("\x40") "has it..." EVENT
);

DECLARE_MESSAGE_NES(0x0165,
NAME "...\n"
"I don't know what it is...\n"
"I have this feeling of dread..."BOX_BREAK"The Castle...\n"
"Yes, something bad is happening\n"
"at the Castle!" EVENT
);

DECLARE_MESSAGE_NES(0x0166,
"What? Your ocarina sounds...\n"
"different somehow... \n"
"Have you been practicing a lot,\n"
NAME "?" EVENT
);

DECLARE_MESSAGE_NES(0x0167,
"Are you looking for a temple?\n"
"A mysterious bird once told me..."BOX_BREAK"\"" COLOR("\x44") "Eyes that can see through \n"
"darkness will open in a storm." COLOR("\x40") "\"\n"
"Do you have any idea what he \n"
"meant by this?" EVENT
);

DECLARE_MESSAGE_NES(0x0168,
"Where are you, " NAME "?\n"
"Are you looking for a temple?\n"
"I once heard a mysterious bird \n"
"say..."BOX_BREAK"\"" COLOR("\x44") "Go, young man. Go to the\n"
"Desert Goddess with an ocarina." COLOR("\x40") "\"\n"
"Do you have any idea what he\n"
"may have meant by this?" EVENT
);

DECLARE_MESSAGE_NES(0x0169,
"Did you find all the temples yet?" EVENT
);

DECLARE_MESSAGE_NES(0x016A,
"Great! You're safe!\n"
"I knew I would hear from\n"
"you again!"BOX_BREAK"I'm in the " COLOR("\x42") "Forest Temple" COLOR("\x40") "!\n"
"The forest spirits were calling\n"
"for help, so I went to check it\n"
"out..."BOX_BREAK"But it's full of evil monsters!\n"
"Help me, " NAME "!" EVENT
);

DECLARE_MESSAGE_NES(0x016B,
NAME "...\n"
"At first, I didn't want to become \n"
"the " COLOR("\x42") "Sage of the Forest" COLOR("\x40") "...."BOX_BREAK"But I'm glad now."BOX_BREAK"Because I am helping you to save\n"
"Hyrule, " NAME "!\n"
"Yes, I am!" EVENT
);

DECLARE_MESSAGE_NES(0x016C,
"If all six " COLOR("\x41") "Sages" COLOR("\x40") " come together, \n"
"we can imprison Ganondorf, the \n"
"King of Evil, in the Sacred Realm."BOX_BREAK"But, in order to make a perfect\n"
"seal, we need the " COLOR("\x41") "seventh \n"
"Sage" COLOR("\x40") "."BOX_BREAK"Someone you know must be that\n"
"Sage, " NAME "..."BOX_BREAK"From now on, you must travel \n"
"between past and future to\n"
"awaken the remaining Sages!"BOX_BREAK"Keep up the good work,\n"
NAME "!" EVENT
);

DECLARE_MESSAGE_NES(0x016D,
"We, the Six Sages, are channeling\n"
"our power to you!"BOX_BREAK"The destiny of Hyrule depends \n"
"upon you!" EVENT
);

DECLARE_MESSAGE_NES(0x016E,
"016e"
);

DECLARE_MESSAGE_NES(0x016F,
"016f"
);

DECLARE_MESSAGE_NES(0x0180,
UNSKIPPABLE  COLOR("\x44") "I can hear a voice from\n"
"somewhere..." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "It's saying:\n"
COLOR("\x40")  SHIFT("\x11") "\"Collect five silver Rupees...\""
);

DECLARE_MESSAGE_NES(0x0181,
UNSKIPPABLE  COLOR("\x44") "This wall...it's saying something!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "It says:\n"
COLOR("\x40") "If you want to see a ferry to the\n"
SHIFT("\x1E") "other world, come here..."
);

DECLARE_MESSAGE_NES(0x0182,
"0182"
);

DECLARE_MESSAGE_NES(0x0183,
UNSKIPPABLE  COLOR("\x44") "If you want to ride that " COLOR("\x40") "boat" COLOR("\x44") ", be \n"
"careful! It looks very old... Who\n"
"knows when it might sink?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0184,
UNSKIPPABLE  COLOR("\x44") "There is a " COLOR("\x40") "door " COLOR("\x44") "over here... Is \n"
"there any way to get across?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0185,
"0185"
);

DECLARE_MESSAGE_NES(0x0186,
UNSKIPPABLE  COLOR("\x44") "That " COLOR("\x40") "red ice" COLOR("\x44") "...it's so weird!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0187,
"0187"
);

DECLARE_MESSAGE_NES(0x0188,
"0188"
);

DECLARE_MESSAGE_NES(0x0189,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "blue fire" COLOR("\x44") "...it doesn't seem\n"
"natural. Maybe you can use it for\n"
"something?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x018A,
"018a"
);

DECLARE_MESSAGE_NES(0x018B,
"018b"
);

DECLARE_MESSAGE_NES(0x018C,
UNSKIPPABLE  COLOR("\x44") "The " COLOR("\x40") "fires on the torches " COLOR("\x44") "are gone.\n"
"Seems like the ghosts took them \n"
"away!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x018D,
UNSKIPPABLE  COLOR("\x44") "Look, " NAME "! A " COLOR("\x40") "torch" COLOR("\x44") "\n"
"is lit! That's because\n"
"you beat a ghost, isn't it?!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x018E,
"018e"
);

DECLARE_MESSAGE_NES(0x018F,
UNSKIPPABLE  COLOR("\x44") "There are " COLOR("\x40") "arrows " COLOR("\x44") "painted on the \n"
"floor!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0190,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "corridor " COLOR("\x44") "is all twisted!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0191,
UNSKIPPABLE  COLOR("\x44") "Watch for the " COLOR("\x40") "shadows of\n"
"monsters " COLOR("\x44") "that hang from the\n"
"ceiling." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0192,
UNSKIPPABLE  COLOR("\x44") "There's a " COLOR("\x40") "treasure chest" COLOR("\x44") " here." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0193,
"0193"
);

DECLARE_MESSAGE_NES(0x0194,
UNSKIPPABLE  COLOR("\x44") "This...this is the same " COLOR("\x40") "torch" COLOR("\x44") " we\n"
"saw at the entrance to the temple,\n"
"isn't it?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0195,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "torch" COLOR("\x44") " is lit...that means..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0196,
"0196"
);

DECLARE_MESSAGE_NES(0x0197,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "switch" COLOR("\x44") " is frozen!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0198,
UNSKIPPABLE  COLOR("\x44")  NAME ", watch out!\n"
"The ceiling is falling down!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0199,
"0199"
);

DECLARE_MESSAGE_NES(0x019A,
"019a"
);

DECLARE_MESSAGE_NES(0x019B,
"019b"
);

DECLARE_MESSAGE_NES(0x019C,
"019c"
);

DECLARE_MESSAGE_NES(0x019D,
"019d"
);

DECLARE_MESSAGE_NES(0x019E,
"019e"
);

DECLARE_MESSAGE_NES(0x019F,
"019f"
);

DECLARE_MESSAGE_NES(0x01A0,
"01a0"
);

DECLARE_MESSAGE_NES(0x01A1,
"01a1"
);

DECLARE_MESSAGE_NES(0x01A2,
"01a2"
);

DECLARE_MESSAGE_NES(0x01A3,
UNSKIPPABLE  COLOR("\x44")  NAME ", I hear " COLOR("\x40") "Goron \n"
"voices " COLOR("\x44") "down below." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x01A4,
"01a4"
);

DECLARE_MESSAGE_NES(0x01A5,
UNSKIPPABLE  COLOR("\x44") "You can see down from here...\n"
"Isn't that the room where we saw\n"
COLOR("\x40") "Darunia" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x01A6,
"01a6"
);

DECLARE_MESSAGE_NES(0x01A7,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "statue" COLOR("\x44") "...haven't we seen it\n"
"somewhere before?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x01A8,
"01a8"
);

DECLARE_MESSAGE_NES(0x01A9,
UNSKIPPABLE  COLOR("\x44") "This " COLOR("\x40") "switch " COLOR("\x44") "looks rusted." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x01AA,
"01aa"
);

DECLARE_MESSAGE_NES(0x01AB,
UNSKIPPABLE  COLOR("\x44")  NAME "! Be careful!\n"
"Don't get swallowed by the \n"
"vortexes!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x01AC,
"01ac"
);

DECLARE_MESSAGE_NES(0x01AD,
"01ad"
);

DECLARE_MESSAGE_NES(0x01AE,
"01ae"
);

DECLARE_MESSAGE_NES(0x01AF,
"01af"
);

DECLARE_MESSAGE_NES(0x01B0,
"01b0"
);

DECLARE_MESSAGE_NES(0x01B1,
"01B1"
);

DECLARE_MESSAGE_NES(0x0200,
SHIFT("\x0F") "Hi! I'm a talking door!"
);

DECLARE_MESSAGE_NES(0x0201,
SHIFT("\x06")  COLOR("\x44") "Strange...this door doesn't open..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0202,
SHIFT("\x04")  COLOR("\x44") "Strong " COLOR("\x40") "iron bars " COLOR("\x44") "are blocking the\n"
COLOR("\x40")  SHIFT("\x0B")  COLOR("\x44") "door. You can't open them with\n"
COLOR("\x40")  SHIFT("\x40")  COLOR("\x44") "your hands!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0203,
SHIFT("\x09")  COLOR("\x44") "You need a " COLOR("\x40") "Key" COLOR("\x44") " to open a door\n"
COLOR("\x40")  SHIFT("\x14")  COLOR("\x44") "that is locked and chained." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0204,
SHIFT("\x21")  COLOR("\x44") "You need a " COLOR("\x40") "special key\n"
SHIFT("\x28")  COLOR("\x44") "to open this door." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0205,
QUICKTEXT_ENABLE "Be quiet!" QUICKTEXT_DISABLE BOX_BREAK"It's only " TIME "!\n"
"I, " COLOR("\x41") "Dampé " COLOR("\x40") "the gravekeeper, am\n"
"in bed now!"BOX_BREAK"Go away and play! Maybe you can\n"
"find a ghost in the daytime?"
);

DECLARE_MESSAGE_NES(0x0206,
"It's " TIME " now.\n"
"The " COLOR("\x41") "Gravedigging Tour" COLOR("\x40") " is over \n"
"now!"BOX_BREAK"I, " COLOR("\x41") "Dampé" COLOR("\x40") " the gravekeeper, am\n"
"in bed!"BOX_BREAK"Go away and play! Maybe you'll\n"
"find a ghost!"
);

DECLARE_MESSAGE_NES(0x0207,
QUICKTEXT_ENABLE  COLOR("\x44") "Happy Mask Shop\n"
COLOR("\x40") "Please read this sign before you\n"
"use this shop." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x41") "How This Shop Works\n"
COLOR("\x40") "We do not sell masks at this shop.\n"
"We just " COLOR("\x41") "lend" COLOR("\x40") " them to you." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "You sell the loaned masks on your\n"
"own." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "You pay back the " COLOR("\x41") "money" COLOR("\x40") " for the\n"
"mask, and we will lend you a \n"
"newer model." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "You can borrow masks you have\n"
"already sold again; however, you \n"
"can sell each model of mask only\n"
"once." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Please try our shop!\n"
SHIFT("\x14") "--Happy Mask Shop Owner" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0208,
"Shadow Temple...\n"
"Here is gathered Hyrule's bloody \n"
"history of greed and hatred..." EVENT
);

DECLARE_MESSAGE_NES(0x0209,
"What is hidden in the darkness...\n"
"Tricks full of ill will...\n"
"You can't see the way forward..." EVENT
);

DECLARE_MESSAGE_NES(0x020A,
"One who gains the " COLOR("\x41") "eye of truth\n"
COLOR("\x40") "will be able to see what is hidden\n"
"in the darkness." EVENT
);

DECLARE_MESSAGE_NES(0x020B,
COLOR("\x44") "Something strange is covering the\n"
"entrance. You must solve the\n"
COLOR("\x40") "puzzle" COLOR("\x44") " in this room to make the\n"
"entrance open." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x020C,
QUICKTEXT_ENABLE "Giant dead Dodongo...\n"
"when it sees red,\n"
"a new way to go \n"
"will be open." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x020D,
SHIFT("\x1E")  COLOR("\x44") "Treasure Chest Contest\n"
COLOR("\x40")  SHIFT("\x2D") "Temporarily Closed\n"
SHIFT("\x38") "Open Tonight!"
);

DECLARE_MESSAGE_NES(0x020E,
COLOR("\x44") "Medicine Shop\n"
COLOR("\x40") "Closed until morning"
);

DECLARE_MESSAGE_NES(0x020F,
COLOR("\x44") "Shooting Gallery\n"
COLOR("\x40") "Open only during the day"
);

DECLARE_MESSAGE_NES(0x0210,
COLOR("\x44") "Happy Mask Shop\n"
COLOR("\x40") "Now hiring part-time\n"
"Apply during the day"
);

DECLARE_MESSAGE_NES(0x0211,
COLOR("\x44") "Bazaar\n"
COLOR("\x40") "Open only during the day"
);

DECLARE_MESSAGE_NES(0x0212,
"Show me the light!"
);

DECLARE_MESSAGE_NES(0x0213,
QUICKTEXT_ENABLE "One with the " COLOR("\x41") "eye of truth " COLOR("\x40") "shall\n"
"be guided to the Spirit Temple by\n"
"an inviting ghost." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0214,
QUICKTEXT_ENABLE "Those who wish to open the path\n"
"sleeping at the bottom of the lake\n"
"must play the " COLOR("\x41") "song passed down\n"
"by the Royal Family" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0215,
QUICKTEXT_ENABLE "Those who wish to open the gate\n"
"on the far heights, play the " COLOR("\x41") "song\n"
"passed down by the Royal Family" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0216,
"Those who find a " COLOR("\x41") "Small Key" COLOR("\x40") " can\n"
"advance to the next room. Those\n"
"who don't can go home!"
);

DECLARE_MESSAGE_NES(0x0217,
"If you wish to speak to me,\n"
"do so from the platform." EVENT
);

DECLARE_MESSAGE_NES(0x0218,
UNSKIPPABLE  SFX("\x68\x6D")  QUICKTEXT_ENABLE "Hi, " NAME "!" QUICKTEXT_DISABLE "\n"
"Look this way!"BOX_BREAK"Look over here with " COLOR("\x44") "[Z]" COLOR("\x40") ", and talk \n"
"to me with " COLOR("\x43") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x0219,
"The current time is: " COLOR("\x41")  TIME  COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x021A,
"Shine light on the living dead..."
);

DECLARE_MESSAGE_NES(0x021B,
"Those who break into the Royal \n"
"Tomb will be obstructed by the\n"
COLOR("\x41") "lurkers in the dark" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x021C,
"Hey, you! Young man, over there!\n"
"Look over here, inside the cell!" EVENT
);

DECLARE_MESSAGE_NES(0x021D,
"My little boy isn't here right \n"
"now...\n"
"I think he went to play in the \n"
"graveyard..."
);

DECLARE_MESSAGE_NES(0x021E,
"Oh, my boy is asleep right now.\n"
"Please come back some other time\n"
"to play with him!"
);

DECLARE_MESSAGE_NES(0x021F,
QUICKTEXT_ENABLE "When water fills the lake, \n"
"shoot for the morning light." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0220,
QUICKTEXT_ENABLE "If you want to travel to the \n"
"future, you should return here \n"
"with the " COLOR("\x43") "power of silver " COLOR("\x40") "from the \n"
"past." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0221,
QUICKTEXT_ENABLE "If you want to proceed to the \n"
"past, you should return here\n"
"with the pure heart of a child." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0222,
QUICKTEXT_ENABLE "This door is currently being\n"
"refurbished." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0223,
QUICKTEXT_ENABLE "It looks like something used to\n"
"be set in this stand..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0224,
QUICKTEXT_ENABLE  SHIFT("\x20") "Make my beak face the\n"
SHIFT("\x3A")  COLOR("\x41") "skull of truth" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x0C") "The alternative is descent into\n"
SHIFT("\x2D") "the deep darkness." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x0225,
COLOR("\x44") "This is not the correct " COLOR("\x40") "key" COLOR("\x44") "...\n"
"The door won't open!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0226,
QUICKTEXT_ENABLE  SHIFT("\x27")  COLOR("\x44") "Granny's Potion Shop\n"
COLOR("\x40")  SHIFT("\x4F") "Closed" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x28") "Gone for Field Study\n"
SHIFT("\x28") "Please come again!\n"
SHIFT("\x4A") "--Granny" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0227,
QUICKTEXT_ENABLE "Who's there? What a bad kid,\n"
"trying to enter from the rear\n"
"door!" QUICKTEXT_DISABLE BOX_BREAK
TEXT_SPEED("\x02") "Such a bad kid..." TEXT_SPEED("\x00") "\n"
"I have to tell you some juicy\n"
"gossip!"BOX_BREAK"The boss carpenter has a son...\n"
"He's the guy who sits under the\n"
"tree every night..."BOX_BREAK"Don't tell the boss I told you \n"
"that!"
);

DECLARE_MESSAGE_NES(0x0228,
COLOR("\x44") "Look at this!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0229,
"Malon's gone to sleep!\n"
"I'm goin' to sleep now, too.\n"
"Come back again when it's\n"
"light out!"
);

DECLARE_MESSAGE_NES(0x022A,
QUICKTEXT_ENABLE  COLOR("\x41")  NAME "'s Records!\n"
COLOR("\x40") "Spiders squished: " TOKENS "\n"
"Largest fish caught: " HIGHSCORE("\x02") " pounds" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Marathon time: " HIGHSCORE("\x04") "\n"
"Horse race time: " HIGHSCORE("\x03") "\n"
"Horseback archery: " HIGHSCORE("\x00") " points" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x022B,
QUICKTEXT_ENABLE  SHIFT("\x06") "The crest of the Royal Family of\n"
SHIFT("\x1E") "Hyrule is inscribed here." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x022C,
QUICKTEXT_ENABLE  SHIFT("\x54") "R.I.P.\n"
SHIFT("\x08") "Here lie the souls of those who\n"
SHIFT("\x2A") "swore fealty to the\n"
SHIFT("\x23") "Royal Family of Hyrule" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x0F") "The Sheikah, guardians of the\n"
SHIFT("\x11") "Royal Family and founders of\n"
SHIFT("\x02") "Kakariko, watch over these spirits\n"
SHIFT("\x1E") "in their eternal slumber." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x022D,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x43") "Sleepless Waterfall\n"
COLOR("\x40")  SHIFT("\x05") "The flow of this waterfall serves\n"
SHIFT("\x02") "the King of Hyrule. When the King\n"
SHIFT("\x09") "slumbers, so too do these falls." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x022E,
"Some frogs are looking at you\n"
"from underwater..."
);

DECLARE_MESSAGE_NES(0x022F,
"You're standing on a soft carpet\n"
"for guests...\n"
"It feels so plush under your feet!"
);

DECLARE_MESSAGE_NES(0x0230,
"If you can overcome the " COLOR("\x41") "trials " COLOR("\x40") "in\n"
"the chambers ahead, then and only\n"
"then will you be qualified to hold\n"
"our secret treasure!"
);

DECLARE_MESSAGE_NES(0x0231,
"If you desire to acquire our\n"
"hidden treasure, you must strive\n"
"to obtain the " COLOR("\x41") "keys " COLOR("\x40") "hidden in each\n"
"chamber!"
);

DECLARE_MESSAGE_NES(0x0232,
"Defeat all the enemies in a " COLOR("\x41") "limited\n"
"time" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0233,
"Collect the " COLOR("\x41") "underwater gems" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0234,
"Cross the sea of fire!"
);

DECLARE_MESSAGE_NES(0x0235,
"Find a secret passage in this\n"
"room!"
);

DECLARE_MESSAGE_NES(0x0236,
"Blind the " COLOR("\x41") "eyes of the statue" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0237,
"One with " COLOR("\x41") "silver hands" COLOR("\x40") " shall move\n"
"a giant block!"
);

DECLARE_MESSAGE_NES(0x0238,
"Without the necessary items, one\n"
"will be confounded by impossible\n"
"mysteries."
);

DECLARE_MESSAGE_NES(0x0239,
"Gather the " COLOR("\x41") "jewels of white" COLOR("\x40") ", while\n"
"avoiding traps and danger!"
);

DECLARE_MESSAGE_NES(0x023A,
QUICKTEXT_ENABLE  SHIFT("\x3F")  COLOR("\x44") "Fishing Pond" COLOR("\x40") "\n"
SHIFT("\x07") "The fish are really biting today!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x023B,
SHIFT("\x4E")  COLOR("\x44") "....???" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x023C,
QUICKTEXT_ENABLE  SHIFT("\x05") "The Shadow will yield only to one\n"
SHIFT("\x0E") "with the " COLOR("\x41") "eye of truth" COLOR("\x40") ", handed\n"
SHIFT("\x1C") "down in Kakariko Village." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0300,
BACKGROUND("\x00", "\x01", "\x10")
);

DECLARE_MESSAGE_NES(0x0301,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x44") "Hyrule Field" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0302,
QUICKTEXT_ENABLE  SHIFT("\x2C")  COLOR("\x44") "Hyrule Castle Town" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0303,
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x44") "The Temple of Time" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0304,
QUICKTEXT_ENABLE  SHIFT("\x47")  COLOR("\x41") "Dead End" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0305,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x45") "Kakariko Village\n"
COLOR("\x40")  SHIFT("\x28") "Death Mountain Trail\n"
SHIFT("\x3C") "Starting Point" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0306,
QUICKTEXT_ENABLE  SHIFT("\x17")  COLOR("\x45") "Kakariko Village Graveyard" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0307,
QUICKTEXT_ENABLE  SHIFT("\x23") "Dark! Narrow! Scary!\n"
COLOR("\x45")  SHIFT("\x1E") "Well of Three Features" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0308,
QUICKTEXT_ENABLE  SHIFT("\x36")  COLOR("\x41") "Death Mountain\n"
COLOR("\x40")  SHIFT("\x25") "No passage without a\n"
SHIFT("\x3A") "Royal Decree!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0309,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x41") "Death Mountain Trail" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030A,
QUICKTEXT_ENABLE  SHIFT("\x36")  COLOR("\x46") "Dodongo's Cavern\n"
COLOR("\x40")  SHIFT("\x0A") "Don't enter without permission!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030B,
QUICKTEXT_ENABLE  SHIFT("\x28") "Land of the Gorons\n"
SHIFT("\x41")  COLOR("\x41") "Goron City" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030C,
QUICKTEXT_ENABLE  SHIFT("\x48")  COLOR("\x43") "Zora's River\n"
COLOR("\x40")  SHIFT("\x0F") "Watch out for swift current \n"
SHIFT("\x23") "and strong undertow." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030D,
QUICKTEXT_ENABLE  SHIFT("\x05") "The Shadow will yield only to one\n"
SHIFT("\x0E") "with the eye of truth, handed\n"
SHIFT("\x1C") "down in Kakariko Village." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030E,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x43") "Zora's Domain" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x030F,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x43") "Zora's Fountain\n"
COLOR("\x40")  SHIFT("\x08") "Don't disturb Lord Jabu-Jabu! \n"
SHIFT("\x32") "--King Zora XVI" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0310,
QUICKTEXT_ENABLE  SHIFT("\x23")  COLOR("\x45") "Forest Training Center\n"
COLOR("\x40")  SHIFT("\x15") "Don't recklessly cut signs--\n"
SHIFT("\x28") "read them carefully!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0311,
QUICKTEXT_ENABLE  SHIFT("\x12") "All those reckless enough to\n"
SHIFT("\x0B") "venture into the desert--please\n"
SHIFT("\x2F") "drop by our shop." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x46") "Carpet Merchant" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0312,
QUICKTEXT_ENABLE  SHIFT("\x41") "Just ahead:\n"
SHIFT("\x17")  COLOR("\x42") "Great Deku Tree's Meadow" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0313,
QUICKTEXT_ENABLE  SHIFT("\x39")  COLOR("\x42") "Forest Temple" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0314,
QUICKTEXT_ENABLE  SHIFT("\x35")  COLOR("\x42") "The Lost Woods" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0315,
QUICKTEXT_ENABLE  SHIFT("\x2E") "Talon and Malon's\n"
SHIFT("\x3C")  COLOR("\x46") "Lon Lon Ranch" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0316,
QUICKTEXT_ENABLE  SHIFT("\x33") "The Great Ingo's\n"
SHIFT("\x46")  COLOR("\x46") "Ingo Ranch" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0317,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x43") "Lake Hylia" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0318,
QUICKTEXT_ENABLE  SHIFT("\x1E")  COLOR("\x43") "Lakeside Laboratory\n"
COLOR("\x40")  SHIFT("\x04") "Daily trying to get to the bottom\n"
SHIFT("\x09") "of the mysteries of Lake Hylia!\n"
SHIFT("\x36") "--Lake Scientist" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0319,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x46") "Gerudo Valley" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031A,
QUICKTEXT_ENABLE  SHIFT("\x19")  COLOR("\x46") "Horseback Archery Range" COLOR("\x40") "\n"
SHIFT("\x12") "Skilled players are welcome!\n"
SHIFT("\x12") "Current record: " COLOR("\x41")  HIGHSCORE("\x00")  COLOR("\x40") " Points" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031B,
QUICKTEXT_ENABLE  SHIFT("\x21")  COLOR("\x46") "Gerudo Training Ground\n"
COLOR("\x40")  SHIFT("\x11") "Only registered members are\n"
SHIFT("\x4B") "allowed!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031C,
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x46") "Haunted Wasteland" COLOR("\x40") "\n"
SHIFT("\x17") "If you chase a mirage, the\n"
SHIFT("\x1F") "desert will swallow you.\n"
SHIFT("\x21") "Only one path is true!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031D,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x46") "Spirit Temple" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031E,
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x42") "Kokiri Shop\n"
COLOR("\x40")  SHIFT("\x0B") "We have original forest goods!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x031F,
QUICKTEXT_ENABLE  SHIFT("\x1E")  NAME "'s House" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0320,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x42") "Forest folk shall not\n"
COLOR("\x40")  SHIFT("\x2D")  COLOR("\x42") "leave these woods." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0321,
QUICKTEXT_ENABLE  SHIFT("\x03") "Follow the trail along the edge of\n"
SHIFT("\x15") "the cliff and you will reach\n"
SHIFT("\x06")  COLOR("\x41") "Goron City" COLOR("\x40") ", home of the Gorons." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0322,
QUICKTEXT_ENABLE  SHIFT("\x36") "Natural Wonder\n"
SHIFT("\x3F")  COLOR("\x41") "Bomb Flower" COLOR("\x40") "\n"
SHIFT("\x1E") "Danger! Do not uproot!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0323,
QUICKTEXT_ENABLE  SHIFT("\x26")  COLOR("\x41") "Death Mountain Summit\n"
COLOR("\x40")  SHIFT("\x10") "Entrance to the crater ahead\n"
SHIFT("\x1E") "Beware of intense heat!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0324,
QUICKTEXT_ENABLE  SHIFT("\x1D")  COLOR("\x43") "King Zora's Throne Room\n"
COLOR("\x40")  SHIFT("\x1E") "To hear the King's royal\n"
SHIFT("\x15") "proclamations, stand on the\n"
SHIFT("\x17") "platform and speak to him." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0325,
QUICKTEXT_ENABLE  SHIFT("\x0A") "If you can stop my wild rolling,\n"
SHIFT("\x0B") "you might get something great.\n"
SHIFT("\x29") "--" COLOR("\x41") "Hot Rodder Goron" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0326,
QUICKTEXT_ENABLE  SHIFT("\x0A") "Only one with the eye of truth\n"
SHIFT("\x15") "will find the stone umbrella\n"
SHIFT("\x1A") "that protects against the\n"
SHIFT("\x39") "rain of blades." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0327,
QUICKTEXT_ENABLE  SHIFT("\x0A") "Only one who has " COLOR("\x41") "sacred feet" COLOR("\x40") "\n"
SHIFT("\x04") "can cross the valley of the dead." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0328,
QUICKTEXT_ENABLE "The record time of those\n"
"who raced against me was:\n"
COLOR("\x44")  HIGHSCORE("\x06")  COLOR("\x40") "\n"
"--Dampé the Gravekeeper" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0329,
QUICKTEXT_ENABLE  COLOR("\x44") "Shooting Gallery  \n"
"20 Rupees for one play\n"
COLOR("\x40") "There are " COLOR("\x41") "10 targets" COLOR("\x40") ". You have " COLOR("\x41") "15\n"
"chances" COLOR("\x40") ". Hit all 10 targets!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Hit 10 targets -- Perfect Prize\n"
"Hit 8 or more -- Free Retry\n"
"Hit less than 8 -- Game Over" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x44") "Rules at this Shooting Gallery\n"
COLOR("\x40") "Don't lean on the counter.\n"
"Don't disturb other customers." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x032A,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x44") "Treasure Chest Shop" COLOR("\x40") "\n"
SHIFT("\x06") "We don't necessarily sell them..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x032B,
QUICKTEXT_ENABLE  SHIFT("\x1F")  COLOR("\x44") "High Dive Practice Spot\n"
COLOR("\x40")  SHIFT("\x2F") "Are you confident\n"
SHIFT("\x2A") "in your diving skill?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x032C,
"032c"
);

DECLARE_MESSAGE_NES(0x032D,
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x41") "Mountain Summit" COLOR("\x40") "\n"
SHIFT("\x19") "Danger Ahead - Keep Out" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x032E,
QUICKTEXT_ENABLE  SHIFT("\x2E")  COLOR("\x44") "Happy Mask Shop!" COLOR("\x40") "\n"
SHIFT("\x28") "Now hiring happiness\n"
SHIFT("\x3C") "delivery men!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x032F,
QUICKTEXT_ENABLE  SHIFT("\x23")  COLOR("\x44") "Bombchu Bowling Alley" COLOR("\x40") "\n"
SHIFT("\x20") "You can experience the\n"
SHIFT("\x17") "latest in Bomb technology!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0330,
QUICKTEXT_ENABLE  SHIFT("\x50")  COLOR("\x44") "Bazaar" COLOR("\x40") "\n"
SHIFT("\x0A") "We have a little of everything!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0331,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x44") "Potion Shop\n"
COLOR("\x40")  SHIFT("\x1B") "We have the best quality\n"
SHIFT("\x4A") "potions!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0332,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x41") "Goron Shop\n"
COLOR("\x40")  SHIFT("\x1E") "Mountaineering Supplies!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0333,
QUICKTEXT_ENABLE  SHIFT("\x45")  COLOR("\x43") "Zora Shop" COLOR("\x40") "\n"
SHIFT("\x28") "We have fresh fish!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0334,
QUICKTEXT_ENABLE  SHIFT("\x03")  COLOR("\x44") "Heart-Pounding Gravedigging Tour!\n"
COLOR("\x40")  SHIFT("\x08") "From 18:00 to 21:00 Hyrule Time\n"
SHIFT("\x1C") "--Dampé the Gravekeeper" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0335,
QUICKTEXT_ENABLE  SHIFT("\x03")  COLOR("\x44") "Heart-Pounding Gravedigging Tour!\n"
COLOR("\x40")  SHIFT("\x0A") "Tours are " COLOR("\x41") "cancelled" COLOR("\x40") " until a new\n"
SHIFT("\x1B") "gravekeeper is found. We\n"
SHIFT("\x09") "apologize for any inconvenience." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0336,
QUICKTEXT_ENABLE  COLOR("\x45") "Thrust Attack Signs!\n"
COLOR("\x40") "To thrust with your sword, press\n"
COLOR("\x44") "[Control Stick]" COLOR("\x40") " toward your target while \n"
COLOR("\x44") "[Z] Targeting" COLOR("\x40") ", then press " COLOR("\x42") "[B]" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0337,
QUICKTEXT_ENABLE  COLOR("\x45") "Hole of \"Z\"\n"
COLOR("\x40") "Let's go through this small\n"
"hole!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Stand in front of the hole and\n"
"push " COLOR("\x44") "[Control Stick] " COLOR("\x40") "towards it. When the \n"
COLOR("\x43") "Action Icon " COLOR("\x40") "shows \"Enter,\" press\n"
COLOR("\x43") "[A] " COLOR("\x40") "to crawl into the hole." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Pay attention to what the " COLOR("\x43") "Action\n"
"Icon " COLOR("\x40") "says!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0338,
QUICKTEXT_ENABLE  COLOR("\x45") "Cut Grass With Your Sword\n"
COLOR("\x40") "If you just swing with " COLOR("\x42") "[B]" COLOR("\x40") ", you'll \n"
"cut horizontally. If you hold " COLOR("\x44") "[Z]" COLOR("\x40") " as" COLOR("\x44") " \n"
COLOR("\x40") "you swing, you'll cut vertically." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0339,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x44") "Hyrule Castle" COLOR("\x40") "\n"
SHIFT("\x37")  COLOR("\x46") "Lon Lon Ranch" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033A,
QUICKTEXT_ENABLE  SHIFT("\x13") "You are here: " COLOR("\x44") "Hyrule Castle" COLOR("\x40") "\n"
SHIFT("\x16") "This way to " COLOR("\x46") "Lon Lon Ranch" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033B,
QUICKTEXT_ENABLE  SHIFT("\x42") "Just Ahead\n"
SHIFT("\x29")  COLOR("\x43") "King Zora's Chamber\n"
COLOR("\x40")  SHIFT("\x19") "Show the proper respect!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033C,
QUICKTEXT_ENABLE  SHIFT("\x19") "House of the Great " COLOR("\x41") "Mido" COLOR("\x40") "\n"
SHIFT("\x2D") "Boss of the Kokiri" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033D,
QUICKTEXT_ENABLE  SHIFT("\x04") "House of the Know-it-All Brothers" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033E,
QUICKTEXT_ENABLE  SHIFT("\x37") "House of Twins" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x033F,
QUICKTEXT_ENABLE  SHIFT("\x3D")  COLOR("\x41") "Saria" COLOR("\x40") "'s House" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0340,
QUICKTEXT_ENABLE  COLOR("\x45") "View Point with [Z] Targeting\n"
COLOR("\x40") "When you have no object to look\n"
"at, you can just look forward\n"
"with " COLOR("\x44") "[Z]" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Stop moving and then change the\n"
"direction you are facing, or " COLOR("\x44") "hold\n"
"down [Z] " COLOR("\x40") "for a little while." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "This can help you get oriented in\n"
"the direction you want to face.\n"
"It's quite convenient!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "If " COLOR("\x44") "you hold down [Z]" COLOR("\x40") ", you can\n"
COLOR("\x41") "walk sideways" COLOR("\x40") " while facing \n"
"straight ahead." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x41") "Walking sideways" COLOR("\x40") " can be a very\n"
"important technique in dungeon\n"
"corridors. Turn around and try\n"
"doing this right now." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0341,
QUICKTEXT_ENABLE  COLOR("\x41") "Stepping Stones in the Pond\n"
COLOR("\x40") "If you boldly go in the direction\n"
"you want to jump, you will leap\n"
"automatically." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "If you hop around on the stones,\n"
"you'll become happier!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0342,
QUICKTEXT_ENABLE  SHIFT("\x2F")  COLOR("\x41") "No Diving Allowed\n"
COLOR("\x40")  SHIFT("\x15") "--It won't do you any good!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0343,
QUICKTEXT_ENABLE  COLOR("\x45") "Switch Targeting\n"
COLOR("\x40") "If you see a " COLOR("\x42") "▼" COLOR("\x40") " icon above an \n"
"object, you can target it with " COLOR("\x44") "[Z]" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "In other words, if you press " COLOR("\x44") "[Z]" COLOR("\x40") " \n"
"when you see " COLOR("\x42") "▼" COLOR("\x46") " " COLOR("\x40") "above an object,\n"
"you can lock on to it." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "If you press " COLOR("\x44") "[Z]" COLOR("\x40") " again, the lock\n"
"will either " COLOR("\x41") "release" COLOR("\x40") " or it will\n"
"transfer to the next object with\n"
"the " COLOR("\x42") "▼" COLOR("\x40") " above it." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "When you have many enemies in\n"
"your field of view and you want\n"
"to escape, press " COLOR("\x44") "[Z] " COLOR("\x40") "while holding\n"
"back on " COLOR("\x44") "[Control Stick]" COLOR("\x40") " to cancel targeting." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "You can target the " COLOR("\x41") "stones" COLOR("\x40") " next to\n"
"this sign for practice!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0344,
QUICKTEXT_ENABLE  SHIFT("\x3D")  COLOR("\x42") "Forest Stage" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x14") "We are waiting to see your\n"
SHIFT("\x38") "beautiful face!\n"
SHIFT("\x28") "Win fabulous prizes!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0345,
QUICKTEXT_ENABLE  SHIFT("\x48") "Visit the\n"
SHIFT("\x04")  COLOR("\x41") "House of the Know-it-All Brothers\n"
COLOR("\x40")  SHIFT("\x17") "to get answers to all your\n"
SHIFT("\x22") "item-related questions!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0400,
"This is a " COLOR("\x41") "Gossip Stone" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x0401,
"They say that you can swim faster\n"
"by continuously pressing " COLOR("\x42") "[B]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x0402,
"They say that there is a secret \n"
"near the lone tree which is not\n"
"far from the river in the \n"
"northwest part of Hyrule Field."
);

DECLARE_MESSAGE_NES(0x0403,
"They say that there is a secret\n"
"on the road that leads to Lake\n"
"Hylia."
);

DECLARE_MESSAGE_NES(0x0404,
"They say that Biggoron's Sword is \n"
"super sharp and will never break."
);

DECLARE_MESSAGE_NES(0x0405,
"They say that Medigoron didn't \n"
"really think about his own size, \n"
"so his store is really cramped."
);

DECLARE_MESSAGE_NES(0x0406,
"They say that Malon set the\n"
"original record in the obstacle\n"
"course of Lon Lon Ranch."
);

DECLARE_MESSAGE_NES(0x0407,
"They say that Malon of Lon Lon \n"
"Ranch hopes a knight in shining \n"
"armor will come and sweep her off \n"
"her feet someday."
);

DECLARE_MESSAGE_NES(0x0408,
"They say that Ruto, the Zora \n"
"Princess who is known for her \n"
"selfish nature, likes a certain \n"
"boy..."
);

DECLARE_MESSAGE_NES(0x0409,
"They say that players who select\n"
"the \"HOLD\" option for \"Z \n"
"TARGETING\" are the real \"Zelda\n"
"players!\""
);

DECLARE_MESSAGE_NES(0x040A,
"They say that there is a secret\n"
"near a tree in Kakariko Village."
);

DECLARE_MESSAGE_NES(0x040B,
"They say that, contrary to her \n"
"elegant image, Princess Zelda of \n"
"Hyrule Castle is, in fact, a \n"
"tomboy!"
);

DECLARE_MESSAGE_NES(0x040C,
"They say that Princess Zelda's \n"
"nanny is actually one of the \n"
"Sheikah, who many thought had \n"
"died out."
);

DECLARE_MESSAGE_NES(0x040D,
"They say that there is a man who\n"
"can always be found running\n"
"around in Hyrule Field."
);

DECLARE_MESSAGE_NES(0x040E,
"They say that it is against the\n"
"rules to use glasses at the \n"
"Treasure Chest Shop in Hyrule\n"
"Castle Town Market."
);

DECLARE_MESSAGE_NES(0x040F,
"They say that the Chicken Lady \n"
"goes to the Lakeside Laboratory \n"
"to study how to breed pocket-\n"
"sized Cuccos."
);

DECLARE_MESSAGE_NES(0x0410,
"They say that Gerudos sometimes\n"
"come to Hyrule Castle Town to\n"
"look for boyfriends."
);

DECLARE_MESSAGE_NES(0x0411,
"They say that the thief named \n"
"Nabooru, who haunts this area, is\n"
"a Gerudo."
);

DECLARE_MESSAGE_NES(0x0412,
"They say that if you get close to a\n"
"butterfly while holding a Deku\n"
"Stick in your hands, something\n"
"good will happen."
);

DECLARE_MESSAGE_NES(0x0413,
"They say that you may find\n"
"something new in dungeons that\n"
"you have already finished."
);

DECLARE_MESSAGE_NES(0x0414,
"They say that Gerudos worship \n"
"Ganondorf almost like a god."
);

DECLARE_MESSAGE_NES(0x0415,
"They say that there is a secret \n"
"around the entrance to Gerudo \n"
"Valley."
);

DECLARE_MESSAGE_NES(0x0416,
"They say that the owl named\n"
"Kaepora Gaebora is the\n"
"reincarnation of an ancient Sage."
);

DECLARE_MESSAGE_NES(0x0417,
"They say that strange owl,\n"
"Kaepora Gaebora, may look big and\n"
"heavy, but its character is rather \n"
"lighthearted."
);

DECLARE_MESSAGE_NES(0x0418,
"They say that the horse\n"
"Ganondorf rides is a solid black\n"
"Gerudo stallion."
);

DECLARE_MESSAGE_NES(0x0419,
"They say that Ganondorf is not \n"
"satisfied with ruling only the\n"
"Gerudo and aims to conquer all\n"
"of Hyrule!"
);

DECLARE_MESSAGE_NES(0x041A,
"They say that the treasure you\n"
"can earn in the Gerudo's Training\n"
"Ground is not as great as you\n"
"would expect, given its difficulty!"
);

DECLARE_MESSAGE_NES(0x041B,
"They say that there is a switch \n"
"that you can activate only by\n"
"using the Spin Attack."
);

DECLARE_MESSAGE_NES(0x041C,
"They say that it's possible to find\n"
"a total of 100 Gold Skulltulas\n"
"throughout Hyrule."
);

DECLARE_MESSAGE_NES(0x041D,
"They say that when non-fairy\n"
"folk enter the Lost Woods, they\n"
"become monsters!"
);

DECLARE_MESSAGE_NES(0x041E,
"They say that the small holes in\n"
"the ground that you can find all\n"
"over Hyrule make perfect breeding\n"
"ground for bugs."
);

DECLARE_MESSAGE_NES(0x041F,
"They say that the Kokiri are \n"
"always followed by small fairies."
);

DECLARE_MESSAGE_NES(0x0420,
"They say that one Kokiri has left\n"
"the forest, but he is still\n"
"alive!"
);

DECLARE_MESSAGE_NES(0x0421,
"0421"
);

DECLARE_MESSAGE_NES(0x0600,
QUICKTEXT_ENABLE  COLOR("\x41") "What's that?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0601,
QUICKTEXT_ENABLE "Gohma\n"
COLOR("\x44") "It's one of the parasitic monsters\n"
"inside the Deku Tree! Its " COLOR("\x40") "eye" COLOR("\x44") " is\n"
"vulnerable when it's red!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0602,
QUICKTEXT_ENABLE "Gohma Egg\n"
COLOR("\x44") "When this egg hatches, a Gohma\n"
"Larva will be born." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0603,
QUICKTEXT_ENABLE "Gohma Larva\n"
COLOR("\x44") "Look out when it gets ready to\n"
"pounce!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0604,
QUICKTEXT_ENABLE "Skulltula\n"
COLOR("\x44") "Its soft " COLOR("\x40") "belly" COLOR("\x44") " is its weak point!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0605,
QUICKTEXT_ENABLE "Big Skulltula\n"
COLOR("\x44") "Its soft " COLOR("\x40") "belly" COLOR("\x44") " is its weak point!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0606,
QUICKTEXT_ENABLE "Tailpasaran\n"
COLOR("\x44") "Its " COLOR("\x40") "tail " COLOR("\x44") "is its weak point!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0607,
QUICKTEXT_ENABLE "Deku Baba\n"
COLOR("\x44") "Hit it when it lunges at you, and \n"
"it will stand upright. Cut it\n"
"quickly to get a " COLOR("\x40") "Deku Stick" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0608,
QUICKTEXT_ENABLE "Big Deku Baba\n"
COLOR("\x44") "Hit it when it lunges at you, and \n"
"it will stand upright. Cut it\n"
"quickly to get a " COLOR("\x40") "Deku Stick" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0609,
QUICKTEXT_ENABLE "Deku Baba\n"
COLOR("\x44") "Though it looks withered, it will\n"
"hurt you if you touch it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x060A,
QUICKTEXT_ENABLE "Deku Scrub\n"
COLOR("\x44") "It will hide in the grass if you get\n"
"close to it. Bounce the nuts it \n"
"spits back at it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x060B,
"060b"
);

DECLARE_MESSAGE_NES(0x060C,
QUICKTEXT_ENABLE "King Dodongo\n"
COLOR("\x44") "This is a huge Dodongo that eats\n"
"anything! Give it a shock, and \n"
"finish it off with your " COLOR("\x40") "sword" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x060D,
QUICKTEXT_ENABLE "Dodongo\n"
COLOR("\x44") "Watch out for its fiery breath!\n"
"Use " COLOR("\x40") "[Z] Targeting " COLOR("\x44") "techniques!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x060E,
QUICKTEXT_ENABLE "Baby Dodongo\n"
COLOR("\x44") "Watch out for its leaping attack!\n"
"It will explode after it's defeated!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x060F,
QUICKTEXT_ENABLE "Lizalfos \n"
COLOR("\x44") "Use your shield well and fight \n"
"with " COLOR("\x40") "[Z] Targeting " COLOR("\x44") "techniques!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0610,
QUICKTEXT_ENABLE "Dinolfos \n"
COLOR("\x44") "Use your shield well and fight \n"
"with " COLOR("\x40") "[Z] Targeting " COLOR("\x44") "techniques!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0611,
QUICKTEXT_ENABLE "Fire Keese\n"
COLOR("\x44") "Destroy it before it flies into\n"
"you! If you don't, its flames will\n"
"burn up your " COLOR("\x40") "Deku Shield" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0612,
QUICKTEXT_ENABLE "Keese\n"
COLOR("\x44") "When you get close to it, use \n"
COLOR("\x40") "[Z] Targeting" COLOR("\x44") ". Even if it flies\n"
"away, you can still target it." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0613,
QUICKTEXT_ENABLE "Armos\n"
COLOR("\x44") "Stop its movement and then\n"
"destroy it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0614,
QUICKTEXT_ENABLE "Barinade\n"
COLOR("\x44") "Many parasitic jellyfish swarm\n"
"around this monster. Aim for its\n"
"body, protected by jellyfish!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0615,
QUICKTEXT_ENABLE "Parasitic Tentacle?\n"
COLOR("\x44") "It seems that the narrow part is \n"
"its weak point... You need a \n"
"particular item to destroy it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0616,
QUICKTEXT_ENABLE "Shabom\n"
COLOR("\x44") "If you try to cut it, it will bounce\n"
"off your blade!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0617,
QUICKTEXT_ENABLE "Biri\n"
COLOR("\x44") "If you touch it, you will be\n"
"electrocuted!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0618,
QUICKTEXT_ENABLE "Bari\n"
COLOR("\x44") "If you touch it, you will be \n"
"electrocuted!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0619,
QUICKTEXT_ENABLE "Stinger\n"
COLOR("\x44") "Destroy it before it flies into you!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061A,
QUICKTEXT_ENABLE "Phantom Ganon\n"
COLOR("\x44") "It's an evil ghost of the Forest\n"
"Temple! He comes out of one of\n"
"the pictures."BOX_BREAK
COLOR("\x44") "Answer his magic attack with an\n"
"attack of your own!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061B,
QUICKTEXT_ENABLE "Stalfos\n"
COLOR("\x44") "Lure it close to you and watch its\n"
"movement carefully! Attack it when \n"
"it drops its guard!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061C,
QUICKTEXT_ENABLE "Blue Bubble\n"
COLOR("\x44") "Guard against its blue flame with \n"
"your " COLOR("\x40") "shield" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061D,
QUICKTEXT_ENABLE "White Bubble\n"
COLOR("\x44") "Aim for it when it stops!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061E,
QUICKTEXT_ENABLE "Green Bubble\n"
COLOR("\x44") "Use your sword when its green\n"
"fire vanishes!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x061F,
QUICKTEXT_ENABLE "Skullwalltula\n"
COLOR("\x44") "Be careful not to touch it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0620,
QUICKTEXT_ENABLE "Gold Skulltula\n"
COLOR("\x44") "This is also known as a Spider of\n"
"the Curse. If you defeat it, you'll\n"
"get a " COLOR("\x40") "token" COLOR("\x44") " as proof!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0621,
QUICKTEXT_ENABLE "Volvagia\n"
COLOR("\x44") "It's the Boss of the Fire Temple,\n"
"revived by the Evil King. I don't\n"
"know its weak point..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0622,
QUICKTEXT_ENABLE "Flare Dancer\n"
COLOR("\x44") "Extinguish its " COLOR("\x40") "flaming clothes \n"
COLOR("\x44") "first..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0623,
QUICKTEXT_ENABLE "Torch Slug\n"
COLOR("\x44") "When the fire on its back is\n"
"extinguished, it will run away.\n"
"Destroy it before it relights!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0624,
QUICKTEXT_ENABLE "Red Bubble\n"
COLOR("\x44") "Guard against its attack with \n"
"your " COLOR("\x40") "shield" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0625,
QUICKTEXT_ENABLE "Morpha\n"
COLOR("\x44") "Master of the Water Temple. It \n"
"has absolute control of water. Pull\n"
"out its " COLOR("\x40") "nucleus " COLOR("\x44") "and attack it!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0626,
QUICKTEXT_ENABLE "Dark " NAME "\n"
COLOR("\x44") "Conquer yourself!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0627,
QUICKTEXT_ENABLE "Shell Blade\n"
COLOR("\x44") "Its " COLOR("\x40") "internal muscle " COLOR("\x44") "is its" COLOR("\x40") " \n"
COLOR("\x44") "weak point!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0628,
QUICKTEXT_ENABLE "Spike\n"
COLOR("\x44") "Aim for it when it retracts its\n"
"spikes!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0629,
QUICKTEXT_ENABLE "Bongo Bongo\n"
COLOR("\x44") "Boss of the Shadow Temple, \n"
"revived from the well. Look at it\n"
"with the " COLOR("\x40") "eye of truth" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x062A,
QUICKTEXT_ENABLE "ReDead\n"
COLOR("\x44") "Its gaze will paralyze you. If it\n"
"bites you, " COLOR("\x40") "tap any button" COLOR("\x44") " to \n"
"escape!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x062B,
UNSKIPPABLE  QUICKTEXT_ENABLE "Phantom Ganon\n"
COLOR("\x44") "Attack him" COLOR("\x41") " " COLOR("\x40") "when he comes out of\n"
"one of the pictures" COLOR("\x44") "!\n"
"Watch out for the fake one!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x062C,
"062c"
);

DECLARE_MESSAGE_NES(0x062D,
QUICKTEXT_ENABLE "Gibdo\n"
COLOR("\x44") "Its gaze will paralyze you. If it\n"
"bites you, " COLOR("\x40") "tap any button" COLOR("\x44") " to\n"
"escape!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x062E,
QUICKTEXT_ENABLE "Dead Hand's Hands\n"
COLOR("\x44") "If it grabs you, " COLOR("\x40") "tap any button \n"
COLOR("\x44") "to escape!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x062F,
QUICKTEXT_ENABLE "Dead Hand\n"
COLOR("\x44") "Watch out for its infinite hands!\n"
"Aim for its head!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0630,
QUICKTEXT_ENABLE "Wallmaster\n"
COLOR("\x44") "Watch out for its " COLOR("\x40") "shadow" COLOR("\x44") " on the\n"
"floor. Destroy it before it goes\n"
"back up to the ceiling!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0631,
QUICKTEXT_ENABLE "Floormaster\n"
COLOR("\x44") "When it splits up, destroy all the\n"
"pieces before they reunite!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0632,
QUICKTEXT_ENABLE "Twinrova Koume\n"
COLOR("\x44") "Ganondorf's surrogate mother.\n"
"Sorceress of Flame. She seems\n"
"vulnerable to " COLOR("\x40") "low temperature" COLOR("\x44") "." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0633,
QUICKTEXT_ENABLE "Twinrova Kotake\n"
COLOR("\x44") "Ganondorf's surrogate mother.\n"
"Sorceress of Ice. She seems\n"
"vulnerable to " COLOR("\x40") "high temperature" COLOR("\x44") "." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0634,
QUICKTEXT_ENABLE "Iron Knuckle\n"
COLOR("\x44") "Something's strange...\n"
"This is not an ordinary enemy!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0635,
QUICKTEXT_ENABLE "Iron Knuckle\n"
COLOR("\x44") "Watch out for its ax attack! \n"
"It hurts a lot! Strike when it\n"
"drops its guard!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0636,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Is this what happens to kids who\n"
"wander into the forest? It looks\n"
"like he doesn't like grownups." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0637,
QUICKTEXT_ENABLE "Like Like\n"
COLOR("\x44") "An enemy that eats " COLOR("\x40") "shields " COLOR("\x44") "and\n"
"certain " COLOR("\x40") "clothes" COLOR("\x44") ". Beat it quickly\n"
"to get your gear back!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0638,
"0638"
);

DECLARE_MESSAGE_NES(0x0639,
QUICKTEXT_ENABLE "Beamos\n"
COLOR("\x44") "Watch out for its searching beam!\n"
"I bet it doesn't like " COLOR("\x40") "smoke" COLOR("\x44") " to\n"
"get in its eye!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x063A,
QUICKTEXT_ENABLE "Anubis\n"
COLOR("\x44") "It's vulnerable to " COLOR("\x41") "fire" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x063B,
QUICKTEXT_ENABLE "Freezzard\n"
COLOR("\x44") "Watch out for its freezing\n"
"breath! Destroy it completely\n"
"before it revives." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x063C,
"063c"
);

DECLARE_MESSAGE_NES(0x063D,
QUICKTEXT_ENABLE "Ganondorf the Evil King\n"
COLOR("\x44") "I have no idea what his weak\n"
"point is!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x063E,
QUICKTEXT_ENABLE "Ganon\n"
COLOR("\x44") "I really have no idea what his\n"
"weak point is!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x063F,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Is this what happens to kids who\n"
"get lost in the forest? He might\n"
"be our friend if we do something..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0640,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Is this what happens to kids who\n"
"get lost in this forest? He seems\n"
"unhappy to have no face..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0641,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Is this what happens to kids who\n"
"get lost in this forest? He looks\n"
"satisfied with his skull face." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0642,
QUICKTEXT_ENABLE "Octorok\n"
COLOR("\x44") "Bounce back the rocks they spit\n"
"at you!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0643,
QUICKTEXT_ENABLE "Poe of the graveyard?\n"
COLOR("\x44") "If you stare at it with " COLOR("\x40") "[Z] \n"
"Targeting" COLOR("\x44") ", it will disappear..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0644,
QUICKTEXT_ENABLE "Poe\n"
COLOR("\x44") "If you stare at it with " COLOR("\x40") "[Z] \n"
"Targeting" COLOR("\x44") ", it will disappear..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0645,
QUICKTEXT_ENABLE "Red Tektite\n"
COLOR("\x44") "Lock on to it as it jumps with " COLOR("\x40") "[Z]\n"
"Targeting" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0646,
QUICKTEXT_ENABLE "Blue Tektite\n"
COLOR("\x44") "It's hard to beat on the water.\n"
"Lure it onto the land!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0647,
QUICKTEXT_ENABLE "Leever\n"
COLOR("\x44") "Watch its movements closely and\n"
"let it go by!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0648,
QUICKTEXT_ENABLE "Peahat\n"
COLOR("\x44") "Its weak point is its " COLOR("\x40") "roots" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0649,
QUICKTEXT_ENABLE "Peahat Larva\n"
COLOR("\x44") "Defend with your " COLOR("\x40") "shield" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x064A,
"064a"
);

DECLARE_MESSAGE_NES(0x064B,
"064b"
);

DECLARE_MESSAGE_NES(0x064C,
QUICKTEXT_ENABLE "Wolfos\n"
COLOR("\x44") "Draw it close to you and watch \n"
"its movement carefully! Attack it \n"
"when it drops its guard!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x064D,
QUICKTEXT_ENABLE "Mad Scrub\n"
COLOR("\x44") "If you get close to it, it will hide \n"
"in the grass..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x064E,
QUICKTEXT_ENABLE "Business Scrub\n"
COLOR("\x44") "If you get close to it, it will hide \n"
"in the grass..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x064F,
QUICKTEXT_ENABLE "Dampé's Ghost\n"
COLOR("\x44") "That's the ghost of the dead\n"
"gravekeeper! If you chase him,\n"
"he might give you his " COLOR("\x40") "keepsake" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0650,
QUICKTEXT_ENABLE "Meg - one of the Poe sisters\n"
COLOR("\x44") "If she splits into multiple images,\n"
"you need to figure out which one \n"
"is the " COLOR("\x40") "real one" COLOR("\x44") ". Is it this one?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0651,
QUICKTEXT_ENABLE "Joelle - one of the Poe sisters\n"
COLOR("\x44") "Aim for her when she appears!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0652,
QUICKTEXT_ENABLE "Beth - one of the Poe sisters\n"
COLOR("\x44") "Aim for her when she appears!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0653,
QUICKTEXT_ENABLE "Amy - one of the Poe sisters\n"
COLOR("\x44") "Aim for her when she appears!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0654,
QUICKTEXT_ENABLE "Gerudo Thief\n"
COLOR("\x44") "When she drops her guard,\n"
"attack! If you don't defeat her,\n"
"you'll be captured!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0655,
QUICKTEXT_ENABLE "Stalchild\n"
COLOR("\x44") "Don't be afraid of the Stalchild!\n"
"Just attack it repeatedly!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0656,
QUICKTEXT_ENABLE "Ice Keese\n"
COLOR("\x44") "Destroy it before it flies into\n"
"you!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0657,
QUICKTEXT_ENABLE "White Wolfos\n"
COLOR("\x44") "Lure it close to you and watch \n"
"its movement carefully! Attack it \n"
"when it drops its guard!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0658,
QUICKTEXT_ENABLE "Guay\n"
COLOR("\x44") "Destroy it before it flies into\n"
"you!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0659,
QUICKTEXT_ENABLE "Bigocto\n"
COLOR("\x44") "Attack it from behind!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x065A,
QUICKTEXT_ENABLE "Big Poe\n"
COLOR("\x44") "This Poe won't disappear even\n"
"if you stare at it. It moves\n"
"fast despite its size!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x065B,
QUICKTEXT_ENABLE "Twinrova\n"
COLOR("\x44") "This is the combined form of\n"
"Kotake and Koume. Turn their\n"
COLOR("\x40") "magic attack " COLOR("\x44") "back at them!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x065C,
QUICKTEXT_ENABLE "Poe\n"
COLOR("\x44") "This Poe doesn't disappear even if\n"
"you stare at it. It doesn't spook\n"
"easily, does it..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x086D,
QUICKTEXT_ENABLE  SHIFT("\x3C") "Play using " COLOR("\x43") "[A]" COLOR("\x40") " and " COLOR("\x46") "[C]" COLOR("\x40") "." COLOR("\x46") "\n"
COLOR("\x40") "\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x086E,
QUICKTEXT_ENABLE "Play using " COLOR("\x43") "[A]" COLOR("\x40") " and " COLOR("\x46") "[C]" COLOR("\x40") "; " COLOR("\x42") "[B]" COLOR("\x40") " to Stop.\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x086F,
"\n"
"\n"
OCARINA
);

DECLARE_MESSAGE_NES(0x0870,
QUICKTEXT_ENABLE  SHIFT("\x16") "Play the " COLOR("\x42") "Minuet of Forest" COLOR("\x40") "!" COLOR("\x42") "\n"
"\n"
"\n"
COLOR("\x40")  QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0871,
QUICKTEXT_ENABLE  SHIFT("\x1F") "Play the " COLOR("\x41") "Bolero of Fire" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0872,
QUICKTEXT_ENABLE  SHIFT("\x11") "Play the " COLOR("\x43") "Serenade of Water" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0873,
QUICKTEXT_ENABLE  SHIFT("\x15") "Play the " COLOR("\x46") "Requiem of Spirit" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0874,
QUICKTEXT_ENABLE  SHIFT("\x0D") "Play the " COLOR("\x45") "Nocturne of Shadow" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0875,
QUICKTEXT_ENABLE  SHIFT("\x19") "Play the " COLOR("\x44") "Prelude of Light" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0876,
QUICKTEXT_ENABLE  SHIFT("\x0B") "Follow along with " COLOR("\x42") "Saria's Song" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0877,
QUICKTEXT_ENABLE  SHIFT("\x20") "OK? This is " COLOR("\x41") "the Song" COLOR("\x40") "...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0878,
QUICKTEXT_ENABLE  SHIFT("\x27") "Memorize " COLOR("\x43") "this song" COLOR("\x40") "...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x0879,
QUICKTEXT_ENABLE "Keep the " COLOR("\x46") "Sun's Song " COLOR("\x40") "in your heart.\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x087A,
QUICKTEXT_ENABLE  COLOR("\x44") "This song" COLOR("\x40") " opens the Door of Time...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x087B,
QUICKTEXT_ENABLE  SHIFT("\x17") "I'll never forget " COLOR("\x45") "this song" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x087C,
QUICKTEXT_ENABLE "Play using " COLOR("\x43") "[A]" COLOR("\x40") " and " COLOR("\x46") "[C]" COLOR("\x40") "; " COLOR("\x42") "[B]" COLOR("\x40") " to Stop.\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_NES(0x088B,
BACKGROUND("\x00", "\x20", "\x00")  PERSISTENT
);

DECLARE_MESSAGE_NES(0x088C,
QUICKTEXT_ENABLE  SHIFT("\x23")  COLOR("\x41") "You can't warp here!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_NES(0x088D,
QUICKTEXT_ENABLE  COLOR("\x42") "Warp to the Lost Woods?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x088E,
QUICKTEXT_ENABLE  COLOR("\x41") "Warp to the Death Mountain \n"
"Crater?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x088F,
QUICKTEXT_ENABLE  COLOR("\x43") "Warp to Lake Hylia?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0890,
QUICKTEXT_ENABLE  COLOR("\x46") "Warp to the Desert Colossus?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0891,
QUICKTEXT_ENABLE  COLOR("\x45") "Warp to the graveyard?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0892,
QUICKTEXT_ENABLE  COLOR("\x44") "Warp to the Temple of Time?" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x0893,
QUICKTEXT_ENABLE  SHIFT("\x05") "You played the " COLOR("\x42") "Minuet of Forest" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0894,
QUICKTEXT_ENABLE  SHIFT("\x0E") "You played the " COLOR("\x41") "Bolero of Fire" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0895,
QUICKTEXT_ENABLE "You played the " COLOR("\x43") "Serenade of Water" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0896,
QUICKTEXT_ENABLE  SHIFT("\x04") "You played the " COLOR("\x46") "Requiem of Spirit" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0897,
QUICKTEXT_ENABLE  SHIFT("\x09") "Played the " COLOR("\x45") "Nocturne of Shadow" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0898,
QUICKTEXT_ENABLE  SHIFT("\x08") "You played the " COLOR("\x44") "Prelude of Light" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x0899,
QUICKTEXT_ENABLE  SHIFT("\x1E") "You played " COLOR("\x42") "Saria's Song" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089A,
QUICKTEXT_ENABLE  SHIFT("\x1C") "You played " COLOR("\x41") "Epona's Song" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089B,
QUICKTEXT_ENABLE  SHIFT("\x18") "You played " COLOR("\x43") "Zelda's Lullaby" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089C,
QUICKTEXT_ENABLE  SHIFT("\x16") "You played the " COLOR("\x46") "Sun's Song" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089D,
QUICKTEXT_ENABLE  SHIFT("\x10") "You played the " COLOR("\x44") "Song of Time" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089E,
QUICKTEXT_ENABLE  SHIFT("\x09") "You played the " COLOR("\x45") "Song of Storms" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x089F,
QUICKTEXT_ENABLE  SHIFT("\x04") "You played the " COLOR("\x46") "Scarecrow's Song" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x1000,
UNSKIPPABLE  COLOR("\x44") "You finally woke up!\n"
"I'm " COLOR("\x41") "Navi " COLOR("\x44") "the fairy!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "The Great Deku Tree asked\n"
"me to be your " COLOR("\x41") "partner " COLOR("\x44") "from\n"
"now on! Nice to meet you!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1001,
UNSKIPPABLE  SHIFT("\x12") "Yahoo! Hi, " NAME "!"
);

DECLARE_MESSAGE_NES(0x1002,
UNSKIPPABLE "Wow! A fairy!!"BOX_BREAK
UNSKIPPABLE "Finally, a fairy came to you,\n"
NAME "!" TEXTID("\x10\x0F")
);

DECLARE_MESSAGE_NES(0x1003,
"I'll wait for you here.\n"
"Get going! Go see the Great \n"
"Deku Tree!"
);

DECLARE_MESSAGE_NES(0x1004,
COLOR("\x43") "[A] " COLOR("\x40") "by the stone, pick it up!\n"
COLOR("\x43") "[A] " COLOR("\x40") "by the stone, pick it up!"BOX_BREAK"Mean old" COLOR("\x41") " Mido" COLOR("\x40") "...he made me pick \n"
"up the rocks in front of his house."
);

DECLARE_MESSAGE_NES(0x1005,
UNSKIPPABLE "Oh, you have a " COLOR("\x44") "fairy" COLOR("\x40") " now?!\n"
"That's great, " NAME "!"BOX_BREAK
UNSKIPPABLE "What?"BOX_BREAK
UNSKIPPABLE "You've been called by the\n"
COLOR("\x41") "Great Deku Tree" COLOR("\x40") "? What an honor!"BOX_BREAK
UNSKIPPABLE "He may give you a special gift!\n"
"Tee hee!"BOX_BREAK
UNSKIPPABLE "That's because the Great Deku \n"
"Tree is our father, the forest\n"
"guardian, and he gave life to all \n"
"of us Kokiri!"
);

DECLARE_MESSAGE_NES(0x1006,
"I wonder if the " COLOR("\x41") "Great Deku Tree " COLOR("\x40") "\n"
"gave life to everything in the\n"
"forest, I mean in addition to us \n"
"Kokiri?"
);

DECLARE_MESSAGE_NES(0x1007,
"Hey, let's work on some moves!"BOX_BREAK"To " COLOR("\x41") "jump sideways " COLOR("\x40") "while " COLOR("\x44") "[Z] \n"
"Targeting" COLOR("\x40") ", press " COLOR("\x43") "[A] " COLOR("\x40") "as you move\n"
"right or left."BOX_BREAK"To do a " COLOR("\x41") "backflip" COLOR("\x40") " while " COLOR("\x44") "[Z] \n"
"Targeting" COLOR("\x40") ", press " COLOR("\x43") "[A] " COLOR("\x40") "as you move\n"
"backwards."BOX_BREAK"To do a " COLOR("\x41") "roll attack" COLOR("\x40") " while " COLOR("\x44") "[Z] \n"
"Targeting" COLOR("\x40") ", press " COLOR("\x43") "[A] " COLOR("\x40") "as you move\n"
"forward. While you roll, you can\n"
"avoid damage."BOX_BREAK"If you have your sword ready while\n"
COLOR("\x44") "[Z] Targeting" COLOR("\x40") ", you can do a " COLOR("\x41") "jump \n"
"attack" COLOR("\x40") " by pressing " COLOR("\x43") "[A]" COLOR("\x40") "! A jump \n"
"attack does double damage!"BOX_BREAK"You can use " COLOR("\x44") "[Z] Targeting " COLOR("\x40") "on the\n"
COLOR("\x41") "stone" COLOR("\x40") " next to me, so let's \n"
"practice!"
);

DECLARE_MESSAGE_NES(0x1008,
UNSKIPPABLE "You're not allowed to leave the \n"
"forest!" TEXTID("\x10\x09")
);

DECLARE_MESSAGE_NES(0x1009,
"The Great Deku Tree said that if\n"
"a Kokiri leaves the woods, he or \n"
"she will die!"
);

DECLARE_MESSAGE_NES(0x100A,
UNSKIPPABLE "That meanie," COLOR("\x41") " Mido" COLOR("\x40") ", made me cut \n"
"the grass at Saria's house."BOX_BREAK
UNSKIPPABLE "Mido told Saria he would do it so\n"
"she would like him, but I'm the one\n"
"doing all the work!" TEXTID("\x10\x0B")
);

DECLARE_MESSAGE_NES(0x100B,
"You and " COLOR("\x41") "Saria" COLOR("\x40") " are close friends,\n"
"so will you help me cut the \n"
"grass?"BOX_BREAK"I'll let you keep anything that \n"
"you find while cutting it."
);

DECLARE_MESSAGE_NES(0x100C,
UNSKIPPABLE "Yes, yes! That's how you use a\n"
COLOR("\x44") "fairy" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "It's so great that you finally have\n"
"a fairy" COLOR("\x41") " " COLOR("\x40") "partner!"BOX_BREAK
UNSKIPPABLE "I'll teach you how to talk to \n"
"people using your fairy!" TEXTID("\x10\x0D")
);

DECLARE_MESSAGE_NES(0x100D,
"When a fairy flies near a person \n"
"or thing, press " COLOR("\x44") "[Z]" COLOR("\x40") " to " COLOR("\x41") "look " COLOR("\x40") "in that\n"
"direction."BOX_BREAK"If you use " COLOR("\x44") "[Z] Targeting" COLOR("\x40") ", you can \n"
"talk to people from a distance, \n"
"like we're doing now."BOX_BREAK"When you have nothing that you\n"
"can target, you can press " COLOR("\x44") "[Z]" COLOR("\x40") " just\n"
"to " COLOR("\x41") "look forward" COLOR("\x40") ".\n"
"Try it!"
);

DECLARE_MESSAGE_NES(0x100E,
UNSKIPPABLE "Oh, a " COLOR("\x44") "fairy " COLOR("\x40") "finally came to you!"BOX_BREAK
UNSKIPPABLE "Now you have a lot to learn!" TEXTID("\x10\x19")
);

DECLARE_MESSAGE_NES(0x100F,
UNSKIPPABLE  SFX("\x68\x63") "Wow! " QUICKTEXT_ENABLE "That's great news!" QUICKTEXT_DISABLE "\n"
"I'm so happy for you!"BOX_BREAK
UNSKIPPABLE "Now you're a true Kokiri,\n"
NAME "!" TEXTID("\x10\x10")
);

DECLARE_MESSAGE_NES(0x1010,
UNSKIPPABLE "Is that right? \n"
"The Great Deku Tree has \n"
"summoned you?"BOX_BREAK
UNSKIPPABLE "It's quite an honor to talk to the\n"
"Great Deku Tree!" TEXTID("\x10\x03")
);

DECLARE_MESSAGE_NES(0x1011,
UNSKIPPABLE "Oh, you're leaving..."
);

DECLARE_MESSAGE_NES(0x1012,
UNSKIPPABLE "But that's OK, because we'll be\n"
"friends forever...\n"
"won't we?"
);

DECLARE_MESSAGE_NES(0x1013,
UNSKIPPABLE "I want you to have this Ocarina...\n"
"Please take good care of it."
);

DECLARE_MESSAGE_NES(0x1014,
"When you play my Ocarina, I hope\n"
"you will think of me and come\n"
"back to the forest to visit."
);

DECLARE_MESSAGE_NES(0x1015,
UNSKIPPABLE "Oh... Navi...\n"
"Thou hast returned..."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Welcome..."BOX_BREAK
UNSKIPPABLE "Listen carefully to what I, the\n"
COLOR("\x41") "Deku Tree" COLOR("\x40") ", am about to tell thee..."BOX_BREAK
UNSKIPPABLE "Thy slumber these past moons \n"
"must have been restless, and\n"
"full of nightmares..."BOX_BREAK
UNSKIPPABLE "As the servants of evil gain\n"
"strength, a vile climate pervades\n"
"the land and causes nightmares\n"
"to those sensitive to it..."BOX_BREAK
UNSKIPPABLE "Verily, thou hast felt it..."BOX_BREAK
UNSKIPPABLE  NAME "... \n"
"The time has come to test thy\n"
"courage..." TEXTID("\x10\x16")
);

DECLARE_MESSAGE_NES(0x1016,
"I have been " COLOR("\x41") "cursed" COLOR("\x40") "...\n"
"I need you to break the curse\n"
"with your wisdom and courage."BOX_BREAK"Dost thou have courage enough\n"
"to undertake this task?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1017,
UNSKIPPABLE "Then enter, brave \n"
NAME ", and thou too, \n"
"Navi..."BOX_BREAK
UNSKIPPABLE "Navi the fairy...  \n"
"Thou must aid " NAME "..."BOX_BREAK
UNSKIPPABLE "And " NAME "...When " COLOR("\x44") "Navi \n"
COLOR("\x40") "speaks, use " COLOR("\x46") "[C-Up] " COLOR("\x40") "to listen well \n"
"to her words of wisdom..."
);

DECLARE_MESSAGE_NES(0x1018,
"Perhaps you do not yet have \n"
"confidence in your abilities...\n"
"Return to the Kokiri Forest to\n"
"learn the skills of combat..."BOX_BREAK"When thou art ready, return here \n"
"and speak with me by using " COLOR("\x44") "[Z]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x1019,
"The best place to go to learn\n"
"some new skills is in the " COLOR("\x42") "Forest \n"
"Training Center" COLOR("\x40") "." COLOR("\x42") " " COLOR("\x40") "It's on the hill\n"
"just above here."
);

DECLARE_MESSAGE_NES(0x101A,
UNSKIPPABLE  SFX("\x38\x82")  QUICKTEXT_ENABLE "Ow-ow-ow!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Forgive me, master!" QUICKTEXT_DISABLE "\n"
"If I give you a clue, will you let \n"
"me go?"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "When you jump off a high cliff,\n"
"if you hold " COLOR("\x44") "[Control Stick]" COLOR("\x40") " forward, you will\n"
"roll on the ground when you land \n"
"and won't get hurt from the fall."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "I can't guarantee it will\n"
"work, though, if the cliff is really,\n"
"really high, heh heh!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Well, try it if you are feeling\n"
"bold!\n"
QUICKTEXT_ENABLE "Wah ha hah!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x101B,
"Hee hee!\n"
"Under that mask...aren't you that\n"
"Kokiri kid?"
);

DECLARE_MESSAGE_NES(0x101C,
"Quite an unusual mask you have\n"
"there. Hee hee! I like it! It may\n"
"make me look a little bit tougher."BOX_BREAK"Hey, why don't you give it to me?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No way" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x101D,
"Doh! That's too bad for me..."
);

DECLARE_MESSAGE_NES(0x101E,
"Yowza! I'm gonna wear this \n"
"all the time!"
);

DECLARE_MESSAGE_NES(0x101F,
UNSKIPPABLE  SFX("\x48\x07") "He just gave you " COLOR("\x41") "10 Rupees" COLOR("\x40") " for \n"
"this 20-Rupee mask! You lost \n"
"money on that deal!"BOX_BREAK
UNSKIPPABLE "Go back to the Mask Shop \n"
"and pay " COLOR("\x41") "20 Rupees" COLOR("\x40") " for the \n"
"mask. The difference will have to \n"
"come out of your own pocket."
);

DECLARE_MESSAGE_NES(0x1020,
"My buddies really want this mask!\n"
"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x1021,
"Oh, you're OK? You didn't leave \n"
"the forest after all, did you?"
);

DECLARE_MESSAGE_NES(0x1022,
"Did you know that if you hold " COLOR("\x44") "▼\n"
COLOR("\x40") "forward when you jump off a cliff,\n"
"you'll roll when you land. This will\n"
"absorb the shock of your landing."BOX_BREAK"If you fall too far, though, you'll\n"
"still get hurt..."
);

DECLARE_MESSAGE_NES(0x1023,
"Saria said she's waiting at the\n"
"usual spot."
);

DECLARE_MESSAGE_NES(0x1024,
UNSKIPPABLE "Well done, " NAME "..."
);

DECLARE_MESSAGE_NES(0x1025,
"You have a cool Slingshot, huh?"BOX_BREAK"You know what's cool about it?\n"
"You can aim while holding down\n"
COLOR("\x46") "[C]" COLOR("\x40") " and shoot by releasing the\n"
"button! How cool!"BOX_BREAK"If you have the Slingshot ready,\n"
"you can use " COLOR("\x44") "[Z] Targeting" COLOR("\x40") " to \n"
COLOR("\x41") "shoot while moving" COLOR("\x40") ".... Did you \n"
"know that?"
);

DECLARE_MESSAGE_NES(0x1026,
"No, " NAME "...\n"
"Thou must know my time is short..."
);

DECLARE_MESSAGE_NES(0x1027,
UNSKIPPABLE "Now...listen carefully...\n"
"A " COLOR("\x41") "wicked man of the desert" COLOR("\x40") " \n"
"cast this dreadful curse upon me..."
);

DECLARE_MESSAGE_NES(0x1028,
"If you're looking for Saria, she's\n"
"in the " COLOR("\x42") "Lost Woods" COLOR("\x40") ", as usual."BOX_BREAK"Don't tell me you don't know \n"
"where that is! The entrance is up\n"
"on the cliff overlooking the \n"
"village!"BOX_BREAK"I know you'll get lost! Don't \n"
"worry, you'll just end up back at\n"
"the entrance!"BOX_BREAK
SHIFT("\x51")  QUICKTEXT_ENABLE "Harumph!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x1029,
UNSKIPPABLE "Thou must never allow the desert \n"
"man in black armor to lay his \n"
"hands on the sacred Triforce..."BOX_BREAK
UNSKIPPABLE "Thou must never suffer that man,\n"
"with his evil heart, to enter the \n"
"Sacred Realm" COLOR("\x41") " " COLOR("\x40") "of legend..."BOX_BREAK
UNSKIPPABLE "That evil man who cast the death \n"
"curse upon me and sapped my \n"
"power..."BOX_BREAK
UNSKIPPABLE "Because of that curse, my end is\n"
"nigh..."BOX_BREAK
UNSKIPPABLE "Though your valiant efforts to \n"
"break the curse were successful, \n"
"I was doomed before you started..."BOX_BREAK
UNSKIPPABLE "Yes, I will pass away soon...\n"
UNSKIPPABLE "But do not grieve for me..."BOX_BREAK
UNSKIPPABLE "I have been able to tell you of \n"
"these important matters..."BOX_BREAK
UNSKIPPABLE "This is Hyrule's final hope..."
);

DECLARE_MESSAGE_NES(0x102A,
UNSKIPPABLE "The future depends upon thee,\n"
NAME "...\n"
"Thou art courageous..."BOX_BREAK
UNSKIPPABLE "Navi the fairy...\n"
"Help " NAME " to carry out \n"
"my will..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "I entreat ye... Navi..." TEXT_SPEED("\x00") "\n"
TEXT_SPEED("\x03") "Good...bye..." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_NES(0x102B,
UNSKIPPABLE  COLOR("\x44") "Let's go to Hyrule Castle,\n"
NAME "!!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x102C,
UNSKIPPABLE  TEXT_SPEED("\x01")  COLOR("\x44") "Good-bye..." COLOR("\x40")  TEXT_SPEED("\x00")  COLOR("\x44") "Great Deku Tree..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x102D,
"Too bad...Heh heh!"
);

DECLARE_MESSAGE_NES(0x102E,
"Do you want to play some more?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x102F,
UNSKIPPABLE "Hey you! \"" COLOR("\x44") "Mr. No Fairy" COLOR("\x40") "!\"\n"
"What's your business with the\n"
"Great Deku Tree?"BOX_BREAK
UNSKIPPABLE "Without a fairy, you're not\n"
"even a real man!" TEXTID("\x10\xD0")
);

DECLARE_MESSAGE_NES(0x1030,
"If you want to pass through here,\n"
"you should at least " COLOR("\x43") "equip" COLOR("\x40") " a " COLOR("\x42") "sword" COLOR("\x41") "\n"
COLOR("\x40") "and " COLOR("\x44") "shield" COLOR("\x40") "!"BOX_BREAK
SHIFT("\x51")  QUICKTEXT_ENABLE "Sheesh!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x1031,
SHIFT("\x57")  QUICKTEXT_ENABLE "What?!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Mido " COLOR("\x40") "won't let you go to see \n"
"the Great Deku Tree?" TEXTID("\x10\xC8")
);

DECLARE_MESSAGE_NES(0x1032,
"You can buy a " COLOR("\x44") "shield" COLOR("\x40") " at the shop,\n"
"but there is only one " COLOR("\x42") "sword" COLOR("\x40") "\n"
"hidden somewhere in the forest."
);

DECLARE_MESSAGE_NES(0x1033,
UNSKIPPABLE "If you want to see the \n"
"Great Deku Tree, you should at \n"
"least equip a " COLOR("\x42") "sword" COLOR("\x40") " and " COLOR("\x44") "shield" COLOR("\x40") "!" TEXTID("\x10\xD2")
);

DECLARE_MESSAGE_NES(0x1034,
"I, the great Mido," COLOR("\x41") " " COLOR("\x40") "will never \n"
"accept you as one of us!"BOX_BREAK"Shoot! How did you get to be the\n"
"favorite of Saria and the Great\n"
"Deku Tree? Huh?!\n"
"Grumble...grumble..."
);

DECLARE_MESSAGE_NES(0x1035,
"I can teach you about the " COLOR("\x41") "icons\n"
COLOR("\x40") "at the top of the screen.\n"
TWO_CHOICE  COLOR("\x42") "About the yellow icons\n"
"About the blue icon" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1036,
"The three yellow icons in the \n"
"upper right are called " COLOR("\x46") "[C] icons" COLOR("\x40") "."BOX_BREAK"They display the things you can\n"
"use with the " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down] " COLOR("\x40") "and" COLOR("\x46") " \n"
"[C-Right] " COLOR("\x40") "buttons."BOX_BREAK"Once you get a " COLOR("\x46") "[C] Button item" COLOR("\x40") ", \n"
"go into the " COLOR("\x46") "Select Item Subscreen" COLOR("\x40") " \n"
"and set it to one of the three\n"
COLOR("\x46") "[C] Buttons" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x1037,
"The blue icon at the top of the\n"
"screen is called the " COLOR("\x43") "Action Icon" COLOR("\x40") "."BOX_BREAK"This Action Icon shows you \n"
"what action you will perform\n"
"when you press " COLOR("\x43") "[A]" COLOR("\x40") "."BOX_BREAK"Stop in many spots to see the\n"
"different things you can do."
);

DECLARE_MESSAGE_NES(0x1038,
"If you want to learn about the\n"
COLOR("\x41") "map " COLOR("\x40") "and " COLOR("\x41") "items" COLOR("\x40") ", just ask me.\n"
"But don't ask unless you want\n"
"to hear a long explanation."BOX_BREAK"What do you want to know about?\n"
THREE_CHOICE  COLOR("\x42") "About the map \n"
"About items\n"
"Don't ask" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1039,
"There is a " COLOR("\x41") "map" COLOR("\x40") " displayed at the\n"
"bottom right of the screen."BOX_BREAK"The " COLOR("\x46") "yellow arrow " COLOR("\x40") "shows your \n"
"current position and direction you\n"
"are facing. The " COLOR("\x41") "red mark " COLOR("\x40") "shows\n"
"where you entered the area from."BOX_BREAK"You can turn the map display on\n"
"and off with the " COLOR("\x44") "[L]" COLOR("\x40") "."BOX_BREAK"If you want to see the name of a\n"
"place, press " COLOR("\x41") "START" COLOR("\x40") "."BOX_BREAK"You'll get into the Subscreens.\n"
"Select the " COLOR("\x41") "Map Subscreen" COLOR("\x40") "."BOX_BREAK"On the Map Subscreen, you can \n"
"see a map of Hyrule.\n"
"Did you get all that?"
);

DECLARE_MESSAGE_NES(0x103A,
"There are three kinds of items:\n"
COLOR("\x43") "Equipment items" COLOR("\x40") ", " COLOR("\x46") "[C] Button items" COLOR("\x40") "\n"
"and " COLOR("\x44") "Quest items" COLOR("\x40") "."BOX_BREAK
COLOR("\x43") "Equipment items" COLOR("\x40") " are things like \n"
"the sword, shield and clothes \n"
"that are effective when you equip\n"
"them."BOX_BREAK
COLOR("\x46") "[C] Button items" COLOR("\x40") " can be set to \n"
COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") ", and " COLOR("\x46") "[C-Right]" COLOR("\x40") ", and\n"
"used by pressing those buttons."BOX_BREAK
COLOR("\x44") "Quest items " COLOR("\x40") "are things you \n"
"collect during your adventure. You\n"
"just carry them around."BOX_BREAK"If you want to change equipment\n"
"or just check on your inventory,\n"
"press " COLOR("\x41") "START" COLOR("\x40") ". \n"
"You will get into the Subscreens."BOX_BREAK"Switch to one of the four \n"
"different Subscreens with " COLOR("\x44") "[Z]" COLOR("\x40") " or\n"
COLOR("\x44") "[R] " COLOR("\x40") "and change or check items as\n"
"you please. Take a look around!"BOX_BREAK"When you decide to equip an \n"
COLOR("\x43") "Equipment item" COLOR("\x40") ", press " COLOR("\x43") "[A]" COLOR("\x40") ". For\n"
COLOR("\x46") "[C] Button items" COLOR("\x40") ", press " COLOR("\x46") "[C-Left]" COLOR("\x40") ",\n"
COLOR("\x46") "[C-Down] " COLOR("\x40") "or " COLOR("\x46") "[C-Right]" COLOR("\x40") "."BOX_BREAK"That was a pretty long explanation.\n"
"Did you understand everything?"
);

DECLARE_MESSAGE_NES(0x103B,
"Well, just remember this. If you\n"
"want to " COLOR("\x42") "save" COLOR("\x40") ", press " COLOR("\x41") "START " COLOR("\x40") "to get\n"
"into the Subscreens, then press\n"
COLOR("\x42") "[B]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x103C,
"My sister took some Rupees and \n"
"went shopping at the store\n"
"that has a red roof.\n"
"Tee hee!"BOX_BREAK"Speaking of " COLOR("\x41") "Rupees" COLOR("\x40") ", a " COLOR("\x42") "green " COLOR("\x40") "one\n"
"is worth one, a " COLOR("\x43") "blue" COLOR("\x40") " one is worth\n"
"five and a " COLOR("\x41") "red" COLOR("\x40") " one is worth \n"
"twenty. Hee hee!"
);

DECLARE_MESSAGE_NES(0x103D,
"This shop...It sells things you\n"
"can get in the forest for free!\n"
"Tee hee!"BOX_BREAK"Do you know how to use the \n"
COLOR("\x41") "Deku Shield" COLOR("\x40") "? Tee hee!"BOX_BREAK"When you get the shield, press\n"
COLOR("\x41") "START " COLOR("\x40") "to get into the Subscreens.\n"
"Select the " COLOR("\x43") "Equipment Subscreen\n"
COLOR("\x40") "with " COLOR("\x44") "[Z]" COLOR("\x40") " or " COLOR("\x44") "[R]" COLOR("\x40") "."BOX_BREAK"On the " COLOR("\x43") "Equipment Subscreen" COLOR("\x40") ", \n"
"choose the item you want to equip\n"
"and press " COLOR("\x43") "[A]" COLOR("\x40") " to equip that item."BOX_BREAK"Once you equip it, hold it up\n"
"with " COLOR("\x44") "[R]" COLOR("\x40") " and change its angle\n"
"with " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Tee hee!"
);

DECLARE_MESSAGE_NES(0x103E,
"Do you want to know how to use\n"
"the " COLOR("\x46") "[C-Up] Button" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x103F,
"If you press " COLOR("\x46") "[C-Up]" COLOR("\x40") ", you can\n"
"change your view."BOX_BREAK"In a place like this, it will switch\n"
"to a top-down view. Outdoors, in\n"
"a field for example, it will switch\n"
"to a first-person perspective."BOX_BREAK"Also, when \"" COLOR("\x46") "Navi" COLOR("\x40") "\" is displayed in\n"
"the upper right of your screen, \n"
"Navi the fairy wants to talk to\n"
"you. Use " COLOR("\x46") "[C-Up]" COLOR("\x40") " to listen to her!"
);

DECLARE_MESSAGE_NES(0x1040,
"Well, if you play around with it, \n"
"you'll figure it out."
);

DECLARE_MESSAGE_NES(0x1041,
"That's not quite Saria's Song..."
);

DECLARE_MESSAGE_NES(0x1042,
"Mido" COLOR("\x41") " " COLOR("\x40") "is very upset!\n"
"Did something happen to him?"
);

DECLARE_MESSAGE_NES(0x1043,
"What? Where are you going?!"BOX_BREAK"To the castle?\n"
"Where is the castle?"
);

DECLARE_MESSAGE_NES(0x1044,
"We Kokiri will die if we leave the\n"
"forest!"BOX_BREAK"You're not going to try to leave\n"
"the forest, are you?!"
);

DECLARE_MESSAGE_NES(0x1045,
UNSKIPPABLE "Hey, " NAME "!\n"
"What did you do?!"BOX_BREAK
UNSKIPPABLE "The Great Deku Tree...did he...\n"
"die?"BOX_BREAK
UNSKIPPABLE "How could you do a thing like \n"
"that?! It's all your fault!!" EVENT
);

DECLARE_MESSAGE_NES(0x1046,
QUICKTEXT_ENABLE "Hey!!" QUICKTEXT_DISABLE "\n"
"What are you doing in my house?!"
);

DECLARE_MESSAGE_NES(0x1047,
UNSKIPPABLE  NAME ", you're safe!" TEXTID("\x10\x48")
);

DECLARE_MESSAGE_NES(0x1048,
"Saria and " NAME " will be\n"
"friends forever."
);

DECLARE_MESSAGE_NES(0x1049,
"Did something happen to the \n"
"Great Deku Tree?"
);

DECLARE_MESSAGE_NES(0x104A,
"Somehow, it seems that the air in\n"
"the forest has changed."
);

DECLARE_MESSAGE_NES(0x104B,
NAME ", are you going\n"
"to go away?"
);

DECLARE_MESSAGE_NES(0x104C,
"If you lose your shield, will\n"
"you come back?"
);

DECLARE_MESSAGE_NES(0x104D,
SFX("\x38\x80") "All of the young Deku Scrub\n"
"brothers agree...you look exactly \n"
"like our sacred forest totem!"BOX_BREAK
SFX("\x38\x80") "As an offering from us, please\n"
"accept these " COLOR("\x41") "Deku Sticks" COLOR("\x40") ".\n"
"We will also enhance your\n"
"carrying skills!"BOX_BREAK"Abracadabra!"BOX_BREAK
SFX("\x38\x80") "Alakazaaaam!" EVENT
);

DECLARE_MESSAGE_NES(0x104E,
"Since the Great Deku Tree\n"
"withered...more meanies have \n"
"been appearing in the forest...\n"
"I'm scared!"
);

DECLARE_MESSAGE_NES(0x104F,
UNSKIPPABLE "An evil wind is blowing from the \n"
"direction of the Forest Temple."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Saria" COLOR("\x40") " left, saying,\n"
"\"I have to do something\n"
"about it!\"" TEXTID("\x10\x50")
);

DECLARE_MESSAGE_NES(0x1050,
"The " COLOR("\x42") "Forest Temple " COLOR("\x40") "is located \n"
"in the Sacred Forest Meadow in\n"
"the far side of the Lost Woods."
);

DECLARE_MESSAGE_NES(0x1051,
"Saria went to the temple and \n"
"hasn't come back..."
);

DECLARE_MESSAGE_NES(0x1052,
"Hi, mister! You can't use a\n"
"Deku Shield! It's only for\n"
"kids!"
);

DECLARE_MESSAGE_NES(0x1053,
"Where's Saria? \n"
"Do you know Saria, mister?\n"
"That's weird..." TEXTID("\x10\x54")
);

DECLARE_MESSAGE_NES(0x1054,
"Where has " COLOR("\x41") "Mido" COLOR("\x40") " gone during such\n"
"an emergency?"
);

DECLARE_MESSAGE_NES(0x1055,
"I see. You didn't have any \n"
"problems entering the forest, \n"
"mister..."BOX_BREAK"Did the meanies out there bother\n"
"you much? Before the Great Deku \n"
"Tree died, you wouldn't see things\n"
"like that around here...." TEXTID("\x10\x56")
);

DECLARE_MESSAGE_NES(0x1056,
"Since it's dangerous outside, I \n"
"always stay inside my house. \n"
"But I'm bored to death in here!"
);

DECLARE_MESSAGE_NES(0x1057,
"You can buy " COLOR("\x41") "arrows " COLOR("\x40") "at a shop \n"
"only if you have a " COLOR("\x41") "bow" COLOR("\x40") ". Have you \n"
"got one, mister?"
);

DECLARE_MESSAGE_NES(0x1058,
UNSKIPPABLE "Have you been travelling around\n"
"much, mister?\n"
"Have you ever met a boy named \n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Mido said that the Great Deku \n"
"Tree withered because that boy\n"
"did something wrong to it..."BOX_BREAK
UNSKIPPABLE "Only Saria defended \n"
NAME "--until she left." TEXTID("\x10\x59")
);

DECLARE_MESSAGE_NES(0x1059,
"Maybe we misunderstood...."
);

DECLARE_MESSAGE_NES(0x105A,
"Haven't I seen you somewhere\n"
"before, mister?"
);

DECLARE_MESSAGE_NES(0x105B,
UNSKIPPABLE "Mister, do you know a boy \n"
"named " NAME "?"BOX_BREAK
UNSKIPPABLE "He left the forest and never\n"
"came back..." TEXTID("\x10\x5C")
);

DECLARE_MESSAGE_NES(0x105C,
"I wonder if " NAME " will \n"
"ever return?"
);

DECLARE_MESSAGE_NES(0x105D,
UNSKIPPABLE "It would be awesome to be big \n"
"like you, mister! I really want to\n"
"be big like you!"BOX_BREAK
UNSKIPPABLE "I want to be big and strong and \n"
"beat up the Deku Scrubs, but..." TEXTID("\x10\x5E")
);

DECLARE_MESSAGE_NES(0x105E,
"We Kokiri won't ever get bigger \n"
"for the rest of our lives...\n"
"What a bummer!"
);

DECLARE_MESSAGE_NES(0x105F,
"Why is that fairy following you \n"
"around? You're not one of us!"
);

DECLARE_MESSAGE_NES(0x1060,
UNSKIPPABLE "What are you? Though you wear \n"
"Kokirish clothing, you can't\n"
"fool me!" TEXTID("\x10\x61")
);

DECLARE_MESSAGE_NES(0x1061,
"I promised Saria I would never\n"
"let anybody go through here."
);

DECLARE_MESSAGE_NES(0x1062,
UNSKIPPABLE "Hi there! I'm the " COLOR("\x41") "Deku Tree \n"
"sprout" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Because you and Saria" COLOR("\x41") " " COLOR("\x40") "broke the\n"
"curse on the Forest Temple, I \n"
"can grow and flourish!"BOX_BREAK
UNSKIPPABLE "Thanks a lot!"
);

DECLARE_MESSAGE_NES(0x1063,
UNSKIPPABLE "Hey, have you seen your old\n"
"friends? None of them recognized\n"
"you with your grown-up body, did\n"
"they?"BOX_BREAK
UNSKIPPABLE "That's because the " COLOR("\x42") "Kokiri" COLOR("\x40") " never\n"
"grow up! Even after seven years,\n"
"they're still kids!"
);

DECLARE_MESSAGE_NES(0x1064,
UNSKIPPABLE "You must be wondering why only\n"
"you have grown up!"BOX_BREAK
UNSKIPPABLE "Well, as you might have already \n"
"guessed, you are not a Kokiri!\n"
"You are actually a " COLOR("\x44") "Hylian" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "I am happy to finally reveal this\n"
"secret to you!"
);

DECLARE_MESSAGE_NES(0x1065,
"Some time ago, before the King of\n"
"Hyrule unified this country, there\n"
"was a fierce war in our world."BOX_BREAK_DELAYED("\x5A") "One day, to escape from the fires\n"
"of the war, a " COLOR("\x41") "Hylian mother " COLOR("\x40") "and \n"
"her " COLOR("\x41") "baby boy" COLOR("\x40") " entered this \n"
"forbidden forest."BOX_BREAK_DELAYED("\x5A") "The mother was gravely injured...\n"
"Her only choice was to entrust\n"
"the child to the " COLOR("\x41") "Deku Tree" COLOR("\x40") ", the \n"
"guardian spirit of the forest."BOX_BREAK_DELAYED("\x5A") "The Deku Tree could sense that\n"
"this was a child of destiny, whose\n"
"fate would affect the entire world,\n"
"so he took him into the forest."BOX_BREAK_DELAYED("\x5A") "After the mother passed away, \n"
"the baby was raised as a " COLOR("\x42") "Kokiri" COLOR("\x40") ".\n"
"And now, finally, the day of \n"
"destiny has come!" FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x1066,
UNSKIPPABLE "You are a " COLOR("\x44") "Hylian" COLOR("\x40") ", and were\n"
"always bound to leave this forest."BOX_BREAK
UNSKIPPABLE "And now...\n"
"You have learned your own \n"
"destiny...\n"
"So you know what you must do..."BOX_BREAK
UNSKIPPABLE "That's right...\n"
"You must save the land of \n"
"Hyrule!"BOX_BREAK
UNSKIPPABLE "Now, " NAME ", break the \n"
"curses on all of the Temples,\n"
"and return peace to Hyrule!!"
);

DECLARE_MESSAGE_NES(0x1067,
UNSKIPPABLE  SHIFT("\x37") "That melody?!"BOX_BREAK
UNSKIPPABLE "Saria plays that song all the \n"
"time!\n"
"You...Do you know Saria?"BOX_BREAK
UNSKIPPABLE "That song..."BOX_BREAK
UNSKIPPABLE "Saria taught that song only \n"
"to her friends..." TEXTID("\x10\x6F")
);

DECLARE_MESSAGE_NES(0x1068,
"When I see you... \n"
"I don't know why, but I remember...\n"
"him..."
);

DECLARE_MESSAGE_NES(0x1069,
UNSKIPPABLE "I have you now!\n"
"In this gap between dreams and \n"
"reality, soon all that will remain\n"
"of you will be your dead body!"
);

DECLARE_MESSAGE_NES(0x106A,
UNSKIPPABLE "Thank you...\n"
"Because of you, I could awaken as\n"
"a Sage..."BOX_BREAK
UNSKIPPABLE "I am " COLOR("\x42") "Saria" COLOR("\x40") ".\n"
"The Sage of the Forest Temple..."
);

DECLARE_MESSAGE_NES(0x106B,
UNSKIPPABLE  SHIFT("\x28") "Saria will always be...\n"
SHIFT("\x3C") "your friend..." FADE("\x50")
);

DECLARE_MESSAGE_NES(0x106C,
UNSKIPPABLE "The flow of time is always cruel...\n"
"Its speed seems different for\n"
"each person, but no one can \n"
"change it..."BOX_BREAK
UNSKIPPABLE "A thing that doesn't change with\n"
"time is a memory of younger days..."BOX_BREAK
UNSKIPPABLE "In order to come back here again,\n"
"play the " COLOR("\x42") "Minuet of Forest" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x106D,
UNSKIPPABLE  NAME "...\n"
"I'll see you again..."
);

DECLARE_MESSAGE_NES(0x106E,
"Saria hasn't come back yet...\n"
"But I know she'll return someday..."
);

DECLARE_MESSAGE_NES(0x106F,
UNSKIPPABLE "OK...\n"
"I trust you." TEXTID("\x10\x68")
);

DECLARE_MESSAGE_NES(0x1070,
UNSKIPPABLE "Oh...I see..."BOX_BREAK
UNSKIPPABLE "Saria won't ever come back..."BOX_BREAK
UNSKIPPABLE "But...I...I made a promise to \n"
"Saria..."BOX_BREAK
UNSKIPPABLE "If " NAME " came back, I \n"
"would be sure to tell him that \n"
"Saria had been waiting for him..."BOX_BREAK
UNSKIPPABLE "Because " TEXT_SPEED("\x03") "Saria...really...\n"
"liked..." TEXT_SPEED("\x00")  TEXTID("\x10\x71")
);

DECLARE_MESSAGE_NES(0x1071,
SHIFT("\x4B") "Hey, you."BOX_BREAK"If you see him somewhere, please\n"
"let him know..." TEXTID("\x10\xD6")
);

DECLARE_MESSAGE_NES(0x1072,
"Teach me some fancy fencing!\n"
"All I've ever done is tap " COLOR("\x42") "[B] " COLOR("\x40") "all\n"
"my life!"
);

DECLARE_MESSAGE_NES(0x1073,
"I still think you really look like\n"
"somebody I've seen before, mister."
);

DECLARE_MESSAGE_NES(0x1074,
"You're such a big, strong guy!\n"
"I really want to be like you \n"
"someday even though I'll always be\n"
"small."
);

DECLARE_MESSAGE_NES(0x1075,
NAME "... I wonder if he \n"
"will come back..."
);

DECLARE_MESSAGE_NES(0x1076,
"I feel like I've known you for a\n"
"long time, mister!"
);

DECLARE_MESSAGE_NES(0x1077,
"Now that the " COLOR("\x41") "Deku Tree's sprout" COLOR("\x40") "\n"
"is growing in the Great Deku \n"
"Tree's meadow, the forest has\n"
"returned to normal!"
);

DECLARE_MESSAGE_NES(0x1078,
"We'll all work together to protect\n"
"the forest!"
);

DECLARE_MESSAGE_NES(0x1079,
"Somehow, a fair wind has begun\n"
"to blow recently."
);

DECLARE_MESSAGE_NES(0x107A,
"Since a fair wind started to \n"
"blow, I'm sure " NAME " \n"
"will come back!"
);

DECLARE_MESSAGE_NES(0x107B,
"I wonder if Saria will come back..."
);

DECLARE_MESSAGE_NES(0x107C,
"I'm sure " NAME " will \n"
"return someday!"
);

DECLARE_MESSAGE_NES(0x107D,
UNSKIPPABLE  SHIFT("\x2E")  COLOR("\x44") "Great Deku Tree...\n"
COLOR("\x40")  SHIFT("\x48")  COLOR("\x44") "I'm back!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x107E,
UNSKIPPABLE "This evil man ceaselessly uses\n"
"his vile, sorcerous powers in his\n"
"search for the Sacred Realm that\n"
"is connected to Hyrule..."BOX_BREAK
UNSKIPPABLE "For it is in that Sacred Realm \n"
"that one will find the divine\n"
"relic, the " COLOR("\x44") "Triforce" COLOR("\x40") ", which contains \n"
"the essence of the gods..."
);

DECLARE_MESSAGE_NES(0x107F,
QUICKTEXT_ENABLE  SHIFT("\x06") "Before time began, before spirits\n"
SHIFT("\x31") "and life existed..." QUICKTEXT_DISABLE  FADE("\x50")
);

DECLARE_MESSAGE_NES(0x1080,
QUICKTEXT_ENABLE  SHIFT("\x02") "Three golden goddesses descended\n"
SHIFT("\x04") "upon the chaos that was Hyrule..." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x1081,
QUICKTEXT_ENABLE  SHIFT("\x13") "Din, the goddess of power..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x1082,
QUICKTEXT_ENABLE  SHIFT("\x09") "Nayru, the goddess of wisdom..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x1083,
QUICKTEXT_ENABLE  SHIFT("\x06") "Farore, the goddess of courage..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x1084,
QUICKTEXT_ENABLE  SHIFT("\x53") "Din..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x1085,
QUICKTEXT_ENABLE  SHIFT("\x02") "With her strong flaming arms, she\n"
SHIFT("\x0A") "cultivated the land and created\n"
SHIFT("\x3A") "the red earth." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x1086,
QUICKTEXT_ENABLE  SHIFT("\x4C") "Nayru..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x1087,
QUICKTEXT_ENABLE  SHIFT("\x03") "Poured her wisdom onto the earth\n"
SHIFT("\x0F") "and gave the spirit of law to\n"
SHIFT("\x45") "the world." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x1088,
QUICKTEXT_ENABLE  SHIFT("\x4B") "Farore..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x1089,
QUICKTEXT_ENABLE  SHIFT("\x09") "With her rich soul, produced all\n"
SHIFT("\x14") "life forms who would uphold\n"
SHIFT("\x4B") "the law." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x108A,
QUICKTEXT_ENABLE  SHIFT("\x16") "The three great goddesses,\n"
SHIFT("\x22") "their labors completed,\n"
SHIFT("\x19") "departed for the heavens." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x108B,
QUICKTEXT_ENABLE  SHIFT("\x14") "And golden sacred triangles\n"
SHIFT("\x07") "remained at the point where the\n"
SHIFT("\x1B") "goddesses left the world." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x108C,
QUICKTEXT_ENABLE  SHIFT("\x08") "Since then, the sacred triangles\n"
SHIFT("\x0E") "have become the basis of our\n"
SHIFT("\x2E") "world's providence." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x108D,
QUICKTEXT_ENABLE  SHIFT("\x0F") "And, the resting place of the\n"
SHIFT("\x1C") "triangles has become the\n"
SHIFT("\x3B") "Sacred Realm." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x108E,
"Hey kid, you did quite well...\n"
"It looks like you may be gaining\n"
"some slight skill..."BOX_BREAK_DELAYED("\x3C") "But you have defeated only my\n"
"phantom...\n"
"When you fight the real me, it \n"
"won't be so easy!"BOX_BREAK_DELAYED("\x3C") "What a worthless creation that \n"
"ghost was! I will banish it to\n"
"the gap between dimensions!!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x108F,
UNSKIPPABLE "I always believed that you would \n"
"come. Because I know you..."BOX_BREAK
UNSKIPPABLE "No..."BOX_BREAK_DELAYED("\x1E")  UNSKIPPABLE "You don't have to explain\n"
"it to me..."BOX_BREAK
UNSKIPPABLE "Because it is destiny that you \n"
"and I can't live in the same world."
);

DECLARE_MESSAGE_NES(0x1090,
UNSKIPPABLE "I will stay here as the Forest\n"
"Sage and help you..."BOX_BREAK
UNSKIPPABLE "Now, please take this \n"
COLOR("\x42") "Medallion" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x1091,
UNSKIPPABLE "Thou hast verily demonstrated \n"
"thy courage..."BOX_BREAK
UNSKIPPABLE "I knew that thou wouldst be able\n"
"to carry out my wishes..."
);

DECLARE_MESSAGE_NES(0x1092,
"Now, I have yet more to tell ye,\n"
"wouldst thou listen...\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1093,
UNSKIPPABLE  NAME "...\n"
"Go now to Hyrule Castle..."BOX_BREAK
UNSKIPPABLE "There, thou will surely meet\n"
"the " COLOR("\x41") "Princess of Destiny" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Take " COLOR("\x41") "this stone " COLOR("\x40") "with you.\n"
"The stone that man wanted so\n"
"much, that he cast the curse on\n"
"me..."
);

DECLARE_MESSAGE_NES(0x1094,
UNSKIPPABLE "I" COLOR("\x41") " " COLOR("\x40") "knew...\n"
"that you would leave the forest...\n"
"someday, " NAME "..."BOX_BREAK
UNSKIPPABLE "Because you are different from\n"
"me" COLOR("\x41") " " COLOR("\x40") "and my friends...."
);

DECLARE_MESSAGE_NES(0x1095,
UNSKIPPABLE  SFX("\x68\x44")  COLOR("\x44") "Hello, " QUICKTEXT_ENABLE  NAME  QUICKTEXT_DISABLE "!\n"
"Wake up!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "The" COLOR("\x41") " Great Deku Tree " COLOR("\x44") "wants\n"
"to talk to you!\n"
QUICKTEXT_ENABLE  NAME ", get up!" QUICKTEXT_DISABLE  COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1096,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44") "Hey! " QUICKTEXT_ENABLE "C'mon!" QUICKTEXT_DISABLE  COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Can Hyrule's destiny really depend\n"
"on such a lazy boy?" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1097,
"Jumping is going out of style now.\n"
"I'm crazy about doing " COLOR("\x41") "backflips" COLOR("\x40") "!\n"
SHIFT("\x32") "Can you do one?"
);

DECLARE_MESSAGE_NES(0x1098,
UNSKIPPABLE  COLOR("\x44") "The " COLOR("\x41") "Great Deku Tree \n"
COLOR("\x44") "has summoned you!\n"
"So let's get going, right now!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x1099,
UNSKIPPABLE  SHIFT("\x4B") "Navi...\n"
SHIFT("\x23") "Navi, where art thou?\n"
SHIFT("\x39") "Come hither...."
);

DECLARE_MESSAGE_NES(0x109A,
UNSKIPPABLE "Oh, " COLOR("\x44") "Navi the fairy" COLOR("\x40") "...\n"
"Listen to my words, the words of \n"
"the " COLOR("\x41") "Deku Tree" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Dost thou sense it?\n"
"The climate of evil descending \n"
"upon this realm..."BOX_BREAK
UNSKIPPABLE "Malevolent forces even now are\n"
"mustering to attack our land\n"
"of Hyrule..."BOX_BREAK
UNSKIPPABLE "For so long, the " COLOR("\x41") "Kokiri Forest" COLOR("\x40") ", the\n"
"source of life, has stood as a \n"
"barrier, deterring outsiders and \n"
"maintaining the order of the world..."BOX_BREAK
UNSKIPPABLE "But...before this tremendous evil\n"
"power, even my power is as \n"
"nothing..."BOX_BREAK
UNSKIPPABLE "It seems the time has come for \n"
"the " COLOR("\x41") "boy without a fairy " COLOR("\x40") "to begin \n"
"his journey..."BOX_BREAK
UNSKIPPABLE "The youth whose destiny it is to\n"
"lead Hyrule to the path of \n"
"justice and truth..."BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Navi" COLOR("\x40") "...go now! Find our young\n"
"friend and guide him to me..."BOX_BREAK
UNSKIPPABLE "I do not have much time left."BOX_BREAK
UNSKIPPABLE "Fly, Navi, fly! The fate of the\n"
"forest, nay, the world, depends\n"
"upon thee!"
);

DECLARE_MESSAGE_NES(0x109B,
UNSKIPPABLE  SFX("\x38\x82") "Please forgive me, master! I'll \n"
"never do it again! If you spare \n"
"me, I'll teach you something cool."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "You will never beat my brothers \n"
"up ahead unless you punish them \n"
"in the proper order."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "The order is..." TEXT_SPEED("\x05")  COLOR("\x44") "2  3  1" COLOR("\x40")  TEXT_SPEED("\x00") "\n"
QUICKTEXT_ENABLE  COLOR("\x44") "Twenty-three is number one!" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Do you think I'm a traitor?" EVENT
);

DECLARE_MESSAGE_NES(0x109C,
UNSKIPPABLE  SFX("\x38\x82") "How did you know our secret?!\n"
"How " QUICKTEXT_ENABLE "irritating!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "It's so annoying that I'm going to\n"
"reveal the secret of Queen Gohma\n"
"to you!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "In order to administer the coup de\n"
"grace to Queen Gohma, strike\n"
"with your sword " COLOR("\x41") "while she's \n"
"stunned" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Oh, Queenie..."BOX_BREAK
SFX("\x38\x80")  QUICKTEXT_ENABLE "Sorry about that!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x109D,
"In the vast, deep forest of Hyrule..."BOX_BREAK_DELAYED("\x28")  SHIFT("\x16") "Long have I served as the\n"
SHIFT("\x33") "guardian spirit...\n"
SHIFT("\x0C") "I am known as the Deku Tree..." FADE("\x46")
);

DECLARE_MESSAGE_NES(0x109E,
SHIFT("\x0B") "The children of the forest, the\n"
SHIFT("\x19") "Kokiri, live here with me."BOX_BREAK_DELAYED("\x3C")  SHIFT("\x0B") "Each Kokiri has his or her own\n"
SHIFT("\x38") "guardian fairy." FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x109F,
SHIFT("\x0B") "However, there is one boy" COLOR("\x41") " " COLOR("\x40") "who\n"
SHIFT("\x20") "does not have a fairy..." FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x10A0,
SFX("\x38\x82") "I surrender! In return, I will sell \n"
"you Deku Nuts!\n"
COLOR("\x41") "5 pieces   20 Rupees" COLOR("\x40") " they are!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10A1,
SFX("\x38\x82") "All right! You win! In return,\n"
"I will sell you Deku Sticks!\n"
COLOR("\x41") "1 piece   15 Rupees " COLOR("\x40") "they are!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10A2,
SFX("\x38\x82") "All right! You win! In return for\n"
"sparing me, I will sell you a \n"
"Piece of Heart!\n"
COLOR("\x41") "1 piece   10 Rupees " COLOR("\x40") "it is!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10A3,
SFX("\x38\x80")  QUICKTEXT_ENABLE "Let's make a deal!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No way" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x10A4,
SFX("\x38\x82")  QUICKTEXT_ENABLE "YIKES!!" QUICKTEXT_DISABLE "\n"
"I'm going home then!"
);

DECLARE_MESSAGE_NES(0x10A5,
SFX("\x38\x82") "Not enough Rupees! \n"
"Come back again!"
);

DECLARE_MESSAGE_NES(0x10A6,
SFX("\x38\x82") "You can't have this now!\n"
"Come back again!"
);

DECLARE_MESSAGE_NES(0x10A7,
SFX("\x38\x80")  QUICKTEXT_ENABLE  SHIFT("\x2D") "Thank you very much!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x10A8,
UNSKIPPABLE "I've been waiting for you,\n"
NAME "!"BOX_BREAK
UNSKIPPABLE "This is the " COLOR("\x41") "Sacred Forest Meadow" COLOR("\x40") ".\n"
"It's" COLOR("\x41") " " COLOR("\x40") "my secret place!\n"
"I feel..."BOX_BREAK
UNSKIPPABLE "This place will be very \n"
"important for both of us someday.\n"
"That's what I feel."BOX_BREAK
UNSKIPPABLE "If you play the Ocarina here, you \n"
"can talk with the spirits in the \n"
"forest." TEXTID("\x10\xA9")
);

DECLARE_MESSAGE_NES(0x10A9,
"Would you like to play the \n"
"Ocarina with me?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"Don't do it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10AA,
UNSKIPPABLE "OK, try to follow along with the\n"
"melody I will play.\n"
"Are you ready?"
);

DECLARE_MESSAGE_NES(0x10AB,
UNSKIPPABLE "Huh?!\n"
"How boring!\n"
"C'mon! Play along!"
);

DECLARE_MESSAGE_NES(0x10AC,
UNSKIPPABLE  SFX("\x68\x63")  SHIFT("\x36") "Great! Great!"BOX_BREAK
UNSKIPPABLE "Please don't forget this song!\n"
"Do you promise?" TEXTID("\x10\xAD")
);

DECLARE_MESSAGE_NES(0x10AD,
"When you want to hear my voice,\n"
"play " COLOR("\x42") "Saria's Song" COLOR("\x40") ". You can talk \n"
"with me anytime..."
);

DECLARE_MESSAGE_NES(0x10AE,
"Are you taking good care of \n"
"my Ocarina?"
);

DECLARE_MESSAGE_NES(0x10AF,
UNSKIPPABLE  SFX("\x38\x80") "Cool!\n"
"You're great!  You scored\n"
"three perfect bull's-eyes!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "I have to give a neat present\n"
"to such a wonderful person!\n"
"Please take it!" EVENT
);

DECLARE_MESSAGE_NES(0x10B0,
"Mido might know something about\n"
"Saria's whereabouts."BOX_BREAK"I think Mido is sulking in one of \n"
"the houses around here."
);

DECLARE_MESSAGE_NES(0x10B1,
SHIFT("\x5A")  COLOR("\x44") "??\n"
COLOR("\x40")  SHIFT("\x15")  COLOR("\x44") "No response. He's sleeping." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10B2,
UNSKIPPABLE "Cojiro?  Why?\n"
"Normally only a nice guy like me \n"
"can tame you..."BOX_BREAK
UNSKIPPABLE "Which means..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x01") "You... " TEXT_SPEED("\x00") "You must be a nice guy!\n"
QUICKTEXT_ENABLE "Must be!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "You must be!!" QUICKTEXT_DISABLE "\n"
"Please Mr. Nice Guy! Please!"BOX_BREAK
UNSKIPPABLE "Deliver this stuff to the " COLOR("\x41") "old\n"
"hag in the potion shop " COLOR("\x40") "in Kakariko\n"
"Village!" EVENT
);

DECLARE_MESSAGE_NES(0x10B3,
"This will disappear if you take\n"
"too long, so you gotta hurry!\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"I can't" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10B4,
"Oh, yeah. " QUICKTEXT_ENABLE "That's it!" QUICKTEXT_DISABLE "\n"
"You aren't a nice guy after all!!\n"
QUICKTEXT_ENABLE "Get away from me!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x10B5,
"Saria wanted to see you...\n"
"Did she find you already?"
);

DECLARE_MESSAGE_NES(0x10B6,
"Hurry up, nice guy!\n"
"Before it disappears, deliver it\n"
"to that old wench...."
);

DECLARE_MESSAGE_NES(0x10B7,
UNSKIPPABLE "That guy isn't here anymore."BOX_BREAK
UNSKIPPABLE "Anybody who comes into the \n"
"forest will be lost."BOX_BREAK
UNSKIPPABLE "Everybody will become a Stalfos.\n"
"Everybody, Stalfos.\n"
"So, he's not here anymore.\n"
"Only his saw is left. Hee hee." TEXTID("\x10\xB8")
);

DECLARE_MESSAGE_NES(0x10B8,
"That medicine is made of \n"
"forest mushrooms. Give it back!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10B9,
"Heh heh heh.\n"
"Are you going to be... too?\n"
"Heh heh!"
);

DECLARE_MESSAGE_NES(0x10BA,
"We sell shields, but not swords!" EVENT
);

DECLARE_MESSAGE_NES(0x10BB,
UNSKIPPABLE "You know " COLOR("\x42") "Saria's Song" COLOR("\x40") "! We should\n"
"be friends! Here, take this!"
);

DECLARE_MESSAGE_NES(0x10BC,
"Hi! Do you think my face is kind\n"
"of plain?\n"
"It's just not very unusual..."
);

DECLARE_MESSAGE_NES(0x10BD,
"Let's play again sometime!"
);

DECLARE_MESSAGE_NES(0x10BE,
UNSKIPPABLE "Follow along with our song on \n"
"your Ocarina. We'll lead you \n"
"into it."
);

DECLARE_MESSAGE_NES(0x10BF,
UNSKIPPABLE "That was quite a nice session.\n"
"As a token of our friendship, \n"
"please take this."
);

DECLARE_MESSAGE_NES(0x10C0,
UNSKIPPABLE "Hey, over here!\n"
"Hoo hoo!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  NAME "...Good to see you\n"
"again! Listen to this!\n"
"Hoot hoot...." TEXTID("\x10\xC1")
);

DECLARE_MESSAGE_NES(0x10C1,
"After going through the Lost \n"
"Woods, you will come upon the \n"
COLOR("\x42") "Sacred Forest Meadow" COLOR("\x40") "."BOX_BREAK"That is a sacred place where few\n"
"people have ever walked."BOX_BREAK"Shhhh...What's that?\n"
"I can hear a mysterious tune..."BOX_BREAK"You should listen for that tune\n"
"too...\n"
"Hoo hoo ho!" EVENT
);

DECLARE_MESSAGE_NES(0x10C2,
"Do you want to hear what I said\n"
"again?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10C3,
UNSKIPPABLE "If you are courageous, you\n"
"will make it through the forest\n"
"just fine..."BOX_BREAK
UNSKIPPABLE "Just follow your ears and listen\n"
"to the sounds coming from the\n"
"forest! \n"
"Hoot hoot!"
);

DECLARE_MESSAGE_NES(0x10C4,
UNSKIPPABLE "Hoo hoo!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Did you learn an Ocarina song\n"
"from Saria?"BOX_BREAK
UNSKIPPABLE "That melody seems to have some\n"
"mysterious power."BOX_BREAK
UNSKIPPABLE "There may be some other \n"
"mysterious songs like this that\n"
"you can learn in Hyrule." TEXTID("\x10\xC5")
);

DECLARE_MESSAGE_NES(0x10C5,
"If you hold the Ocarina with " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"where a melody is necessary, a \n"
COLOR("\x41") "musical staff " COLOR("\x40") "will appear."BOX_BREAK"I recommend that you play a song\n"
"you know."BOX_BREAK"I also suggest that you play even\n"
"when a score is not displayed. \n"
"Just like this:\n"
"Hoo hoo hoo hoot hoot hoot!" EVENT
);

DECLARE_MESSAGE_NES(0x10C6,
"Do you want to hear what I\n"
"said again?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x10C7,
UNSKIPPABLE "Melodies you have learned \n"
"will be recorded on the " COLOR("\x44") "Quest \n"
"Status Subscreen" COLOR("\x40") ". You should \n"
"memorize those melodies."
);

DECLARE_MESSAGE_NES(0x10C8,
UNSKIPPABLE "Ohh...That bum! I don't know why \n"
"he's always so mean to everyone!"BOX_BREAK
UNSKIPPABLE "What he said is true, though." TEXTID("\x10\xC9")
);

DECLARE_MESSAGE_NES(0x10C9,
UNSKIPPABLE "The forest...strange things have\n"
"been happening here lately..."BOX_BREAK
UNSKIPPABLE "You need to be ready for anything.\n"
"You'd better find a weapon!" TEXTID("\x10\x32")
);

DECLARE_MESSAGE_NES(0x10CA,
SFX("\x38\x82") "All right! You win! In return,\n"
"I will sell you " COLOR("\x41") "Deku Seeds" COLOR("\x40") "!\n"
COLOR("\x41") "30 pieces   40 Rupees" COLOR("\x40") " they are!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10CB,
SFX("\x38\x82") "I give up! If you let me go,\n"
"I will sell you a " COLOR("\x41") "Deku Shield" COLOR("\x40") "! It's\n"
COLOR("\x41") "50 Rupees" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10CC,
SFX("\x38\x82") "I quit! If you let me go, I'll sell \n"
"you some " COLOR("\x41") "Bombs" COLOR("\x40") "!\n"
COLOR("\x41") "5 pieces   40 Rupees" COLOR("\x40") " they are!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10CD,
SFX("\x38\x82") "Knock it off! Leave me alone, and \n"
"I will sell you " COLOR("\x41") "Arrows" COLOR("\x40") "!\n"
COLOR("\x41") "30 pieces   70 Rupees" COLOR("\x40") " they are!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10CE,
SFX("\x38\x82") "All right! You win! If you spare \n"
"me, I will sell you a " COLOR("\x41") "Red Potion" COLOR("\x40") " \n"
"for " COLOR("\x41") "40 Rupees" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10CF,
SFX("\x38\x82") "All right! You win! Spare me, and\n"
"I will sell you a " COLOR("\x42") "Green Potion" COLOR("\x40") " for \n"
COLOR("\x41") "40 Rupees" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10D0,
UNSKIPPABLE "What?! You've got a fairy?!\n"
"Say what? The Great Deku Tree\n"
"actually summoned you?" TEXTID("\x10\xD1")
);

DECLARE_MESSAGE_NES(0x10D1,
UNSKIPPABLE "Whaaaaaaat?!"BOX_BREAK
UNSKIPPABLE "Why would he summon you and not \n"
"the great " COLOR("\x41") "Mido" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "This isn't funny..."BOX_BREAK
UNSKIPPABLE "I don't believe it!\n"
"You aren't even fully equipped\n"
"yet!"BOX_BREAK
UNSKIPPABLE "How do you think you're going to \n"
"help the Great Deku Tree without\n"
"both a " COLOR("\x42") "sword" COLOR("\x41") " " COLOR("\x40") "and " COLOR("\x44") "shield" COLOR("\x41") " " COLOR("\x40") "ready?"BOX_BREAK"What? You're right, I don't have\n"
"my equipment ready, but..." TEXTID("\x10\x30")
);

DECLARE_MESSAGE_NES(0x10D2,
UNSKIPPABLE  SHIFT("\x2D") "Eh, what's that?!"BOX_BREAK
UNSKIPPABLE "Oh, you have a " COLOR("\x44") "Deku Shield" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "And what's THAT?!"BOX_BREAK
UNSKIPPABLE "Is that the " COLOR("\x42") "Kokiri Sword" COLOR("\x40") "?!"BOX_BREAK
UNSKIPPABLE "GOOD GRIEF!!" TEXTID("\x10\xD3")
);

DECLARE_MESSAGE_NES(0x10D3,
UNSKIPPABLE "Well, even with all that stuff, \n"
"a wimp is still a wimp, huh?" TEXTID("\x10\x34")
);

DECLARE_MESSAGE_NES(0x10D4,
SFX("\x38\x82") "I lost! Now I'll sell you a " COLOR("\x41") "Deku \n"
"Stick " COLOR("\x40") "for " COLOR("\x41") "15 Rupees" COLOR("\x40") "." TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10D5,
SFX("\x38\x82") "I lost! Now I'll sell you " COLOR("\x41") "Deku \n"
"Nuts " COLOR("\x40") "if you leave me alone.\n"
COLOR("\x41") "5 pieces   20 Rupees " COLOR("\x40") "they are." TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10D6,
"And also..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x0D") "I'm sorry for being mean to him." QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x45") "Tell him that, too."
);

DECLARE_MESSAGE_NES(0x10D7,
"Hee hee hee!\n"
"You came all the way up here?\n"
"You're a real man!" TEXTID("\x10\xD8")
);

DECLARE_MESSAGE_NES(0x10D8,
"Look! Isn't this view pretty?\n"
"Change your viewpoint with " COLOR("\x46") "[C-Up]" COLOR("\x40") ",\n"
"so you can look around the forest\n"
"with " COLOR("\x44") "[Control Stick]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x10D9,
"What did you do to the Great\n"
"Deku Tree?"
);

DECLARE_MESSAGE_NES(0x10DA,
"If you want to go to the Lost \n"
"Woods, you'd better equip the\n"
"right gear!\n"
"Hee hee!"
);

DECLARE_MESSAGE_NES(0x10DB,
SFX("\x38\x82") "All my young Deku Scrub brothers\n"
"say...\n"
"You have a horrible face!"BOX_BREAK
SFX("\x38\x82") "But don't worry! We will reward\n"
"you with many " COLOR("\x41") "Deku Nuts" COLOR("\x40") "."BOX_BREAK
SFX("\x38\x82") "Of course, we will also enable \n"
"you to carry more of them!"BOX_BREAK"Abracadabra..."BOX_BREAK
SFX("\x38\x80") "Alakazaaaam!!" EVENT
);

DECLARE_MESSAGE_NES(0x10DC,
SFX("\x38\x82") "I surrender!"BOX_BREAK
SFX("\x38\x80") "To make your quest easier,\n"
"I can enable you to pick up more\n"
COLOR("\x41") "Deku Sticks" COLOR("\x40") "!\n"
"But, it'll cost you " COLOR("\x41") "40 Rupees" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10DD,
SFX("\x38\x82") "I surrender!"BOX_BREAK
SFX("\x38\x80") "To make your quest easier, I can\n"
"enable you to pick up more " COLOR("\x41") "Deku\n"
"Nuts" COLOR("\x40") "!\n"
"But, it'll cost you " COLOR("\x41") "40 Rupees" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_NES(0x10DE,
SFX("\x38\x82") "So sorry!\n"
"You can't buy that right now!"
);

DECLARE_MESSAGE_NES(0x10DF,
"That guy isn't here anymore."BOX_BREAK"Anybody who comes into the \n"
"forest will be lost."BOX_BREAK"Everybody will become a Stalfos.\n"
"Everybody, Stalfos.\n"
"So, he's not here anymore."
);

DECLARE_MESSAGE_NES(0x2000,
UNSKIPPABLE "Thank you very much for the \n"
"other day... I haven't even asked\n"
"you your name yet..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........" TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Really?\n"
NAME "!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "That's what I thought!" QUICKTEXT_DISABLE "\n"
"You're the fairy boy from the\n"
"forest! That was years ago!\n"
"Do you remember me?"BOX_BREAK
UNSKIPPABLE "You do? I was sure it was you\n"
"because Epona remembered you!"BOX_BREAK
UNSKIPPABLE "Oh, I have to tell you about\n"
COLOR("\x41") "Mr. Ingo" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "He was afraid that the Evil King\n"
"might find out that Epona had\n"
"been taken away...It really upset\n"
"him!"BOX_BREAK
UNSKIPPABLE "But one day, all of a sudden, he\n"
"went back to being a normal, " COLOR("\x41") "nice\n"
"person" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Now my dad is coming back...I\n"
"can't believe it, but peace is\n"
"returning to this ranch!"BOX_BREAK
UNSKIPPABLE "It's all because of you! I\n"
"owe you so much!"BOX_BREAK
UNSKIPPABLE "Thank you! Thank you,\n"
NAME "!"
);

DECLARE_MESSAGE_NES(0x2001,
"How is " COLOR("\x41") "Epona " COLOR("\x40") "doing?"BOX_BREAK"If you play " COLOR("\x41") "Epona's Song " COLOR("\x40") "with\n"
"your Ocarina, she will surely\n"
"come to you."BOX_BREAK"Please come back to the ranch\n"
"whenever you want to " COLOR("\x41") "train \n"
COLOR("\x40") "Epona!"
);

DECLARE_MESSAGE_NES(0x2002,
UNSKIPPABLE "Epona" COLOR("\x41") " " COLOR("\x40") "looks great!\n"
"It looks like you were able\n"
"to tame her, too!" TEXTID("\x20\x03")
);

DECLARE_MESSAGE_NES(0x2003,
"How about trying your skill with\n"
"Epona on an " COLOR("\x41") "obstacle course" COLOR("\x40") "?"BOX_BREAK"I'll time you for " COLOR("\x41") "two laps" COLOR("\x40") ".\n"
"It's pretty challenging. If you\n"
"miss jumping a fence in the \n"
"proper order, you'll fail."BOX_BREAK"How about it?\n"
"Do you want to try? \n"
TWO_CHOICE  COLOR("\x42") "Let's go\n"
"Don't do it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2004,
"Well, your time was " COLOR("\x41")  RACE_TIME  COLOR("\x40") ".\n"
"You have to train harder!"BOX_BREAK"Remember, you don't need to \n"
"accelerate to jump over low \n"
"fences, but you do need to go\n"
"fast to jump the high fences!"
);

DECLARE_MESSAGE_NES(0x2005,
NAME "...can you hear me?\n"
"It's me, Zelda..." FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x2006,
SFX("\x28\xDF") "Moooooooooo!"BOX_BREAK"What a nice song...\n"
"It reminds me of the pasture..."BOX_BREAK"That song makes me feel so good,\n"
"I can produce a lot of milk!" EVENT
);

DECLARE_MESSAGE_NES(0x2007,
"Have some of my refreshing and \n"
"nutritious milk!" EVENT
);

DECLARE_MESSAGE_NES(0x2008,
NAME ", when you hold\n"
"this Ocarina in your hand..."BOX_BREAK_DELAYED("\x3C") "I won't be around anymore..."BOX_BREAK_DELAYED("\x3C") "I wanted to wait for you, but I\n"
"couldn't delay any longer..."BOX_BREAK_DELAYED("\x3C") "At least I could leave you the \n"
"Ocarina and " COLOR("\x44") "this melody" COLOR("\x40") "..." FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x2009,
UNSKIPPABLE "Now, " NAME ".\n"
"Play this melody in front of the\n"
"altar in the Temple of Time.\n"
"You must protect the Triforce!"
);

DECLARE_MESSAGE_NES(0x200A,
UNSKIPPABLE "Wha-ha-ha-hah! Do you think \n"
"you're in disguise, Mr. Hero?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x57") "Oh?"BOX_BREAK
UNSKIPPABLE "Is that a \"Kee...something...\"\n"
"character mask? I heard he's \n"
"very popular recently?"BOX_BREAK
UNSKIPPABLE "He's my boy's favorite. That\n"
"\"Kee...something...\" mask...\n"
"If you don't mind..." TEXTID("\x20\x0B")
);

DECLARE_MESSAGE_NES(0x200B,
"Will you sell it to me?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No way" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x200C,
"I won't give up! I have plenty of\n"
"patience. I have to for this \n"
"job!  Hah hah hah!" EVENT
);

DECLARE_MESSAGE_NES(0x200D,
UNSKIPPABLE "Mmmm...mumble...mumble...\n"
"Huh? Yeah, I'm awake!"BOX_BREAK
UNSKIPPABLE "What?"BOX_BREAK
UNSKIPPABLE "Hey, it's you! Welcome!"BOX_BREAK
UNSKIPPABLE "Awww... That was rough!\n"
"Malon yelled at me for a long\n"
"time!"BOX_BREAK
UNSKIPPABLE "You took care of us, so I'm proud \n"
"to give you this " COLOR("\x41") "milk" COLOR("\x40") "! You can \n"
"keep the bottle for yourself."
);

DECLARE_MESSAGE_NES(0x200E,
"The " COLOR("\x41") "road is closed " COLOR("\x40") "beyond this\n"
"point!\n"
"Can't you read the sign over \n"
"there?"BOX_BREAK"Eh? Oh, I see. You're just a kid,\n"
"and you can't read yet. \n"
"Ha ha hah!"
);

DECLARE_MESSAGE_NES(0x200F,
"I don't want that!"
);

DECLARE_MESSAGE_NES(0x2010,
UNSKIPPABLE "Oh, this is...\n"
"This is surely Princess Zelda's \n"
"handwriting! Well, let's see...\n"
"Hmmm... OK..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x06") "\"" COLOR("\x45") "This is " NAME "...\n"
COLOR("\x40")  SHIFT("\x06")  COLOR("\x45") "He is under my orders to save\n"
COLOR("\x40")  SHIFT("\x06")  COLOR("\x45") "Hyrule." COLOR("\x40") "\""BOX_BREAK
UNSKIPPABLE "Wah ha ha ha hah!\n"
"What kind of funny game has our\n"
"Princess come up with now?!"BOX_BREAK
UNSKIPPABLE "OK, OK, all right.  You can go \n"
"now... Just be careful, Mr. Hero!\n"
TEXT_SPEED("\x01")  QUICKTEXT_ENABLE "Wah" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "hah" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "hah!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_NES(0x2011,
"Oh, Mr. Hero!\n"
"Thanks for all your hard work!\n"
TEXT_SPEED("\x01")  QUICKTEXT_ENABLE "Wah" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "hah" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "!!"
);

DECLARE_MESSAGE_NES(0x2012,
"Wow! Great!\n"
"Your time was " COLOR("\x41")  RACE_TIME  COLOR("\x40") "!\n"
"You and Epona are a great\n"
"team!"
);

DECLARE_MESSAGE_NES(0x2013,
"Oh, that's too bad.\n"
"If you had something to put it in,\n"
"I could give some to you..." EVENT
);

DECLARE_MESSAGE_NES(0x2014,
"I am " COLOR("\x41") "Ingo" COLOR("\x40") "--Mr. Ingo to you.\n"
"I take care of these horses.\n"
"You're in my way, so scram,\n"
"kid!"
);

DECLARE_MESSAGE_NES(0x2015,
UNSKIPPABLE "By the way, Mr. Hero..."BOX_BREAK
UNSKIPPABLE "If you're going to climb \n"
"Death Mountain, you should equip\n"
"a " COLOR("\x44") "proper shield" COLOR("\x40") "! It is an active\n"
"volcano, after all!"BOX_BREAK
UNSKIPPABLE "If you go back to Hyrule Castle\n"
"Town Market, you should check\n"
"out the Bazaar. They sell the\n"
"shield you need there."BOX_BREAK
UNSKIPPABLE "Tell 'em I sent you and they\n"
"should give you a special \n"
"discount!"BOX_BREAK
UNSKIPPABLE "If you think you're good to go\n"
"already, don't worry about it."BOX_BREAK
UNSKIPPABLE "Now, I'd like to ask a favor of \n"
"you. No, I don't expect you to do\n"
"it just because of the great tip I\n"
"just gave you! I'm just asking!"BOX_BREAK
UNSKIPPABLE "Have you been to the " COLOR("\x41") "Happy\n"
"Mask Shop" COLOR("\x40") " that just opened in\n"
"the Hyrule Castle Town Market?\n"
"Everyone is talking about it!"BOX_BREAK
UNSKIPPABLE "My little boy pesters me for a \n"
"popular mask, but I don't have\n"
"time to go there..."BOX_BREAK
UNSKIPPABLE "So, could you go and get the\n"
"mask for me next time you are in\n"
"the Market? If you don't feel like\n"
"it, that's OK, but..."BOX_BREAK
UNSKIPPABLE "Well, I have no choice, this is my \n"
"job..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4B") "...sigh..." EVENT
);

DECLARE_MESSAGE_NES(0x2016,
"I wish I could go to the " COLOR("\x41") "mask\n"
"shop " COLOR("\x40") "in town to buy a present for\n"
"my kid..."BOX_BREAK
SHIFT("\x4B") "...sigh..."
);

DECLARE_MESSAGE_NES(0x2017,
"Oh no... He's not breathing..."
);

DECLARE_MESSAGE_NES(0x2018,
NAME "!?"
);

DECLARE_MESSAGE_NES(0x2019,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x29") "Arrrrgh!" QUICKTEXT_DISABLE " I lost her!"
);

DECLARE_MESSAGE_NES(0x201A,
UNSKIPPABLE  SHIFT("\x32") "You, over there! \n"
SHIFT("\x3C")  QUICKTEXT_ENABLE "Little kid!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x201B,
UNSKIPPABLE  SHIFT("\x3A")  TEXT_SPEED("\x0A")  QUICKTEXT_ENABLE "Heh" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "heh" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "heh" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00") "\n"
SHIFT("\x1C") "You want a piece of me?!\n"
SHIFT("\x3E") "Very funny!\n"
SHIFT("\x2A") "I like your attitude!"
);

DECLARE_MESSAGE_NES(0x201C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x2B") "Pathetic little fool!" QUICKTEXT_DISABLE "\n"
SHIFT("\x14") "Do you realize who you are\n"
SHIFT("\x39") "dealing with?!"
);

DECLARE_MESSAGE_NES(0x201D,
UNSKIPPABLE  SHIFT("\x34") "I am " COLOR("\x41") "Ganondorf" COLOR("\x40") "!\n"
QUICKTEXT_ENABLE  SHIFT("\x0A") "And soon, I will rule the world!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x201E,
UNSKIPPABLE  SHIFT("\x0D") "You must have seen the white\n"
SHIFT("\x12") "horse gallop past just now...\n"
SHIFT("\x23") "Which way did it go?!\n"
SHIFT("\x3D")  QUICKTEXT_ENABLE "Answer me!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x201F,
"Tsk tsk...When your time is\n"
"up, I'll kick you out of here."
);

DECLARE_MESSAGE_NES(0x2020,
"My boy will be very happy with \n"
"this! You really are Mr. Hero!\n"
"Wha ha ha hah!" EVENT
);

DECLARE_MESSAGE_NES(0x2021,
UNSKIPPABLE  SFX("\x48\x07") "You sold the 10-Rupee mask for \n"
COLOR("\x41") "15 Rupees" COLOR("\x40") ". You earned a little\n"
"profit."BOX_BREAK
UNSKIPPABLE "Let's go to the Mask Shop and\n"
"pay back the mask price of \n"
COLOR("\x41") "10 Rupees" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_NES(0x2022,
"Little kids can't go on the \n"
"\"" COLOR("\x41") "Heart-Pounding Gravedigging\n"
"Tour" COLOR("\x40") "\" described on the sign."BOX_BREAK"Since I can't do that, I'm just \n"
"imitating Dampé the gravekeeper \n"
"all day."BOX_BREAK"But with my cute face, I'm not\n"
"heart-pounding at all, am I?"
);

DECLARE_MESSAGE_NES(0x2023,
QUICKTEXT_ENABLE "Gyaah!" QUICKTEXT_DISABLE " It's Dampé the \n"
"gravekeeper!"BOX_BREAK
SHIFT("\x57") "???"BOX_BREAK"Oh, it's just a mask. I get a \n"
"different kind of fright from that\n"
"mask than I get from Dampé..."BOX_BREAK"Will you give that mask to me?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No way" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2024,
"I really do have some money, you\n"
"know."
);

DECLARE_MESSAGE_NES(0x2025,
"Hey! Time's up, young man!\n"
"You only paid 10 Rupees!\n"
"You've played around long enough!" EVENT
);

DECLARE_MESSAGE_NES(0x2026,
"With this mask, I'll be just like \n"
"Dampé! \n"
"Here's my money!"
);

DECLARE_MESSAGE_NES(0x2027,
UNSKIPPABLE  SFX("\x48\x07") "You sold the 30-Rupee mask to a\n"
"kid for full price?! \n"
"And he didn't mind paying at all!"BOX_BREAK
UNSKIPPABLE "Let's go back to the mask shop to\n"
"pay " COLOR("\x41") "30 Rupees " COLOR("\x40") "for the mask. \n"
"You can get the new mask \n"
"model, too."
);

DECLARE_MESSAGE_NES(0x2028,
"I'm gonna dig and dig! \n"
"Just like Dampé!!"
);

DECLARE_MESSAGE_NES(0x2029,
"In old times, I heard there were \n"
"many wild rabbits in the land \n"
"of Hyrule. Not anymore, though, \n"
"because of excessive hunting."BOX_BREAK"I want to become a rabbit...\n"
"Listen to the wind with \n"
"those ears, hop across the ground\n"
"with those legs..."BOX_BREAK"Even if I can only pretend."
);

DECLARE_MESSAGE_NES(0x202A,
"I bet with those long ears you \n"
"can hear the voices... \n"
"Oh, these are genuine rabbit\n"
"ears from the animal of legend!" TEXTID("\x20\x2B")
);

DECLARE_MESSAGE_NES(0x202B,
"I don't care how expensive it is!\n"
"Please sell it to me!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No way" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x202C,
"That's not the answer I wanted to \n"
"hear!"
);

DECLARE_MESSAGE_NES(0x202D,
"My long time dream! Returning to\n"
"the wild life! Finally, the actor, \n"
"stage and prop have been united!" EVENT
);

DECLARE_MESSAGE_NES(0x202E,
UNSKIPPABLE  SFX("\x48\x07") "It's a 50-Rupee mask, but he paid\n"
"you a crazy amount of money for\n"
"it--more money than you can \n"
"count!"BOX_BREAK
UNSKIPPABLE "Go back to the Mask Shop and \n"
"pay back just " COLOR("\x41") "50 Rupees " COLOR("\x40") "of this\n"
"money."
);

DECLARE_MESSAGE_NES(0x202F,
UNSKIPPABLE  SHIFT("\x0E") "So, you think you can protect\n"
SHIFT("\x36") "them from me...\n"
SHIFT("\x28") "You've got guts, kid."
);

DECLARE_MESSAGE_NES(0x2030,
UNSKIPPABLE "There are some people in Kakariko\n"
"spreading rumors that I cheated\n"
"Talon out of the ranch, but..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x2D") "Don't be " QUICKTEXT_ENABLE "ridiculous!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "That guy Talon was weak!\n"
"I, the hard-working " COLOR("\x41") "Ingo" COLOR("\x40") ", poured \n"
"so much energy into this place!"BOX_BREAK
UNSKIPPABLE "I don't want any strangers like\n"
"you saying anything bad about me!"BOX_BREAK
UNSKIPPABLE "Listen. The " COLOR("\x41") "great Ganondorf\n"
COLOR("\x40") "recognized my obvious talents and\n"
"gave the ranch to me!"BOX_BREAK
UNSKIPPABLE "I will raise a fine horse and\n"
"win recognition from the great \n"
"Ganondorf!"BOX_BREAK
UNSKIPPABLE "Say, young man, do you want\n"
"to ride one of my fine horses?" TEXTID("\x20\x31")
);

DECLARE_MESSAGE_NES(0x2031,
"Pay me " COLOR("\x41") "10 Rupees " COLOR("\x40") "and you can \n"
"ride.\n"
TWO_CHOICE  COLOR("\x42") "Ride\n"
"Don't ride" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2032,
"All right then, scram \n"
"ya little punk!"
);

DECLARE_MESSAGE_NES(0x2033,
"You don't have enough!\n"
"Save your change and \n"
"come back again!"
);

DECLARE_MESSAGE_NES(0x2034,
"Do you want to hear how to ride?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Listen\n"
"Don't listen" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2035,
"Approach the horse quietly and \n"
"stand by its side. Press " COLOR("\x43") "[A]" COLOR("\x40") " to \n"
"mount up."BOX_BREAK"Use the " COLOR("\x44") "[Control Stick] " COLOR("\x40") "to make it run. \n"
"Once it starts running, press\n"
COLOR("\x43") "[A]" COLOR("\x40") " to tap it with the whip. \n"
"It will speed up!"BOX_BREAK"When you want to jump over a\n"
"fence, accelerate and hit it\n"
"head on!"BOX_BREAK"If you try to jump over a fence \n"
"at an angle, the horse won't like\n"
"it, and it won't jump."BOX_BREAK"After the horse comes to a \n"
"complete stop, press " COLOR("\x43") "[A]" COLOR("\x40") " to \n"
"dismount. Now, have fun!" EVENT
);

DECLARE_MESSAGE_NES(0x2036,
"If you use " COLOR("\x44") "[Z] Targeting" COLOR("\x40") ", you can \n"
"talk to me from horseback."BOX_BREAK"Are you ready to go home so \n"
"soon?\n"
TWO_CHOICE  COLOR("\x42") "No, I want to ride.\n"
"Yes, I'm done." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2037,
"When you want to dismount, stop \n"
"and press " COLOR("\x43") "[A]" COLOR("\x40") "."BOX_BREAK"Hey young man!\n"
"Do I know you? I just felt as \n"
"though I've seen you\n"
"somewhere before..." TEXTID("\x20\x36")
);

DECLARE_MESSAGE_NES(0x2038,
"You're getting better!\n"
"How about a little race with me?\n"
"One lap around the corral with\n"
"that horse."BOX_BREAK"Let's make a little wager, say\n"
COLOR("\x41") "50 Rupees" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Do it\n"
"Don't do it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2039,
"Hey hey... What's the matter?\n"
"Don't you have even 50 Rupees?!\n"
"I don't want to race with someone\n"
"so poor!"
);

DECLARE_MESSAGE_NES(0x203A,
UNSKIPPABLE  SHIFT("\x39") "Sh-" QUICKTEXT_ENABLE "shoooot!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "If the great Ganondorf found out\n"
"about this humiliation...\n"
"Hey, you!!  How about another\n"
"race!  If you win..."BOX_BREAK
UNSKIPPABLE "You can keep...the horse!!" EVENT
);

DECLARE_MESSAGE_NES(0x203B,
UNSKIPPABLE "What's up with that horse?!\n"
"Is that " COLOR("\x41") "Epona" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "How did you tame that wild horse\n"
"right under my nose?!"BOX_BREAK
UNSKIPPABLE "I was going to present that horse\n"
"to the great Ganondorf... But I bet\n"
"it on the race and lost! Shooot!" EVENT
);

DECLARE_MESSAGE_NES(0x203C,
UNSKIPPABLE  SHIFT("\x36") "Hah ha hah!"BOX_BREAK
UNSKIPPABLE "As I promised, I'll give the \n"
"horse to you..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x0A") "However..."BOX_BREAK
UNSKIPPABLE "I'll never let you leave this ranch!" EVENT
);

DECLARE_MESSAGE_NES(0x203D,
"Hee hee hee... Too bad for you!\n"
"I get your 50 Rupees." EVENT
);

DECLARE_MESSAGE_NES(0x203E,
"Wah ha hah!\n"
"You're just a kid, after all!\n"
"Well, come back any time and we'll\n"
"have some more fun..."
);

DECLARE_MESSAGE_NES(0x203F,
UNSKIPPABLE "What?  What are you doing \n"
"hanging around here?\n"
"You little weirdo!"BOX_BREAK
UNSKIPPABLE "I am " COLOR("\x41") "Ingo " COLOR("\x40") "and I mind the ranch."BOX_BREAK
UNSKIPPABLE "I've been working at this ranch \n"
"for a long time for that lazy\n"
"bum, Talon."BOX_BREAK
UNSKIPPABLE "Today, for example, he's gone\n"
"somewhere for a delivery and he \n"
"hasn't come back yet!"BOX_BREAK
UNSKIPPABLE "So, I'm doing all the work around\n"
"here." TEXTID("\x20\x40")
);

DECLARE_MESSAGE_NES(0x2040,
"Oh well...It's tough to be a\n"
"working man."
);

DECLARE_MESSAGE_NES(0x2041,
UNSKIPPABLE "Hey, your clothes! They're...\n"
"different...\n"
"You're not from around here, \n"
"are you?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........." TEXT_SPEED("\x00") "........"BOX_BREAK
UNSKIPPABLE "Ohh... You're a fairy boy from \n"
"the forest! My name is " COLOR("\x41") "Malon" COLOR("\x40") "!\n"
"My dad owns Lon Lon Ranch!" TEXTID("\x20\x42")
);

DECLARE_MESSAGE_NES(0x2042,
"Dad went to the castle to deliver\n"
"some milk, and he hasn't come\n"
"back yet..."
);

DECLARE_MESSAGE_NES(0x2043,
UNSKIPPABLE "Are you going to the castle,\n"
"fairy boy?\n"
"Would you mind finding my " COLOR("\x41") "dad" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "He must have fallen asleep \n"
"somewhere around the castle. \n"
"What a thing for an adult to do!\n"
"Tee hee!"BOX_BREAK
UNSKIPPABLE "Oh yeah, if you'll look for him, I'll \n"
"give this to you."BOX_BREAK
UNSKIPPABLE "I've been incubating this\n"
"egg very carefully...\n"
"Tee hee!" EVENT
);

DECLARE_MESSAGE_NES(0x2044,
"Set the egg to " COLOR("\x46") "[C]" COLOR("\x40") " to incubate it.\n"
"Hee hee!"BOX_BREAK"My dad is really troublesome,\n"
"for an adult, isn't he?!\n"
"Hee hee!"
);

DECLARE_MESSAGE_NES(0x2045,
UNSKIPPABLE "I can't believe that I, the great\n"
COLOR("\x41") "Ingo" COLOR("\x40") ", am working on this dump of\n"
"a ranch!"BOX_BREAK
UNSKIPPABLE "Because the owner is so lazy, I\n"
"always have to do all the work \n"
"around here!" TEXTID("\x20\x46")
);

DECLARE_MESSAGE_NES(0x2046,
"I, the hard-working " COLOR("\x41") "Ingo" COLOR("\x40") ", should be \n"
"in charge, not that lazy bum, \n"
"Talon!"
);

DECLARE_MESSAGE_NES(0x2047,
UNSKIPPABLE "Oh, it's the fairy boy again!"BOX_BREAK
UNSKIPPABLE "I heard that you found my dad!\n"
"How did you like the castle? Did\n"
"you see the Princess? Hee hee!"BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "Dad came home in a hurry after\n"
"you found him. Hee hee!"BOX_BREAK
UNSKIPPABLE "Oh yeah, I have to introduce you\n"
"to my friend, fairy boy!"BOX_BREAK
UNSKIPPABLE "She's this horse. Her name is\n"
COLOR("\x41") "Epona" COLOR("\x40") ". Isn't she cute?"
);

DECLARE_MESSAGE_NES(0x2048,
"It seems like Epona is afraid of \n"
"you, fairy boy..."
);

DECLARE_MESSAGE_NES(0x2049,
"My mother composed this song.  \n"
"Isn't it nice?  Let's sing together."
);

DECLARE_MESSAGE_NES(0x204A,
"Oh, Epona!  She's grown fond of\n"
"you, fairy boy."
);

DECLARE_MESSAGE_NES(0x204B,
TEXT_SPEED("\x02") "Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z" TEXT_SPEED("\x00") "..."
);

DECLARE_MESSAGE_NES(0x204C,
"Oh...a visitor!\n"
"It's been a long time since we've\n"
"had a visitor here...\n"
"Where did you come from?"BOX_BREAK"Since Ganondorf came, people in\n"
"the Castle Town have gone, places\n"
"have been ruined, and monsters\n"
"are wandering everywhere."BOX_BREAK"Mr. Ingo is just using the ranch\n"
"to gain Ganondorf's favor..."BOX_BREAK"Everyone seems to be turning evil..."BOX_BREAK"But Dad...\n"
"He was kicked out of the ranch\n"
"by Mr. Ingo..."BOX_BREAK"If I disobey Mr. Ingo, he will treat\n"
"the horses so badly..."BOX_BREAK"So...\n"
"There's nothing I can do..."
);

DECLARE_MESSAGE_NES(0x204D,
"I bet nobody is faster than I am \n"
"now! But, I don't know if I \n"
"should be happy or sad...."
);

DECLARE_MESSAGE_NES(0x204E,
TEXT_SPEED("\x02") "Z Z Z Z Z Z Z Z Z Z Z Z Z" TEXT_SPEED("\x00") "...\n"
"S-stop that song...I...I...\n"
"Mumble... mumble..."
);

DECLARE_MESSAGE_NES(0x204F,
UNSKIPPABLE "Take a good look at that \n"
"mountain. That is " COLOR("\x41") "Death Mountain" COLOR("\x40") ",\n"
"home of the Gorons. They hold\n"
"the Spiritual Stone of Fire."
);

DECLARE_MESSAGE_NES(0x2050,
"Please keep it secret from \n"
"Mr. Ingo that I sing this song..."
);

DECLARE_MESSAGE_NES(0x2051,
UNSKIPPABLE "You...\n"
"Do you know my " COLOR("\x41") "mother's song" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Everyone really liked that song...\n"
"My dad... Even Mr. Ingo..."BOX_BREAK
UNSKIPPABLE "But...since Ganondorf appeared,\n"
"Mr. Ingo has changed completely."BOX_BREAK
UNSKIPPABLE "I can remember the good old days\n"
"only while I sing the song. Also..." TEXTID("\x20\x52")
);

DECLARE_MESSAGE_NES(0x2052,
COLOR("\x41") "Epona" COLOR("\x40") " really liked that song...\n"
"Only I could tame that horse...\n"
"Even Mr. Ingo had a hard time..."BOX_BREAK"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x2053,
"This statue's one-eyed gaze \n"
"pierces into your mind..."
);

DECLARE_MESSAGE_NES(0x2054,
"Responding to your mask, this \n"
"strange stone statue talks to \n"
"you..."BOX_BREAK"I overheard this..."
);

DECLARE_MESSAGE_NES(0x2055,
"I'm gonna turn over a new leaf \n"
"and work real hard from now on."
);

DECLARE_MESSAGE_NES(0x2056,
"Mr. Ingo... He must have been \n"
"tempted by evil powers.\n"
"He's not really a bad person \n"
"at all..."
);

DECLARE_MESSAGE_NES(0x2057,
"Z Z Z Z Z Z Z Z...\n"
"Mumble... It's not easy to\n"
"be a working man..."
);

DECLARE_MESSAGE_NES(0x2058,
"It's been a while...\n"
"Do you want to race?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2059,
"If you change your mind,\n"
"come back anytime!"
);

DECLARE_MESSAGE_NES(0x205A,
"All right then! Scram,\n"
"ya little punk!" EVENT
);

DECLARE_MESSAGE_NES(0x205B,
"Heh heh... Are you mad because \n"
"you lost? If you're that upset,\n"
"how about another race?"BOX_BREAK"Bet " COLOR("\x41") "50 Rupees " COLOR("\x40") "and race again?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Race\n"
"Don't race" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x205C,
"Thank you so much. Heh heh!" EVENT
);

DECLARE_MESSAGE_NES(0x205D,
"If I give ya more free of charge,\n"
"Ingo will get mad at me. So I'd\n"
"better sell it to you for the\n"
"normal price."
);

DECLARE_MESSAGE_NES(0x205E,
"Wanna buy milk for " COLOR("\x41") "30 Rupees" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x205F,
"Hi there, how are you?\n"
"I am Ingo. I feel so honored\n"
"to be allowed to work here."
);

DECLARE_MESSAGE_NES(0x2060,
UNSKIPPABLE "You brave lad...\n"
"We must protect this beautiful\n"
"land of Hyrule!"
);

DECLARE_MESSAGE_NES(0x2061,
UNSKIPPABLE "Oh, cute ocarina!\n"
"Are you going to play this song\n"
"with that ocarina?"
);

DECLARE_MESSAGE_NES(0x2062,
UNSKIPPABLE "At the foot of Death Mountain\n"
"you will find my village, " COLOR("\x41") "Kakariko" COLOR("\x40") ".\n"
"That is where I was born and \n"
"raised."BOX_BREAK
UNSKIPPABLE "You should talk to some of the\n"
"villagers there before you go up\n"
"Death Mountain."
);

DECLARE_MESSAGE_NES(0x2063,
UNSKIPPABLE "The song I just taught you has\n"
"some mysterious power. Only \n"
"Royal Family members are allowed\n"
"to learn this song."BOX_BREAK
UNSKIPPABLE "Remember, it will help to prove\n"
"your connection with the Royal \n"
"Family."BOX_BREAK
UNSKIPPABLE "The Princess is waiting for you to \n"
"return to the castle with the\n"
"stones. All right. We're counting\n"
"on you!"
);

DECLARE_MESSAGE_NES(0x2064,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hoo hoot!" QUICKTEXT_DISABLE "\n"
NAME "...\n"
"Look up here!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "It appears that the time has \n"
"finally come for you to start your \n"
"adventure!"BOX_BREAK
UNSKIPPABLE "You will encounter many hardships\n"
"ahead... That is your fate. Don't \n"
"feel discouraged, even during the\n"
"toughest times!" TEXTID("\x20\x65")
);

DECLARE_MESSAGE_NES(0x2065,
"Go straight this way and you will\n"
"see " COLOR("\x41") "Hyrule Castle" COLOR("\x40") "."BOX_BREAK"You will meet a " COLOR("\x41") "princess " COLOR("\x40") "there..."BOX_BREAK"If you are lost and don't know \n"
"which way to go, look at the \n"
COLOR("\x41") "Map" COLOR("\x40") "."BOX_BREAK"The areas you have explored will \n"
"be shown on the Map. Press \n"
COLOR("\x41") "START " COLOR("\x40") "to enter the Subscreens\n"
"and " COLOR("\x44") "[Z]" COLOR("\x40") " or " COLOR("\x44") "[R]" COLOR("\x40") " to find the Map."BOX_BREAK"On the " COLOR("\x41") "Map Subscreen" COLOR("\x40") ", you will\n"
"also see a " COLOR("\x41") "flashing dot" COLOR("\x40") " showing\n"
"you which way you should go next." TEXTID("\x20\x66")
);

DECLARE_MESSAGE_NES(0x2066,
"Did you get all that?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "No\n"
"Yes" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2067,
UNSKIPPABLE "All right then, I'll see you around!\n"
"Hoot hoot hoot ho!"
);

DECLARE_MESSAGE_NES(0x2068,
UNSKIPPABLE "Hey, " NAME "! This way!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "The princess is inside the castle \n"
"just ahead. Be careful not to get \n"
"caught by the guards!\n"
"Ho ho ho hoot!" EVENT
);

DECLARE_MESSAGE_NES(0x2069,
"On this ground, time flows \n"
"normally."BOX_BREAK"But time stands still while you\n"
"are in Lon Lon Ranch or in a town."BOX_BREAK"If you want time to pass normally,\n"
"you'll need to leave town."BOX_BREAK"Well, well, which way are you \n"
"going to go now?\n"
"Hoo hoo hoot!" EVENT
);

DECLARE_MESSAGE_NES(0x206A,
"Do you want to hear what I said \n"
"again?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x206B,
UNSKIPPABLE "Hoooo. You're a smart kid.\n"
"Good luck, then. Hoo hoo."
);

DECLARE_MESSAGE_NES(0x206C,
"Hey, " NAME "! \n"
"Wait a second, friend!"BOX_BREAK"Beyond this point you'll find \n"
COLOR("\x41") "Kakariko Village" COLOR("\x40") ". Have you seen \n"
"the Princess of Hyrule? If not, \n"
"I suggest you go to the castle." EVENT
);

DECLARE_MESSAGE_NES(0x206D,
"Hey, " NAME "! \n"
"Look over here!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Beyond this point you'll find\n"
COLOR("\x41") "Kakariko Village" COLOR("\x40") ". Watch your step!\n"
"Hoot hoo!" EVENT
);

DECLARE_MESSAGE_NES(0x206E,
UNSKIPPABLE  NAME ", you're the only\n"
"one who can complete the quest\n"
"ahead!\n"
"You must do your best! Hoo!"
);

DECLARE_MESSAGE_NES(0x206F,
NAME "! Wait up, buddy!\n"
"Hoo hoo!"BOX_BREAK_DELAYED("\x28") "Head south from here to reach\n"
COLOR("\x41") "Lake Hylia's " COLOR("\x40") "full, rich waters."BOX_BREAK"If you go west, you'll find \n"
COLOR("\x41") "Gerudo Valley" COLOR("\x40") ". There's a hideout\n"
"of a gang of thieves on the other\n"
"side of the valley."BOX_BREAK"Well, you're free to go anywhere\n"
"you want!\n"
"Ho ho ho...hooo!" EVENT
);

DECLARE_MESSAGE_NES(0x2070,
UNSKIPPABLE "No matter how hard it is, just\n"
"don't get discouraged. Ho Ho Hoo!"
);

DECLARE_MESSAGE_NES(0x2071,
"Beyond this point lies Lake Hylia.\n"
"It is full of deep, pure water."BOX_BREAK_DELAYED("\x28") "The " COLOR("\x43") "Zoras" COLOR("\x40") ", who live all the \n"
"way upstream, guard the sunken\n"
"temple at the lake's bottom, as \n"
"well as Zora's Fountain."BOX_BREAK"If you want to confirm its location \n"
"on the map, press " COLOR("\x41") "START " COLOR("\x40") "to \n"
"switch to the Subscreens and " COLOR("\x44") "[Z]" COLOR("\x40") " \n"
"or " COLOR("\x44") "[R]" COLOR("\x40") " to find the Map."BOX_BREAK"All the places you have visited \n"
"will be shown on the map. \n"
"Ho hoo hoot!" EVENT
);

DECLARE_MESSAGE_NES(0x2072,
UNSKIPPABLE "OK, be careful and go!"
);

DECLARE_MESSAGE_NES(0x2073,
UNSKIPPABLE "What is your name?" EVENT
);

DECLARE_MESSAGE_NES(0x2074,
UNSKIPPABLE  TEXT_SPEED("\x01") "....." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE  COLOR("\x42")  NAME  COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Strange...it sounds somehow... \n"
"familiar." EVENT
);

DECLARE_MESSAGE_NES(0x2075,
UNSKIPPABLE "OK then, " NAME "..."BOX_BREAK
UNSKIPPABLE "I'm going to tell you the secret of\n"
"the Sacred Realm that has been\n"
"passed down by the Royal Family\n"
"of Hyrule." EVENT
);

DECLARE_MESSAGE_NES(0x2076,
SHIFT("\x26") "The Ocarina of Time!" EVENT
);

DECLARE_MESSAGE_NES(0x2077,
"Did you understand well the story\n"
"I just told you?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2078,
UNSKIPPABLE "I was spying through this window\n"
"just now..."BOX_BREAK
UNSKIPPABLE "The other element from my\n"
"dream...the " COLOR("\x43") "dark clouds" COLOR("\x40") "...\n"
"I believe they symbolize...\n"
"that man in there!"BOX_BREAK"Will you look through the window\n"
"at him?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2079,
UNSKIPPABLE  TEXT_SPEED("\x01") "........" TEXT_SPEED("\x00") "Yes."BOX_BREAK
UNSKIPPABLE "I told my father about my dream..."BOX_BREAK
UNSKIPPABLE "However, he didn't believe it was\n"
"a prophecy..."BOX_BREAK
UNSKIPPABLE "But...I can sense that man's evil\n"
"intentions!" EVENT
);

DECLARE_MESSAGE_NES(0x207A,
UNSKIPPABLE "What Ganondorf is after must be \n"
"nothing less than the " COLOR("\x41") "Triforce \n"
COLOR("\x40") "of the Sacred Realm."BOX_BREAK
UNSKIPPABLE "He must have come to Hyrule to\n"
"obtain it!"BOX_BREAK
UNSKIPPABLE "And, he wants to conquer Hyrule...\n"
"no, the entire world!" EVENT
);

DECLARE_MESSAGE_NES(0x207B,
UNSKIPPABLE  NAME "...now, we are the \n"
"only ones who can protect Hyrule!" EVENT
);

DECLARE_MESSAGE_NES(0x207C,
UNSKIPPABLE "We must not let Ganondorf get\n"
"the Triforce!"BOX_BREAK
UNSKIPPABLE "I will protect the " COLOR("\x44") "Ocarina of Time\n"
COLOR("\x40") "with all my power! \n"
"He shall not have it!"BOX_BREAK
UNSKIPPABLE "You go find the other " COLOR("\x41") "two\n"
"Spiritual Stones" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Let's get the Triforce before\n"
"Ganondorf does, and then defeat \n"
"him!" EVENT
);

DECLARE_MESSAGE_NES(0x207D,
UNSKIPPABLE "One more thing...\n"
"Take this " COLOR("\x41") "letter" COLOR("\x40") "...\n"
"I'm sure it will be helpful to you." EVENT
);

DECLARE_MESSAGE_NES(0x207E,
UNSKIPPABLE "Mumble...mumble...\n"
"Huh? I'm awake already!"BOX_BREAK
UNSKIPPABLE "What?"BOX_BREAK
UNSKIPPABLE "Well I'll be! If it ain't the forest\n"
"kid from the other day!\n"
"By the way, thanks a lot for\n"
"waking me up!"BOX_BREAK
UNSKIPPABLE "It took some doing, but I finally \n"
"got Malon back in a good mood."BOX_BREAK
UNSKIPPABLE "So, what are you up to today?\n"
"Got some free time on your hands\n"
"you say?\n"
"Well how about a little game?"BOX_BREAK
UNSKIPPABLE "These three Cuccos I have here\n"
"are special " COLOR("\x41") "Super Cuccos" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "I'm going to throw these Cuccos\n"
"into that there gaggle of normal\n"
"Cuccos."BOX_BREAK
UNSKIPPABLE "If you can pick out these three \n"
"special birds from among the\n"
"normal Cuccos within the time \n"
"limit, I'll give you " COLOR("\x41") "something good" COLOR("\x40") "."BOX_BREAK"If you can't find them, I win.\n"
"It'll be 10 Rupees... Want to play?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x207F,
"Mumble...mumble...\n"
"I'm up! I'm up!"BOX_BREAK"What?"BOX_BREAK"Hey, forest kid!\n"
"Got some free time?\n"
"Then c'mon and play!"BOX_BREAK"I'm going to throw these three\n"
COLOR("\x41") "Super Cuccos " COLOR("\x40") "into that gaggle of\n"
"normal Cuccos."BOX_BREAK"If you can pick out these three \n"
"special birds from among the\n"
"normal Cuccos within the time \n"
"limit, I'll give you " COLOR("\x41") "something good" COLOR("\x40") "."BOX_BREAK"If you can't find them, I win.\n"
"It'll be 10 Rupees... Want to play?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2080,
"You have 30 seconds!\n"
"All righty then, get ready.\n"
"Here go the Super Cuccos!"BOX_BREAK
SHIFT("\x30") "START LOOKIN'!!" EVENT
);

DECLARE_MESSAGE_NES(0x2081,
"Time's up!\n"
"Too baaaaad!!"BOX_BREAK"These are some great Cuccos\n"
"aren't they!\n"
"They're raking in money for me!"BOX_BREAK"Come back to me, my babies!" EVENT
);

DECLARE_MESSAGE_NES(0x2082,
"That's one of 'em!\n"
"Keep it up! Keep it up!\n"
COLOR("\x41") "Two more" COLOR("\x40") " to find!" EVENT
);

DECLARE_MESSAGE_NES(0x2083,
"There's another!\n"
"All right, now, the moment of\n"
"truth! " COLOR("\x41") "One more" COLOR("\x40") " to find!" EVENT
);

DECLARE_MESSAGE_NES(0x2084,
"Golly! I'll be darned!\n"
"It's plum incredible!"BOX_BREAK"That's the last one!\n"
"You've found them all!\n"
"Come on over here!" EVENT
);

DECLARE_MESSAGE_NES(0x2085,
"Want to try again?"BOX_BREAK"A young man like you must have\n"
"a real fire in your belly!\n"
"Find three of them within\n"
"30 seconds."BOX_BREAK"Try again for 5 Rupees?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2086,
"Hey, you!\n"
"You've got the talent to be one of\n"
"the world's best cowboys!"BOX_BREAK"How'd you like to marry Malon?\n"
"Huh?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x2087,
UNSKIPPABLE "Haw haw! I was just kidding! \n"
"Just kidding! I think you're a little\n"
"young for that, aren't you?\n"
"Haw haw haw!"BOX_BREAK
UNSKIPPABLE "Oh...! I'm proud to present to\n"
"you a sample of our very own " COLOR("\x41") "Lon\n"
"Lon Milk" COLOR("\x40") ". You'll be energized\n"
"the moment you drink it!"BOX_BREAK
UNSKIPPABLE "After you drink it, you can \n"
"bring back the " COLOR("\x41") "bottle " COLOR("\x40") "and buy a\n"
"refill, anytime you want!" EVENT
);

DECLARE_MESSAGE_NES(0x2088,
"Hey pardner, you have an honest \n"
"face!"BOX_BREAK"When you grow up, why don't you\n"
"come to work here, on this \n"
"ranch? That's a standing offer!\n"
"I'll be waiting for you." EVENT
);

DECLARE_MESSAGE_NES(0x2089,
"Here you go! Take this super\n"
"fresh " COLOR("\x41") "Lon Lon Milk" COLOR("\x40") "!" EVENT
);

DECLARE_MESSAGE_NES(0x208A,
"Here you are! Take some super\n"
"fresh milk..."BOX_BREAK"Oh? Too baaaaad!!\n"
"You don't have an empty bottle,\n"
"do you?"
);

DECLARE_MESSAGE_NES(0x208B,
"Mumble...mumble...\n"
"I'm awake!"BOX_BREAK"What?"BOX_BREAK"Hey, " NAME "!\n"
"If you're lookin' for Malon,\n"
"she's right outside. Did you \n"
"come here to play?"BOX_BREAK"Well then, how about playing the\n"
COLOR("\x41") "Super Cucco-findin' game " COLOR("\x40") "with me?\n"
"Or, do you want to buy some\n"
COLOR("\x41") "Lon Lon Milk" COLOR("\x40") "?"BOX_BREAK"What'll it be?\n"
THREE_CHOICE  COLOR("\x42") "Lon Lon Milk - 30 Rupees\n"
"Cucco-findin' game - 10 Rupees\n"
"Quit" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x208C,
QUICKTEXT_ENABLE  COLOR("\x41") "You failed!" COLOR("\x40") "\n"
"You have to jump over all the\n"
"fences!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x208D,
QUICKTEXT_ENABLE  COLOR("\x41") "One more lap!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_NES(0x208E,
"Are you making sure to approach\n"
"the fences head on? If you \n"
"approach at an angle, the horse\n"
"won't jump!"BOX_BREAK"If you want to try again, mount\n"
"Epona and get ready!"
);

DECLARE_MESSAGE_NES(0x208F,
UNSKIPPABLE "You did it!\n"
COLOR("\x41")  RACE_TIME  COLOR("\x40") " is the new course record!"BOX_BREAK
UNSKIPPABLE "I have to give you a present to\n"
"commemorate your new record!"BOX_BREAK
UNSKIPPABLE "The present is a little too heavy\n"
"to give to you here, so I'll have it\n"
"delivered to your house. Bet you\n"
"can't wait to see it! Hee hee!"
);

DECLARE_MESSAGE_NES(0x2090,
"The record so far is " COLOR("\x41") "50 seconds" COLOR("\x40") ".\n"
"Your best time is " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "."BOX_BREAK"If you can beat the record, I'll\n"
"give you a present.\n"
"Give it your best shot, OK?"BOX_BREAK"Let's get going!" EVENT
);

DECLARE_MESSAGE_NES(0x2091,
"Your best time is " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "!\n"
"How fast can you go?!\n"
"C'mon, let's get started!" EVENT
);

DECLARE_MESSAGE_NES(0x2092,
"The current record is " COLOR("\x41") "50 seconds" COLOR("\x40") ".\n"
"First, try to beat this record!"BOX_BREAK"If you can beat the record, I'll\n"
"give you a present!\n"
"Give it your best shot, OK?"BOX_BREAK"All right, let's get started!" EVENT
);

DECLARE_MESSAGE_NES(0x2093,
"2093"
);

DECLARE_MESSAGE_NES(0x2094,
"2094"
);

DECLARE_MESSAGE_NES(0x2095,
"2095"
);

DECLARE_MESSAGE_NES(0x2096,
"2096"
);

DECLARE_MESSAGE_NES(0x2097,
"2097"
);

DECLARE_MESSAGE_NES(0x2098,
"2098"
);

DECLARE_MESSAGE_NES(0x2099,
"2099"
);

DECLARE_MESSAGE_NES(0x209A,
"209A"
);

DECLARE_MESSAGE_NES(0x209B,
"209B"
);

DECLARE_MESSAGE_NES(0x209C,
"209C"
);

DECLARE_MESSAGE_NES(0x209D,
"209D"
);

DECLARE_MESSAGE_NES(0x209E,
"209E"
);

DECLARE_MESSAGE_NES(0x209F,
"209F"
);

DECLARE_MESSAGE_NES(0x3000,
UNSKIPPABLE "You don't know what he means by\n"
"\"Sworn Brothers,\" but you've \n"
"collected two Spiritual Stones!\n"
"You have one more to find!"
);

DECLARE_MESSAGE_NES(0x3001,
UNSKIPPABLE "You don't know what he means by\n"
"\"Sworn Brothers,\" but you've \n"
"finally collected all three Stones!\n"
"Go back to see Princess Zelda!"
);

DECLARE_MESSAGE_NES(0x3002,
"I maaaade thissss...\n"
"Trrrrade for " COLOR("\x41") "claimmm checkkk" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x3003,
"I giiiive thissss to yoooou forrr\n"
"a souvenirrrrr."
);

DECLARE_MESSAGE_NES(0x3004,
UNSKIPPABLE "Kid, I like you!"BOX_BREAK
UNSKIPPABLE "How's about you and I become\n"
"Sworn Brothers?!"BOX_BREAK
UNSKIPPABLE "No, there's no big ceremony\n"
"involved! Just take this as a\n"
"token of our friendship!"
);

DECLARE_MESSAGE_NES(0x3005,
SHIFT("\x30") "You did great!" FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x3006,
"How 'bout a big Goron hug, \n"
"Brother?!" FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x3007,
SHIFT("\x50") "Oh!"BOX_BREAK_DELAYED("\x1E")  SHIFT("\x4B") "Oh-oh!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x4B")  QUICKTEXT_ENABLE "C'mon!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x14") "Come on! Come on! " QUICKTEXT_ENABLE "Come on!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x28")  SHIFT("\x50")  QUICKTEXT_ENABLE "HOT!!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x28") "What a hot beat!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x32") "WHOOOOAH!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x3C")  QUICKTEXT_ENABLE "YEEEEAH!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x28")  SHIFT("\x3C")  QUICKTEXT_ENABLE "YAHOOO!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x3008,
UNSKIPPABLE "I am one of the " COLOR("\x41") "Gorons" COLOR("\x40") ",\n"
"the stone-eating people who live\n"
"on Death Mountain."BOX_BREAK
UNSKIPPABLE "Look at that huge boulder over\n"
"there!"BOX_BREAK
UNSKIPPABLE "It blocks the entrance to the\n"
COLOR("\x41") "Dodongo's Cavern" COLOR("\x40") ", which was once\n"
"a very important place for us\n"
"Gorons..."BOX_BREAK
UNSKIPPABLE "But one day, many Dodongos\n"
"suddenly appeared inside the \n"
"cavern. It became a very \n"
"dangerous place!"BOX_BREAK
UNSKIPPABLE "On top of that, a " COLOR("\x41") "Gerudo in black\n"
"armor " COLOR("\x40") "used his magic to seal the\n"
"entrance with that boulder!" TEXTID("\x30\x2A")
);

DECLARE_MESSAGE_NES(0x3009,
"I wish I could roll down the \n"
"mountain like a rock, with a\n"
COLOR("\x41") "Bomb Flower " COLOR("\x40") "and..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "BOOOOOOM!" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK"If I could do that with a Bomb \n"
"Flower, I could become a real man."
);

DECLARE_MESSAGE_NES(0x300A,
"I'm standing here to shade the\n"
COLOR("\x41") "Bomb Flowers " COLOR("\x40") "from the sun."BOX_BREAK"Do you have a question for me?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ask about Bomb Flowers\n"
"Ask about Dodongo's Cavern" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x300B,
"Those plants growing over there \n"
"are " COLOR("\x41") "Bomb Flowers" COLOR("\x40") ". They are\n"
"\"mining plants\" that grow only on\n"
"this mountain."BOX_BREAK"The flower's fruit is the raw \n"
"material for bombs."BOX_BREAK"But a non-Goron amateur should \n"
"never pick the Bomb Flowers' \n"
"fruit!"BOX_BREAK"They usually grow only in dark \n"
"places, so Bomb Flowers that grow\n"
"in a place like this are extremely\n"
"rare."
);

DECLARE_MESSAGE_NES(0x300C,
"Those plants growing over there \n"
"are " COLOR("\x41") "Bomb Flowers" COLOR("\x40") ". They are\n"
"\"mining plants\" that grow only on\n"
"this mountain."BOX_BREAK"They usually grow only in dark \n"
"places, like caves, so Bomb \n"
"Flowers that grow in a place like\n"
"this are extremely rare."BOX_BREAK"If you have the " COLOR("\x41") "Goron's Bracelet" COLOR("\x40") ",\n"
"even a little kid like you could\n"
"easily pick it with " COLOR("\x43") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x300D,
"Did you see the cavern on your \n"
"way here? That is the " COLOR("\x41") "Dodongo's \n"
"Cavern" COLOR("\x40") "."BOX_BREAK"Because the light inside is very \n"
"dim, the " COLOR("\x41") "Bomb Flowers" COLOR("\x40") ", a plant \n"
"unique to this mountain, grow like\n"
"crazy in there!"
);

DECLARE_MESSAGE_NES(0x300E,
UNSKIPPABLE "Oh?"BOX_BREAK
UNSKIPPABLE "We don't get many visitors way\n"
"up here. Where are you from?"BOX_BREAK
UNSKIPPABLE "The forest?"BOX_BREAK
UNSKIPPABLE "What's a \"forest\"?"BOX_BREAK
UNSKIPPABLE "Eh?"BOX_BREAK
UNSKIPPABLE "It's where a lot of \"trees\" and \n"
"\"plants\" grow?"BOX_BREAK
UNSKIPPABLE "Now I'm even more confused! \n"
"Nothing grows around here besides\n"
"the " COLOR("\x41") "Bomb Flowers" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "We don't have \"seeds\" or \"nuts\"\n"
"around here either."BOX_BREAK
UNSKIPPABLE "Even Deku Sticks are very scarce\n"
"around here!" TEXTID("\x30\x22")
);

DECLARE_MESSAGE_NES(0x300F,
"I sealed the entrance because I\n"
"don't have much merchandise to\n"
"sell. But you're quite a persistent\n"
"customer, aren't you." EVENT
);

DECLARE_MESSAGE_NES(0x3010,
"I'm sorry...\n"
"That Bomb is just for display. \n"
"I'm " COLOR("\x41") "sold out " COLOR("\x40") "of real ones." EVENT
);

DECLARE_MESSAGE_NES(0x3011,
"Why did you stop me?\n"
"Don't stop me here!"BOX_BREAK"You can't stop my wild rolling!"BOX_BREAK"This wild rolling is the only way\n"
"to relieve my stress!"BOX_BREAK"Now stand in awe of my wild, wild\n"
"rolling!!"
);

DECLARE_MESSAGE_NES(0x3012,
UNSKIPPABLE "All right! I'll give you this\n"
"in praise of your courage!" EVENT
);

DECLARE_MESSAGE_NES(0x3013,
"Thank you! Let me express my joy\n"
"with more wild rolling!"
);

DECLARE_MESSAGE_NES(0x3014,
UNSKIPPABLE  SHIFT("\x21") "Oh...I'm so hungry..."BOX_BREAK
UNSKIPPABLE "Everyone feels faint from hunger\n"
"because of the food shortage in \n"
"this town. We are in danger of \n"
"extinction!"BOX_BREAK
UNSKIPPABLE "It's all because we can't enter\n"
"our quarry, the " COLOR("\x41") "Dodongo's Cavern" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "We Gorons live on a diet of \n"
"rocks..."BOX_BREAK
UNSKIPPABLE "And the most delicious and \n"
"nutritious rocks around are found \n"
"in the Dodongo's Cavern! But that \n"
"seems like ancient history now..."BOX_BREAK
UNSKIPPABLE "We've become such gourmets that \n"
"we can't stand to eat rocks from\n"
"anywhere else!" TEXTID("\x30\x15")
);

DECLARE_MESSAGE_NES(0x3015,
"Sigh... I want to eat the top\n"
"sirloin rocks from the " COLOR("\x41") "Dodongo's \n"
"Cavern" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x3016,
UNSKIPPABLE "Hey!"BOX_BREAK
UNSKIPPABLE "It's dangerous for a little kid like\n"
"you to come out here. You might \n"
"fall down!"BOX_BREAK
UNSKIPPABLE "If I'm not mistaken, you came out\n"
"here to eat the " COLOR("\x41") "red stone" COLOR("\x40") "!\n"
"Well, too bad! It's not here!"BOX_BREAK
UNSKIPPABLE "What? That's not why you're\n"
"here?"BOX_BREAK
UNSKIPPABLE "You're looking for a \"Spiritual\n"
"Stone?\" You must mean that \n"
"delicious-looking red stone\n"
"that was once displayed here!"BOX_BREAK
UNSKIPPABLE "I was so hungry that I thought\n"
"it would be OK to just give it one\n"
"tiny little lick...so I snuck out\n"
"here. But, it was already gone!"BOX_BREAK
UNSKIPPABLE "I think Big Brother took it away."BOX_BREAK
UNSKIPPABLE "He always says that everyone\n"
"is after that red stone!" TEXTID("\x30\x17")
);

DECLARE_MESSAGE_NES(0x3017,
"Big Brother has shut himself up in\n"
"his room saying,\n"
"\"" COLOR("\x41") "I will wait in here for the \n"
"Royal Family's messenger!" COLOR("\x40") "\""
);

DECLARE_MESSAGE_NES(0x3018,
UNSKIPPABLE "I'm so hungry that I can't think\n"
"about anything but food!"BOX_BREAK
UNSKIPPABLE "Ask Big Brother about complicated\n"
"things."BOX_BREAK
UNSKIPPABLE "If he's in a bad mood, he'll \n"
"probably get mad at you...it\n"
"can be pretty scary. But..."BOX_BREAK
UNSKIPPABLE "I know his SECRET."BOX_BREAK
UNSKIPPABLE "He may not look like the type,\n"
"but Big Brother loves to dance!\n"
"If he gets in a rhythm, he'll surely..." TEXTID("\x30\x19")
);

DECLARE_MESSAGE_NES(0x3019,
"I remember Big Brother used to\n"
"always listen to the " COLOR("\x42") "music that\n"
"comes from the forest" COLOR("\x40") "..."BOX_BREAK"Ah yes, the good old days...\n"
"That music makes me feel\n"
"nostalgic, too..." TEXTID("\x30\x2C")
);

DECLARE_MESSAGE_NES(0x301A,
UNSKIPPABLE "What the heck! Who are you?!"BOX_BREAK
UNSKIPPABLE "When I heard the " COLOR("\x43") "song of the\n"
"Royal Family" COLOR("\x40") ", I expected their \n"
"messenger had arrived, but...\n"
"you're just a little kid!"BOX_BREAK
UNSKIPPABLE "Has " COLOR("\x41") "Darunia" COLOR("\x40") ", the big boss of\n"
"the Gorons, really lost so much\n"
"status to be treated like this\n"
"by his Sworn Brother, the King?"BOX_BREAK
UNSKIPPABLE "Now, I'm REALLY angry!\n"
"Get out of my face, now!"BOX_BREAK
UNSKIPPABLE "Are you asking why I'm in such a\n"
"bad mood right now?"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Ancient creatures have \n"
"infested the Dodongo's Cavern!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "We've had a poor harvest of our\n"
"special crop, Bomb Flowers!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Starvation and hunger because\n"
"of the rock shortage!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x48") "But..." TEXTID("\x30\x1B")
);

DECLARE_MESSAGE_NES(0x301B,
QUICKTEXT_ENABLE  SHIFT("\x19") "This is a Goron problem!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x11") "We don't need any help from\n"
SHIFT("\x46") "strangers!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x301C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x15") "Heeey!! What a nice tune!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Just like that, my depression is\n"
"all gone! Something just came \n"
"over me! I suddenly wanted to\n"
"dance like crazy!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x3C") "I am " COLOR("\x41") "Darunia" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "I'm the big boss of the Gorons!\n"
"Was there something you wanted \n"
"to ask me about?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x50") "What?"BOX_BREAK
UNSKIPPABLE "You want the " COLOR("\x41") "Spiritual Stone of\n"
"Fire" COLOR("\x40") ", too?"BOX_BREAK
UNSKIPPABLE "The Spiritual Stone of Fire, also\n"
"known as the Goron's Ruby, is our\n"
"race's hidden treasure...."BOX_BREAK
UNSKIPPABLE "But hold on--I'm not going to give\n"
"it to you that easily.\n"
"If you want it so badly..."BOX_BREAK
UNSKIPPABLE "Why don't you go destroy the \n"
"monsters inside of the Dodongo's \n"
"Cavern and prove you're a real man?"BOX_BREAK
UNSKIPPABLE "That way, everybody will be \n"
"happy again! If you do it, I \n"
"will give you anything you want,\n"
"even the Spiritual Stone!"BOX_BREAK
UNSKIPPABLE "I have something for you. I'm not\n"
"really giving you this in\n"
"return for anything, but take it\n"
"anyway."BOX_BREAK
UNSKIPPABLE "If you wear this, even a little \n"
"fella like you can pick a " COLOR("\x41") "Bomb \n"
"Flower " COLOR("\x40") "using " COLOR("\x43") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x301D,
"Destroy the monsters in the\n"
COLOR("\x41") "Dodongo's Cavern " COLOR("\x40") "and become a \n"
"real man! Then, we can talk about\n"
"the Spiritual Stone!"
);

DECLARE_MESSAGE_NES(0x301E,
"Hey, Brother, play that tune\n"
"again sometime soon!"
);

DECLARE_MESSAGE_NES(0x301F,
"No matter how many times I hear \n"
"that song, it doesn't get old!"
);

DECLARE_MESSAGE_NES(0x3020,
"Well, that's not quite what I \n"
"was looking for..."BOX_BREAK"I wanted to hear...a tune...\n"
"something...um...from outside \n"
"the mountains...something...\n"
"green...natural..."BOX_BREAK"That's the kind of music I want \n"
"to hear..."
);

DECLARE_MESSAGE_NES(0x3021,
"Oh, now we can enter the cavern.\n"
"You're so smart!"
);

DECLARE_MESSAGE_NES(0x3022,
"I know a trick to conserve sticks!\n"
"If you light a stick on fire, it will \n"
"burn to ashes. Press " COLOR("\x43") "[A]" COLOR("\x40") " to put it\n"
"away before it completely burns!"BOX_BREAK"By the way, I hid a stick\n"
"somewhere...\n"
"Hehehee..."
);

DECLARE_MESSAGE_NES(0x3023,
UNSKIPPABLE "It's me, " COLOR("\x41") "Darunia" COLOR("\x40") "!\n"
"Well done!"BOX_BREAK
UNSKIPPABLE "Thanks to you, we can once again\n"
"eat the delicious rocks from the\n"
"Dodongo's Cavern until our \n"
"stomachs burst!"
);

DECLARE_MESSAGE_NES(0x3024,
UNSKIPPABLE "I'm so hungry that I can't think\n"
"about anything but food!"BOX_BREAK
UNSKIPPABLE "\"Spiritual Stone?\"\n"
"That " COLOR("\x41") "red stone" COLOR("\x40") " that was lighting\n"
"up our city?"BOX_BREAK
UNSKIPPABLE "Big Brother " COLOR("\x41") "Darunia" COLOR("\x40") " took it\n"
"away. Then, he shut himself up in\n"
"his room and won't come out."BOX_BREAK
UNSKIPPABLE "Since then, it feels like all\n"
"the lights in the city have gone \n"
"out... Everyone seems so...\n"
"depressed..." TEXTID("\x30\x25")
);

DECLARE_MESSAGE_NES(0x3025,
"I want you to bring " COLOR("\x41") "fire" COLOR("\x40") " from Big\n"
"Brother's room back here."
);

DECLARE_MESSAGE_NES(0x3026,
"Oh, I see...\n"
"We should have thrown the \n"
"Bomb from the cliff..."
);

DECLARE_MESSAGE_NES(0x3027,
"You are incredible, destroying \n"
"the Dodongos! Do you mind if I \n"
"call you Big Brother?"
);

DECLARE_MESSAGE_NES(0x3028,
"Thanks to you, we're all OK!\n"
"Why don't you buy some Bombs \n"
"now?" EVENT
);

DECLARE_MESSAGE_NES(0x3029,
"You know, I'm so grateful to you.\n"
"When I have a kid, I will name it\n"
"after you!"
);

DECLARE_MESSAGE_NES(0x302A,
"If you want to hear more Goron\n"
"gossip, head up to our city!"BOX_BREAK
COLOR("\x41") "Goron City" COLOR("\x40") " is just a little\n"
"way up the trail. It won't take\n"
"much longer to get there, even\n"
"on foot."
);

DECLARE_MESSAGE_NES(0x302B,
"You pick the Bomb Flowers with \n"
COLOR("\x43") "[A]" COLOR("\x40") ". Press " COLOR("\x43") "[A] " COLOR("\x40") "again to set it."
);

DECLARE_MESSAGE_NES(0x302C,
"When all the " COLOR("\x41") "torches" COLOR("\x40") " on this floor\n"
"are lit, Goron City is really lively!"
);

DECLARE_MESSAGE_NES(0x302D,
"Are you going to clear out the \n"
"Dodongos? It's a Goron problem,\n"
"though. You're a nosey little kid,\n"
"aren't you?!"BOX_BREAK"Well, of course we'll be happy if \n"
"you fix it so we can get all the\n"
"Bombs we want, like we used to..."BOX_BREAK"Just let me warn you, though...\n"
"Dodongos are scary creatures! \n"
"They'll eat ANYTHING!!"BOX_BREAK"So watch yourself, and don't \n"
"get eaten!" EVENT
);

DECLARE_MESSAGE_NES(0x302E,
"I already told you!\n"
"We're out of Bombs!\n"
"Ohhh... I'm so hungry!" PERSISTENT
);

DECLARE_MESSAGE_NES(0x302F,
"How was Big Brother?\n"
"I see..."BOX_BREAK"By the way, do you know the\n"
"music coming from deep inside of\n"
"this tunnel? We all like this music!"
);

DECLARE_MESSAGE_NES(0x3030,
"I won't let you get me! \n"
"You probably work for Ganondorf!"
);

DECLARE_MESSAGE_NES(0x3031,
UNSKIPPABLE "How could you do this to me?\n"
"You, you're Ganondorf's servant!"BOX_BREAK
UNSKIPPABLE "Hear my name and tremble!"BOX_BREAK
UNSKIPPABLE "I am " COLOR("\x41")  NAME  COLOR("\x40") "! \n"
"Hero of the Gorons!"
);

DECLARE_MESSAGE_NES(0x3032,
UNSKIPPABLE "What?"BOX_BREAK
UNSKIPPABLE "Your name is also\n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Then you must be the legendary\n"
"Dodongo Buster and Hero, \n"
NAME "!"BOX_BREAK
UNSKIPPABLE "My dad is " COLOR("\x41") "Darunia" COLOR("\x40") "...\n"
"Do you remember him?"BOX_BREAK
UNSKIPPABLE "Dad named me " NAME "\n"
"after you, because you're so \n"
"brave!"BOX_BREAK
UNSKIPPABLE "It's a cool name!\n"
"I really like it!"BOX_BREAK
UNSKIPPABLE  NAME ", you're a hero to \n"
"us Gorons! \n"
"I'm so glad to meet you!"BOX_BREAK
UNSKIPPABLE "Please give me your autograph!\n"
"Sign it:\n"
SHIFT("\x05") "\"To my friend, \n"
SHIFT("\x05")  NAME " of the Gorons\""BOX_BREAK
UNSKIPPABLE "Oh..."BOX_BREAK
UNSKIPPABLE "I guess it's not a good time\n"
"to ask you for this...\n"
"Please help everyone!"BOX_BREAK
UNSKIPPABLE "My dad, Darunia, went to the " COLOR("\x41") "Fire\n"
"Temple" COLOR("\x40") ". A dragon is inside!"BOX_BREAK
UNSKIPPABLE "If we don't hurry up, even my dad\n"
"will be eaten by the dragon!!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_NES(0x3033,
"B-b-b-boooo hooooo!" EVENT
);

DECLARE_MESSAGE_NES(0x3034,
"You'd better try to calm him down\n"
"if you can...\n"
"Maybe he will calm down if you \n"
"talk to him?"BOX_BREAK"What do you want to ask him?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "About the dragon\n"
"About the Gorons" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x3035,
UNSKIPPABLE "A long time ago there was an\n"
"evil dragon named " COLOR("\x41") "Volvagia " COLOR("\x40") "living \n"
"in this mountain."BOX_BREAK
UNSKIPPABLE "That dragon was very scary!\n"
"He ate Gorons!"BOX_BREAK
UNSKIPPABLE "Using a huge hammer, the hero of\n"
"the Gorons... BOOOM!"BOX_BREAK
UNSKIPPABLE "Destroyed it just like that. This is \n"
"a myth from long ago, but it's \n"
"true!"BOX_BREAK
UNSKIPPABLE "I know, because my dad is a\n"
"descendant of the hero!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_NES(0x3036,
UNSKIPPABLE "Everybody was taken to the \n"
COLOR("\x41") "Fire Temple" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "While my dad was out...\n"
"Ganondorf's followers" COLOR("\x41") " " COLOR("\x40") "came and\n"
"took them all away!"BOX_BREAK
UNSKIPPABLE "All of them will be eaten by\n"
COLOR("\x41") "Volvagia" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Dad said that Ganondorf has\n"
"revived Volvagia..."BOX_BREAK
UNSKIPPABLE "As a warning to those who might\n"
"oppose him, Ganondorf is going to\n"
"feed them all to Volvagia!"BOX_BREAK
UNSKIPPABLE "Dad went to the Fire Temple all\n"
"by himself to try to save \n"
"everyone..."BOX_BREAK
UNSKIPPABLE "Please help, " NAME "!\n"
"I'll give you this " COLOR("\x41") "heat-resistant\n"
"tunic" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x3037,
UNSKIPPABLE "Dad told me not to let anybody \n"
"follow him to the temple, but..."BOX_BREAK
UNSKIPPABLE "Only you, " NAME ", can\n"
"save everyone!"BOX_BREAK
UNSKIPPABLE "I'm sure that the shop owner, who\n"
"is hiding somewhere right now, will\n"
"also help you!"BOX_BREAK
UNSKIPPABLE "Now, I'll tell you about the secret\n"
"passage to the Fire Temple!" TEXTID("\x30\x38")
);

DECLARE_MESSAGE_NES(0x3038,
"Try to move the " COLOR("\x41") "statue " COLOR("\x40") "inside\n"
"Dad's room!"
);

DECLARE_MESSAGE_NES(0x3039,
UNSKIPPABLE "Who's there?  Is that you,\n"
NAME "...?"BOX_BREAK
UNSKIPPABLE "Oh, it really is " NAME "!"BOX_BREAK
UNSKIPPABLE "You've grown so big since I last\n"
"saw you!"BOX_BREAK
UNSKIPPABLE "I want to have a man-to-man talk\n"
"with you, but now's not the time."BOX_BREAK
UNSKIPPABLE "Ganondorf is causing trouble on\n"
"Death Mountain again!\n"
"He has revived the evil, ancient\n"
"dragon Volvagia!"BOX_BREAK
UNSKIPPABLE "On top of that, he is going to\n"
"feed my people to that evil dragon\n"
"as a warning to other races that\n"
"might resist him..."BOX_BREAK
UNSKIPPABLE "If that fire-breathing dragon\n"
"escapes from the mountain, all of\n"
"Hyrule will become a burning\n"
"wasteland!"BOX_BREAK
UNSKIPPABLE "I will go on ahead to try to seal\n"
"up the evil dragon..."BOX_BREAK
UNSKIPPABLE "I'm concerned, though, because I\n"
"don't have the legendary hammer...\n"
"But I have no choice."BOX_BREAK
UNSKIPPABLE  NAME "...I'm asking you to\n"
"do this as my Sworn Brother..."BOX_BREAK
UNSKIPPABLE "While I'm trying to deal with the\n"
"dragon, please save my people!"BOX_BREAK
UNSKIPPABLE "The prisoners' cells are in the\n"
"opposite direction.\n"
"I'm counting on you, \n"
NAME "!"
);

DECLARE_MESSAGE_NES(0x303A,
"I'm saved!\n"
"Thank you!\n"
"Here, take this!"
);

DECLARE_MESSAGE_NES(0x303B,
UNSKIPPABLE  NAME "...Can't hold... \n"
"anymore...I can't hold\n"
"it any longer..."BOX_BREAK
UNSKIPPABLE "Get out of here!!"
);

DECLARE_MESSAGE_NES(0x303C,
UNSKIPPABLE "Thank you, Brother!\n"
"I really appreciate what you\n"
"did. I thank you on behalf of\n"
"the entire Goron race!"BOX_BREAK
UNSKIPPABLE "You turned out to be a real man,\n"
"just as I thought you would!"
);

DECLARE_MESSAGE_NES(0x303D,
SHIFT("\x36") "Don't forget...\n"
SHIFT("\x03") "Now you and I are true Brothers!" FADE("\x50")
);

DECLARE_MESSAGE_NES(0x303E,
UNSKIPPABLE "It is something that grows over\n"
"time... a true friendship.\n"
"A feeling in the heart that \n"
"becomes even stronger over time..."BOX_BREAK
UNSKIPPABLE "The passion of friendship will \n"
"soon blossom into a righteous\n"
"power and through it, you will\n"
"know which way to go..."BOX_BREAK
UNSKIPPABLE "This song is dedicated to the \n"
"power of the heart...\n"
"Listen to the " COLOR("\x41") "Bolero of Fire" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x303F,
UNSKIPPABLE  NAME "...See you again..."
);

DECLARE_MESSAGE_NES(0x3040,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME ", it's so hot in \n"
"here! We can't stay here for\n"
"long!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x3041,
UNSKIPPABLE "Brother " NAME "!\n"
"Everybody has come back!"BOX_BREAK
UNSKIPPABLE "Dad and you destroyed the dragon\n"
"together, didn't you!" TEXTID("\x30\x42")
);

DECLARE_MESSAGE_NES(0x3042,
"When I grow up, I want to be a\n"
"strong man like you, \n"
NAME "!"
);

DECLARE_MESSAGE_NES(0x3043,
"Thank you, " NAME "!!"
);

DECLARE_MESSAGE_NES(0x3044,
"Thank you very much for\n"
"saving us!" PERSISTENT
);

DECLARE_MESSAGE_NES(0x3045,
UNSKIPPABLE "By the way, I, the wild Darunia,\n"
"turned out to be the great \n"
COLOR("\x41") "Sage of Fire" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Isn't that funny, Brother?\n"
"Well, this must be what they call\n"
"destiny."BOX_BREAK
UNSKIPPABLE "Nothing has made me happier\n"
"than helping you seal the evil\n"
"here!"
);

DECLARE_MESSAGE_NES(0x3046,
UNSKIPPABLE "Hey, Brother, take this!\n"
"This is a " COLOR("\x41") "Medallion " COLOR("\x40") "that contains\n"
"the power of the fire spirits--and\n"
"my friendship."
);

DECLARE_MESSAGE_NES(0x3047,
"Big problem!\n"
"Everybody is gone!\n"
"But I'll keep my business open!" PERSISTENT
);

DECLARE_MESSAGE_NES(0x3048,
UNSKIPPABLE "What a wild adventure! It will\n"
"make an incredible story..."BOX_BREAK
UNSKIPPABLE "I can't believe that the Dodongos\n"
"suddenly appeared in such great \n"
"numbers!"BOX_BREAK
UNSKIPPABLE "And that big rock blocking the \n"
"cave..."BOX_BREAK
UNSKIPPABLE "All this trouble must have been\n"
"caused by that Gerudo thief, \n"
COLOR("\x41") "Ganondorf" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "He said, \n"
"\"" COLOR("\x44") "Give me the Spiritual Stone!\n"
"Only then will I open the cave \n"
"for you!" COLOR("\x40") "\""BOX_BREAK
UNSKIPPABLE "You, on the other hand, risked \n"
"your life for us..."
);

DECLARE_MESSAGE_NES(0x3049,
SHIFT("\x4B") "Tight fit..."
);

DECLARE_MESSAGE_NES(0x304A,
"I'm working on something really \n"
"cool right now! But I think it's\n"
"going to take a while..." TEXTID("\x30\x4B")
);

DECLARE_MESSAGE_NES(0x304B,
"If you can wait five or six years,\n"
"it should be ready. OK?"
);

DECLARE_MESSAGE_NES(0x304C,
"I just completed a small weapon.\n"
"How about it..." TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_NES(0x304D,
"How do you like the feel of it?"
);

DECLARE_MESSAGE_NES(0x304E,
"It looks like there is a problem \n"
"with its durability...\n"
"But still..." TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_NES(0x304F,
"How about buying this knife for \n"
"200 Rupees?\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x3050,
"All right. Come back again."
);

DECLARE_MESSAGE_NES(0x3051,
"Please...Don't...Eat me...\n"
"If you eat something like me,\n"
"you'll get a stomach ache!"BOX_BREAK"You'll be sorry!!"
);

DECLARE_MESSAGE_NES(0x3052,
"Oh, I see. Big Brother Darunia\n"
"asked you to rescue me.\n"
"I owe you big time!"BOX_BREAK"Please help Big Brother!"
);

DECLARE_MESSAGE_NES(0x3053,
"My Brotherrrr...\n"
"Opened a new storrrre...\n"
"It's Medigoron's Blade\n"
"Storrrrrrrre..."BOX_BREAK"Howeverrrrr... \n"
"I am betterrrrrr at making\n"
"bladessssss."BOX_BREAK"Hylian carpenterrrrrs praise\n"
"me forrrrrr my skillssssss.\n"
"I'm not lyinnnnng..."
);

DECLARE_MESSAGE_NES(0x3054,
UNSKIPPABLE "That broken knife is surely my \n"
"worrrrrrrrrrk...\n"
"I really want to repairrrrr it, but..."BOX_BREAK
UNSKIPPABLE "But because of yesterrrrrday's\n"
"errrrruption, my eyes are \n"
"irrrrrrrritated..."BOX_BREAK
UNSKIPPABLE "There are fine eyedrops in Zora's\n"
"Domain... You will find them if you\n"
"go to see " COLOR("\x41") "Kinnnnnng Zorrrrrra" COLOR("\x40") "..." TEXTID("\x30\x55")
);

DECLARE_MESSAGE_NES(0x3055,
"Please go get the eyedrrrrrrops...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x3056,
"Awww nooooo... I'm finished...\n"
"My eyes arrrrrre so itchy...\n"
"Owwwwww..."
);

DECLARE_MESSAGE_NES(0x3057,
"Oh, no! Everybody's gone!\n"
"Only I was left behind!" EVENT
);

DECLARE_MESSAGE_NES(0x3058,
"I've been waiting forrrrr you,\n"
"with tearrrrrrs in my eyes...\n"
"Please say hello to Kinnng Zorrra!"
);

DECLARE_MESSAGE_NES(0x3059,
UNSKIPPABLE "Rrrrreally? You brrrrought the eye\n"
"drops? I'm so rrrrrelieved!  I'm\n"
"going to use them rrrrrright now!" EVENT
);

DECLARE_MESSAGE_NES(0x305A,
UNSKIPPABLE  COLOR("\x41") "Wowwwwwwwwwwwwww!!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE "This is stimulating! It's\n"
"worrrrrking grrrrreat!"BOX_BREAK
UNSKIPPABLE "Now I can get back to my blade\n"
"business! My worrrrrk is not \n"
"verrrry consistent, so I'll give this \n"
"to you so you won't forrrrrget." TEXTID("\x30\x5C")
);

DECLARE_MESSAGE_NES(0x305B,
"Everybody has come back!\n"
"It's business as usual!" EVENT
);

DECLARE_MESSAGE_NES(0x305C,
"Afterrrr a few days...\n"
"Please returrrrrrn...\n"
"Wait, just wait patiently..."
);

DECLARE_MESSAGE_NES(0x305D,
"Not yet...\n"
"Hey you...\n"
"You arrrre impatient..."
);

DECLARE_MESSAGE_NES(0x305E,
"That sworrrrd is my finest \n"
"worrrrk!"
);

DECLARE_MESSAGE_NES(0x305F,
QUICKTEXT_ENABLE  COLOR("\x44") "Your " COLOR("\x40") "shield " COLOR("\x44") "is gone!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x3060,
QUICKTEXT_ENABLE  COLOR("\x44") "The " COLOR("\x40") "tunic " COLOR("\x44") "you were wearing is \n"
"gone!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x3061,
QUICKTEXT_ENABLE  COLOR("\x44") "Your " COLOR("\x40") "shield " COLOR("\x44") "is gone!\n"
"The " COLOR("\x40") "tunic " COLOR("\x44") "you were wearing has\n"
"also been taken!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x3062,
UNSKIPPABLE "You've done well to come all the\n"
"way up here, " NAME ". \n"
"This is the summit of the sacred\n"
"Death Mountain! Hoot!"BOX_BREAK
UNSKIPPABLE "It is said that the clouds \n"
"surrounding this peak reflect the\n"
"condition of Death Mountain. When\n"
"they look normal, it is at peace."BOX_BREAK
UNSKIPPABLE "Climbing all the way up here\n"
"just proves how smart you are!\n"
"Now I want to see you make\n"
"another smart move..."BOX_BREAK
UNSKIPPABLE "The " COLOR("\x41") "Great Fairy" COLOR("\x40") " lives on this\n"
"mountaintop, and she will give\n"
"you a new skill! She is the leader\n"
"of the fairies, you know. Hoo!"BOX_BREAK
UNSKIPPABLE "I will perch here and wait for you.\n"
"When you're ready to go back\n"
"down, I can help you! \n"
"Now, get going!"
);

DECLARE_MESSAGE_NES(0x3063,
"Hoo hoot!\n"
"Well, it looks like you've grown\n"
"up a little from the Great Fairy's\n"
"power..."BOX_BREAK"But you still don't really look like\n"
"the hero who will save Hyrule. At\n"
"least not yet!"BOX_BREAK"If you are going back " COLOR("\x41") "down the\n"
"mountain" COLOR("\x40") ", I can lend you a wing.\n"
"Come here and grab my talons!\n"
"And hold on tight! Hoo hooooooot!"
);

DECLARE_MESSAGE_NES(0x3064,
"They say that a " COLOR("\x41") "beautiful" COLOR("\x40") " " COLOR("\x41") "fairy\n"
COLOR("\x40") "lives on top of Death Mountain!"BOX_BREAK"Don't you want to see her?"
);

DECLARE_MESSAGE_NES(0x3065,
"They say that a " COLOR("\x41") "fairy " COLOR("\x40") "lives on top\n"
"of Death Mountain."BOX_BREAK"If you want to make it to the top,\n"
"you'd better take a big " COLOR("\x44") "shield" COLOR("\x40") "\n"
"with you..."
);

DECLARE_MESSAGE_NES(0x3066,
QUICKTEXT_ENABLE  COLOR("\x44") "Look! A " COLOR("\x40") "chicken " COLOR("\x44") "hatched from\n"
"the " COLOR("\x40") "egg " COLOR("\x44") "you were incubating!\n"
"It's the miracle of life!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_NES(0x3067,
"Did you get the red stone?\n"
"Let me get one little lick!"BOX_BREAK"No? Booooo!"
);

DECLARE_MESSAGE_NES(0x3068,
UNSKIPPABLE "Brother! You'll keep brushing up\n"
"on your skills as you travel,\n"
"won't you?"BOX_BREAK
UNSKIPPABLE "You should go see the " COLOR("\x41") "Great Fairy" COLOR("\x40") "\n"
"on top of Death Mountain! She\n"
"will power you up!"BOX_BREAK
UNSKIPPABLE "Hey, everybody! Let's see off our\n"
"Brother!"
);

DECLARE_MESSAGE_NES(0x3069,
UNSKIPPABLE "I'll tell you a secret for\n"
"saving me!"BOX_BREAK
UNSKIPPABLE "In this temple, there are " COLOR("\x41") "doors\n"
"that fall down " COLOR("\x40") "when you try to \n"
"open them. When one of these\n"
"doors starts to fall, move!"BOX_BREAK
UNSKIPPABLE "If you use a sample of the\n"
"Goron \"special crop,\" you can\n"
"break it..."
);

DECLARE_MESSAGE_NES(0x306A,
UNSKIPPABLE "Let me tell you a secret as\n"
"a reward for releasing me!"BOX_BREAK
UNSKIPPABLE "When you are on fire, you can put\n"
"it out by swinging your sword, or\n"
"by rolling forward... Did you know\n"
"that?"
);

DECLARE_MESSAGE_NES(0x306B,
UNSKIPPABLE "Here's a tip for rescuing me!"BOX_BREAK
UNSKIPPABLE "Somewhere in this temple, you're\n"
"sure to meet up with some \n"
"creatures that dance as they\n"
"attack. Arrows won't hurt them!"BOX_BREAK
UNSKIPPABLE "Looks like you might need some of\n"
"the Goron \"special crop!\" That's\n"
"all I have to tell you!"
);

DECLARE_MESSAGE_NES(0x306C,
UNSKIPPABLE "I'll tell you a secret for\n"
"saving me!"BOX_BREAK
UNSKIPPABLE "There are switches in this temple\n"
"that you have to cut to activate.\n"
"But, you can also use the Goron\n"
"\"special crop\" to do the job."
);

DECLARE_MESSAGE_NES(0x306D,
UNSKIPPABLE "I'll tell you a secret for\n"
"saving me!"BOX_BREAK
UNSKIPPABLE "If you find a place that you can\n"
"see on the map, but can't reach,\n"
"try playing your Ocarina!"
);

DECLARE_MESSAGE_NES(0x306E,
UNSKIPPABLE "I'll tell you a secret for\n"
"saving me!"BOX_BREAK
UNSKIPPABLE "In order to get into the room\n"
"where Darunia went, you have to\n"
"do something about the pillar\n"
"stuck in the ceiling."BOX_BREAK
UNSKIPPABLE "Find a path that leads to a room\n"
"above the ceiling right away!"
);

DECLARE_MESSAGE_NES(0x306F,
UNSKIPPABLE "I'll tell you a secret for\n"
"saving me!"BOX_BREAK
UNSKIPPABLE "A door is hidden inside the statue\n"
"at the entrance to this temple."BOX_BREAK
UNSKIPPABLE "But, the Goron \"special crop\" won't\n"
"work on it... Don't you have\n"
"anything stronger?"
);

DECLARE_MESSAGE_NES(0x3070,
UNSKIPPABLE "Here's a secret for saving me!"BOX_BREAK
UNSKIPPABLE "A wall that you can destroy with\n"
"the Goron's \"special crop\" will\n"
"sound different than a regular\n"
"wall if you hit it with your sword."
);

DECLARE_MESSAGE_NES(0x3071,
"Are you releasing me?\n"
"Am I free to go?" EVENT
);

DECLARE_MESSAGE_NES(0x3072,
"3072"
);

DECLARE_MESSAGE_NES(0x3073,
"3073"
);

DECLARE_MESSAGE_NES(0x4000,
UNSKIPPABLE "These eyeballs are so delicious!\n"
"Tonight I will cook fried eyeballs \n"
"for the first time in a long time!\n"
"Uhoy hoy hoo houy hoy!"BOX_BREAK
UNSKIPPABLE "Such great stuff! Please say \n"
"thank you to King Zora!\n"
"Eh? What?" EVENT
);

DECLARE_MESSAGE_NES(0x4001,
UNSKIPPABLE "These are for making " COLOR("\x41") "Biggoron's \n"
"Eye Drops" COLOR("\x40") "? Oh, how disappointing!\n"
"You should have said so in the \n"
"first place!" EVENT
);

DECLARE_MESSAGE_NES(0x4002,
UNSKIPPABLE  NAME "!\n"
"This way!  Hoo hoo!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "I wonder what " COLOR("\x41") "Saria" COLOR("\x40") " is doing now?\n"
"How about going back to the\n"
"forest sometime?"
);

DECLARE_MESSAGE_NES(0x4003,
UNSKIPPABLE "What are you doing? You've come \n"
"a long way to get up here..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "You should look at the " COLOR("\x41") "Map \n"
"Subscreen " COLOR("\x40") "sometimes."BOX_BREAK
UNSKIPPABLE  NAME ", this is a beautiful\n"
"lake full of pure, clear water."BOX_BREAK
UNSKIPPABLE "At the lake bottom there is\n"
"a " COLOR("\x43") "Water Temple " COLOR("\x40") "used to worship \n"
"the water spirits. The " COLOR("\x43") "Zoras " COLOR("\x40") "are\n"
"guardians of the temple. Hoo hoo."BOX_BREAK
UNSKIPPABLE "The Zoras come from Zora's\n"
"Domain in northeast Hyrule. An\n"
"aquatic race, they are longtime\n"
"allies of Hyrule's Royal Family."BOX_BREAK
UNSKIPPABLE "I heard that only the Royal Family\n"
"of Hyrule can enter Zora's Domain...\n"
"Hoo hoo!"BOX_BREAK
UNSKIPPABLE "I'm on my way back to the " COLOR("\x41") "castle" COLOR("\x40") ".\n"
"If you want to come with me, hold\n"
"on to my talons!"
);

DECLARE_MESSAGE_NES(0x4004,
"I'm on my way back to the " COLOR("\x41") "castle" COLOR("\x40") ".\n"
"If you want to come with me, hold\n"
"on to my talons!"
);

DECLARE_MESSAGE_NES(0x4005,
UNSKIPPABLE "...Huh?"BOX_BREAK
UNSKIPPABLE "It looks like there is something\n"
"already inside this bottle.\n"
"It's a " COLOR("\x41") "letter" COLOR("\x40") ":"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x0C") "\"" COLOR("\x45") "Help me.\n"
COLOR("\x40")  SHIFT("\x0C")  COLOR("\x45") "I'm waiting for you inside\n"
COLOR("\x40")  SHIFT("\x0C")  COLOR("\x46") "Lord Jabu-Jabu's" COLOR("\x45") " belly.\n"
COLOR("\x40")  SHIFT("\x18") "--" COLOR("\x46") "Ruto" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x0C")  COLOR("\x45") "PS: Don't tell my father!" COLOR("\x40") "\"" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x4006,
UNSKIPPABLE "Who are you?"BOX_BREAK
UNSKIPPABLE "We are the " COLOR("\x43") "Zoras" COLOR("\x40") ", the proud\n"
"aquatic people!"BOX_BREAK
UNSKIPPABLE "So...you say you have some \n"
"connection with Hyrule's Royal\n"
"Family... \n"
"Well, what do you want from us?"
);

DECLARE_MESSAGE_NES(0x4007,
"We are good at diving!\n"
"How about you?"BOX_BREAK"If you want to be a master diver,\n"
"try the " COLOR("\x41") "diving game" COLOR("\x40") " at the top \n"
"of the waterfall!\n"
"Have you tried it already?"
);

DECLARE_MESSAGE_NES(0x4008,
UNSKIPPABLE "Zora's Fountain is the \n"
"source of the river.\n"
COLOR("\x41") "Lord Jabu-Jabu " COLOR("\x40") "lives in the \n"
"fountain." TEXTID("\x40\x09")
);

DECLARE_MESSAGE_NES(0x4009,
"Lord Jabu-Jabu is the patron deity\n"
"of the Zoras. " COLOR("\x41") "Princess Ruto" COLOR("\x40") " is in \n"
"charge of preparing his meals, \n"
"morning and night."
);

DECLARE_MESSAGE_NES(0x400A,
"We Zoras all serve the great \n"
COLOR("\x41") "King Zora" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x400B,
"The great King Zora should be in\n"
"the " COLOR("\x41") "Royal Chamber" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x400C,
"Have you seen Lord Jabu-Jabu?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x400D,
"According to the \"Legend of Zora,\"\n"
"the act of offering a " COLOR("\x41") "fish" COLOR("\x40") " to Lord \n"
"Jabu-Jabu will make you happy."
);

DECLARE_MESSAGE_NES(0x400E,
"Oh, that's not good."BOX_BREAK"Everybody who comes around here \n"
"should see " COLOR("\x41") "Lord Jabu-Jabu" COLOR("\x40") " at \n"
"least once!"BOX_BREAK"Zora's Fountain is just beyond \n"
"King Zora's throne. That is where\n"
"Lord Jabu-Jabu swims. But..."BOX_BREAK"unless you have King Zora's\n"
"permission, you can't go to \n"
"Zora's Fountain."
);

DECLARE_MESSAGE_NES(0x400F,
UNSKIPPABLE "We haven't found " COLOR("\x41") "Princess Ruto\n"
COLOR("\x40") "even though some of us have \n"
"searched as far as " COLOR("\x43") "Lake Hylia" COLOR("\x40") "...."
);

DECLARE_MESSAGE_NES(0x4010,
"If you find any clues to\n"
COLOR("\x41") "Princess Ruto's " COLOR("\x40") "whereabouts,\n"
"will you show them to King Zora?"
);

DECLARE_MESSAGE_NES(0x4011,
"All of the water in Hyrule flows\n"
"from " COLOR("\x43") "Zora's Fountain" COLOR("\x40") "."BOX_BREAK"That water flows through Zora's\n"
"River, which eventually reaches\n"
COLOR("\x43") "Lake Hylia " COLOR("\x40") "to the south."
);

DECLARE_MESSAGE_NES(0x4012,
UNSKIPPABLE "Oh--I've come back to life!"BOX_BREAK
UNSKIPPABLE "Was it you who saved me?\n"
"Don't be nervous!"BOX_BREAK
UNSKIPPABLE "It looks like you have a hard time\n"
"breathing underwater."BOX_BREAK
UNSKIPPABLE "As an expression of my gratitude,\n"
"I grant you this " COLOR("\x41") "tunic" COLOR("\x40") ". With this,\n"
"you won't choke underwater."
);

DECLARE_MESSAGE_NES(0x4013,
"Princess Ruto has gone to Lake \n"
"Hylia and has not come back...\n"
"I'm so worried...again!"
);

DECLARE_MESSAGE_NES(0x4014,
UNSKIPPABLE "Ooh...\n"
"This is... well... hmmm...\n"
"Hmmm... " COLOR("\x41") "Eye drops" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "You might say we have them,\n"
"you might say we don't...\n"
"We do have the ingredients."BOX_BREAK
UNSKIPPABLE "If you take the " COLOR("\x41") "ingredients " COLOR("\x40") "to the\n"
"doctor at the lake laboratory, he\n"
"can make the drops for you."BOX_BREAK
UNSKIPPABLE "But you need to deliver them\n"
"fresh..." TEXTID("\x40\x15")
);

DECLARE_MESSAGE_NES(0x4015,
"Can you make it " COLOR("\x41") "before they\n"
"spoil" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4016,
"Then you think they'll spoil \n"
"before you can get there?\n"
"It's not that far if you make the \n"
"connection on horseback..."
);

DECLARE_MESSAGE_NES(0x4017,
UNSKIPPABLE "Hoot hoot!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  NAME ", you look like \n"
"you're getting more comfortable\n"
"in your role as adventurer."BOX_BREAK
UNSKIPPABLE "I think Princess Zelda is \n"
"waiting for you to visit her again."BOX_BREAK
UNSKIPPABLE "You already have the " COLOR("\x41") "Goron's Ruby" COLOR("\x40") "," COLOR("\x41") "\n"
COLOR("\x40") "don't you?"
);

DECLARE_MESSAGE_NES(0x4018,
"Hello there, son. I'm researching \n"
"the process of making medicine by \n"
"mixing Lake Hylia's water with \n"
"various unusual compounds."BOX_BREAK"Perhaps you've met that old lady \n"
"from the potion shop...she is like \n"
"a student of mine...\n"
"Ho ho ho!"
);

DECLARE_MESSAGE_NES(0x4019,
QUICKTEXT_ENABLE "Oh, wow!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "I haven't seen an " COLOR("\x41") "Eyeball Frog" COLOR("\x40") " \n"
"like this since Zora's Domain froze\n"
"over!" EVENT
);

DECLARE_MESSAGE_NES(0x401A,
"Oh, my dear, sweet " COLOR("\x41") "Princess Ruto" COLOR("\x40") "...\n"
"Where has she gone?\n"
"I'm so worried..."
);

DECLARE_MESSAGE_NES(0x401B,
UNSKIPPABLE "Ho, this letter! \n"
"It's from " COLOR("\x41") "Princess Ruto" COLOR("\x40") "!!"BOX_BREAK
UNSKIPPABLE "Hmmm...Let's see...\n"
"She's inside Lord Jabu-Jabu?\n"
"That's not possible!"BOX_BREAK
UNSKIPPABLE "Our guardian god, " COLOR("\x41") "Lord Jabu-Jabu" COLOR("\x40") ",\n"
"would never eat my dear Princess\n"
"Ruto!"BOX_BREAK
UNSKIPPABLE "But since that stranger, " COLOR("\x41") "Ganondorf" COLOR("\x40") ",\n"
"came here, Lord Jabu-Jabu has \n"
"been a little green around the\n"
"gills..."BOX_BREAK
UNSKIPPABLE "The evidence seems clear.\n"
"Of course, you'll go find Ruto.\n"
"You can pass through here to the \n"
"altar of Lord Jabu-Jabu."BOX_BREAK
UNSKIPPABLE "I'll keep this letter. You keep the \n"
COLOR("\x41") "bottle " COLOR("\x40") "it was in. Take it \n"
"respectfully!" TEXTID("\x40\x1C")
);

DECLARE_MESSAGE_NES(0x401C,
"Please find my dear " COLOR("\x41") "Princess Ruto" COLOR("\x40") "\n"
"immediately... Zora!"
);

DECLARE_MESSAGE_NES(0x401D,
QUICKTEXT_ENABLE  COLOR("\x44") "You can't breathe underwater!\n"
"If you start choking, take off\n"
"those " COLOR("\x40") "boots" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x401E,
QUICKTEXT_ENABLE  SHIFT("\x36") "Ooooh Noooooo!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x401F,
UNSKIPPABLE "Ohhh, I'm revived...\n"
"Was it you who saved me?\n"
"Don't be so nervous!"BOX_BREAK
UNSKIPPABLE "I will give you a " COLOR("\x43") "Zora Tunic " COLOR("\x40") "as\n"
"a token of my thanks. If you have\n"
"this, you can... What?!"BOX_BREAK
UNSKIPPABLE "You already have one? You're \n"
"ready for anything, aren't you!"BOX_BREAK
UNSKIPPABLE "With my heartfelt thanks...how \n"
"about a KISS?! What? You don't \n"
"want it?! Oh well..."BOX_BREAK
UNSKIPPABLE "If you don't want my rewards, you\n"
"can listen to my troubles..." TEXTID("\x40\x13")
);

DECLARE_MESSAGE_NES(0x4020,
"I am a " COLOR("\x43") "Zora" COLOR("\x40") ". Have you seen a \n"
"pretty Zora girl around here?"
);

DECLARE_MESSAGE_NES(0x4021,
"I am a " COLOR("\x43") "Zora" COLOR("\x40") ". Have you seen\n"
"anything strange in the lake?\n"
"The river carries many things \n"
"into this lake!"
);

DECLARE_MESSAGE_NES(0x4022,
UNSKIPPABLE "You..." QUICKTEXT_ENABLE "You're late!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "What took you so long?" QUICKTEXT_DISABLE "\n"
"You're " QUICKTEXT_ENABLE "useless!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "I was just lonely, that's all...\n"
"Just a little!!"
);

DECLARE_MESSAGE_NES(0x4023,
UNSKIPPABLE  QUICKTEXT_ENABLE "I was scared..." QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "A little!" QUICKTEXT_DISABLE " Just a little!!"
);

DECLARE_MESSAGE_NES(0x4024,
UNSKIPPABLE  NAME "!\n"
NAME "!"
);

DECLARE_MESSAGE_NES(0x4025,
UNSKIPPABLE  QUICKTEXT_ENABLE "You!" QUICKTEXT_DISABLE "\n"
"You looked cool...cooler than I \n"
"thought you would, anyway... \n"
QUICKTEXT_ENABLE "Just a little!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Well, anyway, you saved me, so I \n"
"guess I'll reward you."BOX_BREAK
UNSKIPPABLE "What do you wish? Just tell me...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "I want that Spiritual Stone.\n"
"Nothing really..." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4026,
UNSKIPPABLE "You mean the Spiritual Stone of\n"
"Water, " COLOR("\x43") "Zora's Sapphire" COLOR("\x40") ", don't you?" TEXTID("\x40\x27")
);

DECLARE_MESSAGE_NES(0x4027,
UNSKIPPABLE "My mother gave it to me and said \n"
"I should give it only to the man \n"
"who will be my husband. You might\n"
"call it the Zora's Engagement Ring!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x45")  QUICKTEXT_ENABLE "All right!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "I'll give you my most precious\n"
"possession: \n"
"Zora's Sapphire!"
);

DECLARE_MESSAGE_NES(0x4028,
"Don't tell my father..."
);

DECLARE_MESSAGE_NES(0x4029,
UNSKIPPABLE "Heeheehee... Don't be shy."BOX_BREAK
UNSKIPPABLE "I can tell what you're thinking..." TEXTID("\x40\x27")
);

DECLARE_MESSAGE_NES(0x402A,
"I want to buy a fish, but they are\n"
"a little too expensive..."BOX_BREAK"I have no choice but to catch one\n"
"of the fishes that's swimming\n"
"around out there."
);

DECLARE_MESSAGE_NES(0x402B,
"Oh, " NAME "!\n"
"So, you saved the Princess, eh?\n"
"I really appreciate it!"
);

DECLARE_MESSAGE_NES(0x402C,
"Did my most precious possession\n"
"help you in your quest? Heehee!"
);

DECLARE_MESSAGE_NES(0x402D,
"Oh, hi " NAME "!\n"
"You're all Princess Ruto will talk\n"
"about lately!"
);

DECLARE_MESSAGE_NES(0x402E,
"Oh, it's you, " NAME "!\n"
"Thanks to you, Lord Jabu-Jabu is\n"
"back to normal!"
);

DECLARE_MESSAGE_NES(0x402F,
UNSKIPPABLE "We Zoras all respect the great\n"
"King Zora! He has the dignity of\n"
"a king. Oh yeah, he does."BOX_BREAK
UNSKIPPABLE "The grand King Zora has a \n"
"Princess named " COLOR("\x41") "Ruto" COLOR("\x40") ". She's an\n"
"only child."BOX_BREAK
UNSKIPPABLE "She's also a wild tomboy, and it\n"
"seems like she's always causing\n"
"the King a lot of trouble!" TEXTID("\x40\x0B")
);

DECLARE_MESSAGE_NES(0x4030,
UNSKIPPABLE "Here it is."BOX_BREAK
UNSKIPPABLE "This medicine doesn't have any\n"
"preservatives in it. So it " COLOR("\x41") "won't \n"
"last long " COLOR("\x40") "at this temperature."BOX_BREAK
UNSKIPPABLE "Run as fast as you can to \n"
"Death Mountain. You're young--\n"
"you can do it!"
);

DECLARE_MESSAGE_NES(0x4031,
UNSKIPPABLE "Hoo hoo! Looks like you've gotten\n"
"bigger and stronger already,\n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Just ahead lies " COLOR("\x43") "Zora's Domain" COLOR("\x40") ". \n"
"The Zoras serve Hyrule's Royal \n"
"Family by protecting this water \n"
"source."BOX_BREAK
UNSKIPPABLE "Their door will not open for \n"
"anyone except those who have\n"
"some connection with the Royal \n"
"Family."BOX_BREAK
UNSKIPPABLE "Let them hear the " COLOR("\x41") "melody of the \n"
"Royal Family" COLOR("\x40") "!\n"
"Hooo hoo hoooot!"
);

DECLARE_MESSAGE_NES(0x4032,
"When you come back next time, \n"
"don't forget to bring me a \n"
"souvenir!"
);

DECLARE_MESSAGE_NES(0x4033,
UNSKIPPABLE "You found Princess Ruto!\n"
"Now King Zora will give you the \n"
COLOR("\x43") "Spiritual Stone of Water" COLOR("\x40") "...\n"
"Well, maybe."BOX_BREAK
UNSKIPPABLE "Huh?"
);

DECLARE_MESSAGE_NES(0x4034,
UNSKIPPABLE "Her most precious possession?\n"
"You don't know what she's talking\n"
"about, but you've collected two \n"
"Spiritual Stones! Only one to go!"
);

DECLARE_MESSAGE_NES(0x4035,
UNSKIPPABLE "Her most precious possession?\n"
"You don't know what she's talking\n"
"about, but you've finally collected\n"
"all three Spiritual Stones!!"BOX_BREAK
UNSKIPPABLE "Go back to see Princess Zelda!"
);

DECLARE_MESSAGE_NES(0x4036,
UNSKIPPABLE "We meet again, " NAME "..."
);

DECLARE_MESSAGE_NES(0x4037,
UNSKIPPABLE "This ice is created by an evil\n"
"curse... The monster in the " COLOR("\x43") "Water\n"
"Temple " COLOR("\x40") "is the source of the curse."BOX_BREAK
UNSKIPPABLE "Unless you shut off the source, \n"
"this ice will never melt...."BOX_BREAK
UNSKIPPABLE "If you have courage enough to \n"
"confront the danger and save \n"
"the Zoras, I will teach you the \n"
"melody that leads to the temple."
);

DECLARE_MESSAGE_NES(0x4038,
UNSKIPPABLE "Time passes, people move....\n"
"Like a river's flow, it never ends..."BOX_BREAK
UNSKIPPABLE "A childish mind will turn to\n"
"noble ambition... Young love will\n"
"become deep affection... The clear \n"
"water's surface reflects growth..."BOX_BREAK
UNSKIPPABLE "Now listen to the " COLOR("\x43") "Serenade of \n"
"Water" COLOR("\x40") " to reflect upon yourself...."
);

DECLARE_MESSAGE_NES(0x4039,
UNSKIPPABLE "If you came here to meet the \n"
"Zoras, you wasted your time...\n"
"This is all there is..."BOX_BREAK
UNSKIPPABLE "With one exception, the Zoras \n"
"are now sealed under this thick \n"
"ice sheet..."BOX_BREAK
UNSKIPPABLE "I managed to rescue the Zora\n"
"princess from under the ice, but... \n"
"she left to head for the " COLOR("\x43") "Water \n"
"Temple" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x403A,
"If you want to buy fish, you need\n"
"a container to put them in." EVENT
);

DECLARE_MESSAGE_NES(0x403B,
"You say you want to buy a " COLOR("\x43") "Zora\n"
"Tunic" COLOR("\x40") "? That tunic is made of the\n"
"finest material, and is therefore\n"
"exceedingly expensive!"BOX_BREAK"In fact, I'm afraid only that " COLOR("\x41") "very\n"
"rich family in Kakariko Village " COLOR("\x40") "can\n"
"afford this fine garment..." EVENT
);

DECLARE_MESSAGE_NES(0x403C,
"403C"
);

DECLARE_MESSAGE_NES(0x403D,
"403D"
);

DECLARE_MESSAGE_NES(0x403E,
UNSKIPPABLE "Oh...you... If I'm right...\n"
NAME "?!"BOX_BREAK
UNSKIPPABLE "You're " NAME ", aren't\n"
"you?"BOX_BREAK
UNSKIPPABLE "It's me, your fiancée, " COLOR("\x43") "Ruto" COLOR("\x40") "!\n"
"Princess of the Zoras!"BOX_BREAK
UNSKIPPABLE "I never forgot the vows we\n"
"made to each other seven years \n"
"ago!"BOX_BREAK
UNSKIPPABLE "You're a terrible man to have \n"
"kept me waiting for these seven\n"
"long years..."BOX_BREAK
UNSKIPPABLE "But now is not the time to talk \n"
"about love..."BOX_BREAK
UNSKIPPABLE "I'm sure you've already seen it!\n"
"Zora's Domain--totally frozen!"BOX_BREAK
UNSKIPPABLE "A young man named " COLOR("\x41") "Sheik" COLOR("\x40") " saved \n"
"me from under the ice..."BOX_BREAK
UNSKIPPABLE "But my father and the other \n"
"Zoras have not" TEXT_SPEED("\x02") "...yet..." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "I want to save them all!\n"
"I want to save Zora's Domain!"BOX_BREAK
UNSKIPPABLE "You! You have to help me!\n"
"This is a request from me, the\n"
"woman who is going to be your\n"
"wife!"BOX_BREAK
UNSKIPPABLE  NAME ", you have to \n"
"help me destroy the evil monster\n"
"in the Temple, OK?!"BOX_BREAK
UNSKIPPABLE "Inside the Water Temple, there are \n"
COLOR("\x41") "three places" COLOR("\x40") " where you can \n"
"change the water level."BOX_BREAK
UNSKIPPABLE "I'll lead the way.\n"
"Follow me, quickly!!"
);

DECLARE_MESSAGE_NES(0x403F,
UNSKIPPABLE  NAME "! Look out!\n"
"That isn't normal water over \n"
"there!"
);

DECLARE_MESSAGE_NES(0x4040,
"4040"
);

DECLARE_MESSAGE_NES(0x4041,
UNSKIPPABLE  NAME "..."BOX_BREAK
UNSKIPPABLE "I would have expected no less\n"
"from the man I chose to be my\n"
"husband."BOX_BREAK
UNSKIPPABLE "Zora's Domain and its people\n"
"will eventually return to their\n"
"original state."
);

DECLARE_MESSAGE_NES(0x4042,
UNSKIPPABLE "If you see Sheik, \n"
"please give him my thanks, OK?" FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x4043,
UNSKIPPABLE "Did Ruto want to thank me?"BOX_BREAK
UNSKIPPABLE "I see...."BOX_BREAK
UNSKIPPABLE "We have to return peace to \n"
"Hyrule for her sake, too. \n"
"Don't we?"
);

DECLARE_MESSAGE_NES(0x4044,
"4044"
);

DECLARE_MESSAGE_NES(0x4045,
"Ah, I see...\n"
"Princess Ruto went to the Water\n"
"Temple..."
);

DECLARE_MESSAGE_NES(0x4046,
UNSKIPPABLE "As a reward...\n"
"I grant my eternal love to you."BOX_BREAK
UNSKIPPABLE "Well, that's what I want to say, \n"
"but I don't think I can offer that\n"
"now."
);

DECLARE_MESSAGE_NES(0x4047,
UNSKIPPABLE "Princess Zelda... She's alive. I can\n"
"sense it...so don't be discouraged."
);

DECLARE_MESSAGE_NES(0x4048,
QUICKTEXT_ENABLE  SHIFT("\x3F") "Keeeyaaaah!\n"
SHIFT("\x0F") "What is this?! An octopus?!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x4049,
UNSKIPPABLE "I have to guard the Water \n"
"Temple as the " COLOR("\x43") "Sage of Water" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "And you... You're searching for the\n"
"princess, " COLOR("\x41") "Zelda" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Hah!\n"
"You can't hide anything from me!"
);

DECLARE_MESSAGE_NES(0x404A,
UNSKIPPABLE "I can tell that nothing will stop\n"
"you in your quest for justice and \n"
"peace... You must take this \n"
COLOR("\x43") "Medallion" COLOR("\x40") "... Take it respectfully!"
);

DECLARE_MESSAGE_NES(0x404B,
UNSKIPPABLE "You! Who are you?!"BOX_BREAK
UNSKIPPABLE "I am " COLOR("\x41") "Ruto" COLOR("\x40") ", Princess of the Zoras."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "What?!" QUICKTEXT_DISABLE "\n"
"Are you saying my father asked \n"
"you to come here to save me?"BOX_BREAK
UNSKIPPABLE "I'd " QUICKTEXT_ENABLE "never" QUICKTEXT_DISABLE " ask anyone to do such a\n"
"thing!"BOX_BREAK
UNSKIPPABLE "\"Letter in a Bottle?\"  I have\n"
QUICKTEXT_ENABLE "no idea" QUICKTEXT_DISABLE " what you're talking about!"BOX_BREAK
UNSKIPPABLE "My father is worried about me?"BOX_BREAK
UNSKIPPABLE "I don't " QUICKTEXT_ENABLE "care!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Anyway, I can't go home right now.\n"
"And you... " QUICKTEXT_ENABLE "Get out of here!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Understand?!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x404C,
UNSKIPPABLE "Are you still hanging around here?\n"
"I told you to go away!"BOX_BREAK
UNSKIPPABLE "I'm OK. I've been going inside\n"
"Lord Jabu-Jabu's belly since I was\n"
"little, but..."BOX_BREAK
UNSKIPPABLE "Lord Jabu-Jabu is very strange \n"
"today..."BOX_BREAK
UNSKIPPABLE "There are electrified jellyfish and\n"
"strange holes around..."BOX_BREAK
UNSKIPPABLE "On top of that, my precious stone \n"
"was...but...\n"
QUICKTEXT_ENABLE "That's none of your business!" QUICKTEXT_DISABLE "\n"
"Anyway..."BOX_BREAK
UNSKIPPABLE "You! " QUICKTEXT_ENABLE "Go home now!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Understand?!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x404D,
UNSKIPPABLE "You're that worried about me?"BOX_BREAK
UNSKIPPABLE "Then I will give you the honor\n"
"of carrying me!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "However" QUICKTEXT_DISABLE "...I won't leave until I \n"
"find the thing I'm looking for.\n"
"You'd better believe me!" EVENT
);

DECLARE_MESSAGE_NES(0x404E,
QUICKTEXT_ENABLE "How inconsiderate!" QUICKTEXT_DISABLE "\n"
"How could you leave me behind?! \n"
"If you're a man, act like one! \n"
"Take responsibility!" EVENT
);

DECLARE_MESSAGE_NES(0x404F,
UNSKIPPABLE  QUICKTEXT_ENABLE "That's it!" QUICKTEXT_DISABLE "\n"
"That's what I've been looking for!\n"
"Throw me up there! \n"
"Onto the platform!"
);

DECLARE_MESSAGE_NES(0x4050,
UNSKIPPABLE  QUICKTEXT_ENABLE "Princess Ruto got the \n"
COLOR("\x43") "Spiritual Stone" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02") "But" TEXT_SPEED("\x00") " why Princess Ruto?"
);

DECLARE_MESSAGE_NES(0x4051,
UNSKIPPABLE "Oh my goodness!\n"
"I finally found... \n"
"My mother's stone..."BOX_BREAK
UNSKIPPABLE "I got very upset when Lord Jabu-\n"
"Jabu swallowed it..."BOX_BREAK
UNSKIPPABLE "While I was feeding him, he\n"
"suddenly swallowed me! I was \n"
"so surprised I dropped it inside..."BOX_BREAK
UNSKIPPABLE "But, now that I've found it, \n"
"I don't need to be in here \n"
"anymore!"
);

DECLARE_MESSAGE_NES(0x4052,
"So, take me home, right now!"
);

DECLARE_MESSAGE_NES(0x4053,
"Diving Game   20 Rupees\n"
"Want to play?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4054,
QUICKTEXT_ENABLE  SHIFT("\x3F") "OKAY!" QUICKTEXT_DISABLE BOX_BREAK"Pick up all the Rupees I throw \n"
"from here. You have only a limited\n"
"amount of time!"BOX_BREAK"When you pick them all up, \n"
"come back here! I'll give you\n"
"something very nice!" EVENT
);

DECLARE_MESSAGE_NES(0x4055,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hey!  Congratulations!" QUICKTEXT_DISABLE "\n"
"I've got something \n"
"very nice for you!\n"
"Come and get it!" EVENT
);

DECLARE_MESSAGE_NES(0x4056,
UNSKIPPABLE "What a graceful dive!\n"
"Now, please take this!"BOX_BREAK
UNSKIPPABLE "This is a \"" COLOR("\x41") "scale" COLOR("\x40") "\" of our kind.\n"
"With this, you can dive much\n"
"deeper under the water." EVENT
);

DECLARE_MESSAGE_NES(0x4057,
UNSKIPPABLE "As the water rises, the evil \n"
"is vanishing from the lake...\n"
NAME ", you did it!"
);

DECLARE_MESSAGE_NES(0x4058,
UNSKIPPABLE "I...believe that you are going to \n"
"save this world..."
);

DECLARE_MESSAGE_NES(0x4059,
UNSKIPPABLE "Look at that, " NAME "..."BOX_BREAK
UNSKIPPABLE "Together, you and Princess Ruto \n"
"destroyed the evil monster!"BOX_BREAK
UNSKIPPABLE "Once again, the lake is filled with\n"
"pure water. All is as it was here."
);

DECLARE_MESSAGE_NES(0x405A,
QUICKTEXT_ENABLE  SHIFT("\x51")  COLOR("\x41") "START!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x405B,
"Go over the falls for a shortcut." EVENT
);

DECLARE_MESSAGE_NES(0x405C,
"Take as much as you want for \n"
"20 Rupees.  Want to play?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x405D,
QUICKTEXT_ENABLE "Hey!  Congratulations!!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x405E,
UNSKIPPABLE "Chomp chomp chomp...\n"
"How about some " COLOR("\x41") "Magic Beans" COLOR("\x40") "?\n"
"They aren't selling very well..."BOX_BREAK"How about...\n"
COLOR("\x41") "10 Rupees" COLOR("\x40") " for one piece?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x405F,
UNSKIPPABLE "Chomp chomp chomp...\n"
"How about some " COLOR("\x41") "Magic Beans" COLOR("\x40") "?\n"
"Well, they're not that popular yet."BOX_BREAK"How about...\n"
COLOR("\x41") "20 Rupees" COLOR("\x40") " for one piece?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4060,
UNSKIPPABLE "Chomp chomp chomp...\n"
"How about some " COLOR("\x41") "Magic Beans" COLOR("\x40") "?\n"
"They are getting to be quite \n"
"popular..."BOX_BREAK
COLOR("\x41") "30 Rupees" COLOR("\x40") " for one piece.\n"
"How about it?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4061,
UNSKIPPABLE "Chomp chomp chomp...\n"
"How about some " COLOR("\x41") "Magic Beans" COLOR("\x40") "?\n"
"They're all the rage!"BOX_BREAK
COLOR("\x41") "40 Rupees" COLOR("\x40") " for one piece.\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4062,
UNSKIPPABLE "Chomp chomp chomp...\n"
"We have the popular " COLOR("\x41") "Magic Beans" COLOR("\x40") "!\n"
"You'll regret it if you don't buy \n"
"them now!"BOX_BREAK
COLOR("\x41") "50 Rupees" COLOR("\x40") " for one piece.\n"
"(Just for now.)\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4063,
UNSKIPPABLE "Chomp chomp chomp...\n"
"These are the super-popular \n"
COLOR("\x41") "Magic Beans" COLOR("\x40") "! In case you're \n"
"wondering, they'll soon be sold out!"BOX_BREAK"Super price!\n"
COLOR("\x41") "60 Rupees" COLOR("\x40") " for one piece!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4064,
UNSKIPPABLE "Chomp chomp chomp...\n"
"We have the super-rare \n"
COLOR("\x41") "Magic Beans" COLOR("\x40") "! This could be your\n"
"last chance!"BOX_BREAK"Special price!\n"
COLOR("\x41") "70 Rupees" COLOR("\x40") " for one piece!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4065,
UNSKIPPABLE "Chomp chomp chomp...\n"
"We have the legendary \n"
COLOR("\x41") "Magic Beans" COLOR("\x40") "! I'll sell them only \n"
"to you!"BOX_BREAK"Super price!\n"
COLOR("\x41") "80 Rupees" COLOR("\x40") " for one piece!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4066,
UNSKIPPABLE "Chomp chomp chomp...\n"
"Do you want..." COLOR("\x41") "Magic Beans" COLOR("\x40") "?! \n"
"They aren't cheap, but...do you\n"
"still want them?"BOX_BREAK"I can't let them go for less than\n"
COLOR("\x41") "90 Rupees" COLOR("\x40") " apiece!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4067,
UNSKIPPABLE "Chomp chomp chomp...\n"
"We have..." COLOR("\x41") "Magic Beans" COLOR("\x40") "! \n"
"Do you want them...huh? Huh?"BOX_BREAK
COLOR("\x41") "100 Rupees" COLOR("\x40") " for one piece!\n"
"Keyahahah!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4068,
"Oh well...\n"
"Chomp chomp..."
);

DECLARE_MESSAGE_NES(0x4069,
"You don't have enough money.\n"
"I can't sell them to you.\n"
"Chomp chomp..."
);

DECLARE_MESSAGE_NES(0x406A,
"Set a bean to " COLOR("\x46") "[C] " COLOR("\x40") "and use it on\n"
"the dirt right here."
);

DECLARE_MESSAGE_NES(0x406B,
"Oh, too bad! We're sold out!\n"
"Chomp chomp...What?\n"
"Oh, these beans are not for sale!"
);

DECLARE_MESSAGE_NES(0x406C,
"If you want to plant beans, go\n"
"around and look for soft soil.\n"
"Chomp chomp chomp."
);

DECLARE_MESSAGE_NES(0x406D,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "1 meter" COLOR("\x40") " just now. But I wouldn't \n"
"call that a real dive."
);

DECLARE_MESSAGE_NES(0x406E,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "2 meters" COLOR("\x40") " just now. But I wouldn't \n"
"call that a real dive."
);

DECLARE_MESSAGE_NES(0x406F,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "3 meters" COLOR("\x40") " just now. But I wouldn't \n"
"call that a real dive."
);

DECLARE_MESSAGE_NES(0x4070,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "4 meters " COLOR("\x40") "just now. Still not \n"
"deep enough!"
);

DECLARE_MESSAGE_NES(0x4071,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "5 meters " COLOR("\x40") "just now. Still not \n"
"deep enough!"
);

DECLARE_MESSAGE_NES(0x4072,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "6 meters" COLOR("\x40") " just now. You should be\n"
"able to dive deeper!"
);

DECLARE_MESSAGE_NES(0x4073,
"You may not have noticed, but I've\n"
"been watching you. You dove \n"
COLOR("\x41") "7 meters" COLOR("\x40") " just now. You should be\n"
"able to dive deeper!"
);

DECLARE_MESSAGE_NES(0x4074,
UNSKIPPABLE "You may not have noticed, but I've\n"
"been watching you. You " COLOR("\x41") "touched \n"
"the bottom " COLOR("\x40") "just now.  Fantastic!\n"
"I'll give this to you!"
);

DECLARE_MESSAGE_NES(0x4075,
"Your diving is the best in the \n"
"world. Why don't you dive to the \n"
"bottom of Lake Hylia?"
);

DECLARE_MESSAGE_NES(0x4076,
"My name is " COLOR("\x41") "Pierre" COLOR("\x40") ", the wandering\n"
"scarecrow. Actually, I wish I could\n"
"wander to look for soul-moving\n"
"sounds, but I'm kind of stuck here."
);

DECLARE_MESSAGE_NES(0x4077,
"Fantastic tune! It touches my \n"
"heart!" EVENT
);

DECLARE_MESSAGE_NES(0x4078,
"If you come up with a nice song,\n"
"come back and let me hear it!" EVENT
);

DECLARE_MESSAGE_NES(0x4079,
"That song you played for me still\n"
"stays in my heart. Let's hear it\n"
"again!" EVENT
);

DECLARE_MESSAGE_NES(0x407A,
"That song you played for me \n"
"stays in my heart!" EVENT
);

DECLARE_MESSAGE_NES(0x407B,
"Well, do you want to go fishing \n"
"for " COLOR("\x41") "20 Rupees" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x407C,
"Oh, no! You don't have a " COLOR("\x41") "Rumble \n"
"Pak" COLOR("\x40") "! With a Rumble Pak, you can\n"
"feel the vibrations of a fish on\n"
"your hook."BOX_BREAK"This time, no rumble for you!" EVENT
);

DECLARE_MESSAGE_NES(0x407D,
"Wow! You have a " COLOR("\x41") "Rumble Pak" COLOR("\x40") "!\n"
"Today, you can feel the vibration,\n"
"young man!" EVENT
);

DECLARE_MESSAGE_NES(0x407E,
"Shucks! You don't have enough \n"
"money."
);

DECLARE_MESSAGE_NES(0x407F,
"OK, listen up!"BOX_BREAK"Walk up to the water's edge and\n"
"press " COLOR("\x44") "[Z]" COLOR("\x40") " to look at a fish."BOX_BREAK"While looking at a fish, you can \n"
"cast your line with " COLOR("\x42") "[B]" COLOR("\x40") ". Press " COLOR("\x43") "[A]\n"
COLOR("\x40") "to brake the line."BOX_BREAK"When the lure drops into the \n"
"water, you can wiggle it with " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"If you're a novice, you can also\n"
"use " COLOR("\x42") "[B]" COLOR("\x40") "."BOX_BREAK"Reel in your lure with " COLOR("\x43") "[A]" COLOR("\x40") ". Hold \n"
"down " COLOR("\x43") "[A]" COLOR("\x40") " and " COLOR("\x44") "[R] " COLOR("\x40") "to reel it in \n"
"faster."BOX_BREAK"If you feel a hit, press " COLOR("\x43") "[A]" COLOR("\x42") " " COLOR("\x40") "and\n"
COLOR("\x44") "[Control Stick] down " COLOR("\x40") "to set the hook.\n"
"After that, reel it in with " COLOR("\x43") "[A]" COLOR("\x40") "."BOX_BREAK"Do you understand?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4080,
"I'm so generous, I'll let you fish\n"
"for as long as you want. However,\n"
"you can keep only one fish."BOX_BREAK"The biggest fish ever caught here\n"
"weighed " COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "."BOX_BREAK"After you cast, you can change\n"
"your view with " COLOR("\x44") "[Z]" COLOR("\x40") "."BOX_BREAK
SHIFT("\x41") "Let's fish!" EVENT
);

DECLARE_MESSAGE_NES(0x4081,
"Wah ha haah!\n"
"Did you set the hook by pressing\n"
COLOR("\x43") "[A]" COLOR("\x40") " and " COLOR("\x44") "[Control Stick] down" COLOR("\x40") "?"
);

DECLARE_MESSAGE_NES(0x4082,
"Hey, what happened?\n"
"You lost it!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x4083,
"Well, well...it's about " COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") ". \n"
"Do you want to keep it?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4084,
"What do you want?\n"
THREE_CHOICE  COLOR("\x42") "Weigh my fish.\n"
"Let's talk about something.\n"
"I want to quit." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4085,
"Passion alone won't catch you \n"
"many fish. I'm serious!"
);

DECLARE_MESSAGE_NES(0x4086,
SHIFT("\x4B") "WHOA!"BOX_BREAK"This fish is huge! It looks like a \n"
"new record! It weighs at least \n"
COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "! Seriously! \n"
"OK, here is your prize!" EVENT
);

DECLARE_MESSAGE_NES(0x4087,
"What? \n"
"What are you doing to me?!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x4088,
"Hey, young man! Don't you have \n"
"anything important you should be\n"
"doing?"BOX_BREAK"What? Are you saying it's more \n"
"fun to play here?"BOX_BREAK"I've seen many people ruin their\n"
"lives with that kind of attitude.\n"
"I'm serious!\n"
"Oh well..."
);

DECLARE_MESSAGE_NES(0x4089,
QUICKTEXT_ENABLE "The biggest fish ever caught in\n"
"this pond weighed " FISH_INFO " pounds.\n"
"The angler: " NAME  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x408A,
"Do you want to continue fishing?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x408B,
"Well, it weighs " COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "...\n"
"Not bad, but there are bigger\n"
"fish in there!" EVENT
);

DECLARE_MESSAGE_NES(0x408C,
"Hey, c'mon! You don't have a fish!\n"
"Shucks!" EVENT
);

DECLARE_MESSAGE_NES(0x408D,
"You want to try another lure?\n"
"What are you talking about? Are\n"
"you so selfish?"BOX_BREAK"Don't you know the old saying,\n"
"\"A great fisherman never chooses\n"
"his own lure?\""
);

DECLARE_MESSAGE_NES(0x408E,
"What? Do you want to know some \n"
"fishing secrets? I can't tell you\n"
"any. They are company secrets.\n"
"Seriously!"
);

DECLARE_MESSAGE_NES(0x408F,
"What? You want to know if I'm a \n"
"good fisherman?"BOX_BREAK"Of course I am! I'm an old pro!\n"
"Do you know what a pro is?\n"
"I'm telling you the truth!"
);

DECLARE_MESSAGE_NES(0x4090,
QUICKTEXT_ENABLE "Rules and Regulations" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "1. Don't use sinking lures.\n"
"2. Don't litter.\n"
"3. Walk quietly." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "4. Don't cast at anyone." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x4091,
"Wow! This is a real lunker!\n"
"Let's see...it weighs\n"
COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "!"BOX_BREAK"Do you want to keep it?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4092,
"Come back when you get older!\n"
"The fish will be bigger, too...\n"
"Well, maybe."
);

DECLARE_MESSAGE_NES(0x4093,
UNSKIPPABLE "Hey, mister! I remember you!\n"
"It's been a long time!"BOX_BREAK
UNSKIPPABLE "How many years has it been?\n"
"Seven years?! What have you\n"
"been doing all this time?!"BOX_BREAK
UNSKIPPABLE "You're my only customer. I'm \n"
"almost out of business! Seriously!\n"
"On top of that, my hair..."BOX_BREAK
UNSKIPPABLE "Uh, I mean, never mind..."BOX_BREAK
UNSKIPPABLE "Well, do you want to go fishing?\n"
"It costs only " COLOR("\x41") "20 Rupees" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4094,
"What?"BOX_BREAK"You want to go fishing in a \n"
"different fishing pond?!\n"
"What are you talking about?"BOX_BREAK"I'll go out of business if you go\n"
"somewhere else!\n"
"I'm serious!"
);

DECLARE_MESSAGE_NES(0x4095,
"What?"BOX_BREAK"You want to know why I'm \n"
"scratching all the time?\n"
"What are you talking about?"BOX_BREAK"Actually, I have no idea.\n"
"I'm serious!"
);

DECLARE_MESSAGE_NES(0x4096,
"What?"BOX_BREAK"Are you trying to tell me you\n"
"can't see the fish because the\n"
"water is cloudy?"BOX_BREAK"What are you talking about?\n"
"This time of day makes for \n"
"fishing at its finest!"BOX_BREAK"You can hook a fish out of the\n"
"blue, when you least expect it.\n"
"Now that's exciting!"BOX_BREAK"I'm serious.  Really, I am!"
);

DECLARE_MESSAGE_NES(0x4097,
"Hey, what are you doing?\n"
"I told you not to do that!\n"
"You're terrible!\n"
"Seriously!"BOX_BREAK"Give me back my hat!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No way" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4098,
"What? Huh? Oh?\n"
"I think the fish you already\n"
"kept was bigger than this one..."BOX_BREAK"Do you still want to keep it?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "No, I don't want it\n"
"Yes, I want to keep it anyway" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x4099,
"Gosh! That's a strange fish you\n"
"caught there! On top of that, it\n"
"weighs " COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "!"BOX_BREAK"What do you want to do with it?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Keep it anyway\n"
"I don't want it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x409A,
"Wow!"BOX_BREAK"Is this what I think it is?\n"
"Astonishing!\n"
"You snagged a " COLOR("\x41") "sinking lure" COLOR("\x40") "!"BOX_BREAK"What do you want to do with it?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Use it now.\n"
"Get rid of it." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x409B,
"Well, well..."BOX_BREAK"WOW! What a rare fish!\n"
"This is a " COLOR("\x41") "Hyrule Loach" COLOR("\x40") "!"BOX_BREAK"For this fish, size doesn't \n"
"matter. I'll give you this \n"
"prize!" EVENT
);

DECLARE_MESSAGE_NES(0x409C,
"Recently, the number of these\n"
"fish has decreased tremendously,\n"
"so I'm going to release this one." EVENT
);

DECLARE_MESSAGE_NES(0x409D,
QUICKTEXT_ENABLE "Rules and Regulations\n"
"1. Don't use sinking lures.\n"
"2. Don't litter.\n"
"3. Walk quietly." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x409E,
"Hey! Hey!\n"
"You can't take the rod out of\n"
"here!"BOX_BREAK"When you quit fishing, return \n"
"the rod to the counter.\n"
"I'm serious!"
);

DECLARE_MESSAGE_NES(0x409F,
"Oh my gosh!\n"
"This fish is gigantic!!"BOX_BREAK"A fish this big can't even fit\n"
"on the screen, and I can't weigh it\n"
"accurately, but it looks like it's\n"
"about " COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "!!"BOX_BREAK"You'll want to keep this one,\n"
"right?\n"
TWO_CHOICE  COLOR("\x42") "Keep it\n"
"Don't keep it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x40A0,
"Hey, baby!\n"
"I'm " COLOR("\x41") "Bonooru" COLOR("\x40") ", the scarecrow!\n"
"You've probably heard about my\n"
"fantastic memory!"BOX_BREAK"If you have a new tune to play,\n"
"blow it!"BOX_BREAK"This is the song you tooted last \n"
"time, baby!"BOX_BREAK"Hit it!" EVENT
);

DECLARE_MESSAGE_NES(0x40A1,
"I am " COLOR("\x41") "Bonooru" COLOR("\x40") ", the scarecrow\n"
"musical genius!\n"
"I hear a song once, and I never\n"
"forget it, baby!"
);

DECLARE_MESSAGE_NES(0x40A2,
"Play the usual tune to call\n"
"Pierre!\n"
"If he's nearby, he'll come out to\n"
"help you, baby!"
);

DECLARE_MESSAGE_NES(0x40A3,
"Hey! Aren't you the fairy buddy I\n"
"met a long time ago?\n"
"Wow, you grew, dude!"BOX_BREAK"Well, here's your song..."BOX_BREAK"What?"BOX_BREAK"No, I never forget!\n"
"You, you're the one who forgot...\n"
"aren't you? If you have an \n"
"Ocarina, play that song, baby!"
);

DECLARE_MESSAGE_NES(0x40A4,
"Whoa! You have an ocarina!\n"
"Hey, why don't you lay a tune\n"
"on me with it, baby?!" EVENT
);

DECLARE_MESSAGE_NES(0x40A5,
"Well...not bad!\n"
"I will remember it for you \n"
"anyway!"BOX_BREAK"I don't mean I can remember only\n"
"eight notes, but let's just cut it\n"
"right there for now, baby!" EVENT
);

DECLARE_MESSAGE_NES(0x40A6,
"Play it like that and you'll\n"
"never move this scarecrow's heart,\n"
"baby!" EVENT
);

DECLARE_MESSAGE_NES(0x40A7,
"OH YEAHHH!!\n"
"That's it, that's the tune!!\n"
"You rock!! I'm blown away!"BOX_BREAK"Oh, no, no! I didn't forget the\n"
"song...I never forget anything!\n"
"But I just feel like rewarding\n"
"you, baby!"BOX_BREAK"........\n"
"I have a good idea!"BOX_BREAK"My buddy Pierre is wandering\n"
"around, so play that tune when\n"
"you want to call him!"BOX_BREAK"I'll tell him to help you if he's\n"
"nearby and hears that song, baby!" EVENT
);

DECLARE_MESSAGE_NES(0x40A8,
"Hey, it's the Ocarina!\n"
"Play that song with it,\n"
"baby!" EVENT
);

DECLARE_MESSAGE_NES(0x40A9,
SFX("\x28\xE4") "Young lad, you play the Ocarina\n"
"well... Mmmmm...! That melody is \n"
"so fine...ribbit! We all should\n"
"practice it, ribbit!"BOX_BREAK"Take Rupees as a souvenir!\n"
"If you come up with another nice \n"
"melody, please drop by and play\n"
"it...Ribbit ribbit!" EVENT
);

DECLARE_MESSAGE_NES(0x40AA,
SFX("\x28\xE3") "Wow, that melody is so cool! \n"
"Ribbit!"BOX_BREAK"Siiiiingin' in the raaaaaain,\n"
"Oh what a feeling! \n"
"Rrrrrribbbit!!"BOX_BREAK"Please take this as a token of\n"
"our froggish gratitude, ribbit!\n"
"All right. See you, ribbit!" EVENT
);

DECLARE_MESSAGE_NES(0x40AB,
SFX("\x28\xE4") "Look at us, we're all huge frogs!!\n"
"We are the world famous Fabulous\n"
"Five Froggish Tenors!!\n"
"Rrrribbit!!"BOX_BREAK"Make us jump so we can eat the \n"
"bugs flying above us, ribbit!"BOX_BREAK"OK? \n"
"Then, ready, set, go!" EVENT
);

DECLARE_MESSAGE_NES(0x40AC,
SFX("\x28\xE3") "Young boy, you did grrreat!\n"
"Perrrrrfect!\n"
"We are stuffed, ribbit!"BOX_BREAK"Would you take this token of our\n"
"gratitude?" EVENT
);

DECLARE_MESSAGE_NES(0x40AD,
"Oh well, I don't remember that \n"
"song, baby.\n"
"Why? That's what I can't tell ya!\n"
"Good golly!"
);

DECLARE_MESSAGE_NES(0x40AE,
QUICKTEXT_ENABLE "The biggest fish ever caught in\n"
"this pond weighed " FISH_INFO " pounds.\n"
"The angler: the pond owner" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x40AF,
"What?\n"
"Do you want to fish with a \n"
"different lure?\n"
"...Hey, what's that?"BOX_BREAK"What? You just picked it up?\n"
"Usually, the rules says you can't\n"
"use one of those. I mean, usually. \n"
"But, what the heck..."
);

DECLARE_MESSAGE_NES(0x40B0,
"YAHOOOOOO!\n"
"This is HUGE!! A new record!!\n"
"This...this weighs as much as...\n"
COLOR("\x41")  FISH_INFO " pounds" COLOR("\x40") "!!"BOX_BREAK"Buuuuuuuut! That sinking lure is\n"
"in violation of the rules!\n"
"So, no prize for you.\n"
"Wah ha ha ha ha ha!" EVENT
);

DECLARE_MESSAGE_NES(0x40B1,
QUICKTEXT_ENABLE "The biggest fish ever caught in\n"
"this pond weighed " FISH_INFO " pounds.\n"
"The angler: " NAME "\n"
"(NOTE: With illegal sinking lure.)" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x40B2,
"You're a kind-hearted kid!\n"
"But don't tell anyone about this.\n"
"Seriously!" EVENT
);

DECLARE_MESSAGE_NES(0x40B3,
"WHAAAAAT?!?"BOX_BREAK"Why are you doing this to me?\n"
"What are you thinking?"BOX_BREAK"I'm not going to let you get off\n"
"that easy! You have to pay me a \n"
COLOR("\x41") "50-Rupee " COLOR("\x40") "fine!\n"
"Seriously!" EVENT
);

DECLARE_MESSAGE_NES(0x5000,
QUICKTEXT_ENABLE "GYAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "You" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "killed" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "me!!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Huh? Oh, it's you."BOX_BREAK"Did you try to play the \n"
COLOR("\x46") "Sun's Song" COLOR("\x40") "?"BOX_BREAK"Like I told you before, with that \n"
"song, you can turn day to night \n"
"or night to day whenever you \n"
"want."BOX_BREAK"When you're in darkness, that \n"
"song should bring the sun's light\n"
"to you. You should try it."
);

DECLARE_MESSAGE_NES(0x5001,
QUICKTEXT_ENABLE "When I dug a hole, I found a \n"
"treasure that stretches--BOING!\n"
"and shrinks--BOING! It's so fun, \n"
"I'll never give it to anybody!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x5002,
"The " COLOR("\x41") "gravekeeper's diary " COLOR("\x40") "is here.\n"
"Do you want to read it?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x5003,
QUICKTEXT_ENABLE "Whoever reads this, please enter\n"
"my grave. I will let you have my\n"
"stretching, shrinking " COLOR("\x41") "keepsake" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "I'm waiting for you.\n"
"--Dampé" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x5004,
QUICKTEXT_ENABLE "You decide not to read it..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x5005,
"You defeated Poe the ghost!"BOX_BREAK"Do you want to catch it in \n"
"a bottle?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x5006,
"You want to catch it but you \n"
"don't have an empty bottle."
);

DECLARE_MESSAGE_NES(0x5007,
"You let it go for now."
);

DECLARE_MESSAGE_NES(0x5008,
"You caught a Poe!"
);

DECLARE_MESSAGE_NES(0x5009,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x04") "The rising sun will eventually set,\n"
SHIFT("\x19") "A newborn's life will fade." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x05") "From sun to moon, moon to sun..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x25") "Give peaceful rest to\n"
SHIFT("\x37") "the living dead." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "This is an interesting poem...\n"
"huh?"
);

DECLARE_MESSAGE_NES(0x500A,
QUICKTEXT_ENABLE  SHIFT("\x24") "Restless souls wander\n"
SHIFT("\x1E") "where they don't belong,\n"
SHIFT("\x27") "bring them calm with\n"
SHIFT("\x36") "the " COLOR("\x46") "Sun's Song" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x500B,
UNSKIPPABLE "Something is inscribed on the \n"
"tombstone..."BOX_BREAK
UNSKIPPABLE "It's the " COLOR("\x46") "secret melody" COLOR("\x40") " of the \n"
"Composer Brothers!"
);

DECLARE_MESSAGE_NES(0x500C,
"Ultimate potion! How about\n"
COLOR("\x41") "100 Rupees" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x500D,
"If you change your mind, come \n"
"back and visit me...\n"
"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x500E,
"You don't have enough Rupees!\n"
"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x500F,
UNSKIPPABLE "GYAAAAH!\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "YOU" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "KILLED" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ME..." QUICKTEXT_DISABLE  TEXT_SPEED("\x00")  QUICKTEXT_ENABLE "Unbelievable!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Oh, what?\n"
"You're not one of Ganondorf's \n"
"men, are you?"BOX_BREAK
UNSKIPPABLE "Because of my role as a ghost, I\n"
"had to act like that. I apologize."BOX_BREAK
UNSKIPPABLE "Now then, let me introduce myself.\n"
"Ahem..." TEXTID("\x50\x10")
);

DECLARE_MESSAGE_NES(0x5010,
"I am one of the ghostly composer \n"
"brothers of Kakariko Village."BOX_BREAK"All the people in this village are\n"
"born to serve the Royal Family of\n"
"Hyrule."BOX_BREAK"We brothers also served the Royal \n"
"Family, and were assigned to \n"
"study the hereditary mystic \n"
"powers of the family."BOX_BREAK"Though we never could figure out \n"
"the power of the Triforce,"BOX_BREAK"we had almost completed our \n"
COLOR("\x41") "study of controlling time" COLOR("\x40") " with the \n"
"tones of ocarinas."BOX_BREAK"Uh, I mean..."BOX_BREAK"Actually, we did complete that \n"
"study!"BOX_BREAK"We would have been famous, if \n"
"that hateful Ganondorf had not\n"
"tried to steal our results."BOX_BREAK"We could never let him reap the \n"
"fruits of our research!"BOX_BREAK"That's why we gave our lives to \n"
"protect the secret." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_NES(0x5011,
"Do you want to hear what I \n"
"said again?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x5012,
UNSKIPPABLE  QUICKTEXT_ENABLE "GYAAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "I'M" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "DEAD" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "A" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "GAIN!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"What? You again?"BOX_BREAK
UNSKIPPABLE "Somehow, you remind me of...\n"
"Princess Zelda..."BOX_BREAK
UNSKIPPABLE "Hmm... Since you may have some\n"
"connection with the Royal Family, I\n"
"will tell you a little more of our\n"
"tale."BOX_BREAK
UNSKIPPABLE "Back then, people called us great\n"
"composers because of the many \n"
"musical masterpieces we wrote."BOX_BREAK
UNSKIPPABLE "But we brothers were not just \n"
"composers."BOX_BREAK
UNSKIPPABLE "We had a mission to analyze the\n"
"mysterious powers of Hyrule's\n"
"Royal Family."BOX_BREAK
UNSKIPPABLE "Our names would be a part of \n"
"Hyrule's history if we could \n"
"complete our research!"BOX_BREAK
UNSKIPPABLE "We kept our study extremely \n"
"secret until we completed it." TEXTID("\x50\x14")
);

DECLARE_MESSAGE_NES(0x5013,
UNSKIPPABLE  QUICKTEXT_ENABLE "GYAAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "I'M" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "DEAD" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "A" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "GAIN!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"What? You again?"BOX_BREAK
UNSKIPPABLE "Somehow, you remind me of\n"
"Princess Zelda."BOX_BREAK
UNSKIPPABLE "Since you seem to have some\n"
"connection with the Royal Family, I\n"
"will tell you a little more of our\n"
"story." TEXTID("\x50\x14")
);

DECLARE_MESSAGE_NES(0x5014,
"To tell the truth, each of us\n"
"was studying a different song, one\n"
"to " COLOR("\x41") "summon the sun" COLOR("\x40") " and another to\n"
COLOR("\x41") "summon the moon" COLOR("\x40") "."BOX_BREAK"If you were really sent by a \n"
"member of the Royal Family, I will\n"
"tell you about the results of our\n"
"study."BOX_BREAK"We inscribed it on the " COLOR("\x41") "royal\n"
"tombstone" COLOR("\x40") "."BOX_BREAK"As a messenger of the Royal \n"
"Family, you should show your\n"
"Royal credentials on top of the \n"
"Triforce mark..." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_NES(0x5015,
"Z Z Z..."BOX_BREAK"Malon...doing all right...\n"
"Mumble...mumble...\n"
"Sorry to make you worry..."
);

DECLARE_MESSAGE_NES(0x5016,
"Ingo took over Lon Lon Ranch and\n"
"they call it " COLOR("\x41") "Ingo Ranch " COLOR("\x40") "nowadays."BOX_BREAK"I was kicked out of there, and\n"
"look at me now! My girl, Malon, \n"
"still works at the ranch..."BOX_BREAK"I'm worried about her..."
);

DECLARE_MESSAGE_NES(0x5017,
"Did you save Malon? Thanks!\n"
"I'm goin' back to the ranch, then!\n"
"Yeehah!"
);

DECLARE_MESSAGE_NES(0x5018,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hey kid!" QUICKTEXT_DISABLE "\n"
"Don't mess around with the \n"
"graves!"BOX_BREAK
UNSKIPPABLE "I'm " COLOR("\x41") "Dampé the Gravekeeper" COLOR("\x40") "!\n"
"My face may be scary, but I'm not\n"
"a bad guy..."BOX_BREAK
UNSKIPPABLE "Let me give you an advertisement\n"
"for my side business..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Dampé the Gravekeeper's" COLOR("\x40") "\n"
"Heart-Pounding" COLOR("\x44") " Gravedigging Tour" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "What's gonna come out?!\n"
"What's gonna come out?!\n"
"When I start digging,\n"
"we'll find out!" TEXTID("\x50\x19")
);

DECLARE_MESSAGE_NES(0x5019,
"Do you want me to dig here?\n"
COLOR("\x41") "10 Rupees" COLOR("\x40") " for one hole.\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"Don't do it" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x501A,
COLOR("\x41") "Nope, nothing here!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x501B,
UNSKIPPABLE "Get back, " NAME "!"
);

DECLARE_MESSAGE_NES(0x501C,
UNSKIPPABLE  NAME "....\n"
"A terrible thing has happened!\n"
"The " COLOR("\x41") "evil shadow spirit" COLOR("\x40") " has\n"
"been released!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Impa" COLOR("\x40") ", the leader of Kakariko\n"
"Village, had sealed the evil shadow\n"
"spirit in the bottom of the well...."BOX_BREAK
UNSKIPPABLE "But the force of the evil spirit\n"
"got so strong, the seal of the\n"
"well broke, and it escaped into the\n"
"world!!"
);

DECLARE_MESSAGE_NES(0x501D,
UNSKIPPABLE "Let me take care of the village!\n"
"I'm counting on you,\n"
NAME "!"
);

DECLARE_MESSAGE_NES(0x501E,
QUICKTEXT_ENABLE  SHIFT("\x23") "Royal Composer Bros.\n"
SHIFT("\x37") "Sharp the Elder\n"
SHIFT("\x50") "R.I.P." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x501F,
QUICKTEXT_ENABLE  SHIFT("\x23") "Royal Composer Bros.\n"
SHIFT("\x33") "Flat the Younger\n"
SHIFT("\x50") "R.I.P." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x5020,
QUICKTEXT_ENABLE  SHIFT("\x28") "Royal Family's Tomb" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x5021,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x1A") "This poem is dedicated to\n"
"the memory of the dearly departed\n"
SHIFT("\x10") "members of the Royal Family." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x5022,
UNSKIPPABLE "The boy with the noble Zelda's \n"
"Ocarina...As I expected, \n"
"you have come."BOX_BREAK
UNSKIPPABLE "I am " COLOR("\x41") "Impa" COLOR("\x40") ", one of the Sheikah.\n"
"I am Princess Zelda's caretaker,\n"
"and I am also the Sage who\n"
"guards the Shadow Temple."
);

DECLARE_MESSAGE_NES(0x5023,
UNSKIPPABLE "Please look out for the Princess!" FADE("\x32")
);

DECLARE_MESSAGE_NES(0x5024,
UNSKIPPABLE  NAME ", the hero!"BOX_BREAK
UNSKIPPABLE "Finally, all of us, the " COLOR("\x41") "six Sages" COLOR("\x40") ", \n"
"have been awakened!\n"
"The time for the final showdown\n"
"with the King of Evil has come!"BOX_BREAK
UNSKIPPABLE "Before that, though, you should\n"
"meet the one who is waiting for\n"
"you..."BOX_BREAK
UNSKIPPABLE "The one who is waiting for you at\n"
"the " COLOR("\x44") "Temple of Time" COLOR("\x40") "...."
);

DECLARE_MESSAGE_NES(0x5025,
UNSKIPPABLE "We Sheikah have served the \n"
"royalty of Hyrule from generation\n"
"to generation as attendants.\n"
"However..."BOX_BREAK
UNSKIPPABLE "On that day seven years ago,\n"
"Ganondorf suddenly attacked...\n"
"and Hyrule Castle surrendered\n"
"after a short time."BOX_BREAK
UNSKIPPABLE "Ganondorf's target was one of\n"
"the keys to the Sacred Realm...the\n"
"hidden treasure of the Royal\n"
"Family...The Ocarina of Time!"BOX_BREAK
UNSKIPPABLE "My duty bound me to take Zelda \n"
"out of Ganondorf's reach."BOX_BREAK
UNSKIPPABLE "When last I saw you, as we made\n"
"our escape from the castle, you\n"
"were just a lad..."BOX_BREAK
UNSKIPPABLE "Now I see that you have become \n"
"a fine hero..."
);

DECLARE_MESSAGE_NES(0x5026,
UNSKIPPABLE "I have to stay here... You go to \n"
"Princess Zelda's side and protect \n"
"her on my behalf."BOX_BREAK
UNSKIPPABLE "Now I put my power, which should \n"
"be helpful to you, into this\n"
COLOR("\x43") "Medallion" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x5027,
"How is your Cucco? Is he happy?\n"
"Shall I check him out for you?"
);

DECLARE_MESSAGE_NES(0x5028,
UNSKIPPABLE  SFX("\x68\x55") "I am the " COLOR("\x41") "boss of the carpenters\n"
COLOR("\x40") "that Impa hired to improve this\n"
"village and make it into a true\n"
"city!"BOX_BREAK
UNSKIPPABLE "But young men these days don't\n"
"have any ambition...\n"
"Do you know what I mean, kid?"BOX_BREAK
UNSKIPPABLE "My workers are just running\n"
"aimlessly around the village, and\n"
"they're not making any progress\n"
"at all..."BOX_BREAK
UNSKIPPABLE "Even my own son doesn't have a \n"
"job, and he just wanders around\n"
"all day!" TEXTID("\x50\x29")
);

DECLARE_MESSAGE_NES(0x5029,
UNSKIPPABLE "They're all worthless, I tell you!!"
);

DECLARE_MESSAGE_NES(0x502A,
"Look at that poor girl over there.\n"
"She works so hard taking care of \n"
"her chickens, even though touching\n"
"them gives her goose bumps..."BOX_BREAK"What a trooper! I would really \n"
"like to help her! I've just been\n"
"feeling so charitable these days!\n"
"Don't you feel that way, too?"
);

DECLARE_MESSAGE_NES(0x502B,
UNSKIPPABLE "There's nothing to worry about...\n"
"The Princess is safe now."
);

DECLARE_MESSAGE_NES(0x502C,
UNSKIPPABLE "Soon, you'll meet Princess Zelda\n"
"face-to-face, and she will explain\n"
"everything..."BOX_BREAK
UNSKIPPABLE "That is when we, the six Wise \n"
"Ones, will seal up the Evil King\n"
"and return peace to Hyrule."
);

DECLARE_MESSAGE_NES(0x502D,
UNSKIPPABLE "Hehehe, young man...\n"
"You were very quick to be able\n"
"to keep up with me! Hehehe!"BOX_BREAK
UNSKIPPABLE "As a reward, I'm going to give\n"
"you my treasure. It's called the\n"
COLOR("\x41") "Hookshot" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Its spring-loaded chain will pull\n"
"you to any spot where its hook\n"
"sticks. Doesn't that sound cool?\n"
"I'm sure it will help you!"BOX_BREAK
UNSKIPPABLE "I live here now, so come back\n"
"again sometime. I'll give you\n"
"something cool!"BOX_BREAK
UNSKIPPABLE "One more thing! Be careful on\n"
"your way back!\n"
"Heheheh...."
);

DECLARE_MESSAGE_NES(0x502E,
"You're back, young man...\n"
"Was the present I gave to you\n"
"fun and useful?"
);

DECLARE_MESSAGE_NES(0x502F,
SHIFT("\x19") "The time of this race was\n"
SHIFT("\x4B")  RACE_TIME "!!" EVENT
);

DECLARE_MESSAGE_NES(0x5030,
UNSKIPPABLE "Looks like you're coming around..."
);

DECLARE_MESSAGE_NES(0x5031,
UNSKIPPABLE "I believe Impa has gone to the \n"
COLOR("\x45") "Shadow Temple " COLOR("\x40") "to seal it again,\n"
"but...she will be in danger without \n"
"any help!"BOX_BREAK
UNSKIPPABLE  NAME "!\n"
"Impa is one of the six Sages.\n"
"Destroy the evil shadow spirit and\n"
"save Impa!"BOX_BREAK
UNSKIPPABLE "There is an entrance to the \n"
"Shadow Temple beneath the \n"
"graveyard behind this village."BOX_BREAK
UNSKIPPABLE "The only thing I can do for you is\n"
"teach you the melody that will\n"
"lead you to the Shadow Temple..."BOX_BREAK
UNSKIPPABLE "This is the melody that will draw\n"
"you into the infinite darkness \n"
"that absorbs even time... Listen to \n"
"this, the " COLOR("\x45") "Nocturne of Shadow" COLOR("\x40") "!!"
);

DECLARE_MESSAGE_NES(0x5032,
"Go around! Go around and around\n"
"and around! What fun! I'm so \n"
"happy!"BOX_BREAK"I'm a music man who loves\n"
"to go around and around!\n"
"Go around and around!!!"BOX_BREAK"I'm trying to come up with a\n"
"musical theme inspired by this \n"
"windmill...going around and\n"
"around and around!!!"
);

DECLARE_MESSAGE_NES(0x5033,
"Go around, go around, go around...\n"
"What? It's going way too fast!"
);

DECLARE_MESSAGE_NES(0x5034,
"Grrrrrrrrr!"BOX_BREAK"I'll never forget what happened on\n"
"that day, seven years ago!\n"
"Grrrrrrrrr!"BOX_BREAK"It's all that Ocarina kid's fault!\n"
"Next time he comes around here,\n"
"I'm gonna mess him up!"
);

DECLARE_MESSAGE_NES(0x5035,
UNSKIPPABLE "What?! You've got an ocarina!!"BOX_BREAK
UNSKIPPABLE "What the heck!"BOX_BREAK
UNSKIPPABLE "That reminds me of that time,\n"
"seven years ago!"BOX_BREAK
UNSKIPPABLE "Back then a mean kid came here \n"
"and played a " COLOR("\x45") "strange song" COLOR("\x40") ". It \n"
"messed up this windmill!"
);

DECLARE_MESSAGE_NES(0x5036,
"What should I do!?\n"
"My " COLOR("\x41") "Cuccos" COLOR("\x40") " have all flown away!"BOX_BREAK"You, little boy, please!\n"
"Please help me bring them back to \n"
"this pen!"
);

DECLARE_MESSAGE_NES(0x5037,
"My Cuccos have run away!\n"
"Please help me bring the other \n"
"four back to this pen! Please!"
);

DECLARE_MESSAGE_NES(0x5038,
"My Cuccos have run away!\n"
"Please help me bring the other \n"
"three back to this pen! Please!"
);

DECLARE_MESSAGE_NES(0x5039,
"My Cuccos have run away!\n"
"Please help me bring the other \n"
"two back to this pen! Please!"
);

DECLARE_MESSAGE_NES(0x503A,
"My Cuccos have run away!\n"
"Please help me bring the last one\n"
"back to this pen! Please!"
);

DECLARE_MESSAGE_NES(0x503B,
UNSKIPPABLE "Thank you for finding my Cuccos.\n"
"I have allergies, so I get \n"
"goose bumps when I touch them."BOX_BREAK
UNSKIPPABLE "For helping me, I will give this\n"
"to you. It's fine glass, and should\n"
"be useful. Please take good\n"
"care of it!" EVENT
);

DECLARE_MESSAGE_NES(0x503C,
"Hey, what are you doing?!\n"
"Now go round them up or pay for \n"
"them!" EVENT
);

DECLARE_MESSAGE_NES(0x503D,
"Please don't tease my Cuccos!"
);

DECLARE_MESSAGE_NES(0x503E,
UNSKIPPABLE "I bred a new type of miniature \n"
"Cucco! I call it the " COLOR("\x41") "Pocket \n"
"Cucco" COLOR("\x40") "! I don't get goose bumps\n"
"from this baby."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Cuccos " COLOR("\x40") "are very good at \n"
"getting lazy, late-risers out of bed.\n"
"Haven't you heard of them \n"
"before?"BOX_BREAK
UNSKIPPABLE "It makes them very happy to crow:\n"
QUICKTEXT_ENABLE  SHIFT("\x38")  COLOR("\x41") "CUCCKOOOO" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"especially when it wakes up a \n"
"very heavy sleeper!"BOX_BREAK
UNSKIPPABLE "However, my Cucco is not entirely\n"
"happy right now..."BOX_BREAK
UNSKIPPABLE "You..., \n"
"You look like you're good at \n"
"handling Cuccos."BOX_BREAK
UNSKIPPABLE "Here, take this egg.\n"
"After the Cucco hatches, bring it \n"
"back to me after a while, and I'll \n"
"check out its mood." TEXTID("\x50\x3F")
);

DECLARE_MESSAGE_NES(0x503F,
"What do you think? \n"
"Will you try?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x5040,
"Oh, too bad...were you pecked by\n"
"a Cucco when you were little?" EVENT
);

DECLARE_MESSAGE_NES(0x5041,
"Heh heh heh, young man!\n"
"Are you fast on your feet?"BOX_BREAK"I may not look like it, but I'm \n"
"confident in my speed!\n"
"Let's have a race! \n"
"Follow me if you dare!"
);

DECLARE_MESSAGE_NES(0x5042,
"Please make my Cucco happy!\n"
"OK?"
);

DECLARE_MESSAGE_NES(0x5043,
UNSKIPPABLE "Oh, your Cucco looks pretty \n"
"happy! He must have awakened an\n"
"extremely lazy guy!"BOX_BREAK
UNSKIPPABLE "You're a good Cucco Keeper!\n"
"I'll give you a rare, valuable\n"
"Cucco, if you're interested..."BOX_BREAK
UNSKIPPABLE "Its name is " COLOR("\x41") "Cojiro" COLOR("\x40") "," COLOR("\x41") " " COLOR("\x40") "and it used to\n"
"be my brother's Cucco. Its\n"
"blue body is quite charming.\n"
"It's so cute!"BOX_BREAK
UNSKIPPABLE "Since my brother has gone, \n"
"it's strange, but Cojiro has \n"
"stopped crowing." TEXTID("\x50\x44")
);

DECLARE_MESSAGE_NES(0x5044,
"Do you want to keep " COLOR("\x41") "Cojiro" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x5045,
"It looks as if you really like that\n"
"other Cucco. OK, you can keep it\n"
"for a while." EVENT
);

DECLARE_MESSAGE_NES(0x5046,
"An old witch runs the Potion Shop\n"
"behind this one. You can get to \n"
"that shop through the door to the\n"
"left of the counter." EVENT
);

DECLARE_MESSAGE_NES(0x5047,
"My brother must have been very \n"
"lonely..."
);

DECLARE_MESSAGE_NES(0x5048,
"I heard that the " COLOR("\x42") "Lost Woods" COLOR("\x40") ", \n"
"where fairies live, is a strange\n"
"place with many mysterious smells."BOX_BREAK"I wish I could just once make \n"
"medicine with some of the strange\n"
"things I might find there..."BOX_BREAK"I may not be able to see very \n"
"well anymore, but my nose still \n"
"works fine!  Hehehe!"
);

DECLARE_MESSAGE_NES(0x5049,
"Sniff sniff sniff..."BOX_BREAK"What a mysterious smell..."BOX_BREAK"You must have something!"
);

DECLARE_MESSAGE_NES(0x504A,
"That bum! He had to go into the \n"
"forest...\n"
TEXT_SPEED("\x01") "....." TEXT_SPEED("\x00") "I see." TEXTID("\x50\x4B")
);

DECLARE_MESSAGE_NES(0x504B,
"Hey, give it to me now!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x504C,
"How sad... I just need a little..."
);

DECLARE_MESSAGE_NES(0x504D,
UNSKIPPABLE "If you see that fool, give this to \n"
"him. It is the strongest medicine\n"
"I have ever produced."BOX_BREAK
UNSKIPPABLE "However, this potion will not\n"
"work on a monster..." EVENT
);

DECLARE_MESSAGE_NES(0x504E,
"Hey, kid! If you want to carry \n"
"medicine, you need a container to\n"
"put it in!" EVENT
);

DECLARE_MESSAGE_NES(0x504F,
"They say that there is no \n"
"medicine that can cure a fool...\n"
"I guess that's true..."
);

DECLARE_MESSAGE_NES(0x5050,
"I can't get down, so all I can do\n"
"is look at " COLOR("\x41") "Death Mountain" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x5051,
"I can't get down, so all I can do \n"
"is look at the stars."
);

DECLARE_MESSAGE_NES(0x5052,
"Can you see it from there? \n"
"Something is happening on " COLOR("\x41") "Death \n"
"Mountain" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x5053,
"Can you see it from there?\n"
COLOR("\x41") "Death Mountain " COLOR("\x40") "is back to normal!"
);

DECLARE_MESSAGE_NES(0x5054,
"I don't feel like getting down,\n"
"ever! Whatever happens, I'll keep\n"
"watching Death Mountain from \n"
"up here."
);

DECLARE_MESSAGE_NES(0x5055,
UNSKIPPABLE "Hey! Good to see you again! I'll\n"
"give you this as a memento."
);

DECLARE_MESSAGE_NES(0x5056,
"To get a good view, use " COLOR("\x46") "[C-Up]" COLOR("\x40") " and \n"
"look around with " COLOR("\x44") "[Control Stick]" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x5057,
UNSKIPPABLE "Hey! Kid, do you always enter\n"
"other people's houses without \n"
"permission? Didn't your parents \n"
"teach you any manners?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x42") "Oh well."BOX_BREAK
UNSKIPPABLE "Did you see a lady behind this \n"
"house? She's going through hard \n"
"times."BOX_BREAK
UNSKIPPABLE  SHIFT("\x42") "Oh well." TEXTID("\x50\x58")
);

DECLARE_MESSAGE_NES(0x5058,
"If that lady asks you about \n"
"chickens, you should listen to her."
);

DECLARE_MESSAGE_NES(0x5059,
UNSKIPPABLE "Is visiting other people's houses \n"
"at this late hour your idea of \n"
"fun? You must not have had a \n"
"good upbringing."BOX_BREAK
UNSKIPPABLE  SHIFT("\x42") "Oh well." TEXTID("\x50\x5A")
);

DECLARE_MESSAGE_NES(0x505A,
"That lady takes care of chickens,\n"
"but she is, in fact, allergic to \n"
"them."BOX_BREAK
SHIFT("\x42") "Oh well."
);

DECLARE_MESSAGE_NES(0x505B,
UNSKIPPABLE "Hey! Young man! A grown boy\n"
"like you entering a person's house\n"
"without permission?! I want to\n"
"talk to your parents!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x42") "Oh well."BOX_BREAK
UNSKIPPABLE "This isn't my house anyway.\n"
"This is the " COLOR("\x41") "great Impa's" COLOR("\x40") " house!"BOX_BREAK
UNSKIPPABLE "The great Impa has gone to the\n"
COLOR("\x41") "graveyard " COLOR("\x40") "to seal up the \n"
"humongous creature there."BOX_BREAK
UNSKIPPABLE "Since Ganondorf appeared, many \n"
"monsters have been sighted \n"
"around here."BOX_BREAK
UNSKIPPABLE "Only the great Impa has kept \n"
"peace in our village. You have to\n"
"remember that, young man!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x42") "Oh well."BOX_BREAK
UNSKIPPABLE "Speaking of the great Impa, she\n"
"hasn't come back yet. I wonder \n"
"what happened to her?" TEXTID("\x50\x5C")
);

DECLARE_MESSAGE_NES(0x505C,
"I heard that the " COLOR("\x41") "ghost of the\n"
"gravekeeper " COLOR("\x40") "often appears in the \n"
"graveyard behind this village..."BOX_BREAK
SHIFT("\x34") "But, no big deal."
);

DECLARE_MESSAGE_NES(0x505D,
UNSKIPPABLE "Hi, boy! Is this the first time\n"
"you've visited this village?"BOX_BREAK
UNSKIPPABLE "A great woman, " COLOR("\x41") "Impa" COLOR("\x40") ", opened up\n"
"this village to us poor folk." TEXTID("\x50\x5E")
);

DECLARE_MESSAGE_NES(0x505E,
"Well, make yourself at home.\n"
"The food isn't ready yet, though."
);

DECLARE_MESSAGE_NES(0x505F,
"The great Impa is not here. Did\n"
"something happen to her?"
);

DECLARE_MESSAGE_NES(0x5060,
UNSKIPPABLE "All people have hardships in \n"
"their past that they would\n"
"rather no one found out about." TEXTID("\x50\x61")
);

DECLARE_MESSAGE_NES(0x5061,
"Look at the bearded man sleeping\n"
"over there. I bet even someone\n"
"like him has had his share of\n"
"troubles in the past..."
);

DECLARE_MESSAGE_NES(0x5062,
"That bearded guy went back to \n"
"the ranch. He looked so happy!"
);

DECLARE_MESSAGE_NES(0x5063,
UNSKIPPABLE "Ding dong, ding dong!\n"
"I'm a clock soldier of Kakariko!\n"
"The current time is: " TIME "."BOX_BREAK
UNSKIPPABLE "Hello there, son.\n"
"Zelda's attendant, the great " COLOR("\x41") "Impa" COLOR("\x40") ",\n"
"opened this village to the common\n"
"people."BOX_BREAK
UNSKIPPABLE "We have only a small population \n"
"now, but someday this place will \n"
"be as lively as Hyrule Castle \n"
"Town! Oh, yes! It will!"BOX_BREAK
UNSKIPPABLE "Climb up the " COLOR("\x41") "stairs at the north\n"
COLOR("\x40") "end of the village to find the trail\n"
"that leads up Death Mountain."BOX_BREAK
UNSKIPPABLE "But you need the King's permission\n"
"to actually go up the mountain."
);

DECLARE_MESSAGE_NES(0x5064,
"Ding dong, ding dong!\n"
"The current time is: " TIME "."
);

DECLARE_MESSAGE_NES(0x5065,
"Ding dong, ding dong!\n"
"The current time is: " TIME ".\n"
"By the way, do you know what \n"
"happened in the castle?"
);

DECLARE_MESSAGE_NES(0x5066,
UNSKIPPABLE "Hey, son, what are you doing \n"
"wandering around this late at \n"
"night?"BOX_BREAK
UNSKIPPABLE "Oh, I get it. You're testing your\n"
"courage, aren't you? You must \n"
"want to go to...a graveyard!"BOX_BREAK
UNSKIPPABLE "Wait a minute! What am I doing\n"
"talking to a kid? I've got work to\n"
"do! Work! Work!" TEXTID("\x50\x67")
);

DECLARE_MESSAGE_NES(0x5067,
"Ding dong, ding dong!\n"
"The current time is: " TIME "."BOX_BREAK"Head east and you'll find a\n"
COLOR("\x41") "graveyard" COLOR("\x40") ". Legends say you can \n"
"calm the souls of the dead with\n"
"an " COLOR("\x43") "old song of the Royal Family" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x5068,
"There's a strange guy living in the \n"
"Windmill. Have you already met\n"
"him, Mr. Hero?"
);

DECLARE_MESSAGE_NES(0x5069,
"People are disgusting. \n"
"My own father and mother are\n"
"disgusting.\n"
"You must be disgusting, too!"
);

DECLARE_MESSAGE_NES(0x506A,
"All day long, we are working on \n"
"many construction projects in the\n"
"village. It's going to take awhile\n"
"before everything is done."BOX_BREAK"Our boss works us very hard!"
);

DECLARE_MESSAGE_NES(0x506B,
"I'm starving!\n"
"Let's eat dinner, right now!"
);

DECLARE_MESSAGE_NES(0x506C,
"Those guys each do the work of \n"
"half a man, but they still want a\n"
"full man's portion!\n"
"They're lazy slackers, I tell you!"
);

DECLARE_MESSAGE_NES(0x506D,
QUICKTEXT_ENABLE  COLOR("\x41") "Poe   30 Rupees\n"
COLOR("\x40") "This is a bottled ghost spirit. \n"
"Sell it to someone who is crazy \n"
"about weird things like this." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x506E,
QUICKTEXT_ENABLE "Poe  30 Rupees" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x506F,
"506f"
);

DECLARE_MESSAGE_NES(0x5070,
"My Cuccos have run away!\n"
"Please catch six more!"
);

DECLARE_MESSAGE_NES(0x5071,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME "!\n"
"This ship is sinking!\n"
"Abandon ship!\n"
"Get onto a safe platform!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x5072,
"I'm still missing some Cuccos!\n"
"Please round up five more!"
);

DECLARE_MESSAGE_NES(0x5073,
QUICKTEXT_ENABLE "Don't cause trouble!\n"
"I'll tell Dampé!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x5074,
"Look at this, kid! My beautiful,\n"
"smooth hands are all worn out \n"
"from working. Sob sob..."
);

DECLARE_MESSAGE_NES(0x5075,
"A job where you can make a lot\n"
"of money without much effort...\n"
"The only thing I can think of is\n"
"thievery... Is that a bad idea?"
);

DECLARE_MESSAGE_NES(0x5076,
"I heard that our boss's house is\n"
"just behind this house. He doesn't\n"
"want any of us to know, though."
);

DECLARE_MESSAGE_NES(0x5077,
"Have you seen " COLOR("\x41") "Mr. Dampé" COLOR("\x40") ", who\n"
"lives in the graveyard up ahead?"BOX_BREAK"It's " TIME " right now, so he's\n"
"probably asleep in his hut."BOX_BREAK"Why don't you go out onto the \n"
"field and kill some time?"
);

DECLARE_MESSAGE_NES(0x5078,
"I'm starving!\n"
"Isn't dinner ready yet?\n"
"It's " TIME " already!"
);

DECLARE_MESSAGE_NES(0x5079,
UNSKIPPABLE "This used to be the " COLOR("\x41") "great \n"
"Impa's house" COLOR("\x40") ", but she doesn't\n"
"live here any longer."BOX_BREAK
UNSKIPPABLE "It is now open to all \n"
"villagers. You are free to\n"
"go on in." TEXTID("\x50\x7A")
);

DECLARE_MESSAGE_NES(0x507A,
"This village used to be a \n"
COLOR("\x43") "Shiekah " COLOR("\x40") "village, but the \n"
"great Impa opened it to \n"
"everyone."
);

DECLARE_MESSAGE_NES(0x507B,
"I tell you, I saw him!"BOX_BREAK"I saw the ghostly figure of Dampé\n"
"the gravekeeper sinking into\n"
"his grave. It looked like he was\n"
"holding some kind of " COLOR("\x41") "treasure" COLOR("\x40") "!"
);

DECLARE_MESSAGE_NES(0x507C,
"There he is! It's him!\n"
"He's the one who dropped from\n"
"the sky surrounded by a blue\n"
"light!"BOX_BREAK"Now do you believe me?"
);

DECLARE_MESSAGE_NES(0x507D,
"Nobody believes what I've been\n"
"telling them all these past \n"
"seven years!"
);

DECLARE_MESSAGE_NES(0x507E,
"The fire almost consumed us all!\n"
"But together, we all were able to\n"
"put out the fire! Pretty good\n"
"work, don't you think?"
);

DECLARE_MESSAGE_NES(0x507F,
"Wah hah hah hah hah hah!"BOX_BREAK"Look at this guy! Ever since\n"
"he escaped from Hyrule Castle\n"
"Town, he's become even more\n"
"timid!"
);

DECLARE_MESSAGE_NES(0x5080,
"Wah hah hah hah hah hah!"BOX_BREAK"He must have been seeing things!\n"
"Wah hah hah hah hah hah!"
);

DECLARE_MESSAGE_NES(0x5081,
"Wah hah hah hah hah hah!\n"
"Those are some funny-looking\n"
"clothes, man!"
);

DECLARE_MESSAGE_NES(0x5082,
"Wah hah hah hah hah hah!\n"
"When times are tough, laughter is\n"
"the best medicine!\n"
"That's what my dad always said!"
);

DECLARE_MESSAGE_NES(0x5083,
"Look at me! I'm on top of the \n"
"world! It really bothers me to see\n"
"anyone at a higher level than I\n"
"am! I have to be on top!"
);

DECLARE_MESSAGE_NES(0x5084,
"If I fall asleep up here, I'll\n"
"surely fall down..."
);

DECLARE_MESSAGE_NES(0x5085,
"The windmill draws water up from \n"
"the depth of the well."BOX_BREAK"Now the well is dried up, though.\n"
"Hrrrrm..."
);

DECLARE_MESSAGE_NES(0x5086,
"The lady here is really\n"
"generous. She even took care of\n"
"the carpenters when they were\n"
"here!"
);

DECLARE_MESSAGE_NES(0x5087,
"A long time ago...\n"
"There was a man in this very\n"
"village who had an eye they said\n"
"could see the truth!"BOX_BREAK"Now usually, you have to train\n"
"your mind's eye most strenuously\n"
"to actually see the truth..."BOX_BREAK"But this fella, no, they say he\n"
"had a different way of doing\n"
"things..."BOX_BREAK"His house stood where the well is\n"
"now..."
);

DECLARE_MESSAGE_NES(0x5088,
"Folks around here tell of a\n"
COLOR("\x41") "fabulously rich family " COLOR("\x40") "that once\n"
"lived in one of the houses in this\n"
"village..."BOX_BREAK"But they say that the entire\n"
"family was cursed due to their\n"
"greed!"BOX_BREAK"Who knows what might happen to\n"
"those who are consumed by\n"
"greed..."
);

DECLARE_MESSAGE_NES(0x5089,
"Heh...."BOX_BREAK"What an annoying person,\n"
"interrupting us like this...\n"
"Don't you agree, my love?"
);

DECLARE_MESSAGE_NES(0x508A,
"Hee hee..."BOX_BREAK"Violating our personal space!\n"
"He must have something better\n"
"to do...\n"
"Don't you agree, darling?"
);

DECLARE_MESSAGE_NES(0x508B,
UNSKIPPABLE "Look at him...the man with the\n"
"beard. I think he was fired from\n"
"his job at the ranch..." TEXTID("\x50\x8C")
);

DECLARE_MESSAGE_NES(0x508C,
"He's always just lazing around, \n"
"morning, noon and night. \n"
"He's an awfully carefree guy \n"
"during such hard times."
);

DECLARE_MESSAGE_NES(0x508D,
"That lazy man, he kind of \n"
"reminded me of my little Richard..."BOX_BREAK"What's that? You say you've\n"
"never heard of my little Richard?\n"
"He was such a famous puppy! You \n"
"seriously haven't heard of him?"
);

DECLARE_MESSAGE_NES(0x508E,
"Oh, no! A storm again!!\n"
"You played the Ocarina again,\n"
"didn't you!!\n"
"Grrrrrrrrrrrrrrr!!"
);

DECLARE_MESSAGE_NES(0x508F,
"You caught a Big Poe!\n"
"Sell it at the " COLOR("\x41") "Ghost Shop " COLOR("\x40") "for a\n"
"lot of money!"
);

DECLARE_MESSAGE_NES(0x6000,
QUICKTEXT_ENABLE "Halt! Stay where you are!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6001,
"Hey, newcomer!"
);

DECLARE_MESSAGE_NES(0x6002,
"Hey, newcomer! Wait a second \n"
"and I'll open the gate for you."
);

DECLARE_MESSAGE_NES(0x6003,
QUICKTEXT_ENABLE "Don't take us so lightly!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6004,
UNSKIPPABLE "I've seen your fine work. To get \n"
"past the guards here, you must \n"
"have good thieving skills."BOX_BREAK
UNSKIPPABLE "I used to think that all men, \n"
"besides the great Ganondorf, were \n"
"useless...but now that I've seen\n"
"you, I don't think so anymore!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "The exalted Nabooru" COLOR("\x40") ", our leader, \n"
"put me in charge of this fortress."BOX_BREAK
UNSKIPPABLE "Nabooru is the second-in-command\n"
"to the great Ganondorf, King of \n"
"the Gerudo Thieves."BOX_BREAK
UNSKIPPABLE "Her headquarters are in the " COLOR("\x46") "Spirit\n"
"Temple" COLOR("\x40") ", which is at the end of the\n"
"desert."BOX_BREAK
UNSKIPPABLE "Say, you must want to become \n"
"one of us, eh?\n"
"All right, then!\n"
"You're in from now on!"BOX_BREAK
UNSKIPPABLE "Take this. With it, you will\n"
"have free access to all areas of\n"
"the fortress!" EVENT
);

DECLARE_MESSAGE_NES(0x6005,
"From now on, you're free to come\n"
"and go as you please through the \n"
"gate to the desert."BOX_BREAK"You'll find the " COLOR("\x46") "Spirit Temple" COLOR("\x40") "," COLOR("\x46") " \n"
COLOR("\x40") "where the exalted Nabooru lives,\n"
"out there in the desert."
);

DECLARE_MESSAGE_NES(0x6006,
QUICKTEXT_ENABLE "Stupid Kid!" QUICKTEXT_DISABLE "\n"
"Get in there and keep quiet!"
);

DECLARE_MESSAGE_NES(0x6007,
UNSKIPPABLE "I have no idea where you \n"
"come from, but you must have a\n"
"lot of guts to make it past all\n"
"the guards around here!"BOX_BREAK
UNSKIPPABLE "All of my fellow carpenters\n"
"are imprisoned somewhere in here."BOX_BREAK
UNSKIPPABLE "If you can get us out of here,\n"
"we'll repay the favor somehow!"BOX_BREAK
UNSKIPPABLE "But be careful! There're sure\n"
"to be " COLOR("\x41") "Gerudo " COLOR("\x40") "guards somewhere \n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "around" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "here" QUICKTEXT_DISABLE "...." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Woo!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Watch out!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6008,
QUICKTEXT_ENABLE  SHIFT("\x2E") "The Entrance to the Past" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6009,
QUICKTEXT_ENABLE  SHIFT("\x24") "The Entrance to the Present" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x600A,
QUICKTEXT_ENABLE  SHIFT("\x24") "The Entrance to the Future" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x600B,
SFX("\x38\xEC") "I'll be your guide on your way,\n"
"but coming back, I won't play!\n"
"I'll show you the only way to go,\n"
"so follow me and don't be slow!" FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x600C,
UNSKIPPABLE "Past, present, future..."BOX_BREAK
UNSKIPPABLE "The Master Sword is a ship with \n"
"which you can sail upstream and\n"
"downstream through time's river..."BOX_BREAK
UNSKIPPABLE "The port for that ship is in the\n"
"Temple of Time..."BOX_BREAK
UNSKIPPABLE "To restore the Desert Colossus\n"
"and enter the " COLOR("\x46") "Spirit Temple" COLOR("\x40") ", you\n"
"must travel back through time's\n"
"flow..."BOX_BREAK
UNSKIPPABLE "Listen to this " COLOR("\x46") "Requiem of Spirit" COLOR("\x40") "...\n"
"This melody will lead a child back\n"
"to the desert."
);

DECLARE_MESSAGE_NES(0x600D,
"I am the Gerudo master of \n"
"horseback archery! On top of \n"
"that, I'm the Gerudo master of\n"
"horseback riding!"BOX_BREAK"Want to try horseback archery\n"
"for " COLOR("\x41") "20 Rupees" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x600E,
"You have guts--I like you. \n"
"Follow me."
);

DECLARE_MESSAGE_NES(0x600F,
"It's out of the question if you \n"
"don't have a horse!"
);

DECLARE_MESSAGE_NES(0x6010,
QUICKTEXT_ENABLE "I won't have anything to do with a\n"
"coward like you!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6011,
"Ah, you are not as good as you \n"
"claim. Maybe next time."
);

DECLARE_MESSAGE_NES(0x6012,
"You did well."BOX_BREAK"For today, I admit I lost. \n"
"It seems I have a lot of room for \n"
"improvement."
);

DECLARE_MESSAGE_NES(0x6013,
"This is the Gerudo's " COLOR("\x41") "Training \n"
"Ground" COLOR("\x40") "."BOX_BREAK"Nobody is allowed to enter \n"
"without a membership card."
);

DECLARE_MESSAGE_NES(0x6014,
"This is the Gerudo's " COLOR("\x41") "Training\n"
"Ground" COLOR("\x40") "."BOX_BREAK"Membership card verified."BOX_BREAK"One try for 10 Rupees!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Try\n"
"Don't try" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x6015,
"All right, I'll take your 10 Rupees.\n"
"Give it your best shot!" EVENT
);

DECLARE_MESSAGE_NES(0x6016,
"You don't have enough money!\n"
QUICKTEXT_ENABLE "Come back again." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6017,
UNSKIPPABLE "Hey, rookie!"BOX_BREAK
UNSKIPPABLE "Are you going into the desert?\n"
"I'll open this gate for you, but..."BOX_BREAK
UNSKIPPABLE "You can't cross the desert \n"
"unless you pass the " COLOR("\x41") "two trials" COLOR("\x40") "." TEXTID("\x60\x18")
);

DECLARE_MESSAGE_NES(0x6018,
"The first trial is...the " COLOR("\x41") "River of \n"
"Sand" COLOR("\x40") "! You can't walk across this\n"
"river! After you cross it, follow\n"
"the flags we placed there."BOX_BREAK"The second trial is...the " COLOR("\x41") "Phantom\n"
"Guide" COLOR("\x40") "!"BOX_BREAK"Those without " COLOR("\x41") "eyes that can see\n"
"the truth " COLOR("\x40") "will only find themselves\n"
"returning here."BOX_BREAK"You are going anyway, aren't you?\n"
"I won't stop you...\n"
"Go ahead!" EVENT
);

DECLARE_MESSAGE_NES(0x6019,
UNSKIPPABLE "Why did you come all the\n"
"way down here? What? You were\n"
"just about to ask me the same \n"
"thing?" TEXTID("\x60\x1A")
);

DECLARE_MESSAGE_NES(0x601A,
"Well, now that you're down here, \n"
"you may as well make the best of \n"
"things!"
);

DECLARE_MESSAGE_NES(0x601B,
"Good kid! Thanks!\n"
"I'm sorry that I can't give you\n"
"something as good in return, but...\n"
"take this anyway!"
);

DECLARE_MESSAGE_NES(0x601C,
"601C"
);

DECLARE_MESSAGE_NES(0x601D,
UNSKIPPABLE "I haven't seen you around, kid..."BOX_BREAK"What do you want?\n"
THREE_CHOICE  COLOR("\x42") "To see the temple\n"
"Looking for the Sages\n"
"Nothing, really" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x601E,
"You're just a kid! The temple is\n"
"no place for kids!"
);

DECLARE_MESSAGE_NES(0x601F,
"A Sage? I don't know anyone\n"
"like that."
);

DECLARE_MESSAGE_NES(0x6020,
UNSKIPPABLE "You have nothing to do? What \n"
"good timing! Can you do me a \n"
"favor, kid?"BOX_BREAK
UNSKIPPABLE "Wait a second, I want to ask you\n"
"first--you wouldn't happen to be\n"
"one of Ganondorf's..."BOX_BREAK"followers...would you?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "What if I am?\n"
"I hate Ganondorf!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x6021,
UNSKIPPABLE "Wha-ha-ha!\n"
"Don't try to act cool, kid.\n"
"I was just asking!"BOX_BREAK
UNSKIPPABLE "A kid like you could never be\n"
"one of Ganondorf's followers!"BOX_BREAK
UNSKIPPABLE "Well, let's cut to the chase..." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_NES(0x6022,
UNSKIPPABLE "Uh-huh!"BOX_BREAK
UNSKIPPABLE "You've got guts.\n"
"I think I like you." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_NES(0x6023,
UNSKIPPABLE "First of all, let me introduce \n"
"myself. I'm " COLOR("\x41") "Nabooru " COLOR("\x40") "of the Gerudo.\n"
"I'm a lone wolf thief."BOX_BREAK
UNSKIPPABLE "But don't get me wrong!"BOX_BREAK
UNSKIPPABLE "Though we're both thieves, I'm \n"
"completely different from\n"
"Ganondorf."BOX_BREAK
UNSKIPPABLE "With his followers, he stole\n"
"from women and children, and he \n"
"even killed people!"BOX_BREAK
UNSKIPPABLE "A kid like you may not know this, \n"
"but the Gerudo race consists only\n"
"of women. Only one man is born\n"
"every hundred years..."BOX_BREAK
UNSKIPPABLE "Even though our laws say that\n"
"lone male Gerudo must become\n"
"King of the Gerudo, I'll never\n"
"bow to such an evil man!"BOX_BREAK
UNSKIPPABLE "By the way, what is your name, \n"
"kid?"BOX_BREAK
UNSKIPPABLE  NAME "?!"BOX_BREAK
UNSKIPPABLE "What kind of name is that?\n"
"Well...anyway..." TEXTID("\x60\x24")
);

DECLARE_MESSAGE_NES(0x6024,
UNSKIPPABLE "I want to ask you a favor..."BOX_BREAK
UNSKIPPABLE "Will you go through this tiny hole\n"
"and get a treasure that's inside?"BOX_BREAK
UNSKIPPABLE "The treasure is the " COLOR("\x43") "Silver\n"
"Gauntlets" COLOR("\x40") ". If you equip them, you\n"
"can easily push and pull very \n"
"heavy things!"BOX_BREAK
UNSKIPPABLE "No, no, no, kid! Don't even think\n"
"about taking this treasure for \n"
"yourself!"BOX_BREAK
UNSKIPPABLE "The Silver Gauntlets won't fit a\n"
"little kid like you if you try to \n"
"equip them! I want you to be a \n"
"good boy and give them to me!"BOX_BREAK
UNSKIPPABLE "Ganondorf and his minions are\n"
"using the Spirit Temple as a \n"
"hideout."BOX_BREAK
UNSKIPPABLE "Only the Silver Gauntlets will \n"
"allow me to sneak deep into the\n"
"temple."BOX_BREAK
UNSKIPPABLE "Once there, I'm going to steal all\n"
"the treasure inside and mess up\n"
"their plans!"BOX_BREAK"How about it? Will you do it?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x6025,
UNSKIPPABLE "Thanks, kid!"BOX_BREAK
UNSKIPPABLE "You and I, let's give Ganondorf\n"
"and his followers a big surprise,\n"
"shall we?" TEXTID("\x60\x26")
);

DECLARE_MESSAGE_NES(0x6026,
"If you can successfully get the \n"
COLOR("\x43") "Silver Gauntlets" COLOR("\x40") "..."BOX_BREAK"I'll do something great" COLOR("\x41") " " COLOR("\x40") "for you!"
);

DECLARE_MESSAGE_NES(0x6027,
"Well, what did I expect?\n"
"After all, you're just a kid!"
);

DECLARE_MESSAGE_NES(0x6028,
UNSKIPPABLE "Hey! Where are you taking me?!"
);

DECLARE_MESSAGE_NES(0x6029,
UNSKIPPABLE "Ho ho ho!\n"
"Looks like someone is here, Koume."
);

DECLARE_MESSAGE_NES(0x602A,
UNSKIPPABLE "Hee hee hee!\n"
"Looks like it, Kotake!"
);

DECLARE_MESSAGE_NES(0x602B,
UNSKIPPABLE "What an outrageous fellow he is,\n"
"to intrude so boldly into our \n"
"Temple...\n"
"Ho ho ho!"
);

DECLARE_MESSAGE_NES(0x602C,
UNSKIPPABLE "We should teach this outrageous\n"
"fellow a lesson!\n"
"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x602D,
UNSKIPPABLE "Oh, loyal minion..."
);

DECLARE_MESSAGE_NES(0x602E,
UNSKIPPABLE "Destroy this intruder on \n"
"our behalf!"
);

DECLARE_MESSAGE_NES(0x602F,
UNSKIPPABLE "Great Ganondorf's...Enemy...\n"
"Must die..."
);

DECLARE_MESSAGE_NES(0x6030,
UNSKIPPABLE "Unnnh...\n"
"Where am I...?"
);

DECLARE_MESSAGE_NES(0x6031,
UNSKIPPABLE "Well, well...\n"
"Looks like she's back to normal...\n"
"Koume..."
);

DECLARE_MESSAGE_NES(0x6032,
UNSKIPPABLE "She's just a little girl,\n"
"but she commands a lot of \n"
"respect among the Gerudo, Kotake..."
);

DECLARE_MESSAGE_NES(0x6033,
UNSKIPPABLE "Maybe we should make her work\n"
"for the great Ganondorf for\n"
"a little while longer!\n"
"Ho ho ho!"
);

DECLARE_MESSAGE_NES(0x6034,
UNSKIPPABLE "Then we should brainwash her\n"
"again!\n"
"Hee hee hee!"
);

DECLARE_MESSAGE_NES(0x6035,
UNSKIPPABLE "Kid, let me thank you."BOX_BREAK
UNSKIPPABLE "Heheheh...look what the little\n"
"kid has become in the past seven\n"
"years--a competent swordsman!"
);

DECLARE_MESSAGE_NES(0x6036,
"If only I knew you would become \n"
"such a handsome man..."BOX_BREAK_DELAYED("\x50") "I should have kept the promise\n"
"I made back then..." FADE("\x50")
);

DECLARE_MESSAGE_NES(0x6037,
UNSKIPPABLE "Here, I'll give you " COLOR("\x41") "this" COLOR("\x40") "...\n"
"It's a very important thing to me.\n"
"Let's have a competition later!"
);

DECLARE_MESSAGE_NES(0x6038,
UNSKIPPABLE  NAME "...see you again!"
);

DECLARE_MESSAGE_NES(0x6039,
UNSKIPPABLE "By the way..."BOX_BREAK
UNSKIPPABLE "I really messed up..."BOX_BREAK
UNSKIPPABLE "I was brainwashed by those old\n"
"witches and used by Ganondorf to\n"
"do his evil will..."BOX_BREAK
UNSKIPPABLE "But isn't it funny? That a person\n"
"like me could turn out to be the\n"
COLOR("\x46") "Sage of Spirit" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "And now, I'm going to fight\n"
"them as one of the six Sages!\n"
"Heh heh..."BOX_BREAK
UNSKIPPABLE "I'm going to pay them back for\n"
"what they did to me!"
);

DECLARE_MESSAGE_NES(0x603A,
UNSKIPPABLE "Kid..."BOX_BREAK
UNSKIPPABLE "No...\n"
NAME ", the Hero of Time!"BOX_BREAK
UNSKIPPABLE "Instead of keeping the promise I\n"
"made back then, I give you this\n"
COLOR("\x46") "Medallion" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Take it!"
);

DECLARE_MESSAGE_NES(0x603B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x12") "Yeearggh!" QUICKTEXT_DISABLE " Let me go!!"
);

DECLARE_MESSAGE_NES(0x603C,
UNSKIPPABLE  SHIFT("\x33") "You, " QUICKTEXT_ENABLE "you fiends!" QUICKTEXT_DISABLE "\n"
SHIFT("\x29") "Ganondorf's minions!"
);

DECLARE_MESSAGE_NES(0x603D,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x1E")  NAME "!" QUICKTEXT_DISABLE "\n"
SHIFT("\x20") "Get out of here! Now!"
);

DECLARE_MESSAGE_NES(0x603E,
UNSKIPPABLE  SHIFT("\x0C") "These witches! They're using\n"
SHIFT("\x2B") "black magic on me!"
);

DECLARE_MESSAGE_NES(0x603F,
"Hey, newcomer! This is our \n"
COLOR("\x41") "horseback archery field" COLOR("\x40") "."BOX_BREAK"After a lot of hard practice and\n"
"training, we finally have the skill\n"
"to hit the bull's-eye while riding\n"
"like the wind!"BOX_BREAK"When you finally learn how to ride\n"
"a horse, you should come back\n"
"and try it. It's a dangerous sport,\n"
"but it's fun!"
);

DECLARE_MESSAGE_NES(0x6040,
"Hey newcomer, you have a fine \n"
"horse!"BOX_BREAK"I don't know where you stole \n"
"it from, but..."BOX_BREAK"OK, how about challenging this \n"
COLOR("\x41") "horseback archery" COLOR("\x40") "?"BOX_BREAK"Once the horse starts galloping,\n"
"shoot the targets with your\n"
"arrows. "BOX_BREAK"Let's see how many points you \n"
"can score. You get 20 arrows."BOX_BREAK"If you can score " COLOR("\x41") "1,000 points" COLOR("\x40") ", I\n"
"will give you something good!" EVENT
);

DECLARE_MESSAGE_NES(0x6041,
"Do you want to try for " COLOR("\x41") "20 Rupees" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x6042,
"Hey, rookie!\n"
"You're looking good!\n"
"Show me your skill again!"BOX_BREAK"You should set a new goal of\n"
COLOR("\x41") "1,500 points" COLOR("\x40") " and try again!" EVENT
);

DECLARE_MESSAGE_NES(0x6043,
"What? Do you want to try again?\n"
"Looks like you have some\n"
"potential!" EVENT
);

DECLARE_MESSAGE_NES(0x6044,
"I'll be darned! You are the ultimate\n"
"master!"BOX_BREAK"I will give you an item suitable\n"
"for the master."BOX_BREAK"This quiver is very important to \n"
"me. I want you to have it.\n"
"Take good care of it, OK?"
);

DECLARE_MESSAGE_NES(0x6045,
POINTS " points...Hmm...\n"
"Wha-ha-ha! You have plenty of \n"
"room for improvement!" EVENT
);

DECLARE_MESSAGE_NES(0x6046,
"Fantastic!\n"
"You are a true master!"BOX_BREAK"I will give this to you.\n"
"Keep improving yourself!"
);

DECLARE_MESSAGE_NES(0x6047,
POINTS " points...\n"
"Quite impressive!" EVENT
);

DECLARE_MESSAGE_NES(0x6048,
"Look at that stupid kid!\n"
"He came on his own to offer \n"
"himself as a sacrifice to the\n"
"great Ganondorf..." FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x6049,
SHIFT("\x05") "With my flame, I will burn him to\n"
SHIFT("\x46") "the bone!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x604A,
"With my frost, I will freeze him to\n"
SHIFT("\x46") "his soul!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x604B,
SHIFT("\x1C") "Shoot, what a fresh kid!\n"
SHIFT("\x15") "This time, we'll get serious,\n"
SHIFT("\x3C") "right Kotake?" FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x604C,
SHIFT("\x4B") "What?"BOX_BREAK_DELAYED("\x14")  SHIFT("\x0A") "Hey, Koume, what is that above\n"
SHIFT("\x41") "your head?" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x604D,
SHIFT("\x0B") "I don't know, but you have one\n"
SHIFT("\x14") "over your head too, Kotake!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x604E,
SHIFT("\x14") "But I'm only 400 years old!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x604F,
SHIFT("\x14") "And I'm just 380 years old!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x6050,
QUICKTEXT_ENABLE  SHIFT("\x0C") "We're twins! Don't try to lie\n"
SHIFT("\x35") "about your age!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_NES(0x6051,
QUICKTEXT_ENABLE  SHIFT("\x06") "You must have gone senile!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_NES(0x6052,
QUICKTEXT_ENABLE  SHIFT("\x1E") "Who are you calling senile?!\n"
SHIFT("\x16") "Is that how you treat your\n"
SHIFT("\x3D") "older sister?" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x6053,
QUICKTEXT_ENABLE  SHIFT("\x36") "We are twins! \n"
SHIFT("\x26") "How can you be older?" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x6054,
QUICKTEXT_ENABLE  SHIFT("\x3F") "Keeeyaaah!!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE  SHIFT("\x20") "How heartless you are!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_NES(0x6055,
QUICKTEXT_ENABLE  SHIFT("\x12") "How can you be so ungrateful?" QUICKTEXT_DISABLE  FADE("\x0A")
);

DECLARE_MESSAGE_NES(0x6056,
QUICKTEXT_ENABLE  SHIFT("\x35") "You're heartless!!" QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_NES(0x6057,
QUICKTEXT_ENABLE  SHIFT("\x33") "You ungrateful..." QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_NES(0x6058,
QUICKTEXT_ENABLE  SHIFT("\x21") "I'll come back to haunt you!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_NES(0x6059,
QUICKTEXT_ENABLE "OK, let's get serious now, Kotake!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x605A,
SHIFT("\x37")  QUICKTEXT_ENABLE "Oh, OK, Koume." QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x14")  SHIFT("\x30")  QUICKTEXT_ENABLE "Kotake" QUICKTEXT_DISABLE " and " QUICKTEXT_ENABLE "Koume's" QUICKTEXT_DISABLE "\n"
SHIFT("\x1C")  QUICKTEXT_ENABLE "Double" QUICKTEXT_DISABLE " Dynamite " QUICKTEXT_ENABLE "Attack!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_NES(0x605B,
UNSKIPPABLE "Did you come here to save me? \n"
"Oh, that's just swell! I'm " COLOR("\x41") "Ichiro\n"
"the carpenter" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "We were really interested in \n"
"joining their all-female group, but \n"
"they locked us up like this just\n"
"because we're men!"BOX_BREAK
UNSKIPPABLE "We don't care about the Gerudo \n"
"anymore! They're so rude!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Three of my fellows" COLOR("\x40") " have also \n"
"been captured, so please help \n"
"them escape, too!"
);

DECLARE_MESSAGE_NES(0x605C,
UNSKIPPABLE "You're a cute kid! Thank you for\n"
"coming to save me! I'm " COLOR("\x41") "Jiro, the \n"
"carpenter" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "These women are so scary! I'd\n"
"rather work as a carpenter than\n"
"join them!"BOX_BREAK
UNSKIPPABLE "I can't wait to say good-bye to\n"
"this place! " COLOR("\x41") "Two of my buddies " COLOR("\x40") "\n"
"are still being held prisoner. Will\n"
"you please get them out, too?"
);

DECLARE_MESSAGE_NES(0x605D,
UNSKIPPABLE "Thanks, boy! You're fantastic!\n"
"I'm " COLOR("\x41") "Sabooro, the carpenter" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Have you seen our boss, boy?\n"
"He's probably worried about me!\n"
"I have to get back to him \n"
QUICKTEXT_ENABLE "immediately!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "One more of our workers " COLOR("\x40") "is still\n"
"a prisoner. Please save him!"
);

DECLARE_MESSAGE_NES(0x605E,
UNSKIPPABLE "I was afraid you were going to \n"
"forget about me! Now I'm free!\n"
"Thanks! I'm " COLOR("\x41") "Shiro the carpenter" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "For rescuing me, I'll tell you\n"
"something interesting about the\n"
"desert that I overheard the\n"
"Gerudos talking about."BOX_BREAK
UNSKIPPABLE "They said, \"In order to cross the\n"
"Haunted Wasteland, you'll need the\n"
"'" COLOR("\x41") "eye of truth" COLOR("\x40") ".' The Colossus is on\n"
"the far side of the wasteland...\""BOX_BREAK
UNSKIPPABLE "OK, now I'm going back to my\n"
COLOR("\x41") "tent near Gerudo Valley" COLOR("\x40") ", so, \n"
"drop by sometime. You may find \n"
"something helpful there! Byeee!"
);

DECLARE_MESSAGE_NES(0x605F,
"The leader of the gang of thieves\n"
"is " COLOR("\x41") "Nabooru" COLOR("\x40") ". She is experimenting \n"
"in brainwashing many people at \n"
"the ruins in the desert."
);

DECLARE_MESSAGE_NES(0x6060,
"Oh, it was Ganondorf the Evil\n"
"King who was behind the gang of \n"
"thieves..."
);

DECLARE_MESSAGE_NES(0x6061,
UNSKIPPABLE "When " COLOR("\x41") "Nabooru" COLOR("\x40") " was a lone wolf \n"
"thief, she never stole from \n"
"the weak, but..." TEXTID("\x60\x62")
);

DECLARE_MESSAGE_NES(0x6062,
"Now, Nabooru's gang of thieves \n"
"stands for cruelty and brutality.\n"
"She claims to be a chivalrous \n"
"robber, but...no way!"
);

DECLARE_MESSAGE_NES(0x6063,
"Like I suspected, Nabooru was \n"
"brainwashed by Ganondorf's \n"
"followers..."
);

DECLARE_MESSAGE_NES(0x6064,
UNSKIPPABLE "In Gerudo society, those who have\n"
"great skill in horseback riding and\n"
"archery are well respected." TEXTID("\x60\x65")
);

DECLARE_MESSAGE_NES(0x6065,
"How about trying horseback \n"
"archery at the Gerudo's Fortress?"BOX_BREAK"If you have a horse, a Gerudo \n"
"from the fortress will set up \n"
"your challenge."
);

DECLARE_MESSAGE_NES(0x6066,
"You did so great, young man!"
);

DECLARE_MESSAGE_NES(0x6067,
"Building a bridge over the valley\n"
"is a simple task for four\n"
"carpenters."
);

DECLARE_MESSAGE_NES(0x6068,
"Without the old witches, the gang\n"
"of thieves isn't all that scary!"
);

DECLARE_MESSAGE_NES(0x6069,
"The " COLOR("\x41") "Gerudo's Fortress " COLOR("\x40") "is located \n"
"beyond this gate. A kid like you \n"
"has no business there."
);

DECLARE_MESSAGE_NES(0x606A,
UNSKIPPABLE  SFX("\x68\x55") "I am a " COLOR("\x41") "master craftsman" COLOR("\x40") ". Those\n"
"Gerudo thieves...they broke the\n"
"bridge."BOX_BREAK
UNSKIPPABLE "I want to fix it, but all of my \n"
"workers are gone!"BOX_BREAK
UNSKIPPABLE "They said working as carpenters\n"
"isn't cool, and they went to the\n"
COLOR("\x41") "Gerudo's Fortress " COLOR("\x40") "to become \n"
"thieves..." TEXTID("\x60\x6B")
);

DECLARE_MESSAGE_NES(0x606B,
"Hey, you! If you're going to the \n"
"fortress, would you mind finding\n"
"out what my workers are doing\n"
"over there?"
);

DECLARE_MESSAGE_NES(0x606C,
"Hey, I heard you saved my men.\n"
"When they returned, we built this\n"
"bridge."BOX_BREAK"Look at this! \n"
"Isn't it a fine bridge?"BOX_BREAK"They may be wimpy carpenters, \n"
"but once they all got together,\n"
"they got the job done."
);

DECLARE_MESSAGE_NES(0x606D,
UNSKIPPABLE  SFX("\x68\x55") "Hey, that saw! It's mine!"BOX_BREAK
UNSKIPPABLE "But... I thought I left that saw\n"
"with my old lady... Oh well..." TEXTID("\x60\x6E")
);

DECLARE_MESSAGE_NES(0x606E,
"My Biggoron tool broke, so I was\n"
"going to Goron City to get it\n"
"repaired."BOX_BREAK"Your coming here is great timing.\n"
"Will you give me my saw?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x606F,
SHIFT("\x47")  QUICKTEXT_ENABLE "What?!\n"
SHIFT("\x14") "You're a dirty, rotten thief!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x6070,
"This is the Gerudo's " COLOR("\x41") "Training \n"
"Ground" COLOR("\x40") ". Unqualified persons are \n"
"not allowed."
);

DECLARE_MESSAGE_NES(0x6071,
"This is the Gerudo's" COLOR("\x41") " Training\n"
"Ground" COLOR("\x40") ". You're qualified...\n"
"C'mon in and hone your skills\n"
"as much as you want." EVENT
);

DECLARE_MESSAGE_NES(0x6072,
"This is the Gerudo's" COLOR("\x41") " Training \n"
"Ground" COLOR("\x40") ". Even though you're \n"
"qualified, don't hog all the \n"
"treasure here for yourself!"
);

DECLARE_MESSAGE_NES(0x6073,
"6073"
);

DECLARE_MESSAGE_NES(0x6074,
"Oh, that's too bad."BOX_BREAK"The mark that will lead you to the\n"
"Spirit Temple is the " COLOR("\x41") "flag on\n"
"the left " COLOR("\x40") "outside the shop."BOX_BREAK"If you change your mind, please\n"
"come back again!"
);

DECLARE_MESSAGE_NES(0x6075,
"Ohh, not enough Rupees.\n"
"No discounts, even a Rupee."
);

DECLARE_MESSAGE_NES(0x6076,
"Heh heh.\n"
"You're already in the middle of \n"
"something, aren't you."BOX_BREAK"If you want to challenge me, you\n"
"have to come here with a clear\n"
"mind. No other distractions!"
);

DECLARE_MESSAGE_NES(0x6077,
SHIFT("\x41") "Well Come!"BOX_BREAK"I am selling stuff, strange and \n"
"rare, from all over the world to \n"
"everybody.\n"
"Today's special is..."BOX_BREAK"A dangerous, running object! \n"
"Terrifying! \n"
"I won't tell you what it is until \n"
"I see the money...."BOX_BREAK"How about " COLOR("\x41") "200 Rupees" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Buy\n"
"Don't buy" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x6078,
"Thank you very much!"BOX_BREAK"What I'm selling is..." TEXT_SPEED("\x02")  COLOR("\x41") "Bombchu" COLOR("\x40") "!" TEXT_SPEED("\x00") BOX_BREAK"The mark that will lead you to\n"
"the Spirit Temple is the " COLOR("\x41") "flag on\n"
"the left " COLOR("\x40") "outside the shop.\n"
"Be seeing you!"
);

DECLARE_MESSAGE_NES(0x6079,
UNSKIPPABLE "Hey, what's up, " NAME "?\n"
"Surprised to see me?"BOX_BREAK
UNSKIPPABLE "A long time in this world is\n"
"almost nothing to you, is it?\n"
"How mysterious!"BOX_BREAK
UNSKIPPABLE "Even I thought that the tales of a\n"
"boy who could travel back and\n"
"forth through time was merely a\n"
"legend."BOX_BREAK
UNSKIPPABLE  NAME ", you have fully \n"
"matured as an adult." TEXTID("\x60\x7A")
);

DECLARE_MESSAGE_NES(0x607A,
"From now on, the future of all the\n"
"people in Hyrule is on your \n"
"shoulders."BOX_BREAK"Maybe it's not my time anymore. \n"
"Here is my last advice."BOX_BREAK"Two witches inhabit this temple. In \n"
"order to destroy them, " COLOR("\x41") "turn their \n"
"own magic power against them" COLOR("\x40") ".\n"
"Hoo hoot!" TEXTID("\x60\x7B")
);

DECLARE_MESSAGE_NES(0x607B,
"Do you want to hear what I said\n"
"again?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x607C,
UNSKIPPABLE "I will continue to watch you...\n"
"Hoo hoo hoo hoot!"
);

DECLARE_MESSAGE_NES(0x607D,
UNSKIPPABLE "I'm the wandering running man!\n"
"I've run all over this land in\n"
"search of true competitive spirit."BOX_BREAK
UNSKIPPABLE "I beat all my challengers, man and\n"
"beast."BOX_BREAK
UNSKIPPABLE "You're an athletic guy, and you\n"
"look like you might have a true\n"
"killer instinct, too."BOX_BREAK
UNSKIPPABLE "Now that the bridge over Gerudo\n"
"Valley is complete, I'm looking for\n"
"a challenger to have a \n"
"commemorative race against." TEXTID("\x60\x7E")
);

DECLARE_MESSAGE_NES(0x607E,
"The best time to go from here to \n"
"the " COLOR("\x42") "bridge in the Lost Woods " COLOR("\x40") "was\n"
COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ".  That's my record."BOX_BREAK"Will you challenge my record?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x607F,
"Excellent!\n"
"Then..."BOX_BREAK"You go first.\n"
"I'll give you a headstart."BOX_BREAK"Now! " TEXT_SPEED("\x02") "Go ahead." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_NES(0x6080,
"Heh heh heh.\n"
"You'll never discover your\n"
"killer instinct with that\n"
"kind of attitude."
);

DECLARE_MESSAGE_NES(0x6081,
"Well, not perfect, but you\n"
"have some guts! Unfortunately,\n"
"you never can beat me. Your\n"
"record is a thing of the past."BOX_BREAK"Your time was " COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ", wasn't it?\n"
"That was close, but I beat you\n"
"by one second!" EVENT
);

DECLARE_MESSAGE_NES(0x6082,
"Heh heh heh.\n"
"Please. " TEXT_SPEED("\x02") "Go ahead." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_NES(0x6083,
"Oh, looks like you quit the race.\n"
"Heh heh heh. I bet you had almost \n"
"rediscovered your killer instinct!" FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x6084,
"Heh heh.\n"
"You don't have enough killer\n"
"instinct yet."BOX_BREAK"Just train harder.\n"
QUICKTEXT_ENABLE "Good-bye, then!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x6085,
TEXT_SPEED("\x01")  QUICKTEXT_ENABLE "Huff..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "puff..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "huff..." QUICKTEXT_DISABLE  TEXT_SPEED("\x00") BOX_BREAK"Huff...huff...whew!\n"
"You did quite well!"BOX_BREAK"But you couldn't beat me!\n"
"Your time was " COLOR("\x41")  MARATHON_TIME  COLOR("\x40") ", but I\n"
"just beat you by one second!"BOX_BREAK"Huff...huff... \n"
"You'll have to challenge me\n"
"again sometime!"BOX_BREAK"Huff...huff...\n"
QUICKTEXT_ENABLE "Good-bye, then!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x6086,
"I'm the wandering running man!\n"
"I've run all over this land in \n"
"search of competitors who have a\n"
"true killer instinct!"BOX_BREAK"I came here to run through the \n"
"Haunted Wasteland, but it doesn't\n"
"look like good timing for that."BOX_BREAK"Though I want to go back to \n"
"Hyrule Field, the bridge is...well,\n"
"you can see it from here. So I'm\n"
"stuck here, inside this tent."BOX_BREAK"I don't think I can accept your\n"
"challenge right now.\n"
"Heh heh!"
);

DECLARE_MESSAGE_NES(0x6087,
"6087"
);

DECLARE_MESSAGE_NES(0x6088,
"6088"
);

DECLARE_MESSAGE_NES(0x6089,
"6089"
);

DECLARE_MESSAGE_NES(0x608A,
"608A"
);

DECLARE_MESSAGE_NES(0x608B,
"608B"
);

DECLARE_MESSAGE_NES(0x608C,
"608C"
);

DECLARE_MESSAGE_NES(0x608D,
"608D"
);

DECLARE_MESSAGE_NES(0x608E,
"608E"
);

DECLARE_MESSAGE_NES(0x608F,
"608F"
);

DECLARE_MESSAGE_NES(0x7000,
"I can't catch that Cucco!"
);

DECLARE_MESSAGE_NES(0x7001,
"Huff huff! \n"
"I'm late! I'm late!\n"
"For a very important date!"
);

DECLARE_MESSAGE_NES(0x7002,
"Welcome to Hyrule Castle Town.\n"
"It's a peaceful, prosperous town."
);

DECLARE_MESSAGE_NES(0x7003,
"Kids shouldn't be wandering around\n"
"town at nighttime! Stay indoors\n"
"until morning!"
);

DECLARE_MESSAGE_NES(0x7004,
"Man, I am SO bored...\n"
"Things would sure be more\n"
"interesting if there were more...\n"
"troubles in the world..."BOX_BREAK"Hey, that's just between you and\n"
"me, OK?"BOX_BREAK"Anyway, maybe we can let off \n"
"some steam by breaking these \n"
"jars."BOX_BREAK"Stand near a jar and press " COLOR("\x43") "[A]" COLOR("\x40") " to\n"
"lift it. Press " COLOR("\x43") "[A]" COLOR("\x40") " again to toss it!"
);

DECLARE_MESSAGE_NES(0x7005,
UNSKIPPABLE "That's great!"BOX_BREAK
UNSKIPPABLE "I forgot to tell you..." EVENT
);

DECLARE_MESSAGE_NES(0x7006,
QUICKTEXT_ENABLE "There's a lot going on in the \n"
"castle right now. I can't allow\n"
"even a dog to get into the \n"
"castle!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x7007,
UNSKIPPABLE "Unnngh...are you the boy from \n"
"the forest...?"BOX_BREAK
UNSKIPPABLE "I-I-I've finally met you...\n"
"I-I-I have something to t-t-tell\n"
"you..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Ganondorf" COLOR("\x40") ", the Gerudo King of\n"
"Thieves, betrayed our King..."BOX_BREAK
UNSKIPPABLE "Zelda's nanny, " COLOR("\x41") "Impa" COLOR("\x40") ", sensed danger\n"
"and escaped from the castle with\n"
"our Princess..."BOX_BREAK
UNSKIPPABLE "I tried to stop Ganondorf's men\n"
"from chasing them...but..."BOX_BREAK
UNSKIPPABLE "The Princess was...waiting for a\n"
"boy from the forest...that's you...\n"
"She wanted to give " COLOR("\x41") "something " COLOR("\x40") "to\n"
"the boy..."BOX_BREAK
UNSKIPPABLE "If you received it from the \n"
"Princess, " TEXT_SPEED("\x03")  QUICKTEXT_ENABLE "hurry" QUICKTEXT_DISABLE "..." QUICKTEXT_ENABLE "to the" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE  COLOR("\x44") "Tem" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "ple" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "of" QUICKTEXT_DISABLE "\n"
"Time" COLOR("\x40") "...." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_NES(0x7008,
"He's not moving anymore...."
);

DECLARE_MESSAGE_NES(0x7009,
UNSKIPPABLE "Can you see the man with the \n"
"evil eyes?"BOX_BREAK
UNSKIPPABLE "That is " COLOR("\x41") "Ganondorf" COLOR("\x40") ", the leader of \n"
"the Gerudos. They hail from the \n"
"desert far to the west."BOX_BREAK
UNSKIPPABLE "Though he swears allegiance to my \n"
"father, I am sure he is not \n"
"sincere."BOX_BREAK
UNSKIPPABLE "The dark clouds that covered \n"
"Hyrule in my dream...\n"
"They must symbolize that man!"
);

DECLARE_MESSAGE_NES(0x700A,
SHIFT("\x0E") "Geh heh heh! Excellent work!"BOX_BREAK_DELAYED("\x3C")  SHIFT("\x08") "As I thought, you held the keys\n"
SHIFT("\x26") "to the Door of Time!"BOX_BREAK_DELAYED("\x5A")  SHIFT("\x05") "You have led me to the gates of\n"
SHIFT("\x2D") "the Sacred Realm..."BOX_BREAK_DELAYED("\x50")  SHIFT("\x10") "Yes, I owe it all to you, kid!" FADE("\x32")
);

DECLARE_MESSAGE_NES(0x700B,
UNSKIPPABLE "Please! If you don't hurry,\n"
"he'll be gone!" EVENT
);

DECLARE_MESSAGE_NES(0x700C,
"Please...with " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Please sell me the " COLOR("\x41") "contents" COLOR("\x40") " of a\n"
"bottle...\n"
"Please...with " COLOR("\x46") "[C]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x700D,
"What a strange shop! \n"
"I wonder when it'll be open for\n"
"business. I read the sign there, \n"
"but it still seems weird!"
);

DECLARE_MESSAGE_NES(0x700E,
"It seems like it's taking forever\n"
"for dawn to come..."BOX_BREAK"The view of Hyrule Castle in \n"
"the morning sun is so fantastic!"
);

DECLARE_MESSAGE_NES(0x700F,
"To save the forest girl, you need\n"
COLOR("\x41") "another skill" COLOR("\x40") "... \n"
"Head to Kakariko Village!"
);

DECLARE_MESSAGE_NES(0x7010,
"It looks like you have the\n"
"skills you need... \n"
"The " COLOR("\x42") "forest girl" COLOR("\x40") " is waiting for your\n"
"help...."
);

DECLARE_MESSAGE_NES(0x7011,
"If you want potions, you'd better \n"
"bring an empty bottle. Understand,\n"
"young man?" PERSISTENT
);

DECLARE_MESSAGE_NES(0x7012,
"I'm sorry, but this is just a model. \n"
"Because of the crisis in Goron \n"
"City, we haven't received any \n"
"shipments lately and we're out." PERSISTENT
);

DECLARE_MESSAGE_NES(0x7013,
"If you plan on scaling Death\n"
"Mountain, buy a " COLOR("\x44") "Hylian Shield" COLOR("\x40") ".\n"
"You can defend yourself against\n"
"falling rocks with that shield."BOX_BREAK"But it might be a little bit \n"
"big for a kid...." PERSISTENT
);

DECLARE_MESSAGE_NES(0x7014,
"I'm not dancing, you know...\n"
"My back itches! \n"
"Ooh! Aaah! Ooh!"
);

DECLARE_MESSAGE_NES(0x7015,
"They say we " COLOR("\x44") "Hylians " COLOR("\x40") "have big ears\n"
"in order to hear the voices of the \n"
"gods...but I've never heard them!"
);

DECLARE_MESSAGE_NES(0x7016,
UNSKIPPABLE "Kid, have you been to \n"
COLOR("\x46") "Lon Lon Ranch" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Their milk is delicious!\n"
"There are many horses there, and\n"
"the young daughter of the ranch\n"
"owner is cute!" TEXTID("\x70\x17")
);

DECLARE_MESSAGE_NES(0x7017,
"To get to " COLOR("\x46") "Lon Lon Ranch" COLOR("\x40") ", after\n"
"you leave town, head due south\n"
"across the field. You should visit\n"
"the ranch at least once!"
);

DECLARE_MESSAGE_NES(0x7018,
UNSKIPPABLE "I wanted to see " COLOR("\x41") "Princess Zelda" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "I avoided the guards..."BOX_BREAK
UNSKIPPABLE "Swam through the moat..."BOX_BREAK
UNSKIPPABLE "I was almost there when they\n"
"caught me!" TEXTID("\x70\x19")
);

DECLARE_MESSAGE_NES(0x7019,
"I found a " COLOR("\x41") "small drain hole " COLOR("\x40") "on the\n"
"right side of the castle that I\n"
"thought I could sneak into, but I\n"
"got stuck there."
);

DECLARE_MESSAGE_NES(0x701A,
SHIFT("\x37") "Ahem! " QUICKTEXT_ENABLE "Hrrrm!" QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x05") "This beard is my pride and joy!\n"
SHIFT("\x07") "Doesn't it look luxuriant, kid?!"
);

DECLARE_MESSAGE_NES(0x701B,
UNSKIPPABLE  SHIFT("\x37") "Ahem! " QUICKTEXT_ENABLE "Hrrrm!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x05") "This beard is my pride and joy!\n"
SHIFT("\x07") "Doesn't it look luxuriant, kid?!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x51") "What?!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "You're looking for the guy from\n"
"Lon Lon Ranch?"BOX_BREAK
UNSKIPPABLE "Hmm, maybe..." TEXTID("\x70\x1C")
);

DECLARE_MESSAGE_NES(0x701C,
"I saw a " COLOR("\x41") "guy with a shabby-looking\n"
"beard " COLOR("\x40") "delivering some boxes to \n"
"the castle."
);

DECLARE_MESSAGE_NES(0x701D,
UNSKIPPABLE "Do you know about the " COLOR("\x44") "Temple \n"
"of Time " COLOR("\x40") "that we have in the \n"
"northeast part of town?" TEXTID("\x70\x1E")
);

DECLARE_MESSAGE_NES(0x701E,
"Legends say that the Temple of\n"
"Time is the entrance to the \n"
"Sacred Realm..."BOX_BREAK"Did you know that?"
);

DECLARE_MESSAGE_NES(0x701F,
UNSKIPPABLE "Wha-ha-ha! What a crazy guy!"BOX_BREAK
UNSKIPPABLE "Can you believe this guy was \n"
"crazy enough to try to sneak into\n"
"the castle to see " COLOR("\x41") "Princess Zelda" COLOR("\x40") "?" TEXTID("\x70\x20")
);

DECLARE_MESSAGE_NES(0x7020,
"All because of this idiot, they've \n"
"tightened security at the castle.\n"
"Wha-ha-hah!"
);

DECLARE_MESSAGE_NES(0x7021,
UNSKIPPABLE "I made a lot of money!"BOX_BREAK
UNSKIPPABLE "Maybe I should go look for\n"
"more things to sell!" TEXTID("\x70\x22")
);

DECLARE_MESSAGE_NES(0x7022,
"I know! I should go to " COLOR("\x43") "Lake Hylia" COLOR("\x40") "!\n"
"Many things float down the river\n"
"and end up there!\n"
"Hah hah!"
);

DECLARE_MESSAGE_NES(0x7023,
UNSKIPPABLE "Hey, forest boy! This is the " COLOR("\x44") "city\n"
"of Hyrule" COLOR("\x40") "! Take your time and\n"
"enjoy the sights!" TEXTID("\x70\x24")
);

DECLARE_MESSAGE_NES(0x7024,
"If you came here to see " COLOR("\x44") "Hyrule\n"
"Castle" COLOR("\x40") ", take the street on your\n"
"right."BOX_BREAK"If you want to see the " COLOR("\x43") "back \n"
"alleys" COLOR("\x40") " of the town, take the\n"
"street to the left."
);

DECLARE_MESSAGE_NES(0x7025,
"Ohh..."BOX_BREAK"You are...so handsome..."BOX_BREAK"Just like the King of Hyrule..."BOX_BREAK"Hee hee..."
);

DECLARE_MESSAGE_NES(0x7026,
"Ohh..."BOX_BREAK"You are..."BOX_BREAK"more beautiful..."BOX_BREAK"than Princess Zelda..."BOX_BREAK"Ohh..."
);

DECLARE_MESSAGE_NES(0x7027,
UNSKIPPABLE "Have you heard the legend of the\n"
"\"Shadow Folk\"?"BOX_BREAK
UNSKIPPABLE "They are the " COLOR("\x43") "Sheikah" COLOR("\x40") "...the shadows\n"
"of the Hylians."BOX_BREAK
UNSKIPPABLE "They say they swore allegiance to\n"
"the King of Hyrule and guarded\n"
"the Royal Family."BOX_BREAK
UNSKIPPABLE "But with the long peace, no one\n"
"has seen a Sheikah around here \n"
"for a long time."BOX_BREAK
UNSKIPPABLE "However..." TEXTID("\x70\x28")
);

DECLARE_MESSAGE_NES(0x7028,
"I heard there is one " COLOR("\x43") "Sheikah \n"
COLOR("\x40") "woman living in the castle..."
);

DECLARE_MESSAGE_NES(0x7029,
"So you say you want to see\n"
COLOR("\x41") "Princess Zelda" COLOR("\x40") ", eh?"BOX_BREAK"You probably heard about her in\n"
"town and decided you had to meet\n"
"her... Well..."BOX_BREAK
QUICKTEXT_ENABLE "Go home!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Get out of here!" QUICKTEXT_DISABLE "\n"
"The Princess would never grant an\n"
"audience to the likes of you!"
);

DECLARE_MESSAGE_NES(0x702A,
"Z Z Z Z Z...."BOX_BREAK"Mumble mumble..."BOX_BREAK"Welcome...our ranch is so fun..."BOX_BREAK"C'mon and look around..."
);

DECLARE_MESSAGE_NES(0x702B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x2D") "What in tarnation?" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Can't a person get a little shut-\n"
"eye around here?"
);

DECLARE_MESSAGE_NES(0x702C,
UNSKIPPABLE "Hello, and who might you be?"BOX_BREAK
UNSKIPPABLE "Yep, I'm " COLOR("\x41") "Talon" COLOR("\x40") ", the owner of Lon \n"
"Lon Ranch."BOX_BREAK
UNSKIPPABLE "I went to the castle to deliver\n"
"some milk, but I sat down here to\n"
"rest, and I guess I fell asleep..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4C")  SFX("\x68\x52") "What?!\n"
"Malon was looking for me?\n"
"I'm gonna catch it from her now!"BOX_BREAK
UNSKIPPABLE "I messed up bad, leaving Malon\n"
"behind to wait for me!"BOX_BREAK
UNSKIPPABLE "She's really gonna let me have it!" EVENT
);

DECLARE_MESSAGE_NES(0x702D,
QUICKTEXT_ENABLE  SHIFT("\x37") "Hey you! Stop!\n"
SHIFT("\x28") "You, kid, over there!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x702E,
UNSKIPPABLE  SHIFT("\x5F") "!"BOX_BREAK_DELAYED("\x0A")  UNSKIPPABLE  SHIFT("\x4E")  QUICKTEXT_ENABLE "Who?!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x702F,
UNSKIPPABLE  SHIFT("\x3A") "Who are you?"BOX_BREAK
UNSKIPPABLE "How did you get past the guards?" EVENT
);

DECLARE_MESSAGE_NES(0x7030,
"Do you have it? \n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7031,
"Well, that's odd...\n"
"I thought you might be the one\n"
"from my dream...\n"
"You really don't have it?"BOX_BREAK"Tell me the truth..." EVENT
);

DECLARE_MESSAGE_NES(0x7032,
UNSKIPPABLE  SHIFT("\x2D") "Just as I thought!" EVENT
);

DECLARE_MESSAGE_NES(0x7033,
"Please keep this a secret from\n"
"everyone...\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7034,
"C'mon...don't be a blabber-mouth!" EVENT
);

DECLARE_MESSAGE_NES(0x7035,
UNSKIPPABLE "The legend goes like this..." EVENT
);

DECLARE_MESSAGE_NES(0x7036,
UNSKIPPABLE  SHIFT("\x12") "The three goddesses hid the\n"
SHIFT("\x07")  COLOR("\x41") "Triforce " COLOR("\x40") "containing the power of\n"
SHIFT("\x0D") "the gods somewhere in Hyrule."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x45") "The power\n"
SHIFT("\x03") "to grant the wish of the one who\n"
SHIFT("\x0A") "holds the Triforce in his hands."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x03") "If someone with a righteous heart\n"
SHIFT("\x07") "makes a wish, it will lead Hyrule\n"
SHIFT("\x09") "to a golden age of prosperity...."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x06") "If someone with an evil mind has\n"
SHIFT("\x0A") "his wish granted, the world will\n"
SHIFT("\x02") "be consumed by evil...That is what\n"
SHIFT("\x35") "has been told...."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x16") "So, the ancient Sages built\n"
SHIFT("\x02") "the " COLOR("\x44") "Temple of Time" COLOR("\x40") " to protect the\n"
SHIFT("\x20") "Triforce from evil ones." FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x7037,
"That's right... The Temple of Time\n"
"is the entrance through which you\n"
"can enter the Sacred Realm from\n"
"our world."BOX_BREAK"But the entrance is sealed with\n"
"a stone wall called the \n"
COLOR("\x44") "Door of Time" COLOR("\x40") "."BOX_BREAK"And, in order to open the door,\n"
"it is said that you need to collect\n"
"three " COLOR("\x41") "Spiritual Stones" COLOR("\x40") "."BOX_BREAK"And another thing you need...is\n"
"the treasure that the Royal Family\n"
"keeps along with this legend..." EVENT
);

DECLARE_MESSAGE_NES(0x7038,
"Oh, I'm sorry. \n"
"I'm not very good at storytelling..." EVENT
);

DECLARE_MESSAGE_NES(0x7039,
UNSKIPPABLE  QUICKTEXT_ENABLE "What happened?" QUICKTEXT_DISABLE " Did he see you?"BOX_BREAK
UNSKIPPABLE "Don't worry."BOX_BREAK
UNSKIPPABLE "He doesn't have any idea what\n"
"we're planning...yet!" EVENT
);

DECLARE_MESSAGE_NES(0x703A,
UNSKIPPABLE "Please!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"I don't believe you." COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x703B,
UNSKIPPABLE  SHIFT("\x42") "Thank you!" EVENT
);

DECLARE_MESSAGE_NES(0x703C,
"My attendant will guide you out of\n"
"the castle. Don't be afraid to talk\n"
"to her."
);

DECLARE_MESSAGE_NES(0x703D,
"The Spiritual Stone...\n"
"You finally found it!"BOX_BREAK"It is said that the races that hold\n"
"the Spiritual Stones open their\n"
"minds only to one who knows the\n"
COLOR("\x43") "melody of the Royal Family" COLOR("\x40") "."BOX_BREAK"But you already know that, don't\n"
"you?"
);

DECLARE_MESSAGE_NES(0x703E,
"Hey, have you heard that\n"
"Princess Zelda sees prophetic \n"
"visions in her dreams?"
);

DECLARE_MESSAGE_NES(0x703F,
"Huh? What? Shoo, kid! Shoo!"
);

DECLARE_MESSAGE_NES(0x7040,
"There are three hollows and \n"
"an inscription here...."BOX_BREAK
QUICKTEXT_ENABLE "Ye who owns 3 Spiritual Stones " COLOR("\x43") "\n"
COLOR("\x40") "Stand with the " COLOR("\x44") "Ocarina of Time" COLOR("\x43") "\n"
COLOR("\x40") "And play the " COLOR("\x44") "Song of Time" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK"That is how the inscription reads." EVENT
);

DECLARE_MESSAGE_NES(0x7041,
"C'mon, can't you make it any\n"
"cheaper?"
);

DECLARE_MESSAGE_NES(0x7042,
"Hey, let go! It's mine!\n"
"I found it first!"
);

DECLARE_MESSAGE_NES(0x7043,
"Hey, who bumped me?!"
);

DECLARE_MESSAGE_NES(0x7044,
"We don't see a lot of Gerudos in\n"
"these parts...\n"
"Something fishy is going on!"
);

DECLARE_MESSAGE_NES(0x7045,
"Wasn't that Princess Zelda riding\n"
"on the white horse?!"
);

DECLARE_MESSAGE_NES(0x7046,
"I almost got kicked by that\n"
"black horse!"
);

DECLARE_MESSAGE_NES(0x7047,
"That guy riding on the black horse\n"
"must have been Ganondorf, who is\n"
"renowned as the Gerudo King of \n"
"Thieves."
);

DECLARE_MESSAGE_NES(0x7048,
"What happened?!"
);

DECLARE_MESSAGE_NES(0x7049,
"Look at that guy--he's so scared!\n"
"What a wimp!\n"
"Ha ha hah!"
);

DECLARE_MESSAGE_NES(0x704A,
"I have a feeling something\n"
"terrible is going to happen...\n"
"Maybe I should leave town soon."
);

DECLARE_MESSAGE_NES(0x704B,
"Something happened in the castle!\n"
"Kid, you'd better be careful!"
);

DECLARE_MESSAGE_NES(0x704C,
"With that " COLOR("\x41") "key" COLOR("\x40") ", proceed to the \n"
"room ahead. Go, go!"
);

DECLARE_MESSAGE_NES(0x704D,
"The one riding on the white horse\n"
"holding the little girl...\n"
"Wasn't that a legendary Sheikah?"
);

DECLARE_MESSAGE_NES(0x704E,
UNSKIPPABLE  SHIFT("\x2D")  NAME "..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x45") "Wake up...\n"
SHIFT("\x05")  NAME ", the chosen one..."
);

DECLARE_MESSAGE_NES(0x704F,
UNSKIPPABLE "I am " COLOR("\x41") "Rauru" COLOR("\x40") ", one of the ancient\n"
"Sages..."BOX_BREAK
UNSKIPPABLE "Ages ago, we ancient Sages\n"
"built the Temple of Time to \n"
"protect the entrance to the\n"
"Sacred Realm..."BOX_BREAK
UNSKIPPABLE "This is the " COLOR("\x41") "Chamber of Sages" COLOR("\x40") "," COLOR("\x41") " \n"
COLOR("\x40") "inside the Temple of Light..."BOX_BREAK
UNSKIPPABLE "The Temple of Light, situated in\n"
"the very center of the Sacred \n"
"Realm, is the last stronghold \n"
"against Ganondorf's evil forces."BOX_BREAK
UNSKIPPABLE "The " COLOR("\x41") "Master Sword" COLOR("\x40") "--the evil-\n"
"destroying sword that you pulled\n"
"out of the Pedestal of Time--was \n"
"the final key to the Sacred Realm."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Don't be alarmed...\n"
"Look at yourself...!"
);

DECLARE_MESSAGE_NES(0x7050,
UNSKIPPABLE  SHIFT("\x23")  COLOR("\x44") "Look " NAME "!\n"
COLOR("\x40")  SHIFT("\x32")  COLOR("\x44") "You're big now!!\n"
COLOR("\x40")  SHIFT("\x31")  COLOR("\x44") "You've grown up!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7051,
UNSKIPPABLE "The Master Sword is a sacred\n"
"blade which evil ones may never\n"
"touch...."BOX_BREAK
UNSKIPPABLE "Only one worthy of the title of\n"
"\"" COLOR("\x41") "Hero of Time" COLOR("\x40") "\"" COLOR("\x41") " " COLOR("\x40") "can pull it from \n"
"the Pedestal of Time...."BOX_BREAK
UNSKIPPABLE "However, you were too young to \n"
"be the Hero of Time...."BOX_BREAK
UNSKIPPABLE "Therefore, your spirit was \n"
"sealed here for seven years."BOX_BREAK
UNSKIPPABLE "And now that you are old enough,\n"
"the time has come for you to\n"
"awaken" COLOR("\x41") " " COLOR("\x40") "as the Hero of Time!"BOX_BREAK"Well, do you understand your \n"
"destiny?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7052,
"Right, it looks like you are \n"
"confused... Let me tell you \n"
"again, from the beginning." TEXTID("\x70\x51")
);

DECLARE_MESSAGE_NES(0x7053,
UNSKIPPABLE "But, remember..."BOX_BREAK
UNSKIPPABLE "Though you opened the Door of \n"
"Time in the name of peace..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Ganondorf" COLOR("\x40") ", the Gerudo King of\n"
"Thieves, used it to enter this \n"
"forbidden Sacred Realm!"BOX_BREAK
UNSKIPPABLE "He obtained the Triforce from\n"
"the Temple of Light, and with its \n"
"power, he became the " COLOR("\x41") "King of Evil" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "His evil power radiated from the\n"
"temples of Hyrule, and in seven\n"
"short years, it transformed Hyrule\n"
"into a world of monsters."BOX_BREAK
UNSKIPPABLE "My power now has only little \n"
"influence, even in this Sacred\n"
"Realm..."BOX_BREAK
UNSKIPPABLE "Namely, this Chamber of Sages."BOX_BREAK
UNSKIPPABLE "But there is still hope..."BOX_BREAK
UNSKIPPABLE "The power of the Sages remains."BOX_BREAK
UNSKIPPABLE "When the power of all the " COLOR("\x41") "Sages\n"
COLOR("\x40") "is awakened..."BOX_BREAK
UNSKIPPABLE "The " COLOR("\x41") "Sages' Seals" COLOR("\x40") " will contain\n"
"all the evil power in the void of \n"
"the Realm..."BOX_BREAK
UNSKIPPABLE "I, Rauru, am one of the Sages...\n"
"And..."BOX_BREAK
UNSKIPPABLE "Your power to fight together with\n"
"the Sages makes you the \n"
COLOR("\x41") "Hero of Time" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "The Hero of Time, chosen by the\n"
"Master Sword!"BOX_BREAK
UNSKIPPABLE "Keep my spirit with you...\n"
"And, find the power of the other\n"
"Sages and add their might to your\n"
"own!"
);

DECLARE_MESSAGE_NES(0x7054,
UNSKIPPABLE  COLOR("\x44")  NAME "...we're back in the\n"
COLOR("\x40") "Temple of Time" COLOR("\x44") "...\n"
"But have " COLOR("\x40") "seven years" COLOR("\x44") " really\n"
"passed?" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "It looks like you won't be\n"
"able to use some of the " COLOR("\x40") "weapons" COLOR("\x44") "\n"
"you found as a kid anymore..."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Let's get out of here!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7055,
"Heyyy, what...? \n"
"What's wrong with loitering\n"
"around all day?"BOX_BREAK"Huh, kid?"
);

DECLARE_MESSAGE_NES(0x7056,
UNSKIPPABLE "I've been waiting for you, \n"
"Hero of Time..."
);

DECLARE_MESSAGE_NES(0x7057,
UNSKIPPABLE "When evil rules all, an awakening\n"
"voice from the Sacred Realm will\n"
"call those destined to be Sages,\n"
"who dwell in the " COLOR("\x41") "five temples" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "One in a " COLOR("\x42") "deep forest" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "One on a " COLOR("\x41") "high mountain" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "One under a " COLOR("\x43") "vast lake" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "One within the " COLOR("\x45") "house of the dead" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "One inside a " COLOR("\x46") "goddess of the sand" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Together with the Hero of Time, \n"
"the awakened ones will bind the\n"
"evil and return the light of peace\n"
"to the world..."BOX_BREAK
UNSKIPPABLE "This is the legend of the temples\n"
"passed down by my people, the\n"
COLOR("\x43") "Sheikah" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x7058,
"Oh, I'm sorry.\n"
"We're not open for business yet.\n"
"Please come back soon!" EVENT
);

DECLARE_MESSAGE_NES(0x7059,
UNSKIPPABLE "Use the " COLOR("\x41") "Master Sword" COLOR("\x40") "!\n"
"Destroy Ganon with the sacred\n"
"sword!"
);

DECLARE_MESSAGE_NES(0x705A,
UNSKIPPABLE "I have been waiting for you,\n"
NAME "."
);

DECLARE_MESSAGE_NES(0x705B,
UNSKIPPABLE  NAME ", the Hero of Time..."BOX_BREAK
UNSKIPPABLE "You have overcome many \n"
"hardships and awakened six Sages."BOX_BREAK
UNSKIPPABLE "And now you have a final\n"
"challenge, a showdown with \n"
"Ganondorf, the King of Evil...."
);

DECLARE_MESSAGE_NES(0x705C,
UNSKIPPABLE  SHIFT("\x10") "If you would seek the sacred\n"
SHIFT("\x28") "triangle, listen well..."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x09") "The resting place of the sacred\n"
SHIFT("\x09") "triangle, the Sacred Realm, is a\n"
SHIFT("\x14") "mirror that reflects what is\n"
SHIFT("\x3B") "in the heart..."BOX_BREAK_DELAYED("\x46")  UNSKIPPABLE  SHIFT("\x05") "the heart of one who enters it...\n"
SHIFT("\x0C") "If an evil heart, the Realm will\n"
SHIFT("\x14") "become full of evil; if pure,\n"
SHIFT("\x04") "the Realm will become a paradise."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x02") "The Triforce...the sacred triangle...\n"
SHIFT("\x0A") "it is a balance that weighs the\n"
SHIFT("\x3C") "three forces:\n"
SHIFT("\x13") "Power, Wisdom and Courage."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x02") "If the heart of the one who holds\n"
SHIFT("\x06") "the sacred triangle has all three\n"
SHIFT("\x0A") "forces in balance, that one will\n"
SHIFT("\x03") "gain the True Force to govern all."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x06") "But, if that one's heart is not in\n"
SHIFT("\x02") "balance, the Triforce will separate\n"
SHIFT("\x32") "into three parts:\n"
SHIFT("\x13") "Power, Wisdom and Courage."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x04") "Only one part will remain for the\n"
SHIFT("\x02") "one who touched the Triforce...the\n"
SHIFT("\x07") "part representing the force that\n"
SHIFT("\x27") "one most believes in."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x04") "If that one seeks the True Force,\n"
SHIFT("\x0C") "that one must acquire the two\n"
SHIFT("\x44") "lost parts."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x12") "Those two parts will be held\n"
SHIFT("\x07") "within others chosen by destiny,\n"
SHIFT("\x0A") "who will bear the Triforce mark\n"
SHIFT("\x11") "on the backs of their hands." FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x705D,
UNSKIPPABLE "Seven years ago, Ganondorf, the \n"
"King of Thieves, used the door \n"
"you opened in the Temple of Time\n"
"and entered the Sacred Realm."BOX_BREAK
UNSKIPPABLE "But when he laid his hands on the\n"
"Triforce, the legend came true."
);

DECLARE_MESSAGE_NES(0x705E,
UNSKIPPABLE "The one who holds the " COLOR("\x41") "Triforce \n"
"of Courage " COLOR("\x40") "is...\n"
"You, " NAME "!"
);

DECLARE_MESSAGE_NES(0x705F,
UNSKIPPABLE "And the other, who holds the \n"
COLOR("\x41") "Triforce of Wisdom" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "is the seventh Sage, who is\n"
"destined to be the leader of\n"
"them all..."
);

DECLARE_MESSAGE_NES(0x7060,
UNSKIPPABLE "It is I, the Princess of Hyrule,\n"
COLOR("\x41") "Zelda" COLOR("\x40") "."
);

DECLARE_MESSAGE_NES(0x7061,
UNSKIPPABLE "I apologize for meeting you in \n"
"disguise, but it was necessary to\n"
"hide from the King of Evil. \n"
"Please forgive me..."
);

DECLARE_MESSAGE_NES(0x7062,
"I saw you as I was escaping \n"
"from the castle with my \n"
"attendant, Impa." FADE("\x50")
);

DECLARE_MESSAGE_NES(0x7063,
UNSKIPPABLE "As long as you had the Ocarina \n"
"in your possession, I thought \n"
"Ganondorf could never enter the\n"
"Sacred Realm, but..."BOX_BREAK
UNSKIPPABLE "something I could never expect\n"
"happened..."
);

DECLARE_MESSAGE_NES(0x7064,
UNSKIPPABLE  SHIFT("\x24") "That rumbling...It can't be!?"
);

DECLARE_MESSAGE_NES(0x7065,
UNSKIPPABLE "Princess Zelda...you foolish \n"
"traitor!"BOX_BREAK
UNSKIPPABLE "I commend you for avoiding my \n"
"pursuit for seven long years."
);

DECLARE_MESSAGE_NES(0x7066,
UNSKIPPABLE "If you want to rescue Zelda,\n"
"come to my castle!"
);

DECLARE_MESSAGE_NES(0x7067,
UNSKIPPABLE  NAME "...can you hear me?\n"
"It's Rauru, the Sage."BOX_BREAK
UNSKIPPABLE "We six will gather our power to\n"
"create a bridge to the castle\n"
"where Ganondorf dwells..."BOX_BREAK
UNSKIPPABLE "The castle's keep, which is \n"
"known as Ganon's Tower, is \n"
"protected by " COLOR("\x41") "six evil barriers" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Bring down the six barriers and\n"
"save Princess Zelda!!"
);

DECLARE_MESSAGE_NES(0x7068,
"7068"
);

DECLARE_MESSAGE_NES(0x7069,
"7069"
);

DECLARE_MESSAGE_NES(0x706A,
"706a"
);

DECLARE_MESSAGE_NES(0x706B,
"706b"
);

DECLARE_MESSAGE_NES(0x706C,
"Ancient Creators of Hyrule!"BOX_BREAK_DELAYED("\x3C") "Now, open the sealed door\n"
"and send the Evil Incarnation of\n"
"Darkness into the void of the\n"
"Evil Realm!!" FADE("\x5A")
);

DECLARE_MESSAGE_NES(0x706D,
UNSKIPPABLE  NAME "!\n"
"Finish him off with the sword of\n"
"time, the Master Sword!"
);

DECLARE_MESSAGE_NES(0x706E,
UNSKIPPABLE "Oh sealed door opened by the \n"
"Sages... Close forever with \n"
"the Evil Incarnation of Darkness\n"
"within!!"
);

DECLARE_MESSAGE_NES(0x706F,
UNSKIPPABLE "Thank you, " NAME "..."BOX_BREAK
UNSKIPPABLE "Thanks to you, Ganondorf has\n"
"been sealed inside the Evil Realm!"BOX_BREAK
UNSKIPPABLE "Thus, peace will once again\n"
"reign in this world...for a time."
);

DECLARE_MESSAGE_NES(0x7070,
UNSKIPPABLE  SHIFT("\x3C") "Thank you...\n"
SHIFT("\x32")  NAME "..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  SHIFT("\x32") "Good-bye...." FADE("\x3C")
);

DECLARE_MESSAGE_NES(0x7071,
"Do you really want to go through\n"
"this gate that much? Let me think\n"
"about it... OK, but in return..." TEXTID("\x70\x72")
);

DECLARE_MESSAGE_NES(0x7072,
"Give me 10 Rupees...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x7073,
"Please believe me....\n"
"My prophecies have never been\n"
"wrong!" EVENT
);

DECLARE_MESSAGE_NES(0x7074,
UNSKIPPABLE "You destroyed the wicked\n"
"creatures that haunted the temple\n"
"and awakened the Sage..."BOX_BREAK
UNSKIPPABLE "But there are still other Sages\n"
"who need your help."BOX_BREAK
UNSKIPPABLE "In order to awaken all the other\n"
"Sages, you must become even\n"
"more powerful."BOX_BREAK
UNSKIPPABLE "You must travel over\n"
"mountains..."BOX_BREAK
UNSKIPPABLE "under water..."BOX_BREAK
UNSKIPPABLE "and even through time..."
);

DECLARE_MESSAGE_NES(0x7075,
UNSKIPPABLE "As long as you hold the " COLOR("\x44") "Ocarina\n"
"of Time" COLOR("\x40") " and the " COLOR("\x44") "Master Sword" COLOR("\x40") ","BOX_BREAK
UNSKIPPABLE "you hold time itself in your\n"
"hands..."BOX_BREAK
UNSKIPPABLE  NAME ", we shall meet \n"
"again!"
);

DECLARE_MESSAGE_NES(0x7076,
"This is a new type of bomb!\n"
"It's available only in limited\n"
"quantities, and when I'm sold \n"
"out, that's it!" EVENT
);

DECLARE_MESSAGE_NES(0x7077,
UNSKIPPABLE "I am " COLOR("\x41") "Sheik" COLOR("\x40") ".\n"
"Survivor of the Sheikahs..."
);

DECLARE_MESSAGE_NES(0x7078,
UNSKIPPABLE "As I see you standing there\n"
"holding the mythical " COLOR("\x41") "Master \n"
"Sword" COLOR("\x40") ", you really do look like the \n"
"legendary Hero of Time..."
);

DECLARE_MESSAGE_NES(0x7079,
UNSKIPPABLE "If you believe the legend, you\n"
"have no choice. You must look for\n"
"the five temples and awaken the\n"
COLOR("\x41") "five Sages" COLOR("\x40") "...."
);

DECLARE_MESSAGE_NES(0x707A,
UNSKIPPABLE "One Sage is waiting for the time\n"
"of awakening in the " COLOR("\x42") "Forest Temple" COLOR("\x40") ".\n"
"The Sage is a girl I am sure you\n"
"know..."BOX_BREAK
UNSKIPPABLE "Because of the evil power in the\n"
"temple, she cannot hear the\n"
"awakening call from the Sacred\n"
"Realm..."BOX_BREAK
UNSKIPPABLE "Unfortunately, equipped as you \n"
"currently are, you cannot even\n"
"enter the temple..."BOX_BREAK
UNSKIPPABLE "But, if you believe what I'm saying,\n"
"you should head to " COLOR("\x41") "Kakariko \n"
"Village" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Do you understand, \n"
NAME "?"
);

DECLARE_MESSAGE_NES(0x707B,
"I thought I should entrust the\n"
"Ocarina to you... I thought that \n"
"would be our best chance..." FADE("\x50")
);

DECLARE_MESSAGE_NES(0x707C,
UNSKIPPABLE "Before that...I have things I want \n"
"to tell only to you. Please listen."BOX_BREAK
UNSKIPPABLE "Another unknown legend of the \n"
"Triforce passed down by the \n"
"shadow folk, the Sheikahs...."
);

DECLARE_MESSAGE_NES(0x707D,
UNSKIPPABLE "The Triforce separated into three \n"
"parts. Only the " COLOR("\x41") "Triforce of Power" COLOR("\x40") "\n"
"remained in Ganondorf's hand."
);

DECLARE_MESSAGE_NES(0x707E,
UNSKIPPABLE "The strength of the Triforce of\n"
"Power enabled him to become a\n"
"mighty, evil king, but his dark\n"
"ambitions were not satisfied."
);

DECLARE_MESSAGE_NES(0x707F,
UNSKIPPABLE "To gain complete mastery of the \n"
"world, Ganondorf started looking\n"
"for " COLOR("\x41") "those chosen by destiny" COLOR("\x40") " to \n"
"hold the two other Triforce parts."
);

DECLARE_MESSAGE_NES(0x7080,
UNSKIPPABLE "On that day, seven years ago,\n"
"Ganondorf attacked Hyrule Castle."
);

DECLARE_MESSAGE_NES(0x7081,
UNSKIPPABLE "After you opened the door of \n"
"time, the Master Sword sealed you\n"
"away in the Sacred Realm..."
);

DECLARE_MESSAGE_NES(0x7082,
UNSKIPPABLE "Your spirit remained in the Sacred\n"
"Realm...and then the Triforce fell \n"
"into Ganondorf's hands. He went\n"
"on to invade the Sacred Realm..."BOX_BREAK
UNSKIPPABLE "Ganondorf had become the Evil\n"
"King, and the Sacred Realm\n"
"became a world of evil. All of\n"
"this is an unfortunate coincidence."BOX_BREAK
UNSKIPPABLE "I passed myself off as a Sheikah\n"
"and hoped that you would return.\n"
"I waited for seven years..."
);

DECLARE_MESSAGE_NES(0x7083,
UNSKIPPABLE "And...now you are back. The \n"
"dark age ruled by Ganondorf the\n"
"Evil King will end!"
);

DECLARE_MESSAGE_NES(0x7084,
UNSKIPPABLE "The six Sages will open the sealed\n"
"door and lure Ganondorf back into\n"
"the Sacred Realm."BOX_BREAK
UNSKIPPABLE "I will then seal the door to the \n"
"Sacred Realm from this world."BOX_BREAK
UNSKIPPABLE "Thus, Ganondorf the Evil King will\n"
"vanish from Hyrule."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"In order to do this, I need your \n"
"courage again. Please protect me\n"
"while I do my part."BOX_BREAK
UNSKIPPABLE "And here is a weapon that can \n"
"penetrate the Evil King's defenses...\n"
"The power given to the chosen \n"
"ones..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x0F") "The sacred " COLOR("\x44") "Arrow of Light" COLOR("\x40") "!!!"
);

DECLARE_MESSAGE_NES(0x7085,
UNSKIPPABLE "But you let your guard down...\n"
"I knew you would appear if I let\n"
"this kid wander around!"
);

DECLARE_MESSAGE_NES(0x7086,
UNSKIPPABLE "My only mistake was to slightly\n"
"underestimate the power of this\n"
"kid..."
);

DECLARE_MESSAGE_NES(0x7087,
UNSKIPPABLE "No...\n"
"It was not the kid's power I\n"
"misjudged, it was the power of\n"
"the Triforce of Courage!"BOX_BREAK
UNSKIPPABLE "But, with the Triforce of Wisdom\n"
"that Zelda has...\n"
"When I obtain these two Triforces..."BOX_BREAK
UNSKIPPABLE "Then, I will become the true\n"
"ruler of the world!!"
);

DECLARE_MESSAGE_NES(0x7088,
QUICKTEXT_ENABLE "The Ocarina of Time opened the\n"
"door. The Hero of Time, with the\n"
"Master Sword, descended here." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x7089,
"It seems strange that packs of\n"
"dogs roam our streets at night...\n"
"Doesn't that seem weird to you?"
);

DECLARE_MESSAGE_NES(0x708A,
"Hey, sonny, I'll tell you something\n"
"helpful..."BOX_BREAK"I heard there is a " COLOR("\x41") "mysterious \n"
"fountain" COLOR("\x40") " somewhere near the \n"
"castle..."
);

DECLARE_MESSAGE_NES(0x708B,
UNSKIPPABLE "If you want to return to your\n"
"original time, return the Master \n"
"Sword to the " COLOR("\x41") "Pedestal of Time" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "By doing this, you will travel back\n"
"in time seven years...."
);

DECLARE_MESSAGE_NES(0x708C,
UNSKIPPABLE "The time will come when you will\n"
"have to return here quickly...\n"
"I will teach this to you for when \n"
"that time comes..."BOX_BREAK
UNSKIPPABLE "The song to return you to the \n"
"Temple of Time...\n"
COLOR("\x44") "The Prelude of Light" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x708D,
UNSKIPPABLE "I am " COLOR("\x41") "Impa " COLOR("\x40") "of the Sheikahs.\n"
"I am responsible for protecting\n"
"Princess Zelda. Everything is \n"
"exactly as the Princess foretold."
);

DECLARE_MESSAGE_NES(0x708E,
"If the castle soldiers find you,\n"
"there will be trouble. Let me \n"
"lead you out of the castle."
);

DECLARE_MESSAGE_NES(0x708F,
QUICKTEXT_ENABLE "Hey you! Don't cause any trouble!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x7090,
UNSKIPPABLE "You are a courageous boy...\n"
"You are heading out on a big, new \n"
"adventure, aren't you?"BOX_BREAK
UNSKIPPABLE "My role in the Princess's dream\n"
"was to teach a melody" COLOR("\x41") " " COLOR("\x40") "to the one\n"
"from the forest."BOX_BREAK
UNSKIPPABLE "This is an ancient " COLOR("\x43") "melody passed \n"
"down by the Royal Family" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "I have played this song for \n"
"Princess Zelda as a lullaby ever\n"
"since she was a baby..."BOX_BREAK
UNSKIPPABLE "There is mysterious power in \n"
"these notes."BOX_BREAK
UNSKIPPABLE "Now listen carefully..."
);

DECLARE_MESSAGE_NES(0x7091,
UNSKIPPABLE "All the tragedy that has befallen\n"
"Hyrule was my doing..."BOX_BREAK
UNSKIPPABLE "I was so young...I could not\n"
"comprehend the consequences of \n"
"trying to control the Sacred Realm."BOX_BREAK
UNSKIPPABLE "I dragged you into it, too."BOX_BREAK
UNSKIPPABLE "Now it is time for me to make up \n"
"for my mistakes..."BOX_BREAK
UNSKIPPABLE "You must lay the Master Sword to \n"
"rest and close the Door of Time..."
);

DECLARE_MESSAGE_NES(0x7092,
UNSKIPPABLE "However, by doing this, the road\n"
"between times will be closed..."
);

DECLARE_MESSAGE_NES(0x7093,
UNSKIPPABLE  NAME ",\n"
"give the Ocarina to me..."BOX_BREAK
UNSKIPPABLE "As a Sage, I can return you\n"
"to your original time with it."
);

DECLARE_MESSAGE_NES(0x7094,
UNSKIPPABLE "When peace returns to Hyrule..."BOX_BREAK
UNSKIPPABLE "It will be time for us to say \n"
"good-bye..."
);

DECLARE_MESSAGE_NES(0x7095,
UNSKIPPABLE "Now, go home, " NAME ".\n"
"Regain your lost time!"BOX_BREAK
UNSKIPPABLE "Home... \n"
"where you are supposed to be...\n"
"the way you are supposed to be..."
);

DECLARE_MESSAGE_NES(0x7096,
SHIFT("\x46")  QUICKTEXT_ENABLE "Tsk" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Tsk." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x7097,
"Well, maybe that's too much\n"
"for a kid to pay." EVENT
);

DECLARE_MESSAGE_NES(0x7098,
"OK, I'll let you pass,\n"
"quickly!" EVENT
);

DECLARE_MESSAGE_NES(0x7099,
"KEEP IT A SECRET \n"
"FROM EVERYONE."
);

DECLARE_MESSAGE_NES(0x709A,
"Man, I am SO tired!"BOX_BREAK"The night watch is so boring!\n"
"I wish some ghosts would come \n"
"out or something..."BOX_BREAK"Hey, I'm really interested in \n"
"ghosts!"BOX_BREAK"Studying them is a hobby of mine,\n"
"but you never know...the time\n"
"might come when that kind of\n"
"knowledge might be useful!"
);

DECLARE_MESSAGE_NES(0x709B,
"My precious little puppy's fur coat\n"
"is very special compared to the \n"
"other mutts around here!"
);

DECLARE_MESSAGE_NES(0x709C,
"My precious puppy can run faster\n"
"than any of the other mutts\n"
"around here!"
);

DECLARE_MESSAGE_NES(0x709D,
"I can't find my puppy anywhere!\n"
"I need you to look for it! Please!"
);

DECLARE_MESSAGE_NES(0x709E,
SHIFT("\x4C")  QUICKTEXT_ENABLE "Arrrgh!" QUICKTEXT_DISABLE "\n"
"That is not my dog! \n"
"How could you mix up my puppy\n"
"with a mutt like that?!"
);

DECLARE_MESSAGE_NES(0x709F,
SHIFT("\x46")  QUICKTEXT_ENABLE "Richard!" QUICKTEXT_DISABLE BOX_BREAK"This is my little Richard!\n"
"Thank you! Thank you!\n"
"I'll give this to you as a\n"
"reward!"
);

DECLARE_MESSAGE_NES(0x70A0,
"At night it's dangerous to go out\n"
"with all the wild dogs around...\n"
"No, I wasn't warning you! \n"
"I'm worried about my puppy!"
);

DECLARE_MESSAGE_NES(0x70A1,
"Hiyeee!\n"
"Welcome to the " COLOR("\x41") "Happy Mask Shop" COLOR("\x40") "!\n"
"We deal in masks that bring \n"
"happiness to everyone!"BOX_BREAK"How would you like to be a \n"
"happiness salesman? I'll lend you\n"
"a mask. You sell the mask and \n"
"bring the " COLOR("\x41") "money " COLOR("\x40") "back here."BOX_BREAK"If you want to read the fine \n"
"print, take a look at the " COLOR("\x41") "sign \n"
COLOR("\x40") "right over there."BOX_BREAK"After you've sold all the masks,\n"
"you will become happy" COLOR("\x41") " " COLOR("\x40") "yourself!"BOX_BREAK
SHIFT("\x40") "Have faith..." EVENT
);

DECLARE_MESSAGE_NES(0x70A2,
QUICKTEXT_ENABLE "Select a mask with left or right\n"
"on " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
TWO_CHOICE  COLOR("\x42") "Talk to the shop owner.\n"
"Don't borrow" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x70A3,
"A " COLOR("\x41") "mask " COLOR("\x40") "is a " COLOR("\x46") "[C] Button " COLOR("\x40") "item. Set\n"
"it to " COLOR("\x46") "[C]" COLOR("\x40") " and press " COLOR("\x46") "[C]" COLOR("\x40") " to wear it."BOX_BREAK"If you talk to someone with a \n"
"mask on, you might get a reaction."BOX_BREAK"If anyone is interested in the\n"
"mask, he or she will ask you \n"
"about it. Someone may want the \n"
"mask."BOX_BREAK"Somewhere in the world, somebody\n"
"is waiting for these masks."BOX_BREAK
SHIFT("\x32") "Just have faith..." EVENT
);

DECLARE_MESSAGE_NES(0x70A4,
"I might have seen a cute little\n"
"girl around here...\n"
"Maybe she went to the castle?\n"
"Who knows?"
);

DECLARE_MESSAGE_NES(0x70A5,
"Oh, great! You sold it!\n"
"Please pay back " COLOR("\x41") "10 Rupees " COLOR("\x40") "for\n"
"the Keaton Mask now." EVENT
);

DECLARE_MESSAGE_NES(0x70A6,
"Oh! You haven't sold the newest\n"
"mask yet. Just have faith... Keep\n"
"trying a little longer." EVENT
);

DECLARE_MESSAGE_NES(0x70A7,
"Payment received!" EVENT
);

DECLARE_MESSAGE_NES(0x70A8,
QUICKTEXT_ENABLE "What?!" QUICKTEXT_DISABLE "\n"
"You don't have my money?!"BOX_BREAK
QUICKTEXT_ENABLE "How dare you!" QUICKTEXT_DISABLE BOX_BREAK"You'd better bring me my money...\n"
"or else!" EVENT
);

DECLARE_MESSAGE_NES(0x70A9,
"Oh yeah!"BOX_BREAK"Very well done!\n"
"All the masks are sold out."BOX_BREAK"I knew I could trust you!" EVENT
);

DECLARE_MESSAGE_NES(0x70AA,
UNSKIPPABLE "As a reward...\n"
"I will lend you this special mask."BOX_BREAK
UNSKIPPABLE "This is the " COLOR("\x41") "Mask of Truth" COLOR("\x40") ". It is a\n"
"mysterious mask passed down by \n"
"the Sheikah."BOX_BREAK
UNSKIPPABLE "With this mask you can see into \n"
"other people's minds...\n"
"It's useful, but scary!"BOX_BREAK
UNSKIPPABLE "Why is it scary?"BOX_BREAK
UNSKIPPABLE "You may find out as you grow\n"
"older and discover the true \n"
"meaning of life..."BOX_BREAK
UNSKIPPABLE "Ho ho ho!" EVENT
);

DECLARE_MESSAGE_NES(0x70AB,
"From now on you can borrow any\n"
"mask you want.\n"
"Just have faith..." EVENT
);

DECLARE_MESSAGE_NES(0x70AC,
"Welcome!\n"
"Which mask can I lend to you?" EVENT
);

DECLARE_MESSAGE_NES(0x70AD,
QUICKTEXT_ENABLE "Choose a mask with left or right \n"
"on " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
TWO_CHOICE  COLOR("\x42") "Ask about Mask of Truth\n"
"Don't borrow a mask" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x70AE,
"This is the " COLOR("\x41") "Mask of Truth" COLOR("\x40") ". It is a\n"
"mysterious mask passed down by \n"
"the Sheikah."BOX_BREAK"With this mask you can see into \n"
"other people's minds. It's useful,\n"
"but scary!"BOX_BREAK"Why is it scary?"BOX_BREAK"You'll find out as you grow older!"BOX_BREAK"Ho ho ho!" EVENT
);

DECLARE_MESSAGE_NES(0x70AF,
QUICKTEXT_ENABLE  COLOR("\x41") "Mask of Truth -- Not for Sale" COLOR("\x40") "\n"
"This mask has special powers." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Skull Mask -- Price 20 Rupees" COLOR("\x40") "\n"
"A horned skull mask." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Spooky Mask -- Price 30 Rupees\n"
COLOR("\x40") "A sad, wooden mask." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Keaton Mask -- Price 10 Rupees\n"
COLOR("\x40") "Keaton stuff is hot, hot, hot!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Bunny Hood -- Price 50 Rupees\n"
COLOR("\x40") "With swinging rabbit ears!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B4,
QUICKTEXT_ENABLE  COLOR("\x41") "Skull Mask -- Free to Borrow" COLOR("\x40") "\n"
"A horned skull mask." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B5,
QUICKTEXT_ENABLE  COLOR("\x41") "Spooky Mask -- Free to Borrow\n"
COLOR("\x40") "A sad, wooden mask." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B6,
QUICKTEXT_ENABLE  COLOR("\x41") "Keaton Mask -- Free to Borrow\n"
COLOR("\x40") "Keaton stuff is hot, hot, hot!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Bunny Hood -- Free to Borrow\n"
COLOR("\x40") "With swinging rabbit ears!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B8,
QUICKTEXT_ENABLE  COLOR("\x41") "Goron Mask -- Free to Borrow\n"
COLOR("\x40") "This round face makes you \n"
"a little happier!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Zora Mask -- Free to Borrow" COLOR("\x40") "\n"
"You'll look cool while you're\n"
"swimming if you wear this mask!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70BA,
QUICKTEXT_ENABLE  COLOR("\x41") "Gerudo Mask -- Free to Borrow\n"
COLOR("\x40") "With its charming eyes, it makes\n"
"a great lady's disguise." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Mask of Truth -- Free to Borrow" COLOR("\x40") "\n"
"Mysterious mask to see into other\n"
"people's minds." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_NES(0x70BC,
QUICKTEXT_ENABLE "Do you want to borrow the " COLOR("\x41") "Skull \n"
"Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70BD,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Spooky Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70BE,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Keaton Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70BF,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Bunny Hood" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C0,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Goron Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C1,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Zora Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C2,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Gerudo Mask" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C3,
QUICKTEXT_ENABLE "Do you want to borrow the \n"
COLOR("\x41") "Mask of Truth" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C4,
"Oh, great! You sold it!\n"
"Please pay me back " COLOR("\x41") "20 Rupees \n"
COLOR("\x40") "for the Skull Mask now." EVENT
);

DECLARE_MESSAGE_NES(0x70C5,
"Oh, great! You sold it!\n"
"Please pay me back " COLOR("\x41") "30 Rupees \n"
COLOR("\x40") "for the Spooky Mask now." EVENT
);

DECLARE_MESSAGE_NES(0x70C6,
"Oh, great! You sold it!\n"
"Please pay me back " COLOR("\x41") "50 Rupees \n"
COLOR("\x40") "for the Bunny Hood now." EVENT
);

DECLARE_MESSAGE_NES(0x70C7,
"Oh! You haven't sold the mask\n"
"yet. Just have faith for a \n"
"little while longer."BOX_BREAK"Or, do you want to trade it\n"
"for another mask?\n"
TWO_CHOICE  COLOR("\x42") "Yes\n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70C8,
UNSKIPPABLE "The Triforce parts are resonating...\n"
"They are combining into one again..."
);

DECLARE_MESSAGE_NES(0x70C9,
UNSKIPPABLE "The two Triforce parts that I \n"
"could not capture on that day\n"
"seven years ago..."BOX_BREAK
UNSKIPPABLE "I didn't expect they would be \n"
"hidden within you two!"
);

DECLARE_MESSAGE_NES(0x70CA,
UNSKIPPABLE "And now, finally, all the Triforce\n"
"parts have gathered here!"
);

DECLARE_MESSAGE_NES(0x70CB,
UNSKIPPABLE "These toys are too much for you!"
);

DECLARE_MESSAGE_NES(0x70CC,
UNSKIPPABLE "I command you to return them \n"
"to me!"
);

DECLARE_MESSAGE_NES(0x70CD,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44")  NAME "!\n"
"I can't help you!\n"
"Because of the waves of\n"
"darkness, I can't get close!"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "I'm sorry, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70CE,
UNSKIPPABLE "The Great Evil King Ganondorf...\n"
"beaten by this kid?!"
);

DECLARE_MESSAGE_NES(0x70CF,
UNSKIPPABLE  NAME "....!"
);

DECLARE_MESSAGE_NES(0x70D0,
UNSKIPPABLE "Ganondorf...pitiful man..."BOX_BREAK
UNSKIPPABLE "Without a strong, righteous mind,\n"
"he could not control the power of\n"
"the gods...and..."
);

DECLARE_MESSAGE_NES(0x70D1,
UNSKIPPABLE  NAME ", listen to me!\n"
"This tower will collapse soon!"BOX_BREAK
UNSKIPPABLE "With his last breath, Ganondorf is\n"
"trying to crush us in the ruins of\n"
"the tower! We need to hurry and\n"
"escape!"
);

DECLARE_MESSAGE_NES(0x70D2,
UNSKIPPABLE "Please follow me!"
);

DECLARE_MESSAGE_NES(0x70D3,
UNSKIPPABLE "It's over...it's finally over..."
);

DECLARE_MESSAGE_NES(0x70D4,
UNSKIPPABLE  COLOR("\x44")  NAME "... \n"
"I'm sorry I couldn't help you in the\n"
"battle before!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70D5,
UNSKIPPABLE "What is that sound?"
);

DECLARE_MESSAGE_NES(0x70D6,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44") "There's no way he's going to hold\n"
"me back again!\n"
COLOR("\x40")  QUICKTEXT_ENABLE  COLOR("\x44") "This time, we fight together!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x70D7,
UNSKIPPABLE  NAME "! The Master \n"
"Sword is here! \n"
QUICKTEXT_ENABLE "Hurry up!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x70D8,
UNSKIPPABLE "I'm using my power to hold the\n"
"Evil King! You use your sword and\n"
"deliver the final blow!"
);

DECLARE_MESSAGE_NES(0x70D9,
UNSKIPPABLE  SHIFT("\x41") "Six Sages...\n"
QUICKTEXT_ENABLE  SHIFT("\x50") "Now!!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x70DA,
UNSKIPPABLE  TEXT_SPEED("\x03") "YOU..." TEXT_SPEED("\x00")  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x70DB,
UNSKIPPABLE  TEXT_SPEED("\x03") "CURSE YOU...ZELDA!\n"
TEXT_SPEED("\x02") "CURSE YOU...SAGES!!" TEXT_SPEED("\x00")  FADE("\x32")
);

DECLARE_MESSAGE_NES(0x70DC,
UNSKIPPABLE "CURSE YOU..." QUICKTEXT_ENABLE  NAME "!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x70DD,
UNSKIPPABLE "Someday...\n"
"When this seal is broken...."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE "That is when I will exterminate\n"
"your descendants!!" FADE("\x50")
);

DECLARE_MESSAGE_NES(0x70DE,
UNSKIPPABLE "As long as the Triforce of Power\n"
"is in my hand...." FADE("\x50")
);

DECLARE_MESSAGE_NES(0x70DF,
TEXT_SPEED("\x02") "You..." TEXT_SPEED("\x00") "who are you?" FADE("\x50")
);

DECLARE_MESSAGE_NES(0x70E0,
SHIFT("\x0A") "The " COLOR("\x42") "Forest Barrier " COLOR("\x40") "is dispelled!\n"
SHIFT("\x14") "Hurry up, " NAME "!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E1,
SHIFT("\x0F") "The " COLOR("\x41") "Fire Barrier" COLOR("\x40") " is dispelled!\n"
SHIFT("\x14") "Hurry up, Brother!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E2,
SHIFT("\x0F") "The " COLOR("\x43") "Water Barrier " COLOR("\x40") "is dispelled!\n"
SHIFT("\x46") "Hurry up!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E3,
SHIFT("\x0F") "The " COLOR("\x45") "Shadow Barrier " COLOR("\x40") "is dispelled!\n"
SHIFT("\x1E") "Please save the Princess!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E4,
SHIFT("\x0F") "The " COLOR("\x46") "Spirit Barrier " COLOR("\x40") "is dispelled!\n"
SHIFT("\x37") "Hurry up, kid!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E5,
SHIFT("\x0F") "The " COLOR("\x44") "Light Barrier " COLOR("\x40") "is dispelled!\n"
SHIFT("\x4B") "Hurry!" FADE("\x28")
);

DECLARE_MESSAGE_NES(0x70E6,
COLOR("\x44")  NAME ", isn't that...?!" COLOR("\x40")
);

DECLARE_MESSAGE_NES(0x70E7,
COLOR("\x44") "It's that legendary blade..." COLOR("\x40")  FADE("\x1E")
);

DECLARE_MESSAGE_NES(0x70E8,
QUICKTEXT_ENABLE  SHIFT("\x29")  COLOR("\x44") "The Master Sword!!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x70E9,
UNSKIPPABLE "Find the other Sages" COLOR("\x41") "\n"
COLOR("\x40") "and save Hyrule!" FADE("\x50")
);

DECLARE_MESSAGE_NES(0x70EA,
"That scary-looking man took\n"
"off out of here really fast!"
);

DECLARE_MESSAGE_NES(0x70EB,
"Oh so scary...\n"
"Oh so scary..."
);

DECLARE_MESSAGE_NES(0x70EC,
"Hey, what do you want?\n"
"I don't have time to talk\n"
"to you!"
);

DECLARE_MESSAGE_NES(0x70ED,
"Please...with " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Please sell me something...\n"
"Please...with " COLOR("\x46") "[C]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_NES(0x70EE,
"No...\n"
"That's not what I want...\n"
"I want " COLOR("\x41") "something inside a bottle" COLOR("\x40") "...\n"
"I didn't mean that thing..."
);

DECLARE_MESSAGE_NES(0x70EF,
"No...\n"
"I can't take that...\n"
"That's not what I want to buy..."
);

DECLARE_MESSAGE_NES(0x70F0,
"Oh, that's " COLOR("\x44") "Blue Fire" COLOR("\x40") "!\n"
"I'll buy it for " COLOR("\x41") "150 Rupees" COLOR("\x40") "!\n"
"All sales final, OK?"
);

DECLARE_MESSAGE_NES(0x70F1,
"Oh, a " COLOR("\x45") "Fish" COLOR("\x40") "!\n"
"I'll buy it for " COLOR("\x41") "100 Rupees" COLOR("\x40") "!\n"
"All sales final, OK?"
);

DECLARE_MESSAGE_NES(0x70F2,
"Oh, it's a cute little " COLOR("\x42") "Bug" COLOR("\x40") "!\n"
"I'll buy it for " COLOR("\x41") "50 Rupees" COLOR("\x40") "!\n"
"All sales final, OK?"
);

DECLARE_MESSAGE_NES(0x70F3,
"Oh, a darling little " COLOR("\x44") "Fairy" COLOR("\x40") "!\n"
"I'll buy it for " COLOR("\x41") "25 Rupees" COLOR("\x40") "!\n"
"All sales final, OK?"
);

DECLARE_MESSAGE_NES(0x70F4,
UNSKIPPABLE "Oh...you are quite an energetic\n"
"young man. You're brave and\n"
"handsome, too."BOX_BREAK
UNSKIPPABLE "Heh heh heh...your name is\n"
NAME ", isn't it."BOX_BREAK
UNSKIPPABLE "Heh heh he...don't be surprised.\n"
"I can read people's minds."BOX_BREAK
UNSKIPPABLE "If I looked as good as you, I\n"
"could run a different kind of \n"
"business...heh he heh..."BOX_BREAK
UNSKIPPABLE "My shop is the only " COLOR("\x41") "Ghost Shop" COLOR("\x40") "\n"
"in Hyrule."BOX_BREAK
UNSKIPPABLE "Because of the great Ganondorf, \n"
"it is a fine time for a business \n"
"like this...heh heh heh..."BOX_BREAK
UNSKIPPABLE "Oh...I can only hope the world \n"
"gets even worse!"BOX_BREAK
UNSKIPPABLE "The ghosts, called " COLOR("\x41") "Poes" COLOR("\x40") ", are \n"
"spirits of concentrated hatred \n"
"that appear in the fields and \n"
"graveyard. They hate the world!"BOX_BREAK
UNSKIPPABLE "Young man, if you catch a Poe, I\n"
"will pay a lot of money for it...\n"
"Heh heh hee!"
);

DECLARE_MESSAGE_NES(0x70F5,
"Hey, young man. What's happening \n"
"today? If you have a " COLOR("\x41") "Poe" COLOR("\x40") ", I will \n"
"buy it."BOX_BREAK"Your card now has " COLOR("\x45")  HIGHSCORE("\x01") " " COLOR("\x40") "points.\n"
"Come back again!\n"
"Heh heh heh!"
);

DECLARE_MESSAGE_NES(0x70F6,
UNSKIPPABLE "Oh, you brought a Poe today!"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........" TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Hmmm..."BOX_BREAK
UNSKIPPABLE "This is a " COLOR("\x41") "normal" COLOR("\x40") " " COLOR("\x41") "Poe" COLOR("\x40") ".\n"
"Here are your " COLOR("\x41") "10 Rupees" COLOR("\x40") ".\n"
"Take them."BOX_BREAK
UNSKIPPABLE "Heh heh."
);

DECLARE_MESSAGE_NES(0x70F7,
UNSKIPPABLE "Oh, you brought a Poe today!"BOX_BREAK
UNSKIPPABLE "Hmmmm!"BOX_BREAK
UNSKIPPABLE "Very interesting!\n"
"This is a " COLOR("\x41") "Big Poe" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "I'll buy it for " COLOR("\x41") "50 Rupees" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "On top of that, I'll put " COLOR("\x41") "100\n"
"points " COLOR("\x40") "on your card."BOX_BREAK
UNSKIPPABLE "If you earn " COLOR("\x41") "1,000 points" COLOR("\x40") ", you'll\n"
"be a happy man! Heh heh."
);

DECLARE_MESSAGE_NES(0x70F8,
UNSKIPPABLE "Wait a minute! WOW!"BOX_BREAK
UNSKIPPABLE "You have earned " COLOR("\x41") "1,000 points" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Young man, you are a genuine\n"
COLOR("\x41") "Ghost Hunter" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Is that what you expected me to\n"
"say? Heh heh heh!"BOX_BREAK
UNSKIPPABLE "Because of you, I have extra\n"
"inventory of " COLOR("\x41") "Big Poes" COLOR("\x40") ", so this will\n"
"be the last time I can buy a \n"
"ghost."BOX_BREAK
UNSKIPPABLE "You're thinking about what I \n"
"promised would happen when you\n"
"earned 1,000 points. Heh heh."BOX_BREAK
UNSKIPPABLE "Don't worry, I didn't forget.\n"
"Just take this."
);

DECLARE_MESSAGE_NES(0x70F9,
UNSKIPPABLE "Oh? What's that?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Is" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "that" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_NES(0x70FA,
QUICKTEXT_ENABLE  COLOR("\x44") "a fairy" COLOR("\x40")  QUICKTEXT_DISABLE "?!"BOX_BREAK
UNSKIPPABLE "Then, are you...\n"
"Are you from the forest?" EVENT
);

DECLARE_MESSAGE_NES(0x70FB,
UNSKIPPABLE "Then...then...you wouldn't happen to\n"
"have...the " COLOR("\x42") "Spiritual Stone of the \n"
"Forest" COLOR("\x40") ", would you?! That green \n"
"and shining stone..." EVENT
);

DECLARE_MESSAGE_NES(0x70FC,
UNSKIPPABLE "I had a dream...In the dream,\n"
"dark storm clouds were billowing\n"
"over the land of Hyrule..."BOX_BREAK
UNSKIPPABLE "But suddenly, a ray of light shot\n"
"out of the forest, parted the\n"
"clouds and lit up the ground..."BOX_BREAK
UNSKIPPABLE "The light turned into a figure\n"
"holding a " COLOR("\x42") "green and shining stone" COLOR("\x40") ",\n"
"followed by a " COLOR("\x44") "fairy" COLOR("\x40") "..." EVENT
);

DECLARE_MESSAGE_NES(0x70FD,
UNSKIPPABLE "I know this is a prophecy that\n"
"someone would come from the\n"
COLOR("\x42") "forest" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Yes, I thought you might\n"
"be the one..." EVENT
);

DECLARE_MESSAGE_NES(0x70FE,
UNSKIPPABLE  SHIFT("\x3A") "Oh, I'm sorry!"BOX_BREAK
UNSKIPPABLE "I got carried away with my story \n"
"and didn't even properly introduce \n"
"myself!" EVENT
);

DECLARE_MESSAGE_NES(0x70FF,
UNSKIPPABLE  SHIFT("\x0C") "I am " COLOR("\x44") "Zelda" COLOR("\x40") ", Princess of Hyrule." EVENT
);

DECLARE_MESSAGE_NES(0x7100,
"What? Have we met before?"
);

DECLARE_MESSAGE_NES(0x7101,
"Awww... That's so cute!\n"
"Could you tell me where you\n"
"found it?"
);

DECLARE_MESSAGE_NES(0x7102,
"Yeeeah!\n"
"Help me!"
);

DECLARE_MESSAGE_NES(0x7103,
"Uh...yeah? So what?"
);

DECLARE_MESSAGE_NES(0x7104,
"I hate foxes!"
);

DECLARE_MESSAGE_NES(0x7105,
"How irritating!"
);

DECLARE_MESSAGE_NES(0x7106,
"Hey, you look good!"
);

DECLARE_MESSAGE_NES(0x7107,
QUICKTEXT_ENABLE "YEEEAH! What's your problem?!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x7108,
"Oooh...is that a Zora?\n"
"Those cool eyes are really\n"
"fascinating..."
);

DECLARE_MESSAGE_NES(0x7109,
"Oh no! You're scary!\n"
"Don't come any closer!"
);

DECLARE_MESSAGE_NES(0x710A,
"Wow...how nostalgic! That\n"
"reminds me of when I was a\n"
"little kid."
);

DECLARE_MESSAGE_NES(0x710B,
"That's kind of funny...it\n"
"makes me laugh!\n"
"Hee hee!"
);

DECLARE_MESSAGE_NES(0x710C,
QUICKTEXT_ENABLE "Uh-oh!" QUICKTEXT_DISABLE " I'm sorry, mom!\n"
"Oh...hey, it's you!\n"
"Don't scare me like\n"
"that!"
);

DECLARE_MESSAGE_NES(0x710D,
"What a big head you have!"
);

DECLARE_MESSAGE_NES(0x710E,
"Oh, don't do that!\n"
"I'm shy..."
);

DECLARE_MESSAGE_NES(0x710F,
"Is there a mask competition\n"
"going on? \n"
QUICKTEXT_ENABLE "I'm going to vote for you!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_NES(0x7110,
"Oh! A rabbit!\n"
"Speaking of rabbits, I saw a \n"
"strange man chasing rabbits \n"
"around..."
);

DECLARE_MESSAGE_NES(0x7111,
"Oooh, what a pretty lady!\n"
"But you're kind of short,\n"
"aren't you?"
);

DECLARE_MESSAGE_NES(0x7112,
"Well...I can't think of anything\n"
"funny to say...sorry, kid!"
);

DECLARE_MESSAGE_NES(0x7113,
"A mask... When I was a little \n"
"kid, I also wore masks around...\n"
"What? You say you can't imagine\n"
"me doing that?"
);

DECLARE_MESSAGE_NES(0x7114,
"Ohhhh...I see...\n"
"It's an illusion..."
);

DECLARE_MESSAGE_NES(0x7115,
"Hey, kid, don't grow up to be\n"
"like me..."
);

DECLARE_MESSAGE_NES(0x7116,
QUICKTEXT_ENABLE "AAAAAAAAAAAH!\n"
"A GERUDO!!!!" QUICKTEXT_DISABLE BOX_BREAK"Wha-? A mask?\n"
"Why do you have a mask \n"
"like that?!"
);

DECLARE_MESSAGE_NES(0x7117,
"Sorry, I'm busy right now."
);

DECLARE_MESSAGE_NES(0x7118,
"Oh wow! It's Keaton!\n"
"Hi, Keaton!"
);

DECLARE_MESSAGE_NES(0x7119,
"How spooky!\n"
"There's a boy in Kakariko\n"
"Village who was looking for a\n"
"mask like that!"
);

DECLARE_MESSAGE_NES(0x711A,
"Hmm...well...don't you have any\n"
"other masks?"
);

DECLARE_MESSAGE_NES(0x711B,
"What a strange mask!\n"
"Hee hah haa!"
);

DECLARE_MESSAGE_NES(0x711C,
"Hey kid! Can't you see we're\n"
"busy?! Leave us alone!"
);

DECLARE_MESSAGE_NES(0x711D,
"I'm sorry. I don't even want to\n"
"look at any other woman!"
);

DECLARE_MESSAGE_NES(0x711E,
"Hee hee.\n"
"Don't pay any attention to that\n"
"kid, my dear... Just pretend we're\n"
"in our own, private little world..."
);

DECLARE_MESSAGE_NES(0x711F,
"Oh, please!\n"
"Go bother someone \n"
"else!"
);

DECLARE_MESSAGE_NES(0x7120,
"There's a rumor going around that\n"
"there is a Potion Shop that can\n"
"make the ultimate medicine!"
);

DECLARE_MESSAGE_NES(0x7121,
"I heard a rumor that there is a \n"
"monster that eats " COLOR("\x44") "Hylian Shields" COLOR("\x40") "\n"
"somewhere out there in the world.\n"
"Have you ever seen it?"
);

DECLARE_MESSAGE_NES(0x7122,
"I came here to sell bombs...\n"
"Please buy some!"
);

DECLARE_MESSAGE_NES(0x7123,
UNSKIPPABLE "I...I am afraid...\n"
"I have a feeling that man is going\n"
"to destroy Hyrule."BOX_BREAK
UNSKIPPABLE "He has such terrifying power!"BOX_BREAK
UNSKIPPABLE "But it's fortunate that you have \n"
"come..." EVENT
);

DECLARE_MESSAGE_NES(0x7124,
"What? If you want something,\n"
"just make it clear!"
);

DECLARE_MESSAGE_NES(0x7125,
"I'm busy! Get out of my way,\n"
"you bum!"
);

DECLARE_MESSAGE_NES(0x7126,
"Hey, you have some good,\n"
"quality wood there, kid!"
);

DECLARE_MESSAGE_NES(0x7127,
"Hrrrrm!\n"
"Get out of my face!\n"
"You good for nothin'..."
);

DECLARE_MESSAGE_NES(0x7128,
"EEEEEEAAAAH!\n"
"Whoops, I shouldn't scream like\n"
"that or the boss will yell at me!"
);

DECLARE_MESSAGE_NES(0x7129,
"Oh, sorry boss! \n"
"I didn't mean to slack off!\n"
"I'll get busy!"BOX_BREAK"Oh, that's not you, boss?"
);

DECLARE_MESSAGE_NES(0x712A,
"Gerudos are beautiful and brave...\n"
"They are just so fascinating!"
);

DECLARE_MESSAGE_NES(0x712B,
"Someday, when I have more skill,\n"
"I'll carve a mask like that one!"
);

DECLARE_MESSAGE_NES(0x712C,
"Oh, that's the mask\n"
"everyone is talking about!\n"
"Looks kind of strange..."
);

DECLARE_MESSAGE_NES(0x712D,
"Wa-ha-hah!\n"
"How's business,\n"
"Mr. Hero?\n"
"Hah hah hah!"
);

DECLARE_MESSAGE_NES(0x712E,
"I'm on duty.\n"
"Understand?\n"
"ON DUTY!"
);

DECLARE_MESSAGE_NES(0x712F,
"Hmm, well, I don't really know\n"
"what to say about that one..."
);

DECLARE_MESSAGE_NES(0x7130,
"Oh wow! Cute!\n"
"But Cuccos are much cuter!"
);

DECLARE_MESSAGE_NES(0x7131,
"Eh, what?\n"
"Are you sad?\n"
"Happy?\n"
"I really can't tell..."
);

DECLARE_MESSAGE_NES(0x7132,
"I'm sorry, I'm not really\n"
"interested in that."
);

DECLARE_MESSAGE_NES(0x7133,
"The little kid playing in the\n"
"graveyard was saying something\n"
"about his face..."
);

DECLARE_MESSAGE_NES(0x7134,
"I really am a good man.\n"
"Don't you believe me?"
);

DECLARE_MESSAGE_NES(0x7135,
"WHAAAA--!\n"
"I thought you were that old hag!\n"
"Don't scare me like that!"
);

DECLARE_MESSAGE_NES(0x7136,
"I remember my father talking\n"
"about a swordsmith...but that\n"
"doesn't really matter to me\n"
"anyway."
);

DECLARE_MESSAGE_NES(0x7137,
"I'm not afraid of any forest \n"
"monsters! Are you trying to\n"
"make fun of me?"
);

DECLARE_MESSAGE_NES(0x7138,
"What is that? I can't see it\n"
"very well from here..."
);

DECLARE_MESSAGE_NES(0x7139,
"Hi again! How are you today?"
);

DECLARE_MESSAGE_NES(0x713A,
"Everything's fine today!"
);

DECLARE_MESSAGE_NES(0x713B,
"Tired...I'm so tired..."
);

DECLARE_MESSAGE_NES(0x713C,
"I don't care about any\n"
"foxes!"
);

DECLARE_MESSAGE_NES(0x713D,
"That's irritating!\n"
"It bothers my eyes!"
);

DECLARE_MESSAGE_NES(0x713E,
"That looks quite handsome!"
);

DECLARE_MESSAGE_NES(0x713F,
"Waaaaaaah!\n"
"What is wrong with you?\n"
"Do you have a bad attitude?"
);

DECLARE_MESSAGE_NES(0x7140,
"You idiot! \n"
"When you talk to someone, you\n"
"should make eye contact!"
);

DECLARE_MESSAGE_NES(0x7141,
"You idiot!\n"
"When you talk to someone, you\n"
"shouldn't stare!"
);

DECLARE_MESSAGE_NES(0x7142,
"You idiot!\n"
"When you talk to someone, you\n"
"should take off your mask!"
);

DECLARE_MESSAGE_NES(0x7143,
"You idiot!\n"
"I don't know why I'm calling\n"
"you that, but...you are one!"
);

DECLARE_MESSAGE_NES(0x7144,
"Where did you get that?\n"
"What?\n"
"It's a mask?"
);

DECLARE_MESSAGE_NES(0x7145,
"Uh, leave me alone...\n"
"Can't you see I'm in a groove\n"
"right now?"
);

DECLARE_MESSAGE_NES(0x7146,
"A mask is just like a musical \n"
"instrument--it reflects the\n"
"character of its owner. I like\n"
"your originality, kid!"
);

DECLARE_MESSAGE_NES(0x7147,
"What a big head!\n"
"How'd you fit through that door?!"
);

DECLARE_MESSAGE_NES(0x7148,
"I HATE foxes, sonny!"
);

DECLARE_MESSAGE_NES(0x7149,
"Now if that isn't the most\n"
"irritating face I've seen in\n"
"all my days, I don't know what\n"
"is!"
);

DECLARE_MESSAGE_NES(0x714A,
"Hey, that's a fine face\n"
"you got there, sonny!"
);

DECLARE_MESSAGE_NES(0x714B,
"Have you got any complaints?\n"
"Speak up, then!"
);

DECLARE_MESSAGE_NES(0x714C,
"Please quit playing around\n"
"and dispel our curse!"
);

DECLARE_MESSAGE_NES(0x714D,
"If I wore something like that...\n"
"I'd be a real Skulltula...\n"
"AAAAAAAAAAH!"
);

DECLARE_MESSAGE_NES(0x714E,
"Please understand if I don't\n"
"laugh... It's hard to be happy\n"
"in this condition... \n"
"Being cursed and all..."
);

DECLARE_MESSAGE_NES(0x714F,
SFX("\x68\x67") "Hyaaaaah!\n"
"That's scary!\n"
"I know I'm scary, but...man!\n"
"That's really scary!"
);

DECLARE_MESSAGE_NES(0x7150,
"Huh?! Wha--!"BOX_BREAK"Oh, it's just a kid.\n"
"Don't scare me like that!\n"
"I may not look like it, but I'm a\n"
"very sensitive guy!"
);

DECLARE_MESSAGE_NES(0x7151,
"Well, will you lookit the noggin on \n"
"this kid! It's HUGE!\n"
"Mine is huge too, though..."
);

DECLARE_MESSAGE_NES(0x7152,
"Do you know what kind of\n"
"mask you're wearing...?\n"
"And you're still wearing it?"
);

DECLARE_MESSAGE_NES(0x7153,
"I'm on duty now... \n"
"If you want me to dig, don't\n"
"bother me."
);

DECLARE_MESSAGE_NES(0x7154,
"What is that? It's something\n"
"that hops around in a field...\n"
"I forgot what those things are\n"
"called..."
);

DECLARE_MESSAGE_NES(0x7155,
"Hey! It's a Keaton Mask!!\n"
"I asked my daddy to get me one,\n"
"too!"
);

DECLARE_MESSAGE_NES(0x7156,
"That's not very different from\n"
"Mr. Dampé, is it?"
);

DECLARE_MESSAGE_NES(0x7157,
"That doesn't look anything like\n"
"Mr. Dampé, huh?"
);

DECLARE_MESSAGE_NES(0x7158,
SFX("\x68\x63") "Hey, cool mask...but a little\n"
"scary, don't you think?"
);

DECLARE_MESSAGE_NES(0x7159,
"Hey! That looks familiar...\n"
"I think I saw something like it\n"
"in the Lost Woods, no?"
);

DECLARE_MESSAGE_NES(0x715A,
SFX("\x68\x63") "That makes me feel...happy..."
);

DECLARE_MESSAGE_NES(0x715B,
"Oh...uh...sniff...\n"
"That mask...\n"
"It makes me feel...sad..."
);

DECLARE_MESSAGE_NES(0x715C,
"Hah! That mask won't do you any\n"
"good! You're just afraid of me,\n"
"the great Mido...aren't you?!"
);

DECLARE_MESSAGE_NES(0x715D,
"Waaaaah! What?\n"
"Hey, I'm not scared of you!\n"
"Just don't come any closer,\n"
"understand?!"
);

DECLARE_MESSAGE_NES(0x715E,
"Hey, that's a cool mask.\n"
"I want it!\n"
"JUST KIDDING! Hah!\n"
"I don't want that stupid mask!"
);

DECLARE_MESSAGE_NES(0x715F,
"Wah hah ha hah!\n"
"That really suits you!"
);

DECLARE_MESSAGE_NES(0x7160,
"Waaaah!\n"
"I-I'm gonna tell Mido about \n"
"this!"
);

DECLARE_MESSAGE_NES(0x7161,
"Yeeeeah!\n"
"I-I'm gonna tell Mido to beat\n"
"you up!"
);

DECLARE_MESSAGE_NES(0x7162,
"Whooooah!\n"
"Are you some kind of forest\n"
"ghost?"
);

DECLARE_MESSAGE_NES(0x7163,
"That's so cool!\n"
"Uh...don't tell Mido I said that!"
);

DECLARE_MESSAGE_NES(0x7164,
"What?!\n"
"You came back!\n"
"I can tell who you are, even\n"
"with that mask on!"
);

DECLARE_MESSAGE_NES(0x7165,
"I wonder what Mido would say if\n"
"he saw that?\n"
"I really would like to see his\n"
"reaction!"
);

DECLARE_MESSAGE_NES(0x7166,
"I see...\n"
"You're going to scare Mido with\n"
"that mask, aren't you?!"
);

DECLARE_MESSAGE_NES(0x7167,
"Hah hah hah!\n"
"What a funny face!\n"
"I bet Saria would think it's\n"
"pretty funny, too!"
);

DECLARE_MESSAGE_NES(0x7168,
"Tee hee hee!\n"
"A mask made of wood?\n"
"It looks like you're wearing\n"
"a shield on your face!"
);

DECLARE_MESSAGE_NES(0x7169,
"What a weird face!"BOX_BREAK"Speaking of weird faces, one of\n"
"the forest kids was complaining\n"
"about his face..."
);

DECLARE_MESSAGE_NES(0x716A,
"What an enormous head you have!"
);

DECLARE_MESSAGE_NES(0x716B,
"Tee hee!\n"
"Where did you get that?\n"
"Outside the forest?\n"
"No way! I don't believe it!"
);

DECLARE_MESSAGE_NES(0x716C,
"Hee hee!\n"
"Kind of funny, but it's not\n"
"really my style..."
);

DECLARE_MESSAGE_NES(0x716D,
"Right on! \n"
"Wearing this mask makes me feel\n"
"really tough and scary!\n"
"Hee hee!"
);

DECLARE_MESSAGE_NES(0x716E,
"Hee hee!\n"
"There sure are a lot of different\n"
"people in the world!"
);

DECLARE_MESSAGE_NES(0x716F,
"Hee hee!\n"
"I don't need a new one...\n"
"I like the one I have, thanks!"
);

DECLARE_MESSAGE_NES(0x7170,
SFX("\x68\x6D") "Wow, that makes your head\n"
"look huge!\n"
"Hee hee!"
);

DECLARE_MESSAGE_NES(0x7171,
SFX("\x68\x6B") "What a cute little mouse!\n"
"What?\n"
"Oh, it's not a mouse?"
);

DECLARE_MESSAGE_NES(0x7172,
SFX("\x68\x6C") "What are those floppy things\n"
"on your head?\n"
"Ears? That mask makes you look\n"
"like you have four ears!"
);

DECLARE_MESSAGE_NES(0x7173,
SFX("\x68\x69") "It must be exciting to sneak\n"
"past the guards while wearing\n"
"that mask!"
);

DECLARE_MESSAGE_NES(0x7174,
"Hi, fairy boy!\n"
"What?\n"
"You think you're in disguise?\n"
"But it's so obvious who you are!"
);

DECLARE_MESSAGE_NES(0x7175,
"Wow!\n"
"What big eyes you have!\n"
"Gorons are so cute, aren't they!"
);

DECLARE_MESSAGE_NES(0x7176,
"Oh, I know that character!\n"
"It's Keaton!\n"
"He's very hot in Hyrule Castle\n"
"Town right now!"
);

DECLARE_MESSAGE_NES(0x7177,
"Oh, brother!\n"
"Boys will be boys!"
);

DECLARE_MESSAGE_NES(0x7178,
"Wait...wait...\n"
"I know who ya are...\n"
"Yer... Kin-ton!\n"
"Ain't that right?!"
);

DECLARE_MESSAGE_NES(0x7179,
"That's a scary one, ain't it?\n"
"Almost as scary as...Ingo!"
);

DECLARE_MESSAGE_NES(0x717A,
"Hey, that reminds me of my wife...\n"
"On second thought, it doesn't...\n"
"It doesn't look like her at all!"
);

DECLARE_MESSAGE_NES(0x717B,
"YAAAWWN...\n"
"I'm kinda tired right now...\n"
"Show it to me later..."
);

DECLARE_MESSAGE_NES(0x717C,
"Scram, kid!\n"
"Can't you see I'm busy?!"
);

DECLARE_MESSAGE_NES(0x717D,
"Humph!\n"
"It's fine to play like that when \n"
"you're a kid, but just wait until\n"
"you grow up! Work, work, work!"
);

DECLARE_MESSAGE_NES(0x717E,
"YEOW!\n"
"Humph. It's just a mask...\n"
"Scram, kid! Get out of here!"
);

DECLARE_MESSAGE_NES(0x717F,
"Heh heh heh...\n"
"Well, that cheered me up a little,\n"
"kid.\n"
"Thanks!"
);

DECLARE_MESSAGE_NES(0x7180,
"Hmmm... Let's see...\n"
"Yes, I'm quite sure of it...\n"
"That was manufactured from a \n"
"plank from a coffin. Yes, it was!"
);

DECLARE_MESSAGE_NES(0x7181,
"Ahhh...yes. Let's see...\n"
"Very fine craftsmanship.\n"
"But I don't think it would make\n"
"a good ingredient for my medicine."
);

DECLARE_MESSAGE_NES(0x7182,
"Very interesting! A Goron!\n"
"Speaking of Gorons, I wonder\n"
"how my old friend, Biggoron of\n"
"Death Mountain, is doing?"
);

DECLARE_MESSAGE_NES(0x7183,
"Very unusual construction...\n"
"I don't think it's water soluble,\n"
"so it wouldn't make a good \n"
"ingredient for my medicines..."
);

DECLARE_MESSAGE_NES(0x7184,
"Chomp chomp chomp...\n"
"OK, OK, a mask.\n"
"Do you want to buy some beans?"
);

DECLARE_MESSAGE_NES(0x7185,
"Chomp chomp chomp...\n"
"Nope, I don't want to buy it."
);

DECLARE_MESSAGE_NES(0x7186,
"Chomp chomp chomp...\n"
"Nope, it's not my style."
);

DECLARE_MESSAGE_NES(0x7187,
"Chomp chomp chomp...\n"
"Well...no, I don't think I \n"
"want it."
);

DECLARE_MESSAGE_NES(0x7188,
"What do you want?"
);

DECLARE_MESSAGE_NES(0x7189,
"You don't look like you can\n"
"swim very well..."
);

DECLARE_MESSAGE_NES(0x718A,
"Red hair...tan skin...\n"
"I've seen people like that before..."
);

DECLARE_MESSAGE_NES(0x718B,
"Yeah, right.\n"
"You look a little small for a\n"
"Zora..."
);

DECLARE_MESSAGE_NES(0x718C,
"Ho ho ho!\n"
"You Hylians...you are such silly\n"
"creatures!"
);

DECLARE_MESSAGE_NES(0x718D,
"That face...it gives me the chills..."
);

DECLARE_MESSAGE_NES(0x718E,
"Talk about a nostalgia trip!\n"
"That reminds me of my childhood\n"
"friend, Biggoron!"
);

DECLARE_MESSAGE_NES(0x718F,
"I don't think that's funny at all.\n"
"Are you mocking me?"
);

DECLARE_MESSAGE_NES(0x7190,
"You're a funny guy!"
);

DECLARE_MESSAGE_NES(0x7191,
"Your head--it's gigantic!"
);

DECLARE_MESSAGE_NES(0x7192,
"Don't do that...\n"
"It's embarrassing me!"
);

DECLARE_MESSAGE_NES(0x7193,
"All right! You actually decided\n"
"to become a Zora!\n"
"Are you actually ready to marry\n"
"me now?"
);

DECLARE_MESSAGE_NES(0x7194,
"WHOA!\n"
"My heart...started to beat \n"
"so fast!"
);

DECLARE_MESSAGE_NES(0x7195,
"That's an unpleasant mask...\n"
"Good-bye."
);

DECLARE_MESSAGE_NES(0x7196,
"Hrrrrm...\n"
"I don't know what to say."
);

DECLARE_MESSAGE_NES(0x7197,
"You shouldn't be so picky about\n"
"what you eat! Do you eat all your\n"
"green rocks? If you don't, you \n"
"won't grow up big and strong!"
);

DECLARE_MESSAGE_NES(0x7198,
"Leave me alone!"
);

DECLARE_MESSAGE_NES(0x7199,
"Are you trying to make me laugh?\n"
"Well, that's not that funny..."
);

DECLARE_MESSAGE_NES(0x719A,
"You're making me mad!"
);

DECLARE_MESSAGE_NES(0x719B,
"I hate Gerudos!!"
);

DECLARE_MESSAGE_NES(0x719C,
"Quit pestering me!\n"
"Go away!"
);

DECLARE_MESSAGE_NES(0x719D,
"Wah hah hah!\n"
"Do you think you're in disguise?\n"
"How funny!"
);

DECLARE_MESSAGE_NES(0x719E,
"Out of my way!\n"
"Get out of here!\n"
"You're asking for it, aren't you?"
);

DECLARE_MESSAGE_NES(0x719F,
"Hey, kid, you've got guts coming\n"
"around here wearing that!\n"
"Still, you can't fool us that\n"
"easily!"
);

DECLARE_MESSAGE_NES(0x71A0,
"What is that?\n"
"What does it have to do with\n"
"us?"
);

DECLARE_MESSAGE_NES(0x71A1,
"Ha ha hah!\n"
"You've got guts to spare, don't\n"
"you kid? \n"
"I like you!"
);

DECLARE_MESSAGE_NES(0x71A2,
"C'mon! It's time to get serious!"
);

DECLARE_MESSAGE_NES(0x71A3,
"That's odd...it kind of looks like\n"
"me...\n"
"No...not really.  Not at all,\n"
"if you look at it closely."
);

DECLARE_MESSAGE_NES(0x71A4,
"Hmm. No, no, no!\n"
"The ears aren't right at all!\n"
"They should be, you know, longer!"
);

DECLARE_MESSAGE_NES(0x71A5,
"Aren't you kind of scared, \n"
"walking around in the middle of\n"
"the night looking like that?"
);

DECLARE_MESSAGE_NES(0x71A6,
"Ha ha hah!\n"
"You really like those things,\n"
"don't you?!"
);

DECLARE_MESSAGE_NES(0x71A7,
"I think I've seen a stone that\n"
"looks like that somewhere...\n"
"Now where was that?\n"
"Hmmmm...."
);

DECLARE_MESSAGE_NES(0x71A8,
"Hurry up, " NAME "!\n"
"Any second now, the tower is \n"
"going to collapse!!"
);

DECLARE_MESSAGE_NES(0x71A9,
"Watch out for falling rubble!"
);

DECLARE_MESSAGE_NES(0x71AA,
NAME "!\n"
"Help me!"
);

DECLARE_MESSAGE_NES(0x71AB,
NAME "!\n"
"The exit is just over there!"
);

DECLARE_MESSAGE_NES(0x71AC,
"Thank you, " NAME ".\n"
"Now, let's hurry!"
);

DECLARE_MESSAGE_NES(0x71AD,
"Too bad!"BOX_BREAK"Practice hard and come back!" EVENT
);

DECLARE_MESSAGE_NES(0x71AE,
"Almost!!"BOX_BREAK"Well...all right!\n"
"I'll let you try one more time for\n"
"free...\n"
"This time, you gotta do it!" EVENT
);

DECLARE_MESSAGE_NES(0x71AF,
"Wonderful!!!\n"
"Bravo!!!\n"
"Perfect!!!"BOX_BREAK"Here's a fantastic present!" EVENT
);

DECLARE_MESSAGE_NES(0x71B0,
QUICKTEXT_ENABLE  COLOR("\x44") "Oh, no! " COLOR("\x41") "Time's up!\n"
COLOR("\x44") "The thing you were going to \n"
"deliver has spoiled!\n"
"Let's try again!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_NES(0x71B1,
QUICKTEXT_ENABLE "BOINNG! BOINNG!\n"
"The current time is: " TIME "!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_NES(0x71B2,
"You heard about us from the\n"
"guard at Death Mountain gate?\n"
"Well, I have to give\n"
"you a good deal then!"
);

DECLARE_MESSAGE_NES(0xFFFC,
"0123456789\n"
"ABCDEFGHIJKLMN\n"
"OPQRSTUVWXYZ\n"
"abcdefghijklmn\n"
"opqrstuvwxyz\n"
" -.\n"
);

DECLARE_MESSAGE_NES(0xFFFD,
""
);
