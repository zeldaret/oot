#include <ultra64.h>
#include <global.h>

#include <message_data_fmt.h>

#define DECLARE_MESSAGE_GER(textId, message) DECLARE_MESSAGE(textId, ger, message)

DECLARE_MESSAGE_GER(0x0001,
UNSKIPPABLE  ITEM_ICON("\x2D")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Ei " COLOR("\x40") "ausgeliehen!" QUICKTEXT_DISABLE "\n"
"Bald wird Kiki ausschlüpfen.\n"
"Gib es zurück, wenn Du\n"
"es nicht mehr benötigst!"
);

DECLARE_MESSAGE_GER(0x0002,
UNSKIPPABLE  ITEM_ICON("\x2F")  QUICKTEXT_ENABLE "Du hast Kiki zurückgegeben\n"
"und dafür " COLOR("\x41") "Henni" COLOR("\x40") " bekommen." QUICKTEXT_DISABLE "\n"
"Im Gegensatz zu anderen\n"
"Hühnern kräht Henni selten!"
);

DECLARE_MESSAGE_GER(0x0003,
UNSKIPPABLE  ITEM_ICON("\x30")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Schimmelpilz" COLOR("\x40") "!" QUICKTEXT_DISABLE  COLOR("\x41") "\n"
COLOR("\x40") "So ein frischer Pilz fault sehr\n"
"schnell. Also bringe ihn rasch\n"
"zum Hexenladen in Kakariko!"
);

DECLARE_MESSAGE_GER(0x0004,
UNSKIPPABLE  ITEM_ICON("\x31")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Modertrank" COLOR("\x40") "!" QUICKTEXT_DISABLE  COLOR("\x41") "\n"
COLOR("\x40") "Der Modertrank ist bestimmt\n"
"nützlich... Geh doch mal \n"
"in die Verlorenen Wälder!"
);

DECLARE_MESSAGE_GER(0x0005,
UNSKIPPABLE  ITEM_ICON("\x32")  QUICKTEXT_ENABLE "Du hast den Modertrank\n"
"gegen die " COLOR("\x41") "Säge" COLOR("\x40") " eingetauscht!" QUICKTEXT_DISABLE "\n"
"Der komische Kerl hat das\n"
"wohl hier liegen gelassen."
);

DECLARE_MESSAGE_GER(0x0006,
QUICKTEXT_ENABLE "Bomben   20 Stück   80 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen\n"
"Nicht kaufen" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0007,
UNSKIPPABLE  ITEM_ICON("\x48")  QUICKTEXT_ENABLE "Du hast eine " COLOR("\x41") "Munitionstasche\n"
"für Deku-Kerne" COLOR("\x40") " erhalten." QUICKTEXT_DISABLE "\n"
"In der Tasche kannst Du \n"
COLOR("\x46") "40 " COLOR("\x40") "Deku-Kerne aufbewahren!"
);

DECLARE_MESSAGE_GER(0x0008,
UNSKIPPABLE  ITEM_ICON("\x33")  QUICKTEXT_ENABLE "Du hast die Säge gegen ein\n"
COLOR("\x41") "zerbrochenes Goronen-Schwert\n"
COLOR("\x40") "eingetauscht!" QUICKTEXT_DISABLE "\n"
"Besuche damit Biggoron!"
);

DECLARE_MESSAGE_GER(0x0009,
UNSKIPPABLE  ITEM_ICON("\x34")  QUICKTEXT_ENABLE "Du hast Biggoron das\n"
"zerbrochene Goronen-Schwert\n"
"gegeben und dafür ein " COLOR("\x41") "Rezept\n"
COLOR("\x40") "erhalten!" QUICKTEXT_DISABLE " Geh zu König Zora!"
);

DECLARE_MESSAGE_GER(0x000A,
UNSKIPPABLE  ITEM_ICON("\x37")  QUICKTEXT_ENABLE "Biggorons Schwert!" QUICKTEXT_DISABLE "\n"
"Du hast ein " COLOR("\x41") "Zertifikat" COLOR("\x40") " erhalten.\n"
"Hoffentlich ist das Schwert\n"
"bald wieder repariert!"
);

DECLARE_MESSAGE_GER(0x000B,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Du hast das Langschwert\n"
"gegen das " COLOR("\x41") "Biggoron-Schwert\n"
COLOR("\x40") "getauscht!" QUICKTEXT_DISABLE " Diese Klinge ist\n"
"unzerbrechlich!"
);

DECLARE_MESSAGE_GER(0x000C,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Du hast das Zertifikat gegen\n"
"das " COLOR("\x41") "Biggoron-Schwert\n"
COLOR("\x40") "getauscht!" QUICKTEXT_DISABLE " Diese Klinge\n"
"ist unzerbrechlich!"
);

DECLARE_MESSAGE_GER(0x000D,
UNSKIPPABLE  ITEM_ICON("\x35")  QUICKTEXT_ENABLE "Du hast für das Rezept\n"
"einen " COLOR("\x41") "Glotzfrosch" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE "\n"
"Schnell! Bringe ihn zum Hylia-\n"
"See, bevor ihm warm wird!"
);

DECLARE_MESSAGE_GER(0x000E,
UNSKIPPABLE  ITEM_ICON("\x36")  QUICKTEXT_ENABLE "Du hast für den Glotzfrosch\n"
"die " COLOR("\x41") "Augentropfen" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE "\n"
"Bringe sie zu Biggoron, bevor\n"
"sie die Wirkung verlieren!"
);

DECLARE_MESSAGE_GER(0x000F,
SHIFT("\x24") "Herzlichen Glückwunsch!\n"
SHIFT("\x32")  COLOR("\x41") "Du hast gewonnen!" COLOR("\x40")  EVENT
);

DECLARE_MESSAGE_GER(0x0010,
ITEM_ICON("\x25")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Schädel-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um andere\n"
"zu erschrecken! Du fühlst\n"
"Dich wie ein böses Monster!"
);

DECLARE_MESSAGE_GER(0x0011,
ITEM_ICON("\x26")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Geister-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Eine Menge Leute\n"
"kannst Du damit erschrecken!"
);

DECLARE_MESSAGE_GER(0x0012,
ITEM_ICON("\x24")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Fuchs-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Wetten, Du machst\n"
"Dich damit beliebt?"
);

DECLARE_MESSAGE_GER(0x0013,
ITEM_ICON("\x27")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Hasenohren" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Die langen Ohren\n"
"sehen doch putzig aus!"
);

DECLARE_MESSAGE_GER(0x0014,
ITEM_ICON("\x28")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Goronen-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Du siehst selbst\n"
"fast aus wie ein Gorone..."
);

DECLARE_MESSAGE_GER(0x0015,
ITEM_ICON("\x29")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Zora-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Mit dieser Maske\n"
"bist Du einer von ihnen!"
);

DECLARE_MESSAGE_GER(0x0016,
ITEM_ICON("\x2A")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Gerudo-Maske" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu\n"
"zeigen! Du siehst damit aus\n"
"wie - ein Mädchen?!"
);

DECLARE_MESSAGE_GER(0x0017,
ITEM_ICON("\x2B")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Maske des Wissens" COLOR("\x40") "!" QUICKTEXT_DISABLE  COLOR("\x41") "\n"
COLOR("\x40") "Trage sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um sie\n"
"möglichst vielen Leuten\n"
"zu zeigen!"
);

DECLARE_MESSAGE_GER(0x0018,
"Willkommen auf der bombigen..."BOX_BREAK
SHIFT("\x2F")  COLOR("\x41") "Minenbowlingbahn!!!" COLOR("\x40") BOX_BREAK"Was man hier gewinnt? Das bleibt\n"
"zunächst mein " TEXT_SPEED("\x03") "Geheimnis." TEXT_SPEED("\x00") "\n"
"Ich verrate es erst, wenn Du für\n"
"ein Spiel bezahlt hast."BOX_BREAK"Ein Spiel kostet " COLOR("\x41") "30 Rubine" COLOR("\x40") ".\n"
"Willst Du?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0019,
QUICKTEXT_ENABLE  SHIFT("\x55") "OKAY!" QUICKTEXT_DISABLE BOX_BREAK"Ziele auf das Loch in der Mitte\n"
"und schicke eine " COLOR("\x41") "Krabbelmine" COLOR("\x40") " los!\n"
"Du hast " COLOR("\x41") "zehn" COLOR("\x40") " " COLOR("\x41") "Versuche" COLOR("\x40") ". Fertig?"BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x41") "LOS GEHT'S!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x001A,
"Willst Du nochmal spielen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x001B,
"Oh, das hätte ich fast vergessen!\n"
"Das hier kannst Du gewinnen!" EVENT
);

DECLARE_MESSAGE_GER(0x001C,
QUICKTEXT_ENABLE  COLOR("\x41") "Bomben   20 Stück   80 Rubine\n"
COLOR("\x40") "Halte die Bombe mit " COLOR("\x46") "[C]" COLOR("\x40") ", drücke\n"
"zum Ablegen nochmal " COLOR("\x46") "[C]" COLOR("\x40") "." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x001D,
QUICKTEXT_ENABLE  COLOR("\x41") "Bomben   30 Stück   120 Rubine\n"
COLOR("\x40") "Halte die Bombe mit " COLOR("\x46") "[C]" COLOR("\x40") ", drücke\n"
"zum Ablegen nochmal " COLOR("\x46") "[C]" COLOR("\x40") "." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x001E,
QUICKTEXT_ENABLE "Bomben   30 Stück   120 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x001F,
"Ein Fluch ist etwas Schreckliches!\n"
"Doch nun ist er von uns genommen!"
);

DECLARE_MESSAGE_GER(0x0020,
"Du hilfst doch auch meinen\n"
"Brüdern, oder?"BOX_BREAK"Ich bin sicher, sie geben Dir\n"
"noch etwas viel Besseres!"
);

DECLARE_MESSAGE_GER(0x0021,
UNSKIPPABLE "Der Fluch ist von mir genommen!\n"
"Tausend Dank! Hier ist eine\n"
"wertvolle Belohnung für Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x0022,
"Aarrrgh! Ich bin verflucht!"
);

DECLARE_MESSAGE_GER(0x0023,
"Wir werden künftig aufpassen, daß\n"
"uns nicht wieder jemand verflucht!"
);

DECLARE_MESSAGE_GER(0x0024,
"Du hast " COLOR("\x41")  TOKENS " " COLOR("\x40") "Skulltulas zerstört,\n"
"daher läßt nun langsam die \n"
"Wirkung des Fluchs nach."BOX_BREAK"Haben Dir meine Kinder, die Du\n"
"erlöst hast, etwas zur Belohnung\n"
"gegeben?"BOX_BREAK"Man wird übrigens nur dann\n"
COLOR("\x41") "sehr reich" COLOR("\x40") ", wenn man so viele\n"
"goldene Skulltulas wie möglich\n"
"vernichtet."BOX_BREAK"Du findest sie nur, wenn Du\n"
"Deine Umgebung stets\n"
"aufmerksam erkundest!"BOX_BREAK"Bitte hilf uns!\n"
"Wir zählen auf Dich!"
);

DECLARE_MESSAGE_GER(0x0025,
UNSKIPPABLE "Wir sehen so aus, weil auf uns\n"
"der Fluch der Skulltulas lastet.\n"
"Aber..." TEXTID("\x00\x24")
);

DECLARE_MESSAGE_GER(0x0026,
"Wir sehen so aus, weil auf uns\n"
"der " COLOR("\x41") "Fluch der Skulltulas" COLOR("\x40") " lastet."BOX_BREAK"Werden jedoch alle Skulltulas\n"
"dieser Welt zerstört, verliert\n"
"der Fluch seine Wirkung."BOX_BREAK"Tötest Du eine Skulltula, erscheint\n"
"ein Symbol. Sammle es ein!"BOX_BREAK
ITEM_ICON("\x71") "Die Zahl neben dem " COLOR("\x46") "Spinnensymbol" COLOR("\x40") "\n"
"auf dem " COLOR("\x44") "Status-Bildschirm" COLOR("\x40") " gibt an,\n"
"wieviele Skulltulas Du bis zu\n"
"diesem Zeitpunkt zerstört hast."BOX_BREAK
ITEM_ICON("\x71") "Erscheint das " COLOR("\x46") "Spinnensymbol" COLOR("\x40") " neben\n"
"einem Namen auf dem " COLOR("\x41") "Karten-\n"
"Bildschirm" COLOR("\x40") ", findest Du in diesem\n"
"Gebiet keine Skulltulas mehr." TEXTID("\x00\xFE")
);

DECLARE_MESSAGE_GER(0x0027,
"Brichst Du den Fluch, werden\n"
"wir Dich " COLOR("\x41") "reich" COLOR("\x40") " belohnen."
);

DECLARE_MESSAGE_GER(0x0028,
UNSKIPPABLE "Da Du " COLOR("\x41")  TOKENS  COLOR("\x40") " Skulltulas zerstört\n"
"hast, wurde nun endlich der Fluch\n"
"von mir genommen."BOX_BREAK
UNSKIPPABLE "Vielen Dank! Hier ist ein Zeichen\n"
"meiner Dankbarkeit!\n"
"Bitte nimm es an!" EVENT
);

DECLARE_MESSAGE_GER(0x0029,
"Danke, daß Du meine\n"
"Kinder befreit hast."BOX_BREAK"Was mit mir ist? Oh, das ist\n"
"schon in Ordnung."BOX_BREAK"Du hast jetzt bereits\n"
COLOR("\x41")  TOKENS  COLOR("\x40") " Skulltulas zerstört! Mach Dir\n"
"um mich mal keine Sorgen..."
);

DECLARE_MESSAGE_GER(0x002A,
QUICKTEXT_ENABLE "Krabbelminen 20 Stück 180 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x002B,
"Willst Du ein Spielchen wagen?\n"
"Es kostet Dich nur " COLOR("\x41") "20 Rubine" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x002C,
"Pech gehabt! Dafür brauchst Du\n"
"einen Bogen!" EVENT
);

DECLARE_MESSAGE_GER(0x002D,
"Na gut. Dann eben nicht!" EVENT
);

DECLARE_MESSAGE_GER(0x002E,
QUICKTEXT_ENABLE "OKAY!" QUICKTEXT_DISABLE "\n"
"Das hier ist nur was für echte\n"
"Kerle! Die berühmteste\n"
COLOR("\x41") "Schießbude" COLOR("\x40") " des Landes!"BOX_BREAK"Stell Dich auf die Plattform und\n"
"ziele genau! Du hast " COLOR("\x41") "fünfzehn" COLOR("\x40") "\n"
"Schüsse und mußt alle " COLOR("\x41") "zehn\n"
COLOR("\x40") "Steine treffen!"BOX_BREAK"Schieße mit " COLOR("\x41") "[B]" COLOR("\x40") ". \n"
"Fertig? Dann los und viel Glück!" EVENT
);

DECLARE_MESSAGE_GER(0x002F,
"Hier ist ein Loch in der Erde. Ob\n"
"man wohl etwas einpflanzen kann?"
);

DECLARE_MESSAGE_GER(0x0030,
UNSKIPPABLE  ITEM_ICON("\x06")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Feen-Schleuder" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü " COLOR("\x40") "kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder" COLOR("\x46") " [C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "Drücke " COLOR("\x46") "[C]" COLOR("\x40") ", um die Schleuder\n"
"zu benutzen. Halte " COLOR("\x46") "[C] " COLOR("\x40") "und\n"
"ziele mit " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Laß " COLOR("\x46") "[C]" COLOR("\x40") " los,\n"
"um " COLOR("\x41") "Deku-Kerne " COLOR("\x40") "abzuschießen!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "Wenn Du sofort schießen\n"
"willst, halte " COLOR("\x46") "[C]" COLOR("\x40") " etwas länger\n"
"gedrückt und laß dann los."
);

DECLARE_MESSAGE_GER(0x0031,
UNSKIPPABLE  ITEM_ICON("\x03")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Feen-Bogen" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x03") "Drücke " COLOR("\x46") "[C]" COLOR("\x40") ", um den Bogen\n"
"zu benutzen. Halte " COLOR("\x46") "[C]" COLOR("\x40") " und\n"
"ziele mit " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Laß " COLOR("\x46") "[C]" COLOR("\x40") " los,\n"
"um " COLOR("\x41") "Pfeile" COLOR("\x40") " abzuschießen!"
);

DECLARE_MESSAGE_GER(0x0032,
ITEM_ICON("\x02")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Bomben" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im Gegenstands-Menü kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x02") "Mit " COLOR("\x46") "[C]" COLOR("\x40") " kannst Du sie halten\n"
"und ablegen. Drückst Du " COLOR("\x46") "[C]\n"
COLOR("\x40") "während Du rennst, kannst\n"
"Du die Bomben auch werfen!"
);

DECLARE_MESSAGE_GER(0x0033,
ITEM_ICON("\x09")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Krabbelminen" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x09") "Lege sie mit " COLOR("\x46") "[C]" COLOR("\x40") " ab.\n"
"Diese neuartige Bombe kann\n"
"an Wänden hinaufkrabbeln -\n"
"also ziele gut!"
);

DECLARE_MESSAGE_GER(0x0034,
ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Deku-Nuß" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x01") "Wirf die Deku-Nuß. Sie wird\n"
"zerplatzen und Deine\n"
"Gegner betäuben!"
);

DECLARE_MESSAGE_GER(0x0035,
UNSKIPPABLE  ITEM_ICON("\x0E")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Bumerang" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0E") "Drücke " COLOR("\x46") "[C]" COLOR("\x40") ", um Gegner\n"
"zu treffen, die weiter\n"
"entfernt sind!"
);

DECLARE_MESSAGE_GER(0x0036,
UNSKIPPABLE  ITEM_ICON("\x0A")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Fanghaken!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "Benutze ihn, um entfernte\n"
"Objekte zu Dir zu holen oder\n"
"um Dich an ein Objekt\n"
"heranzuziehen."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "Halte " COLOR("\x46") "[C]" COLOR("\x40") " gedrückt und ziele\n"
"mit " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Läßt Du " COLOR("\x46") "[C] " COLOR("\x40") "los,\n"
"schießt Du den Fanghaken ab."
);

DECLARE_MESSAGE_GER(0x0037,
ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Deku-Stab" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x00") "Benutze ihn mit " COLOR("\x46") "[C]" COLOR("\x40") ". Wenn Du\n"
COLOR("\x42") "[A]" COLOR("\x40") " drückst, kannst Du ihn\n"
"wieder wegpacken."BOX_BREAK
ITEM_ICON("\x00") " Du kannst höchstens\n"
"10 Deku-Stäbe tragen, also\n"
"setze sie mit Bedacht ein!"
);

DECLARE_MESSAGE_GER(0x0038,
UNSKIPPABLE  ITEM_ICON("\x11")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Stahlhammer" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Drücke " COLOR("\x46") "[C]" COLOR("\x40") ", um mit ihm\n"
"Objekte zu zerschlagen!\n"
"Du brauchst beide Hände!"
);

DECLARE_MESSAGE_GER(0x0039,
UNSKIPPABLE  ITEM_ICON("\x0F")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Auge der Wahrheit" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Plaziere es auf " COLOR("\x46") "[C]" COLOR("\x40") " und sieh\n"
"mit " COLOR("\x46") "[C] " COLOR("\x40") "hindurch! Du wirst\n"
"viele Geheimnisse lüften!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0F") "Setzt Du es ein,\n"
"kostet es magische Energie.\n"
"Mit " COLOR("\x46") "[C] " COLOR("\x40") "kannst Du es auch\n"
"wieder deaktivieren."
);

DECLARE_MESSAGE_GER(0x003A,
UNSKIPPABLE  ITEM_ICON("\x08")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Okarina der Zeit" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Die Okarina ist ein Artefakt\n"
"aus dem Besitz des Königs.\n"
"Sie hat geheimnisvolle Kräfte!"
);

DECLARE_MESSAGE_GER(0x003B,
"Du hast Farores Kräfte beschworen!\n"
THREE_CHOICE  COLOR("\x42") "Zum Teleporter zurück\n"
"Teleporter entfernen\n"
"Zurück" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x003C,
UNSKIPPABLE  ITEM_ICON("\x67")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Amulett des Feuers" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Darunia gibt sich als einer\n"
"der Weisen zu erkennen und\n"
"überträgt Dir seine Kraft!"
);

DECLARE_MESSAGE_GER(0x003D,
UNSKIPPABLE  ITEM_ICON("\x68")  QUICKTEXT_ENABLE "Das " COLOR("\x43") "Amulett des Wassers" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Ruto gibt sich als eine der\n"
"Weisen zu erkennen und\n"
"überträgt Dir ihre Kraft!"
);

DECLARE_MESSAGE_GER(0x003E,
UNSKIPPABLE  ITEM_ICON("\x66")  QUICKTEXT_ENABLE "Das " COLOR("\x42") "Amulett des Waldes" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Salia gibt sich als eine der\n"
"Weisen zu erkennen und\n"
"überträgt Dir ihre Kraft!"
);

DECLARE_MESSAGE_GER(0x003F,
UNSKIPPABLE  ITEM_ICON("\x69")  QUICKTEXT_ENABLE "Das " COLOR("\x46") "Amulett der Geister" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Naboru gibt sich als eine der\n"
"Weisen zu erkennen und\n"
"überträgt Dir ihre Kraft!"
);

DECLARE_MESSAGE_GER(0x0040,
UNSKIPPABLE  ITEM_ICON("\x6B")  QUICKTEXT_ENABLE "Das " COLOR("\x44") "Amulett des Lichts" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Rauru, der Weise, gibt\n"
"Dir seine Kraft!"
);

DECLARE_MESSAGE_GER(0x0041,
UNSKIPPABLE  ITEM_ICON("\x6A")  QUICKTEXT_ENABLE "Das " COLOR("\x45") "Amulett des Schattens" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Impa gibt sich als eine der\n"
"Weisen zu erkennen und\n"
"überträgt Dir ihre Kraft!"
);

DECLARE_MESSAGE_GER(0x0042,
UNSKIPPABLE  ITEM_ICON("\x14")  QUICKTEXT_ENABLE "Eine leere" COLOR("\x41") " Flasche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Plaziere die Flasche auf " COLOR("\x46") "[C]" COLOR("\x40") ",\n"
"um sie einzusetzen."
);

DECLARE_MESSAGE_GER(0x0043,
ITEM_ICON("\x15")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Rote Elixier" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du es auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x15") "Benutze es mit " COLOR("\x46") "[C]" COLOR("\x40") ", um Deine \n"
"Energieleiste aufzufüllen.\n"
"Das Elixier befindet sich in\n"
"einer Deiner Flaschen."
);

DECLARE_MESSAGE_GER(0x0044,
ITEM_ICON("\x16")  QUICKTEXT_ENABLE "Das " COLOR("\x42") "Grüne Elixier" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im Gegenstands-Menü kannst\n"
"Du es auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x16") "Benutze es mit " COLOR("\x46") "[C]" COLOR("\x40") ", um Deine \n"
"Magieleiste aufzufüllen.\n"
"Das Elixier befindet sich in\n"
"einer Deiner Flaschen."
);

DECLARE_MESSAGE_GER(0x0045,
ITEM_ICON("\x17")  QUICKTEXT_ENABLE "Das " COLOR("\x43") "Blaue Elixier" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Benutze es mit " COLOR("\x46") "[C]" COLOR("\x40") ", um\n"
"Magie- und Energieleiste\n"
"komplett aufzufüllen!"
);

DECLARE_MESSAGE_GER(0x0046,
ITEM_ICON("\x18")  QUICKTEXT_ENABLE "Du besitzt jetzt eine " COLOR("\x41") "Fee" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
ITEM_ICON("\x18") "Diese kleine Fee wird Dich\n"
"wiederbeleben, wenn Du keine\n"
"Energie mehr hast."BOX_BREAK
ITEM_ICON("\x18") "Hast Du sie auf " COLOR("\x46") "[C] " COLOR("\x40") "plaziert, \n"
"kannst Du ihre Hilfe jederzeit\n"
"in Anspruch nehmen."
);

DECLARE_MESSAGE_GER(0x0047,
ITEM_ICON("\x19")  QUICKTEXT_ENABLE "Du besitzt jetzt einen " COLOR("\x41") "Fisch" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Lasse ihn mit " COLOR("\x46") "[C]" COLOR("\x40") " frei. Er sieht\n"
"richtig frisch aus!"BOX_BREAK
ITEM_ICON("\x19") "Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren.\n"
"Mit " COLOR("\x46") "[C] " COLOR("\x40") "läßt Du ihn frei."
);

DECLARE_MESSAGE_GER(0x0048,
ITEM_ICON("\x10")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Wundererbse" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Suche nach einer Stelle,\n"
"um sie mit " COLOR("\x46") "[C] " COLOR("\x40") "einzupflanzen.\n"
"Warte ab, was passiert!"BOX_BREAK
ITEM_ICON("\x10") "Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren und\n"
"mit " COLOR("\x46") "[C]" COLOR("\x40") " einpflanzen."
);

DECLARE_MESSAGE_GER(0x0049,
"Tut mir leid... Na gut, also..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x45")  COLOR("\x41") "LOS GEHT'S!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x004A,
UNSKIPPABLE  ITEM_ICON("\x07")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Feen-Okarina" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Sie ist ein Andenken an Salia!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "Mit " COLOR("\x42") "[A]" COLOR("\x40") " und " COLOR("\x46") "[C] " COLOR("\x40") "spielst\n"
"Du eine Melodie. Mit " COLOR("\x41") "[B]" COLOR("\x40") " kannst\n"
"Du aufhören oder neu beginnen."
);

DECLARE_MESSAGE_GER(0x004B,
ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Langschwert" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Schwinge es mit " COLOR("\x41") "[B]" COLOR("\x40") "!\n"
"Benutzt Du es, kannst Du\n"
"Deinen " COLOR("\x44") "Schild" COLOR("\x40") " nicht einsetzen!"
);

DECLARE_MESSAGE_GER(0x004C,
ITEM_ICON("\x3E")  QUICKTEXT_ENABLE "Der " COLOR("\x44") "Deku-Schild" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Gehe ins " COLOR("\x42") "Ausrüstungs-Menü" COLOR("\x40") ",\n"
"um ihn mit " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "auszuwählen."BOX_BREAK
ITEM_ICON("\x3E") "Drücke " COLOR("\x44") "[R]" COLOR("\x40") ", um Angriffe\n"
"abzuwehren. Drückst Du " COLOR("\x44") "[R]" COLOR("\x40") " und\n"
"bewegst " COLOR("\x44") "[L]" COLOR("\x40") ", schwenkst Du\n"
"den Schild."
);

DECLARE_MESSAGE_GER(0x004D,
ITEM_ICON("\x3F")  QUICKTEXT_ENABLE "Der " COLOR("\x44") "Hylia-Schild" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Gehe ins " COLOR("\x42") "Ausrüstungs-Menü" COLOR("\x40") ",\n"
"um ihn mit " COLOR("\x42") "[A]" COLOR("\x40") " auszuwählen."
);

DECLARE_MESSAGE_GER(0x004E,
UNSKIPPABLE  ITEM_ICON("\x40")  QUICKTEXT_ENABLE "Der " COLOR("\x44") "Spiegel-Schild" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Der Spiegel-Schild reflektiert\n"
"Licht oder Energie. Mit " COLOR("\x44") "[R]" COLOR("\x40") "\n"
"setzt Du ihn ein."
);

DECLARE_MESSAGE_GER(0x004F,
UNSKIPPABLE  ITEM_ICON("\x0B")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Enterhaken" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Dies ist ein viel besserer\n"
"Fanghaken - er reicht\n"
COLOR("\x41") "doppelt so weit" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x0050,
ITEM_ICON("\x42")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Goronen-Rüstung" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Diese feuerfeste Rüstung\n"
"paßt nur Erwachsenen. Sie\n"
"schützt vor extremer Hitze!"
);

DECLARE_MESSAGE_GER(0x0051,
ITEM_ICON("\x43")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Zora-Rüstung" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Diese Unterwasser-Rüstung\n"
"paßt nur Erwachsenen. Du\n"
"kannst unter Wasser atmen!"
);

DECLARE_MESSAGE_GER(0x0052,
QUICKTEXT_ENABLE "Ein " COLOR("\x42") "Magie-Krug" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Deine Magieleiste\n"
"wird aufgefüllt."
);

DECLARE_MESSAGE_GER(0x0053,
UNSKIPPABLE  ITEM_ICON("\x45")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Eisenstiefel" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Zu schwer, um zu rennen.\n"
"Zu schwer, um zu schwimmen."
);

DECLARE_MESSAGE_GER(0x0054,
UNSKIPPABLE  ITEM_ICON("\x46")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Gleitstiefel" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Mit diesen seltsamen Schuhen\n"
"schwebst Du über den Boden."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x46") "Du kannst damit für\n"
"kurze Zeit sogar Abgründe\n"
"überqueren. Habe Mut und\n"
"vertraue den Stiefeln!"
);

DECLARE_MESSAGE_GER(0x0055,
QUICKTEXT_ENABLE "Ein " COLOR("\x45") "Herz" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Es füllt eines Deiner \n"
"Energieherzen auf!"
);

DECLARE_MESSAGE_GER(0x0056,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Große Köcher" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du insgesamt\n"
COLOR("\x46") "40 " COLOR("\x40") "Pfeile tragen!"
);

DECLARE_MESSAGE_GER(0x0057,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Riesenköcher" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du insgesamt\n"
COLOR("\x46") "50" COLOR("\x40") " Pfeile tragen!"
);

DECLARE_MESSAGE_GER(0x0058,
UNSKIPPABLE  ITEM_ICON("\x4D")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Bombentasche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Diese Bombentasche ist aus\n"
"Dodongo-Leder hergestellt."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x02")  QUICKTEXT_ENABLE "Darin findest Du " COLOR("\x41") "20 Bomben" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Du kannst die Bomben auf " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"plazieren und Hindernisse\n"
"wegsprengen! Das ist bombig!"
);

DECLARE_MESSAGE_GER(0x0059,
UNSKIPPABLE  ITEM_ICON("\x4E")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Große Bombentasche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du insgesamt " COLOR("\x46") "30" COLOR("\x40") "\n"
"Bomben tragen!"
);

DECLARE_MESSAGE_GER(0x005A,
UNSKIPPABLE  ITEM_ICON("\x4F")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Riesen-Bombentasche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du insgesamt " COLOR("\x46") "40\n"
COLOR("\x40") "Bomben tragen!"
);

DECLARE_MESSAGE_GER(0x005B,
UNSKIPPABLE  ITEM_ICON("\x51")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Krafthandschuhe" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Trägst Du sie, hast Du\n"
"die Kraft, mit " COLOR("\x42") "[A]" COLOR("\x40") " auch sehr\n"
"schwere Dinge anzuheben!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x51") "Aber einem kleinen Jungen\n"
"sind sie zu groß... Zudem hast\n"
"Du versprochen, sie " COLOR("\x41") "Naboru" COLOR("\x40") " zu\n"
"geben! Halte also Wort!"
);

DECLARE_MESSAGE_GER(0x005C,
UNSKIPPABLE  ITEM_ICON("\x52")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Titanhandschuhe" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Du fühlst noch größere Kraft\n"
"in den Armen! Du packst\n"
"schwerste Dinge mit " COLOR("\x42") "[A]" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x005D,
ITEM_ICON("\x1C")  QUICKTEXT_ENABLE  COLOR("\x44") "Blaues Feuer" COLOR("\x40") " eingefangen!" QUICKTEXT_DISABLE "\n"
"Es ist eine kalte Flamme.\n"
"Benutze sie mit\n"
COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down]" COLOR("\x40") " oder" COLOR("\x46") " [C-Right]" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x005E,
UNSKIPPABLE  ITEM_ICON("\x56")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Große Börse" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt hast Du eine größere\n"
"Geldbörse erhalten und kannst\n"
"insgesamt " COLOR("\x46") "200" COLOR("\x40") " " COLOR("\x46") "Rubine" COLOR("\x40") " tragen!"
);

DECLARE_MESSAGE_GER(0x005F,
UNSKIPPABLE  ITEM_ICON("\x57")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Riesenbörse" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Welch eine riesige Geldbörse!\n"
"Jetzt kannst Du sogar \n"
COLOR("\x46") "500 Rubine" COLOR("\x40") " tragen!"
);

DECLARE_MESSAGE_GER(0x0060,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "kleiner Schlüssel" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Er öffnet eine verschlossene\n"
"Tür. Du kannst ihn nur in\n"
"diesem Labyrinth einsetzen."
);

DECLARE_MESSAGE_GER(0x0061,
QUICKTEXT_ENABLE  COLOR("\x41") "Krabbelmine  20 Stück  180 Rubine\n"
COLOR("\x40") "Das ist eine praktische Zeitbombe,\n"
"die Du als Distanzwaffe\n"
"einsetzen kannst!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0062,
QUICKTEXT_ENABLE "Rotes Elixier   40 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0063,
QUICKTEXT_ENABLE "Rotes Elixier   50 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0064,
QUICKTEXT_ENABLE  COLOR("\x41") "Rotes Elixier   40 Rubine\n"
COLOR("\x40") "Damit füllst Du Deine Energieleiste\n"
"wieder vollständig auf.\n"
"Zur einmaligen Anwendung." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0065,
QUICKTEXT_ENABLE  COLOR("\x41") "Rotes Elixier   50 Rubine\n"
COLOR("\x40") "Damit füllst Du Deine Energieleiste\n"
"wieder vollständig auf.\n"
"Zur einmaligen Anwendung." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0066,
ITEM_ICON("\x76")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Labyrinth-Karte" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Drücke " COLOR("\x44") "START" COLOR("\x40") ", um sie im\n"
COLOR("\x41") "Karten-Bildschirm " COLOR("\x40") "anzusehen!"BOX_BREAK
ITEM_ICON("\x76")  COLOR("\x43") "Blaue Räume" COLOR("\x40") " hast Du bereits\n"
"aufgesucht.\n"
"Der " COLOR("\x44") "blinkende Raum " COLOR("\x40") "zeigt\n"
"Deine derzeitige Position."BOX_BREAK
ITEM_ICON("\x76") "Bewege " COLOR("\x44") "[Control Stick]" COLOR("\x40") "," COLOR("\x44") " " COLOR("\x40") "um ein\n"
"Stockwerk auszuwählen."
);

DECLARE_MESSAGE_GER(0x0067,
ITEM_ICON("\x75")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Kompaß" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt siehst Du auf Deiner\n"
"Karte alle Schatztruhen\n"
"dieses Labyrinths!"
);

DECLARE_MESSAGE_GER(0x0068,
UNSKIPPABLE  ITEM_ICON("\x6F")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Stein des Wissens" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Benutzt Du ab jetzt Dein\n"
COLOR("\x44") "Rumble Feature" COLOR("\x40") ", reagiert es... auf\n"
"naheliegende Geheimnisse!"
);

DECLARE_MESSAGE_GER(0x0069,
UNSKIPPABLE  ITEM_ICON("\x23")  QUICKTEXT_ENABLE "Das ist " COLOR("\x41") "Zeldas Brief" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Er trägt Prinzessin Zeldas\n"
"Unterschrift!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x23") "Im " COLOR("\x46") "Gegenstands-Menü " COLOR("\x40") "kannst\n"
"Du ihn auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down] " COLOR("\x40") "oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren. Benutze " COLOR("\x46") "[C]" COLOR("\x40") ", um ihn\n"
"jemandem zu zeigen."
);

DECLARE_MESSAGE_GER(0x006A,
QUICKTEXT_ENABLE "Hi! Was soll's denn sein?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ich will einkaufen!\n"
"Ich schau nur mal..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x006B,
QUICKTEXT_ENABLE "Möchtest Du noch etwas kaufen?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x006C,
ITEM_ICON("\x49")  QUICKTEXT_ENABLE "Deine " COLOR("\x41") "Munitionstasche\n"
COLOR("\x40") "ist größer geworden!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du insgesamt\n"
COLOR("\x46") "50" COLOR("\x41") " Deku-Kerne " COLOR("\x40") "tragen!"
);

DECLARE_MESSAGE_GER(0x006D,
"Öffne eine Truhe und... Voilà!\n"
"Findest Du einen Schlüssel, darfst\n"
"Du den nächsten Raum betreten!\n"
"Links oder rechts? Probier's aus!"BOX_BREAK
COLOR("\x41") "10 Rubine " COLOR("\x40") "pro Spiel.\n"
"Machst Du mit?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x006E,
"Klasse! Ein echter Zocker!"
);

DECLARE_MESSAGE_GER(0x006F,
QUICKTEXT_ENABLE "Du hast einen " COLOR("\x42") "Rubin" COLOR("\x40") "\n"
"erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0070,
UNSKIPPABLE  ITEM_ICON("\x04")  QUICKTEXT_ENABLE "Die " COLOR("\x41") "Feuer-Pfeile" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Plaziere sie auf " COLOR("\x46") "[C]" COLOR("\x40") "," COLOR("\x46") " " COLOR("\x40") "um sie\n"
"abzuschießen! Triffst Du,\n"
"wird Dein Ziel entflammen!"
);

DECLARE_MESSAGE_GER(0x0071,
UNSKIPPABLE  ITEM_ICON("\x0C")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Eis-Pfeile" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Plaziere sie auf " COLOR("\x46") "[C]" COLOR("\x40") ", um sie\n"
"zu verschießen! Triffst Du,\n"
"wird Dein Ziel einfrieren!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0C") "Diese magischen Pfeile darf\n"
"nur der verschießen, der das\n"
"Kampftraining der Gerudo-\n"
"Kriegerinnen bestanden hat!"
);

DECLARE_MESSAGE_GER(0x0072,
UNSKIPPABLE  ITEM_ICON("\x12")  QUICKTEXT_ENABLE "Die " COLOR("\x44") "Licht-Pfeile" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Plaziere sie auf " COLOR("\x46") "[C]" COLOR("\x40") ", um sie \n"
"zu verschießen - das Licht\n"
"des Guten zerstört Böses!"
);

DECLARE_MESSAGE_GER(0x0073,
UNSKIPPABLE  SHIFT("\x46") "Du hast das\n"
SHIFT("\x32")  COLOR("\x42") "Menuett des Waldes\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0074,
UNSKIPPABLE  SHIFT("\x46") "Du hast den\n"
SHIFT("\x35")  COLOR("\x41") "Bolero des Feuers\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0075,
UNSKIPPABLE  SHIFT("\x46") "Du hast die\n"
SHIFT("\x29")  COLOR("\x43") "Serenade des Wassers\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0076,
UNSKIPPABLE  SHIFT("\x46") "Du hast das\n"
SHIFT("\x2F")  COLOR("\x46") "Requiem der Geister\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0077,
UNSKIPPABLE  SHIFT("\x46") "Du hast die\n"
SHIFT("\x29")  COLOR("\x45") "Nocturne des Schattens\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0078,
UNSKIPPABLE  SHIFT("\x46") "Du hast die\n"
SHIFT("\x33")  COLOR("\x44") "Kantate des Lichts\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x0079,
UNSKIPPABLE  ITEM_ICON("\x50")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Goronen-Armband" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Nun kannst Du Donnerblumen\n"
"pflücken. Stelle Dich davor\n"
"und nimm sie mit " COLOR("\x42") "[A]" COLOR("\x40") " auf!"
);

DECLARE_MESSAGE_GER(0x007A,
ITEM_ICON("\x1D")  QUICKTEXT_ENABLE "Du hast einen " COLOR("\x41") "Käfer " COLOR("\x40") "gefangen!" QUICKTEXT_DISABLE "\n"
"Du kannst ihn mit " COLOR("\x46") "[C]" COLOR("\x40") " freilassen.\n"
"Du findest diese Käfer häufig in \n"
"dunklen Erdhöhlen."
);

DECLARE_MESSAGE_GER(0x007B,
UNSKIPPABLE  ITEM_ICON("\x70")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Gerudo-Paß" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt hast Du Zutritt zur\n"
"großen Trainingsarena der\n"
"Gerudo-Kriegerinnen."
);

DECLARE_MESSAGE_GER(0x007C,
QUICKTEXT_ENABLE "Bomben  10 Stück  50 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x007D,
QUICKTEXT_ENABLE "Pfeile  50 Stück  90 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x007E,
QUICKTEXT_ENABLE "Fisch   200 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x007F,
QUICKTEXT_ENABLE "Deku-Nüsse   5 Stück   15 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0080,
UNSKIPPABLE  ITEM_ICON("\x6C")  QUICKTEXT_ENABLE "Der " COLOR("\x42") "Kokiri-Smaragd" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Der Deku-Baum hat Dir diesen\n"
"Heiligen Stein des Waldes\n"
"anvertraut!"
);

DECLARE_MESSAGE_GER(0x0081,
UNSKIPPABLE  ITEM_ICON("\x6D")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Goronen-Opal" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Von den Goronen wurde Dir\n"
"dieser Heilige Stein\n"
"des Feuers übergeben!"
);

DECLARE_MESSAGE_GER(0x0082,
UNSKIPPABLE  ITEM_ICON("\x6E")  QUICKTEXT_ENABLE "Der " COLOR("\x43") "Zora-Saphir" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Von den Zoras wurde Dir\n"
"dieser Heilige Stein\n"
"des Wassers übergeben!"
);

DECLARE_MESSAGE_GER(0x0083,
QUICKTEXT_ENABLE "Wähle aus, indem Du " COLOR("\x44") "[Control Stick] " COLOR("\x40") "nach\n"
"links oder rechts bewegst.\n"
TWO_CHOICE  COLOR("\x42") "Mit dem Verkäufer sprechen\n"
"Zurück" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0084,
QUICKTEXT_ENABLE "Vielen Dank!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0085,
QUICKTEXT_ENABLE "Deine Rubine reichen nicht aus!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0086,
QUICKTEXT_ENABLE "Das kannst Du jetzt nicht kaufen." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0087,
QUICKTEXT_ENABLE "Deku-Nüsse   10 Stück  30 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0088,
QUICKTEXT_ENABLE "Deku-Stab  1 Stück   10 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0089,
QUICKTEXT_ENABLE "Deku-Schild   40 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x008A,
QUICKTEXT_ENABLE "Pfeile   10 Stück   20 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x008B,
QUICKTEXT_ENABLE "Bomben   5 Stück   25 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x008C,
QUICKTEXT_ENABLE "Krabbelmine  10 Stück  100 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x008D,
"Mit dem Nachtschwärmer bist Du\n"
"hier falsch! Verkaufe ihn dem\n"
"Mann im Haus rechts vom Burgtor!"
);

DECLARE_MESSAGE_GER(0x008E,
QUICKTEXT_ENABLE "Rotes Elixier   30 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x008F,
QUICKTEXT_ENABLE "Grünes Elixier   30 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0090,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Jetzt kannst Du insgesamt\n"
COLOR("\x46") "20" COLOR("\x40") " " COLOR("\x41") "Deku-Stäbe " COLOR("\x40") "tragen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0091,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Jetzt kannst Du insgesamt\n"
COLOR("\x46") "30" COLOR("\x40") " " COLOR("\x41") "Deku-Stäbe" COLOR("\x40") " tragen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0092,
QUICKTEXT_ENABLE "Hylia-Schild   80 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0093,
QUICKTEXT_ENABLE "Goronen-Rüstung   200 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0094,
QUICKTEXT_ENABLE "Zora-Rüstung   300 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0095,
QUICKTEXT_ENABLE "Herz   10 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0096,
QUICKTEXT_ENABLE "Tut mir leid... Du brauchst eine\n"
"leere Flasche, damit Du das hier\n"
"kaufen kannst." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x0097,
ITEM_ICON("\x20")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Irrlicht" COLOR("\x40") " in Deiner\n"
"Flasche gefangen!" QUICKTEXT_DISABLE "\n"
"Dir wird Gutes widerfahren!"
);

DECLARE_MESSAGE_GER(0x0098,
ITEM_ICON("\x1A")  QUICKTEXT_ENABLE "Du hast" COLOR("\x41") " Milch " COLOR("\x40") "erhalten!" QUICKTEXT_DISABLE "\n"
"Diese Milch ist sehr gesund!\n"
"Benutze sie mit " COLOR("\x46") "[C]" COLOR("\x40") ", um Deine\n"
"Energie aufzufrischen!"BOX_BREAK
ITEM_ICON("\x1A") "Du erhältst " COLOR("\x41") "fünf Herzen " COLOR("\x40") "pro\n"
"Schluck. Du kannst zweimal\n"
"davon trinken."BOX_BREAK
ITEM_ICON("\x1A") "Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du sie auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren. Mit " COLOR("\x46") "[C] " COLOR("\x40") "nimmst Du\n"
"einen Schluck."
);

DECLARE_MESSAGE_GER(0x0099,
UNSKIPPABLE  ITEM_ICON("\x1B")  QUICKTEXT_ENABLE "Eine " COLOR("\x41") "Flasche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Fülle etwas hinein und nutze\n"
"sie mit " COLOR("\x46") "[C]" COLOR("\x40") "... Oh! Da ist ja\n"
"bereits etwas drin!"
);

DECLARE_MESSAGE_GER(0x009A,
UNSKIPPABLE  ITEM_ICON("\x21")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "seltsames Ei" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Es scheint, als würde sich\n"
"darin etwas bewegen!\n"
"Warte ab, was passiert!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x21") "Im " COLOR("\x46") "Gegenstands-Menü" COLOR("\x40") " kannst\n"
"Du es auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]\n"
COLOR("\x40") "plazieren.\n"
"Benutze es mit " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x009B,
QUICKTEXT_ENABLE "Pfeile   30 Stück   60 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen\n"
"Nicht kaufen" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x009C,
"Mein heißester Artikel ist zur Zeit\n"
"der " COLOR("\x44") "Hylia-Schild" COLOR("\x40") ". Aber für Dich ist\n"
"er wohl eine Nummer zu groß,\n"
"Kleiner!" EVENT
);

DECLARE_MESSAGE_GER(0x009D,
"Die Zeiten sind hart, deshalb sind\n"
"wir von Hyrule hierher gezogen.\n"
"Ich würde mich freuen, wenn Du\n"
"bei uns Stammkunde wirst!" EVENT
);

DECLARE_MESSAGE_GER(0x009E,
QUICKTEXT_ENABLE  SHIFT("\x46") "Willkommen!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x009F,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Schild   40 Rubine\n"
COLOR("\x40") "Mit " COLOR("\x44") "[R]" COLOR("\x40") " kannst Du ihn einsetzen,\n"
"um Angriffe abzuwehren. Bei einer\n"
"Feuerattacke verbrennt er!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A0,
QUICKTEXT_ENABLE  COLOR("\x41") "Pfeile   10 Stück   20 Rubine\n"
COLOR("\x40") "Du brauchst einen Bogen, um sie\n"
"abzuschießen. Du kannst sie nicht\n"
"kaufen, wenn Du noch keinen hast." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A1,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Stab  1 Stück  10 Rubine\n"
COLOR("\x40") "Ein langer, starker Ast des\n"
"Deku-Baumes. Verwende ihn als\n"
"Waffe, bis er zerbricht!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A2,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Nüsse  10 Stück  30 Rubine\n"
COLOR("\x40") "Betäube Deine Gegner damit! Du\n"
"kannst nur soviele kaufen, wie Du\n"
"zur Zeit tragen kannst." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A3,
QUICKTEXT_ENABLE  COLOR("\x41") "Bomben   5 Stück   25 Rubine\n"
COLOR("\x40") "Benutze sie mit " COLOR("\x46") "[C]" COLOR("\x40") ". Du kannst\n"
"sie nur kaufen, wenn Du eine\n"
"Bombentasche besitzt." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A4,
UNSKIPPABLE  ITEM_ICON("\x3B")  QUICKTEXT_ENABLE "Das " COLOR("\x41") "Kokiri-Schwert" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Wähle es mit " COLOR("\x42") "[A]" COLOR("\x40") " im\n"
COLOR("\x42") "Ausrüstungs-Menü" COLOR("\x40") " aus."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x3B") "Dies ist eine wertvolle Waffe\n"
"der Kokiri. Trainiere gut,\n"
"bevor Du Deine Mission\n"
"beginnst!"
);

DECLARE_MESSAGE_GER(0x00A5,
QUICKTEXT_ENABLE  COLOR("\x41") "Rotes Elixier   30 Rubine\n"
COLOR("\x40") "Damit füllst Du Deine Energieleiste\n"
"vollständig auf. Zur einmaligen\n"
"Anwendung!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A6,
QUICKTEXT_ENABLE  COLOR("\x41") "Grünes Elixier   30 Rubine\n"
COLOR("\x40") "Damit füllst Du Deine Magieleiste\n"
"vollständig auf. Zur einmaligen\n"
"Anwendung!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00A7,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Jetzt kannst Du\n"
"insgesamt " COLOR("\x46") "30" COLOR("\x41") " Deku-Nüsse\n"
COLOR("\x40") "tragen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00A8,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Jetzt kannst Du\n"
"insgesamt " COLOR("\x46") "40" COLOR("\x40") " " COLOR("\x41") "Deku-Nüsse\n"
COLOR("\x40") "tragen!" QUICKTEXT_DISABLE " "
);

DECLARE_MESSAGE_GER(0x00A9,
QUICKTEXT_ENABLE  COLOR("\x41") "Hylia-Schild   80 Rubine\n"
COLOR("\x40") "Ein großer, schwerer Schild der\n"
"hylianischen Ritter. Er hält sogar\n"
"Feuerattacken stand!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00AA,
QUICKTEXT_ENABLE  COLOR("\x41") "Goronen-Rüstung   200 Rubine\n"
COLOR("\x40") "Eine starke Rüstung der Goronen,\n"
"die nur Erwachsenen paßt.\n"
"Schützt auch vor großer Hitze!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00AB,
QUICKTEXT_ENABLE  COLOR("\x41") "Zora-Rüstung   300 Rubine\n"
COLOR("\x40") "Eine praktische Rüstung der Zoras,\n"
"die nur Erwachsenen paßt. Mit ihr\n"
"kann man unter Wasser atmen!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00AC,
QUICKTEXT_ENABLE  COLOR("\x41") "Herz   10 Rubine\n"
COLOR("\x40") "Damit füllst Du ein Herz\n"
"Deiner Energieleiste auf." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00AD,
UNSKIPPABLE  ITEM_ICON("\x05")  QUICKTEXT_ENABLE  COLOR("\x41") "Dins Feuerinferno" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Dieser Feuerball entflammt die\n"
"Umgebung! Du setzt diese\n"
"Magie-Attacke mit " COLOR("\x46") "[C]" COLOR("\x40") " ein."
);

DECLARE_MESSAGE_GER(0x00AE,
UNSKIPPABLE  ITEM_ICON("\x0D")  QUICKTEXT_ENABLE  COLOR("\x42") "Farores Donnersturm" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Ein magischer Teleporter, den\n"
"Du mit " COLOR("\x46") "[C]" COLOR("\x40") " einsetzt. Nutze\n"
"ihn, wenn Gefahr droht!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "Mit dieser Magie legst Du\n"
"einen " COLOR("\x42") "Teleporterpunkt" COLOR("\x40") " an.\n"
"Rufst Du Farores Kraft erneut an,\n"
"gelangst Du dorthin zurück."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "Du kannst den Teleporter\n"
"aber auch wieder aufheben\n"
"und anderswo setzen, wenn\n"
"Du Farores Magie beschwörst."
);

DECLARE_MESSAGE_GER(0x00AF,
UNSKIPPABLE  ITEM_ICON("\x13")  QUICKTEXT_ENABLE  COLOR("\x43") "Nayrus Umarmung" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Setze diese kraftvolle,\n"
"magische Schutzaura\n"
"mit " COLOR("\x46") "[C]" COLOR("\x40") " ein."
);

DECLARE_MESSAGE_GER(0x00B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Pfeile  50 Stück  90 Rubine\n"
COLOR("\x40") "Du brauchst einen Bogen, um sie\n"
"abzuschießen. Du kannst sie nicht\n"
"kaufen, wenn Du noch keinen hast." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Bomben  10 Stück  50 Rubine\n"
COLOR("\x40") "Benutze sie mit " COLOR("\x46") "[C]" COLOR("\x40") ". Du kannst\n"
"sie nur kaufen, wenn Du eine\n"
"Bombentasche besitzt." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Nüsse  5 Stück  15 Rubine\n"
COLOR("\x40") "Betäube Deine Gegner damit! Du\n"
"kannst nur soviele kaufen, wie Du\n"
"zur Zeit tragen kannst." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Fisch   200 Rubine\n"
COLOR("\x40") "Frisch gefangen! Du kannst ihn in\n"
"einer Flasche aufbewahren." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00B4,
"Du hast eine " COLOR("\x41") "Goldene Skulltula\n"
COLOR("\x40") "zerstört. Du erhältst dafür ein\n"
"Skulltula-Symbol!"
);

DECLARE_MESSAGE_GER(0x00B5,
"Du hast eine " COLOR("\x41") "Goldene Skulltula" COLOR("\x40") "\n"
"zerstört. Du erhältst dafür ein\n"
"Skulltula-Symbol als Beweis!"
);

DECLARE_MESSAGE_GER(0x00B6,
QUICKTEXT_ENABLE "Feenflasche    50 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Fee   50 Rubine\n"
COLOR("\x40") "Dafür brauchst Du eine leere\n"
"Flasche. Begib Dich nie ohne\n"
"Fee in ein Labyrinth!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00B8,
QUICKTEXT_ENABLE "Blaues Feuer    300 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Blaues Feuer   300 Rubine\n"
COLOR("\x40") "Dafür brauchst Du eine leere\n"
"Flasche. Benutze es, um Eis\n"
"zu schmelzen." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00BA,
QUICKTEXT_ENABLE "Käfer   50 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Käfer    50 Rubine\n"
COLOR("\x40") "Dafür brauchst Du eine leere\n"
"Flasche. Sieht eigentlich wie\n"
"ein gewöhnlicher Käfer aus..." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00BC,
QUICKTEXT_ENABLE  COLOR("\x41") "Krabbelmine  10 Stück  100 Rubine\n"
COLOR("\x40") "Das ist eine praktische Zeitbombe,\n"
"die Du als Distanzwaffe\n"
"einsetzen kannst!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00BD,
QUICKTEXT_ENABLE  COLOR("\x41") "Das haben wir im Augenblick\n"
"nicht auf Lager." COLOR("\x40")  QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00BE,
"Hey, Mann! Aus dem Alter\n"
"bist Du doch heraus!" EVENT
);

DECLARE_MESSAGE_GER(0x00BF,
SHIFT("\x3D") "Uaah... Waas?!"BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x5A") "Hey!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x46") "Ein Kunde!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x00C0,
"Zzzzzzzz..." EVENT
);

DECLARE_MESSAGE_GER(0x00C1,
QUICKTEXT_ENABLE  COLOR("\x41") "Pfeile   30 Stück   60 Rubine\n"
COLOR("\x40") "Du brauchst einen Bogen, um sie\n"
"abzuschießen. Du kannst sie nicht\n"
"kaufen, wenn Du noch keinen hast." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00C2,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Herzteil" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Hast Du vier Teile gesammelt,\n"
"wird die Energieleiste um\n"
"einen Herzcontainer erhöht!"
);

DECLARE_MESSAGE_GER(0x00C3,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Herzteil" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Sammle noch zwei Herzteile,\n"
"und Du erhältst einen\n"
"neuen Herzcontainer!"
);

DECLARE_MESSAGE_GER(0x00C4,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Herzteil" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Finde noch ein Herzteil, dann\n"
"erhöht sich die Energieleiste\n"
"um einen Herzcontainer!"
);

DECLARE_MESSAGE_GER(0x00C5,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Herzteil" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt hast Du einen weiteren\n"
"Herzcontainer! Deine\n"
"Energieleiste erweitert sich!"
);

DECLARE_MESSAGE_GER(0x00C6,
ITEM_ICON("\x72")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Herzcontainer" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Die Energieleiste erweitert\n"
"sich um ein Herz. Deine\n"
"Energie wird aufgefüllt!"
);

DECLARE_MESSAGE_GER(0x00C7,
ITEM_ICON("\x74")  QUICKTEXT_ENABLE "Der " COLOR("\x41") "Master-Schlüssel" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Jetzt kannst Du endlich jenen\n"
"Raum betreten, in dem der\n"
"Endgegner lauert."
);

DECLARE_MESSAGE_GER(0x00C8,
"Verschwinde, Deine\n"
"Rubine reichen nicht aus!" EVENT
);

DECLARE_MESSAGE_GER(0x00C9,
QUICKTEXT_ENABLE  SHIFT("\x39") "Okay, das war's!" QUICKTEXT_DISABLE "\n"
"Bitte warte draußen, damit ich das\n"
"nächste Spiel vorbereiten kann!" EVENT
);

DECLARE_MESSAGE_GER(0x00CA,
QUICKTEXT_ENABLE "Bomben   5 Stück   35 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00CB,
QUICKTEXT_ENABLE  COLOR("\x41") "Bomben   5 Stück   35 Rubine\n"
COLOR("\x40") "Benutze sie mit " COLOR("\x46") "[C]" COLOR("\x40") ". Du kannst\n"
"sie nur kaufen, wenn Du eine\n"
"Bombentasche besitzt." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00CC,
QUICKTEXT_ENABLE "Du hast " COLOR("\x43") "5 Rubine" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00CD,
UNSKIPPABLE  ITEM_ICON("\x53")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Silberne Schuppe" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Begib Dich ins Wasser und\n"
"drücke " COLOR("\x42") "[A]" COLOR("\x40") ". Jetzt kannst Du\n"
"tiefer tauchen als zuvor!"
);

DECLARE_MESSAGE_GER(0x00CE,
UNSKIPPABLE  ITEM_ICON("\x54")  QUICKTEXT_ENABLE "Die " COLOR("\x43") "Goldene Schuppe" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Begib Dich ins Wasser und\n"
"drücke " COLOR("\x42") "[A]" COLOR("\x40") ". Jetzt kannst Du\n"
"sehr tief tauchen!"
);

DECLARE_MESSAGE_GER(0x00CF,
QUICKTEXT_ENABLE  COLOR("\x44") "Es sieht ganz so aus, als würde\n"
"dieser Gegenstand hier nicht\n"
"benötigt..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00D0,
QUICKTEXT_ENABLE  COLOR("\x44") "Geht nicht auf!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00D1,
UNSKIPPABLE  SHIFT("\x51") "Du hast\n"
SHIFT("\x49")  COLOR("\x42") "Salias Lied\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D2,
UNSKIPPABLE  SHIFT("\x51") "Du hast\n"
SHIFT("\x46")  COLOR("\x41") "Eponas Lied\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D3,
UNSKIPPABLE  SHIFT("\x47") "Du hast die\n"
SHIFT("\x38")  COLOR("\x46") "Hymne der Sonne\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D4,
UNSKIPPABLE  SHIFT("\x51") "Du hast\n"
SHIFT("\x37")  COLOR("\x43") "Zeldas Wiegenlied\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D5,
UNSKIPPABLE  SHIFT("\x47") "Du hast die\n"
SHIFT("\x3D")  COLOR("\x44") "Hymne der Zeit\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D6,
UNSKIPPABLE  SHIFT("\x47") "Du hast die\n"
SHIFT("\x34")  COLOR("\x45") "Hymne des Sturms\n"
COLOR("\x40")  SHIFT("\x50") "erlernt!"
);

DECLARE_MESSAGE_GER(0x00D7,
UNSKIPPABLE "Hallo mein süßer " NAME "!\n"
"Ich bin die Fee der Fähigkeiten!"BOX_BREAK
UNSKIPPABLE "Ich verleihe Dir mit meiner Macht\n"
"eine " COLOR("\x41") "neue Schwert-Technik" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Sei bereit!"
);

DECLARE_MESSAGE_GER(0x00D8,
UNSKIPPABLE "Hallo mein süßer " NAME "!\n"
"Ich bin die Fee der Weisheit!"BOX_BREAK
UNSKIPPABLE "Ich werde Deine " COLOR("\x42") "magische Kraft" COLOR("\x40") "\n"
"erhöhen!"BOX_BREAK
UNSKIPPABLE "Sei bereit!"
);

DECLARE_MESSAGE_GER(0x00D9,
UNSKIPPABLE "Hallo mein süßer " NAME "!\n"
"Ich bin die Fee des Mutes!"BOX_BREAK
UNSKIPPABLE "Ich verstärke Deine " COLOR("\x44") "Abwehrkraft" COLOR("\x40") "\n"
"gegenüber feindlichen Attacken!"BOX_BREAK
UNSKIPPABLE "Sei bereit!"
);

DECLARE_MESSAGE_GER(0x00DA,
"Wenn Du vom Kampf erschöpft\n"
"bist, kannst Du mich jederzeit\n"
"wieder besuchen!" EVENT
);

DECLARE_MESSAGE_GER(0x00DB,
"Hallo mein süßer " NAME "!\n"
"Ich werde Deine Wunden heilen." EVENT
);

DECLARE_MESSAGE_GER(0x00DC,
ITEM_ICON("\x58")  QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Kerne" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Es sind kleine, harte Kerne.\n"
"Du kannst sie als Munition\n"
"für Deine Schleuder einsetzen."
);

DECLARE_MESSAGE_GER(0x00DD,
QUICKTEXT_ENABLE  UNSKIPPABLE "Du beherrschst die kraftvolle\n"
COLOR("\x41") "Wirbelattacke" COLOR("\x40") "!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Halte " COLOR("\x41") "[B]" COLOR("\x40") " gedrückt, um Dein\n"
"Schwert aufzuladen. Laß " COLOR("\x41") "[B]" COLOR("\x40") "\n"
"los, um einen energiegeladenen\n"
"Rundumschlag auszuführen!"BOX_BREAK
UNSKIPPABLE "Bewegst Du " COLOR("\x44") "[Control Stick] einmal im Kreis" COLOR("\x40") "\n"
"und drückst dann " COLOR("\x41") "[B]" COLOR("\x40") ", kannst Du\n"
"die Wirbelattacke sofort und ohne\n"
"Wartezeit ausführen."
);

DECLARE_MESSAGE_GER(0x00DE,
QUICKTEXT_ENABLE "Deku-Kerne  30 Stück  30 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00DF,
QUICKTEXT_ENABLE  COLOR("\x41") "Deku-Kerne  30 Stück  30 Rubine\n"
COLOR("\x40") "Du brauchst erst eine Schleuder,\n"
"um sie kaufen und als Munition\n"
"dafür einsetzen zu können." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00E0,
COLOR("\x44") "Willst Du mit Salia sprechen?\n"
COLOR("\x40") "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00E1,
COLOR("\x44") "Willst Du dann mit mir sprechen? \n"
"\n"
COLOR("\x40")  TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00E2,
SHIFT("\x37") "Hallo " NAME "!\n"
SHIFT("\x37") "Ich bin es, " COLOR("\x42") "Salia" COLOR("\x40") ".\n"
SHIFT("\x3B") "Hörst Du mich?" EVENT
);

DECLARE_MESSAGE_GER(0x00E3,
COLOR("\x44") "Willst Du nochmal mit ihr reden?" COLOR("\x40") "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x00E4,
UNSKIPPABLE  QUICKTEXT_ENABLE "Deine " COLOR("\x42") "magische Kraft" COLOR("\x40") " wurde erhöht!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00E5,
UNSKIPPABLE  QUICKTEXT_ENABLE "Deine " COLOR("\x44") "Abwehrkraft" COLOR("\x40") " wurde verstärkt!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00E6,
UNSKIPPABLE  QUICKTEXT_ENABLE "Du hast neue " COLOR("\x46") "Pfeile" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00E7,
UNSKIPPABLE "Sammelst Du Kraft für eine\n"
"Wirbelattacke, verbrauchst Du\n"
"magische Energie. Achte also auf\n"
"Deine " COLOR("\x42") "grüne Magieleiste" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Sag mal, Du bist doch ein Bote\n"
"der königlichen Familie, oder?"BOX_BREAK
UNSKIPPABLE "Wenn Du wieder dort bist, dann\n"
"schau in der Nähe des Schlosses\n"
"bei einer guten Freundin von mir\n"
"vorbei!"BOX_BREAK
UNSKIPPABLE "Sie hat bestimmt auch etwas für\n"
"Dich, um Deine Fähigkeiten\n"
"zu verbessern!"
);

DECLARE_MESSAGE_GER(0x00E8,
UNSKIPPABLE "Deine magischen Kräfte wurden\n"
"verstärkt! Du hast nun " COLOR("\x41") "doppelt\n"
"soviel magische Energie" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x00E9,
UNSKIPPABLE "Deine Abwehrkraft wurde\n"
"verstärkt! Gegnerische Angriffe\n"
"fügen Dir ab jetzt nur noch\n"
COLOR("\x41") "halb soviel Schaden " COLOR("\x40") "zu!"
);

DECLARE_MESSAGE_GER(0x00EA,
UNSKIPPABLE "Hallo mein süßer " NAME "!\n"
"Ich bin die Fee der Magie!"BOX_BREAK
UNSKIPPABLE "Ich habe einen " COLOR("\x41") "mächtigen Zauber" COLOR("\x40") "\n"
"für Dich. Bitte nimm ihn an."
);

DECLARE_MESSAGE_GER(0x00EB,
QUICKTEXT_ENABLE "Tut mir leid, aber Du kannst diese\n"
"Maske jetzt noch nicht ausleihen." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x00EC,
UNSKIPPABLE  COLOR("\x41") "Dins Feuerinferno" COLOR("\x40") " kannst Du nicht\n"
"nur für Attacken nutzen.\n"
"Du kannst damit auch manches in\n"
"Brand setzen!"
);

DECLARE_MESSAGE_GER(0x00ED,
UNSKIPPABLE "Vergiß nicht: " COLOR("\x42") "Farores Donnersturm" COLOR("\x40") "\n"
"kannst Du nur in einem Labyrinth\n"
"einsetzen, in dem auch eine Karte\n"
"versteckt ist. Alles klar?"
);

DECLARE_MESSAGE_GER(0x00EE,
UNSKIPPABLE  COLOR("\x43") "Nayrus Umarmung" COLOR("\x44") " " COLOR("\x40") "kannst Du nur\n"
"für begrenzte Zeit nutzen. Wende\n"
"diesen Zauber also mit Bedacht an."
);

DECLARE_MESSAGE_GER(0x00EF,
"Bist Du vom Kampf erschöpft,\n"
"besuche mich einfach wieder."
);

DECLARE_MESSAGE_GER(0x00F0,
QUICKTEXT_ENABLE "Du hast " COLOR("\x41") "20 Rubine" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F1,
QUICKTEXT_ENABLE "Du hast " COLOR("\x45") "50 Rubine" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F2,
QUICKTEXT_ENABLE "Du hast " COLOR("\x46") "200 Rubine" COLOR("\x40") " erhalten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F3,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "Ein " COLOR("\x41") "Schlüssel" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Damit gelangst Du in den\n"
"nächsten Raum. Wähle dort\n"
"eine neue Schatzkiste aus!"
);

DECLARE_MESSAGE_GER(0x00F4,
COLOR("\x44") "Dumm gelaufen!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Du hast " COLOR("\x42") "einen Rubin" COLOR("\x40") " gefunden.\n"
"Vielleicht hättest Du doch besser\n"
"die andere Kiste geöffnet..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F5,
COLOR("\x44") "Dumm gelaufen!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Du hast nur" COLOR("\x43") " 5 Rubine" COLOR("\x40") " gefunden.\n"
"Du hättest besser die Truhe\n"
"geöffnet, in der sich der\n"
"Schlüssel befindet..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F6,
COLOR("\x44") "Dumm gelaufen!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Du hast nur " COLOR("\x41") "20 Rubine\n"
COLOR("\x40") "gefunden.\n"
"Das ist heute wohl nicht so ganz\n"
"Dein Tag, oder?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F7,
COLOR("\x41") "Gratuliere!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Du hast" COLOR("\x46") " 50 Rubine" COLOR("\x40") " gefunden.\n"
"Du bist ja wirklich ein Glückspilz!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x00F8,
"00f8"
);

DECLARE_MESSAGE_GER(0x00F9,
ITEM_ICON("\x1E")  QUICKTEXT_ENABLE "Du hast den " COLOR("\x41") "Nachtschwärmer\n"
COLOR("\x40") "in Deiner Flasche gefangen!" QUICKTEXT_DISABLE "\n"
"Gehe in den " COLOR("\x41") "Gespenstermarkt" COLOR("\x40") "\n"
"und verkaufe ihn!"
);

DECLARE_MESSAGE_GER(0x00FA,
SHIFT("\x53")  COLOR("\x41") "SUPER!" COLOR("\x40") BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Herzteil" COLOR("\x40") " gefunden!" QUICKTEXT_DISABLE "\n"
"Hast Du vier Herzteile gesammelt,\n"
"erhöht sich Deine Energieleiste\n"
"um einen Herzcontainer!"
);

DECLARE_MESSAGE_GER(0x00FB,
SHIFT("\x53")  COLOR("\x41") "SUPER!" COLOR("\x40") BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Herzteil" COLOR("\x40") " gefunden!" QUICKTEXT_DISABLE "\n"
"Du besitzt jetzt zwei Herzteile.\n"
"Mit zwei weiteren erhältst Du\n"
"einen neuen Herzcontainer."
);

DECLARE_MESSAGE_GER(0x00FC,
SHIFT("\x53")  COLOR("\x41") "SUPER!" COLOR("\x40") BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Herzteil" COLOR("\x40") " gefunden!" QUICKTEXT_DISABLE "\n"
"Du besitzt nun drei Herzteile!\n"
"Finde ein weiteres, und Deine\n"
"Energieleiste erhöht sich!"
);

DECLARE_MESSAGE_GER(0x00FD,
SHIFT("\x53")  COLOR("\x41") "SUPER!" COLOR("\x40") BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Du hast ein " COLOR("\x41") "Herzteil" COLOR("\x40") " gefunden!" QUICKTEXT_DISABLE "\n"
"Jetzt besitzt Du einen weiteren\n"
"Herzcontainer! Die Energieleiste\n"
"erhöht sich um ein Herz!"
);

DECLARE_MESSAGE_GER(0x00FE,
"Suche nach den Skulltulas nicht\n"
"nur im Freien, sondern auch in\n"
"den Labyrinthen."BOX_BREAK"Aber natürlich ist es nur ein\n"
"Wunsch von uns... Wenn Du das\n"
"nicht tun willst, zwingen wir\n"
"Dich nicht." TEXTID("\x00\x27")
);

DECLARE_MESSAGE_GER(0x0100,
COLOR("\x44") "Was mag das sein?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0101,
UNSKIPPABLE  COLOR("\x44") "Schau doch, " NAME "!\n"
"Wenn Du " COLOR("\x46") "[C-Up]" COLOR("\x44") " drückst, dann\n"
"kannst Du durch das " COLOR("\x40") "Netz\n"
COLOR("\x44") "nach unten sehen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0102,
UNSKIPPABLE  COLOR("\x44") "Sieh Dir diese Wand an!\n"
"Vielleicht kannst Du ja an\n"
"den Pflanzen hinaufklettern?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0103,
UNSKIPPABLE  COLOR("\x44") "Um eine " COLOR("\x40") "Tür" COLOR("\x44") " zu öffnen, stelle\n"
"Dich genau davor und drücke " COLOR("\x42") "[A]" COLOR("\x44") "." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Achte auf das\n"
COLOR("\x42") "grüne Aktions-Symbol" COLOR("\x44") ".\n"
"Es befindet sich am\n"
COLOR("\x42") "oberen Bildrand" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0104,
UNSKIPPABLE  COLOR("\x44") "Schau! Dort oben hängt etwas!\n"
"Sieht aus wie eine alte " COLOR("\x40") "Leiter" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0105,
UNSKIPPABLE  COLOR("\x44") "Hey...\n"
"Sieht das hier nicht aus\n"
"wie das Symbol am " COLOR("\x40") "Zeitportal" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0106,
UNSKIPPABLE  COLOR("\x44") "Sieht so aus, als habe diese\n"
"Fackel vor kurzem noch gebrannt..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0107,
UNSKIPPABLE  COLOR("\x44") "Ab hier wird es ziemlich eng!" COLOR("\x40") "\n"
COLOR("\x44") "Sei vorsichtig, damit Dich\n"
"keine miesen Typen erwischen!"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Drücke " COLOR("\x40") "[L] " COLOR("\x44") "und stelle Dich gleich" COLOR("\x40") " \n"
COLOR("\x44") "in die richtige Richtung.\n"
"So schaust Du sofort den Gang\n"
"hinab, wenn Du um die Ecke gehst."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Hast Du Dich richtig hingestellt,\n"
"halte " COLOR("\x40") "[L]" COLOR("\x44") " gedrückt und laufe\n"
COLOR("\x40") "seitwärts" COLOR("\x44") " um die Ecke. So kann\n"
"Dir niemand auflauern!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0108,
UNSKIPPABLE  COLOR("\x44") "Stelle Dich vor den " COLOR("\x40") "Steinblock\n"
COLOR("\x44") "und halte " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x44") "gedrückt.\n"
"So kannst Du ihn ziehen oder \n"
"schieben."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Auch zum Hinaufklettern mußt" COLOR("\x40") "\n"
COLOR("\x44") "Du Dich vor den Block stellen." COLOR("\x40") "\n"
COLOR("\x44") "Drücke erst" COLOR("\x40") " [Control Stick] " COLOR("\x44") "in Richtung des\n"
COLOR("\x40") "Blocks" COLOR("\x44") " und dann" COLOR("\x40") " " COLOR("\x42") "[A]" COLOR("\x44") "."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Achte auf das\n"
COLOR("\x42") "grüne Aktions-Symbol" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0109,
"0109"
);

DECLARE_MESSAGE_GER(0x010A,
"010a"
);

DECLARE_MESSAGE_GER(0x010B,
"010b"
);

DECLARE_MESSAGE_GER(0x010C,
UNSKIPPABLE  COLOR("\x44") "Befindest Du Dich im Wasser,\n"
"kannst Du tauchen, indem Du" COLOR("\x40") "\n"
COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x44") "gedrückt hältst! Wetten,\n"
"Du findest etwas Interessantes?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x010D,
"010d"
);

DECLARE_MESSAGE_GER(0x010E,
"010e"
);

DECLARE_MESSAGE_GER(0x010F,
"010f"
);

DECLARE_MESSAGE_GER(0x0110,
"0110"
);

DECLARE_MESSAGE_GER(0x0111,
"0111"
);

DECLARE_MESSAGE_GER(0x0112,
"0112"
);

DECLARE_MESSAGE_GER(0x0113,
"0113"
);

DECLARE_MESSAGE_GER(0x0114,
UNSKIPPABLE  COLOR("\x44") "Wow! Schau Dir all die\n"
COLOR("\x40") "Donnerblumen " COLOR("\x44") "an!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Meinst Du, Du kannst sie\n"
"alle auf einmal zünden?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0115,
UNSKIPPABLE  COLOR("\x44") "Sieht aus, als wären hier jede\n"
"Menge " COLOR("\x40") "Lavagruben" COLOR("\x44") "! Paß auf, wo\n"
"Du hintrittst!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0116,
UNSKIPPABLE  COLOR("\x44") "Betätige den Schalter, damit sich\n"
"die " COLOR("\x40") "Plattform" COLOR("\x44") " hebt. So erreichst\n"
"Du leicht ein höheres Stockwerk!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0117,
"0117"
);

DECLARE_MESSAGE_GER(0x0118,
"0118"
);

DECLARE_MESSAGE_GER(0x0119,
UNSKIPPABLE  COLOR("\x44") "In diesen schmalen Gängen weiß\n"
"man nie, was sich hinter der \n"
"nächsten Ecke befindet..."BOX_BREAK
COLOR("\x44")  UNSKIPPABLE "Drücke " COLOR("\x40") "[L]" COLOR("\x44") ", um immer in die\n"
"richtige Richtung zu schauen.\n"
"Praktisch, nicht wahr?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x011A,
"011a"
);

DECLARE_MESSAGE_GER(0x011B,
"011b"
);

DECLARE_MESSAGE_GER(0x011C,
"011c"
);

DECLARE_MESSAGE_GER(0x011D,
"011d"
);

DECLARE_MESSAGE_GER(0x011E,
"011e"
);

DECLARE_MESSAGE_GER(0x011F,
UNSKIPPABLE  COLOR("\x44")  NAME ", wohin schaust Du\n"
"eigentlich?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0120,
"0120"
);

DECLARE_MESSAGE_GER(0x0121,
"0121"
);

DECLARE_MESSAGE_GER(0x0122,
"0122"
);

DECLARE_MESSAGE_GER(0x0123,
"0123"
);

DECLARE_MESSAGE_GER(0x0124,
UNSKIPPABLE  COLOR("\x44") "Der Wüstenkoloss! Das Gesicht\n"
"sieht wirklich bösartig aus!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0125,
"0125"
);

DECLARE_MESSAGE_GER(0x0126,
UNSKIPPABLE  COLOR("\x44") "Ich höre in diesem Raum\n"
"geisterhafte Stimmen flüstern..."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Sie flüstern mir zu: " COLOR("\x40") "\"Suche\n"
"nach dem Auge der Wahrheit...\""
);

DECLARE_MESSAGE_GER(0x0127,
"0127"
);

DECLARE_MESSAGE_GER(0x0128,
UNSKIPPABLE  COLOR("\x44") "Ich höre die Geister in\n"
"diesem Raum flüstern..."BOX_BREAK
COLOR("\x44") "Sie flüstern mir zu:"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE "\"Jener, dessen\n"
COLOR("\x41") "Schritte heilig" COLOR("\x40") " sind, möge sich vom\n"
"Wind treiben lassen. Er führt\n"
"ihn über den verborgenen Pfad.\""
);

DECLARE_MESSAGE_GER(0x0129,
UNSKIPPABLE  COLOR("\x44") "Diese Mauer...\n"
"Hier heißt es...\n"
COLOR("\x40") "\"Gefahr von oben...\""
);

DECLARE_MESSAGE_GER(0x012A,
UNSKIPPABLE  COLOR("\x44") "Diese Mauer...\n"
"Hier heißt es...\n"
COLOR("\x40") "\"Gefahr aus der Tiefe...\""
);

DECLARE_MESSAGE_GER(0x012B,
UNSKIPPABLE  COLOR("\x44") "Das Wasser dieser Statue\n"
"flutet das gesamte Stockwerk." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x012C,
"012c"
);

DECLARE_MESSAGE_GER(0x012D,
"012d"
);

DECLARE_MESSAGE_GER(0x012E,
"012e"
);

DECLARE_MESSAGE_GER(0x012F,
UNSKIPPABLE  COLOR("\x44") "Vorsicht, " NAME "!\n"
"Dieses " COLOR("\x42") "grüne, schleimige Ding" COLOR("\x44") " ist\n"
"voller elektrischer Energie!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0130,
"0130"
);

DECLARE_MESSAGE_GER(0x0131,
UNSKIPPABLE  COLOR("\x44") "Vorsicht, " NAME "!\n"
"Dieses " COLOR("\x41") "rote, schleimige Ding" COLOR("\x44") " ist\n"
"voller elektrischer Energie!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0132,
UNSKIPPABLE  COLOR("\x44") "Vorsicht, " NAME "!\n"
"Dieses " COLOR("\x43") "blaue, schleimige Ding" COLOR("\x44") " ist\n"
"voller elektrischer Energie!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0133,
UNSKIPPABLE  COLOR("\x44") "Der " COLOR("\x40") "Schalter" COLOR("\x44") "...\n"
"Sieht so aus, als könntest Du ihn\n"
"nicht betätigen, da Du allein zu \n"
"leicht bist..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0134,
"0134"
);

DECLARE_MESSAGE_GER(0x0135,
"0135"
);

DECLARE_MESSAGE_GER(0x0136,
"0136"
);

DECLARE_MESSAGE_GER(0x0137,
UNSKIPPABLE  COLOR("\x44") "Das " COLOR("\x41") "rote, schleimige Ding " COLOR("\x44") "ist fort!\n"
"Es verschwand, als Du den\n"
"Tentakel zerstört hast! Ob das\n"
"bei den anderen auch funktioniert?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0138,
"0138"
);

DECLARE_MESSAGE_GER(0x0139,
UNSKIPPABLE  COLOR("\x44") "Hinter dieser Wand befindet sich\n"
"ein Schalter!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x013A,
UNSKIPPABLE  COLOR("\x44") "Sieht so aus, als befände sich auf\n"
"dieser Plattform etwas!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x013B,
"013b"
);

DECLARE_MESSAGE_GER(0x013C,
"013c"
);

DECLARE_MESSAGE_GER(0x013D,
UNSKIPPABLE  SHIFT("\x49")  COLOR("\x44") "WAAAAS!?"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Schau Dir all die " COLOR("\x40") "Flaggen" COLOR("\x44") " an!\n"
"Finde heraus, welche davon\n"
"echt ist!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x013E,
"013e"
);

DECLARE_MESSAGE_GER(0x013F,
"013f"
);

DECLARE_MESSAGE_GER(0x0140,
COLOR("\x44") "Der Weg zum " COLOR("\x40") "Deku-Baum " COLOR("\x44") "befindet\n"
"sich im Osten des Dorfes!\n"
"Wir sollten uns beeilen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0141,
COLOR("\x44") "Also los! Sei mutig!\n"
"Laß uns den\n"
"Deku-Baum betreten!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0142,
COLOR("\x44") "Der Deku-Baum wollte, daß wir\n"
"die Prinzessin im " COLOR("\x40") "Schloß von\n"
"Hyrule" COLOR("\x44") " besuchen... Sollten wir\n"
"uns nicht etwas beeilen?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0143,
COLOR("\x44") "Das Mädchen von der Farm wollte,\n"
"daß wir ihren " COLOR("\x40") "Vater" COLOR("\x44") " suchen...\n"
"Wo er wohl sein mag?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0144,
COLOR("\x44") "Wie sollen wir in diesem großen\n"
"Schloß die " COLOR("\x40") "Prinzessin" COLOR("\x44") " finden?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0145,
COLOR("\x44") "Was " COLOR("\x40") "Salia" COLOR("\x41") " " COLOR("\x44") "wohl sagen würde, wenn\n"
"sie wüßte, daß wir Hyrule retten?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0146,
"Impa " COLOR("\x44") "sagte, daß sich der\n"
"Heilige Stein des Feuers\n"
"irgendwo im " COLOR("\x40") "Todesberg" COLOR("\x44") " befindet." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0147,
COLOR("\x44") "Nimm eine " COLOR("\x40") "Donnerblume" COLOR("\x44") ", um in\n"
"Dodongos Höhle zu gelangen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0148,
COLOR("\x44") "Wenn ich mich richtig erinnere,\n"
"sagte Darunia, daß auf dem Gipfel\n"
"des Todesbergs eine " COLOR("\x40") "Fee" COLOR("\x44") " lebt!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0149,
COLOR("\x44") "Ich frage mich, ob " COLOR("\x40") "Salia" COLOR("\x44") " etwas\n"
"über den anderen Heiligen Stein\n"
"weiß..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014A,
COLOR("\x44") "Es scheint, als sei " COLOR("\x40") "Prinzessin\n"
"Ruto " COLOR("\x44") "irgendwie im Bauch von\n"
"Lord Jabu-Jabu verschwunden!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014B,
COLOR("\x44") "Du besitzt nun die\n"
"drei Heiligen Steine!\n"
"Laß uns nach " COLOR("\x40") "Hyrule " COLOR("\x44") "gehen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014C,
COLOR("\x44") "Die beiden auf dem weißen Pferd...\n"
"Das waren doch Zelda und Impa!\n"
"Sah aus, als hätten sie etwas in\n"
"den " COLOR("\x40") "Wassergraben" COLOR("\x44") " geworfen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014D,
COLOR("\x44") "Laß uns in die\n"
COLOR("\x40") "Zitadelle der Zeit" COLOR("\x44") " gehen." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014E,
COLOR("\x44") "Sollen wir Shiek glauben und \n"
"nach " COLOR("\x40") "Kakariko " COLOR("\x44") "gehen?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x014F,
"014f"
);

DECLARE_MESSAGE_GER(0x0150,
COLOR("\x44") "Ich frage mich, was in Kokiri\n"
"gerade passiert... Auch um " COLOR("\x40") "Salia" COLOR("\x44") "\n"
"mache ich mir Sorgen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0151,
COLOR("\x44") "Diese Wolke über dem\n"
COLOR("\x40") "Todesberg" COLOR("\x44") "... Sie bedeutet\n"
"nichts Gutes..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0152,
COLOR("\x44") "Spürst Du das? Ein eisiger Wind\n"
"weht vom " COLOR("\x40") "Zora-Fluß " COLOR("\x44") "herüber!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0153,
COLOR("\x44") "Diese " COLOR("\x40") "Eisenstiefel" COLOR("\x44") " sehen furchtbar\n"
"schwer aus! Wenn Du sie trägst,\n"
"kannst Du vielleicht am Grund des\n"
"Sees herumlaufen." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0154,
COLOR("\x44") "Laß uns jemanden suchen,\n"
"der uns etwas über die\n"
"anderen " COLOR("\x40") "Weisen " COLOR("\x44") "erzählen\n"
"kann!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0155,
COLOR("\x44") "Dieser Dämon! Er kam\n"
"aus dem " COLOR("\x40") "Brunnen im Dorf" COLOR("\x44") "!\n"
"Laß uns mal dorthin gehen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0156,
COLOR("\x44") "Ich frage mich, wer wohl\n"
"den " COLOR("\x40") "Geistertempel" COLOR("\x44") " gebaut\n"
"hat? Und aus welchem Grund?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0157,
COLOR("\x44") "Du hast die " COLOR("\x45") "Nocturne des\n"
"Schattens" COLOR("\x44") " von Shiek erlernt.\n"
"Warum spielst Du sie nicht?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0158,
COLOR("\x44") "In der " COLOR("\x40") "Wüste" COLOR("\x44") " wurde Ganondorf,\n"
"der Großmeister des Bösen,\n"
"geboren.\n"
"Vielleicht finden wir dort etwas..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0159,
"0159"
);

DECLARE_MESSAGE_GER(0x015A,
COLOR("\x44") "Verwende die " COLOR("\x40") "Krafthandschuhe" COLOR("\x44") ",\n"
"um Dinge anzuheben, die Du\n"
"zuvor nicht bewegen konntest!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x015B,
COLOR("\x44") "Jemand wartet in der Zitadelle\n"
"der Zeit auf uns... Ist es..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x015C,
COLOR("\x44") "Los doch! Zu Ganons" COLOR("\x40") " " COLOR("\x44") "Schloß! Wir\n"
"müssen Prinzessin Zelda befreien!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x015D,
"015D"
);

DECLARE_MESSAGE_GER(0x015E,
"015E"
);

DECLARE_MESSAGE_GER(0x015F,
COLOR("\x44")  NAME "...\n"
"Los! Beeile Dich!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0160,
"Ich unterhalte mich gern auf\n"
"telepathische Weise mit Dir.\n"
"Doch jetzt würde ich Dich lieber\n"
"persönlich sprechen!" EVENT
);

DECLARE_MESSAGE_GER(0x0161,
"Dieser Wald ist mit vielen Orten\n"
"verbunden. Wenn Du mein Lied\n"
"irgendwo hörst, muß es von dort\n"
"einen Weg hierher geben!" EVENT
);

DECLARE_MESSAGE_GER(0x0162,
"Ich habe mich sehr gefreut, daß\n"
"Darunia mein Lied gefallen hat!"BOX_BREAK"Noch schöner finde ich, daß es\n"
"Dir bei Deiner Mission geholfen\n"
"hat, " NAME "!" EVENT
);

DECLARE_MESSAGE_GER(0x0163,
"Sammelst Du die Heiligen Steine?\n"
"Du mußt noch einen finden? Den\n"
COLOR("\x43") "Heiligen Stein des Wassers" COLOR("\x40") ", oder?"BOX_BREAK"Der Deku-Baum erzählte mir einst,\n"
"daß ihn " COLOR("\x43") "König Zora" COLOR("\x40") " besitzt..." EVENT
);

DECLARE_MESSAGE_GER(0x0164,
"Sammelst Du die Heiligen Steine?\n"
"Du mußt noch einen finden? Den\n"
COLOR("\x41") "Heiligen Stein des Feuers" COLOR("\x40") ", oder?"BOX_BREAK"Der Deku-Baum erzählte mir einst,\n"
"daß ihn " COLOR("\x41") "Darunia" COLOR("\x40") ", der Gebieter über\n"
"Goronia, besitzt..." EVENT
);

DECLARE_MESSAGE_GER(0x0165,
NAME "...\n"
"Ich weiß nicht, was geschieht...\n"
"Ich fühle eine Bedrohung..."BOX_BREAK"Das Schloß...\n"
"Dort geschieht Furchtbares!" EVENT
);

DECLARE_MESSAGE_GER(0x0166,
"Nanu? Deine Okarina klingt...\n"
"irgendwie anders...\n"
"Du hast wohl kräftig geübt,\n"
NAME "?" EVENT
);

DECLARE_MESSAGE_GER(0x0167,
"Suchst Du nach einem Tempel?\n"
"Ein seltsamer Vogel erzählte\n"
"mir einst..."BOX_BREAK"\"" COLOR("\x44") "Augen, deren Blick die Dunkelheit\n"
"durchdringt, sehen weit mehr." COLOR("\x40") "\"\n"
"Kannst Du Dir vorstellen, was er\n"
"damit wohl gemeint hat?" EVENT
);

DECLARE_MESSAGE_GER(0x0168,
"Wo bist Du, " NAME "?\n"
"Suchst Du einen Tempel?\n"
"Ich hörte einst einen\n"
"seltsamen Vogel sagen..."BOX_BREAK"\"" COLOR("\x44") "Geh, junger Held. Besuche die\n"
"Wüstengöttin mit Deiner Okarina." COLOR("\x40") "\"\n"
"Kannst Du Dir vorstellen, was er\n"
"damit wohl gemeint hat?" EVENT
);

DECLARE_MESSAGE_GER(0x0169,
"Hast Du schon alle\n"
"Tempel besucht?" EVENT
);

DECLARE_MESSAGE_GER(0x016A,
"Großartig! Du hast es geschafft!\n"
"Ich wußte, daß ich wieder von Dir\n"
"hören würde!"BOX_BREAK"Ich bin im " COLOR("\x42") "Waldtempel" COLOR("\x40") "!\n"
"Die Geister des Waldes haben um\n"
"Hilfe gerufen, also bin ich\n"
"dorthin geeilt..."BOX_BREAK"Aber hier lauern überall bösartige\n"
"Kreaturen!\n"
"Hilf mir, " NAME "!" EVENT
);

DECLARE_MESSAGE_GER(0x016B,
NAME "...\n"
"Erst wollte ich nicht zur\n"
COLOR("\x42") "Weisen des Waldes" COLOR("\x40") " werden..."BOX_BREAK"Doch nun bin ich glücklich!"BOX_BREAK"Jetzt kann ich Dir helfen,\n"
"Hyrule zu retten, " NAME "!" EVENT
);

DECLARE_MESSAGE_GER(0x016C,
"Sind alle sechs " COLOR("\x41") "Weisen" COLOR("\x40") " vereint,\n"
"können wir Ganondorf, den\n"
"Großmeister des Bösen,\n"
"ins Höllenreich verbannen."BOX_BREAK"Doch um ein machtvolles Siegel zu\n"
"erschaffen, benötigen wir die\n"
"Kraft des " COLOR("\x41") "Siebten Weisen" COLOR("\x40") "."BOX_BREAK"Dies ist jemand,\n"
"den Du kennst, " NAME "..."BOX_BREAK"Du mußt zwischen\n"
"Vergangenheit und Zukunft\n"
"hin- und herreisen, um die\n"
"anderen Weisen zu erwecken!"BOX_BREAK"Sei weiterhin so mutig,\n"
NAME "!" EVENT
);

DECLARE_MESSAGE_GER(0x016D,
"Wir, die Sechs Weisen, übertragen\n"
"Dir all unsere Kraft!"BOX_BREAK"Das Schicksal Hyrules liegt nun\n"
"in Deinen Händen!" EVENT
);

DECLARE_MESSAGE_GER(0x016E,
"016e"
);

DECLARE_MESSAGE_GER(0x016F,
"016f"
);

DECLARE_MESSAGE_GER(0x0180,
UNSKIPPABLE  COLOR("\x44") "Ich höre eine Stimme von\n"
"irgendwo..." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Sie flüstert mir zu:\n"
"\n"
COLOR("\x40")  SHIFT("\x11") "\"Sammle fünf silberne Steine...\""
);

DECLARE_MESSAGE_GER(0x0181,
UNSKIPPABLE  COLOR("\x44") "Diese Mauer... Sie teilt mir\n"
"etwas mit!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Sie flüstert mir zu:\n"
COLOR("\x40")  SHIFT("\x1A") "Willst Du mit einer Fähre\n"
SHIFT("\x1E") "in fremde Gefilde reisen,\n"
SHIFT("\x35") "so tritt näher..."
);

DECLARE_MESSAGE_GER(0x0182,
"0182"
);

DECLARE_MESSAGE_GER(0x0183,
UNSKIPPABLE  COLOR("\x44") "Sei vorsichtig, wenn Du " COLOR("\x40") "an Bord" COLOR("\x44") "\n"
"gehst! Es sieht ganz schön alt\n"
"aus... Wer weiß, wann es sinkt?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0184,
UNSKIPPABLE  COLOR("\x44") "Hier drüben befindet sich eine " COLOR("\x40") "Tür" COLOR("\x44") "...\n"
"Gibt es irgendeinen Weg herüber?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0185,
"0185"
);

DECLARE_MESSAGE_GER(0x0186,
UNSKIPPABLE "Rotes Eis" COLOR("\x44") "... Das ist\n"
"seltsam..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0187,
"0187"
);

DECLARE_MESSAGE_GER(0x0188,
"0188"
);

DECLARE_MESSAGE_GER(0x0189,
UNSKIPPABLE  COLOR("\x44") "Das ist " COLOR("\x40") "blaues Feuer" COLOR("\x44") "... Es\n"
"wirkt übernatürlich. Aber vielleicht\n"
"kannst Du es ja für irgendetwas\n"
"gebrauchen?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x018A,
"018a"
);

DECLARE_MESSAGE_GER(0x018B,
"018b"
);

DECLARE_MESSAGE_GER(0x018C,
UNSKIPPABLE  COLOR("\x44") "Das " COLOR("\x40") "Feuer der Fackeln" COLOR("\x44") " ist\n"
"erloschen. Es scheint, als wäre es\n"
"von Geistern genommen worden!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x018D,
UNSKIPPABLE  COLOR("\x44") "Sieh doch, " NAME "! Eine\n"
COLOR("\x40") "Fackel" COLOR("\x44") " brennt wieder! Es liegt\n"
"daran, daß Du einen Geist\n"
"erlöst hast, oder?!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x018E,
"018e"
);

DECLARE_MESSAGE_GER(0x018F,
UNSKIPPABLE  COLOR("\x44") "Auf diesem Boden sind\n"
COLOR("\x40") "Pfeile" COLOR("\x44") " aufgemalt!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0190,
UNSKIPPABLE  COLOR("\x44") "Dieser " COLOR("\x40") "Korridor " COLOR("\x44") "ist\n"
"völlig verdreht!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0191,
UNSKIPPABLE  COLOR("\x44") "Achte auf die\n"
COLOR("\x40") "Schatten der Kreaturen" COLOR("\x44") ",\n"
"die an der Decke hängen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0192,
UNSKIPPABLE  COLOR("\x44") "Hier befindet sich\n"
"eine " COLOR("\x40") "Schatzkiste!"
);

DECLARE_MESSAGE_GER(0x0193,
"0193"
);

DECLARE_MESSAGE_GER(0x0194,
UNSKIPPABLE  COLOR("\x44") "Das ist die gleiche " COLOR("\x40") "Fackel" COLOR("\x44") ",\n"
"die wir auch am Eingang dieses\n"
"Tempels gesehen haben, oder?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0195,
UNSKIPPABLE  COLOR("\x44") "Die" COLOR("\x40") " Fackel" COLOR("\x44") " brennt... Das bedeutet..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0196,
"0196"
);

DECLARE_MESSAGE_GER(0x0197,
UNSKIPPABLE  COLOR("\x44") "Dieser " COLOR("\x40") "Schalter" COLOR("\x44") " ist eingefroren!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0198,
UNSKIPPABLE  COLOR("\x44")  NAME ", paß auf!\n"
"Die Decke fällt herab!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0199,
"0199"
);

DECLARE_MESSAGE_GER(0x019A,
"019a"
);

DECLARE_MESSAGE_GER(0x019B,
"019b"
);

DECLARE_MESSAGE_GER(0x019C,
"019c"
);

DECLARE_MESSAGE_GER(0x019D,
"019d"
);

DECLARE_MESSAGE_GER(0x019E,
"019e"
);

DECLARE_MESSAGE_GER(0x019F,
"019f"
);

DECLARE_MESSAGE_GER(0x01A0,
"01a0"
);

DECLARE_MESSAGE_GER(0x01A1,
"01a1"
);

DECLARE_MESSAGE_GER(0x01A2,
"01a2"
);

DECLARE_MESSAGE_GER(0x01A3,
UNSKIPPABLE  COLOR("\x44")  NAME ", ich kann unter\n"
"uns " COLOR("\x40") "Stimmen von\n"
"Goronen" COLOR("\x44") " hören." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x01A4,
"01a4"
);

DECLARE_MESSAGE_GER(0x01A5,
UNSKIPPABLE  COLOR("\x44") "Schau hier herunter...\n"
"Ist das nicht der Raum, in dem\n"
"wir " COLOR("\x40") "Darunia" COLOR("\x44") " getroffen haben?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x01A6,
"01a6"
);

DECLARE_MESSAGE_GER(0x01A7,
UNSKIPPABLE  COLOR("\x44") "Diese " COLOR("\x40") "Statue" COLOR("\x44") "... Haben wir sie\n"
"nicht schon an anderem Orte \n"
"gesehen?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x01A8,
"01a8"
);

DECLARE_MESSAGE_GER(0x01A9,
UNSKIPPABLE  COLOR("\x44") "Der" COLOR("\x40") " Schalter" COLOR("\x44") " sieht verrostet aus." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x01AA,
"01aa"
);

DECLARE_MESSAGE_GER(0x01AB,
UNSKIPPABLE  COLOR("\x44")  NAME "! Sei vorsichtig!\n"
"Laß Dich nicht von\n"
"den Strudeln erfassen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x01AC,
"01ac"
);

DECLARE_MESSAGE_GER(0x01AD,
"01ad"
);

DECLARE_MESSAGE_GER(0x01AE,
"01ae"
);

DECLARE_MESSAGE_GER(0x01AF,
"01af"
);

DECLARE_MESSAGE_GER(0x01B0,
"01b0"
);

DECLARE_MESSAGE_GER(0x01B1,
"01B1"
);

DECLARE_MESSAGE_GER(0x0200,
SHIFT("\x0F") "Hi! Ich bin die sprechende Tür!"
);

DECLARE_MESSAGE_GER(0x0201,
SHIFT("\x19")  COLOR("\x44") "Komisch... Diese Tür läßt sich\n"
COLOR("\x40")  SHIFT("\x41")  COLOR("\x44") "nicht öffnen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0202,
SHIFT("\x04")  COLOR("\x44") "Dicke " COLOR("\x40") "Eisenstangen " COLOR("\x44") "blockieren die\n"
COLOR("\x40")  SHIFT("\x21")  COLOR("\x44") "Tür. Finde einen Weg, sie\n"
COLOR("\x40")  SHIFT("\x31")  COLOR("\x44") "dennoch zu öffnen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0203,
SHIFT("\x03")  COLOR("\x44") "Du benötigst einen " COLOR("\x40") "Schlüssel," COLOR("\x44") " um \n"
COLOR("\x40")  SHIFT("\x01")  COLOR("\x44") "eine solche Tür öffnen zu können!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0204,
SHIFT("\x27")  COLOR("\x44") "Hier fehlt Dir wohl ein" COLOR("\x40") "\n"
SHIFT("\x2E")  COLOR("\x44") "spezieller" COLOR("\x40") " Schlüssel!"
);

DECLARE_MESSAGE_GER(0x0205,
QUICKTEXT_ENABLE "RUHE!" QUICKTEXT_DISABLE BOX_BREAK"Es ist erst " TIME " Uhr!\n"
COLOR("\x41") "Boris" COLOR("\x40") ", der Totengräber,\n"
"schläft noch!"BOX_BREAK"Genieße einen Spaziergang auf \n"
"dem Friedhof und komm \n"
"später wieder!"
);

DECLARE_MESSAGE_GER(0x0206,
"Es ist jetzt " TIME " Uhr!\n"
"Die " COLOR("\x41") "Grabgrusel-Tour" COLOR("\x40") "\n"
"ist vorüber!"BOX_BREAK
COLOR("\x41") "Boris" COLOR("\x40") ", der Totengräber,\n"
"schläft jetzt!"BOX_BREAK"Unterhalte Dich mit den Geistern \n"
"der Toten und komm \n"
"später wieder!"
);

DECLARE_MESSAGE_GER(0x0207,
QUICKTEXT_ENABLE  COLOR("\x44") "Maskenhändler\n"
COLOR("\x40") "Bitte das Schild lesen!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x41") "So funktioniert dieser Handel:\n"
COLOR("\x40") "Die Masken werden nicht verkauft.\n"
"Wir " COLOR("\x41") "leihen" COLOR("\x40") " sie Dir nur." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Du verkaufst die Masken." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Das so verdiente " COLOR("\x41") "Geld " COLOR("\x40") "gibst Du uns\n"
"und wir leihen Dir ein aktuelleres\n"
"Modell." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Du kannst auch eine bereits\n"
"verkaufte Maske nochmals leihen,\n"
"aber Du kannst sie nur einmal\n"
"verkaufen." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Probiere es einfach mal aus!\n"
SHIFT("\x63") "Der Maskenhändler"
);

DECLARE_MESSAGE_GER(0x0208,
"Der Schattentempel...\n"
"Hier ruhen Hyrules blutige Zeugnisse\n"
"von großer Gier und\n"
"blindem Hass..." EVENT
);

DECLARE_MESSAGE_GER(0x0209,
"In der Dunkelheit verborgen...\n"
"Das bloße Auge listig täuschend...\n"
"Bleibt der rechte Weg verhüllt..." EVENT
);

DECLARE_MESSAGE_GER(0x020A,
"Jenem mit dem " COLOR("\x41") "Auge der Wahrheit\n"
COLOR("\x40") "wird sich manches offenbaren, was\n"
"noch von Dunkelheit umgeben..." EVENT
);

DECLARE_MESSAGE_GER(0x020B,
COLOR("\x44") "Eine seltsame Magie versperrt Dir\n"
"den Zugang. Löse das " COLOR("\x40") "Rätsel" COLOR("\x44") "\n"
"dieses Raumes und Du erhältst\n"
"Zutritt!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x020C,
QUICKTEXT_ENABLE "Der riesige Schädel...\n"
"Leuchten seine Augen rot,\n"
"öffnet sich ein neuer Weg!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x020D,
SHIFT("\x34")  COLOR("\x44") "Schatzkisten-Poker\n"
COLOR("\x40")  SHIFT("\x17") "Vorübergehend geschlossen! \n"
SHIFT("\x29") "Erst abends geöffnet!"
);

DECLARE_MESSAGE_GER(0x020E,
SHIFT("\x47")  COLOR("\x44") "Magie-Laden\n"
COLOR("\x40")  SHIFT("\x0F") "Bis morgen früh geschlossen!"
);

DECLARE_MESSAGE_GER(0x020F,
SHIFT("\x43")  COLOR("\x44") "Schießbude\n"
COLOR("\x40")  SHIFT("\x23") "Nur tagsüber geöffnet!"
);

DECLARE_MESSAGE_GER(0x0210,
SHIFT("\x3E")  COLOR("\x44") "Maskenhändler\n"
COLOR("\x40")  SHIFT("\x15") "Reisender Händler gesucht!\n"
SHIFT("\x12") "Bewerbungen bitte tagsüber!"
);

DECLARE_MESSAGE_GER(0x0211,
SHIFT("\x51")  COLOR("\x44") "Basar\n"
COLOR("\x40")  SHIFT("\x20") "Nur tagsüber geöffnet!"
);

DECLARE_MESSAGE_GER(0x0212,
"Hast Du Feuer?"
);

DECLARE_MESSAGE_GER(0x0213,
QUICKTEXT_ENABLE "Jenen mit dem " COLOR("\x41") "Auge der Wahrheit" COLOR("\x40") "\n"
"wird ein hilfsbereites Phantom\n"
"zum Geistertempel führen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0214,
QUICKTEXT_ENABLE "Jener, der den Zugang auf dem\n"
"Grund des Sees öffnen will, möge\n"
"ein " COLOR("\x41") "Schlaflied aus königlicher\n"
"Überlieferung " COLOR("\x40") "spielen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0215,
QUICKTEXT_ENABLE "Jener, der das Tor in großer\n"
"Höhe öffnen will, möge\n"
"ein " COLOR("\x41") "Schlaflied aus königlicher\n"
"Überlieferung " COLOR("\x40") "spielen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0216,
"Wer den " COLOR("\x41") "Schlüssel" COLOR("\x40") " findet, der\n"
"darf den nächsten Raum betreten.\n"
"Wer versagt, kann gehen!"
);

DECLARE_MESSAGE_GER(0x0217,
"Wer Audienz wünscht, der möge\n"
"von der Plattform aus\n"
"zu mir sprechen." EVENT
);

DECLARE_MESSAGE_GER(0x0218,
UNSKIPPABLE  SFX("\x68\x6D")  QUICKTEXT_ENABLE "Hi " NAME "!" QUICKTEXT_DISABLE "\n"
"Schau zu mir herauf!"BOX_BREAK"Mit " COLOR("\x44") "[L] " COLOR("\x40") "schaust Du mich an, und\n"
"mit " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "kannst Du mit mir reden."
);

DECLARE_MESSAGE_GER(0x0219,
"Schau mir in die Augen und wisse, \n"
"es ist " COLOR("\x41")  TIME " " COLOR("\x40") "Uhr."
);

DECLARE_MESSAGE_GER(0x021A,
"Erleuchte die lebenden Toten..."
);

DECLARE_MESSAGE_GER(0x021B,
COLOR("\x41") "Flatternde Schatten " COLOR("\x40") "lauern im\n"
"Dunkel! Solange sie existieren,\n"
"versperren sie den Weg."
);

DECLARE_MESSAGE_GER(0x021C,
"Hey, Kleiner! Dich meine ich!\n"
"Schau hierher, in die Zelle!" EVENT
);

DECLARE_MESSAGE_GER(0x021D,
"Mein Sohn ist gerade nicht\n"
"zuhause...\n"
"Vielleicht spielt er ja auf dem\n"
"Friedhof..."
);

DECLARE_MESSAGE_GER(0x021E,
"Oh, mein Sohn schläft gerade.\n"
"Bitte komm doch später wieder,\n"
"wenn Du mit ihm spielen willst!"
);

DECLARE_MESSAGE_GER(0x021F,
QUICKTEXT_ENABLE "Wenn das Wasser den See ausfüllt,\n"
"ziele auf die Morgensonne." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0220,
QUICKTEXT_ENABLE "Wer in die Zukunft reist, der\n"
"möge aus der Vergangenheit\n"
"kommen und die " COLOR("\x43") "Kraft des Silbers" COLOR("\x40") "\n"
"tragen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0221,
QUICKTEXT_ENABLE "Komme in der Vergangenheit hierher\n"
"mit dem reinen Herzen eines Kindes." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0222,
QUICKTEXT_ENABLE "Diese Tür wird zur Zeit\n"
"verschönert." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0223,
QUICKTEXT_ENABLE "Sieht aus, als hätte hier jemand\n"
"etwas weggenommen..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0224,
QUICKTEXT_ENABLE  SHIFT("\x1B") "Drehe meinen Schnabel zum\n"
SHIFT("\x2C")  COLOR("\x41") "Schädel der Wahrheit" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x24") "Andernfalls stürzt Du in\n"
SHIFT("\x29") "unendliche Dunkelheit!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x0225,
COLOR("\x44") "Das ist nicht der rechte " COLOR("\x40") "Schlüssel!" COLOR("\x44") "\n"
"Die Tür bleibt Dir verschlossen..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0226,
QUICKTEXT_ENABLE  SHIFT("\x3A")  COLOR("\x44") "Asas Hexenladen\n"
COLOR("\x40")  SHIFT("\x46") "Geschlossen" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x28") "Bin auf Kräutersuche!\n"
SHIFT("\x2B") "Komm später wieder...\n"
SHIFT("\x26") "...wenn Du es wagst!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0227,
QUICKTEXT_ENABLE "Wer ist da? Schon wieder so ein\n"
"Rattengesicht, das durch die\n"
"Hintertür kommen will!" QUICKTEXT_DISABLE BOX_BREAK
TEXT_SPEED("\x02") "Rattengesicht..." TEXT_SPEED("\x00") "\n"
"Ich muß Dir ein paar interessante\n"
"Neuigkeiten erzählen!"BOX_BREAK"Der Chef der Zimmerleute hat\n"
"einen Sohn...\n"
"Es ist der Typ, der jeden Abend\n"
"beim Baum herumlungert..."BOX_BREAK"Erzähl dem Chef bloß nicht, daß\n"
"ich Dir das gesagt habe!"
);

DECLARE_MESSAGE_GER(0x0228,
COLOR("\x44") "Schau Dir das an!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0229,
"Malon ist zu Bett gegangen!\n"
"Ich geh jetzt auch schlafen.\n"
"Komm wieder, wenn es hell ist!"
);

DECLARE_MESSAGE_GER(0x022A,
QUICKTEXT_ENABLE  COLOR("\x41") "Bestleistungen von " NAME "!\n"
COLOR("\x40") "Skulltula-Symbole: " TOKENS "\n"
"Größter Fang: " HIGHSCORE("\x02") " Pfund" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Bestzeit beim Marathon: " HIGHSCORE("\x04") "\n"
"Bestzeit beim Pferderennen: " HIGHSCORE("\x03") "\n"
"Bogenschießen: " HIGHSCORE("\x00") " Punkte" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x022B,
QUICKTEXT_ENABLE  SHIFT("\x25") "Hier steht die Inschrift\n"
SHIFT("\x39") "aus dem Wappen\n"
SHIFT("\x17") "der Königsfamilie von Hyrule." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x022C,
QUICKTEXT_ENABLE  SHIFT("\x53") "R.I.P.\n"
SHIFT("\x0D") "Hier ruhen die Seelen derer, die\n"
SHIFT("\x19") "der Königsfamilie von Hyrule\n"
SHIFT("\x12") "ewige Treue geschworen haben." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x23") "Über ihre Seelen wachen\n"
SHIFT("\x24") "in Ewigkeit die Shiekah,\n"
SHIFT("\x18") "Beschützer der Königsfamilie\n"
SHIFT("\x28") "und Erbauer Kakarikos." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x022D,
QUICKTEXT_ENABLE  SHIFT("\x2E")  COLOR("\x43") "Rastloser Wasserfall\n"
COLOR("\x40")  SHIFT("\x04") "Diese rastlosen Wasser dienen dem\n"
SHIFT("\x1D") "König von Hyrule. Schläft er, so\n"
SHIFT("\x36") "rasten auch sie..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x022E,
"Unter Wasser gibt es Frösche, die\n"
"Dich neugierig beobachten..."
);

DECLARE_MESSAGE_GER(0x022F,
"Du stehst auf einem weichen\n"
"Teppich, den nur Darunias\n"
"Gäste betreten dürfen..."
);

DECLARE_MESSAGE_GER(0x0230,
"Nur wenn Du die " COLOR("\x41") "Prüfungen" COLOR("\x40") " in den\n"
"verschiedenen Räumen bestehst,\n"
"wirst Du unseren streng gehüteten\n"
"Schatz erhalten!"
);

DECLARE_MESSAGE_GER(0x0231,
"Bemühe Dich mit ganzer Kraft, \n"
"alle " COLOR("\x41") "Schlüssel" COLOR("\x40") " zu erhalten, \n"
"damit Du Dir unseren streng\n"
"gehüteten Schatz verdienst!"
);

DECLARE_MESSAGE_GER(0x0232,
"Du hast nur " COLOR("\x41") "begrenzt Zeit" COLOR("\x40") ", um\n"
"alle Gegner zu beseitigen!"
);

DECLARE_MESSAGE_GER(0x0233,
"Sammle " COLOR("\x41") "alle silbernen Steine" COLOR("\x40") " ein,\n"
"die Du im Wasser finden kannst!"
);

DECLARE_MESSAGE_GER(0x0234,
"Überquere den " COLOR("\x41") "feurigen" COLOR("\x40") " " COLOR("\x41") "See" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x0235,
"Finde den " COLOR("\x41") "geheimen Durchgang" COLOR("\x40") "\n"
"in diesem Raum!"
);

DECLARE_MESSAGE_GER(0x0236,
"Blende die " COLOR("\x41") "Augen der Statue" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x0237,
"Der mit den " COLOR("\x41") "Händen aus Silber" COLOR("\x40") "\n"
"wird den großen Block verschieben\n"
"können!"
);

DECLARE_MESSAGE_GER(0x0238,
"Ohne die rechten Hilfsmittel\n"
"wirst Du vor unlösbaren Aufgaben\n"
"stehen!"
);

DECLARE_MESSAGE_GER(0x0239,
"Sammle die " COLOR("\x41") "weißen Juwelen, " COLOR("\x40") "jedoch\n"
"umgehe alle Fallen und Gefahren!"
);

DECLARE_MESSAGE_GER(0x023A,
QUICKTEXT_ENABLE  SHIFT("\x46")  COLOR("\x44") "Fischweiher" COLOR("\x40") "\n"
SHIFT("\x26") "Heute beißen die Fische\n"
SHIFT("\x3A") "wirklich gut!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x023B,
SHIFT("\x4D")  COLOR("\x44") "???" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x023C,
QUICKTEXT_ENABLE "Die Schatten werden sich nur dem\n"
"offenbaren, der die " COLOR("\x41") "Augen der\n"
"Wahrheit" COLOR("\x40") " besitzt. Es heißt, man\n"
"könne sie in Kakariko finden..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0300,
BACKGROUND("\x00", "\x01", "\x10")
);

DECLARE_MESSAGE_GER(0x0301,
QUICKTEXT_ENABLE  SHIFT("\x34")  COLOR("\x44") "Hylianische Steppe" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0302,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x44") "Stadt Hyrule" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0303,
QUICKTEXT_ENABLE  SHIFT("\x31")  COLOR("\x44") "Zitadelle der Zeit" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0304,
QUICKTEXT_ENABLE  SHIFT("\x43")  COLOR("\x41") "Sackgasse" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0305,
QUICKTEXT_ENABLE  SHIFT("\x31")  COLOR("\x45") "Pfad nach Kakariko" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0306,
QUICKTEXT_ENABLE  SHIFT("\x31")  COLOR("\x45") "Kakariko Friedhof" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0307,
QUICKTEXT_ENABLE  COLOR("\x45")  SHIFT("\x26") "Brunnen des Grauens\n"
COLOR("\x40")  SHIFT("\x19") "Düster! Tief! Unheimlich!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0308,
QUICKTEXT_ENABLE  SHIFT("\x46")  COLOR("\x41") "Todesberg\n"
COLOR("\x40")  SHIFT("\x19") "Passieren ohne Erlaubnis \n"
SHIFT("\x19") "des Königs nicht möglich!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0309,
QUICKTEXT_ENABLE  SHIFT("\x2A")  COLOR("\x41") "Pfad zum Todesberg" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030A,
QUICKTEXT_ENABLE  SHIFT("\x36")  COLOR("\x46") "Dodongos Höhle\n"
COLOR("\x40")  SHIFT("\x03") "Betreten ohne Erlaubnis verboten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030B,
QUICKTEXT_ENABLE  SHIFT("\x4C")  COLOR("\x41") "Goronia\n"
COLOR("\x40")  SHIFT("\x33") "Stadt der Goronen" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030C,
QUICKTEXT_ENABLE  SHIFT("\x4B")  COLOR("\x43") "Zora-Fluß\n"
COLOR("\x40")  SHIFT("\x0C") "Vorsicht vor reißenden Fluten \n"
SHIFT("\x18") "und gefährlichen Strudeln!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030D,
QUICKTEXT_ENABLE  SHIFT("\x0E") "Die Schatten werden sich nur\n"
SHIFT("\x13") "dem offenbaren, der das Auge\n"
SHIFT("\x32") "der Wahrheit besitzt." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030E,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x43") "Zoras Reich" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x030F,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x43") "Zoras Quelle\n"
COLOR("\x40")  SHIFT("\x12") "Bitte nicht den Wal wecken! \n"
SHIFT("\x32") "König Zora XVI." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0310,
QUICKTEXT_ENABLE  SHIFT("\x24")  COLOR("\x45") "Kokiri Trainingslager" COLOR("\x41") "\n"
COLOR("\x40")  SHIFT("\x14") "Zerstöre die Schilder nicht!\n"
SHIFT("\x48") "Lies sie!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0311,
QUICKTEXT_ENABLE  SHIFT("\x11") "Oh, Ihr rastlosen Abenteurer,\n"
SHIFT("\x05") "die Ihr durch die Wüste wandert,\n"
SHIFT("\x41") "besucht mich." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x2F")  COLOR("\x46") "Fliegender Händler" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0312,
QUICKTEXT_ENABLE  SHIFT("\x3B") "Vor Dir liegt:\n"
SHIFT("\x1E") "Der " COLOR("\x42") "Hain des Deku-Baumes" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0313,
QUICKTEXT_ENABLE  SHIFT("\x4E")  COLOR("\x42") "Waldtempel" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0314,
QUICKTEXT_ENABLE  SHIFT("\x32")  COLOR("\x42") "Verlorene Wälder" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0315,
QUICKTEXT_ENABLE  SHIFT("\x32") "Talons und Malons\n"
SHIFT("\x3C")  COLOR("\x46") "Lon Lon-Farm" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0316,
QUICKTEXT_ENABLE  SHIFT("\x23") "Farm des tollen Basil! \n"
SHIFT("\x46")  COLOR("\x46") "Basil-Farm" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0317,
QUICKTEXT_ENABLE  SHIFT("\x4E")  COLOR("\x43") "Hylia-See" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0318,
QUICKTEXT_ENABLE  SHIFT("\x3B")  COLOR("\x43") "Labor am See\n"
COLOR("\x40")  SHIFT("\x0F") "Erforschung der unbekannten \n"
SHIFT("\x1B") "Tiefen des Hylia-Sees!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0319,
QUICKTEXT_ENABLE  SHIFT("\x46")  COLOR("\x46") "Gerudotal" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031A,
QUICKTEXT_ENABLE  SHIFT("\x1E")  COLOR("\x46") "Bogenschießen zu Pferde" COLOR("\x40") "\n"
"Begabte Schützen sind willkommen!\n"
SHIFT("\x19") "Bestleistung: " COLOR("\x41")  HIGHSCORE("\x00")  COLOR("\x40") " Punkte" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031B,
QUICKTEXT_ENABLE  SHIFT("\x2E")  COLOR("\x46") "Gerudo Trainingsarena\n"
COLOR("\x40")  SHIFT("\x1F") "Betreten nur registrierten\n"
SHIFT("\x30") "Mitgliedern erlaubt!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031C,
QUICKTEXT_ENABLE  SHIFT("\x32")  COLOR("\x46") "Gespensterwüste\n"
COLOR("\x40")  SHIFT("\x0F") "Vertraust Du Deinem Instinkt,\n"
SHIFT("\x14") "verschlingt Dich die Wüste.\n"
SHIFT("\x24") "Suche den wahren Pfad!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031D,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x46") "Geistertempel" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031E,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x42") "Kokiri-Laden\n"
COLOR("\x40")  SHIFT("\x17") "Wir handeln mit offiziellen\n"
SHIFT("\x28") "Deku-Baum Artikeln!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x031F,
QUICKTEXT_ENABLE  SHIFT("\x1B") "Hier wohnt " NAME  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0320,
QUICKTEXT_ENABLE  SHIFT("\x1B")  COLOR("\x42") "Die Waldbewohner sollten\n"
SHIFT("\x23") "Kokiri nicht verlassen." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0321,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Der Pfad führt zum Gipfel des\n"
SHIFT("\x0C") "Berges. Dort liegt " COLOR("\x41") "Goronia" COLOR("\x40") ", die\n"
SHIFT("\x2D") "Stadt der Goronen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0322,
QUICKTEXT_ENABLE  SHIFT("\x23") "Ein Wunder der Natur:\n"
SHIFT("\x36") "Die " COLOR("\x41") "Donnerblume" COLOR("\x40") "!\n"
SHIFT("\x19") "Vorsicht! Nicht pflücken!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0323,
QUICKTEXT_ENABLE  SHIFT("\x26")  COLOR("\x41") "Gipfel des Todesberges\n"
COLOR("\x40")  SHIFT("\x0D") "Nur noch wenige Schritte zum\n"
SHIFT("\x19") "Krater! Achtung, extreme\n"
SHIFT("\x50") "Hitze!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0324,
QUICKTEXT_ENABLE  SHIFT("\x2A")  COLOR("\x43") "König Zoras Thronsaal\n"
COLOR("\x40")  SHIFT("\x23") "Betritt die Plattform, um\n"
SHIFT("\x1A") "mit dem König zu sprechen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0325,
QUICKTEXT_ENABLE  SHIFT("\x15") "Gelingt es Dir, mich mit einer\n"
SHIFT("\x0D") "Donnerblume zu stoppen, belohne\n"
SHIFT("\x0A") "ich Dich. Versuche es mehrmals!\n"
SHIFT("\x36")  COLOR("\x41") "Hot Rodder Goron" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0326,
QUICKTEXT_ENABLE  SHIFT("\x12") "Nur der, der die Augen der \n"
SHIFT("\x0E") "Wahrheit besitzt, wird Schutz\n"
SHIFT("\x03") "vor den tödlichen Stacheln finden." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0327,
QUICKTEXT_ENABLE  SHIFT("\x08") "Nur der, dessen " COLOR("\x41") "Schritte heilig \n"
COLOR("\x40")  SHIFT("\x0E") "sind, wird das Tal des Todes" COLOR("\x41") " \n"
COLOR("\x40")  SHIFT("\x3E") "durchqueren." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0328,
QUICKTEXT_ENABLE "Viele haben sich schon mit mir\n"
"gemessen. Die beste Zeit bisher:\n"
COLOR("\x44")  HIGHSCORE("\x06")  COLOR("\x40") "\n"
"Boris, der Totengräber" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0329,
QUICKTEXT_ENABLE  SHIFT("\x43")  COLOR("\x44") "Schießbude\n"
"Ein Spiel kostet 20 Rubine.\n"
COLOR("\x40") "Es gibt " COLOR("\x41") "10 Ziele" COLOR("\x40") ". Du hast " COLOR("\x41") "15\n"
"Versuche" COLOR("\x40") ". Nutze Deine Chance!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "10 Treffer: Überraschungspreis\n"
"8-9 Treffer: Zweite Chance\n"
"0-7 Treffer: Chance vertan" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x44") "Dies haßt der Betreiber:\n"
COLOR("\x40") "Leute, die an der Theke lehnen.\n"
"Leute, die andere belästigen." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x032A,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x44") "Truhenlotterie" COLOR("\x40") "\n"
SHIFT("\x0F") "Den Glücklichen erwartet ein \n"
SHIFT("\x31") "wertvoller Preis..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x032B,
QUICKTEXT_ENABLE  SHIFT("\x23")  COLOR("\x44") "Extrem-Klippenspringen\n"
COLOR("\x40")  SHIFT("\x06") "Bist Du am Klippenspringen\n"
SHIFT("\x3C") "interessiert?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x032C,
"032c"
);

DECLARE_MESSAGE_GER(0x032D,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x41") "Todeskrater" COLOR("\x40") "\n"
SHIFT("\x29") "Achtung Steinhagel!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x032E,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x44") "Maskenhändler!" COLOR("\x40") "\n"
SHIFT("\x0F") "Wir suchen Leute, die unsere\n"
SHIFT("\x1C") "Masken weiterverkaufen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x032F,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x44") "Krabbelminen-Bowling" COLOR("\x40") "\n"
SHIFT("\x14") "Spaß und Heiterkeit mit den\n"
SHIFT("\x0F") "neuesten Bombentechnologien!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0330,
QUICKTEXT_ENABLE  SHIFT("\x50")  COLOR("\x44") "Basar" COLOR("\x40") "\n"
SHIFT("\x03") "Unser Angebot ist bunt gemischt!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0331,
QUICKTEXT_ENABLE  SHIFT("\x4E")  COLOR("\x44") "Apotheke\n"
COLOR("\x40")  SHIFT("\x23") "Wir führen die besten\n"
SHIFT("\x23") "Heilmittel des Landes!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0332,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "Goronen-Laden\n"
COLOR("\x40")  SHIFT("\x0D") "Ausrüstung für Bergwanderer!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0333,
QUICKTEXT_ENABLE  SHIFT("\x46")  COLOR("\x43") "Zora-Laden" COLOR("\x40") "\n"
SHIFT("\x19") "Heute im Angebot: Fisch!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0334,
QUICKTEXT_ENABLE  SHIFT("\x17")  COLOR("\x44") "Grausige Grabgrusel-Tour!\n"
COLOR("\x40")  SHIFT("\x07") "Von 18:00 bis 21:00 Uhr\n"
SHIFT("\x25") "Boris, der Totengräber" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0335,
QUICKTEXT_ENABLE  SHIFT("\x17")  COLOR("\x44") "Grausige Grabgrusel-Tour!\n"
COLOR("\x40")  SHIFT("\x14") "Alle Touren sind " COLOR("\x41") "gestrichen," COLOR("\x40") "\n"
"bis ein neuer Totengräber gefunden\n"
SHIFT("\x0A") "ist. Wir bitten um Verständnis." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0336,
QUICKTEXT_ENABLE  SHIFT("\x40")  COLOR("\x45") "Stoßattacke\n"
COLOR("\x40") "Um mit dem Schwert zuzustoßen,\n"
"drücke" COLOR("\x44") " [Control Stick]" COLOR("\x40") " in Zielrichtung und halte \n"
COLOR("\x44") "[L] " COLOR("\x40") "gedrückt. Drücke dann " COLOR("\x41") "[B]" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0337,
QUICKTEXT_ENABLE  SHIFT("\x3F")  COLOR("\x45") "Enge Passagen\n"
COLOR("\x40") "Versuche, durch den schmalen Spalt\n"
"zu kriechen!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Stelle Dich vor die Öffnung und\n"
"drücke den " COLOR("\x44") "[Control Stick] " COLOR("\x40") "in Richtung Eingang. \n"
"Zeigt das" COLOR("\x43") " " COLOR("\x42") "grüne Aktions-Symbol\n"
COLOR("\x40") "\"Kriechen\" an, drücke" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Achte immer auf die Anzeige des" COLOR("\x43") "\n"
COLOR("\x42") "Aktions-Symbols!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0338,
QUICKTEXT_ENABLE  SHIFT("\x13")  COLOR("\x45") "Trainiere Deine Schwertkunst!\n"
COLOR("\x40") "Drücke " COLOR("\x41") "[B]" COLOR("\x40") ", um Dein Schwert \n"
"horizontal" COLOR("\x41") " " COLOR("\x40") "zu schwingen. Hältst Du\n"
COLOR("\x44") "[L], " COLOR("\x40") "schwingst Du es" COLOR("\x44") " " COLOR("\x40") "vertikal." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0339,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x44") "Schloß" COLOR("\x40") " " COLOR("\x44") "Hyrule" COLOR("\x40") "\n"
SHIFT("\x41")  COLOR("\x46") "Lon Lon-Farm" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033A,
QUICKTEXT_ENABLE "Diese Richtung zur " COLOR("\x46") "Lon Lon-Farm" COLOR("\x40") "!" COLOR("\x46") "\n"
COLOR("\x40") "Zur Rechten liegt " COLOR("\x44") "Hyrule" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033B,
QUICKTEXT_ENABLE  SHIFT("\x42") "Vor Dir liegt\n"
SHIFT("\x24")  COLOR("\x43") "König Zoras Thronsaal\n"
COLOR("\x40")  SHIFT("\x26") "Betritt ihn ehrfürchtig!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033C,
QUICKTEXT_ENABLE  SHIFT("\x38") "Haus von " COLOR("\x41") "Mido" COLOR("\x40") "\n"
SHIFT("\x2B") "Anführer der Kokiri" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033D,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Haus der Allwissenden Brüder" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033E,
QUICKTEXT_ENABLE  SHIFT("\x2D") "Haus der Zwillinge" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x033F,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x41") "Salias" COLOR("\x40") " Haus" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0340,
QUICKTEXT_ENABLE  SHIFT("\x10")  COLOR("\x45") "Verändern der Blickrichtung\n"
COLOR("\x40") "Du hast jederzeit die Möglichkeit,\n"
"Deine Blickrichtung mit " COLOR("\x44") "[L] " COLOR("\x40") "zu\n"
"verändern." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Bleib stehen und verändere dann\n"
"die Richtung, in die Du schaust,\n"
"oder " COLOR("\x44") "halte [L] " COLOR("\x40") "während des\n"
"Laufens gedrückt." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Dies wird Dir helfen,\n"
"Dich zu orientieren!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x44") "Hältst Du [L] gedrückt" COLOR("\x40") ", kannst Du\n"
"Dich" COLOR("\x41") " seitlich" COLOR("\x40") " bewegen und dabei\n"
"nach vorn schauen." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Die " COLOR("\x41") "seitliche Fortbewegung " COLOR("\x40") "\n"
"macht sich besonders in Labyrinthen\n"
"bezahlt. Probier es aus! Du wirst \n"
"sehen, wie praktisch dies ist." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0341,
QUICKTEXT_ENABLE  SHIFT("\x14")  COLOR("\x41") "Springe von Stein zu Stein \n"
COLOR("\x40") "Du springst automatisch, sobald \n"
"Du auf einen Vorsprung oder einen\n"
"Abgrund zuläufst." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Probier es bei den Steinen aus.\n"
"Du wirst sehen, es macht Spaß!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0342,
QUICKTEXT_ENABLE  SHIFT("\x19")  COLOR("\x41") "Klippenspringen verboten!\n"
COLOR("\x40")  SHIFT("\x14") "Es schadet der Gesundheit!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0343,
QUICKTEXT_ENABLE  SHIFT("\x41")  COLOR("\x45") "Zielerfassung\n"
COLOR("\x40") "Siehst Du einen" COLOR("\x42") " ▼" COLOR("\x40") " über einem \n"
"Objekt, kannst Du es mit " COLOR("\x44") "[L]\n"
COLOR("\x40") "anpeilen." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Vor dem Spiel kannst Du zwischen\n"
"zwei Optionen wählen:\n"
"Du mußt entweder " COLOR("\x44") "[L]" COLOR("\x40") " gedrückt\n"
"halten, um Dein Ziel anzupeilen..." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "...oder Du mußt kurz " COLOR("\x44") "[L]" COLOR("\x40") " drücken,\n"
"um Dein Ziel solange anzuvisieren,\n"
"bis Du erneut " COLOR("\x44") "[L]" COLOR("\x40") " betätigst. Danach\n"
"kannst Du ein neues Ziel erfassen!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Drückst Du " COLOR("\x44") "[L]" COLOR("\x40") " und dann " COLOR("\x42") "[A]" COLOR("\x40") ",\n"
"kannst Du übrigens auch mit\n"
"Personen reden, die sich außerhalb\n"
"Deiner Reichweite aufhalten." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Willst Du fliehen, bewege den " COLOR("\x44") "[Control Stick]\n"
COLOR("\x40") "einfach nach hinten.\n"
"Visiere zur Übung die " COLOR("\x41") "Steine\n"
COLOR("\x40") "hier an!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0344,
QUICKTEXT_ENABLE  SHIFT("\x44")  COLOR("\x42") "Waldbühne" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Wir warten darauf, daß Du uns\n"
"Deine häßlichste Fratze zeigst!\n"
"Einzigartige Preise zu gewinnen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0345,
QUICKTEXT_ENABLE  SHIFT("\x05") "Öffne jede Truhe! Du findest darin\n"
SHIFT("\x10") "wertvolle Schätze, praktische\n"
SHIFT("\x06") "Gegenstände, hilfreiche Schlüssel\n"
SHIFT("\x32") "und vieles mehr!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0400,
"Dies ist der " COLOR("\x41") "Mythen-Stein" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x0401,
"Es heißt, man könne schneller\n"
"schwimmen, wenn man \n"
COLOR("\x41") "[B]" COLOR("\x42") " " COLOR("\x40") "drückt..."
);

DECLARE_MESSAGE_GER(0x0402,
"Man erzählt sich, daß nahe des \n"
"einsamen Baumes im Nordwesten\n"
"der Steppe ein Geheimnis\n"
"verborgen läge..."
);

DECLARE_MESSAGE_GER(0x0403,
"Man erzählt sich, daß der Weg\n"
"zum Hylia-See ein Geheimnis\n"
"verbärge..."
);

DECLARE_MESSAGE_GER(0x0404,
"Man erzählt sich, Biggorons \n"
"Schwert wäre unzerbrechlich..."
);

DECLARE_MESSAGE_GER(0x0405,
"Man erzählt sich, daß Medigoron \n"
"nie über seine Größe nachgedacht \n"
"habe und deshalb seinen eigenen\n"
"Laden in Schutt und Asche legte..."
);

DECLARE_MESSAGE_GER(0x0406,
"Man erzählt sich, daß Malon den\n"
"Springparcours auf der Farm wie\n"
"keine Zweite beherrsche..."
);

DECLARE_MESSAGE_GER(0x0407,
"Man erzählt sich, daß Malon von \n"
"einem Ritter in glänzender \n"
"Rüstung träume, der sie auf \n"
"einem Roß hinfortträgt..."
);

DECLARE_MESSAGE_GER(0x0408,
"Man erzählt sich, daß sich\n"
"die Zora-Prinzessin Ruto in \n"
"einen blonden Jüngling verliebt \n"
"habe..."
);

DECLARE_MESSAGE_GER(0x0409,
"Man erzählt sich, daß die \n"
"Informationen des Mythen-\n"
"Steins nicht besonders\n"
"interessant wären..."
);

DECLARE_MESSAGE_GER(0x040A,
"Man erzählt sich, daß nahe des\n"
"Baumes vor Kakariko ein\n"
"Geheimnis verborgen wäre..."
);

DECLARE_MESSAGE_GER(0x040B,
"Man erzählt sich, daß Prinzessin \n"
"Zelda trotz ihres eleganten \n"
"Äußeren ein echter Wildfang wäre... "
);

DECLARE_MESSAGE_GER(0x040C,
"Man erzählt sich, daß Zeldas\n"
"Kindermädchen eine Shiekah sei. \n"
"Viele dachten, dieses Geschlecht \n"
"wäre längst ausgestorben..."
);

DECLARE_MESSAGE_GER(0x040D,
"Man erzählt sich, daß es in\n"
"Hyrule einen Mann gäbe, der\n"
"ständig am Rennen sei..."
);

DECLARE_MESSAGE_GER(0x040E,
"Man erzählt sich, daß es verboten \n"
"wäre, die Truhen beim\n"
"Schatzkisten-Poker als Toiletten\n"
"zu mißbrauchen..."
);

DECLARE_MESSAGE_GER(0x040F,
"Man erzählt sich, daß das Hühner- \n"
"mädchen oft zum Labor am See\n"
"ginge, um dort eine Methode zur\n"
"Zwerghuhnzucht zu erforschen..."
);

DECLARE_MESSAGE_GER(0x0410,
"Man erzählt sich, daß die \n"
"Gerudo-Kriegerinnen sich oft nach \n"
"Hyrule begäben, um dort nach \n"
"Männern Ausschau zu halten."
);

DECLARE_MESSAGE_GER(0x0411,
"Man erzählt sich, die \n"
"Diebesprinzessin Naboru wäre\n"
"eine Gerudo-Kriegerin..."
);

DECLARE_MESSAGE_GER(0x0412,
"Man erzählt sich, daß einem\n"
"Gutes widerführe, wenn man in\n"
"der Nähe eines Schmetterlings\n"
"einen Deku-Stab in die Luft halte."
);

DECLARE_MESSAGE_GER(0x0413,
"Man erzählt sich, daß man in\n"
"bereits bewältigten Labyrinthen\n"
"später neue Dinge fände..."
);

DECLARE_MESSAGE_GER(0x0414,
"Man erzählt sich, die Gerudo-\n"
"Kriegerinnen würden Ganondorf \n"
"nahezu als Gott verehren..."
);

DECLARE_MESSAGE_GER(0x0415,
"Man erzählt sich, daß sich am  \n"
"Eingang des Gerudotals ein \n"
"Geheimnis verbärge..."
);

DECLARE_MESSAGE_GER(0x0416,
"Man erzählt sich, daß eine Eule\n"
"namens Methusa die Reinkarnation \n"
"eines Weisen wäre..."
);

DECLARE_MESSAGE_GER(0x0417,
"Man erzählt sich, daß die Eule\n"
"zwar unheimlich aussähe, aber \n"
"einen sehr gutmütigen Charakter \n"
"habe."
);

DECLARE_MESSAGE_GER(0x0418,
"Man erzählt sich, Ganondorfs\n"
"schwarzer Hengst wäre ein Bote\n"
"aus der Hölle."
);

DECLARE_MESSAGE_GER(0x0419,
"Man erzählt sich, Ganondorf \n"
"strebe die Herrschaft über\n"
"ganz Hyrule an..."
);

DECLARE_MESSAGE_GER(0x041A,
"Man erzählt sich, daß der Schatz,\n"
"den man in der Kampfarena der\n"
"Gerudos erringen könne, nicht\n"
"sehr wertvoll sei..."
);

DECLARE_MESSAGE_GER(0x041B,
"Man erzählt sich, es gäbe Schalter,\n"
"die man mit der Wirbelattacke\n"
"des Schwertes aktivieren könne..."
);

DECLARE_MESSAGE_GER(0x041C,
"Man erzählt sich, es wären in \n"
"Hyrule genau 100 goldene\n"
"Skulltulas verborgen..."
);

DECLARE_MESSAGE_GER(0x041D,
"Man erzählt sich, wer die\n"
"Verlorenen Wälder beträte, würde\n"
"zu einem Waldschrat - es sei \n"
"denn, er wäre ein Kokiri!"
);

DECLARE_MESSAGE_GER(0x041E,
"Man erzählt sich, daß die\n"
"unterirdischen Höhlen, die man an\n"
"verschiedenen Stellen findet, die\n"
"idealen Brutstätten für Käfer wären."
);

DECLARE_MESSAGE_GER(0x041F,
"Man erzählt sich, daß ein Kokiri \n"
"stets von einer Fee begleitet \n"
"würde..."
);

DECLARE_MESSAGE_GER(0x0420,
"Man erzählt sich, daß etwas\n"
"Wundersames geschähe, wenn\n"
"man während des Spiels den\n"
"Reset-Knopf drückt..."
);

DECLARE_MESSAGE_GER(0x0421,
"0421"
);

DECLARE_MESSAGE_GER(0x0600,
QUICKTEXT_ENABLE  COLOR("\x41") "Was ist das denn?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0601,
QUICKTEXT_ENABLE "Das ist Gohma!\n"
COLOR("\x44") "Färbt sich das " COLOR("\x40") "Auge" COLOR("\x44") " dieser\n"
"Parasiten-Kreatur rot, ist es\n"
"verletzbar!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0602,
QUICKTEXT_ENABLE "Ein Gohma-Ei!\n"
COLOR("\x44") "Wenn es aufplatzt, schlüpfen\n"
"bissige Gohma-Babys aus." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0603,
QUICKTEXT_ENABLE "Ein Gohma-Baby!\n"
COLOR("\x44") "Paß auf, daß es Dich nicht\n"
"anspringt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0604,
QUICKTEXT_ENABLE "Eine Skulltula!\n"
COLOR("\x44") "Die weiche " COLOR("\x40") "Bauchseite" COLOR("\x44") " ist ihre\n"
"schwache Stelle!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0605,
QUICKTEXT_ENABLE "Die Riesen-Skulltula!\n"
COLOR("\x44") "Die weiche " COLOR("\x40") "Bauchseite" COLOR("\x44") " ist ihre\n"
"schwache Stelle!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0606,
QUICKTEXT_ENABLE "Ein Zangengeiferer!\n"
COLOR("\x44") "Triff sein verletzliches\n"
COLOR("\x40") "Schwanzende" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0607,
QUICKTEXT_ENABLE "Ein Dekuranha!\n"
COLOR("\x44") "Zerschlage ihn, bevor er nach Dir\n"
"schnappt. Du erhältst eine\n"
COLOR("\x40") "Deku-Nuß" COLOR("\x44") " oder einen " COLOR("\x40") "Deku-Stab" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0608,
QUICKTEXT_ENABLE "Ein großer Dekuranha!\n"
COLOR("\x44") "Schlage zu, bevor er nach Dir\n"
"schnappt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0609,
QUICKTEXT_ENABLE "Ein verwelkter Dekuranha!\n"
COLOR("\x44") "Er sieht zwar ganz schön alt aus,\n"
"aber wenn Du ihm zu nahe\n"
"kommst, schnappt er zu!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x060A,
QUICKTEXT_ENABLE "Vorsicht, ein Laubkerl!\n"
COLOR("\x44") "Näherst Du Dich, verschwindet er.\n"
"Lenke die Nüsse, die er spuckt,\n"
"mit Deinem Schild auf ihn zurück!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x060B,
"060b"
);

DECLARE_MESSAGE_GER(0x060C,
QUICKTEXT_ENABLE "Das ist King Dodongo!\n"
COLOR("\x44") "Wirf dem Vielfraß etwas Explosives\n"
"in den Rachen und schlage ihn mit\n"
"Deinem " COLOR("\x40") "Schwert" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x060D,
QUICKTEXT_ENABLE "Ein Dodongo greift an!\n"
COLOR("\x44") "Achte auf seinen feurigen Atem!\n"
"Benutze im Kampf am besten\n"
"die Zielerfassung mit " COLOR("\x40") "[L]" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x060E,
QUICKTEXT_ENABLE "Ein Baby-Dodongo!\n"
COLOR("\x44") "Vorsicht, er springt Dich an! Hast\n"
"Du ihn bezwungen, explodiert er!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x060F,
QUICKTEXT_ENABLE "Ein Echsodorus! \n"
COLOR("\x44") "Setze Deinen Schild geschickt ein\n"
"und benutze " COLOR("\x40") "[L]" COLOR("\x44") ", um Deine\n"
"Schwerthiebe exakt zu plazieren!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0610,
QUICKTEXT_ENABLE "Ein Dinodorus! \n"
COLOR("\x44") "Setze Deinen Schild geschickt ein\n"
"und benutze " COLOR("\x40") "[L]" COLOR("\x44") ", um Deine\n"
"Schwerthiebe exakt zu plazieren!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0611,
QUICKTEXT_ENABLE "Der Feuerflatterer!\n"
COLOR("\x44") "Beseitige ihn, bevor er Dich\n"
"erreicht! Wenn Du eine \n"
"Distanzwaffe hast, setze sie ein!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0612,
QUICKTEXT_ENABLE "Ein Flederbeißer!\n"
COLOR("\x44") "Benutze " COLOR("\x40") "[L]" COLOR("\x44") ", um ihn effektiv zu\n"
"treffen. Du kannst ihn auch noch\n"
"anvisieren, wenn er davonfliegt." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0613,
QUICKTEXT_ENABLE "Ein Armos-Ritter!\n"
COLOR("\x44") "Stoppe ihn und zerstöre ihn dann!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0614,
QUICKTEXT_ENABLE "Die Riesenqualle Barinade!\n"
COLOR("\x44") "Benutze erst Deinen Bumerang, um\n"
"die Riesenqualle zu betäuben, und\n"
"schlage dann mit dem Schwert zu!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0615,
QUICKTEXT_ENABLE "Ein Parasiten-Tentakel!\n"
COLOR("\x44") "Die dünne Stelle ist der schwache\n"
"Punkt. Benutze eine Distanzwaffe!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0616,
QUICKTEXT_ENABLE "Eine Blubberblase greift Dich an!\n"
COLOR("\x44") "Diese Dinger können aufplatzen \n"
"und Dich rückwärts schleudern, \n"
"wenn du sie aufschneidest!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0617,
QUICKTEXT_ENABLE "Eine Zappelqualle!\n"
COLOR("\x44") "Sie verteilt Stromschläge - willst\n"
"Du sie zerstören, benutze keinen\n"
"metallischen Gegenstand!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0618,
QUICKTEXT_ENABLE "Eine große Zappelqualle!\n"
COLOR("\x44") "Sie verteilt Stromschläge - willst\n"
"Du sie zerstören, benutze keinen\n"
"metallischen Gegenstand!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0619,
QUICKTEXT_ENABLE "Ein Elektromanta!\n"
COLOR("\x44") "Zerstöre ihn, bevor er Dich\n"
"erreicht!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061A,
QUICKTEXT_ENABLE "Phantom-Ganon greift Dich an!\n"
COLOR("\x44") "Das reitende Unheil des Waldtempels!\n"
"Ziele mit Pfeilen auf ihn, wenn er\n"
"aus dem Bild herauskommt!"BOX_BREAK
COLOR("\x44") "Schlage seine magischen Feuerbälle\n"
"mit dem Schwert zurück und\n"
"attackiere ihn, wenn er am\n"
"Boden liegt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061B,
QUICKTEXT_ENABLE "Der Stalfos-Ritter!\n"
COLOR("\x44") "Locke ihn an und schlage zu, wenn\n"
"sich eine gute Gelegenheit bietet!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061C,
QUICKTEXT_ENABLE "Eine blaue Knochenfratze!\n"
COLOR("\x44") "Wehre ihren Angriff mit Deinem\n"
COLOR("\x40") "Schild" COLOR("\x44") " ab!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061D,
QUICKTEXT_ENABLE "Eine bleiche Knochenfratze!\n"
COLOR("\x44") "Greife sie an, wenn sie sich nicht\n"
"mehr bewegt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061E,
QUICKTEXT_ENABLE "Dort ist eine grüne Knochenfratze!\n"
COLOR("\x44") "Greife an, sowie das grüne Feuer\n"
"verschwunden ist!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x061F,
QUICKTEXT_ENABLE "Vorsicht, hier sind Skullwandulas!\n"
COLOR("\x44") "Benutze eine Distanzwaffe, um\n"
"sie zu beseitigen!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0620,
QUICKTEXT_ENABLE "Eine goldene Skulltula!\n"
COLOR("\x44") "Diese Biester sind als \"Symbole\n"
"des Fluchs\" bekannt. Zerstöre sie,\n"
"und Du erhältst etwas!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0621,
QUICKTEXT_ENABLE "Der Lavadrachoid Volvagia!\n"
COLOR("\x44") "Dies ist der gefürchtete Wächter\n"
"des Feuertempels. Erweckt vom \n"
"Großmeister des Bösen!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0622,
QUICKTEXT_ENABLE "Ein Flammenderwisch!\n"
COLOR("\x44") "Lösche zunächst seine " COLOR("\x40") "flammende\n"
"Rüstung" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0623,
QUICKTEXT_ENABLE "Der Lavaschleim kriecht heran!\n"
COLOR("\x44") "Wenn Du das Feuer auf seinem\n"
"Rücken gelöscht hast, zerstöre ihn,\n"
"bevor er wieder entflammt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0624,
QUICKTEXT_ENABLE "Roter Tod!\n"
COLOR("\x44") "Wehre seine Angriffe mit Deinem\n"
COLOR("\x40") "Schild" COLOR("\x44") " ab!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0625,
QUICKTEXT_ENABLE "Das Wassertentakel Morpha!\n"
COLOR("\x44") "Dieses Monster ist Wächter des\n"
"Wassertempels. Sein eigentlicher\n"
"Körper ist der rot wabernde " COLOR("\x40") "Kern" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0626,
QUICKTEXT_ENABLE "Der schwarze " NAME "\n"
COLOR("\x44") "Besiege Deine schwarze Seele!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0627,
QUICKTEXT_ENABLE "Vorsicht vor der Killermuschel!\n"
COLOR("\x44") "Ihr " COLOR("\x40") "innenliegender Klappmuskel\n"
COLOR("\x44") "scheint der empfindliche Punkt zu\n"
"sein. Benutze eine Distanzwaffe!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0628,
QUICKTEXT_ENABLE "Der Stachelstein!\n"
COLOR("\x44") "Ziele mit einer Distanzwaffe auf\n"
"ihn, wenn er wie ein harmloser\n"
"Stein aussieht!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0629,
QUICKTEXT_ENABLE "Das ist Bongo Bongo!\n"
COLOR("\x44") "Diese Schattenbestie ist aus den\n"
"Tiefen der Hölle auferstanden. \n"
"Nutze das " COLOR("\x40") "Auge der Wahrheit" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x062A,
QUICKTEXT_ENABLE "Ein Zombie!\n"
COLOR("\x44") "Sein Blick paralysiert Dich. Wenn\n"
"er Dich anspringt, versuche durch\n"
COLOR("\x40") "einen Knopfdruck" COLOR("\x44") " zu flüchten!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x062B,
UNSKIPPABLE  QUICKTEXT_ENABLE "Phantom-Ganon!\n"
COLOR("\x44") "Attackiere ihn, wenn er" COLOR("\x40") " aus\n"
"dem Bild " COLOR("\x44") "reitet! Achte auf\n"
"sein Trugbild!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x062C,
"062c"
);

DECLARE_MESSAGE_GER(0x062D,
QUICKTEXT_ENABLE "Ein Wickel-Zombie!\n"
COLOR("\x44") "Sein Blick paralysiert Dich. Wenn\n"
"er Dich anspringt, versuche durch\n"
COLOR("\x40") "einen Knopfdruck" COLOR("\x44") " zu flüchten!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x062E,
QUICKTEXT_ENABLE "Die Hirnsauger-Hände!\n"
COLOR("\x44") "Wenn sie Dich erwischen, versuche\n"
"mit " COLOR("\x40") "einem Knopfdruck " COLOR("\x44") "zu flüchten!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x062F,
QUICKTEXT_ENABLE "Der große Hirnsauger!\n"
COLOR("\x44") "Zerschlage alle seine\n"
"Diener, um ihn zu beseitigen!\n"
"Triff den Kopf!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0630,
QUICKTEXT_ENABLE "Der Deckengrapscher!\n"
COLOR("\x44") "Du siehst seinen " COLOR("\x40") "Schatten" COLOR("\x44") " auf dem\n"
"Boden, bevor er angreift! Zerstöre\n"
"ihn, bevor er wieder entschwindet!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0631,
QUICKTEXT_ENABLE "Ein bösartiger Bodengrapscher!\n"
COLOR("\x44") "Sobald er sich aufteilt, zerstöre die\n"
"kleinen Grapscher, bevor sie sich\n"
"wieder vereinigen!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0632,
QUICKTEXT_ENABLE "Die Killaohma Koume!\n"
COLOR("\x44") "Ganondorfs höllische Ersatzmama,\n"
"Hexerin der Flammen! Sie scheint\n"
"durch " COLOR("\x40") "Kälte" COLOR("\x44") " verletzbar zu sein!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0633,
QUICKTEXT_ENABLE "Die Killaohma Kotake!\n"
COLOR("\x44") "Ganondorfs eiskalte Ersatzmama,\n"
"Hexerin des Eises. Sie scheint\n"
"durch " COLOR("\x40") "Hitze" COLOR("\x44") " verletzbar zu sein!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0634,
QUICKTEXT_ENABLE "Das ist ein Eisenprinz!\n"
COLOR("\x44") "Moment... Irgendwas stimmt nicht...\n"
"Das ist kein gewöhnlicher Gegner!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0635,
QUICKTEXT_ENABLE "Der Eisenprinz!\n"
COLOR("\x44") "Nimm Dich vor seiner schweren\n"
"Axt in acht! Schlage zu, wenn er\n"
"seine Deckung vernachlässigt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0636,
QUICKTEXT_ENABLE "Ein Horror-Kid!\n"
COLOR("\x44") "So etwas passiert also Kids,\n"
"die nachts im Wald unterwegs \n"
"sind..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0637,
QUICKTEXT_ENABLE "Der Raubschleim!\n"
COLOR("\x44") "Er frißt " COLOR("\x40") "Rüstungen" COLOR("\x44") " und " COLOR("\x40") "Schilde" COLOR("\x44") "!\n"
"Zerstöre ihn schnell, damit Du\n"
"Deine Sachen wiederbekommst!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0638,
"0638"
);

DECLARE_MESSAGE_GER(0x0639,
QUICKTEXT_ENABLE "Vorsicht vor Strahlzyklopen!\n"
COLOR("\x44") "Achte auf den tödlichen Strahl\n"
"und benutze am besten eine\n"
COLOR("\x40") "explosive Distanzwaffe" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x063A,
QUICKTEXT_ENABLE "Der Feuerfuchs Anubis!\n"
COLOR("\x44") "Dieser Gegner ist besonders\n"
"anfällig für " COLOR("\x41") "Feuer" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x063B,
QUICKTEXT_ENABLE "Ein Eisatmer!\n"
COLOR("\x44") "Achte auf seinen eisigen Atem und\n"
"zerschlage seine eisige Hülle so\n"
"schnell wie möglich!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x063C,
"063c"
);

DECLARE_MESSAGE_GER(0x063D,
QUICKTEXT_ENABLE "Ganondorf, Großmeister des Bösen!\n"
COLOR("\x44") "Ich habe keine Ahnung, wo sein\n"
"schwacher Punkt liegt..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x063E,
QUICKTEXT_ENABLE "Ganon!\n"
COLOR("\x44") "Ich habe keine Ahnung, wo sein\n"
"schwacher Punkt liegt..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x063F,
QUICKTEXT_ENABLE "Ein Horror-Kid!\n"
COLOR("\x44") "Das passiert also Kids, die\n"
"sich im Wald verlaufen? Könnten\n"
"wir uns wohl mit ihm anfreunden?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0640,
QUICKTEXT_ENABLE "Ein Horror-Kid!\n"
COLOR("\x44") "Das passiert also Kids, die sich\n"
"im Wald verlaufen? Sieht\n"
"traurig aus ohne sein Gesicht..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0641,
QUICKTEXT_ENABLE "Ein Horror-Kid!\n"
COLOR("\x44") "Das passiert also Kids, die sich im\n"
"Wald verlaufen. Sieht mit dem\n"
"Totenschädel ganz zufrieden aus..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0642,
QUICKTEXT_ENABLE "Ein Oktorok!\n"
COLOR("\x44") "Schlage die Steine, die er spuckt,\n"
"mit Deinem Schild zurück!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0643,
QUICKTEXT_ENABLE "Ein Irrlicht auf dem Friedhof!\n"
COLOR("\x44") "Starre es lange genug mit " COLOR("\x40") "[L] " COLOR("\x44") "an,\n"
"dann wird es wohl verschwinden..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0644,
QUICKTEXT_ENABLE "Ein Irrlicht!\n"
COLOR("\x44") "Starre es lange genug mit " COLOR("\x40") "[L]" COLOR("\x44") " an,\n"
"dann wird es wohl verschwinden..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0645,
QUICKTEXT_ENABLE "Ein roter Arachno!\n"
COLOR("\x44") "Erfasse ihn mit " COLOR("\x40") "[L]" COLOR("\x44") ", wenn er\n"
"springt, und schlage mit dem\n"
"Schwert zu!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0646,
QUICKTEXT_ENABLE "Ein blauer Arachno!\n"
COLOR("\x44") "Im Wasser hast Du kaum eine\n"
"Chance, ihn zu erwischen. Locke\n"
"ihn an Land!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0647,
QUICKTEXT_ENABLE "Widerliche Sandkiller!\n"
COLOR("\x44") "Achte darauf, wo sie auftauchen\n"
"und weiche ihnen geschickt aus!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0648,
QUICKTEXT_ENABLE "Eine riesige Killeranas!\n"
COLOR("\x44") "Versuche, ihre " COLOR("\x40") "Wurzel" COLOR("\x44") " zu\n"
"erwischen - das ist ihre\n"
"schwache Stelle!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0649,
QUICKTEXT_ENABLE "Eine Larve der Killeranas!\n"
COLOR("\x44") "Verteidige Dich mit Deinem " COLOR("\x40") "Schild" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x064A,
"064a"
);

DECLARE_MESSAGE_GER(0x064B,
"064b"
);

DECLARE_MESSAGE_GER(0x064C,
QUICKTEXT_ENABLE "Ein bissiger Wolfsheimer!\n"
COLOR("\x44") "Laß ihn herankommen, achte auf\n"
"seine Bewegungen und schlage\n"
"ihn, wenn er unvorsichtig wird..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x064D,
QUICKTEXT_ENABLE "Ein verrückter Laubkerl!\n"
COLOR("\x44") "Kommst Du zu nahe, verschwindet\n"
"er im Laub. Setze Deine\n"
"Ausrüstung sinnvoll ein!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x064E,
QUICKTEXT_ENABLE "Ein reicher Laubkerl!\n"
COLOR("\x44") "Kommst Du zu nahe, verschwindet\n"
"er im Laub. Aber bist Du geschickt,\n"
"hat er etwas für Dich..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x064F,
QUICKTEXT_ENABLE "Das ist der Geist von Boris!\n"
COLOR("\x44") "Der Geist des Totengräbers!\n"
"Gewinnst Du den Wettlauf mit ihm,\n"
"hat er vielleicht ein " COLOR("\x40") "Andenken" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0650,
QUICKTEXT_ENABLE "Betti - eine der Irrlicht-Schwestern!\n"
COLOR("\x44") "Wenn sie sich aufteilt, mußt Du\n"
"herausfinden, welche die " COLOR("\x40") "Echte" COLOR("\x44") " ist!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0651,
QUICKTEXT_ENABLE "Hetti - eine der Irrlicht-Schwestern!\n"
COLOR("\x44") "Ziele auf sie, sobald sie erscheint!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0652,
QUICKTEXT_ENABLE "Netti - eine der Irrlicht-Schwestern!\n"
COLOR("\x44") "Ziele auf sie, sobald sie erscheint!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0653,
QUICKTEXT_ENABLE "Etti - eine der Irrlicht-Schwestern!\n"
COLOR("\x44") "Ziele auf sie, sobald sie erscheint!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0654,
QUICKTEXT_ENABLE "Eine Gerudo-Kriegerin!\n"
COLOR("\x44") "Attackiere sie, sowie sie ihre\n"
"Deckung vernachlässigt und hüte\n"
"Dich vor ihrer Spezialattacke!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0655,
QUICKTEXT_ENABLE "Ein Knochengänger!\n"
COLOR("\x44") "Laß Dir von ihm keine Angst\n"
"einjagen, schwinge einfach Dein\n"
"Schwert!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0656,
QUICKTEXT_ENABLE "Ein Polarflatterer!\n"
COLOR("\x44") "Zerstöre diese eiskalten Widerlinge,\n"
"bevor sie Dich einfrieren können!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0657,
QUICKTEXT_ENABLE "Ein weißer Wolfsheimer!\n"
COLOR("\x44") "Laß ihn herankommen, achte auf\n"
"seine Bewegungen und schlage\n"
"ihn, wenn er unvorsichtig wird..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0658,
QUICKTEXT_ENABLE "Eine schwarze Wüstenkrähe!\n"
COLOR("\x44") "Zerstöre diese krächzenden\n"
"Widerlinge, bevor sie auf Dich\n"
"einhacken können!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0659,
QUICKTEXT_ENABLE "Hier wartet ein Grozokto!\n"
COLOR("\x44") "Gib ihm mit dem Bumerang eins\n"
"auf die Nase und attackiere sein\n"
"Hinterteil!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x065A,
QUICKTEXT_ENABLE "Ein Nachtschwärmer!\n"
COLOR("\x44") "Dieser Geist ist hartnäckig und\n"
"sehr schnell!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x065B,
QUICKTEXT_ENABLE "Die... Killaohma?!\n"
COLOR("\x44") "Die vereinigten und attraktiv\n"
"verjüngten Kotake und Koume!\n"
"Wirf die " COLOR("\x40") "Magie-Attacken" COLOR("\x44") " zurück!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x065C,
QUICKTEXT_ENABLE "Ein Irrlicht!\n"
COLOR("\x44") "Dieses Irrlicht flüchtet nicht,\n"
"wenn Du versuchst, es mit " COLOR("\x40") "[Z]" COLOR("\x44") "\n"
"anzustarren. Ganz im Gegenteil..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x086D,
QUICKTEXT_ENABLE  SHIFT("\x38") "Spiele die Melodien\n"
SHIFT("\x3B") "mit " COLOR("\x42") "[A]" COLOR("\x40") " und " COLOR("\x46") "[C]" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x086E,
QUICKTEXT_ENABLE  SHIFT("\x29") "Spiele mit " COLOR("\x42") "[A]" COLOR("\x40") " und " COLOR("\x46") "[C]" COLOR("\x40") ".\n"
SHIFT("\x1B") "Drücke" COLOR("\x42") " " COLOR("\x41") "[B]" COLOR("\x40") ", um zu beenden.\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x086F,
"\n"
"\n"
OCARINA
);

DECLARE_MESSAGE_GER(0x0870,
QUICKTEXT_ENABLE "Spiele das " COLOR("\x42") "Menuett des Waldes" COLOR("\x40") "." COLOR("\x42") "\n"
"\n"
"\n"
COLOR("\x40")  QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0871,
QUICKTEXT_ENABLE "Spiele den " COLOR("\x41") "Bolero des Feuers" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0872,
QUICKTEXT_ENABLE "Spiele die " COLOR("\x43") "Serenade des Wassers" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0873,
QUICKTEXT_ENABLE "Spiele das " COLOR("\x46") "Requiem der Geister" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0874,
QUICKTEXT_ENABLE "Spiele die " COLOR("\x45") "Nocturne des Schattens" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0875,
QUICKTEXT_ENABLE "Spiele die " COLOR("\x44") "Kantate des Lichts" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0876,
QUICKTEXT_ENABLE "Spiele geschwind " COLOR("\x42") "Salias Lied" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0877,
QUICKTEXT_ENABLE "Okay? Hier ist " COLOR("\x41") "Eponas Lied" COLOR("\x40") "...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0878,
QUICKTEXT_ENABLE "Präge Dir " COLOR("\x43") "Zeldas Wiegenlied" COLOR("\x40") " ein...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x0879,
QUICKTEXT_ENABLE "Spiele die " COLOR("\x46") "Hymne der Sonne" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x087A,
QUICKTEXT_ENABLE  COLOR("\x44") "Dies Lied" COLOR("\x40") " öffnet das Zeitportal...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x087B,
QUICKTEXT_ENABLE "Nie werde ich " COLOR("\x45") "dies Lied" COLOR("\x40") " vergessen!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x087C,
QUICKTEXT_ENABLE "Spiele mit " COLOR("\x42") "[A]" COLOR("\x40") " und " COLOR("\x46") "[C]" COLOR("\x40") ";\n"
COLOR("\x41") "[B]" COLOR("\x40") " zum Beenden.\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_GER(0x088B,
BACKGROUND("\x00", "\x20", "\x00")  PERSISTENT
);

DECLARE_MESSAGE_GER(0x088C,
QUICKTEXT_ENABLE  SHIFT("\x13")  COLOR("\x41") "Hier kannst Du nicht warpen!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_GER(0x088D,
QUICKTEXT_ENABLE  COLOR("\x42") "Zu den Verlorenen Wäldern!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x088E,
QUICKTEXT_ENABLE  COLOR("\x41") "Zum Todeskrater!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x088F,
QUICKTEXT_ENABLE  COLOR("\x43") "Zum Hylia-See!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0890,
QUICKTEXT_ENABLE  COLOR("\x46") "Zum Wüstenkoloss!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0891,
QUICKTEXT_ENABLE  COLOR("\x45") "Zum Friedhof!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0892,
QUICKTEXT_ENABLE  COLOR("\x44") "Zur Zitadelle der Zeit!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x0893,
QUICKTEXT_ENABLE  COLOR("\x42") "Menuett des Waldes " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0894,
QUICKTEXT_ENABLE  COLOR("\x41") "Bolero des Feuers " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0895,
QUICKTEXT_ENABLE  COLOR("\x43") "Serenade des Wassers " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0896,
QUICKTEXT_ENABLE  COLOR("\x46") "Requiem der Geister " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0897,
QUICKTEXT_ENABLE  COLOR("\x45") "Nocturne des Schattens " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0898,
QUICKTEXT_ENABLE  COLOR("\x44") "Kantate des Lichts " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x0899,
QUICKTEXT_ENABLE  COLOR("\x42") "Salias Lied " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089A,
QUICKTEXT_ENABLE  COLOR("\x41") "Eponas Lied " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089B,
QUICKTEXT_ENABLE  COLOR("\x43") "Zeldas Wiegenlied" COLOR("\x40") " gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089C,
QUICKTEXT_ENABLE  COLOR("\x46") "Hymne der Sonne" COLOR("\x40") " gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089D,
QUICKTEXT_ENABLE  COLOR("\x44") "Hymne der Zeit " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089E,
QUICKTEXT_ENABLE  COLOR("\x45") "Hymne des" COLOR("\x40") " " COLOR("\x45") "Sturms " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x089F,
QUICKTEXT_ENABLE  COLOR("\x46") "Vogelscheuchen-Polka " COLOR("\x40") "gespielt!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x1000,
UNSKIPPABLE  COLOR("\x44") "Na endlich bist Du aufgewacht.\n"
"Ich bin " COLOR("\x41") "Navi" COLOR("\x44") "!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Der Deku-Baum bat mich, Dich\n"
"ab jetzt zu " COLOR("\x41") "begleiten" COLOR("\x44") ".\n"
"Schön, Dich kennenzulernen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1001,
UNSKIPPABLE  SHIFT("\x10") "Guten Morgen, " NAME "!"
);

DECLARE_MESSAGE_GER(0x1002,
UNSKIPPABLE "Hey! Eine Fee!"BOX_BREAK
UNSKIPPABLE "Endlich hast Du auch eine Fee,\n"
NAME "!" TEXTID("\x10\x0F")
);

DECLARE_MESSAGE_GER(0x1003,
"Ich werde hier auf Dich warten.\n"
"Geh nun, denn der Deku-Baum\n"
"hat Dich gerufen!"
);

DECLARE_MESSAGE_GER(0x1004,
"Mit" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "kannst Du Dinge heben!"BOX_BREAK"Dieser arrogante" COLOR("\x41") " Mido" COLOR("\x40") "... Er will,\n"
"daß die Steine hier verschwinden.\n"
"Und jetzt soll ich für ihn die\n"
"Arbeit machen!"
);

DECLARE_MESSAGE_GER(0x1005,
UNSKIPPABLE "Oh, Du besitzt endlich eine " COLOR("\x44") "Fee" COLOR("\x40") "?!\n"
"Das ist cool, " NAME "!"BOX_BREAK
UNSKIPPABLE "Was?"BOX_BREAK
UNSKIPPABLE "Der " COLOR("\x41") "Deku-Baum" COLOR("\x40") " hat Dich zu sich\n"
"gerufen? Das ist eine große Ehre!"BOX_BREAK
UNSKIPPABLE "Es kommt selten vor, daß der\n"
"Deku-Baum jemanden zu sich ruft."BOX_BREAK
UNSKIPPABLE "Er ist der Hüter der Wälder und\n"
"hat uns Kokiri erschaffen!"
);

DECLARE_MESSAGE_GER(0x1006,
"Ich frage mich, ob der " COLOR("\x41") "Deku-Baum " COLOR("\x40") "\n"
"der Schöpfer allen Lebens ist..."
);

DECLARE_MESSAGE_GER(0x1007,
"Laß uns an Deinen Kampftechniken\n"
"arbeiten!"BOX_BREAK"Hältst Du " COLOR("\x44") "[L]" COLOR("\x40") " gedrückt und\n"
"läufst dabei nach rechts oder\n"
"links, kannst Du mit " COLOR("\x42") "[A]" COLOR("\x40") " " COLOR("\x41") "Sprünge\n"
"zur Seite " COLOR("\x40") "ausführen."BOX_BREAK"Hältst Du " COLOR("\x44") "[L]" COLOR("\x40") " gedrückt und läufst\n"
"rückwärts, kannst Du mit " COLOR("\x42") "[A]" COLOR("\x40") "\n"
"einen " COLOR("\x41") "Rückwärtssalto" COLOR("\x40") " ausführen."BOX_BREAK"Eine " COLOR("\x41") "Rollattacke" COLOR("\x40") " führst Du aus,\n"
"indem Du " COLOR("\x44") "[L]" COLOR("\x40") " gedrückt hältst und\n"
"dann " COLOR("\x42") "[A]" COLOR("\x40") " betätigst. Während der\n"
"Attacke bist Du nicht verwundbar."BOX_BREAK"Hast Du Dein Schwert in der\n"
"Hand und hältst " COLOR("\x44") "[L]" COLOR("\x40") " gedrückt, \n"
"kannst Du mit " COLOR("\x42") "[A]" COLOR("\x40") " eine effektive\n"
COLOR("\x41") "Sprungattacke" COLOR("\x40") " ausführen."BOX_BREAK"Die" COLOR("\x44") " Zielerfassung mit [L]" COLOR("\x40") "\n"
"kannst Du an diesem " COLOR("\x41") "Stein" COLOR("\x40") " \n"
"ausprobieren!"
);

DECLARE_MESSAGE_GER(0x1008,
UNSKIPPABLE "Du hast nicht die Erlaubnis, das\n"
"Dorf zu verlassen!" TEXTID("\x10\x09")
);

DECLARE_MESSAGE_GER(0x1009,
"Der Deku-Baum sprach, daß jeder\n"
"Kokiri, der das Dorf verläßt, \n"
"zum Sterben verdammt ist!"
);

DECLARE_MESSAGE_GER(0x100A,
UNSKIPPABLE "Dieser großmäulige" COLOR("\x41") " Mido" COLOR("\x40") "!\n"
"Ich muß für ihn das Unkraut vor\n"
"Salias Haus entfernen."BOX_BREAK
UNSKIPPABLE "Er hat Salia erzählt, daß ER das\n"
"für sie erledigen würde. Und nun\n"
"muß ich es tun!" TEXTID("\x10\x0B")
);

DECLARE_MESSAGE_GER(0x100B,
COLOR("\x41") "Salia" COLOR("\x40") " und Du, Ihr seid doch gute\n"
"Freunde. Hilfst Du mir bei meiner \n"
"Arbeit?"BOX_BREAK"Du darfst auch alles behalten, was \n"
"Du findest."
);

DECLARE_MESSAGE_GER(0x100C,
UNSKIPPABLE "Gut gemacht! Dies war mit Hilfe\n"
"Deiner " COLOR("\x44") "Fee" COLOR("\x40") " möglich!"BOX_BREAK
UNSKIPPABLE "Wie schön, daß auch Du endlich\n"
"eine ständige Begleiterin hast!"BOX_BREAK
UNSKIPPABLE "Ich werde Dich lehren, ihre\n"
"Kräfte richtig zu nutzen!" TEXTID("\x10\x0D")
);

DECLARE_MESSAGE_GER(0x100D,
"Fliegt Deine Fee zu einem Objekt  \n"
"oder einer Person, drücke " COLOR("\x44") "[L]" COLOR("\x40") ", um \n"
COLOR("\x41") "dorthin zu schauen" COLOR("\x40") "."BOX_BREAK"Drückst Du " COLOR("\x44") "[L]" COLOR("\x40") " und dann " COLOR("\x42") "[A]" COLOR("\x40") ",\n"
"kannst Du mit weiter entfernten\n"
"Personen sprechen."BOX_BREAK"Wenn Du kein Ziel erfaßt,\n"
"kannst Du " COLOR("\x44") "[L]" COLOR("\x40") " nutzen, um\n"
COLOR("\x41") "geradeaus" COLOR("\x40") " " COLOR("\x41") "zu schauen" COLOR("\x40") ".\n"
"Versuch es!"
);

DECLARE_MESSAGE_GER(0x100E,
UNSKIPPABLE "Ah, Du besitzt endlich eine " COLOR("\x44") "Fee" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Nun gibt es viel zu lernen!" TEXTID("\x10\x19")
);

DECLARE_MESSAGE_GER(0x100F,
UNSKIPPABLE  SFX("\x68\x63") "Wow! " QUICKTEXT_ENABLE "Das ist cool!" QUICKTEXT_DISABLE "\n"
"Ich freue mich für Dich!"BOX_BREAK
UNSKIPPABLE "Nun bist Du ein wahrer Kokiri,\n"
NAME "!" TEXTID("\x10\x10")
);

DECLARE_MESSAGE_GER(0x1010,
UNSKIPPABLE "Ist es wirklich wahr? \n"
"Der Deku-Baum möchte, daß Du\n"
"zu ihm kommst?"BOX_BREAK
UNSKIPPABLE "Es ist eine große Ehre, vor den\n"
"Deku-Baum treten zu dürfen!" TEXTID("\x10\x03")
);

DECLARE_MESSAGE_GER(0x1011,
UNSKIPPABLE "Oh, Du verläßt uns?"
);

DECLARE_MESSAGE_GER(0x1012,
UNSKIPPABLE "Sicher hast Du Deine Gründe.\n"
"Versprich mir, daß wir immer \n"
"Freunde bleiben, ja?"
);

DECLARE_MESSAGE_GER(0x1013,
UNSKIPPABLE "Ich möchte, daß Du meine\n"
"Okarina an Dich nimmst."
);

DECLARE_MESSAGE_GER(0x1014,
"Sie bedeutet mir sehr viel...\n"
"Wann immer Du sie spielst, sollst\n"
"Du an mich denken..."
);

DECLARE_MESSAGE_GER(0x1015,
UNSKIPPABLE "Oh... Navi...\n"
"Du hast Deinen Auftrag\n"
"also erfüllt!"BOX_BREAK
UNSKIPPABLE "Sei willkommen, " NAME "!"BOX_BREAK
UNSKIPPABLE "Höre nun die Worte, die ich,\n"
"der" COLOR("\x41") " Deku-Baum" COLOR("\x40") ", Dir zu sagen habe."BOX_BREAK
UNSKIPPABLE "Die vergangenen Nächte müssen\n"
"für Dich ruhelos und von finsteren\n"
"Träumen geprägt gewesen sein."BOX_BREAK
UNSKIPPABLE "In diesen Tagen, da die Diener\n"
"des Bösen zu neuer Stärke\n"
"gelangen, werden die Auserwählten\n"
"von Alpträumen geplagt."BOX_BREAK
UNSKIPPABLE "Dies ist auch Dir widerfahren!"BOX_BREAK
UNSKIPPABLE  NAME "... \n"
"Nun ist die Zeit gekommen, da es\n"
"gilt, Deinen Mut zu prüfen!" TEXTID("\x10\x16")
);

DECLARE_MESSAGE_GER(0x1016,
"Ein " COLOR("\x41") "Fluch" COLOR("\x40") " lastet auf mir!\n"
"Deine Jugend und Kraft sollen mir\n"
"helfen, den Fluch zu brechen."BOX_BREAK"Hast Du den Mut, diese Prüfung\n"
"auf Dich zu nehmen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1017,
UNSKIPPABLE "So sei es! Tritt ein, tapferer \n"
NAME ", und auch Du, \n"
"Navi."BOX_BREAK
UNSKIPPABLE "Navi, holde Fee...  \n"
"Unterstütze " NAME "!"BOX_BREAK
UNSKIPPABLE "Und Du " NAME ", höre mit\n"
COLOR("\x46") "[C-Up]" COLOR("\x40") " " COLOR("\x44") "Navis" COLOR("\x40") " Worte, denn es\n"
"sind Worte der Weisheit."
);

DECLARE_MESSAGE_GER(0x1018,
"Womöglich fehlt Dir das Vertrauen \n"
"in Deine eigenen Fähigkeiten.\n"
"Kehre in den Kokiri-Wald zurück\n"
"und übe Deine Kampfeskunst!"BOX_BREAK"Fühlst Du, daß Deine Zeit \n"
"gekommen ist, tritt mir erneut \n"
"gegenüber und drücke" COLOR("\x44") " [L]" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x1019,
"Der beste Ort, um zu lernen,\n"
"Fähigkeiten richtig einzusetzen,\n"
"ist das " COLOR("\x42") "Kokiri Trainingslager\n"
COLOR("\x40") "hier auf dem Hügel."
);

DECLARE_MESSAGE_GER(0x101A,
UNSKIPPABLE  SFX("\x38\x82")  QUICKTEXT_ENABLE "Vergebung, Herr!" QUICKTEXT_DISABLE "\n"
"Läßt Du mich gehen, wenn ich\n"
"Dir ein Geheimnis anvertraue?"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Springst Du aus großer\n"
"Höhe und drückst bei der Landung\n"
"den " COLOR("\x44") "[Control Stick] " COLOR("\x40") "nach vorn, rollst Du Dich\n"
"ab und linderst so den Aufprall."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Allerdings kann ich nicht\n"
"wirklich garantieren, daß dies\n"
"bei jeder Absprunghöhe klappt..."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Probier es einfach aus, wenn\n"
"Du Mut hast!\n"
QUICKTEXT_ENABLE "Ich verschwinde!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x101B,
"Hey!\n"
"Du da, unter der Maske. Bist Du\n"
"nicht der junge Kokiri?"
);

DECLARE_MESSAGE_GER(0x101C,
"Eine coole Maske hast Du da, echt\n"
"groovy! Mit dem Teil würde ich\n"
"sicher einige Leute schocken."BOX_BREAK"Hey, gibst Du mir die Maske?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x101D,
"Blöd, ich hätte sie gerne gehabt..."
);

DECLARE_MESSAGE_GER(0x101E,
"Cool! Ich werde sie immer tragen!"
);

DECLARE_MESSAGE_GER(0x101F,
UNSKIPPABLE  SFX("\x48\x07") "Er hat Dir nur " COLOR("\x41") "10 Rubine" COLOR("\x40") " \n"
"für die 20 Rubine teure Maske\n"
"gegeben!\n"
"Ein schlechtes Geschäft!"BOX_BREAK
UNSKIPPABLE "Geh zurück zum Maskenhändler \n"
"und gib ihm seine " COLOR("\x41") "20 Rubine" COLOR("\x40") ".\n"
"Den Verlust mußt Du aus Deiner \n"
"eigenen Tasche bezahlen."
);

DECLARE_MESSAGE_GER(0x1020,
"Ich bin ein Zombie! Du mußt\n"
"schreiend davonlaufen!"
);

DECLARE_MESSAGE_GER(0x1021,
"Du hier? Ich dachte, Du hättest \n"
"den Wald verlassen..."
);

DECLARE_MESSAGE_GER(0x1022,
"Wußtest Du, daß Du Dich mit dem \n"
COLOR("\x44") "[Control Stick] " COLOR("\x40") "abrollen kannst, wenn Du aus\n"
"großer Höhe herabspringst?\n"
"Das lindert Deinen Aufprall."BOX_BREAK"Ist es allerdings zu hoch, wirst\n"
"Du dennoch Schaden nehmen..."
);

DECLARE_MESSAGE_GER(0x1023,
"Salia sagte, sie erwarte Dich\n"
"am üblichen Ort."
);

DECLARE_MESSAGE_GER(0x1024,
UNSKIPPABLE "Hab Dank, " NAME "!"
);

DECLARE_MESSAGE_GER(0x1025,
"Hey, eine prächtige Feen-Schleuder\n"
"hast Du da..."BOX_BREAK"Hältst Du " COLOR("\x46") "[C] " COLOR("\x40") "gedrückt, kannst Du\n"
"mit ihr zielen. Läßt Du wieder\n"
"los, schießt Du einen Deku-Kern." COLOR("\x46") "." COLOR("\x40") "\n"
"Bist Du ein guter Schütze?"BOX_BREAK"Hältst Du die Schleuder in der\n"
"Hand und drückst " COLOR("\x44") "[L]" COLOR("\x40") ", kannst Du" COLOR("\x44") " \n"
COLOR("\x40") "sogar schießen, " COLOR("\x41") "während Du Dich\n"
"bewegst" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x1026,
"Du mußt, " NAME "!\n"
"Mir bleibt nur wenig Zeit!"
);

DECLARE_MESSAGE_GER(0x1027,
UNSKIPPABLE "Höre, was ich zu sagen habe.\n"
"Ein " COLOR("\x41") "Diener des Bösen, der aus der \n"
"Wüste kam" COLOR("\x40") ", hat mich verflucht!"
);

DECLARE_MESSAGE_GER(0x1028,
"Falls Du Salia suchst: Sie ist in \n"
"den " COLOR("\x42") "Verlorenen Wäldern" COLOR("\x40") "."BOX_BREAK"Der Eingang? Der ist irgendwo\n"
"hier im Dorf!"BOX_BREAK"Sicher wird einer wie Du sich im\n"
"Wald verlaufen. Da nützt Dir auch\n"
"Deine Fee nichts!"BOX_BREAK
SHIFT("\x24")  QUICKTEXT_ENABLE "Und jetzt verschwinde!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x1029,
UNSKIPPABLE "Niemals darf es dem Teufel \n"
"aus der Wüste gelingen, die\n"
"Macht des Triforce zu erringen."BOX_BREAK
UNSKIPPABLE "Nie darf der, der Böses in\n"
"seinem Herzen trägt, das \n"
"Heilige Reich betreten!"BOX_BREAK
UNSKIPPABLE "Der Dämon, der den Fluch auf \n"
"mich legte und mir die Kraft\n"
"raubte!"BOX_BREAK
UNSKIPPABLE "Mein Ende naht, das Böse nagt\n"
"an meinen Wurzeln..."BOX_BREAK
UNSKIPPABLE "Obwohl Du den Fluch gebrochen\n"
"hast, kommt Deine Hilfe zu spät...\n"
"Ich bin zum Sterben verdammt."BOX_BREAK
UNSKIPPABLE "Meine Zeit ist vorüber...\n"
UNSKIPPABLE "Doch trauere nicht um mich!"BOX_BREAK
UNSKIPPABLE "Mein Auftrag war, Dich einzuweihen \n"
"in die Geschehnisse um Hyrule..."BOX_BREAK
UNSKIPPABLE "Du bist des Landes letzte \n"
"Hoffnung!"
);

DECLARE_MESSAGE_GER(0x102A,
UNSKIPPABLE "Die Zukunft liegt in Deinen \n"
"Händen, " NAME "...\n"
"Ich weiß, Du hast die Kraft..."BOX_BREAK
UNSKIPPABLE "Navi...\n"
"Hilf " NAME ", meinen letzten \n"
"Willen zu verwirklichen..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "Ich ersuche Dich... Navi..." TEXT_SPEED("\x00") "\n"
TEXT_SPEED("\x03") "So... lebt... denn... wohl..." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_GER(0x102B,
UNSKIPPABLE  COLOR("\x44") "Du hast die Worte des \n"
"Deku-Baumes gehört! Nur Du kannst\n"
"Hyrule retten! Laß uns also zum\n"
"Schloß aufbrechen, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x102C,
UNSKIPPABLE  TEXT_SPEED("\x01")  COLOR("\x44") "Leb wohl... " COLOR("\x40")  TEXT_SPEED("\x00")  COLOR("\x44") "weiser Deku-Baum..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x102D,
"Wie schade..."
);

DECLARE_MESSAGE_GER(0x102E,
"Spielst Du mit uns?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x102F,
UNSKIPPABLE "Hey Du " COLOR("\x44") "feenloser Versager" COLOR("\x40") "!\n"
"Was hast Du mit dem Deku-Baum\n"
"zu bereden?"BOX_BREAK
UNSKIPPABLE "Ohne Fee bist Du nicht mal\n"
"ein richtiger Mann!" TEXTID("\x10\xD0")
);

DECLARE_MESSAGE_GER(0x1030,
"Wenn Du passieren willst, solltest\n"
"Du wenigstens mit einem " COLOR("\x41") "Schwert" COLOR("\x42") " \n"
COLOR("\x40") "und einem " COLOR("\x44") "Schild " COLOR("\x40") "ausgerüstet sein!"BOX_BREAK
SHIFT("\x51")  QUICKTEXT_ENABLE "Verschwinde!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x1031,
SHIFT("\x57")  QUICKTEXT_ENABLE "Was?!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Mido " COLOR("\x40") "läßt Dich nicht zum \n"
"Deku-Baum?" TEXTID("\x10\xC8")
);

DECLARE_MESSAGE_GER(0x1032,
"Das " COLOR("\x42") "Schwert" COLOR("\x40") " ist irgendwo\n"
"verborgen, sagt man. Es ist das\n"
"einzige Schwert in Kokiri! Den\n"
COLOR("\x44") "Schild" COLOR("\x40") " kannst Du im Laden kaufen."
);

DECLARE_MESSAGE_GER(0x1033,
UNSKIPPABLE "Bevor Du zum Deku-Baum darfst, \n"
"mußt Du Dich zunächst mit einem\n"
COLOR("\x41") "Schwert" COLOR("\x40") " und einem " COLOR("\x44") "Schild" COLOR("\x40") " \n"
"ausrüsten!" TEXTID("\x10\xD2")
);

DECLARE_MESSAGE_GER(0x1034,
"Ich werde Dich niemals als einen \n"
"der Unseren akzeptieren!"BOX_BREAK"Wie nur kann es sein, daß erst\n"
"Salia und nun auch der Deku-Baum\n"
"so viel Vertrauen zu Dir haben? \n"
"Grummel... Grummel..."
);

DECLARE_MESSAGE_GER(0x1035,
"Ich kann Dir erklären, was die\n"
"Bildschirm-Symbole bedeuten.\n"
TWO_CHOICE  COLOR("\x42") "Die gelben Symbole\n"
"Das grüne Symbol" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1036,
"Die drei gelben Symbole am \n"
"rechten oberen Bildrand sind die \n"
COLOR("\x46") "Gegenstands-Symbole" COLOR("\x40") "."BOX_BREAK"Sie zeigen Dir die Gegenstände an,\n"
"die Du mit " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down] " COLOR("\x40") "und" COLOR("\x46") " [C-Right] \n"
COLOR("\x40") "einsetzen kannst."BOX_BREAK"Hast Du einen " COLOR("\x46") "[C]-Gegenstand" COLOR("\x40") " \n"
"erhalten, begib Dich ins \n"
COLOR("\x46") "Gegenstands-Menü " COLOR("\x40") "und plaziere \n"
"ihn auf " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x1037,
"Das grüne Symbol ist das " COLOR("\x42") "Aktions-\n"
"Symbol" COLOR("\x40") "."BOX_BREAK"Dieses Symbol gibt an, welche \n"
"Aktion Du ausführst, wenn Du\n"
COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "betätigst."BOX_BREAK"An bestimmten Stellen hast Du die\n"
"Möglichkeit, verschiedene Aktionen\n"
"auszuführen."
);

DECLARE_MESSAGE_GER(0x1038,
"Wenn Du etwas über die " COLOR("\x41") "Karte" COLOR("\x40") "\n"
"oder die" COLOR("\x41") " Gegenstände " COLOR("\x40") "erfahren\n"
"möchtest, kann ich Dir \n"
"weiterhelfen."BOX_BREAK"Was interessiert Dich?\n"
THREE_CHOICE  COLOR("\x42") "Karte\n"
"Gegenstände\n"
"Zurück" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1039,
"Ein " COLOR("\x41") "Kartenausschnitt" COLOR("\x40") " wird am\n"
"rechten unteren Bildrand angezeigt."BOX_BREAK"Der " COLOR("\x46") "gelbe Pfeil" COLOR("\x40") " zeigt Deine\n"
"derzeitige Position und\n"
"Deine Blickrichtung. Der " COLOR("\x41") "rote\n"
"Pfeil" COLOR("\x40") " symbolisiert den Eingang."BOX_BREAK"Mit dem " COLOR("\x44") "[D-Pad] Steuerkreuz " COLOR("\x40") "kannst Du\n"
"die Anzeige ein- und ausblenden."BOX_BREAK"Drückst Du " COLOR("\x44") "START," COLOR("\x41") " " COLOR("\x40") "kannst Du\n"
"Deinen derzeitigen Aufenthaltsort\n"
"feststellen."BOX_BREAK"Neben anderen Menüs findest Du\n"
"hier den " COLOR("\x41") "Karten-Bildschirm" COLOR("\x40") "."BOX_BREAK"Dieser zeigt Dir eine Karte des\n"
"Landes Hyrule oder des Labyrinths,\n"
"in dem Du Dich gerade befindest."
);

DECLARE_MESSAGE_GER(0x103A,
"Es gibt drei Arten von Gegenständen:\n"
COLOR("\x42") "Ausrüstungs-" COLOR("\x40") ", " COLOR("\x46") "[C] " COLOR("\x40") "und" COLOR("\x46") "\n"
COLOR("\x44") "Missions-Gegenstände" COLOR("\x40") "."BOX_BREAK
COLOR("\x42") "Ausrüstungs-Gegenstände" COLOR("\x40") " sind \n"
"Dinge wie Schwert, Schild oder \n"
"Rüstung. Wähle sie mit dem Cursor\n"
"aus und bestätige mit " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK
COLOR("\x46") "[C]Gegenstände " COLOR("\x40") "kannst Du \n"
"auf " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " oder " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"legen und sie durch diese auch\n"
"einsetzen."BOX_BREAK
COLOR("\x44") "Missions-Gegenstände " COLOR("\x40") "sammelst Du \n"
"während Deines Abenteuers. Du\n"
"mußt sie nicht speziell auswählen,\n"
"damit Du sie nutzen kannst."BOX_BREAK"Willst Du Deine Ausrüstung\n"
"verändern oder auch nur Dein \n"
"Inventar begutachten, drücke\n"
COLOR("\x44") "START" COLOR("\x40") "."BOX_BREAK"Mit " COLOR("\x44") "[L]" COLOR("\x40") " oder " COLOR("\x44") "[R] " COLOR("\x40") "kannst Du" COLOR("\x44") "\n"
COLOR("\x40") "zwischen den verschiedenen\n"
"Menüs hin- und herwechseln."BOX_BREAK"Mit Cursor und " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "wählst Du einen \n"
COLOR("\x42") "Ausrüstungs-Gegenstand" COLOR("\x40") ", mit " COLOR("\x46") "[C-Left],\n"
"[C-Down] " COLOR("\x40") "oder" COLOR("\x46") " [C-Right] " COLOR("\x40") "wählst Du einen \n"
COLOR("\x46") "[C]Gegenstand" COLOR("\x40") "."BOX_BREAK"Das waren eine Menge\n"
"Erklärungen, nicht wahr?"
);

DECLARE_MESSAGE_GER(0x103B,
"Willst Du Deinen Spielstand \n"
COLOR("\x41") "sichern" COLOR("\x40") ", drücke " COLOR("\x44") "START" COLOR("\x40") ", um zu\n"
"den Menüs zu gelangen und dann\n"
COLOR("\x41") "[B]" COLOR("\x40") ", um zu sichern."
);

DECLARE_MESSAGE_GER(0x103C,
"Meine Schwester hat einige \n"
"Rubine genommen und ist zum\n"
"Kokiri-Laden gegangen, um\n"
"dort einzukaufen!"BOX_BREAK"Apropos " COLOR("\x41") "Rubine" COLOR("\x40") ": Je größer Deine\n"
"Börse ist, desto mehr Rubine\n"
"kannst Du tragen..."
);

DECLARE_MESSAGE_GER(0x103D,
"Manche Dinge in diesem Laden\n"
"findest Du auch im Wald. Den\n"
"Deku-Schild jedoch nicht! Ihn mußt\n"
"Du kaufen!"BOX_BREAK"Weißt Du, wie man den " COLOR("\x41") "Deku-\n"
"Schild " COLOR("\x40") "richtig einsetzt?"BOX_BREAK"Hast Du den Schild erhalten,\n"
"drücke" COLOR("\x41") " " COLOR("\x44") "START" COLOR("\x40") ", um zu den Menüs\n"
"zu gelangen. Begib Dich nun \n"
"zum " COLOR("\x42") "Ausrüstungs-Menü" COLOR("\x40") "."BOX_BREAK"Hier wählst Du mit dem Cursor \n"
"den Schild, mit dem Du Dich\n"
"ausrüsten willst, und drückst" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x40") "," COLOR("\x43") "\n"
COLOR("\x40") "um Deine Wahl zu bestätigen."BOX_BREAK"Ist der Schild gewählt, kannst Du\n"
"ihn mit " COLOR("\x44") "[R] " COLOR("\x40") "einsetzen und mit " COLOR("\x44") "[Control Stick]\n"
COLOR("\x40") "seinen Winkel verändern."
);

DECLARE_MESSAGE_GER(0x103E,
"Willst Du wissen, wie man " COLOR("\x46") "[C-Up] \n"
COLOR("\x40") "verwendet?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x103F,
"Drückst Du " COLOR("\x46") "[C-Up]" COLOR("\x40") ", kannst Du die\n"
"Kameraperspektive verändern."BOX_BREAK"In geschlossenen Räumen wie \n"
"diesem wechselst Du zur Vogel-\n"
"perspektive, unter freiem Himmel\n"
"zur Ego-Perspektive."BOX_BREAK"Ist " COLOR("\x46") "Navi" COLOR("\x40") " dort zu lesen, will Dir\n"
"Deine Fee etwas mitteilen.\n"
"Ihre Botschaft kannst Du \n"
"dann mit " COLOR("\x46") "[C-Up]" COLOR("\x40") " abrufen."
);

DECLARE_MESSAGE_GER(0x1040,
"Na gut, dann finde es selbst \n"
"heraus!"
);

DECLARE_MESSAGE_GER(0x1041,
"Das klingt nicht wie Salias Lied..."
);

DECLARE_MESSAGE_GER(0x1042,
"Mido" COLOR("\x41") " " COLOR("\x40") "ist sehr aufgebracht!\n"
"Ich frage mich, was er hat?"
);

DECLARE_MESSAGE_GER(0x1043,
"Was?! Wo gehst Du hin?"BOX_BREAK"Zum Schloß?\n"
"Wo liegt das Schloß?"
);

DECLARE_MESSAGE_GER(0x1044,
"Kokiri, die das Dorf verlassen,\n"
"sind zum Sterben verdammt!"BOX_BREAK"Du hast doch nicht etwa vor,\n"
"es auszuprobieren?!"
);

DECLARE_MESSAGE_GER(0x1045,
UNSKIPPABLE "Hey, " NAME "!\n"
"Was hast Du getan?!"BOX_BREAK
UNSKIPPABLE "Der Deku-Baum...\n"
"Ist er... tot?"BOX_BREAK
UNSKIPPABLE "Wie konntest Du das nur tun?! \n"
"Es ist alles Deine Schuld!" EVENT
);

DECLARE_MESSAGE_GER(0x1046,
"Der Deku-Baum ist tot... Ist damit\n"
"auch unser Ende nah?"
);

DECLARE_MESSAGE_GER(0x1047,
UNSKIPPABLE "Hallo " NAME "!" TEXTID("\x10\x48")
);

DECLARE_MESSAGE_GER(0x1048,
"Wir werden doch immer Freunde\n"
"bleiben, oder nicht?"
);

DECLARE_MESSAGE_GER(0x1049,
"Ist etwas mit dem Deku-Baum \n"
"geschehen?"
);

DECLARE_MESSAGE_GER(0x104A,
"Mir scheint, es ist kühler\n"
"geworden im Wald..."
);

DECLARE_MESSAGE_GER(0x104B,
NAME ", hast Du vor, uns\n"
"zu verlassen?"
);

DECLARE_MESSAGE_GER(0x104C,
"Kommst Du wieder, wenn Du einen\n"
"neuen Schild brauchst?"
);

DECLARE_MESSAGE_GER(0x104D,
SFX("\x38\x80") "Meine Brüder und ich sind uns\n"
"einig... Du siehst genauso aus \n"
"wie unser Heiliger Totem!"BOX_BREAK
SFX("\x38\x80") "Nimm diese " COLOR("\x41") "Deku-Stäbe" COLOR("\x40") " als\n"
"Zeichen unserer Ehrfurcht.\n"
"Zudem werden wir dafür sorgen,\n"
"daß Du nun mehr tragen kannst!"BOX_BREAK"Hobrobbel... Kadobbel..."BOX_BREAK
SFX("\x38\x80") "Kazabbarobbel!" EVENT
);

DECLARE_MESSAGE_GER(0x104E,
"Seit der Deku-Baum uns nicht \n"
"mehr beschützt, treiben sich\n"
"unheimliche Kreaturen in den\n"
"Wäldern herum! Ich habe Angst..."
);

DECLARE_MESSAGE_GER(0x104F,
UNSKIPPABLE "Ein kalter, dämonischer Wind \n"
"weht aus der Richtung des \n"
"Waldtempels."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Salia" COLOR("\x40") " ist fort. Sie sagte, sie \n"
"wolle etwas dagegen unternehmen!" TEXTID("\x10\x50")
);

DECLARE_MESSAGE_GER(0x1050,
"Der " COLOR("\x42") "Waldtempel " COLOR("\x40") "befindet sich bei \n"
"der Heiligen Lichtung, tief in\n"
"den Verlorenen Wäldern."
);

DECLARE_MESSAGE_GER(0x1051,
"Salia ging zum Waldtempel und\n"
"kam bisher nicht zurück..."
);

DECLARE_MESSAGE_GER(0x1052,
"Sie können mit Sicherheit keinen\n"
"Deku-Schild mehr benutzen, dafür\n"
"sind Sie zu alt!"
);

DECLARE_MESSAGE_GER(0x1053,
"Wo Salia ist? \n"
"Sie kennen Salia?\n"
"Das ist merkwürdig..." TEXTID("\x10\x54")
);

DECLARE_MESSAGE_GER(0x1054,
COLOR("\x41") "Mido" COLOR("\x40") " ist seit einiger Zeit\n"
"verschwunden... Wo er wohl \n"
"steckt?"
);

DECLARE_MESSAGE_GER(0x1055,
"Sie haben mit Sicherheit keine \n"
"Probleme, den Tempel zu betreten,\n"
"mein Herr!"BOX_BREAK"Wurden Sie von den Kreaturen\n"
"belästigt? Als der Deku-Baum uns \n"
"noch beschützte, haben sich keine\n"
"Dämonen hier herumgetrieben..." TEXTID("\x10\x56")
);

DECLARE_MESSAGE_GER(0x1056,
"Weil es draußen so gefährlich \n"
"ist, habe ich das Haus nicht mehr \n"
"verlassen. Nun langweile ich mich\n"
"hier zu Tode..."
);

DECLARE_MESSAGE_GER(0x1057,
"Wenn Sie einen " COLOR("\x41") "Bogen" COLOR("\x40") " besitzen, \n"
"können Sie im Laden " COLOR("\x41") "Pfeile" COLOR("\x40") " kaufen. \n"
"Haben Sie einen Bogen?"
);

DECLARE_MESSAGE_GER(0x1058,
UNSKIPPABLE "Sie scheinen viel in der Welt\n"
"herumgekommen zu sein...\n"
"Haben Sie jemals einen Jungen \n"
"namens " NAME " getroffen?"BOX_BREAK
UNSKIPPABLE "Mido behauptete damals, daß \n"
"dieser Junge Schuld am Tod des\n"
"Deku-Baumes hatte..."BOX_BREAK
UNSKIPPABLE "Nur Salia hat " NAME " \n"
"immer verteidigt..." TEXTID("\x10\x59")
);

DECLARE_MESSAGE_GER(0x1059,
"Vielleicht hatte Mido Unrecht..."
);

DECLARE_MESSAGE_GER(0x105A,
"Irgendwie kommen Sie mir bekannt\n"
"vor, mein Herr!"
);

DECLARE_MESSAGE_GER(0x105B,
UNSKIPPABLE "Kennen Sie einen Jungen namens \n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Er hat den Wald verlassen und \n"
"kehrte nie zurück..." TEXTID("\x10\x5C")
);

DECLARE_MESSAGE_GER(0x105C,
"Ich frage mich, ob " NAME "  \n"
"jemals zurückkommen wird?"
);

DECLARE_MESSAGE_GER(0x105D,
UNSKIPPABLE "Es muß fantastisch sein, wenn \n"
"man so groß ist. Ich wäre auch \n"
"gerne so groß!"BOX_BREAK
UNSKIPPABLE "Das wäre mein Traum. Dann \n"
"könnte ich das Unkraut mit bloßen \n"
"Händen beseitigen..." TEXTID("\x10\x5E")
);

DECLARE_MESSAGE_GER(0x105E,
"Doch dummerweise altern wir \n"
"Kokiri nicht...\n"
"Das ist schade!"
);

DECLARE_MESSAGE_GER(0x105F,
"Warum folgt Ihnen eine Fee?\n"
"Sie sind kein Kokiri!"
);

DECLARE_MESSAGE_GER(0x1060,
UNSKIPPABLE "Wer sind Sie? Mich können Sie \n"
"nicht täuschen, auch wenn Sie  \n"
"Kokiri-Kleidung tragen!" TEXTID("\x10\x61")
);

DECLARE_MESSAGE_GER(0x1061,
"Ich habe Salia versprochen, sie\n"
"vor allen Gefahren zu schützen."
);

DECLARE_MESSAGE_GER(0x1062,
UNSKIPPABLE "Sei gegrüßt! Ich bin der " COLOR("\x41") "Sproß \n"
"des Deku-Baumes" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Weil Du und Salia den Fluch\n"
"vom Waldtempel genommen haben,\n"
"kann ich wachsen und sprießen!"BOX_BREAK
UNSKIPPABLE "Hab Dank!"
);

DECLARE_MESSAGE_GER(0x1063,
UNSKIPPABLE "Hast Du Deine alten Freunde\n"
"wiedergesehen? Wahrscheinlich \n"
"wird Dich von ihnen niemand \n"
"mehr wiedererkennen..."BOX_BREAK
UNSKIPPABLE "Das liegt daran, daß " COLOR("\x42") "Kokiri" COLOR("\x40") " niemals\n"
"altern. Die vergangenen Jahre \n"
"gingen an ihnen spurlos vorüber!"
);

DECLARE_MESSAGE_GER(0x1064,
UNSKIPPABLE "Sicher fragst Du Dich, warum Du\n"
"gealtert bist!"BOX_BREAK
UNSKIPPABLE "Nun, Du hast es sicher schon \n"
"geahnt, Du bist kein Kokiri!\n"
"Du bist ein" COLOR("\x44") " Hylianer" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Ich bin froh, Dir dieses Geheimnis\n"
"endlich offenbart zu haben!"
);

DECLARE_MESSAGE_GER(0x1065,
"Vor langer Zeit fand in Hyrule\n"
"ein Krieg statt, der nahezu eine\n"
"halbe Dekade andauerte."BOX_BREAK_DELAYED("\x5A") "Um diesem Krieg zu entkommen,\n"
"gab eine " COLOR("\x41") "junge hylianische Mutter\n"
COLOR("\x40") "ihr" COLOR("\x41") " Baby " COLOR("\x40") "in die Obhut des Waldes."BOX_BREAK_DELAYED("\x5A") "Als sich das Leben der Mutter \n"
"dem Ende zuneigte, vertraute sie\n"
"es dem " COLOR("\x41") "Deku-Baum " COLOR("\x40") "an..."BOX_BREAK_DELAYED("\x5A") "Der Deku-Baum ahnte bereits, daß\n"
"es sich bei dem Baby um ein Kind\n"
"des Schicksals handelte!"BOX_BREAK_DELAYED("\x5A") "Die" COLOR("\x42") " Kokiri " COLOR("\x40") "zogen das Kind auf, und\n"
"es lebte dort bis zu jenem Tag, da\n"
"sich die Prophezeiung erfüllte." FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x1066,
UNSKIPPABLE "Du bist " COLOR("\x44") "Hylianer" COLOR("\x40") ". Es war immer\n"
"Deine Bestimmung, den Wald zu \n"
"verlassen."BOX_BREAK
UNSKIPPABLE "Dein Schicksal...\n"
"Nun hat es sich endlich erfüllt!\n"
"Du weißt, was Du zu tun hast..."BOX_BREAK
UNSKIPPABLE "Du mußt Hyrule vor dem Untergang \n"
"bewahren!"BOX_BREAK
UNSKIPPABLE "So sei es, " NAME "! Befreie\n"
"die Tempel von ihren Flüchen und\n"
"sorge für Frieden in Hyrule!"
);

DECLARE_MESSAGE_GER(0x1067,
UNSKIPPABLE  SHIFT("\x37") "Diese Melodie?!"BOX_BREAK
UNSKIPPABLE "Salia hat sie geschrieben! \n"
"Sie... Sie kennen Salia?"BOX_BREAK
UNSKIPPABLE "Das Lied..."BOX_BREAK
UNSKIPPABLE "Salia hat das Lied nur ihren \n"
"engsten Freunden beigebracht..." TEXTID("\x10\x6F")
);

DECLARE_MESSAGE_GER(0x1068,
"Komisch... \n"
"Irgendwie erinnert er mich an\n"
"jemanden..."
);

DECLARE_MESSAGE_GER(0x1069,
UNSKIPPABLE "Der, der von meinem Fluch gebannt,\n"
"im Reich zwischen Wirklichkeit und\n"
"Traum, kann sein leblos Gebein\n"
"schon jetzt begraben!"
);

DECLARE_MESSAGE_GER(0x106A,
UNSKIPPABLE "Danke!\n"
"Dank Deiner Hilfe wurde ich in \n"
"den Kreis der Weisen\n"
"aufgenommen."BOX_BREAK
UNSKIPPABLE "Nun bin ich die\n"
"Weise des Waldtempels..."
);

DECLARE_MESSAGE_GER(0x106B,
UNSKIPPABLE  SHIFT("\x38") "Ich werde immer\n"
SHIFT("\x2D") "Deine Freundin sein..." FADE("\x50")
);

DECLARE_MESSAGE_GER(0x106C,
UNSKIPPABLE "Der Fluß der Zeit ist grausam...\n"
"Seine Geschwindigkeit scheint für\n"
"jede Person vorbestimmt. Niemand \n"
"hat die Möglichkeit, sie zu ändern..."BOX_BREAK
UNSKIPPABLE "Etwas, das sich nie verändern \n"
"wird, sind die Erinnerungen an \n"
"vergangene Tage. Genieße daher\n"
"jede Sekunde Deines Lebens..."BOX_BREAK
UNSKIPPABLE "Mit dem " COLOR("\x42") "Menuett des Waldes\n"
COLOR("\x40") "kehrst Du zum Waldtempel zurück."
);

DECLARE_MESSAGE_GER(0x106D,
UNSKIPPABLE  NAME "...\n"
"Wir werden uns wiedersehen..."
);

DECLARE_MESSAGE_GER(0x106E,
"Salia ist noch immer nicht zurück...\n"
"Doch ich weiß, eines Tages wird \n"
"sie wiederkommen..."
);

DECLARE_MESSAGE_GER(0x106F,
UNSKIPPABLE "Nun gut...\n"
"Ich vertraue Dir." TEXTID("\x10\x68")
);

DECLARE_MESSAGE_GER(0x1070,
UNSKIPPABLE "Oh... Ich verstehe."BOX_BREAK
UNSKIPPABLE "Salia wird nicht zurückkommen."BOX_BREAK
UNSKIPPABLE "Ich gab Salia das Versprechen, \n"
"daß..."BOX_BREAK
UNSKIPPABLE "...ich " NAME " etwas mitteile,\n"
"falls er zurückkehrt. Salia sagte,\n"
"sie würde auf ihn warten...\n"
"Für immer..."BOX_BREAK
UNSKIPPABLE "Ich glaube " TEXT_SPEED("\x03") "Salia... mochte...\n"
"ihn..." TEXT_SPEED("\x00")  TEXTID("\x10\x71")
);

DECLARE_MESSAGE_GER(0x1071,
SHIFT("\x4B") "Fremder..."BOX_BREAK"Falls Sie ihn irgendwo sehen,\n"
"lassen Sie es ihn wissen..." TEXTID("\x10\xD6")
);

DECLARE_MESSAGE_GER(0x1072,
"Fremder, ich möchte von Ihnen \n"
"lernen. Können Sie mir ein paar\n"
"neue Kampftechniken beibringen?"
);

DECLARE_MESSAGE_GER(0x1073,
"Ich glaube immer noch, daß ich\n"
"Sie irgendwoher kenne..."
);

DECLARE_MESSAGE_GER(0x1074,
"So groß und kräftig wie Sie wäre\n"
"ich auch gerne. Hmmm, größer\n"
"werde ich bestimmt nicht. Vielleicht \n"
"klappt's ja mit der Kraft..."
);

DECLARE_MESSAGE_GER(0x1075,
NAME "...\n"
"Ich frage mich, ob er\n"
"jemals zurückkehrt..."
);

DECLARE_MESSAGE_GER(0x1076,
"Es kommt mir so vor, als würde\n"
"ich Sie schon seit Jahren kennen!"
);

DECLARE_MESSAGE_GER(0x1077,
"Nun, da der " COLOR("\x41") "Sproß des Deku-Baumes\n"
COLOR("\x40") "wächst und gedeiht, herrschen im\n"
"Wald wieder Ruhe und Frieden!"
);

DECLARE_MESSAGE_GER(0x1078,
"Ich werde alles tun, um den Wald\n"
"zu beschützen!"
);

DECLARE_MESSAGE_GER(0x1079,
"Das Klima hat sich wieder \n"
"verändert. Es ist nun angenehm\n"
"warm..."
);

DECLARE_MESSAGE_GER(0x107A,
"Seit es im Wald wieder\n"
"sicher ist, glaube ich,\n"
"daß " NAME " zurückkehren \n"
"wird!"
);

DECLARE_MESSAGE_GER(0x107B,
"Ich frage mich, was aus Salia \n"
"geworden ist..."
);

DECLARE_MESSAGE_GER(0x107C,
"Sicher wird " NAME " eines \n"
"Tages zurückkommen..."
);

DECLARE_MESSAGE_GER(0x107D,
UNSKIPPABLE  SHIFT("\x42")  COLOR("\x44") "Deku-Baum...\n"
COLOR("\x40")  SHIFT("\x22")  COLOR("\x44") "Ich bin zurückgekehrt!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x107E,
UNSKIPPABLE "Das Böse in Menschengestalt\n"
"setzt seine diabolischen Kräfte\n"
"rücksichtslos ein, um Zugang\n"
"zum Heiligen Reich zu erlangen..."BOX_BREAK
UNSKIPPABLE "In diesem Heiligen Reich ruht \n"
"das " COLOR("\x44") "Triforce" COLOR("\x40") ", ein mächtiges Relikt \n"
"der Götter, und wartet auf den,\n"
"der seine Kraft zu nutzen weiß..."
);

DECLARE_MESSAGE_GER(0x107F,
QUICKTEXT_ENABLE "Vor Tausenden von Jahren..." QUICKTEXT_DISABLE  FADE("\x50")
);

DECLARE_MESSAGE_GER(0x1080,
QUICKTEXT_ENABLE "...stiegen drei Göttinnen aus dem\n"
"Chaos der Gezeiten empor..." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x1081,
QUICKTEXT_ENABLE  SHIFT("\x1A") "Din, die Göttin der Kraft..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x1082,
QUICKTEXT_ENABLE  SHIFT("\x08") "Nayru, die Göttin der Weisheit..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x1083,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Farore, die Göttin des Mutes..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x1084,
QUICKTEXT_ENABLE  SHIFT("\x53") "Din..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x1085,
QUICKTEXT_ENABLE  SHIFT("\x11") "Mit dem feurigen Odem ihres\n"
SHIFT("\x11") "Körpers schuf sie unsere Welt." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x1086,
QUICKTEXT_ENABLE  SHIFT("\x4C") "Nayru..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x1087,
QUICKTEXT_ENABLE  SHIFT("\x28") "Sie schenkte der Welt\n"
SHIFT("\x26") "die Gabe der Weisheit." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x1088,
QUICKTEXT_ENABLE  SHIFT("\x4B") "Farore..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x1089,
QUICKTEXT_ENABLE  SHIFT("\x13") "Sie spendete Leben und schuf\n"
SHIFT("\x38") "sämtliche Formen\n"
SHIFT("\x44") "des Daseins." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x108A,
QUICKTEXT_ENABLE  SHIFT("\x1E") "Als ihr Tun vollendet war,\n"
SHIFT("\x30") "zogen die Göttinnen\n"
SHIFT("\x4C") "gen Eden." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x108B,
QUICKTEXT_ENABLE  SHIFT("\x24") "Triforce-Symbole künden\n"
SHIFT("\x18") "noch heute von den Stätten,\n"
SHIFT("\x33") "die sie besuchten." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x108C,
QUICKTEXT_ENABLE  SHIFT("\x25") "Seither ist das Triforce\n"
SHIFT("\x46") "ein Zeichen\n"
SHIFT("\x24") "göttlicher Prophezeiung!" QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x108D,
QUICKTEXT_ENABLE  SHIFT("\x1D") "Das Relikt der Götter ruht\n"
SHIFT("\x2B") "nun im Heiligen Reich." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x108E,
"Du hast Dich tapfer geschlagen...\n"
"Es scheint, daß Du viel gelernt\n"
"hast! Jedoch..."BOX_BREAK_DELAYED("\x3C") "Du hast nur mein Phantom besiegt!\n"
"Trittst Du meinem wahren Ich\n"
"gegenüber, wirst Du vernichtet!"BOX_BREAK_DELAYED("\x3C") "Ich werde die reitende Kreatur nun \n"
"in den Hades verbannen, denn sie\n"
"hat ihren Schöpfer enttäuscht!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x108F,
UNSKIPPABLE "Ich habe stets gewußt, daß Du\n"
"zu Höherem berufen bist..."BOX_BREAK
UNSKIPPABLE "Ich hege große Gefühle für Dich..."BOX_BREAK_DELAYED("\x1E")  UNSKIPPABLE "Doch es ist Bestimmung, daß\n"
"wir verschiedene Wege gehen..."BOX_BREAK
UNSKIPPABLE "Du und ich... Wir können nicht \n"
"in derselben Welt leben."
);

DECLARE_MESSAGE_GER(0x1090,
UNSKIPPABLE "Ich werde Dich als Weise des\n"
"Waldes stets unterstützen..."BOX_BREAK
UNSKIPPABLE "Nimm dieses " COLOR("\x42") "Amulett " COLOR("\x40") "an Dich..."
);

DECLARE_MESSAGE_GER(0x1091,
UNSKIPPABLE "Du hast Deinen Mut eindrucksvoll \n"
"unter Beweis gestellt."BOX_BREAK
UNSKIPPABLE "Ich wußte, daß Du mein Vertrauen\n"
"nicht enttäuschen würdest!"
);

DECLARE_MESSAGE_GER(0x1092,
"Doch Du stehst erst am Anfang \n"
"Deiner Mission. Höre mich an...\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1093,
UNSKIPPABLE  NAME "!\n"
"Begib Dich nun zum Schloß!"BOX_BREAK
UNSKIPPABLE "Suche dort die " COLOR("\x41") "Prinzessin" COLOR("\x40") " auf,\n"
"denn sie teilt Dein Schicksal."BOX_BREAK
UNSKIPPABLE "Nimm " COLOR("\x41") "diesen Stein" COLOR("\x40") " an Dich. Er\n"
"war das Begehr des Mannes, der\n"
"mich mit dem Fluch belegte."
);

DECLARE_MESSAGE_GER(0x1094,
UNSKIPPABLE "Ich wußte, daß Du den Wald\n"
"eines Tages verlassen\n"
"würdest, " NAME "."BOX_BREAK
UNSKIPPABLE "Denn Du bist anders als meine\n"
"Freunde und ich..."
);

DECLARE_MESSAGE_GER(0x1095,
UNSKIPPABLE  SFX("\x68\x44")  COLOR("\x44") "Hallo " QUICKTEXT_ENABLE  NAME  QUICKTEXT_DISABLE "!\n"
"Wach auf!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Der" COLOR("\x41") " Deku-Baum " COLOR("\x44") "hat Dich zu" COLOR("\x41") " " COLOR("\x44") "\n"
"sich gerufen!\n"
QUICKTEXT_ENABLE  NAME ", wach auf!" QUICKTEXT_DISABLE  COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1096,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44") "Los! " QUICKTEXT_ENABLE "Komm schon!" QUICKTEXT_DISABLE  COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Sollte die Zukunft Hyrules\n"
"wirklich in den Händen dieser\n"
"Schlafmütze liegen?" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1097,
"Springen ist langweilig...\n"
"Ein" COLOR("\x41") " Rückwärtssalto" COLOR("\x40") " ist cooler!\n"
"Beherrschst Du diese Technik?"
);

DECLARE_MESSAGE_GER(0x1098,
UNSKIPPABLE  COLOR("\x44") "Der" COLOR("\x41") " Deku-Baum " COLOR("\x44") "hat Dich\n"
"zu sich befohlen...\n"
"Steh also endlich auf!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x1099,
UNSKIPPABLE  SHIFT("\x4B") "Navi...\n"
SHIFT("\x2E") "Navi, wo bist Du?\n"
SHIFT("\x39") "Erscheine..."
);

DECLARE_MESSAGE_GER(0x109A,
UNSKIPPABLE  COLOR("\x44") "Navi, holde Fee" COLOR("\x40") "...\n"
"Höre die Worte des \n"
COLOR("\x41") "Deku-Baumes" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Spürst Du es?\n"
"Diabolische Kräfte bedrohen \n"
"unser Land."BOX_BREAK
UNSKIPPABLE "Die Kreaturen der Nacht sammeln \n"
"sich, um das Schicksal Hyrules \n"
"zu besiegeln."BOX_BREAK
UNSKIPPABLE "Für lange Zeit war ich es, der\n"
"die Schatten des Unheils daran\n"
"hinderte, das Land zu erobern."BOX_BREAK
UNSKIPPABLE "Doch nun ist die Konzentration\n"
"des Bösen so stark, daß meine  \n"
"Kräfte nicht ausreichen, die \n"
"dunklen Mächte zu bannen..."BOX_BREAK
UNSKIPPABLE "Die Zeit scheint reif, da der \n"
COLOR("\x41") "Junge ohne Fee " COLOR("\x40") "seine Bestimmung \n"
"erfahren soll..."BOX_BREAK
UNSKIPPABLE "Die Jugend und Reinheit des\n"
"Jungen sollen Hyrule wieder auf\n"
"den Pfad des Lichtes führen..."BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Navi" COLOR("\x40") "... Geh nun! Finde unseren\n"
"Freund und geleite ihn zu mir..."BOX_BREAK
UNSKIPPABLE "Meine Zeit ist fast vorüber...\n"
"Mir bleiben nur noch wenige\n"
"Stunden."BOX_BREAK
UNSKIPPABLE "Flieg, Navi, flieg! Das Schicksal \n"
"des Dorfes, gar das der ganzen \n"
"Welt, liegt in den Händen dieses \n"
"Jungen..."
);

DECLARE_MESSAGE_GER(0x109B,
UNSKIPPABLE  SFX("\x38\x82") "Vergib mir, Herr! Ich werde \n"
"es nicht wieder tun! Laß mich frei,\n"
"und ich gebe ein Geheimnis preis."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Nie wirst Du meine Brüder \n"
"bezwingen, wenn Du sie nicht in \n"
"richtiger Reihenfolge besiegst!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Merke Dir... " TEXT_SPEED("\x05")  COLOR("\x44") "2  3  1" COLOR("\x40")  TEXT_SPEED("\x00") "\n"
UNSKIPPABLE  SFX("\x38\x80")  QUICKTEXT_ENABLE  COLOR("\x44") "Rechts vor links, aber\n"
"die goldene Mitte geht vor!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"Bin ich jetzt ein Verräter?" EVENT
);

DECLARE_MESSAGE_GER(0x109C,
UNSKIPPABLE  SFX("\x38\x82") "Woher kanntest Du unser Geheimnis?!\n"
"Bist Du ein " QUICKTEXT_ENABLE "Hellseher?" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "So sei es denn. Ich werde\n"
"Dir das Geheimnis der Spinnenkönigin\n"
"verraten..."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Um sie zu vernichten, solltest Du\n"
"die Früchte des Baumes nutzen... \n"
"Ein Gegner, der sich " COLOR("\x41") "nicht bewegt" COLOR("\x40") ", \n"
"läßt sich leichter bezwingen..."BOX_BREAK
UNSKIPPABLE "Vergebt mir, Königin..."BOX_BREAK
SFX("\x38\x80")  QUICKTEXT_ENABLE "Schande über mich!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x109D,
"Es war einst in einem fernen Land..."BOX_BREAK_DELAYED("\x28")  SHIFT("\x0A") "Seit Anbeginn der Zeit wacht der\n"
SHIFT("\x18") "mächtige Deku-Baum über die\n"
SHIFT("\x30") "Kinder des Waldes!" FADE("\x46")
);

DECLARE_MESSAGE_GER(0x109E,
SHIFT("\x21") "Jedem der Kokiri schenkt\n"
SHIFT("\x29") "der Wächter eine Fee."BOX_BREAK_DELAYED("\x3C")  SHIFT("\x0D") "Als seine Abgesandten schützen\n"
SHIFT("\x22") "sie jene reinen Herzens." FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x109F,
SHIFT("\x11") "Das Schicksal hat jedoch einen\n"
SHIFT("\x08") "auserkoren, dessen Bestimmung es\n"
SHIFT("\x11") "ist, den Gesetzen vergangener\n"
SHIFT("\x2B") "Zeiten zu entfliehen..." FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x10A0,
SFX("\x38\x82") "Vergib mir... Darf ich Dir Deku-  \n"
"Nüsse anbieten?\n"
COLOR("\x41") "5 Stück   " COLOR("\x40") "kosten" COLOR("\x41") "  20 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10A1,
SFX("\x38\x82") "Du hast gesiegt. Laß mich Dir einen\n"
"Deku-Stab anbieten!\n"
COLOR("\x41") "1 Stück   " COLOR("\x40") "kostet" COLOR("\x41") "  15 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10A2,
SFX("\x38\x82") "Ich bin bezwungen. Verschone mich,\n"
"und ich werde Dir ein Herzteil zum \n"
"Kauf anbieten!\n"
COLOR("\x41") "1 Stück   " COLOR("\x40") "kostet" COLOR("\x41") "  10 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10A3,
SFX("\x38\x80")  QUICKTEXT_ENABLE "Laß uns ein Geschäft machen!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x10A4,
SFX("\x38\x82")  QUICKTEXT_ENABLE "Ups!" QUICKTEXT_DISABLE "\n"
"Dann verschwinde ich besser!"
);

DECLARE_MESSAGE_GER(0x10A5,
SFX("\x38\x82") "Du hast zu wenig Rubine! \n"
"Komm später wieder!"
);

DECLARE_MESSAGE_GER(0x10A6,
SFX("\x38\x82") "Du hast schon genug davon!\n"
"Komm später wieder!"
);

DECLARE_MESSAGE_GER(0x10A7,
SFX("\x38\x80")  QUICKTEXT_ENABLE  SHIFT("\x43") "Hab Dank!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x10A8,
UNSKIPPABLE "Ich habe auf Dich gewartet,\n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Dies ist die " COLOR("\x41") "Heilige Lichtung" COLOR("\x40") ",\n"
"mein Lieblingsort!\n"
"Ich spüre etwas..."BOX_BREAK
UNSKIPPABLE "Dieser Ort wird für uns beide \n"
"von schicksalhafter Bedeutung sein.\n"
"Das kann ich fühlen..."BOX_BREAK
UNSKIPPABLE "Spielst Du hier die Okarina, \n"
"kannst Du zu den Geistern des \n"
"Waldes sprechen." TEXTID("\x10\xA9")
);

DECLARE_MESSAGE_GER(0x10A9,
"Machst Du mir die Freude und \n"
"spielst mit mir?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10AA,
UNSKIPPABLE "Versuch, die Melodie, die ich\n"
"spiele, nachzuspielen...\n"
"Bist Du bereit?"
);

DECLARE_MESSAGE_GER(0x10AB,
UNSKIPPABLE "Was?!\n"
"Du enttäuschst mich!\n"
"Komm schon, spiel mir nach!"
);

DECLARE_MESSAGE_GER(0x10AC,
UNSKIPPABLE  SFX("\x68\x63")  SHIFT("\x2F") "Wie wunderschön!"BOX_BREAK
UNSKIPPABLE "Du darfst dieses Lied nie \n"
"vergessen. Versprich es!" TEXTID("\x10\xAD")
);

DECLARE_MESSAGE_GER(0x10AD,
"Willst Du meine Stimme hören, so \n"
"spiele " COLOR("\x42") "Salias Lied" COLOR("\x40") ". Du kannst \n"
"Dich jederzeit mit mir \n"
"unterhalten..."
);

DECLARE_MESSAGE_GER(0x10AE,
"Paß gut auf meine Okarina \n"
"auf..."
);

DECLARE_MESSAGE_GER(0x10AF,
UNSKIPPABLE  SFX("\x38\x80") "Fantastisch!\n"
"Du hast dreimal ins Schwarze\n"
"getroffen!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Dein Talent soll nicht ohne Lohn\n"
"bleiben! Hier, nimm dies an Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x10B0,
"Vielleicht weiß Mido, wo sich Salia\n"
"aufhält..."BOX_BREAK"Er hat sich beleidigt in eines der \n"
"Häuser zurückgezogen."
);

DECLARE_MESSAGE_GER(0x10B1,
SHIFT("\x5A")  COLOR("\x44") "Hallo?\n"
COLOR("\x40")  SHIFT("\x35")  COLOR("\x44") "Er reagiert nicht!\n"
COLOR("\x40")  SHIFT("\x23")  COLOR("\x44") "Er scheint zu schlafen..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10B2,
UNSKIPPABLE "Henni?  Was?!\n"
"Ich dachte, nur ein netter Mensch\n"
"wie ich kann Dich zähmen..."BOX_BREAK
UNSKIPPABLE "Das bedeutet..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x01") "Du... " TEXT_SPEED("\x00") "Du mußt in Ordnung sein!\n"
QUICKTEXT_ENABLE "Ja, ganz bestimmt!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Ich vertraue Dir!" QUICKTEXT_DISABLE "\n"
"Tust Du mir einen Gefallen?"BOX_BREAK
UNSKIPPABLE "Bring dies hier zum " COLOR("\x41") "Laden der \n"
"Hexe Asa" COLOR("\x40") " in Kakariko!" EVENT
);

DECLARE_MESSAGE_GER(0x10B3,
"Doch laß Dir nicht zuviel Zeit,\n"
"denn sonst löst es sich auf!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10B4,
"Ach... " QUICKTEXT_ENABLE "Na sowas..." QUICKTEXT_DISABLE "\n"
"Du scheinst doch nicht so nett zu \n"
"sein, wie ich dachte!\n"
QUICKTEXT_ENABLE "Du enttäuschst mich!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x10B5,
"Salia hat nach Dir gesucht...\n"
"Hat sie Dich schon gefunden?"
);

DECLARE_MESSAGE_GER(0x10B6,
"Beeil Dich, mein Freund!\n"
"Bevor es sich auflöst, muß es bei\n"
"der Hexe sein..."
);

DECLARE_MESSAGE_GER(0x10B7,
UNSKIPPABLE "Er ist nicht mehr hier..."BOX_BREAK
UNSKIPPABLE "Jedes Wesen, das kein Kokiri ist,\n"
"ist in diesen Wäldern verloren."BOX_BREAK
UNSKIPPABLE "Sicher hat er sich inzwischen\n"
"auch in eine Pflanze verwandelt.\n"
"Alles, was von ihm übrig blieb,\n"
"ist diese Säge hier." TEXTID("\x10\xB8")
);

DECLARE_MESSAGE_GER(0x10B8,
"Die Medizin besteht aus \n"
"Waldpilzen! Gib sie mir! \n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10B9,
"Wirst auch Du Dich verwandeln?"
);

DECLARE_MESSAGE_GER(0x10BA,
"Wir verkaufen Schilde, aber keine \n"
"Schwerter!" EVENT
);

DECLARE_MESSAGE_GER(0x10BB,
UNSKIPPABLE "Du kennst " COLOR("\x42") "Salias Lied" COLOR("\x40") "! Wir sollten \n"
"Freunde werden! Hier, nimm das..."
);

DECLARE_MESSAGE_GER(0x10BC,
"Hi! Wie findest Du mein Outfit?\n"
"Ich gebe zu, es ist nicht \n"
"besonders aufregend..."
);

DECLARE_MESSAGE_GER(0x10BD,
"Laß uns mal wieder spielen!"
);

DECLARE_MESSAGE_GER(0x10BE,
UNSKIPPABLE "Stimme in unser Lied mit Deiner \n"
"Okarina ein. Wir fangen an..."
);

DECLARE_MESSAGE_GER(0x10BF,
UNSKIPPABLE "Das hat Spaß gemacht. Nimm dies\n"
"als Beweis unserer Freundschaft."
);

DECLARE_MESSAGE_GER(0x10C0,
UNSKIPPABLE "Willkommen!\n"
"Ich habe Dich erwartet!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Schön, Dich wiederzusehen, \n"
NAME ". Hör mir gut zu!" TEXTID("\x10\xC1")
);

DECLARE_MESSAGE_GER(0x10C1,
"Hier in den Verlorenen Wäldern \n"
"wirst Du die " COLOR("\x42") "Heilige Lichtung" COLOR("\x40") " \n"
"finden."BOX_BREAK"Dies ist ein Ort, den bisher nur\n"
"wenige Leute betreten haben."BOX_BREAK"Still... Ich höre etwas...\n"
"Ich höre eine fremde Melodie!"BOX_BREAK"Kannst Du sie auch hören?" EVENT
);

DECLARE_MESSAGE_GER(0x10C2,
"Muß ich mich noch einmal \n"
"wiederholen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10C3,
UNSKIPPABLE "Beweise Dein Geschick und finde\n"
"den Weg durch den Wald..."BOX_BREAK
UNSKIPPABLE "Verlasse Dich auf Dein Gehör\n"
"und Du wirst schon bald Dein\n"
"Ziel erreichen!"
);

DECLARE_MESSAGE_GER(0x10C4,
UNSKIPPABLE  NAME "...!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Hat Salia Dir ihr Lied \n"
"beigebracht?"BOX_BREAK
UNSKIPPABLE "Das Lied scheint geheimnisvolle\n"
"Kräfte zu haben."BOX_BREAK
UNSKIPPABLE "Ich hörte, daß an anderen \n"
"Orten ebenfalls die Möglichkeit\n"
"besteht, Lieder zu lernen. Zum \n"
"Beispiel in Hyrule..." TEXTID("\x10\xC5")
);

DECLARE_MESSAGE_GER(0x10C5,
"Plazierst Du die Okarina auf " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"und wählst sie aus, werden\n"
COLOR("\x41") "Notenlinien" COLOR("\x40") " erscheinen."BOX_BREAK"Ich empfehle Dir, hier eines der\n"
"Lieder zu spielen, die Du erlernt \n"
"hast."BOX_BREAK"Du kannst natürlich auch ohne\n"
"Notenlinien spielen. Auch das \n"
"macht Spaß!" EVENT
);

DECLARE_MESSAGE_GER(0x10C6,
"Muß ich alles nochmal sagen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x10C7,
UNSKIPPABLE "Alle Lieder, die Du lernst, \n"
"werden Dir im " COLOR("\x44") "Status-Menü \n"
COLOR("\x40") "angezeigt. Lerne sie, denn Du \n"
"wirst sie häufig brauchen."
);

DECLARE_MESSAGE_GER(0x10C8,
UNSKIPPABLE "Dieser Mido! Ich frage mich, was \n"
"er sich dabei denkt..."BOX_BREAK
UNSKIPPABLE "Dennoch ist das, was er sagte, \n"
"wahr." TEXTID("\x10\xC9")
);

DECLARE_MESSAGE_GER(0x10C9,
UNSKIPPABLE "Im Wald gehen in letzter Zeit\n"
"merkwürdige Dinge vor sich..."BOX_BREAK
UNSKIPPABLE "Wir müssen auf alles vorbereitet \n"
"sein. Du solltest Dir eine Waffe \n"
"suchen!" TEXTID("\x10\x32")
);

DECLARE_MESSAGE_GER(0x10CA,
SFX("\x38\x82") "Hab Gnade! Ich kann Dir \n"
COLOR("\x41") "Deku-Kerne " COLOR("\x40") "anbieten!\n"
COLOR("\x41") "30 Stück   " COLOR("\x40") "kosten" COLOR("\x41") "   40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10CB,
SFX("\x38\x82") "Ich gebe auf! Wie wär's, wenn ich\n"
"Dir einen " COLOR("\x41") "Deku-Schild" COLOR("\x40") " verkaufen \n"
"würde! Er kostet " COLOR("\x41") "50 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10CC,
SFX("\x38\x82") " Hab Erbarmen! Ich kann Dir \n"
"einige" COLOR("\x41") " Bomben " COLOR("\x40") "verkaufen!\n"
COLOR("\x41") "5 Stück   kosten    40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10CD,
SFX("\x38\x82") "Halte ein! Laß mich gehen und \n"
"ich verkaufe Dir " COLOR("\x41") "Pfeile" COLOR("\x40") "!\n"
COLOR("\x41") "30 Stück   kosten   70 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10CE,
SFX("\x38\x82") "Vergib mir! Laß mich laufen, und \n"
"ich verkaufe Dir " COLOR("\x41") "Rotes Elixier" COLOR("\x40") " für \n"
"nur " COLOR("\x41") "40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10CF,
SFX("\x38\x82") "Hab Gnade! Verschone mich und \n"
"ich verkaufe Dir " COLOR("\x42") "Grünes Elixier" COLOR("\x40") " für \n"
"nur " COLOR("\x41") "40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10D0,
UNSKIPPABLE "Was?! Du hast eine Fee?!\n"
"Und der Deku-Baum hat Dich zu \n"
"sich gerufen?" TEXTID("\x10\xD1")
);

DECLARE_MESSAGE_GER(0x10D1,
UNSKIPPABLE "Was muß ich da hören?!"BOX_BREAK
UNSKIPPABLE "Wieso sollte er DICH und nicht \n"
"den großen" COLOR("\x41") " Mido " COLOR("\x40") "zu sich rufen?"BOX_BREAK
UNSKIPPABLE "Das kann nicht sein..."BOX_BREAK
UNSKIPPABLE "Ich glaube es einfach nicht!\n"
"Du bist nicht einmal richtig\n"
"ausgerüstet!"BOX_BREAK
UNSKIPPABLE "Wie willst Du dem Deku-Baum \n"
"denn ohne " COLOR("\x41") "Schwert" COLOR("\x40") " und " COLOR("\x44") "Schild" COLOR("\x40") "\n"
"gegenübertreten?"BOX_BREAK"Was? Das stimmt, ich bin auch \n"
"nicht ausgerüstet, aber das ist\n"
"etwas anderes..." TEXTID("\x10\x30")
);

DECLARE_MESSAGE_GER(0x10D2,
UNSKIPPABLE  SHIFT("\x2B") "Hey, was ist das?!"BOX_BREAK
UNSKIPPABLE "Du besitzt einen " COLOR("\x44") "Deku-Schild" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Und... Und auf Deinem Rücken\n"
"trägst Du ein Schwert!"BOX_BREAK
UNSKIPPABLE "Unglaublich! Es ist in der\n"
"Tat das " COLOR("\x41") "Kokiri-Schwert" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "HEILIGER DEKU!" TEXTID("\x10\xD3")
);

DECLARE_MESSAGE_GER(0x10D3,
UNSKIPPABLE "Wie dem auch sei, ein Weichling \n"
"bleibt immer ein Weichling!" TEXTID("\x10\x34")
);

DECLARE_MESSAGE_GER(0x10D4,
SFX("\x38\x82") "Laß mich laufen und ich verkaufe \n"
"Dir einen " COLOR("\x41") "Deku-Stab" COLOR("\x40") " für nur \n"
COLOR("\x41") "15 Rubine!" COLOR("\x40")  TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10D5,
SFX("\x38\x82") "Verzeih mir! Ich kann Dir " COLOR("\x41") "Deku-\n"
"Nüsse" COLOR("\x40") " zum Kauf anbieten!\n"
COLOR("\x41") "5 Stück   kosten    20 Rubine!" COLOR("\x40")  TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10D6,
"Noch etwas..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x08") "Es tut mir leid, daß ich gemein \n"
SHIFT("\x3C") "zu ihm war." QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x14") "Sagen Sie ihm das bitte auch!"
);

DECLARE_MESSAGE_GER(0x10D7,
"Du hast einen beschwerlichen Weg\n"
"hinter Dir...\n"
"Du scheinst ein wahrer Held zu \n"
"sein!" TEXTID("\x10\xD8")
);

DECLARE_MESSAGE_GER(0x10D8,
"Sieh doch nur, ist die Aussicht \n"
"nicht wunderschön? Wechsle den \n"
"Blickwinkel mit " COLOR("\x46") "[C-Up] " COLOR("\x40") "und nutze" COLOR("\x46") " " COLOR("\x44") "[Control Stick]" COLOR("\x40") ",\n"
"um die Sicht zu genießen."
);

DECLARE_MESSAGE_GER(0x10D9,
"Was hast Du mit dem Deku-Baum \n"
"gemacht?"
);

DECLARE_MESSAGE_GER(0x10DA,
"Bevor Du Dich in die Verlorenen \n"
"Wälder begibst, solltest Du Dich \n"
"besser ausrüsten!"
);

DECLARE_MESSAGE_GER(0x10DB,
SFX("\x38\x82") "Meine Brüder und ich sind uns\n"
"einig...\n"
"Du bist potthäßlich!"BOX_BREAK
SFX("\x38\x82") "Zum Trost werden wir Dich mit \n"
"einigen " COLOR("\x41") "Deku-Nüssen " COLOR("\x40") "versorgen."BOX_BREAK
SFX("\x38\x82") "Außerdem werden wir dafür \n"
"sorgen, daß Du von nun an mehr \n"
"Nüsse tragen kannst!"BOX_BREAK"Hobrobbel... Kadobbel..."BOX_BREAK
SFX("\x38\x80") "Wazakamobbel!" EVENT
);

DECLARE_MESSAGE_GER(0x10DC,
SFX("\x38\x82") "Hab Gnade!"BOX_BREAK
SFX("\x38\x80") "Verschone mich und ich sorge\n"
"dafür, daß Du von nun an mehr\n"
COLOR("\x41") "Deku-Stäbe " COLOR("\x40") "tragen kannst!\n"
"Es kostet Dich nur " COLOR("\x41") "40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10DD,
SFX("\x38\x82") "Verschone mich!"BOX_BREAK
SFX("\x38\x80") "Gewähr mir Gnade und ich sorge\n"
"dafür, daß Du von nun an mehr\n"
COLOR("\x41") "Deku-Nüsse " COLOR("\x40") "tragen kannst!\n"
"Es kostet Dich nur " COLOR("\x41") "40 Rubine" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_GER(0x10DE,
SFX("\x38\x82") "Tut mir leid, aber Du kannst das \n"
"jetzt nicht kaufen!"
);

DECLARE_MESSAGE_GER(0x10DF,
"Der, den Du suchst,\n"
"ist nicht mehr hier..."BOX_BREAK"Jeder, der diesen Wald betritt und \n"
"kein Kokiri ist, ist verdammt..."BOX_BREAK"Jeder...\n"
"Sicher hat er sich schon längst in \n"
"eine Pflanze verwandelt..."
);

DECLARE_MESSAGE_GER(0x2000,
UNSKIPPABLE "Vielen Dank nochmal für \n"
"die Hilfe... Ich weiß nicht\n"
"einmal Deinen Namen..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "Sagst Du ihn mir?" TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Wirklich?\n"
NAME "!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Hab ich's doch gewußt!" QUICKTEXT_DISABLE "\n"
"Du bist der Feen-Junge aus dem\n"
"Wald! Es war vor vielen Jahren.\n"
"Erinnerst Du Dich an mich?"BOX_BREAK
UNSKIPPABLE "Tatsächlich? Ich dachte mir schon,\n"
"daß Du es bist. Epona hat Dich\n"
"gleich wiedererkannt!"BOX_BREAK
UNSKIPPABLE "Oh, ich muß Dir etwas über " COLOR("\x41") "Basil\n"
COLOR("\x40") "erzählen..."BOX_BREAK
UNSKIPPABLE "Er hatte Angst, daß Ganondorf\n"
"dahinterkommen würde, daß er Epona\n"
"gehen ließ. Diese Furcht hat aus\n"
"ihm einen anderen Menschen gemacht!"BOX_BREAK
UNSKIPPABLE "Nun ist er wieder " COLOR("\x41") "so wie früher" COLOR("\x40") ".\n"
"Daher kehrte auch mein Vater auf" COLOR("\x41") "\n"
COLOR("\x40") "die Farm zurück!"BOX_BREAK
UNSKIPPABLE "Endlich wird alles wieder, wie\n"
"es einmal war. Ist das nicht\n"
"schön?!"BOX_BREAK
UNSKIPPABLE "Das alles haben wir Dir zu\n"
"verdanken! Wir stehen tief in\n"
"Deiner Schuld!"BOX_BREAK
UNSKIPPABLE "Vielen Dank, " NAME "!"
);

DECLARE_MESSAGE_GER(0x2001,
"Wie geht es " COLOR("\x41") "Epona" COLOR("\x40") "?"BOX_BREAK"Spielst Du " COLOR("\x41") "Eponas Lied " COLOR("\x40") "auf Deiner\n"
"Okarina, wird sie immer zu Dir\n"
"kommen."BOX_BREAK"Wann immer Du mit Epona \n"
COLOR("\x41") "trainieren" COLOR("\x40") " möchtest, kannst Du \n"
"gern zur Farm zurückkehren!"
);

DECLARE_MESSAGE_GER(0x2002,
UNSKIPPABLE "Epona" COLOR("\x41") " " COLOR("\x40") "sieht prächtig aus!\n"
"Es scheint Dir gelungen zu sein,\n"
"sie zu zähmen!" TEXTID("\x20\x03")
);

DECLARE_MESSAGE_GER(0x2003,
"Warum versuchst Du Dich nicht mit\n"
"Epona an dem " COLOR("\x41") "Hindernisparcours" COLOR("\x40") "?"BOX_BREAK"Du mußt " COLOR("\x41") "zwei Runden" COLOR("\x40") " reiten und \n"
"darfst dabei kein Hindernis \n"
"auslassen. Das ist eine große\n"
"Herausforderung!"BOX_BREAK"Wie sieht's aus?\n"
"Möchtest Du es versuchen? \n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2004,
"Nun, Deine Zeit war " COLOR("\x41")  RACE_TIME  COLOR("\x40") ".\n"
"Nicht besonders gut..."BOX_BREAK"Vergiß nicht, Du brauchst nur zu\n"
"beschleunigen, um über die hohen \n"
"Hindernisse zu springen. Die\n"
"niedrigen nimmt Epona auch so."
);

DECLARE_MESSAGE_GER(0x2005,
NAME ", kannst Du mich\n"
"hören? Ich bin es, Zelda..." FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x2006,
SFX("\x28\xDF") "Muuuuuuuuuuuuuuuuuuuuuuuuuuuuh!"BOX_BREAK"Welch ein schönes Lied...\n"
"Es erinnert mich ans Melken..."BOX_BREAK"Muh, nach diesem Lied könnte\n"
"ich literweise Milch geben..." EVENT
);

DECLARE_MESSAGE_GER(0x2007,
"Hier, nimm etwas von der \n"
"erfrischenden und nahrhaften \n"
"Milch!" EVENT
);

DECLARE_MESSAGE_GER(0x2008,
NAME ", nun, da Du die \n"
"Okarina in Händen hältst..."BOX_BREAK_DELAYED("\x3C") "...bin ich schon weit entfernt..."BOX_BREAK_DELAYED("\x3C") "Ich versuchte, auf Dich zu warten,\n"
"doch die Zeit drängte..."BOX_BREAK_DELAYED("\x3C") "Zumindest konnte ich Dir die \n"
"Okarina übergeben...\n"
"Und diese " COLOR("\x44") "Melodie" COLOR("\x40") "..." FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x2009,
UNSKIPPABLE "Wohlan, " NAME ".\n"
"Spiele diese Melodie in der\n"
"Zitadelle der Zeit vor dem \n"
"Zeitaltar!"
);

DECLARE_MESSAGE_GER(0x200A,
UNSKIPPABLE "Ha! Denkst Du wirklich, daß ich \n"
"Dich nicht erkenne?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x1E") "Hey?!"BOX_BREAK
UNSKIPPABLE "Ist das nicht eine Fuchs-Maske?\n"
"So etwas ist doch zur Zeit sehr \n"
"angesagt!"BOX_BREAK
UNSKIPPABLE "Mein Sohn ist ganz verrückt\n"
"danach! \n"
"Wie wäre es, wenn..." TEXTID("\x20\x0B")
);

DECLARE_MESSAGE_GER(0x200B,
"Würdest Du sie mir verkaufen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x200C,
"Schade, doch ich gebe nicht auf!\n"
"Ich habe sehr viel Geduld. Sonst\n"
"würde ich hier auch nicht den\n"
"ganzen Tag herumstehen!" EVENT
);

DECLARE_MESSAGE_GER(0x200D,
UNSKIPPABLE "Gähn...\n"
"Schon gut, ich bin wach..."BOX_BREAK
UNSKIPPABLE "Was?"BOX_BREAK
UNSKIPPABLE "Ach, Du bist es! Hallo!"BOX_BREAK
UNSKIPPABLE "Ich erinnere mich an Dich...\n"
"Malon war damals ziemlich sauer\n"
"auf mich..."BOX_BREAK
UNSKIPPABLE "Du hast uns sehr geholfen. \n"
"Deshalb möchte ich, daß Du diese \n"
COLOR("\x41") "Milch" COLOR("\x40") " an Dich nimmst. Du kannst\n"
"auch die Flasche behalten!"
);

DECLARE_MESSAGE_GER(0x200E,
"Das Passieren ist " COLOR("\x41") "nur mit \n"
"königlicher Erlaubnis" COLOR("\x40") " möglich!"BOX_BREAK"Hast Du das Schild nicht gelesen?\n"
"Oh, Du bist ja noch ein Kind,\n"
"sicher kannst Du gar nicht lesen..."
);

DECLARE_MESSAGE_GER(0x200F,
"Was soll ich damit?!"
);

DECLARE_MESSAGE_GER(0x2010,
UNSKIPPABLE "Oh, das scheint...\n"
"In der Tat, es ist Zeldas \n"
"Handschrift! Laß mal sehen... \n"
UNSKIPPABLE "Hmmm... Na gut..."BOX_BREAK"\"" COLOR("\x45") "Dies ist " NAME ".\n"
" Er hat den Auftrag, Hyrule\n"
" vor dem Untergang zu bewahren." COLOR("\x40") "\"\n"
SHIFT("\x5A") "Prinzessin Zelda"BOX_BREAK
UNSKIPPABLE "Ha!\n"
"Was ist denn das für ein \n"
"seltsames Vorhaben..."BOX_BREAK
UNSKIPPABLE "Wie dem auch sei, Du kannst \n"
"passieren, Zwergenheld!\n"
TEXT_SPEED("\x01") "Hahaha!" TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_GER(0x2011,
"Ah, unser Held!\n"
"Vielen Dank für Deine Bemühungen!\n"
TEXT_SPEED("\x01") "Hahaha!" TEXT_SPEED("\x00") "!"
);

DECLARE_MESSAGE_GER(0x2012,
"Wow! Nicht schlecht!\n"
"Deine Zeit war " COLOR("\x41")  RACE_TIME  COLOR("\x40") "!\n"
"Epona und Du, Ihr seid ein\n"
"gutes Team!"
);

DECLARE_MESSAGE_GER(0x2013,
"Oh, das ist schade...\n"
"Du hast keine leere Flasche, sonst \n"
"hätte ich Dir etwas von meiner \n"
"Milch gegeben..." EVENT
);

DECLARE_MESSAGE_GER(0x2014,
"Ich bin " COLOR("\x41") "Basil" COLOR("\x40") "... für Dich natürlich\n"
"\"Herr Basil\". Du bist mir im Weg,\n"
"Kleiner! Verschwinde!"
);

DECLARE_MESSAGE_GER(0x2015,
UNSKIPPABLE "Ach, Herr Nachwuchsheld..."BOX_BREAK
UNSKIPPABLE "Falls Du planst, den Todesberg zu \n"
"besteigen, solltest Du Dich mit\n"
"einem " COLOR("\x44") "starken Schild" COLOR("\x40") " ausrüsten!\n"
"Der Vulkan ist noch immer aktiv!"BOX_BREAK
UNSKIPPABLE "Auf dem Marktplatz in Hyrule\n"
"wirst Du sicher fündig, wenn Du\n"
"Ausrüstungsgegenstände kaufen\n"
"möchtest!"BOX_BREAK
UNSKIPPABLE "Wenn Du ihnen sagst, daß ich \n"
"Dich geschickt habe, machen sie \n"
"Dir sicher einen Sonderpreis!"BOX_BREAK
UNSKIPPABLE "Denkst Du aber, Deine\n"
"Ausrüstung würde genügen, dann\n"
"laufe ruhig weiter."BOX_BREAK
UNSKIPPABLE "Übrigens: Kann ich Dich um\n"
"einen Gefallen bitten? Du mußt es\n"
"nicht tun, aber immerhin habe ich\n"
"Dir eben einen guten Tip gegeben."BOX_BREAK
UNSKIPPABLE "Warst Du schon beim \n"
COLOR("\x41") "Maskenhändler" COLOR("\x40") " in Hyrule? Über \n"
"diesen Laden spricht zur Zeit \n"
"jeder!"BOX_BREAK
UNSKIPPABLE "Mein Sohn drängt mich schon die \n"
"ganze Zeit, ihm eine Maske zu \n"
"kaufen. Doch leider fehlt mir die \n"
"Zeit..."BOX_BREAK
UNSKIPPABLE "Könntest Du mir eine Maske aus\n"
"dem Laden besorgen? Ich meine, \n"
"nur wenn Du zufällig mal nach \n"
"Hyrule kommen solltest..."BOX_BREAK
UNSKIPPABLE "Wie gesagt, ich kann hier nicht \n"
"weg. Mein Job..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4C") "Seufz..." EVENT
);

DECLARE_MESSAGE_GER(0x2016,
"Ich wünschte, ich könnte zum \n"
COLOR("\x41") "Maskenhändler" COLOR("\x40") " gehen und meinem \n"
"Sohn eine Maske kaufen..."BOX_BREAK
SHIFT("\x4C") "Seufz..."
);

DECLARE_MESSAGE_GER(0x2017,
"Oh nein... Er atmet nicht mehr..."
);

DECLARE_MESSAGE_GER(0x2018,
NAME "!?"
);

DECLARE_MESSAGE_GER(0x2019,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x1E") "Verdammt!" QUICKTEXT_DISABLE " Sie ist fort!"
);

DECLARE_MESSAGE_GER(0x201A,
UNSKIPPABLE  SHIFT("\x4A") "Du da! \n"
SHIFT("\x39")  QUICKTEXT_ENABLE "Kleiner Wicht!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x201B,
UNSKIPPABLE  SHIFT("\x41")  TEXT_SPEED("\x0A")  QUICKTEXT_ENABLE "Ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Ha" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00") "\n"
SHIFT("\x3A") "Du hast Mut!\n"
SHIFT("\x17") "Doch Mut kann manchmal...\n"
SHIFT("\x39") "...tödlich sein!"
);

DECLARE_MESSAGE_GER(0x201C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x36") "Armseliger Tropf!" QUICKTEXT_DISABLE "\n"
SHIFT("\x32") "Weißt Du, wem Du \n"
SHIFT("\x33") "gegenüberstehst?!"
);

DECLARE_MESSAGE_GER(0x201D,
UNSKIPPABLE  SHIFT("\x2D") "Ich bin " COLOR("\x41") "Ganondorf" COLOR("\x40") "!\n"
QUICKTEXT_ENABLE  SHIFT("\x1E") "Der König der Gerudos!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x201E,
UNSKIPPABLE  SHIFT("\x22") "Du mußt das weiße Pferd\n"
SHIFT("\x20") "gesehen haben! In welche\n"
SHIFT("\x10") "Richtung sind sie entkommen?!\n"
SHIFT("\x39")  QUICKTEXT_ENABLE "Antworte mir!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x201F,
"Wenn die Zeit abgelaufen ist,\n"
"sage ich Dir Bescheid..."
);

DECLARE_MESSAGE_GER(0x2020,
"Mein Sohn wird sich sehr über die\n"
"Maske freuen! Vielen Dank,\n"
"mein Freund!" EVENT
);

DECLARE_MESSAGE_GER(0x2021,
UNSKIPPABLE  SFX("\x48\x07") "Du hast die Maske, für die Du\n"
"10 Rubine bezahlen mußt, für " COLOR("\x41") "15 \n"
"Rubine " COLOR("\x40") "weiterverkauft. Du hast \n"
"einen Gewinn erwirtschaftet!"BOX_BREAK
UNSKIPPABLE "Geh nun zum Maskenhändler\n"
"zurück und gib ihm seine\n"
COLOR("\x41") "10 Rubine" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_GER(0x2022,
"Kleine Kinder dürfen an der \n"
COLOR("\x41") "Grausigen Grabgrusel-Tour" COLOR("\x40") "\n"
"leider nicht teilnehmen..."BOX_BREAK"Deshalb treibe ich mich hier herum\n"
"und spiele Grausige Grabgrusel-\n"
"Tour..."BOX_BREAK"Allerdings sehe ich nicht \n"
"besonders grausig aus, oder?"
);

DECLARE_MESSAGE_GER(0x2023,
QUICKTEXT_ENABLE "Oh Graus!" QUICKTEXT_DISABLE " Es ist Boris, der \n"
"Totengräber!"BOX_BREAK
SHIFT("\x51") "Nanu...?"BOX_BREAK"Oh, es ist nur eine Maske! Wow, \n"
"ich bin ganz schön \n"
"erschrocken!"BOX_BREAK"Gibst Du mir die Maske?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2024,
"Ich habe auch Geld, ich kann\n"
"sie bezahlen!"
);

DECLARE_MESSAGE_GER(0x2025,
"Hey! Runter vom Pferd!\n"
"Die Zeit ist abgelaufen!\n"
"Du hast nur 10 Rubine gezahlt!" EVENT
);

DECLARE_MESSAGE_GER(0x2026,
"Mit dieser Maske sehe ich fast \n"
"wie Boris aus! Cool! \n"
"Hier ist das Geld!"
);

DECLARE_MESSAGE_GER(0x2027,
UNSKIPPABLE  SFX("\x48\x07") "Du hast die Maske, die Dich\n"
"30 Rubine gekostet hat, zum \n"
"gleichen Preis weiterverkauft!"BOX_BREAK
UNSKIPPABLE "Geh nun zurück zum \n"
"Maskenhändler und zahl ihm seine\n"
COLOR("\x41") "30 Rubine " COLOR("\x40") "zurück. Dabei kannst \n"
"Du eine neue Maske leihen."
);

DECLARE_MESSAGE_GER(0x2028,
"Ich fange jetzt zu graben an! \n"
"Genau wie Boris!"
);

DECLARE_MESSAGE_GER(0x2029,
"Früher hoppelten noch viele Hasen\n"
"durch die hylianische Steppe. Nun\n"
"sind sie fort, denn sie waren \n"
"sehr schmackhaft... Hoppeldihö..."BOX_BREAK"Wie gern wäre ich ein Hase... Wie \n"
"gern hätte ich lange Ohren, die \n"
"bei jeder Bewegung mitwippen\n"
"würden... Hoppeldihö..."BOX_BREAK"Findest Du mich merkwürdig?"
);

DECLARE_MESSAGE_GER(0x202A,
"Ich wette, mit diesen Ohren kannst \n"
"Du die Stimmen hören... Das sind\n"
"die Ohren, die der Große Kürbis\n"
"prophezeit hat... Hoppeldihö..." TEXTID("\x20\x2B")
);

DECLARE_MESSAGE_GER(0x202B,
"Mir ist egal, wie teuer sie sind!\n"
"Ich muß sie haben! Verkauf sie mir!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x202C,
"Das ist nicht das, was ich hören \n"
"wollte! Hoppeldinö!"
);

DECLARE_MESSAGE_GER(0x202D,
"Mein Traum geht in Erfüllung! Ich\n"
"habe Hasenohren! Hoppeldihö!\n"
"Füttert mich mit Möhren!" EVENT
);

DECLARE_MESSAGE_GER(0x202E,
UNSKIPPABLE  SFX("\x48\x07") "Für die Maske hast Du 50\n"
"Rubine bezahlt. Der durchgeknallte \n"
"Kerl hat Dir jedoch mehr dafür \n"
"gegeben, als Du zählen kannst!"BOX_BREAK
UNSKIPPABLE "Geh zurück zum Maskenhändler \n"
"und gib ihm seine " COLOR("\x41") "50 Rubine" COLOR("\x40") " \n"
"wieder."
);

DECLARE_MESSAGE_GER(0x202F,
UNSKIPPABLE  SHIFT("\x11") "Glaubst Du im Ernst, daß Du\n"
SHIFT("\x0F") "sie vor mir schützen kannst?\n"
SHIFT("\x47") "Du Narr!"
);

DECLARE_MESSAGE_GER(0x2030,
UNSKIPPABLE "Einige Leute verbreiten das \n"
"Gerücht, ich hätte Talon um die\n"
"Farm betrogen, aber..."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x2D") "Das ist lächerlich!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Talon hat alles herunter- \n"
"gewirtschaftet! Ich, der hart \n"
"arbeitende " COLOR("\x41") "Basil" COLOR("\x40") ", habe meine ganze\n"
"Kraft in die Farm gesteckt!"BOX_BREAK
UNSKIPPABLE "Niemand darf deshalb schlecht\n"
"über mich sprechen!"BOX_BREAK
UNSKIPPABLE "Im Vertrauen... Eigentlich war\n"
"es der " COLOR("\x41") "mächtige Ganondorf" COLOR("\x40") ", der \n"
"meine Talente erkannte und mir die\n"
"Farm überließ..."BOX_BREAK
UNSKIPPABLE "Als Dank werde ich ihm das beste\n"
"Pferd meiner Züchtung als Präsent\n"
"überreichen!"BOX_BREAK
UNSKIPPABLE "Sag mal, hättest Du nicht Lust, \n"
"eines meiner Pferde zu reiten?" TEXTID("\x20\x31")
);

DECLARE_MESSAGE_GER(0x2031,
"Für nur " COLOR("\x41") "10 Rubine " COLOR("\x40") "lasse ich \n"
"Dich reiten.\n"
TWO_CHOICE  COLOR("\x42") "Reiten!\n"
"Nicht reiten!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2032,
"Na gut, dann verschwinde von \n"
"meiner Farm!"
);

DECLARE_MESSAGE_GER(0x2033,
"Du hast zu wenig Rubine!\n"
"Komm wieder, wenn Du ein bißchen \n"
"mehr in der Tasche hast!"
);

DECLARE_MESSAGE_GER(0x2034,
"Soll ich Dir erklären, wie man \n"
"reitet?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2035,
"Nähere Dich dem Pferd langsam \n"
"und stell Dich an seine Seite.\n"
"Mit " COLOR("\x42") "[A]" COLOR("\x40") " steigst Du auf."BOX_BREAK"Nutze den " COLOR("\x44") "[Control Stick]" COLOR("\x40") ", um mit Epona zu \n"
"traben. Galoppierst Du, kannst Du \n"
"mit" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x40") " die Peitsche aktivieren, \n"
"um sie noch mehr anzutreiben!"BOX_BREAK"Willst Du über ein Hindernis \n"
"springen, galoppiere darauf zu\n"
"und setze vor der Hürde die\n"
"Peitsche ein!"BOX_BREAK"Ist der Winkel, in dem Du auf das\n"
"Hindernis zureitest, zu spitz,\n"
"verweigert das Pferd."BOX_BREAK"Um wieder abzusteigen, halte \n"
"das Pferd an und drücke " COLOR("\x42") "[A]" COLOR("\x40") ".\n"
"Viel Spaß beim Reiten!" EVENT
);

DECLARE_MESSAGE_GER(0x2036,
"Setzt Du die " COLOR("\x44") "Zielerfassung" COLOR("\x40") " ein,\n"
"kannst Du mit mir sprechen,\n"
"während Du auf dem Pferd sitzt."BOX_BREAK"Willst Du jetzt schon gehen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Nein, ich will reiten!\n"
"Ja, es ist genug!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2037,
"Willst Du absteigen, halte an und \n"
"drücke " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Hab ich Dich nicht schon mal\n"
"irgendwo gesehen? Du kommst mir\n"
"so bekannt vor..." TEXTID("\x20\x36")
);

DECLARE_MESSAGE_GER(0x2038,
"Du reitest nicht schlecht!\n"
"Wie wäre es mit einem kleinen\n"
"Rennen? Eine Runde um die \n"
"Koppel!"BOX_BREAK"Der Gewinner erhält, sagen wir,\n"
COLOR("\x41") "50 Rubine" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2039,
"Übe lieber noch ein wenig!\n"
"Dann kannst Du auch gegen \n"
"mich antreten!"
);

DECLARE_MESSAGE_GER(0x203A,
UNSKIPPABLE  SHIFT("\x39") "Ver" QUICKTEXT_ENABLE "maledeit!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ich hoffe nur, der mächtige\n"
"Ganondorf erfährt nicht von dieser\n"
"Demütigung... Hey, Du! Wie wäre es\n"
"mit einer Revanche? Gewinnst Du,..."BOX_BREAK
UNSKIPPABLE "...gehört das Pferd Dir!" EVENT
);

DECLARE_MESSAGE_GER(0x203B,
UNSKIPPABLE "Wie kann das sein?!\n"
"Ist das wirklich " COLOR("\x41") "Epona" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Wie ist es Dir gelungen, das Pferd\n"
"hinter meinem Rücken zu zähmen?!"BOX_BREAK
UNSKIPPABLE "Ich wollte Epona dem mächtigen\n"
"Ganondorf zum Geschenk machen!\n"
"Nun habe ich sie beim Pferderennen \n"
"verloren! Vermaledeit!" EVENT
);

DECLARE_MESSAGE_GER(0x203C,
UNSKIPPABLE  SHIFT("\x1A") "Nun gut, so sei es denn!"BOX_BREAK
UNSKIPPABLE "Ich halte mein Versprechen, das \n"
"Pferd möge Dir gehören..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x52") "Nur..."BOX_BREAK
UNSKIPPABLE "Die Farm darfst Du mit ihr nicht \n"
"verlassen!" EVENT
);

DECLARE_MESSAGE_GER(0x203D,
"Ha! Hattest Du wirklich gedacht,\n"
"mich bezwingen zu können? \n"
"Danke für die 50 Rubine." EVENT
);

DECLARE_MESSAGE_GER(0x203E,
"Ha! Im ersten Rennen habe ich nur\n"
"geblufft. Wie könnte ich gegen Dich\n"
"verlieren? Komm wieder, wenn Du\n"
"es erneut versuchen willst..."
);

DECLARE_MESSAGE_GER(0x203F,
UNSKIPPABLE "Was?! Wer hat Dir erlaubt, Dich  \n"
"hier herumzutreiben?\n"
"Armseliger Wicht!"BOX_BREAK
UNSKIPPABLE "Ich bin " COLOR("\x41") "Basil" COLOR("\x40") ". Diese Farm liegt \n"
"mir sehr am Herzen."BOX_BREAK
UNSKIPPABLE "Ich arbeite schon verdammt lange \n"
"hier. Talon, der faule Sack, ist \n"
"mein Chef!"BOX_BREAK
UNSKIPPABLE "Heute zum Beispiel wollte er nur\n"
"schnell Milch im Schloß abliefern,\n"
"doch er ist noch immer\n"
"nicht zurück!"BOX_BREAK
UNSKIPPABLE "So ist es fast jeden Tag!\n"
"Ich habe die ganze Arbeit\n"
"am Hals!" TEXTID("\x20\x40")
);

DECLARE_MESSAGE_GER(0x2040,
"Seufz... Man hat es nicht leicht\n"
"als rechtschaffener Arbeiter."
);

DECLARE_MESSAGE_GER(0x2041,
UNSKIPPABLE "Wow! Deine Kleidung...\n"
"Wo trägt man denn sowas...\n"
"Du scheinst nicht von hier zu \n"
"sein, oder?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "Woher..." TEXT_SPEED("\x00") " kommst Du?"BOX_BREAK
UNSKIPPABLE "Oh, Du bist ein Feen-Junge aus \n"
"dem Wald! Ich bin " COLOR("\x41") "Malon" COLOR("\x40") ".\n"
"Meinem Vater gehört die \n"
"Lon Lon-Farm!" TEXTID("\x20\x42")
);

DECLARE_MESSAGE_GER(0x2042,
"Vater ist zum Schloß gegangen,\n"
"um dort Milch abzuliefern, doch\n"
"bisher kam er nicht zurück..."
);

DECLARE_MESSAGE_GER(0x2043,
UNSKIPPABLE "Gehst Du zufällig auch zum\n"
"Schloß? Wenn ja, tust Du mir einen \n"
"Gefallen? Würdest Du dort meinen\n"
COLOR("\x41") "Vater" COLOR("\x40") " für mich suchen?"BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "Sicher ist er eingeschlafen \n"
"und macht irgendwo ein Nickerchen! \n"
"Es ist immer das gleiche mit ihm!"BOX_BREAK
UNSKIPPABLE "Ach, wenn Du ihn suchst, nimm \n"
"dies hier an Dich!"BOX_BREAK
UNSKIPPABLE "Bewahre es warm und sorgsam auf,\n"
"Du wirst es gebrauchen können...\n"
"Hihihi..." EVENT
);

DECLARE_MESSAGE_GER(0x2044,
"Lege das Ei auf " COLOR("\x46") "[C]" COLOR("\x40") ", um es \n"
"einzusetzen!"BOX_BREAK"Für einen Erwachsenen ist mein \n"
"Vater ganz schön anstrengend, \n"
"oder? Hihihi..."
);

DECLARE_MESSAGE_GER(0x2045,
UNSKIPPABLE "Manchmal glaube ich einfach nicht,\n"
"daß ich, " COLOR("\x41") "der fantastische Basil" COLOR("\x40") ", \n"
"auf einer dämlichen Farm wie \n"
"dieser arbeite!"BOX_BREAK
UNSKIPPABLE "Weil der Farmbesitzer ein\n"
"Faulpelz ist, muß ich die \n"
"gesamte Arbeit erledigen!" TEXTID("\x20\x46")
);

DECLARE_MESSAGE_GER(0x2046,
"Ich, " COLOR("\x41") "der einzigartige Basil" COLOR("\x40") ", sollte \n"
"diese Farm leiten und nicht der \n"
"faule Talon!"
);

DECLARE_MESSAGE_GER(0x2047,
UNSKIPPABLE "Ah, der Junge aus dem Wald!"BOX_BREAK"Ich hörte, Du hast meinen Vater \n"
"gefunden! Wie hat Dir das Schloß \n"
"gefallen? Und die Prinzessin? Hast \n"
"Du sie gesehen? Hihihi..."BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "Daddy hatte es ganz schön eilig,\n"
"nachdem Du ihn geweckt hast..."BOX_BREAK
UNSKIPPABLE "Oh, ich muß Dir jemanden \n"
"vorstellen, Feen-Junge!"BOX_BREAK
UNSKIPPABLE "Das Pferd hier heißt\n"
COLOR("\x41") "Epona" COLOR("\x40") ". Süß, nicht wahr?"
);

DECLARE_MESSAGE_GER(0x2048,
"Wie es scheint, hat Epona Angst \n"
"vor Dir..."
);

DECLARE_MESSAGE_GER(0x2049,
"Dieses Lied hat meine Mutter \n"
"geschrieben. Es ist wunderschön. \n"
"Laß es uns zusammen singen!"
);

DECLARE_MESSAGE_GER(0x204A,
"Oh, Epona! Sie hat an Dir Gefallen\n"
"gefunden, Feen-Junge."
);

DECLARE_MESSAGE_GER(0x204B,
TEXT_SPEED("\x02") "S C H N A R C H..." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_GER(0x204C,
"Oh... Ein Besucher!\n"
"Es ist lange her, seit wir Besuch \n"
"hier hatten...\n"
"Wo kommst Du her?"BOX_BREAK"Seit Ganondorf hier sein Unwesen\n"
"treibt, sind die Menschen auf der\n"
"Flucht, die einstigen Städte Ruinen,\n"
"und überall lauern böse Kreaturen."BOX_BREAK"Basil hat die Farm im Namen von\n"
"Ganondorf übernommen..."BOX_BREAK"Jeder scheint vom Bösen besessen."BOX_BREAK"Und Vater...\n"
"Er wurde von Basil von der Farm\n"
"verbannt..."BOX_BREAK"Falls ich Basil nicht gehorche,\n"
"hat er gedroht, die Pferde zu\n"
"quälen..."BOX_BREAK"Du siehst...\n"
"Es gibt nichts, was ich tun kann..."
);

DECLARE_MESSAGE_GER(0x204D,
"Ich wette, es gibt niemanden, der\n"
"schneller als ich laufen kann... \n"
"Das Problem dabei ist nur, daß\n"
"ich nicht aufhören kann, zu laufen."
);

DECLARE_MESSAGE_GER(0x204E,
TEXT_SPEED("\x02") "Zzzzzzzz..." TEXT_SPEED("\x00") "\n"
"Ruhe... ich... muß...\n"
"Kühe... Hühner..."
);

DECLARE_MESSAGE_GER(0x204F,
UNSKIPPABLE "Richte Deine Augen gen Osten.\n"
"Dies ist der " COLOR("\x41") "Todesberg" COLOR("\x40") ", das\n"
"Reich der Goronen. Sie hüten \n"
"den Heiligen Stein des Feuers."
);

DECLARE_MESSAGE_GER(0x2050,
"Bitte erzähl Basil nicht, daß \n"
"ich dieses Lied singe..."
);

DECLARE_MESSAGE_GER(0x2051,
UNSKIPPABLE "Du...\n"
"Du kennst das Lied " COLOR("\x41") "meiner Mutter" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Alle haben dieses Lied geliebt...\n"
"Mein Vater... Sogar Basil..."BOX_BREAK
UNSKIPPABLE "Doch seit Ganondorf aufgetaucht \n"
"ist, hat sich Basil völlig verändert."BOX_BREAK
UNSKIPPABLE "Wenn ich es singe und die Augen \n"
"dabei schließe, denke ich an\n"
"vergangene Zeiten..." TEXTID("\x20\x52")
);

DECLARE_MESSAGE_GER(0x2052,
"Auch" COLOR("\x41") " Epona" COLOR("\x40") " liebte dieses Lied.\n"
"Damit konnte ich sie zähmen.\n"
"Basil ist dies nie gelungen..."BOX_BREAK"Hihihi..."
);

DECLARE_MESSAGE_GER(0x2053,
"Die steinerne Statue scheint Dir \n"
"etwas sagen zu wollen..."
);

DECLARE_MESSAGE_GER(0x2054,
"Da Du nun die Maske trägst,\n"
"beginnt die Statue mit Dir zu  \n"
"sprechen..."BOX_BREAK"Höre ihre Worte..."
);

DECLARE_MESSAGE_GER(0x2055,
"Von nun an werde ich jeden Tag\n"
"hart arbeiten. Das habe ich Malon\n"
"versprochen!"
);

DECLARE_MESSAGE_GER(0x2056,
"Basil... Mir scheint, er war von\n"
"bösen Mächten besessen.\n"
"Im Grunde ist er ein gutmütiger \n"
"Mensch."
);

DECLARE_MESSAGE_GER(0x2057,
"S C H N A R C H...\n"
"Grummel... Wie schön, daß mir\n"
"Talon vergeben hat..."
);

DECLARE_MESSAGE_GER(0x2058,
"Es ist lange her...\n"
"Lust auf ein Rennen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2059,
"Falls Du Deine Meinung änderst,\n"
"kannst Du jederzeit zurückkommen!"
);

DECLARE_MESSAGE_GER(0x205A,
"Na gut, dann verschwinde hier,\n"
"Du grüner Wichtel!" EVENT
);

DECLARE_MESSAGE_GER(0x205B,
"Du bist sauer, weil Du verloren\n"
"hast? Kein Problem, wie wäre\n"
"es mit einem weiteren Rennen?"BOX_BREAK"Setze " COLOR("\x41") "50 Rubine " COLOR("\x40") "und versuch's \n"
"nochmal!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x205C,
"Die Farm dankt, hehehe..." EVENT
);

DECLARE_MESSAGE_GER(0x205D,
"Wenn ich Dir noch mehr umsonst\n"
"gebe, wird Basil ziemlich sauer\n"
"werden. Deshalb verkaufe ich sie\n"
"Dir zum regulären Preis."
);

DECLARE_MESSAGE_GER(0x205E,
"Möchtest für " COLOR("\x41") "30 Rubine " COLOR("\x40") "Milch\n"
"kaufen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x205F,
"Hallo! Wie geht's Dir?\n"
"Sorry, wenn ich in letzter Zeit\n"
"etwas merkwürdig war. Fühl Dich\n"
"hier wie zu Hause!"
);

DECLARE_MESSAGE_GER(0x2060,
UNSKIPPABLE "Du tapferer Jüngling...\n"
"Wir müssen Hyrule vor der \n"
"drohenden Apokalypse bewahren!"
);

DECLARE_MESSAGE_GER(0x2061,
UNSKIPPABLE "Oh, eine hübsche Okarina!\n"
"Wirst Du das Lied auf der \n"
"Okarina spielen?"
);

DECLARE_MESSAGE_GER(0x2062,
UNSKIPPABLE "Am Fuße des Todesberges wirst\n"
"Du" COLOR("\x41") " Kakariko " COLOR("\x40") "finden. Es ist die \n"
"Stadt, die ich gegründet habe, um\n"
"Verfolgten Obdach zu bieten."BOX_BREAK
UNSKIPPABLE "Bevor Du zum Berg aufbrichst, \n"
"solltest Du Dich mit einigen\n"
"Bewohnern unterhalten."
);

DECLARE_MESSAGE_GER(0x2063,
UNSKIPPABLE "Das Lied, das ich Dich gelehrt\n"
"habe, besitzt geheimnisvolle Kräfte.\n"
"Nur Angehörige der Königsfamilie\n"
"dürfen es erlernen und spielen."BOX_BREAK
UNSKIPPABLE "Vergiß nicht: Du kannst damit\n"
"beweisen, daß Du in königlicher\n"
"Mission unterwegs bist."BOX_BREAK
UNSKIPPABLE "Geh nun, die Prinzessin und ich \n"
"warten auf Dich und die Heiligen\n"
"Steine im Schloß! Enttäusche uns\n"
"nicht!"
);

DECLARE_MESSAGE_GER(0x2064,
UNSKIPPABLE  QUICKTEXT_ENABLE "Sei willkommen!" QUICKTEXT_DISABLE "\n"
"Bist Du bereit, " NAME "?"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Es scheint, daß nun die Zeit \n"
"gekommen ist, da Dein Abenteuer \n"
"beginnen soll."BOX_BREAK
UNSKIPPABLE "Das, was hinter Dir liegt, war\n"
"ein Spaziergang im Vergleich zu\n"
"dem, was Dich erwartet... Doch sei\n"
"tapfer und verliere nie den Mut!" TEXTID("\x20\x65")
);

DECLARE_MESSAGE_GER(0x2065,
"Folgst Du diesem Weg, so \n"
"gelangst Du zum " COLOR("\x41") "Schloß von Hyrule" COLOR("\x40") ".\n"
"Dort sei es Dir bestimmt, die \n"
COLOR("\x41") "Prinzessin" COLOR("\x40") " zu treffen..."BOX_BREAK"Weichst Du ab von Deinen Pfaden, \n"
"und wandelst auf unbekannten \n"
"Wegen, so nutze Deine" COLOR("\x41") " Karte" COLOR("\x40") "."BOX_BREAK"Die Orte, die Du bereits erforscht\n"
"hast, mögen wie von Geisterhand\n"
"in Deine Karte gezeichnet werden."BOX_BREAK"Drücke " COLOR("\x44") "START" COLOR("\x40") ", um ins Menü zu \n"
"gelangen, und " COLOR("\x44") "[L]" COLOR("\x40") " oder " COLOR("\x44") "[R]" COLOR("\x40") ", um den \n"
COLOR("\x41") "Karten-Bildschirm" COLOR("\x40") " einsehen zu \n"
"können."BOX_BREAK"Auf dem " COLOR("\x41") "Karten-Bildschirm" COLOR("\x40") " findest\n"
"Du außerdem einen " COLOR("\x41") "Hinweis" COLOR("\x40") ", welchen\n"
"Ort Du als nächsten aufsuchen \n"
"solltest." TEXTID("\x20\x66")
);

DECLARE_MESSAGE_GER(0x2066,
"Hast Du alles verstanden?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Nein!\n"
"Ja!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2067,
UNSKIPPABLE "So sei es! Setze Deinen Weg nun \n"
"fort! Wir sehen uns wieder..."
);

DECLARE_MESSAGE_GER(0x2068,
UNSKIPPABLE  NAME "! Hier entlang!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Die Prinzessin befindet sich \n"
"im Schloß! Doch hüte Dich vor den \n"
"Wachen. Sie dürfen Dich nicht\n"
"sehen..." EVENT
);

DECLARE_MESSAGE_GER(0x2069,
"Wisse, hier auf diesem Grund, \n"
"nimmt die Zeit ihren gewohnten \n"
"Lauf..."BOX_BREAK"Besuchst Du jedoch eine Stadt \n"
"oder die Ranch, steht die Zeit still."BOX_BREAK"Wenn Du möchtest, daß die \n"
"Tageszeit sich ändert, mußt Du die \n"
"Stadt verlassen und zu späterer \n"
"Stunde wiederkehren..."BOX_BREAK"Geh nun und hüte Dich vor den \n"
"Wachen..." EVENT
);

DECLARE_MESSAGE_GER(0x206A,
"Muß ich meine Worte wiederholen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x206B,
UNSKIPPABLE "Du scheinst die Gabe der\n"
"Weisheit zu besitzen...\n"
"Viel Glück..."
);

DECLARE_MESSAGE_GER(0x206C,
"Sei willkommen, " NAME "! \n"
"Halte ein, mein Freund!"BOX_BREAK"Du befindest Dich vor den Toren \n"
COLOR("\x41") "Kakarikos" COLOR("\x40") ". Hast Du die Prinzessin \n"
"bereits besucht? Wenn nicht, so \n"
"rate ich Dir, sie aufzusuchen." EVENT
);

DECLARE_MESSAGE_GER(0x206D,
"Sei gegrüßt, " NAME "! \n"
"Schau hierher!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Du befindest Dich vor den Toren \n"
COLOR("\x41") "Kakarikos" COLOR("\x40") ". Die Treppen führen\n"
"Dich in die Stadt!" EVENT
);

DECLARE_MESSAGE_GER(0x206E,
UNSKIPPABLE  NAME "! Nur Du hast die\n"
"Macht, den Lauf des Schicksals zu\n"
"ändern!"
);

DECLARE_MESSAGE_GER(0x206F,
NAME "! Ich habe Dich \n"
"erwartet! Wohin werden Dich Deine\n"
"Schritte als nächstes lenken?"BOX_BREAK_DELAYED("\x28") "Begibst Du Dich gen Süden, so \n"
"kannst Du dort die ruhigen \n"
"Wasser des " COLOR("\x41") "Hylia-Sees" COLOR("\x40") " erkunden."BOX_BREAK"Im Westen hingegen liegt das \n"
COLOR("\x41") "Gerudotal" COLOR("\x40") ". Auf der anderen Seite\n"
"dieses Tales befindet sich die \n"
"Gerudo-Festung."BOX_BREAK"Welchen Weg Du auch immer wählst,\n"
"die Macht des Triforce möge Dich\n"
"begleiten!" EVENT
);

DECLARE_MESSAGE_GER(0x2070,
UNSKIPPABLE "Was auch immer das Schicksal Dir \n"
"bescheren mag, laß Dich niemals \n"
"entmutigen..."
);

DECLARE_MESSAGE_GER(0x2071,
"Vor Dir liegt der Hylia-See.\n"
"Sein Wasser ist rein und klar..."BOX_BREAK_DELAYED("\x28") "Die " COLOR("\x43") "Zoras" COLOR("\x40") ", die im Osten des Landes\n"
"leben, sind die Hüter des Tempels,\n"
"der sich auf dem Grund des Sees\n"
"befindet..."BOX_BREAK"Willst Du Dir den Ort auf Deiner\n"
"Karte betrachten, so drücke \n"
COLOR("\x44") "START" COLOR("\x40") " und begib Dich mit" COLOR("\x41") " " COLOR("\x44") "[L]" COLOR("\x40") " \n"
"oder " COLOR("\x44") "[R]" COLOR("\x40") " zum " COLOR("\x43") "Karten-Bildschirm" COLOR("\x40") "."BOX_BREAK"Alle Orte, an denen Du schon \n"
"einmal warst, werden Dir auf der\n"
"Karte angezeigt..." EVENT
);

DECLARE_MESSAGE_GER(0x2072,
UNSKIPPABLE "Geh nun!"
);

DECLARE_MESSAGE_GER(0x2073,
UNSKIPPABLE "Wie lautet Dein Name?" EVENT
);

DECLARE_MESSAGE_GER(0x2074,
UNSKIPPABLE  TEXT_SPEED("\x01") "Ich fühle etwas..." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE  COLOR("\x42")  NAME  COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Seltsam... Er kommt mir so... \n"
"vertraut vor." EVENT
);

DECLARE_MESSAGE_GER(0x2075,
UNSKIPPABLE "So sei es, " NAME "..."BOX_BREAK
UNSKIPPABLE "Ich werde Dich nun in das\n"
"Geheimnis des Heiligen Reiches\n"
"einweihen, das seit Generationen\n"
"von meiner Familie gehütet wird." EVENT
);

DECLARE_MESSAGE_GER(0x2076,
SHIFT("\x23") "Die Okarina der Zeit!" EVENT
);

DECLARE_MESSAGE_GER(0x2077,
"Hast Du die Geschichte, die ich\n"
"Dir anvertraute, verstanden?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2078,
UNSKIPPABLE "Ich habe gerade durch dieses\n"
"Fenster hier geschaut..."BOX_BREAK
UNSKIPPABLE "Eines der Elemente aus meinem\n"
"Traum... Die" COLOR("\x43") " dunklen Wolken" COLOR("\x40") "...\n"
"Ich glaube, sie symbolisieren...\n"
"...diesen Mann dort!"BOX_BREAK"Möchtest Du ihn Dir anschauen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2079,
UNSKIPPABLE  TEXT_SPEED("\x01") "Ich weiß..." TEXT_SPEED("\x00") " Er ist es!"BOX_BREAK
UNSKIPPABLE "Natürlich erzählte ich meinem Vater \n"
"von dem Traum."BOX_BREAK
UNSKIPPABLE "Doch er glaubte mir nicht, daß der\n"
"Traum eine Prophezeiung sei!"BOX_BREAK
UNSKIPPABLE "Doch glaube mir... Ich spüre die \n"
"böse Aura dieses Mannes!" EVENT
);

DECLARE_MESSAGE_GER(0x207A,
UNSKIPPABLE "Ganondorf hat es auf nichts\n"
"anderes als das " COLOR("\x41") "Triforce" COLOR("\x40") " des \n"
"Heiligen Reiches abgesehen..."BOX_BREAK
UNSKIPPABLE "Nur das scheint sein Begehr!"BOX_BREAK
UNSKIPPABLE "Um sein Ziel zu erreichen, muß\n"
"er Hyrule, nein, die gesamte Welt\n"
"unterwerfen!" EVENT
);

DECLARE_MESSAGE_GER(0x207B,
UNSKIPPABLE  NAME "... Wir sind die \n"
"einzigen, die Ganondorfs Pläne\n"
"durchkreuzen können!" EVENT
);

DECLARE_MESSAGE_GER(0x207C,
UNSKIPPABLE "Wir müssen verhindern, daß \n"
"Ganondorf in den Besitz des\n"
"Triforce gelangt!"BOX_BREAK
UNSKIPPABLE "Ich werde die " COLOR("\x44") "Okarina der Zeit\n"
COLOR("\x40") "mit all meiner Kraft schützen! \n"
"Niemals soll er sie erhalten!"BOX_BREAK
UNSKIPPABLE "Deine Aufgabe sei es, die\n"
"verbliebenen Heiligen Steine zu\n"
"finden! Sie sind der Schlüssel zum\n"
"Heiligen Reich..."BOX_BREAK
UNSKIPPABLE "Laß uns das Triforce suchen und\n"
"mit dessen Kraft Ganondorf \n"
"bezwingen!" EVENT
);

DECLARE_MESSAGE_GER(0x207D,
UNSKIPPABLE "Eines noch...\n"
"Nimm diesen " COLOR("\x41") "Brief " COLOR("\x40") "an Dich.\n"
"Ich bin sicher, Du wirst ihn \n"
"brauchen können..." EVENT
);

DECLARE_MESSAGE_GER(0x207E,
UNSKIPPABLE "Gähn...\n"
"Was?! Bin ich schon wach?"BOX_BREAK
UNSKIPPABLE "Es scheint so..."BOX_BREAK
UNSKIPPABLE "Hey, wenn das nicht der Junge\n"
"aus den Wäldern ist!\n"
"Vielen Dank nochmal, daß Du\n"
"mich geweckt hast!"BOX_BREAK
UNSKIPPABLE "Es hat ganz schön lange gedauert, \n"
"bis ich Malon beruhigt hatte."BOX_BREAK
UNSKIPPABLE "Was hast Du denn heute so vor?\n"
"Nichts besonderes? Nun, wie wäre\n"
"es dann mit einem kleinen\n"
"Spielchen? Hast Du Lust?"BOX_BREAK
UNSKIPPABLE "Die drei Hühner hier sind\n"
COLOR("\x41") "Super-Hühner" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Ich werde sie nun mit den\n"
"anderen, herkömmlichen Hühnern\n"
"vermischen..."BOX_BREAK
UNSKIPPABLE "Gelingt es Dir, sie innerhalb einer\n"
"bestimmten Zeit aus allen anderen \n"
"herauszupicken, werde ich Dich\n"
"mit " COLOR("\x41") "etwas Nützlichem " COLOR("\x40") "belohnen!"BOX_BREAK"Ein Spiel kostet 10 Rubine!\n"
"Machst Du mit?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x207F,
"Gähn...\n"
"Schon gut... Ich bin ja wach!"BOX_BREAK"Was?!"BOX_BREAK"Hey, der Kokiri-Junge!\n"
"Hast Du ein bißchen Zeit?\n"
"Dann laß uns spielen!"BOX_BREAK"Ich vermische diese drei " COLOR("\x41") "Super-\n"
"Hühner" COLOR("\x40") " mit den herkömmlichen \n"
"Hühnern..."BOX_BREAK"Gelingt es Dir, sie innnerhalb einer \n"
"bestimmten Zeit aus allen anderen\n"
"Hühnern herauszupicken, belohne \n"
"ich Dich mit " COLOR("\x41") "etwas Nützlichem" COLOR("\x40") "!"BOX_BREAK"Ein Spiel kostet 10 Rubine!\n"
"Willst Du es versuchen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2080,
"Du hast 30 Sekunden!\n"
"Jetzt geht's los!\n"
"Hier sind die Super-Hühner!"BOX_BREAK
SHIFT("\x42") "FINDE SIE!" EVENT
);

DECLARE_MESSAGE_GER(0x2081,
"Die Zeit ist um!\n"
"Oh, wie schade!"BOX_BREAK"Die Super-Hühner sind genial!\n"
"Jetzt bringen sie mir sogar noch\n"
"Geld ein!"BOX_BREAK"Kommt zu Daddy, ihr Süßen!" EVENT
);

DECLARE_MESSAGE_GER(0x2082,
"Das ist eins von ihnen!\n"
"Such weiter! Schnell!\n"
COLOR("\x41") "Zwei" COLOR("\x40") " mußt Du noch finden!" EVENT
);

DECLARE_MESSAGE_GER(0x2083,
"Wieder eins!\n"
"Jetzt kommt's drauf an! " COLOR("\x41") "Eins" COLOR("\x40") "\n"
"fehlt noch!!" EVENT
);

DECLARE_MESSAGE_GER(0x2084,
"Wow! Unglaublich!\n"
"Du hast ein gutes Gespür!"BOX_BREAK"Du hast sie tatsächlich\n"
"alle gefunden!\n"
"Komm her zu mir!" EVENT
);

DECLARE_MESSAGE_GER(0x2085,
"Willst Du es nochmal versuchen?\n"
"Ein junger Kerl wie Du hat doch\n"
"sicher Hummeln im Hintern!"BOX_BREAK"Du mußt nur in 30 Sekunden \n"
"die richtigen drei Hühner finden."BOX_BREAK"Willst Du es für 5 Rubine\n"
"versuchen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2086,
"Hey, Junge!\n"
"Du hast das Zeug dazu, ein \n"
"verdammt guter Farmer zu \n"
"werden!"BOX_BREAK"Ich würde mich freuen, wenn Du \n"
"Malon heiraten würdest! Na?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x2087,
UNSKIPPABLE "Hahaha, war doch nur Spaß!"BOX_BREAK
UNSKIPPABLE "Oh, hier, nimm diese Flasche\n"
COLOR("\x41") "Lon Lon-Milch " COLOR("\x40") "an Dich. Sie gibt \n"
"Dir neue Energie, sobald Du sie \n"
"trinkst!"BOX_BREAK
UNSKIPPABLE "Hast Du die " COLOR("\x41") "Flasche" COLOR("\x40") " geleert,\n"
"kannst Du jederzeit zurückkommen\n"
"und sie Dir gegen ein geringes\n"
"Entgelt auffüllen lassen!" EVENT
);

DECLARE_MESSAGE_GER(0x2088,
"Hey Partner, Du bist echt in \n"
"Ordnung!"BOX_BREAK"Wenn Du einmal erwachsen bist, \n"
"könntest Du auf der Farm \n"
"arbeiten...\n"
"Wir warten auf Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x2089,
"Hier, nimm diese leckere\n"
COLOR("\x41") "Lon Lon-Milch " COLOR("\x40") "an Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x208A,
"Hier! Nimm etwas von der\n"
"frischen Milch..."BOX_BREAK"Oh? Schade...\n"
"Du hast leider keine leere\n"
"Flasche, oder?"
);

DECLARE_MESSAGE_GER(0x208B,
"Gähn...\n"
"Ich bin wach!"BOX_BREAK"Was?"BOX_BREAK"Hey, " NAME "!\n"
"Wenn Du Malon suchst, die ist\n"
"draußen! Oder bist Du zum \n"
"Spielen hergekommen?"BOX_BREAK"Dann laß uns " COLOR("\x41") "Super-Huhn-Suchen \n"
COLOR("\x40") "spielen!" COLOR("\x41") " " COLOR("\x40") "Oder willst Du nur \n"
"frische " COLOR("\x41") "Lon Lon-Milch" COLOR("\x40") "?"BOX_BREAK"Was darf es sein?\n"
THREE_CHOICE  COLOR("\x42") "Lon Lon-Milch - 30 Rubine\n"
"Super-Huhn-Suchen - 10 Rubine\n"
"Zurück" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x208C,
QUICKTEXT_ENABLE  COLOR("\x41") "Du hast verloren!" COLOR("\x40") "\n"
"Du hättest über alle Hindernisse\n"
"springen müssen!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x208D,
QUICKTEXT_ENABLE  COLOR("\x41") "Eine Runde noch!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_GER(0x208E,
"Du mußt auf die Hindernisse \n"
"frontal zureiten. Ist der Winkel zu \n"
"spitz, verweigert das Pferd!"BOX_BREAK"Wenn Du es erneut versuchen \n"
"möchtest, steig auf und mach Dich \n"
"bereit!"
);

DECLARE_MESSAGE_GER(0x208F,
UNSKIPPABLE "Du hast es geschafft!\n"
COLOR("\x41")  RACE_TIME  COLOR("\x40") " ist neuer Parcours-Rekord!"BOX_BREAK
UNSKIPPABLE "Für diese herausragende Leistung \n"
"gebührt Dir eine Belohnung!"BOX_BREAK
UNSKIPPABLE "Mein Präsent ist ein bißchen zu\n"
"unhandlich, um es Dir hier geben zu\n"
"können. Deshalb hab ich es direkt\n"
"in Dein Haus liefern lassen! Hihihi..."
);

DECLARE_MESSAGE_GER(0x2090,
"Der bisherige Rekord beträgt \n"
COLOR("\x41") "50 Sekunden" COLOR("\x40") ".\n"
"Deine Bestzeit ist " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "."BOX_BREAK"Gelingt es Dir, den Rekord zu \n"
"brechen, bekommst Du ein \n"
"Geschenk von mir!\n"
"Also, gib Dein Bestes!"BOX_BREAK"Los geht's!" EVENT
);

DECLARE_MESSAGE_GER(0x2091,
"Deine Bestzeit beträgt " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "!\n"
"Kannst Du das noch unterbieten?\n"
"Komm schon, versuch es!" EVENT
);

DECLARE_MESSAGE_GER(0x2092,
"Der bisherige Rekord beträgt\n"
COLOR("\x41") "50 Sekunden" COLOR("\x40") ". Brichst Du ihn, \n"
"erhältst Du mein Geschenk!"BOX_BREAK"Also, streng Dich an und gib\n"
"alles!"BOX_BREAK"Okay, es geht los!!" EVENT
);

DECLARE_MESSAGE_GER(0x2093,
"2093"
);

DECLARE_MESSAGE_GER(0x2094,
"2094"
);

DECLARE_MESSAGE_GER(0x2095,
"2095"
);

DECLARE_MESSAGE_GER(0x2096,
"2096"
);

DECLARE_MESSAGE_GER(0x2097,
"2097"
);

DECLARE_MESSAGE_GER(0x2098,
"2098"
);

DECLARE_MESSAGE_GER(0x2099,
"2099"
);

DECLARE_MESSAGE_GER(0x209A,
"209A"
);

DECLARE_MESSAGE_GER(0x209B,
"209B"
);

DECLARE_MESSAGE_GER(0x209C,
"209C"
);

DECLARE_MESSAGE_GER(0x209D,
"209D"
);

DECLARE_MESSAGE_GER(0x209E,
"209E"
);

DECLARE_MESSAGE_GER(0x209F,
"209F"
);

DECLARE_MESSAGE_GER(0x3000,
UNSKIPPABLE "Eine große Ehre, Blutsbrüderschaft\n"
"mit einem Goronen zu schließen... \n"
"Du besitzt nun zwei Heilige Steine!\n"
"Suche nach dem Dritten!"
);

DECLARE_MESSAGE_GER(0x3001,
UNSKIPPABLE "Eine große Ehre, Blutsbrüderschaft \n"
"mit einem Goronen zu schließen... \n"
"Du besitzt nun alle Heiligen Steine!\n"
"Suche Prinzessin Zelda auf!"
);

DECLARE_MESSAGE_GER(0x3002,
"Hallo... Das habe ich gegen das\n"
COLOR("\x41") "Zertifikat" COLOR("\x40") " eingetauscht..."
);

DECLARE_MESSAGE_GER(0x3003,
"Ich gebe es Dir als Geschenk..."
);

DECLARE_MESSAGE_GER(0x3004,
UNSKIPPABLE "Ich mag Dich, Kleiner!"BOX_BREAK
UNSKIPPABLE "Was hältst Du davon, wenn Du \n"
"und ich Blutsbrüder werden?!"BOX_BREAK
UNSKIPPABLE "Keine Angst, keine große Feier!\n"
"Nimm dies als Zeichen meiner\n"
"Freundschaft an Dich!"
);

DECLARE_MESSAGE_GER(0x3005,
SHIFT("\x16") "Meine Hochachtung!" FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x3006,
"Laß mich Dich in die Arme \n"
"schließen, Bruder!" FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x3007,
SHIFT("\x51") "Oh..."BOX_BREAK_DELAYED("\x1E")  SHIFT("\x51") "Wow!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x3F")  QUICKTEXT_ENABLE "Das groovt!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x2E") "Yeah! Yeah! " QUICKTEXT_ENABLE "Yeah!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x28")  SHIFT("\x34")  QUICKTEXT_ENABLE "Ein heißer Beat!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x4B") "Groovy!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x3E") "Let's dance!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x46")  QUICKTEXT_ENABLE "YEEEEAH!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x28")  SHIFT("\x44")  QUICKTEXT_ENABLE "YAHOOO!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x3008,
UNSKIPPABLE "Ich bin ein " COLOR("\x41") "Gorone" COLOR("\x40") ", wir sind\n"
"Steinfresser und leben auf dem\n"
"Todesberg."BOX_BREAK
UNSKIPPABLE "Siehst Du den riesigen Fels\n"
"dort drüben?"BOX_BREAK
UNSKIPPABLE "Er versperrt den Eingang zu\n"
COLOR("\x41") "Dodongos Höhle" COLOR("\x40") ". Die Höhle ist für\n"
"uns Goronen sehr wichtig, denn\n"
"dort lagert unsere Nahrung..."BOX_BREAK
UNSKIPPABLE "Vor kurzem sind einige Dodongos\n"
"in der Höhle aufgetaucht. Seither  \n"
"war die Höhle für uns ein äußerst\n"
"gefährlicher Ort!"BOX_BREAK
UNSKIPPABLE "Über dem Eingang der Höhle\n"
"sah ich einen " COLOR("\x41") "Gerudo in schwarzer\n"
"Rüstung" COLOR("\x40") ", der den Fels mit magischer\n"
"Kraft vor dem Eingang plazierte!" TEXTID("\x30\x2A")
);

DECLARE_MESSAGE_GER(0x3009,
"Ich wünschte, ich könnte den \n"
"Eingang zu Dodongos Höhle\n"
"rechtzeitig mit einer " COLOR("\x41") "Donnerblume\n"
COLOR("\x40") "erreichen! Und..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x44")  COLOR("\x41") "...BUMMS..." COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK"...wäre der Höhleneingang wieder\n"
"frei und ich ein gefeierter Held!"
);

DECLARE_MESSAGE_GER(0x300A,
"Ich stehe hier, um den\n"
COLOR("\x41") "Donnerblumen " COLOR("\x40") "Schatten zu\n"
"spenden."BOX_BREAK"Möchtest Du mich etwas \n"
"fragen?\n"
TWO_CHOICE  COLOR("\x42") "Über die Donnerblumen\n"
"Über Dodongos Höhle" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x300B,
"Die Blumen, die dort wachsen, sind \n"
COLOR("\x41") "Donnerblumen" COLOR("\x40") ". Es sind explosive\n"
"Höhlenpflanzen, die nur auf diesem\n"
"Berg wachsen."BOX_BREAK"Die Blüte der Blume dient als \n"
"Material zur Bombenherstellung."BOX_BREAK"Jemand, der die Blumen nicht \n"
"kennt, sollte sich davor hüten, sie\n"
"zu pflücken!"BOX_BREAK"Normalerweise wachsen sie nur in \n"
"dunklen Höhlen. Daher ist \n"
"dieses Exemplar hier\n"
"sehr selten."
);

DECLARE_MESSAGE_GER(0x300C,
"Die Blumen, die dort wachsen, sind \n"
COLOR("\x41") "Donnerblumen" COLOR("\x40") ". Es sind explosive\n"
"Höhlenpflanzen, die nur auf diesem\n"
"Berg wachsen."BOX_BREAK"Normalerweise wachsen sie nur in \n"
"dunklen Höhlen. Daher ist \n"
"dieses Exemplar hier\n"
"sehr selten."BOX_BREAK"Mit einem " COLOR("\x41") "Goronen-Armband " COLOR("\x40") "könnte \n"
"selbst ein kleines Kind wie\n"
"Du die Blumen mit " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pflücken."
);

DECLARE_MESSAGE_GER(0x300D,
"Ist Dir auf Deinem Weg hierher \n"
"die Höhle aufgefallen? Dies ist \n"
COLOR("\x41") "Dodongos Höhle" COLOR("\x40") "."BOX_BREAK"Weil es im Inneren nur wenig Licht \n"
"gibt, wachsen dort sehr viele\n"
COLOR("\x41") "Donnerblumen" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x300E,
UNSKIPPABLE "Nanu?"BOX_BREAK
UNSKIPPABLE "Nur selten verirren sich Leute\n"
"hierher! Woher kommst Du?"BOX_BREAK
UNSKIPPABLE "Aus dem Wald?"BOX_BREAK
UNSKIPPABLE "Was ist das, \"Wald\"?"BOX_BREAK
UNSKIPPABLE "Was?"BOX_BREAK
UNSKIPPABLE "Dort wachsen \"Bäume\" und \n"
"\"Pflanzen\"?"BOX_BREAK
UNSKIPPABLE "Das verwirrt mich... \n"
"Hier oben wächst außer den \n"
COLOR("\x41") "Donnerblumen" COLOR("\x40") " gar nichts..."BOX_BREAK
UNSKIPPABLE "Wir haben hier auch weder\n"
"Deku-Kerne noch Deku-Nüsse."BOX_BREAK
UNSKIPPABLE "Und selbst Deku-Stäbe findet man\n"
"hier höchst selten." TEXTID("\x30\x22")
);

DECLARE_MESSAGE_GER(0x300F,
"Ich hatte den Eingang versiegelt,\n"
"da ich nicht sehr viel zu \n"
"verkaufen habe... Du aber scheinst\n"
"sehr hartnäckig zu sein. Nun gut." EVENT
);

DECLARE_MESSAGE_GER(0x3010,
"Tut mir leid... Die Bombe hier ist \n"
"nur eine Attrappe. Die echten \n"
"sind " COLOR("\x41") "ausverkauft" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_GER(0x3011,
"Hey, warum hast Du mich \n"
"aufgehalten? Das mag ich gar \n"
"nicht!"BOX_BREAK"Ich war gerade so schön in Fahrt!"BOX_BREAK"Auf diese Weise kann man \n"
"wunderbar Streß abbauen!"BOX_BREAK"Laß mich jetzt weiterrollen!\n"
"Rock'n'Roll!"
);

DECLARE_MESSAGE_GER(0x3012,
UNSKIPPABLE "Du bist mutig! Das soll belohnt \n"
"werden! Nimm dies als Zeichen \n"
"meiner Anerkennung!" EVENT
);

DECLARE_MESSAGE_GER(0x3013,
"Hab Dank! An meinem Downhill-Roll \n"
"kannst Du erkennen, wie sehr ich \n"
"mich freue!"
);

DECLARE_MESSAGE_GER(0x3014,
UNSKIPPABLE  SHIFT("\x21") "Oh... Ich bin so hungrig..."BOX_BREAK
UNSKIPPABLE "Jeder hier muß Hunger leiden,\n"
"weil der Eingang zur Höhle \n"
"verschlossen ist. Wir sind vom  \n"
"Aussterben bedroht!"BOX_BREAK
UNSKIPPABLE "Wenn es nur eine Möglichkeit\n"
"gäbe," COLOR("\x41") " Dodongos Höhle " COLOR("\x40") "zu öffnen."BOX_BREAK
UNSKIPPABLE "Seit Wochen ist sie verschüttet.\n"
"Es ist so tragisch..."BOX_BREAK
UNSKIPPABLE "In der Höhle lagern die besten \n"
"und köstlichsten Steinvorräte. \n"
"Doch wie es scheint, müssen wir \n"
"nun auf diesen Genuß verzichten."BOX_BREAK
UNSKIPPABLE "Dabei sind wir Goronen \n"
"Feinschmecker, die sich nur\n"
"schwerlich an andere Nahrung\n"
"gewöhnen können!" TEXTID("\x30\x15")
);

DECLARE_MESSAGE_GER(0x3015,
"Seufz... Wie gern würde ich jetzt \n"
"ein Stück Steinfilet aus " COLOR("\x41") "Dodongos\n"
"Höhle " COLOR("\x40") "genießen..."
);

DECLARE_MESSAGE_GER(0x3016,
UNSKIPPABLE "Hey!"BOX_BREAK
UNSKIPPABLE "Ein kleines Kind wie Du muß \n"
"einen guten Grund haben, um \n"
"diesen Ort aufzusuchen!"BOX_BREAK
UNSKIPPABLE "Ich hatte also recht! Du bist\n"
"hier, um den " COLOR("\x41") "Roten Stein" COLOR("\x40") " zu \n"
"fressen! Nun, da kommst Du zu \n"
"spät! Er ist fort!"BOX_BREAK
UNSKIPPABLE "Was? Das ist gar nicht der \n"
"Grund, der Dich herführte?"BOX_BREAK
UNSKIPPABLE "Du suchst einen Heiligen\n"
"Stein? Damit mußt Du den \n"
"leckeren Roten Stein meinen, der\n"
"vor kurzem noch hier lag!"BOX_BREAK
UNSKIPPABLE "Ich war so hungrig, daß ich \n"
"dachte, es wäre in Ordnung, nur \n"
"ein kleines Stückchen davon zu \n"
"essen. Als ich kam, war er fort!"BOX_BREAK
UNSKIPPABLE "Vielleicht hat ihn Darunia\n"
"weggenommen..."BOX_BREAK
UNSKIPPABLE "Er sagte, es gefällt ihm nicht, daß\n"
"alle immer so gierig schauen,\n"
"wenn sie den Roten Stein \n"
"betrachten." TEXTID("\x30\x17")
);

DECLARE_MESSAGE_GER(0x3017,
"Darunia hat sich in seinem Raum\n"
"eingeschlossen. Er sprach:\n"
"\"" COLOR("\x41") "Ich werde hier auf den Boten \n"
"der Königsfamilie warten!" COLOR("\x40") "\""
);

DECLARE_MESSAGE_GER(0x3018,
UNSKIPPABLE "Ich bin so hungrig, ich kann an \n"
"nichts anderes mehr denken..."BOX_BREAK
UNSKIPPABLE "Suche Darunia auf, um Antwort\n"
"auf Deine Fragen zu finden."BOX_BREAK
UNSKIPPABLE "Zur Zeit ist er sehr schlecht \n"
"gelaunt... Dann kann er sehr \n"
"abweisend sein..."BOX_BREAK
UNSKIPPABLE "Doch ich weiß, wie man ihn\n"
"aufheitern kann..."BOX_BREAK
UNSKIPPABLE "Er mag zwar nicht so aussehen,\n"
"doch er liebt Musik! Wann immer \n"
"er ein Lied hört, muß er tanzen..." TEXTID("\x30\x19")
);

DECLARE_MESSAGE_GER(0x3019,
"Ich kann mich erinnern, daß\n"
"Darunia besonders die " COLOR("\x42") "Musik\n"
"des Waldes " COLOR("\x40") "mochte..."BOX_BREAK"Das waren noch Zeiten...\n"
"Die Musik weckt in mir \n"
"Erinnerungen an vergangene Tage..." TEXTID("\x30\x2C")
);

DECLARE_MESSAGE_GER(0x301A,
UNSKIPPABLE "Was?! Wer bist Du?!"BOX_BREAK
UNSKIPPABLE "Als ich " COLOR("\x43") "das Lied der Königsfamilie\n"
COLOR("\x40") "hörte, dachte ich, ein Abgesandter \n"
"sei eingetroffen...\n"
"Stattdessen sehe ich ein Kind!"BOX_BREAK
UNSKIPPABLE "Hat " COLOR("\x41") "Darunia" COLOR("\x40") ", der Führer der \n"
"Goronen, es wirklich verdient,\n"
"so behandelt zu werden?"BOX_BREAK
UNSKIPPABLE "Ich kann es nicht glauben!\n"
"Geh zurück ins Schloß und sag\n"
"dem König, er solle mir einen\n"
"richtigen Mann schicken!"BOX_BREAK
UNSKIPPABLE "Du fragst, warum ich so schlecht\n"
"gelaunt bin?"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Dämonische Kreaturen sind in \n"
"Dodongos Höhle eingedrungen..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Die Donnerblumen-Ernte war\n"
"schlecht..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Und zudem leidet mein Volk\n"
"Hunger..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x1C") "Doch wie dem auch sei..." TEXTID("\x30\x1B")
);

DECLARE_MESSAGE_GER(0x301B,
QUICKTEXT_ENABLE  SHIFT("\x11") "Dies ist Sache der Goronen!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x0B") "Wir sind zu stolz, um die Hilfe\n"
SHIFT("\x06") "Fremder in Anspruch zu nehmen!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x301C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x27") "Wow! Cooler Sound!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Meine schlechte Laune ist \n"
"verflogen! Ich konnte mich nicht\n"
"mehr halten, ich mußte einfach \n"
"tanzen!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x3C") "Ich bin " COLOR("\x41") "Darunia" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Ich bin der Anführer der Goronen!\n"
"Gibt es etwas, das ich für Dich\n"
"tun kann?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x50") "Wie?"BOX_BREAK
UNSKIPPABLE "Du suchst den " COLOR("\x41") "Heiligen Stein\n"
"des Feuers" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Der Heilige Stein des Feuers, auch \n"
"als Goronen-Opal bekannt, ist das \n"
"wertvollste Relikt meines Volkes..."BOX_BREAK
UNSKIPPABLE "Ich kann ihn Dir erst geben, \n"
"wenn Du meinem Volk beweist, \n"
"daß Du seiner würdig bist..."BOX_BREAK
UNSKIPPABLE "Beweise Dich, indem Du die \n"
"Kreaturen in Dodongos Höhle \n"
"vertreibst!"BOX_BREAK
UNSKIPPABLE "Bestehst Du diese Prüfung, ist  \n"
"Dir der Dank meines Volkes gewiß.\n"
"Der Lohn für Deine Mühe soll der\n"
"Heilige Stein sein!"BOX_BREAK
UNSKIPPABLE "Bevor Du gehst, nimm dies\n"
"an Dich. Es ist ein Gastgeschenk\n"
"der Goronen, ein Zeichen der\n"
"Freundschaft."BOX_BREAK
UNSKIPPABLE "Trägst Du es, kannst sogar Du \n"
"schwere Dinge wie " COLOR("\x41") "Donnerblumen" COLOR("\x40") " \n"
"mit" COLOR("\x41") " " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "heben."
);

DECLARE_MESSAGE_GER(0x301D,
"Vernichte die Kreaturen in \n"
COLOR("\x41") "Dodongos Höhle " COLOR("\x40") "und beweise, daß \n"
"Du meiner Freundschaft würdig \n"
"bist! Denk an den Heiligen Stein!"
);

DECLARE_MESSAGE_GER(0x301E,
"Hey, Bruder! Komm mal wieder\n"
"vorbei und spiele ein paar Lieder!"
);

DECLARE_MESSAGE_GER(0x301F,
"Egal, wie oft ich dieses Lied höre, \n"
"es wird nie langweilig!"
);

DECLARE_MESSAGE_GER(0x3020,
"Hmmm, ganz gut... Aber nicht\n"
"genau das, was ich hören wollte..."BOX_BREAK"Ich mag Melodien... Wie soll ich \n"
"sagen... Von außerhalb... etwas\n"
"Natürliches... Grünes... aus dem \n"
"Wald..."BOX_BREAK"Das ist meine Art von Musik!"
);

DECLARE_MESSAGE_GER(0x3021,
"Dank Deiner Hilfe können wir \n"
"wieder in die Höhle. Du bist ein \n"
"wahrer Held!"
);

DECLARE_MESSAGE_GER(0x3022,
"Ich verrate Dir etwas! Willst Du\n"
"einen brennenden Stab löschen, \n"
"so drücke " COLOR("\x42") "[A]" COLOR("\x40") ", bevor er ganz\n"
"abgebrannt ist!"BOX_BREAK"Apropos... Ich habe hier irgendwo\n"
"einen Stab versteckt..."
);

DECLARE_MESSAGE_GER(0x3023,
UNSKIPPABLE "Ich bin es, " COLOR("\x41") "Darunia" COLOR("\x40") "!\n"
"Du hast Deine Prüfung bestanden!"BOX_BREAK
UNSKIPPABLE "Dank Deiner Hilfe können wir\n"
"nun wieder die schmackhaften\n"
"Steine aus der Höhle verspeisen!"
);

DECLARE_MESSAGE_GER(0x3024,
UNSKIPPABLE "Ich habe solchen Hunger, daß \n"
"ich nur ans Essen denken kann!"BOX_BREAK
UNSKIPPABLE "Heiliger Stein?\n"
"Du meinst sicher den " COLOR("\x41") "Roten Stein" COLOR("\x40") ", \n"
"der einst in unserer Stadt\n"
"erstrahlte?"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Darunia" COLOR("\x40") " nahm ihn an sich...\n"
"Danach schloß er sich in seinem\n"
"Raum ein und hat ihn seitdem\n"
"nicht mehr verlassen."BOX_BREAK
UNSKIPPABLE "Seit dieser Zeit ist es dunkel\n"
"in Goronia. Die Dunkelheit macht\n"
"uns depressiv. Alles erscheint so \n"
"sinnlos..." TEXTID("\x30\x25")
);

DECLARE_MESSAGE_GER(0x3025,
"Ich wünschte, jemand würde die \n"
"Fackeln bei der Goronenstatue \n"
"entzünden. Ich glaube, in Darunias\n"
"Kammer findet man " COLOR("\x41") "Feuer" COLOR("\x40") "..."
);

DECLARE_MESSAGE_GER(0x3026,
"Ah, ich verstehe...\n"
"Wir hätten die Bombe von der \n"
"Klippe aus werfen sollen..."
);

DECLARE_MESSAGE_GER(0x3027,
"Du hast alle Dodongos vernichtet! \n"
"Das ist unglaublich! Laß mich Dich \n"
"Bruder nennen!"
);

DECLARE_MESSAGE_GER(0x3028,
"Dank Deiner Bemühungen ist alles \n"
"wieder wie früher! Nun kann ich \n"
"Dir auch Bomben anbieten!" EVENT
);

DECLARE_MESSAGE_GER(0x3029,
"Sollte ich jemals ein Kind haben, \n"
"werde ich es nach Dir benennen!"
);

DECLARE_MESSAGE_GER(0x302A,
"Wenn Du schon hier bist, solltest\n"
"Du auch " COLOR("\x41") "Goronia" COLOR("\x40") " besuchen!"BOX_BREAK"Die Stadt liegt weiter oben auf\n"
"dem Berg. Es ist gar nicht mehr\n"
"weit bis dorthin."
);

DECLARE_MESSAGE_GER(0x302B,
"Mit " COLOR("\x42") "[A]" COLOR("\x40") " nimmst Du die \n"
"Donnerblumen auf. Drückst Du \n"
"erneut " COLOR("\x42") "[A]" COLOR("\x40") ", legst Du sie wieder ab."
);

DECLARE_MESSAGE_GER(0x302C,
"Die Fackeln sind ein Symbol des\n"
"Lebens in Goronia. Würden sie\n"
"alle brennen, wäre es hier\n"
"sicher wieder schöner!"
);

DECLARE_MESSAGE_GER(0x302D,
"Du hast vor, die Dodongos zu \n"
"vertreiben? Das ist Sache der \n"
"Goronen und keine Angelegenheit\n"
"für kleine Kinder!"BOX_BREAK"Andererseits wären wir froh, wenn \n"
"unser Problem gelöst würde. Dann \n"
"könnten wir endlich wieder Bomben \n"
"produzieren..."BOX_BREAK"Dennoch solltest Du Dich vor den\n"
"Dodongos hüten! Diese Kreaturen \n"
"fressen alles, was sich ihnen in \n"
"den Weg stellt!"BOX_BREAK"Wenn Du nicht aufpaßt, endest Du \n"
"im Magen eines Dodongo!" EVENT
);

DECLARE_MESSAGE_GER(0x302E,
"Ich hatte es Dir doch schon \n"
"gesagt! Bomben sind ausverkauft!\n"
"Wenn ich nur nicht solchen Hunger\n"
"hätte!" PERSISTENT
);

DECLARE_MESSAGE_GER(0x302F,
"Wie fühlt sich Darunia?\n"
"Oh, ich verstehe..."BOX_BREAK"Übrigens... Kennst Du die\n"
"Melodie, die durch diesen Tunnel\n"
"in unser Reich dringt? Wir mögen\n"
"sie sehr!"
);

DECLARE_MESSAGE_GER(0x3030,
"Mich wirst Du nicht kriegen! \n"
"Sicher bist Du einer von \n"
"Ganondorfs Schergen!"
);

DECLARE_MESSAGE_GER(0x3031,
UNSKIPPABLE "Wie konnte Dir das gelingen?\n"
"Du bist einer von Ganondorfs \n"
"Leuten..."BOX_BREAK
UNSKIPPABLE "Höre meinen Namen und neige \n"
"Dein Haupt in Ehrfurcht!"BOX_BREAK
UNSKIPPABLE "Ich bin " COLOR("\x41")  NAME  COLOR("\x40") "! \n"
"Der größte Krieger der Goronen!"
);

DECLARE_MESSAGE_GER(0x3032,
UNSKIPPABLE "Was?"BOX_BREAK
UNSKIPPABLE "Auch Dein Name ist\n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Dann mußt Du der legendäre\n"
"Dodongo-Jäger sein, der mächtige \n"
NAME "!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Darunia " COLOR("\x40") "ist mein Vater...\n"
"Kennst Du ihn?"BOX_BREAK
UNSKIPPABLE "Er" COLOR("\x41") " " COLOR("\x40") "benannte mich nach Dir," COLOR("\x41") "\n"
COLOR("\x40") "weil Du tapfer bist und viel für\n"
"uns getan hast!"BOX_BREAK
UNSKIPPABLE "Mir gefällt der Name!\n"
"Ich könnte mir keinen besseren \n"
"vorstellen!"BOX_BREAK
UNSKIPPABLE  NAME ", für uns bist Du \n"
"ein echter Volksheld! \n"
"Ich bin stolz, Dich kennengelernt \n"
"zu haben!"BOX_BREAK
UNSKIPPABLE "Gib mir bitte ein Autogramm!\n"
"Schreib:\n"
SHIFT("\x05") "\"Für meinen Freund \n"
SHIFT("\x05")  NAME ", den Goronen!\""BOX_BREAK
UNSKIPPABLE "Oh..."BOX_BREAK
UNSKIPPABLE "Es mag ein schlechter Zeitpunkt \n"
"sein, Dich erneut um Hilfe zu \n"
"bitten, doch hör mich an..."BOX_BREAK
UNSKIPPABLE "Mein Vater Darunia begab sich \n"
"zum " COLOR("\x41") "Feuertempel" COLOR("\x40") "! Dort lebt ein \n"
"Höllendrache!"BOX_BREAK
UNSKIPPABLE "Wenn wir uns nicht beeilen,\n"
"ist mein Vater verloren!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_GER(0x3033,
"Heul... Schnüff... Daddy..." EVENT
);

DECLARE_MESSAGE_GER(0x3034,
"Du solltest ihn beruhigen, wenn\n"
"Du kannst...\n"
"Am besten Du fragst ihn einfach \n"
"etwas!"BOX_BREAK"Worüber willst Du ihn befragen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Über den Drachen\n"
"Über die Goronen" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x3035,
UNSKIPPABLE "Vor langer Zeit lebte eine\n"
"diabolische Kreatur namens \n"
COLOR("\x41") "Volvagia " COLOR("\x40") "in den Höhlen dieses \n"
"Berges."BOX_BREAK
UNSKIPPABLE "Diese Drachenkreatur wütete\n"
"auf grausamste Art. Sie fraß \n"
"Goronen bei lebendigem Leib..."BOX_BREAK
UNSKIPPABLE "Mit Hilfe eines legendären\n"
"Hammers gelang es schließlich,\n"
"Volvagia zu vernichten!"BOX_BREAK
UNSKIPPABLE "So erzählt die Legende aus \n"
"vergangenen Zeiten.\n"
"Ich weiß, daß sie wahr ist!"BOX_BREAK
UNSKIPPABLE "Einer der Vorfahren meines\n"
"Vaters war nämlich derjenige,\n"
"der die Kreatur vernichtete!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_GER(0x3036,
UNSKIPPABLE "Vater war gerade nicht hier, \n"
"als alle von Ganondorf in den" COLOR("\x41") " \n"
"Feuertempel " COLOR("\x40") "verschleppt wurden."BOX_BREAK
UNSKIPPABLE "Es war schrecklich!\n"
"Ganondorfs Leute fielen in unsere\n"
"Stadt ein und nahmen alle \n"
"gefangen..."BOX_BREAK
UNSKIPPABLE "Jetzt sollen sie " COLOR("\x41") "Volvagia " COLOR("\x40") "geopfert \n"
"werden!"BOX_BREAK
UNSKIPPABLE "Vater sagte, daß Ganondorf die\n"
"Drachenkreatur wiedererweckt hat."BOX_BREAK
UNSKIPPABLE "Als Warnung an alle, die sich\n"
"ihm widersetzen, will der Tyrann\n"
"die Goronen dem Drachen Volvagia \n"
"zum Fraß vorwerfen!"BOX_BREAK
UNSKIPPABLE "Also brach Vater ganz allein\n"
"zum Tempel auf, um sie \n"
"zu befreien..."BOX_BREAK
UNSKIPPABLE "Bitte hilf ihm, " NAME "!\n"
"Möge diese " COLOR("\x41") "Goronen-Rüstung " COLOR("\x40") "zum\n"
"Gelingen Deiner Mission beitragen!"
);

DECLARE_MESSAGE_GER(0x3037,
UNSKIPPABLE "Vater sagte mir, ich solle nicht\n"
"zulassen, daß ihm irgendjemand \n"
"folgt..."BOX_BREAK
UNSKIPPABLE "Doch bei Dir, " NAME ", ist\n"
"das etwas anderes! Ich bin mir \n"
"sicher, daß nur Du uns helfen \n"
"kannst!"BOX_BREAK
UNSKIPPABLE "Sicher hilft Dir auch der \n"
"Ladenbesitzer weiter. Er hat sich\n"
"irgendwo versteckt..."BOX_BREAK
UNSKIPPABLE "Laß mich Dir nun den geheimen\n"
"Pfad zum Feuertempel zeigen!" TEXTID("\x30\x38")
);

DECLARE_MESSAGE_GER(0x3038,
"Versuche, die " COLOR("\x41") "Statue " COLOR("\x40") "in Vaters \n"
"Raum zu verschieben!"
);

DECLARE_MESSAGE_GER(0x3039,
UNSKIPPABLE "Wer ist da? Bist Du es,\n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Tatsächlich! " NAME "!"BOX_BREAK
UNSKIPPABLE "Du bist erwachsen geworden, ein\n"
"richtiger Mann!"BOX_BREAK
UNSKIPPABLE "Gerne würde ich mich länger mit\n"
"Dir unterhalten, doch die Zeit \n"
"drängt..."BOX_BREAK
UNSKIPPABLE "Erneut hat Ganondorf Chaos\n"
"gesät! Er hat die infernalische\n"
"Drachenkreatur Volvagia aus dem \n"
"Reich der Toten zurückgeholt!"BOX_BREAK
UNSKIPPABLE "Zudem will er die gefangenen\n"
"Goronen der Bestie zum Fraß\n"
"vorwerfen. Als Warnung an alle,\n"
"die ihm trotzen..."BOX_BREAK
UNSKIPPABLE "Wenn das feuerspeiende Ungetüm\n"
"aus den Höhlen des Tempels \n"
"entkommt, wird Hyrule in einem \n"
"flammenden Inferno versinken!"BOX_BREAK
UNSKIPPABLE "Ich werde vorgehen und \n"
"versuchen, die Kreatur zu \n"
"bezwingen..."BOX_BREAK
UNSKIPPABLE "Das wird nicht leicht, denn\n"
"mir fehlt die Waffe, die in der\n"
"alten Sage Erwähnung findet.\n"
"Doch mir bleibt keine Wahl..."BOX_BREAK
UNSKIPPABLE  NAME "... Als Dein Bruder \n"
"bitte ich Dich um diesen Gefallen..."BOX_BREAK
UNSKIPPABLE "Während ich die Bestie fordere,\n"
"sollst Du meine Leute retten!"BOX_BREAK
UNSKIPPABLE "Die Zellen, in die man sie \n"
"gesperrt hat, sind über den\n"
"gesamten Tempel verteilt!\n"
"Hilf mir, " NAME "!"
);

DECLARE_MESSAGE_GER(0x303A,
"Ich bin gerettet!\n"
"Hab Dank!\n"
"Bitte, nimm dies!"
);

DECLARE_MESSAGE_GER(0x303B,
UNSKIPPABLE  NAME "... Schnell... \n"
"Ich kann die Last nicht\n"
"länger tragen..."BOX_BREAK
UNSKIPPABLE "Raus hier!"
);

DECLARE_MESSAGE_GER(0x303C,
UNSKIPPABLE "Dank sei Dir, mein Bruder!\n"
"Ich weiß das, was Du getan hast,\n"
"sehr zu schätzen. Hab Dank, auch\n"
"im Namen meines Volkes!"BOX_BREAK
UNSKIPPABLE "Du hast Dich als würdiger Streiter\n"
"erwiesen! Ich habe nie an Dir \n"
"gezweifelt..."
);

DECLARE_MESSAGE_GER(0x303D,
SHIFT("\x47") "Vergiß nie...\n"
SHIFT("\x0C") "Du und ich, wir sind nun Brüder!" FADE("\x50")
);

DECLARE_MESSAGE_GER(0x303E,
UNSKIPPABLE "Wahre Freundschaft wächst, je\n"
"länger sie besteht. \n"
"Sie wächst im Herzen und wird \n"
"mit jeder Minute stärker..."BOX_BREAK
UNSKIPPABLE "Die leidenschaftliche Blüte \n"
"der Freundschaft, die jetzt schon\n"
"in Dir reift, wird Dir weisen den\n"
"richtigen Weg..."BOX_BREAK
UNSKIPPABLE "Diese Melodie sei der Kraft \n"
"der Freundschaft gewidmet!\n"
"Lausche nun dem " COLOR("\x41") "Bolero des \n"
"Feuers" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x303F,
UNSKIPPABLE  NAME "... Bis bald..."
);

DECLARE_MESSAGE_GER(0x3040,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME ", in dieser Höhle \n"
"herrscht extreme Hitze! \n"
"Lange können wir hier nicht \n"
"bleiben!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x3041,
UNSKIPPABLE "Bruder " NAME "!\n"
"Daddy ist zurück!\n"
"Und auch die anderen!"BOX_BREAK
UNSKIPPABLE "Vater und Du, ihr habt den\n"
"Drachen gemeinsam bezwungen!" TEXTID("\x30\x42")
);

DECLARE_MESSAGE_GER(0x3042,
"Wenn ich groß bin, möchte\n"
"ich genauso werden wie Du, \n"
NAME "!"
);

DECLARE_MESSAGE_GER(0x3043,
"Danke, " NAME "!"
);

DECLARE_MESSAGE_GER(0x3044,
"Dank sei Dir, denn Du hast uns \n"
"gerettet!" PERSISTENT
);

DECLARE_MESSAGE_GER(0x3045,
UNSKIPPABLE "Ich, Darunia, offenbare mich\n"
"Dir als einer der Sieben Weisen... \n"
"Der " COLOR("\x41") "Weise des Feuers" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Hättest Du das erwartet?\n"
"Ich denke das ist es, was\n"
"man Schicksal nennt..."BOX_BREAK
UNSKIPPABLE "Wenn ich Dir helfen kann, das\n"
"Böse in seine Schranken zu \n"
"weisen, laß es mich wissen."
);

DECLARE_MESSAGE_GER(0x3046,
UNSKIPPABLE "Nimm dies an Dich, Bruder!\n"
"Dieses " COLOR("\x41") "Amulett " COLOR("\x40") "enthält die Kräfte\n"
"der Geister des Feuers... und der\n"
"Freundschaft."
);

DECLARE_MESSAGE_GER(0x3047,
"Alle sind verschwunden!\n"
"Dennoch, der Shop bleibt \n"
"geöffnet!" PERSISTENT
);

DECLARE_MESSAGE_GER(0x3048,
UNSKIPPABLE "Welch aufregendes Abenteuer...\n"
"Es liefert Stoff für eine \n"
"Legende..."BOX_BREAK
UNSKIPPABLE "Noch immer kann ich nicht \n"
"glauben, daß die Dodongos, die wir \n"
"für ausgestorben hielten, in so\n"
"großer Anzahl zurückkehrten..."BOX_BREAK
UNSKIPPABLE "Und der Fels, der den Eingang \n"
"der Höhle versperrte..."BOX_BREAK
UNSKIPPABLE "Für all dies war " COLOR("\x41") "Ganondorf" COLOR("\x40") "," COLOR("\x41") "\n"
COLOR("\x40") "der Gerudokönig, verantwortlich."BOX_BREAK
UNSKIPPABLE "Er sprach: \n"
"\"" COLOR("\x44") "Gebt mir den Heiligen Stein und\n"
"ich werde eure Höhle wieder \n"
"öffnen!" COLOR("\x40") "\""BOX_BREAK
UNSKIPPABLE "Du hast Dein Leben für uns \n"
"riskiert..."
);

DECLARE_MESSAGE_GER(0x3049,
SHIFT("\x4B") "Paßt genau..."
);

DECLARE_MESSAGE_GER(0x304A,
"Ich arbeite gerade an etwas sehr \n"
"Interessantem! Doch ich denke, es\n"
"wird noch eine Weile dauern..." TEXTID("\x30\x4B")
);

DECLARE_MESSAGE_GER(0x304B,
"Ich schätze, in fünf oder sechs\n"
"Jahren dürfte es fertig sein!"
);

DECLARE_MESSAGE_GER(0x304C,
"Ich habe eine Waffe fertiggestellt.\n"
"Wie wär's damit?" TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_GER(0x304D,
"Das Schwert ist doch kunstvoll\n"
"geschmiedet, nicht wahr?"
);

DECLARE_MESSAGE_GER(0x304E,
"Oh, es scheint da ein Problem mit \n"
"der Stabilität zu geben.\n"
"Aber warte mal..." TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_GER(0x304F,
"Möchtest Du vielleicht DIESE\n"
"Waffe für 200 Rubine kaufen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x3050,
"Nun gut, komm später wieder."
);

DECLARE_MESSAGE_GER(0x3051,
"Bitte... Bitte friß mich nicht!\n"
"Wenn Du mich frißt, wird Dir \n"
"ganz schlecht werden!"BOX_BREAK"Du würdest es bereuen!"
);

DECLARE_MESSAGE_GER(0x3052,
"Ah, sicher hat Darunia Dich um\n"
"Hilfe gebeten! Du hast etwas bei\n"
"mir gut!"BOX_BREAK"Hilf Darunia!"
);

DECLARE_MESSAGE_GER(0x3053,
"Mein Bruder...\n"
"Er hat einen neuen Laden...\n"
"Es ist Medigorons \n"
"Waffengeschäft..."BOX_BREAK"Er ist gut... \n"
"Aber ich schmiede bessere\n"
"Klingen."BOX_BREAK"Die hylianischen Zimmerleute\n"
"wissen meine Arbeit zu schätzen.\n"
"Glaub mir..."
);

DECLARE_MESSAGE_GER(0x3054,
UNSKIPPABLE "Zweifelsohne eine Waffe aus \n"
"meiner Schmiede!\n"
"Ich würde sie reparieren..."BOX_BREAK
UNSKIPPABLE "Doch beim letzten Erdbeben ist mir \n"
"Lavastaub in die Augen geraten.\n"
"Seitdem sehe ich schlecht!"BOX_BREAK
UNSKIPPABLE "In Zoras Reich gibt es wundersame\n"
"Augentropfen. Wende Dich an \n"
COLOR("\x41") "König Zora" COLOR("\x40") "..." TEXTID("\x30\x55")
);

DECLARE_MESSAGE_GER(0x3055,
"Bitte, bringe mir die Augentropfen!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x3056,
"Ich bitte Dich! Mir geht es gar \n"
"nicht gut... Meine Augen brennen!\n"
"Bitte..."
);

DECLARE_MESSAGE_GER(0x3057,
"Oh nein! Alle sind verschwunden!\n"
"Ich blieb als einziger zurück!" EVENT
);

DECLARE_MESSAGE_GER(0x3058,
"Ich warte hier auf Dich,\n"
"mit tränenden Augen...\n"
"Bitte grüße König Zora von mir!"
);

DECLARE_MESSAGE_GER(0x3059,
UNSKIPPABLE "Du... Du bringst die Augentropfen!\n"
"Du bist meine Rettung! Ich werde\n"
"sie gleich ausprobieren!" EVENT
);

DECLARE_MESSAGE_GER(0x305A,
UNSKIPPABLE  SHIFT("\x59")  COLOR("\x41") "Wow!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE "Unglaublich! Grandios!\n"
"Ich kann wieder sehen!"BOX_BREAK
UNSKIPPABLE "Endlich kann ich wieder\n"
"schmieden! Hier, nimm dies und \n"
"schau in ein paar Tagen wieder \n"
"vorbei!" TEXTID("\x30\x5C")
);

DECLARE_MESSAGE_GER(0x305B,
"Sie sind alle wieder da!\n"
"Es ist wieder wie früher!" EVENT
);

DECLARE_MESSAGE_GER(0x305C,
"Noch einige Tage...\n"
"Gut Ding will Weile haben...\n"
"Gedulde Dich noch..."
);

DECLARE_MESSAGE_GER(0x305D,
"Nein, noch immer nicht...\n"
"Es ist noch nicht fertig...\n"
"Du bist sehr ungeduldig..."
);

DECLARE_MESSAGE_GER(0x305E,
"Hier ist es... Endlich!"
);

DECLARE_MESSAGE_GER(0x305F,
QUICKTEXT_ENABLE  COLOR("\x44") "Du hast Deinen " COLOR("\x40") "Schild " COLOR("\x44") "verloren!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x3060,
QUICKTEXT_ENABLE  COLOR("\x44") "Du hast Deine " COLOR("\x40") "Rüstung " COLOR("\x44") "verloren!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x3061,
QUICKTEXT_ENABLE  COLOR("\x44") "Du hast Deinen " COLOR("\x40") "Schild " COLOR("\x44") "verloren!" COLOR("\x40") "\n"
COLOR("\x44") "Du hast Deine " COLOR("\x40") "Rüstung " COLOR("\x44") "verloren!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x3062,
UNSKIPPABLE "Du hast Dich bisher gut \n"
"geschlagen, " NAME ". \n"
"Dies ist der Gipfel des \n"
"Todesberges!"BOX_BREAK
UNSKIPPABLE "Man sagt, die Wolken, die den \n"
"Gipfel umgeben, spiegeln den\n"
"Zustand des Berges wider. Sind\n"
"sie weiß, herrscht Friede."BOX_BREAK
UNSKIPPABLE "Dein Aufstieg zum Gipfel hat\n"
"mir bewiesen, wie tapfer Du bist!\n"
"Diese Tapferkeit soll nun erneut\n"
"geprüft werden..."BOX_BREAK
UNSKIPPABLE "Eine mächtige " COLOR("\x41") "Fee" COLOR("\x40") " lebt \n"
"hier oben. Sie ist die\n"
"Mutter aller Feen! Suche sie auf,\n"
"und sie wird Dich belohnen..."BOX_BREAK
UNSKIPPABLE "Ich werde hier auf Dich warten.\n"
"Willst Du zurück zum Fuß des\n"
"Berges, so werde ich Dir helfen.\n"
"Geh nun!"
);

DECLARE_MESSAGE_GER(0x3063,
"Du siehst erwachsener aus,\n"
"seit Du die Fee besucht hast..."BOX_BREAK"Doch noch wirkst Du nicht wie \n"
"der prophezeite Retter Hyrules!\n"
"Hierfür fehlt Dir noch einiges!"BOX_BREAK"Wenn Du " COLOR("\x41") "zum Fuß des Berges" COLOR("\x40") " \n"
"zurück möchtest, kann ich Dich \n"
"mitnehmen. Komm her und halte \n"
"Dich an meinen Krallen fest!"
);

DECLARE_MESSAGE_GER(0x3064,
"Man sagt, daß auf dem Gipfel des \n"
"Todesberges eine " COLOR("\x41") "wunderschöne\n"
"Fee" COLOR("\x40") " lebt!"BOX_BREAK"Wirst Du sie besuchen?"
);

DECLARE_MESSAGE_GER(0x3065,
"Ich hörte, daß auf dem Gipfel des\n"
"Todesberges eine " COLOR("\x41") "Fee" COLOR("\x40") " lebt."BOX_BREAK"Wenn Du dorthin möchtest, \n"
"solltest Du Dich mit einem\n"
"großen " COLOR("\x44") "Schild" COLOR("\x40") " ausrüsten..."
);

DECLARE_MESSAGE_GER(0x3066,
QUICKTEXT_ENABLE  COLOR("\x44") "Wow! Du hast ein" COLOR("\x40") " Ei \n"
COLOR("\x44") "ausgebrütet!\n"
"Ein " COLOR("\x40") "Küken " COLOR("\x44") "ist geschlüpft!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_GER(0x3067,
"Besitzt Du den Roten Stein? Laß \n"
"mich ein Stückchen probieren!"BOX_BREAK"Nein? Buh!"
);

DECLARE_MESSAGE_GER(0x3068,
UNSKIPPABLE "Bruder! Du solltest stets daran\n"
"denken, Deine Kräfte zu erhöhen!"BOX_BREAK
UNSKIPPABLE "Die " COLOR("\x41") "Fee" COLOR("\x40") " auf dem Gipfel des\n"
"Todesberges hilft Dir dabei!"BOX_BREAK
UNSKIPPABLE "Freunde, laßt uns unseren Bruder\n"
"verabschieden!"
);

DECLARE_MESSAGE_GER(0x3069,
UNSKIPPABLE "Da Du mich befreit hast, verrate\n"
"ich Dir ein Geheimnis!"BOX_BREAK
UNSKIPPABLE "In diesem Tempel gibt es " COLOR("\x41") "Türen" COLOR("\x40") ",\n"
COLOR("\x41") "die Dich" COLOR("\x40") " beim Versuch, sie zu \n"
"öffnen, " COLOR("\x41") "erschlagen" COLOR("\x40") "! Sei gewarnt!"BOX_BREAK
UNSKIPPABLE "Besitzt Du das Relikt der Goronen,\n"
"kannst Du sie zerschmettern!"
);

DECLARE_MESSAGE_GER(0x306A,
UNSKIPPABLE "Du hast mich gerettet! Dafür\n"
"offenbare ich Dir ein Geheimnis!"BOX_BREAK
UNSKIPPABLE "Hast Du Feuer gefangen, so \n"
"schwinge Dein Schwert oder rolle\n"
"Dich über den Boden. So löschst\n"
"Du es schneller..."
);

DECLARE_MESSAGE_GER(0x306B,
UNSKIPPABLE "Hab Dank! Du bist mein Retter!\n"
"Höre meinen Ratschlag..."BOX_BREAK
UNSKIPPABLE "In diesem Tempel wirst Du auf\n"
"Kreaturen treffen, die Dich \n"
"attackieren, während sie tanzen.\n"
"Gegen Pfeile sind sie immun..."BOX_BREAK
UNSKIPPABLE "Finde das Relikt der Goronen,\n"
"und Du wirst auch diese Gegner\n"
"bezwingen!"
);

DECLARE_MESSAGE_GER(0x306C,
UNSKIPPABLE "Laß mich Dir als Dank\n"
"dafür etwas verraten!"BOX_BREAK
UNSKIPPABLE "Einige Schalter dieses Tempels\n"
"lassen sich nur mit Gewalt \n"
"aktivieren. Das Relikt der Goronen\n"
"kann Dir dabei behilflich sein!"
);

DECLARE_MESSAGE_GER(0x306D,
UNSKIPPABLE "Als Dank für meine Befreiung \n"
"verrate ich Dir etwas!"BOX_BREAK
UNSKIPPABLE "Findest Du auf der Karte einen\n"
"Ort, den Du nicht erreichen \n"
"kannst, versuche es mit der \n"
"Okarina!"
);

DECLARE_MESSAGE_GER(0x306E,
UNSKIPPABLE "Als Dank für meine Rettung\n"
"verrate ich Dir ein Geheimnis!"BOX_BREAK
UNSKIPPABLE "Um zu der Tür zu gelangen, hinter\n"
"der Darunia verschwunden ist,\n"
"mußt Du den Pfeiler, der aus der \n"
"Decke ragt, nach unten befördern!"BOX_BREAK
UNSKIPPABLE "Finde einen Weg, der Dich in\n"
"die oberen Stockwerke bringt!"
);

DECLARE_MESSAGE_GER(0x306F,
UNSKIPPABLE "Du hast mich gerettet! Dafür\n"
"vertraue ich Dir etwas an!"BOX_BREAK
UNSKIPPABLE "In der Eingangshalle des Tempels\n"
"befindet sich eine Statue.\n"
"Sie verbirgt eine Tür..."BOX_BREAK
UNSKIPPABLE "Mit dem Relikt der Goronen\n"
"kannst Du auch dieses Problem\n"
"lösen!"
);

DECLARE_MESSAGE_GER(0x3070,
UNSKIPPABLE "Danke! Laß mich Dir ein Geheimnis\n"
"anvertrauen..."BOX_BREAK
UNSKIPPABLE "Wände, die Du mit dem Relikt\n"
"der Goronen zerstören kannst, \n"
"klingen hohl, wenn Du mit dem\n"
"Schwert dagegen schlägst."
);

DECLARE_MESSAGE_GER(0x3071,
"Die Qualen haben ein Ende!\n"
"Ich bin frei!" EVENT
);

DECLARE_MESSAGE_GER(0x3072,
"3072"
);

DECLARE_MESSAGE_GER(0x3073,
"3073"
);

DECLARE_MESSAGE_GER(0x4000,
UNSKIPPABLE "Diese Augen schmecken göttlich!\n"
"Endlich kann ich mal wieder\n"
"gebratene Augäpfel in Sahnesoße\n"
"essen! Mmmmh...!"BOX_BREAK
UNSKIPPABLE "Großartig! Richte König Zora\n"
"meinen Dank aus!\n"
"Bitte? Was willst Du?" EVENT
);

DECLARE_MESSAGE_GER(0x4001,
UNSKIPPABLE "Du willst, daß ich " COLOR("\x41") "Augentropfen" COLOR("\x40") " \n"
COLOR("\x41") "für Biggoron" COLOR("\x40") " herstelle? Oh, wie\n"
"außerordentlich schade! Das\n"
"hättest Du gleich sagen sollen!" EVENT
);

DECLARE_MESSAGE_GER(0x4002,
UNSKIPPABLE  NAME "!\n"
"Hier entlang!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Ich frage mich, was " COLOR("\x41") "Salia\n"
COLOR("\x40") "gerade macht. Warum gehst Du\n"
"nicht mal wieder zu ihr?"
);

DECLARE_MESSAGE_GER(0x4003,
UNSKIPPABLE "Was machst Du denn? Du hast\n"
"ja ganz schön lange gebraucht..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Vielleicht solltest Du ab und zu\n"
"auf die " COLOR("\x41") "Karte " COLOR("\x40") "schauen."BOX_BREAK
UNSKIPPABLE  NAME ", das hier ist ein \n"
"ruhiger See mit kristallklarem,\n"
"kühlem Wasser."BOX_BREAK
UNSKIPPABLE "Auf seinem Grund befindet sich\n"
"der Zugang zum " COLOR("\x43") "Wassertempel" COLOR("\x40") ".\n"
"Die " COLOR("\x43") "Zoras " COLOR("\x40") "wachen über ihn."BOX_BREAK
UNSKIPPABLE "Die Zoras sind Angehörige von\n"
"Zoras Reich im Nordosten Hyrules.\n"
"Sie sind stolze Amphibienwesen und\n"
"seit Urzeiten der Königsfamilie treu."BOX_BREAK
UNSKIPPABLE "Ich hörte, nur einem Angehörigen\n"
"der königlichen Familie würde der\n"
"Zutritt zu Zoras Reich gestattet!"BOX_BREAK
UNSKIPPABLE "Ich bin übrigens gerade auf dem\n"
"Weg zum " COLOR("\x41") "Schloß" COLOR("\x40") ". Wenn Du mit mir\n"
"kommen möchtest, halte Dich an\n"
"meinen Krallen fest!"
);

DECLARE_MESSAGE_GER(0x4004,
"Ich bin übrigens gerade auf dem\n"
"Weg zum " COLOR("\x41") "Schloß" COLOR("\x40") ". Wenn Du mit mir\n"
"kommen möchtest, halte Dich an\n"
"meinen Krallen fest!"
);

DECLARE_MESSAGE_GER(0x4005,
UNSKIPPABLE  SHIFT("\x56") "Nanu?"BOX_BREAK
UNSKIPPABLE "Sieht aus, als wäre da etwas in\n"
"der Flasche drin...\n"
"Oh, es ist ein " COLOR("\x41") "Brief" COLOR("\x40") ":"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x4D")  COLOR("\x45") "Hilf mir!\n"
COLOR("\x40")  SHIFT("\x2C")  COLOR("\x45") "Ich bin im Bauch von\n"
COLOR("\x40")  SHIFT("\x20")  COLOR("\x46") "Lord Jabu-Jabu" COLOR("\x45") " gefangen!\n"
COLOR("\x40")  SHIFT("\x5A")  COLOR("\x46") "Ruto" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x34")  COLOR("\x45") "PS: Verrate bitte \n"
COLOR("\x40")  SHIFT("\x2D")  COLOR("\x45") "meinem Daddy nichts!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x4006,
UNSKIPPABLE "Wer seid Ihr?"BOX_BREAK
UNSKIPPABLE "Wir sind die " COLOR("\x43") "Zoras" COLOR("\x40") ", das stolze\n"
"hylianische Amphibiengeschlecht!"BOX_BREAK
UNSKIPPABLE "So... Ihr behauptet, ein\n"
"Angehöriger von Hyrules\n"
"königlicher Familie zu sein... \n"
"Nun denn, was wollt Ihr von uns?"
);

DECLARE_MESSAGE_GER(0x4007,
"Wir sind gewandte Taucher!\n"
"Wie steht es mit Euch?"BOX_BREAK"Wollt Ihr ebenso meisterlich\n"
"tauchen, macht mit bei unserem\n"
COLOR("\x41") "Tauchspiel" COLOR("\x40") " am höchsten Punkt des\n"
"Wasserfalls! Schon ausprobiert?"
);

DECLARE_MESSAGE_GER(0x4008,
UNSKIPPABLE "Aus Zoras Quelle entspringt\n"
"der Fluß.\n"
"Die Quelle ist auch die Residenz\n"
"von " COLOR("\x41") "Lord Jabu-Jabu" COLOR("\x40") "." TEXTID("\x40\x09")
);

DECLARE_MESSAGE_GER(0x4009,
"Lord Jabu-Jabu ist Schutzheiliger\n"
"der Zoras. " COLOR("\x41") "Prinzessin Ruto" COLOR("\x40") " sorgt\n"
"täglich für seine Nahrung."
);

DECLARE_MESSAGE_GER(0x400A,
"Wir Zoras dienen dem mächtigen \n"
COLOR("\x41") "König Zora" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x400B,
"Der mächtige König Zora befindet\n"
"sich derzeit im " COLOR("\x41") "Königsgemach" COLOR("\x40") "."
);

DECLARE_MESSAGE_GER(0x400C,
"Habt Ihr bereits Lord Jabu-Jabu\n"
"kennengelernt?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x400D,
"Nach den Legenden unseres Volkes\n"
"wird dem Gutes zuteil, der Lord\n"
"Jabu-Jabu einen " COLOR("\x41") "Fisch" COLOR("\x40") " kredenzt."
);

DECLARE_MESSAGE_GER(0x400E,
"Oh, wie bedauerlich."BOX_BREAK"Jeder, der unser Reich besucht,\n"
"sollte wenigstens einmal\n"
"um eine Audienz bei\n"
COLOR("\x41") "Lord Jabu-Jabu" COLOR("\x40") " ersuchen!"BOX_BREAK"Direkt hinter dem Thron des\n"
"mächtigen König Zora befindet sich\n"
"Zoras Quelle. Dort lebt\n"
"Lord Jabu-Jabu."BOX_BREAK"Fehlt Euch aber König Zoras\n"
"Erlaubnis, könnt Ihr die\n"
"Quelle nicht betreten."
);

DECLARE_MESSAGE_GER(0x400F,
UNSKIPPABLE "Wir haben " COLOR("\x41") "Prinzessin Ruto\n"
COLOR("\x40") "immer noch nicht gefunden, obwohl\n"
"wir sogar am " COLOR("\x43") "Hylia-See" COLOR("\x40") " suchten..."
);

DECLARE_MESSAGE_GER(0x4010,
"Wenn Ihr einen Hinweis auf den\n"
"Verbleib von " COLOR("\x41") "Prinzessin Ruto " COLOR("\x40") "habt,\n"
"teilt es bitte König Zora mit!"
);

DECLARE_MESSAGE_GER(0x4011,
"Alles Wasser in Hyrule entspringt\n"
COLOR("\x43") "Zoras Quelle" COLOR("\x40") "."BOX_BREAK"Das Wasser fließt durch den\n"
"Zora-Fluß und schließlich in den\n"
COLOR("\x43") "Hylia-See " COLOR("\x40") "im Süden Hyrules."
);

DECLARE_MESSAGE_GER(0x4012,
UNSKIPPABLE "Oh, ich fühle mich wie neugeboren!"BOX_BREAK
UNSKIPPABLE "Seid Ihr es, der mich vom Eis\n"
"befreit hat? Ich danke Euch!"BOX_BREAK
UNSKIPPABLE "Mir scheint, Ihr könnt Euch nicht\n"
"sehr lange unter Wasser aufhalten."BOX_BREAK
UNSKIPPABLE "Als Zeichen meines Dankes nehmt\n"
"bitte diese " COLOR("\x41") "Rüstung" COLOR("\x40") ". Mit ihr könnt\n"
"Ihr nun auch unter Wasser atmen!"
);

DECLARE_MESSAGE_GER(0x4013,
"Prinzessin Ruto hat sich zum\n"
"Hylia-See begeben...\n"
"Ich mache mir erneut große Sorgen\n"
"um sie..."
);

DECLARE_MESSAGE_GER(0x4014,
UNSKIPPABLE "Ooh...\n"
"Das ist eine... Nun... Hmmm...\n"
"Hmmm... " COLOR("\x41") "Augentropfen" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Nun, wir haben in jedem Fall die\n"
"erforderlichen Zutaten dafür."BOX_BREAK
UNSKIPPABLE "Bringt diese " COLOR("\x41") "Zutaten " COLOR("\x40") "zum\n"
"Labor am See. Dort werden die\n"
"Augentropfen für Euch zubereitet."BOX_BREAK
UNSKIPPABLE "Doch eilt, denn die Zutaten\n"
"müssen frisch sein..." TEXTID("\x40\x15")
);

DECLARE_MESSAGE_GER(0x4015,
"Werdet Ihr es schaffen,\n"
COLOR("\x41") "bevor sie verderben" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4016,
"Ihr glaubt, nicht schnell genug zu\n"
"sein? Nun, auf dem Rücken eines\n"
"flinken Pferdes könnt Ihr die\n"
"Wegstrecke schneller zurücklegen..."
);

DECLARE_MESSAGE_GER(0x4017,
UNSKIPPABLE "Sei gegrüßt!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  NAME ", es sieht aus, als\n"
"würdest Du Dich langsam an Dein\n"
"Abenteuerleben gewöhnen!"BOX_BREAK
UNSKIPPABLE "Ich glaube, Prinzessin Zelda wartet\n"
"darauf, daß Du sie wieder besuchst."BOX_BREAK
UNSKIPPABLE "Du besitzt doch schon den\n"
COLOR("\x41") "Goronen-Opal" COLOR("\x40") ", oder nicht?"
);

DECLARE_MESSAGE_GER(0x4018,
"Hallo! Ich bin gerade dabei,\n"
"das Wasser aus dem Hylia-See\n"
"mit einigen seltsamen Substanzen\n"
"zu vermischen."BOX_BREAK"Vielleicht hast Du ja schon mal mit\n"
"Asa, der alten Frau in Kakarikos\n"
"Hexenladen gesprochen... Sie hat\n"
"viel von mir gelernt..."
);

DECLARE_MESSAGE_GER(0x4019,
QUICKTEXT_ENABLE "Oh, wow!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ich habe keinen " COLOR("\x41") "Glotzfrosch" COLOR("\x40") " \n"
"mehr gesehen, seit Zoras Reich\n"
"vom Eis überzogen wurde!" EVENT
);

DECLARE_MESSAGE_GER(0x401A,
"Oh, meine liebste, teuerste\n"
COLOR("\x41") "Prinzessin Ruto" COLOR("\x40") "...\n"
"Wo mag sie sein?\n"
"Ich mache mir solche Sorgen..."
);

DECLARE_MESSAGE_GER(0x401B,
UNSKIPPABLE "Dieser Brief! \n"
"Er ist von " COLOR("\x41") "Prinzessin Ruto" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Hmmm... Laßt mich lesen...\n"
"Sie ist im Bauch von\n"
"Lord Jabu-Jabu?\n"
"Das ist doch nicht möglich!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Lord Jabu-Jabu " COLOR("\x40") "ist unser\n"
"Schutzheiliger und würde\n"
"Prinzessin Ruto niemals\n"
"verspeisen!"BOX_BREAK
UNSKIPPABLE "Doch seit dieser seltsame\n"
"Fremdling namens " COLOR("\x41") "Ganondorf" COLOR("\x40") " unser\n"
"Reich besucht hat, benimmt sich\n"
"Lord Jabu-Jabu etwas sonderbar..."BOX_BREAK
UNSKIPPABLE "Der Brief scheint echt zu sein. Ihr\n"
"dürft Prinzessin Ruto suchen, wenn\n"
"Ihr mögt. Passiert das Tor\n"
"hinter mir!"BOX_BREAK
UNSKIPPABLE "Ich behalte diesen Brief. Nehmt Ihr\n"
"die " COLOR("\x41") "Flasche" COLOR("\x40") ", in der er sich befand.\n"
"Ihr werdet sie bestimmt gut\n"
"nutzen können!" TEXTID("\x40\x1C")
);

DECLARE_MESSAGE_GER(0x401C,
"Bitte findet meine liebste\n"
COLOR("\x41") "Prinzessin Ruto" COLOR("\x40") "\n"
"so schnell Ihr könnt!"
);

DECLARE_MESSAGE_GER(0x401D,
QUICKTEXT_ENABLE  COLOR("\x44") "Du kannst unter Wasser nicht\n"
"atmen! Wird Dir die Luft knapp,\n"
"ziehe diese " COLOR("\x40") "Stiefel " COLOR("\x44") "aus!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x401E,
QUICKTEXT_ENABLE  SHIFT("\x42") "Ooooh neiiiin!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x401F,
UNSKIPPABLE "Oh, ich bin wieder frei...\n"
"Seid Ihr es, der mich vom Eis\n"
"befreit hat? Ich danke Euch!"BOX_BREAK
UNSKIPPABLE "Als Zeichen meines Dankes nehmt\n"
"bitte diese " COLOR("\x43") "Zora-Rüstung" COLOR("\x40") ". Damit\n"
"könnt Ihr... Wie bitte?!"BOX_BREAK
UNSKIPPABLE "Ihr habt sie bereits? Mir scheint,\n"
"Ihr seid auf alles vorbereitet!"BOX_BREAK
UNSKIPPABLE "Laßt mich Euch dennoch herzlich\n"
"danken... Wie wäre es mit einem \n"
"königlichen KUSS?! Ihr mögt das\n"
"nicht? Nun denn..."BOX_BREAK
UNSKIPPABLE "Wenn Ihr meinen Dank nicht wollt,\n"
"dann lauscht wenigstens meinen\n"
"Sorgen..." TEXTID("\x40\x13")
);

DECLARE_MESSAGE_GER(0x4020,
"Ich bin ein " COLOR("\x43") "Zora" COLOR("\x40") ". Habt Ihr nicht\n"
"irgendwo ein hübsches\n"
"Zora-Mädchen gesehen?"
);

DECLARE_MESSAGE_GER(0x4021,
"Ich bin ein " COLOR("\x43") "Zora" COLOR("\x40") ". Habt Ihr nicht\n"
"manch Seltsames in diesem See\n"
"gefunden?\n"
"Der Fluß trägt vieles hierher!"
);

DECLARE_MESSAGE_GER(0x4022,
UNSKIPPABLE "Du... " QUICKTEXT_ENABLE "Du bist spät dran!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Warum hat es so lange gedauert?" QUICKTEXT_DISABLE "\n"
"Du " QUICKTEXT_ENABLE "bist eine ziemlich lahme Ente!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Na gut... Ich hab mich ein bißchen\n"
"einsam gefühlt, das ist alles...\n"
"Aber nur ein bißchen!"
);

DECLARE_MESSAGE_GER(0x4023,
UNSKIPPABLE  QUICKTEXT_ENABLE "Ich hatte Angst..." QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Aber nur ein wenig!" QUICKTEXT_DISABLE "\n"
"Nur ein wenig!"
);

DECLARE_MESSAGE_GER(0x4024,
UNSKIPPABLE  NAME "!\n"
NAME "!"
);

DECLARE_MESSAGE_GER(0x4025,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hey, Du!" QUICKTEXT_DISABLE "\n"
"Du bist cool...\n"
"Ein bißchen mehr als andere... \n"
QUICKTEXT_ENABLE "Aber nur ein bißchen!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Naja, egal, Du hast mich gerettet.\n"
"Ich denke, ich kann Dir eine\n"
"Belohnung dafür geben."BOX_BREAK
UNSKIPPABLE "Was möchtest Du? Sag's mir...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ich möchte den Heiligen Stein!\n"
"Eigentlich nichts..." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4026,
UNSKIPPABLE "Du sprichst vom Heiligen Stein des\n"
"Wassers, dem " COLOR("\x43") "Zora-Saphir" COLOR("\x40") "?" TEXTID("\x40\x27")
);

DECLARE_MESSAGE_GER(0x4027,
UNSKIPPABLE "Ich habe ihn von meiner Mama\n"
"bekommen und darf ihn nur dem\n"
"geben, der mich heiratet. Es ist so\n"
"eine Art Verlobungsring der Zoras!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x54")  QUICKTEXT_ENABLE "Okay!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ich gebe Dir meinen wertvollsten\n"
"Schatz: Den Zora-Saphir!"
);

DECLARE_MESSAGE_GER(0x4028,
"Sag's bloß nicht meinem Daddy..."
);

DECLARE_MESSAGE_GER(0x4029,
UNSKIPPABLE "Hihihi... Sei nicht so schüchtern!"BOX_BREAK
UNSKIPPABLE "Ich weiß genau, was Du gerade\n"
"denkst..." TEXTID("\x40\x27")
);

DECLARE_MESSAGE_GER(0x402A,
"Ich wollte eigentlich einen Fisch\n"
"kaufen, aber er ist ein bißchen zu\n"
"teuer..."BOX_BREAK"Da muß ich wohl einen der\n"
"Fische fangen, die hier\n"
"herumschwimmen."
);

DECLARE_MESSAGE_GER(0x402B,
"Oh, " NAME "!\n"
"Ihr habt also\n"
"Prinzessin Ruto gerettet?\n"
"Ich bin sehr froh darüber!"
);

DECLARE_MESSAGE_GER(0x402C,
"Ich hoffe, mein wertvollster\n"
"Schatz wird Dir bei Deiner Mission\n"
"helfen. Das wäre super!"
);

DECLARE_MESSAGE_GER(0x402D,
"Oh, hallo " NAME "!\n"
"Prinzessin Ruto spricht in der\n"
"letzten Zeit nur noch über Euch!"
);

DECLARE_MESSAGE_GER(0x402E,
"Oh, Ihr seid es, " NAME "!\n"
"Dank Euch ist Lord Jabu-Jabu\n"
"endlich wieder der alte!"
);

DECLARE_MESSAGE_GER(0x402F,
UNSKIPPABLE "Wir Zoras achten den mächtigen\n"
"König Zora sehr. Er hat wahrlich\n"
"königliche Würde!"BOX_BREAK
UNSKIPPABLE "Der mächtige König Zora hat eine\n"
"Tochter, Prinzessin " COLOR("\x41") "Ruto" COLOR("\x40") ". Sie ist\n"
"sein einziges Kind."BOX_BREAK
UNSKIPPABLE "Sie ist ziemlich wild und\n"
"sorgt für ordentlichen Wirbel\n"
"hier in Zoras Reich." TEXTID("\x40\x0B")
);

DECLARE_MESSAGE_GER(0x4030,
UNSKIPPABLE "Bitte sehr."BOX_BREAK
UNSKIPPABLE "Diese Medizin ist " COLOR("\x41") "nicht lange\n"
"haltbar" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Eile so schnell wie möglich zu\n"
"den Goronen. Du bist ja noch jung\n"
"und hast flinke Beine!"
);

DECLARE_MESSAGE_GER(0x4031,
UNSKIPPABLE "Hallo! Es sieht aus, als wärest Du\n"
"erfahrener und kräftiger geworden,\n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Direkt vor Dir liegt " COLOR("\x43") "Zoras Reich" COLOR("\x40") ".\n"
"Die Zoras dienen der königlichen\n"
"Familie von Hyrule und bewachen\n"
"dieses Gewässer."BOX_BREAK
UNSKIPPABLE "Das Tor zu ihrem Reich öffnet\n"
"sich nur einem Abgesandten der \n"
"königlichen Familie."BOX_BREAK
UNSKIPPABLE "Spiele vor dem Portal ein\n"
COLOR("\x41") "Schlaflied" COLOR("\x40") " aus der Überlieferung\n"
"der königlichen Familie!"
);

DECLARE_MESSAGE_GER(0x4032,
"Wenn Du wieder mal vorbeikommst,\n"
"bring mir doch ein Souvenir mit!"
);

DECLARE_MESSAGE_GER(0x4033,
UNSKIPPABLE "Du hast Prinzessin Ruto gefunden!\n"
"Jetzt wird Dir König Zora sicher\n"
"den " COLOR("\x43") "Heiligen Stein des Wassers\n"
COLOR("\x40") "geben..."BOX_BREAK
UNSKIPPABLE "Oder etwa nicht?"
);

DECLARE_MESSAGE_GER(0x4034,
UNSKIPPABLE "Prinzessin Ruto hat Dir ihren\n"
"wertvollsten Schatz gegeben!\n"
"Du besitzt nun zwei Heilige Steine!\n"
"Jetzt fehlt nur noch einer!"
);

DECLARE_MESSAGE_GER(0x4035,
UNSKIPPABLE "Prinzessin Ruto hat Dir\n"
"ihren wertvollsten Schatz gegeben!\n"
"Nun besitzt Du die\n"
"drei Heiligen Steine!"BOX_BREAK
UNSKIPPABLE "Jetzt schnell zu Prinzessin Zelda!"
);

DECLARE_MESSAGE_GER(0x4036,
UNSKIPPABLE "Sei gegrüßt, " NAME "..."
);

DECLARE_MESSAGE_GER(0x4037,
UNSKIPPABLE "Dieses Eis wurde von einer bösen\n"
"Macht erschaffen... Das Ungeheuer\n"
"im " COLOR("\x43") "Wassertempel" COLOR("\x40") " ist der Urheber\n"
"dieses Unheils."BOX_BREAK
UNSKIPPABLE "Du mußt das Übel beseitigen,\n"
"sonst wird dieses Eis nie mehr\n"
"schmelzen..."BOX_BREAK
UNSKIPPABLE "Hast Du Mut, den Gefahren im\n"
"Tempel zu trotzen und die Zoras\n"
"zu retten, dann erlerne nun die\n"
"Melodie, die Dich zum Tempel führt."
);

DECLARE_MESSAGE_GER(0x4038,
UNSKIPPABLE "Zeit entschwindet, Menschen\n"
"scheiden...\n"
"In ewig wie des Wassers Fluß..."BOX_BREAK
UNSKIPPABLE "Zu königlichem Streben reift des\n"
"Kindes Mut... Junger Liebe Knospen\n"
"erblühen groß und stark... Des\n"
"Wassers Kraft allein dies schafft!"BOX_BREAK
UNSKIPPABLE "Lausche der " COLOR("\x43") "Serenade des Wassers\n"
COLOR("\x40") "und trage sie in Deinem Herzen..."
);

DECLARE_MESSAGE_GER(0x4039,
UNSKIPPABLE "Wenn Du hierher kamst, um die\n"
"Zoras zu retten, hast Du den\n"
"ersten Schritt getan. Doch mehr\n"
"findest Du hier nicht..."BOX_BREAK
UNSKIPPABLE "Mit einer Ausnahme sind alle\n"
"Zoras unter einer dicken \n"
"Eisschicht gefangen..."BOX_BREAK
UNSKIPPABLE "Ich konnte nur ihre Prinzessin\n"
"retten, aber sie lief in Richtung \n"
"des" COLOR("\x43") " Wassertempels " COLOR("\x40") "davon!"
);

DECLARE_MESSAGE_GER(0x403A,
"Wenn Du einen Fisch kaufen willst,\n"
"dann brauchst Du etwas, worin Du\n"
"ihn aufbewahren kannst." EVENT
);

DECLARE_MESSAGE_GER(0x403B,
"Du willst die " COLOR("\x43") "Zora-Rüstung" COLOR("\x40") " kaufen?\n"
"Sie ist aus edelstem Material und\n"
"daher enorm teuer!"BOX_BREAK"Ich schätze, nur " COLOR("\x41") "diese sehr\n"
"reiche Familie in Kakariko" COLOR("\x40") " kann\n"
"sie sich leisten." EVENT
);

DECLARE_MESSAGE_GER(0x403C,
"403C"
);

DECLARE_MESSAGE_GER(0x403D,
"403D"
);

DECLARE_MESSAGE_GER(0x403E,
UNSKIPPABLE "Oh... Wenn ich mich recht\n"
"entsinne... " NAME "?!"BOX_BREAK
UNSKIPPABLE "Du bist " NAME ", oder?"BOX_BREAK
UNSKIPPABLE "Ich bin es! " COLOR("\x43") "Ruto" COLOR("\x40") ", Deine Braut!\n"
"Die Prinzessin der Zoras!"BOX_BREAK
UNSKIPPABLE "Ich werde nie vergessen, was\n"
"wir uns vor Jahren\n"
"geschworen haben!"BOX_BREAK
UNSKIPPABLE "Es war grauenvoll von Dir,\n"
"mich sieben lange Jahre\n"
"warten zu lassen!"BOX_BREAK
UNSKIPPABLE "Doch jetzt ist nicht die Zeit,\n"
"über Liebe zu sprechen. Es ist\n"
"etwas Furchtbares geschehen!"BOX_BREAK
UNSKIPPABLE "Zoras Reich ist eingefroren!\n"
"Alles ist über und über mit\n"
"Eis bedeckt!"BOX_BREAK
UNSKIPPABLE "Ein junger Mann namens " COLOR("\x41") "Shiek\n"
COLOR("\x40") "hat mich aus dem Eis gerettet..."BOX_BREAK
UNSKIPPABLE "Aber die anderen Zoras wurden\n"
TEXT_SPEED("\x02") "... noch nicht..." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Ich will sie retten. Alle!\n"
"Ich will Zoras Reich retten!"BOX_BREAK
UNSKIPPABLE "Du mußt mir helfen! Du mußt\n"
"es für mich tun - für die Frau, die\n"
"Du heiraten wirst!"BOX_BREAK
UNSKIPPABLE  NAME ", hilf mir, das\n"
"bösartige Ungeheuer zu\n"
"vernichten, das in diesem Tempel\n"
"lauert. Wirst Du das tun?"BOX_BREAK
UNSKIPPABLE "Im Wassertempel gibt es " COLOR("\x41") "drei\n"
"Stellen" COLOR("\x40") ", an denen Du den\n"
"Wasserstand verändern kannst."BOX_BREAK
UNSKIPPABLE "Ich zeige Dir den Weg.\n"
"Folge mir! Und beeile Dich!"
);

DECLARE_MESSAGE_GER(0x403F,
UNSKIPPABLE  NAME "! Vorsicht!\n"
"Das hier sieht nicht aus wie\n"
"gewöhnliches Wasser...\n"
"Irgendetwas lauert hier!"
);

DECLARE_MESSAGE_GER(0x4040,
"4040"
);

DECLARE_MESSAGE_GER(0x4041,
UNSKIPPABLE  NAME "..."BOX_BREAK
UNSKIPPABLE "Ich hätte nichts anderes von\n"
"jemandem erwartet, den ich zu\n"
"meinem Ehemann auserkoren habe!"BOX_BREAK
UNSKIPPABLE "Zoras Reich und seine Bewohner\n"
"können dank Deiner Hilfe\n"
"wieder in Freiheit leben."
);

DECLARE_MESSAGE_GER(0x4042,
UNSKIPPABLE "Wenn Du Shiek triffst, danke\n"
"ihm von mir, okay?" FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x4043,
UNSKIPPABLE "Ruto wollte sich bei mir \n"
"bedanken?"BOX_BREAK
UNSKIPPABLE "Ich verstehe..."BOX_BREAK
UNSKIPPABLE "Auch in ihrem Namen müssen wir\n"
"Hyrule den Frieden wiederbringen!"
);

DECLARE_MESSAGE_GER(0x4044,
"4044"
);

DECLARE_MESSAGE_GER(0x4045,
"Ah, ich verstehe...\n"
"Prinzessin Ruto ist zum\n"
"Wassertempel gegangen..."
);

DECLARE_MESSAGE_GER(0x4046,
UNSKIPPABLE "Als meinen Lohn... gewähre\n"
"ich Dir meine ewige Liebe!"BOX_BREAK
UNSKIPPABLE "Äh, naja, das würde ich gern,\n"
"aber ich merke, daß Du an eine \n"
"andere denkst..."
);

DECLARE_MESSAGE_GER(0x4047,
UNSKIPPABLE "Prinzessin Zelda... Sie ist am\n"
"Leben! Ich spüre es. Also laß\n"
"Dich nicht entmutigen!"
);

DECLARE_MESSAGE_GER(0x4048,
QUICKTEXT_ENABLE  SHIFT("\x48") "Iiiihhhh!!!\n"
SHIFT("\x31") "Was ist das denn?!\n"
SHIFT("\x3D") "Ein Oktopus?!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x4049,
UNSKIPPABLE "Als " COLOR("\x43") "Weise des Wassers\n"
COLOR("\x40") "ist es meine Aufgabe, den \n"
"Wassertempel zu bewachen..."BOX_BREAK
UNSKIPPABLE "Und Du... Du suchst nach\n"
"Prinzessin " COLOR("\x41") "Zelda" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Gib es zu! Du kannst nichts\n"
"vor mir verheimlichen!"
);

DECLARE_MESSAGE_GER(0x404A,
UNSKIPPABLE "Ich weiß, Dich wird nichts\n"
"aufhalten in Deinem Kampf für den\n"
"Frieden... Nimm daher dieses\n"
COLOR("\x43") "Amulett" COLOR("\x40") " und trage es mit Würde!"
);

DECLARE_MESSAGE_GER(0x404B,
UNSKIPPABLE "Hey, Du! Wer bist Du?!"BOX_BREAK
UNSKIPPABLE "Ich bin " COLOR("\x41") "Ruto" COLOR("\x40") ", Prinzessin der Zoras."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Was?!" QUICKTEXT_DISABLE "\n"
"Mein Daddy hat Dich geschickt,\n"
"um mich zu retten?"BOX_BREAK
UNSKIPPABLE "Ich würde " QUICKTEXT_ENABLE "niemals" QUICKTEXT_DISABLE " jemanden\n"
"um so etwas bitten!"BOX_BREAK
UNSKIPPABLE "Flaschenpost? Ich weiß\n"
QUICKTEXT_ENABLE "überhaupt nicht" QUICKTEXT_DISABLE ", wovon Du redest!"BOX_BREAK
UNSKIPPABLE "Mein Daddy hat Angst um mich?"BOX_BREAK
UNSKIPPABLE "Ist mir " QUICKTEXT_ENABLE "total" QUICKTEXT_DISABLE " egal!"BOX_BREAK
UNSKIPPABLE "Außerdem kann ich jetzt sowieso\n"
"nicht heim. Und Du... " QUICKTEXT_ENABLE "Verschwinde!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Kapiert?!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x404C,
UNSKIPPABLE "Bist Du immer noch hier? Du bist\n"
"ja schlimmer als eine Klette!"BOX_BREAK
UNSKIPPABLE "Ich bin okay. Schon seit ich eine\n"
"kleine Zora-Prinzessin war, laufe\n"
"ich hin und wieder in Lord\n"
"Jabu-Jabus Bauch herum. Aber..."BOX_BREAK
UNSKIPPABLE "Lord Jabu-Jabu ist heute ziemlich\n"
"seltsam..."BOX_BREAK
UNSKIPPABLE "Hier sind auf einmal elektrisch \n"
"geladene Quallen und seltsame\n"
"Löcher..."BOX_BREAK
UNSKIPPABLE "Obendrein habe ich meinen\n"
"wertvollsten Stein...\n"
QUICKTEXT_ENABLE "Aber das geht Dich gar nichts an!" QUICKTEXT_DISABLE "\n"
"Egal..."BOX_BREAK
UNSKIPPABLE "Du! " QUICKTEXT_ENABLE "Verschwinde!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Kapiert?!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x404D,
UNSKIPPABLE "Du machst Dir echt solche Sorgen\n"
"um mich?"BOX_BREAK
UNSKIPPABLE "Dann wird Dir eine besondere Ehre\n"
"zuteil: Du darfst mich tragen!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Und übrigens" QUICKTEXT_DISABLE "... Ich bleibe bei Dir,\n"
"bis ich gefunden habe, wonach ich\n"
"suche! Kein Witz! Ich mein's ernst!" EVENT
);

DECLARE_MESSAGE_GER(0x404E,
QUICKTEXT_ENABLE "Wie unaufmerksam von Dir!" QUICKTEXT_DISABLE "\n"
"Warum läßt Du mich sitzen?!\n"
"Wenn Du ein Mann sein willst,\n"
"dann verhalte Dich auch so!" EVENT
);

DECLARE_MESSAGE_GER(0x404F,
UNSKIPPABLE  QUICKTEXT_ENABLE "Da ist er ja!" QUICKTEXT_DISABLE "\n"
"Danach habe ich gesucht!\n"
"Wirf mich auf die Plattform!"
);

DECLARE_MESSAGE_GER(0x4050,
UNSKIPPABLE  QUICKTEXT_ENABLE "Prinzessin Ruto hat den \n"
COLOR("\x43") "Heiligen Stein" COLOR("\x40") " wieder!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02") "Aber" TEXT_SPEED("\x00") " warum Prinzessin Ruto?"
);

DECLARE_MESSAGE_GER(0x4051,
UNSKIPPABLE "Gott sei Dank!\n"
"Endlich... \n"
"Der Stein von meiner Mama..."BOX_BREAK
UNSKIPPABLE "Als ich Lord Jabu-Jabu gefüttert\n"
"habe, hat er wild um sich\n"
"geschlagen! Vor Schreck habe ich\n"
"den Stein fallen lassen!"BOX_BREAK
UNSKIPPABLE "Und ganz plötzlich hat er mich\n"
"und den Stein verschluckt..."BOX_BREAK
UNSKIPPABLE "Aber jetzt habe ich ihn wieder\n"
"und kann heimgehen!"
);

DECLARE_MESSAGE_GER(0x4052,
"Bring mich jetzt schnell heim!"
);

DECLARE_MESSAGE_GER(0x4053,
"Tauchspiel   20 Rubine\n"
"Macht Ihr mit?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4054,
QUICKTEXT_ENABLE  SHIFT("\x3F") "Okay!" QUICKTEXT_DISABLE BOX_BREAK"Sammelt alle Steine ein, die ich\n"
"nach unten werfe. Ihr habt dafür\n"
"nur begrenzt Zeit!"BOX_BREAK"Sind alle eingesammelt, kommt\n"
"hierher zurück. Dann bekommt\n"
"Ihr etwas sehr Schönes!" EVENT
);

DECLARE_MESSAGE_GER(0x4055,
UNSKIPPABLE  QUICKTEXT_ENABLE "Gratuliere!" QUICKTEXT_DISABLE "\n"
"Ich habe etwas Tolles für Euch!\n"
"Holt es Euch ab!" EVENT
);

DECLARE_MESSAGE_GER(0x4056,
UNSKIPPABLE "Wie elegant Ihr getaucht seid!\n"
"Hier, nehmt dies als Lohn!"BOX_BREAK
UNSKIPPABLE "Dies ist eine " COLOR("\x41") "silberne Schuppe" COLOR("\x40") "\n"
"der Zoras. Mit ihr kann man viel\n"
"tiefer tauchen!" EVENT
);

DECLARE_MESSAGE_GER(0x4057,
UNSKIPPABLE "Das Wasser steigt, und das Böse\n"
"verläßt den See...\n"
NAME ", Du hast\n"
"es geschafft!"
);

DECLARE_MESSAGE_GER(0x4058,
UNSKIPPABLE "Ich... bin nun überzeugt, daß Du\n"
"diese Welt retten wirst..."
);

DECLARE_MESSAGE_GER(0x4059,
UNSKIPPABLE "Schau, " NAME "..."BOX_BREAK
UNSKIPPABLE "Du und Prinzessin Ruto, ihr habt\n"
"gemeinsam das bösartige Monster\n"
"besiegt!"BOX_BREAK
UNSKIPPABLE "Der See füllt sich mit reinem\n"
"Wasser, und alles ist wie zuvor."
);

DECLARE_MESSAGE_GER(0x405A,
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x44") "START!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x405B,
"Spring den Wasserfall hinab,\n"
"um Zeit zu sparen." EVENT
);

DECLARE_MESSAGE_GER(0x405C,
"Nehmt soviel Ihr wollt für\n"
"20 Rubine. Macht Ihr mit?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x405D,
QUICKTEXT_ENABLE "Gratuliere!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x405E,
UNSKIPPABLE "Ein paar " COLOR("\x41") "Wundererbsen" COLOR("\x40") " gefällig?\n"
"Sie gehen nicht besonders gut..."BOX_BREAK"Wie wäre es mit...\n"
COLOR("\x41") "10 Rubine" COLOR("\x40") " das Stück?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x405F,
UNSKIPPABLE "Ein paar " COLOR("\x41") "Wundererbsen" COLOR("\x40") " gefällig?\n"
"Sie sind noch nicht so beliebt."BOX_BREAK"Wie wäre es mit...\n"
COLOR("\x41") "20 Rubine" COLOR("\x40") " das Stück?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4060,
UNSKIPPABLE "Ein paar " COLOR("\x41") "Wundererbsen" COLOR("\x40") " gefällig?\n"
"Sie werden langsam beliebter..."BOX_BREAK
COLOR("\x41") "30 Rubine" COLOR("\x40") " das Stück.\n"
"Wie wäre es?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4061,
UNSKIPPABLE "Ein paar " COLOR("\x41") "Wundererbsen" COLOR("\x40") " gefällig?\n"
"Sie gehen weg wie warme Semmeln!"BOX_BREAK
COLOR("\x41") "40 Rubine" COLOR("\x40") " das Stück.\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4062,
UNSKIPPABLE "Hier gibt's die tollen " COLOR("\x41") "Wundererbsen" COLOR("\x40") "!\n"
"Wer sie nicht kauft, der wird es\n"
"wirklich bereuen!"BOX_BREAK
COLOR("\x41") "50 Rubine" COLOR("\x40") " das Stück.\n"
"(Aber nur jetzt!)\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4063,
UNSKIPPABLE "Die weltberühmten " COLOR("\x41") "Wundererbsen" COLOR("\x40") "!\n"
"Sie sind absolut beliebt und sicher\n"
"schon bald ausverkauft!"BOX_BREAK"Ein Superpreis!\n"
COLOR("\x41") "60 Rubine" COLOR("\x40") " das Stück!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4064,
UNSKIPPABLE "Hier gibt es die seltenen\n"
COLOR("\x41") "Wundererbsen" COLOR("\x40") "! Dies könnte die\n"
"letzte Chance sein!"BOX_BREAK"Mein Spezial-Preis!\n"
COLOR("\x41") "70 Rubine" COLOR("\x40") " das Stück!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4065,
UNSKIPPABLE "Wir haben die legendären \n"
COLOR("\x41") "Wundererbsen" COLOR("\x40") "! Ich verkaufe sie\n"
"normalerweise an niemanden!"BOX_BREAK"Mein Super-Preis!\n"
COLOR("\x41") "80 Rubine" COLOR("\x40") " das Stück!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4066,
UNSKIPPABLE  COLOR("\x41") "Wundererbsen" COLOR("\x40") "?! Die sind sehr\n"
"teuer, aber... ich verkaufe\n"
"sie gern!"BOX_BREAK"Aber ich muß mindestens\n"
COLOR("\x41") "90 Rubine" COLOR("\x40") " für eine haben!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4067,
UNSKIPPABLE "Wir verkaufen... " COLOR("\x41") "Wundererbsen" COLOR("\x40") "! \n"
"Du willst sie kaufen... Na gut!"BOX_BREAK
COLOR("\x41") "100 Rubine" COLOR("\x40") " für eine!\n"
"Juhuuu!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4068,
"Na gut..."
);

DECLARE_MESSAGE_GER(0x4069,
"Das ist zu wenig Geld.\n"
"Ich kann sie nicht verkaufen."
);

DECLARE_MESSAGE_GER(0x406A,
"Plaziere eine Wundererbse auf " COLOR("\x46") "[C]\n"
COLOR("\x40") "und pflanze sie hier in die Erde."
);

DECLARE_MESSAGE_GER(0x406B,
"Oh, wie schade! Die Wundererbsen\n"
"sind ausverkauft! Wie bitte?\n"
"Oh, diese hier sind unverkäuflich!"
);

DECLARE_MESSAGE_GER(0x406C,
"Es gibt eine Menge Orte, an denen\n"
"man  Wundererbsen pflanzen kann.\n"
"Suche nach einem quadratischen\n"
"Fleckchen Erde!"
);

DECLARE_MESSAGE_GER(0x406D,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist nur " COLOR("\x41") "1 Meter" COLOR("\x40") " tief getaucht. Das\n"
"würde ich nicht \"Tauchen\" nennen..."
);

DECLARE_MESSAGE_GER(0x406E,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist nur " COLOR("\x41") "2 Meter" COLOR("\x40") " tief getaucht. Das\n"
"würde ich nicht \"Tauchen\" nennen..."
);

DECLARE_MESSAGE_GER(0x406F,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist nur " COLOR("\x41") "3 Meter" COLOR("\x40") " tief getaucht. Das\n"
"würde ich nicht \"Tauchen\" nennen..."
);

DECLARE_MESSAGE_GER(0x4070,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist nur " COLOR("\x41") "4 Meter" COLOR("\x40") " tief getaucht. Das\n"
"würde ich nicht \"Tauchen\" nennen..."
);

DECLARE_MESSAGE_GER(0x4071,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist jetzt " COLOR("\x41") "5 Meter" COLOR("\x40") " tief getaucht. Das\n"
"ist noch nicht tief genug..."
);

DECLARE_MESSAGE_GER(0x4072,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist jetzt " COLOR("\x41") "6 Meter" COLOR("\x40") " tief getaucht. Du\n"
"solltest tiefer tauchen können!"
);

DECLARE_MESSAGE_GER(0x4073,
"Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"bist jetzt " COLOR("\x41") "7 Meter" COLOR("\x40") " tief getaucht. Du\n"
"solltest tiefer tauchen können!"
);

DECLARE_MESSAGE_GER(0x4074,
UNSKIPPABLE "Du hast es vielleicht nicht bemerkt,\n"
"aber ich habe Dich beobachtet. Du\n"
"hast den " COLOR("\x41") "Grund des Sees" COLOR("\x40") " erreicht!\n"
"Super! Hier ist etwas für Dich!"
);

DECLARE_MESSAGE_GER(0x4075,
"Du scheinst der beste Taucher \n"
"Hyrules zu sein! Warum tauchst\n"
"Du nicht mal auf den \n"
"Grund des Hylia-Sees?"
);

DECLARE_MESSAGE_GER(0x4076,
"Ich bin " COLOR("\x41") "Balzac" COLOR("\x40") ", die Vogelscheuche.\n"
"Ich wünschte, ich könnte reisen,\n"
"um herzergreifende Lieder zu\n"
"hören. Aber ich stecke hier fest..."
);

DECLARE_MESSAGE_GER(0x4077,
"Eine wunderschöne Melodie!\n"
"Sie geht richtig ans Herz!" EVENT
);

DECLARE_MESSAGE_GER(0x4078,
"Wenn Dir ein schönes Lied einfällt,\n"
"komm her und spiel es mir vor!" EVENT
);

DECLARE_MESSAGE_GER(0x4079,
"Es ist lange her, aber würdest Du\n"
"mir nochmal das schöne Lied von\n"
"damals vorspielen?" EVENT
);

DECLARE_MESSAGE_GER(0x407A,
"Das Lied von damals werde ich\n"
"nie vergessen!" EVENT
);

DECLARE_MESSAGE_GER(0x407B,
"Nun, willst Du für nur\n"
COLOR("\x41") "20 Rubine" COLOR("\x40") " angeln?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x407C,
"Oh, nein! Dir fehlt ein " COLOR("\x41") "Rumble Feature" COLOR("\x40") "! \n"
"Damit würdest Du spüren," COLOR("\x41") "\n"
COLOR("\x40") "wenn ein Fisch am Haken ist."BOX_BREAK"Pech für Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x407D,
"Wow! Du hast ein " COLOR("\x41") "Rumble Feature" COLOR("\x40") "!\n"
"Jetzt spürst Du, ob Du etwas an\n"
"der Angel hast, mein Junge!" EVENT
);

DECLARE_MESSAGE_GER(0x407E,
"Mist! Du hast nicht genug Geld."
);

DECLARE_MESSAGE_GER(0x407F,
"Geh zum Rand des Sees und drücke\n"
COLOR("\x44") "[L]" COLOR("\x40") ", um die Fische anzuschauen.\n"
"Wirf die Leine mit " COLOR("\x41") "[B]" COLOR("\x40") " aus und\n"
"stoppe sie mit " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Laß Deinen Köder mit " COLOR("\x44") "[Control Stick]" COLOR("\x40") " im\n"
"Wasser zappeln. Als Anfänger\n"
"kannst Du auch " COLOR("\x41") "[B]" COLOR("\x40") " benutzen."BOX_BREAK"Hole die Angelschnur mit " COLOR("\x42") "[A]" COLOR("\x40") " ein.\n"
"Wenn Du " COLOR("\x42") "[A]" COLOR("\x40") " und " COLOR("\x44") "[R] " COLOR("\x40") "gedrückt\n"
"hältst, kannst Du den Fang\n"
"schneller einholen!"BOX_BREAK"Spürst Du, daß etwas anbeißt,\n"
"drücke " COLOR("\x42") "[A] " COLOR("\x40") "und " COLOR("\x44") "[Control Stick] nach unten" COLOR("\x40") ",\n"
"um den Haken festzusetzen. Dann\n"
"hole die Leine mit " COLOR("\x42") "[A]" COLOR("\x40") " ein."BOX_BREAK"Möchtest Du Deine Ergebnisse\n"
"beim Angeln festhalten, mußt Du\n"
"Deinen Fang wiegen lassen!"BOX_BREAK"Angelst Du als Kind, wird Dein\n"
"Ergebnis auch in der Zukunft\n"
"festgehalten. Umgekehrt ist\n"
"dies nicht möglich."BOX_BREAK"Hast Du alles verstanden?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4080,
"Ich bin sehr großzügig. Du kannst\n"
"angeln, solange Du möchtest."BOX_BREAK"Der größte Fang an diesem See\n"
"wog " COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "."BOX_BREAK"Wenn Du Deine Angel ausgeworfen \n"
"hast, kannst Du die Blickrichtung\n"
"mit " COLOR("\x44") "[L]" COLOR("\x40") " ändern."BOX_BREAK
SHIFT("\x4A") "Petri Heil!" EVENT
);

DECLARE_MESSAGE_GER(0x4081,
"Hahaha!\n"
"Hast Du den Haken nicht mit " COLOR("\x42") "[A]\n"
COLOR("\x40") "und " COLOR("\x44") "[Control Stick] nach unten" COLOR("\x40") " angezogen?"
);

DECLARE_MESSAGE_GER(0x4082,
"Hey, was ist passiert?\n"
"Du hast den Fisch verloren!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x4083,
"Naja... Der wiegt etwa " COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") ". \n"
"Willst Du ihn behalten?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4084,
"Was möchtest Du?\n"
THREE_CHOICE  COLOR("\x42") "Wiege meinen Fisch!\n"
"Laß uns ein wenig reden...\n"
"Mir reicht's!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4085,
"Du mußt Dich schon etwas  \n"
"gedulden, wenn Du einen guten\n"
"Fang machen willst! Ehrlich!"
);

DECLARE_MESSAGE_GER(0x4086,
SHIFT("\x55") "WOW!!"BOX_BREAK"Das ist ja ein Prachtkerl! Sieht\n"
"ganz nach einem neuen Rekord aus!\n"
"Er wiegt mindestens " COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "!\n"
"Okay, hier ist Dein Preis!" EVENT
);

DECLARE_MESSAGE_GER(0x4087,
"Was? \n"
"Was machst Du mit mir?!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x4088,
"Hey, Junge! Hast Du nichts\n"
"Besseres zu tun?"BOX_BREAK"Was? Du willst weiter hier\n"
"rumlungern?"BOX_BREAK"Mit so einer Einstellung bringt man\n"
"es im Leben zu nichts, glaub mir!\n"
"Naja..."
);

DECLARE_MESSAGE_GER(0x4089,
QUICKTEXT_ENABLE "Der größte Fang an diesem See\n"
"wog " FISH_INFO " Pfund.\n"
"Gefangen von: " NAME  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x408A,
"Willst Du weiter angeln?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x408B,
"Naja, er wiegt " COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "...\n"
"Nicht schlecht, aber in diesem See\n"
"gibt es auch größere Brocken!" EVENT
);

DECLARE_MESSAGE_GER(0x408C,
"Hey, Du hast doch gar keinen\n"
"Fisch gefangen! Weichei!" EVENT
);

DECLARE_MESSAGE_GER(0x408D,
"Du willst einen anderen Köder?\n"
"Meinst Du, darauf kommt es an?\n"
"Man braucht Talent und Erfahrung!\n"
"Hör mir zu:"BOX_BREAK"Ich habe den Sachsen das Angeln\n"
"beigebracht. Seitdem sind es die\n"
"Angelsachsen! Alles klar?"
);

DECLARE_MESSAGE_GER(0x408E,
"Was? Du möchtest ein paar Tricks\n"
"erfahren? Die kann ich Dir nicht\n"
"verraten. Die sind geheim.\n"
"Ehrlich!"
);

DECLARE_MESSAGE_GER(0x408F,
"Was? Du willst wissen, ob ich ein\n"
"guter Angler bin?"BOX_BREAK"Klar doch! Ein echter Pro!\n"
"Weißt Du überhaupt, was das ist?\n"
"So wie du angelst, wohl kaum!"
);

DECLARE_MESSAGE_GER(0x4090,
QUICKTEXT_ENABLE "Verhaltensmaßregeln" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "1. Benutzen Sie keine fremden\n"
"Köder.\n"
"2. Nicht ins Wasser..." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "3. Keine Hamster als Köder\n"
"verwenden!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x4091,
"Wow! Das ist ja ein echter\n"
"Brocken! Tatsächlich! Er wiegt\n"
COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "!"BOX_BREAK"Willst Du ihn behalten?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4092,
"Komm wieder, wenn Du älter bist!\n"
"Dann sind auch die Fische größer...\n"
"Naja, oder auch nicht."
);

DECLARE_MESSAGE_GER(0x4093,
UNSKIPPABLE "Hey, Typ! Wir kennen uns doch!\n"
"Ist aber schon lange her!"BOX_BREAK
UNSKIPPABLE "Wieviel Jahre waren das?\n"
"Sieben Jahre?! Was hast Du denn\n"
"die ganze Zeit getrieben?!"BOX_BREAK
UNSKIPPABLE "Du bist mein einziger Kunde.\n"
"Ich mache fast kein Geschäft\n"
"mehr!\n"
"Obendrein werden meine Haare..."BOX_BREAK
UNSKIPPABLE "Naja, äh, egal..."BOX_BREAK
UNSKIPPABLE "Na gut, willst Du fischen gehen?\n"
"Es kostet nur " COLOR("\x41") "20 Rubine" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4094,
"Was?"BOX_BREAK"Du willst woanders fischen\n"
"gehen?! Du bist wohl nicht\n"
"mehr ganz bei Trost?"BOX_BREAK"Wenn Du hier nicht angelst, geh\n"
"ich ja völlig Pleite!\n"
"Ganz im Ernst!"
);

DECLARE_MESSAGE_GER(0x4095,
"Was?"BOX_BREAK"Du willst mit Fliegen fischen?\n"
"Glaubst, dann läuft's besser?"BOX_BREAK"Bleib mal lieber bei den Würmern.\n"
"Ganz ehrlich!"
);

DECLARE_MESSAGE_GER(0x4096,
"Was?"BOX_BREAK"Was meinst Du damit, daß Du\n"
"keine Fische siehst, weil das\n"
"Wasser zu trüb ist?"BOX_BREAK"So ein Schwachsinn!\n"
"An solchen Tagen macht Fischen\n"
"noch mehr Spaß!"BOX_BREAK"Du erwischst einen Fisch, wenn\n"
"Du es am wenigsten erwartest!\n"
"Das ist doch richtig genial!"BOX_BREAK"Ganz im Ernst!"
);

DECLARE_MESSAGE_GER(0x4097,
"Hey, was soll das?\n"
"Paß doch auf!\n"
"Du bist ja total schusselig!\n"
"Dumpfbacke!"BOX_BREAK"Gib mir meine Mütze wieder!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Okay!\n"
"Auf keinen Fall!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4098,
"Was? Oh!\n"
"Du hast ja schon größere Viecher\n"
"an Land gezogen..."BOX_BREAK"Willst Du ihn trotzdem behalten?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ich wil ihn nicht! \n"
"Ich behalte ihn!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x4099,
"Hey! Was ist das denn für ein\n"
"komischer Fisch? Er wiegt auch\n"
COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "!"BOX_BREAK"Was willst Du damit machen?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Behalten!\n"
"Nicht behalten!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x409A,
"Wow!"BOX_BREAK"Hast Du tatsächlich...\n"
"Unglaublich!\n"
"Du hast einen " COLOR("\x41") "fremden Köder\n"
COLOR("\x40") "erwischt!"BOX_BREAK"Was willst Du damit tun?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Damit angeln!\n"
"Wegwerfen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x409B,
"Nun ja..."BOX_BREAK"Wow! Welch ein seltener Fisch!\n"
"Eine " COLOR("\x41") "hylianische Forelle" COLOR("\x40") "!"BOX_BREAK"Da kommt es nicht auf die Größe\n"
"an! Ich gebe Dir diesen Preis!" EVENT
);

DECLARE_MESSAGE_GER(0x409C,
"In der letzten Zeit haben wir kaum\n"
"noch solche Fische gefangen. Ich \n"
"laß ihn lieber wieder schwimmen." EVENT
);

DECLARE_MESSAGE_GER(0x409D,
QUICKTEXT_ENABLE "Verhaltensmaßregeln\n"
"1. Keine fremden Köder benutzen.\n"
"2. Keinen Dreck machen.\n"
"3. Ruhe!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x409E,
"Hey! Hey!\n"
"Du kannst die Angel doch nicht\n"
"einfach mitnehmen!"BOX_BREAK"Wenn Du aufhören willst, dann\n"
"bringe sie zum Angelverleih\n"
"zurück! Ganz im Ernst!"
);

DECLARE_MESSAGE_GER(0x409F,
"Göttlich!!!\n"
"Dieser Fisch ist ja riesengroß!"BOX_BREAK"Der paßt in keine Pfanne!\n"
"Er ist sogar für meine Waage\n"
"zu groß. Er wiegt\n"
"bestimmt " COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "!"BOX_BREAK"Du willst ihn bestimmt behalten,\n"
"oder nicht?\n"
TWO_CHOICE  COLOR("\x42") "Behalten!\n"
"Nicht behalten!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x40A0,
"Hey, Süßer!\n"
"Ich bin " COLOR("\x41") "Byron" COLOR("\x40") ", die Vogelscheuche!\n"
"Du hast bestimmt schon von meinem\n"
"tollen Gedächtnis gehört!"BOX_BREAK"Wenn Du ein neues Lied weißt -\n"
"raus damit!"BOX_BREAK"Dies ist das Lied, das Du beim\n"
"letzten Mal geflötet hast!"BOX_BREAK"Los dann!" EVENT
);

DECLARE_MESSAGE_GER(0x40A1,
"Ich bin " COLOR("\x41") "Byron" COLOR("\x40") ", das musikalische\n"
"Vogelscheuchen-Genie! Wenn ich\n"
"ein Lied einmal gehört habe, \n"
"vergesse ich es nie mehr, Süßer!"
);

DECLARE_MESSAGE_GER(0x40A2,
"Spiel das Lied, damit Du Balzac\n"
"rufen kannst!\n"
"Wenn er in der Nähe ist, dann\n"
"hilft er Dir, Süßer!"
);

DECLARE_MESSAGE_GER(0x40A3,
"Hey! Bist Du nicht der Typ aus\n"
"dem Kokiri-Wald?\n"
"Mann, bist Du gewachsen!"BOX_BREAK"Okay, das ist Dein Lied..."BOX_BREAK"Was?"BOX_BREAK"Ich hab eben ein Elefantenhirn!\n"
"Du hast eher ein Hirn wie ein Sieb,\n"
"mein Guter! Nimm Deine Okarina\n"
"und flöte das Lied, Süßer!"
);

DECLARE_MESSAGE_GER(0x40A4,
"Whoa! Du hast eine Okarina!\n"
"Hey, warum flötest Du mir nicht\n"
"was vor, Süßer?!" EVENT
);

DECLARE_MESSAGE_GER(0x40A5,
"Naja... Nicht so schlecht!\n"
"Ich werde die Melodie im Kopf\n"
"behalten!"BOX_BREAK"Ich kann mir jedoch höchstens\n"
"acht Noten merken.\n"
"Also für heute laß gut sein,\n"
"Süßer." EVENT
);

DECLARE_MESSAGE_GER(0x40A6,
"Wenn Du so einen Unsinn flötest,\n"
"gewinnst Du keinen Blumentopf,\n"
"Süßer!" EVENT
);

DECLARE_MESSAGE_GER(0x40A7,
"OH YEAHHH!!\n"
"Das ist es! Das geht ab!\n"
"Mir haut's den Vogel raus!"BOX_BREAK"Ich hab das nie vergessen!\n"
"Ich hab ja kein Stroh im Hirn!\n"
"Ich glaube, Du hast Dir eine\n"
"Belohnung verdient, Süßer!"BOX_BREAK"Ich hab eine prima Idee!"BOX_BREAK"Mein Bruder Balzac reist in ganz\n"
"Hyrule herum. Wenn Du ihn rufen\n"
"willst, dann spiele dieses Lied!"BOX_BREAK"Wenn er in der Nähe ist und es\n"
"hört, dann wird er Dir helfen!" EVENT
);

DECLARE_MESSAGE_GER(0x40A8,
"Hey, die Okarina!\n"
"Spiel ein Lied damit,\n"
"Süßer!" EVENT
);

DECLARE_MESSAGE_GER(0x40A9,
SFX("\x28\xE4") "Mein Freund, Du spielst die\n"
"Okarina gut... Mmmh...!\n"
"Eine nette Melodie... Wir sollten\n"
"sie alle üben!"BOX_BREAK"Nimm dies hier als Lohn!\n"
"Wenn Dir mal wieder eine feine\n"
"Weise durch den Kopf schießt,\n"
"komm vorbei und spiel sie vor!" EVENT
);

DECLARE_MESSAGE_GER(0x40AA,
SFX("\x28\xE3") "Wow, ein cooler Song,\n"
"Freund!"BOX_BREAK"\"Siiiiingin' in the raaaaaain...\"\n"
"Wirklich schön! "BOX_BREAK"Steck Dir das hier als Gage\n"
"für den abgefahrenen Gig ein!\n"
"Alles klar, wir sehen uns!" EVENT
);

DECLARE_MESSAGE_GER(0x40AB,
SFX("\x28\xE4") "Hey, wir sind die Riesenfrösche!\n"
"Die berühmten, unerreichten\n"
"fünf fabulösen Froschtenöre!"BOX_BREAK"Bring uns zum Springen, damit wir\n"
"die Fliegen über uns erwischen!"BOX_BREAK"Okay?\n"
"Also los dann!" EVENT
);

DECLARE_MESSAGE_GER(0x40AC,
SFX("\x28\xE3") "Junge, das war genial!\n"
"Perrrrrfekt!\n"
"Wir platzen gleich!"BOX_BREAK"Das hier ist doch genug als Dank,\n"
"oder nicht?" EVENT
);

DECLARE_MESSAGE_GER(0x40AD,
"Naja, an dieses Lied kann ich mich\n"
"aber gar nicht erinnern, Süßer!\n"
"Warum? Weiß ich auch nicht!"
);

DECLARE_MESSAGE_GER(0x40AE,
QUICKTEXT_ENABLE "Der größte Fang, der in diesem See \n"
"gemacht wurde, wog " FISH_INFO " Pfund.\n"
"Gefangen vom Besitzer des Sees!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x40AF,
"Was?\n"
"Du willst einen anderen\n"
"Köder benutzen?\n"
"Hey, was ist das denn?"BOX_BREAK"Das hast Du gerade erwischt?\n"
"Nach den Regeln darfst Du sowas\n"
"ja eigentlich nicht benutzen.\n"
"Aber, naja, was soll's..."
);

DECLARE_MESSAGE_GER(0x40B0,
"WOW!\n"
"Der ist RIESIG! Ein neuer Rekord!\n"
"Der... Der wiegt ganze...\n"
COLOR("\x41")  FISH_INFO " Pfund" COLOR("\x40") "!"BOX_BREAK"Aaaaaaber! Der fremde Köder war\n"
"ein Verstoß gegen die Regeln!\n"
"Also gibt es auch keinen Preis!\n"
"Hehe!" EVENT
);

DECLARE_MESSAGE_GER(0x40B1,
QUICKTEXT_ENABLE "Größter Fang: " FISH_INFO " Pfund.\n"
"Gefangen von: " NAME "\n"
"(HINWEIS: Disqualifiziert wegen\n"
"Benutzung eines fremden Köders!)" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x40B2,
"Du bist ein netter Junge!\n"
"Aber erzähl es nicht weiter.\n"
"Ehrenwort?" EVENT
);

DECLARE_MESSAGE_GER(0x40B3,
"WAAAS!?"BOX_BREAK"Warum machst Du das mit mir?\n"
"Was denkst Du Dir eigentlich?"BOX_BREAK"So leicht kommst Du nicht davon!\n"
"Du zahlst Strafe, und zwar \n"
COLOR("\x41") "50 Rubine" COLOR("\x40") "!\n"
"Garantiert!" EVENT
);

DECLARE_MESSAGE_GER(0x5000,
QUICKTEXT_ENABLE "AARGH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Du" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "hast mich" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "bezwungen!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Wie? Ach, Du bist es."BOX_BREAK"Hast Du mal die " COLOR("\x46") "Hymne der Sonne" COLOR("\x40") "\n"
"gespielt?"BOX_BREAK"Ich habe Dir ja schon \n"
"erzählt, daß Du damit die Nacht \n"
"zum Tag und den Tag zur Nacht\n"
"machst - wann immer Du willst."BOX_BREAK"Wenn alles um Dich herum dunkel\n"
"ist, kannst Du damit wieder Licht\n"
"in die Welt bringen. Probier's!"
);

DECLARE_MESSAGE_GER(0x5001,
QUICKTEXT_ENABLE "Ich habe beim Graben einen Schatz\n"
"gefunden - der wird lang und kurz\n"
"und macht \"KLING\"!\n"
"Den behalt ich!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x5002,
"Des " COLOR("\x41") "Totengräbers" COLOR("\x40") " Tagebuch.\n"
"Willst Du es lesen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x5003,
QUICKTEXT_ENABLE "Wer immer dies liest, der möge\n"
"mein Grab betreten. Ihm gebe ich\n"
"meinen langen, kurzen " COLOR("\x41") "Schatz" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Ich warte!\n"
"Boris" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x5004,
QUICKTEXT_ENABLE "Das ist auch besser so!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x5005,
"Du hast einen Geist vernichtet!"BOX_BREAK"Willst Du ihn in einer\n"
"Flasche aufbewahren?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x5006,
"Du willst ihn aufbewahren, besitzt\n"
"aber keine leere Flasche."
);

DECLARE_MESSAGE_GER(0x5007,
"Für den Augenblick läßt Du\n"
"ihn gehen."
);

DECLARE_MESSAGE_GER(0x5008,
"Du hast ein Irrlicht gefangen!"
);

DECLARE_MESSAGE_GER(0x5009,
UNSKIPPABLE  QUICKTEXT_ENABLE "Das Sonnenlicht, es schwindet\n"
"bei Nacht...\n"
"Erst am Tag ist wieder sein Feuer\n"
"entfacht." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Von Sonne zu Mond und zu Sonne\n"
"erneut..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Ewige Ruhe die lebenden Toten\n"
"erfreut." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ziemlich schöne Lyrik, nicht wahr?"
);

DECLARE_MESSAGE_GER(0x500A,
QUICKTEXT_ENABLE "Ruhelose Seelen wandern ohne Wonne.\n"
"Gib Frieden mit der " COLOR("\x46") "Hymne der Sonne" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x500B,
UNSKIPPABLE "Da ist eine Inschrift auf diesem\n"
"Grabstein..."BOX_BREAK
UNSKIPPABLE "Eine " COLOR("\x46") "geheime Weise" COLOR("\x40") " der\n"
"Gebrüder Brahmstein!"
);

DECLARE_MESSAGE_GER(0x500C,
"Das weltbeste Elixier! Sagen wir\n"
COLOR("\x41") "100 Rubine" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x500D,
"Wenn Du Deine Meinung änderst,\n"
"kannst Du ja wieder herkommen.\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x500E,
"Du hast nicht genügend Rubine!\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x500F,
UNSKIPPABLE  QUICKTEXT_ENABLE "AARGH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "DU" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "HAST MICH" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "BEZWUNGEN!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
QUICKTEXT_ENABLE "Unglaublich!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Wie?\n"
"Du bist doch nicht einer von\n"
"Ganondorfs Schergen, oder?"BOX_BREAK
UNSKIPPABLE "Als Gespenst muß ich mich so\n"
"komisch benehmen. Tut mir leid."BOX_BREAK
UNSKIPPABLE "Alsdann, ich glaube, ich stelle\n"
"mich mal vor!\n"
"Ähem..." TEXTID("\x50\x10")
);

DECLARE_MESSAGE_GER(0x5010,
"Ich bin einer der geisterhaften\n"
"Komponisten-Brüder von Kakariko."BOX_BREAK"Wie alle Hylianer, so dienten auch\n"
"wir dem König dieses Landes."BOX_BREAK"Wir, die Gebrüder Brahmstein,\n"
"waren beauftragt, die mystische\n"
"Macht der königlichen Familie zu\n"
"untersuchen."BOX_BREAK"Wir haben bis jetzt die Macht des\n"
"Triforce nicht erklären können."BOX_BREAK"Aber unsere \"" COLOR("\x41") "Studien zur Macht\n"
"über die Zeit mittels Tönen\n"
"einer Okarina" COLOR("\x40") "\" haben wir\n"
"fast abgeschlossen!"BOX_BREAK"Um ehrlich zu sein..."BOX_BREAK"Wir haben unsere Studien dazu\n"
"bereits beendet!"BOX_BREAK"Wir wären berühmt geworden, wenn\n"
"dieser widerliche Ganondorf nicht\n"
"versucht hätte, die Aufzeichnungen \n"
"zu stehlen."BOX_BREAK"Wir konnten es nicht zulassen, daß\n"
"er die Früchte unserer Arbeit an\n"
"sich reißt!"BOX_BREAK"Daher haben wir unser Leben\n"
"riskiert, um diese Geheimnisse zu\n"
"bewahren." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_GER(0x5011,
"Möchtest Du unsere Geschichte\n"
"noch einmal hören?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x5012,
UNSKIPPABLE  QUICKTEXT_ENABLE "AARGH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "ICH BIN" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "WIEDER" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "BESIEGT!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Was? Du schon wieder?"BOX_BREAK
UNSKIPPABLE "Wenn ich Dich so ansehe, muß ich\n"
"an Prinzessin Zelda denken."BOX_BREAK
UNSKIPPABLE "Da Du offenbar mit der\n"
"Königsfamilie in Kontakt stehst,\n"
"kann ich Dir ein wenig mehr über\n"
"uns erzählen."BOX_BREAK
UNSKIPPABLE "Damals nannten uns die Leute\n"
"überall \"Die tadellosen Tonsetzer\",\n"
"da wir viele Meisterwerke\n"
"komponiert haben."BOX_BREAK
UNSKIPPABLE "Aber wir waren nicht nur\n"
"Komponisten!"BOX_BREAK
UNSKIPPABLE "Wir hatten auch einen Auftrag!\n"
"Wir sollten die geheimnisvollen\n"
"Kräfte der hylianischen \n"
"Königsfamilie untersuchen."BOX_BREAK
UNSKIPPABLE "Unsere Namen wären in die\n"
"Geschichte Hyrules eingegangen,\n"
"wenn wir unsere Studien beendet\n"
"hätten."BOX_BREAK
UNSKIPPABLE "Wir haben diese Studien natürlich\n"
"stets streng geheim gehalten!" TEXTID("\x50\x14")
);

DECLARE_MESSAGE_GER(0x5013,
UNSKIPPABLE  QUICKTEXT_ENABLE "AARGH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "ICH BIN" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "SCHON WIEDER" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "TOT!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Was? Du schon wieder?"BOX_BREAK
UNSKIPPABLE "Wenn ich Dich so anschaue, muß\n"
"ich an Prinzessin Zelda denken..."BOX_BREAK
UNSKIPPABLE "Wenn Du mit der Königsfamilie\n"
"näher bekannt bist, kann ich Dir\n"
"ja etwas mehr über uns erzählen." TEXTID("\x50\x14")
);

DECLARE_MESSAGE_GER(0x5014,
"Mein Bruder und ich studierten\n"
"verschiedene Melodien: Eine, den\n"
COLOR("\x41") "Mond zu beschwören" COLOR("\x40") ", und eine\n"
"andere, die " COLOR("\x41") "Sonne herbeizurufen" COLOR("\x40") "!"BOX_BREAK"Da Du von einem Angehörigen des\n"
"Königshauses geschickt wurdest,\n"
"will ich Dir von den Ergebnissen\n"
"unserer Untersuchungen berichten."BOX_BREAK"Sie stehen geschrieben auf dem\n"
COLOR("\x41") "königlichen Grabstein" COLOR("\x40") "."BOX_BREAK"Zeige auf musikalische Weise, daß\n"
"Du in königlichem Auftrag\n"
"unterwegs bist, wenn Du auf dem\n"
"Triforce vor dem Grab stehst." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_GER(0x5015,
"Zzzzzzzz..."BOX_BREAK"Malon... geht es gut...\n"
"Grummel... Murmel...\n"
"Tut mir leid, wenn Du Dir Sorgen\n"
"machst..."
);

DECLARE_MESSAGE_GER(0x5016,
"Die Lon Lon-Farm wurde von Basil\n"
"übernommen und heißt jetzt\n"
COLOR("\x41") "Basil-Farm" COLOR("\x40") "."BOX_BREAK"Mich hat man hinausgeworfen -\n"
"schau mich nur an! Meine Tochter\n"
"Malon arbeitet noch immer dort."BOX_BREAK"Ich mache mir Sorgen..."
);

DECLARE_MESSAGE_GER(0x5017,
"Du hast Malon gerettet? Danke!\n"
"Dann kann ich ja wieder\n"
"auf die Farm zurück."
);

DECLARE_MESSAGE_GER(0x5018,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hey, Kleiner!" QUICKTEXT_DISABLE "\n"
"Was hast Du hier zu suchen?"BOX_BREAK
UNSKIPPABLE "Ich bin " COLOR("\x41") "Boris, der Totengräber" COLOR("\x40") "!\n"
"Ich sehe vielleicht zum Fürchten\n"
"aus, aber ich bin ganz harmlos..."BOX_BREAK
UNSKIPPABLE "Laß mich Dir ein bißchen von\n"
"meinem Nebenjob erzählen:"BOX_BREAK
UNSKIPPABLE "Ich, der " COLOR("\x41") "Totengräber Boris" COLOR("\x40") ",\n"
"lade ein zur...\n"
COLOR("\x44") "Grausigen Grabgrusel-Tour" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Was kommt dabei raus?!\n"
"Was kommt dabei raus?!\n"
"Lasset uns graben und\n"
"wir finden's heraus!" TEXTID("\x50\x19")
);

DECLARE_MESSAGE_GER(0x5019,
"Willst Du, daß ich hier grabe?\n"
COLOR("\x41") "10 Rubine" COLOR("\x40") " für ein Loch.\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Laß mal bleiben!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x501A,
COLOR("\x41") "Nein, hier ist nichts!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x501B,
UNSKIPPABLE  SHIFT("\x23") "Zurück, " NAME "!"
);

DECLARE_MESSAGE_GER(0x501C,
UNSKIPPABLE  NAME "...\n"
"Etwas Schreckliches ist passiert!\n"
"Der " COLOR("\x41") "Schattendämon" COLOR("\x40") " ist\n"
"aus seinem Gefängnis entkommen!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Impa" COLOR("\x40") ", die Gründerin Kakarikos,\n"
"hatte den Schattendämon einst auf\n"
"den Grund des Brunnens verbannt\n"
"und dort eingeschlossen..."BOX_BREAK
UNSKIPPABLE "Doch die Kraft des Dämons wurde\n"
"in letzter Zeit immer stärker, so\n"
"daß das Siegel brach und er wieder\n"
"in die Oberwelt entkommen konnte!"
);

DECLARE_MESSAGE_GER(0x501D,
UNSKIPPABLE "Ich werde mich um das Dorf\n"
"kümmern!\n"
"Ich zähle auf Dich,\n"
NAME "!"
);

DECLARE_MESSAGE_GER(0x501E,
QUICKTEXT_ENABLE  SHIFT("\x25") "Gebrüder Brahmstein,\n"
SHIFT("\x2E") "königliche Tonsetzer.\n"
SHIFT("\x33") "Johann, der Ältere\n"
SHIFT("\x50") "R.I.P." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x501F,
QUICKTEXT_ENABLE  SHIFT("\x25") "Gebrüder Brahmstein,\n"
SHIFT("\x2E") "königliche Tonsetzer.\n"
SHIFT("\x30") "Ludwig, der Jüngere\n"
SHIFT("\x50") "R.I.P." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x5020,
QUICKTEXT_ENABLE  SHIFT("\x4A") "Königsgrab" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x5021,
UNSKIPPABLE  QUICKTEXT_ENABLE "Dieses Gedicht wurde im Gedenken\n"
SHIFT("\x0A") "an die teuren Verstorbenen der\n"
SHIFT("\x14") "königlichen Familie verfasst." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x5022,
UNSKIPPABLE "Du hast die Kreatur des Bösen\n"
"bezwungen und den Fluch vom\n"
"Schattentempel genommen!\n"
"Hab Dank dafür, " NAME "!"BOX_BREAK
UNSKIPPABLE "Denn ich bin nicht allein\n"
"Prinzessin Zeldas Vertraute,\n"
"sondern auch jene Weise, die\n"
"über den Tempel wacht!"
);

DECLARE_MESSAGE_GER(0x5023,
UNSKIPPABLE  SHIFT("\x1B") "Bitte suche die Prinzessin!" FADE("\x32")
);

DECLARE_MESSAGE_GER(0x5024,
UNSKIPPABLE  NAME ", der Auserwählte!\n"
"Endlich!"BOX_BREAK
UNSKIPPABLE "Alle " COLOR("\x41") "Sechs Weisen " COLOR("\x40") "sind erweckt!\n"
"Es ist soweit: Der entscheidende\n"
"Kampf gegen den Großmeister des\n"
"Bösen soll nun beginnen!"BOX_BREAK
UNSKIPPABLE "Zuvor jedoch sollst Du jene\n"
"treffen, die auf Dich wartet..."BOX_BREAK
UNSKIPPABLE "Sie harrt Deiner in der\n"
COLOR("\x44") "Zitadelle der Zeit" COLOR("\x40") "..."
);

DECLARE_MESSAGE_GER(0x5025,
UNSKIPPABLE "Die Shiekahs waren seit\n"
"Generationen die getreuen Diener\n"
"des Königsgeschlechts von Hyrule.\n"
"Jedoch..."BOX_BREAK
UNSKIPPABLE "...auf den Tag genau vor sieben\n"
"Jahren griff Ganondorf das Schloß\n"
"an... Nach kurzem Kampf\n"
"schon ergab sich Hyrules König."BOX_BREAK
UNSKIPPABLE "Ganondorf wollte den Schlüssel\n"
"zum Heiligen Reich, den\n"
"bestgehüteten Schatz der\n"
"Königsfamilie: Die Okarina der Zeit!"BOX_BREAK
UNSKIPPABLE "Meine Aufgabe war, Prinzessin \n"
"Zelda zu retten und sie vor dem\n"
"Zugriff Ganondorfs zu bewahren."BOX_BREAK
UNSKIPPABLE "Als ich Dich damals bei unserer\n"
"Flucht aus dem Schloß sah, warst\n"
"Du nur ein kleiner Junge..."BOX_BREAK
UNSKIPPABLE "Jetzt ist aus Dir ein stolzer\n"
"Held geworden!"
);

DECLARE_MESSAGE_GER(0x5026,
UNSKIPPABLE "Gehe nun! Stehe Prinzessin\n"
"Zelda an meiner Stelle zur Seite\n"
"und beschütze sie."BOX_BREAK
UNSKIPPABLE "Meine Kraft soll Dich begleiten.\n"
"Ich lege sie in dieses " COLOR("\x43") "Amulett" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x5027,
"Nun? Ist Kiki fröhlich und\n"
"zufrieden? Soll ich sie mir\n"
"einmal anschauen?"
);

DECLARE_MESSAGE_GER(0x5028,
UNSKIPPABLE  SFX("\x68\x55") "Ich bin der " COLOR("\x41") "Chef der Zimmerleute" COLOR("\x40") ".\n"
"Impa hat uns angestellt, diesen\n"
"Ort in eine eindrucksvolle Stadt \n"
"zu verwandeln!"BOX_BREAK
UNSKIPPABLE "Aber die jungen Kerle von heute\n"
"haben keinen Ehrgeiz mehr!\n"
"Weißt Du, was ich meine, Junge?"BOX_BREAK
UNSKIPPABLE "Meine Arbeiter rennen nur planlos\n"
"im Dorf herum und machen bei\n"
"ihrer Arbeit keinerlei Fortschritte!"BOX_BREAK
UNSKIPPABLE "Sogar mein Sohn ist ein fauler\n"
"Sack und hängt den ganzen Tag\n"
"nur in der Gegend rum!" TEXTID("\x50\x29")
);

DECLARE_MESSAGE_GER(0x5029,
UNSKIPPABLE "Ich sage Dir: Die jungen\n"
"Leute sind zu nichts mehr \n"
"zu gebrauchen!"
);

DECLARE_MESSAGE_GER(0x502A,
"Schau Dir die Kleine da drüben an.\n"
"Sie kümmert sich aufopferungsvoll\n"
"um ihre Hühner, und das, obwohl sie \n"
"gegen Federn allergisch ist."BOX_BREAK"Was für ein Mädchen! Ich würde\n"
"ihr gern helfen, ich fühle mich zur\n"
"Zeit wie ein Wohltäter! Geht's Dir\n"
"nicht auch so?"
);

DECLARE_MESSAGE_GER(0x502B,
UNSKIPPABLE "Wir müssen uns keine Sorgen\n"
"machen...\n"
"Die Prinzessin ist jetzt in\n"
"Sicherheit."
);

DECLARE_MESSAGE_GER(0x502C,
UNSKIPPABLE "Schon bald wirst Du Prinzessin\n"
"Zelda von Angesicht zu Angesicht\n"
"gegenübertreten. Sie wird Dir\n"
"alles erklären..."BOX_BREAK
UNSKIPPABLE "Dann, wenn die Sechs Weisen den\n"
"Großmeister des Bösen verbannt\n"
"haben und wieder Frieden in \n"
"Hyrule eingekehrt ist!"
);

DECLARE_MESSAGE_GER(0x502D,
UNSKIPPABLE "Hehehe, Junge...\n"
"Du bist gut zu Fuß, was?"BOX_BREAK
UNSKIPPABLE "Zur Belohnung werde ich Dir\n"
"meinen " COLOR("\x41") "Fanghaken" COLOR("\x40") " anvertrauen."BOX_BREAK
UNSKIPPABLE "Damit wirst Du nun an Orte\n"
"gelangen, die bisher außerhalb\n"
"Deiner Reichweite lagen."BOX_BREAK
UNSKIPPABLE "Besuch mich doch mal wieder,\n"
"wenn Du in der Gegend bist. Dann\n"
"gebe ich Dir wieder etwas\n"
"Wertvolles!"BOX_BREAK
UNSKIPPABLE "Noch etwas: Sei auf Deinem\n"
"Rückweg sehr vorsichtig..."
);

DECLARE_MESSAGE_GER(0x502E,
"Du bist ja wieder da, Junge...\n"
"Hat Dir mein Geschenk\n"
"etwas genützt?"
);

DECLARE_MESSAGE_GER(0x502F,
SHIFT("\x3A") "Die Zeit beträgt\n"
SHIFT("\x4B")  RACE_TIME "!" EVENT
);

DECLARE_MESSAGE_GER(0x5030,
UNSKIPPABLE "Sieht aus, als würdest\n"
"Du es überstehen..."
);

DECLARE_MESSAGE_GER(0x5031,
UNSKIPPABLE "Ich glaube, Impa ging zum \n"
COLOR("\x45") "Schattentempel" COLOR("\x40") ", um ihn wieder zu\n"
"versiegeln. Ohne Hilfe wird\n"
"sie dort in großer Gefahr sein!"BOX_BREAK
UNSKIPPABLE  NAME "!\n"
"Impa ist eine der Sechs Weisen.\n"
"Vernichte den Schattendämon und\n"
"rette Impa!"BOX_BREAK
UNSKIPPABLE "Es gibt einen Zugang zum\n"
"Schattentempel hinter dem\n"
"Friedhof von Kakariko."BOX_BREAK
UNSKIPPABLE "Alles, was ich für Dich tun kann,\n"
"ist, Dich die Melodie zu lehren, die\n"
"Dich zum Schattentempel bringt..."BOX_BREAK
UNSKIPPABLE "Diese Melodie führt Dich in die\n"
"unendliche Dunkelheit, die sogar die\n"
"Zeit absorbiert... Höre nun\n"
"die " COLOR("\x45") "Nocturne des Schattens" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x5032,
"Ich mag es, im Rhythmus dieser\n"
"Mühle Musik zu machen!\n"
"Das macht Riesenspaß!"BOX_BREAK"Ich liebe Musik!\n"
"Ich liebe diese Mühle!"BOX_BREAK"Ich will selbst einmal etwas\n"
"komponieren. Vielleicht eine\n"
"Melodie, die von der Mühle\n"
"oder vom Wind erzählt!"
);

DECLARE_MESSAGE_GER(0x5033,
"Das ist eine sehr schöne Melodie...\n"
"Huch! Jetzt geht es aber\n"
"doch zu schnell!"
);

DECLARE_MESSAGE_GER(0x5034,
"Grrrrrrrrr!"BOX_BREAK"Ich werde nie vergessen, was vor\n"
"sieben Jahren geschehen ist!\n"
"Grrrrrrrrr!"BOX_BREAK"Daran ist nur dieser Typ\n"
"mit seiner Okarina schuld!\n"
"Wenn er sich nochmal sehen\n"
"läßt, kann er etwas erleben!"
);

DECLARE_MESSAGE_GER(0x5035,
UNSKIPPABLE "Was?! Du besitzt eine Okarina!"BOX_BREAK
UNSKIPPABLE "Das darf doch nicht wahr sein!"BOX_BREAK
UNSKIPPABLE "Das erinnert mich an diesen\n"
"Tag vor genau sieben Jahren!"BOX_BREAK
UNSKIPPABLE "Damals kam so ein Rattengesicht\n"
"hier herein und hat ein " COLOR("\x45") "seltsames" COLOR("\x43") "\n"
COLOR("\x45") "Lied" COLOR("\x40") " gespielt. Das hat alles \n"
"durcheinander gebracht!"
);

DECLARE_MESSAGE_GER(0x5036,
"Was soll ich nur tun!?\n"
"Meine " COLOR("\x41") "Hühner" COLOR("\x40") " sind alle\n"
"davongeflogen!"BOX_BREAK"Bitte!\n"
"Hilf mir, die Hühner wieder\n"
"einzusammeln!"
);

DECLARE_MESSAGE_GER(0x5037,
"Das machst Du sehr gut!\n"
"Bring doch bitte noch die\n"
"anderen vier zurück!"
);

DECLARE_MESSAGE_GER(0x5038,
"Prima! Du bist ein echter\n"
"Hühnerfänger!\n"
"Bring doch auch die anderen\n"
"drei zurück!"
);

DECLARE_MESSAGE_GER(0x5039,
"Klasse! Du bist richtig lieb!\n"
"Bring doch noch die anderen\n"
"zwei zurück! Bitte!"
);

DECLARE_MESSAGE_GER(0x503A,
"Super! Jetzt hast Du fast alle!\n"
"Bring doch bitte noch das letzte\n"
"Huhn zurück!"
);

DECLARE_MESSAGE_GER(0x503B,
UNSKIPPABLE "Danke, daß Du meine Hühner\n"
"eingesammelt hast. Ich bin nämlich\n"
"allergisch und bekomme einen\n"
"Ausschlag, wenn ich sie anfasse."BOX_BREAK
UNSKIPPABLE "Dafür, daß Du mir geholfen\n"
"hast, gebe ich Dir etwas\n"
"sehr Wertvolles!" EVENT
);

DECLARE_MESSAGE_GER(0x503C,
"Hey, was machst Du denn da?!\n"
"Sammle sie ein oder zahle dafür!" EVENT
);

DECLARE_MESSAGE_GER(0x503D,
"Ärgere die Hühner bitte nicht!"
);

DECLARE_MESSAGE_GER(0x503E,
UNSKIPPABLE "Ich habe ein neues Huhn\n"
"gezüchtet! Ich nenne es " COLOR("\x41") "Kiki" COLOR("\x40") ", und \n"
"ich bekomme keine Allergie, wenn\n"
"ich es anfasse."BOX_BREAK
UNSKIPPABLE "Es paßt auch in die Hosentasche\n"
"und ist praktisch, um faule\n"
"Langschläfer aufzuwecken! Schon\n"
"mal was davon gehört?"BOX_BREAK
UNSKIPPABLE "Es hat Spaß dabei, richtig laut zu\n"
"gackern. Ganz besonders, wenn es\n"
"eine Schlafmütze aufwecken darf!"BOX_BREAK
UNSKIPPABLE "Aber... so ganz zufrieden ist\n"
"Kiki im Augenblick noch nicht..."BOX_BREAK
UNSKIPPABLE "Du... Du siehst aus, als\n"
"hättest Du ein glückliches\n"
"Händchen für Hühner!"BOX_BREAK
UNSKIPPABLE "Hier, nimm dieses Ei mit.\n"
"Ist Kiki ausgeschlüpft, dann bring\n"
"es irgendwann zu mir zurück und\n"
"ich schaue, wie es sich fühlt." TEXTID("\x50\x3F")
);

DECLARE_MESSAGE_GER(0x503F,
"Was hältst Du davon? \n"
"Willst Du es ausprobieren?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x5040,
"Oh, wie schade... Haben die Hühner\n"
"immer nach Dir gehackt, als Du\n"
"noch kleiner warst?" EVENT
);

DECLARE_MESSAGE_GER(0x5041,
"Hehehe, Junge!\n"
"Bist Du gut zu Fuß?"BOX_BREAK"Ich seh vielleicht nicht so aus,\n"
"aber ich bin ganz schön schnell!\n"
"Laß uns um die Wette laufen! \n"
"Wenn Du es Dir zutraust..."
);

DECLARE_MESSAGE_GER(0x5042,
"Bitte sorge gut für Kiki!\n"
"Okay?"
);

DECLARE_MESSAGE_GER(0x5043,
UNSKIPPABLE "Oh, Kiki sieht ja sehr gesund und\n"
"fröhlich aus. Es muß eine arge\n"
"Schlafmütze geweckt haben!"BOX_BREAK
UNSKIPPABLE "Das hast Du gut gemacht!\n"
"Ich werde Dir ein sehr seltenes\n"
"Hühnchen mitgeben, wenn Du willst."BOX_BREAK
UNSKIPPABLE "Ich nenne es " COLOR("\x41") "Henni" COLOR("\x40") ", es hat einmal\n"
"meinem Bruder gehört. Die blauen \n"
"Federn sehen sehr schön aus,\n"
"nicht wahr? Es ist sooooo süß!"BOX_BREAK
UNSKIPPABLE "Seit mein Bruder verschwunden ist,\n"
"gackert Henni gar nicht mehr!" TEXTID("\x50\x44")
);

DECLARE_MESSAGE_GER(0x5044,
"Möchtest Du " COLOR("\x41") "Henni" COLOR("\x40") " behalten?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x5045,
"Also magst Du Kiki doch lieber.\n"
"Okay, dann behalte sie noch für\n"
"eine Weile!" EVENT
);

DECLARE_MESSAGE_GER(0x5046,
"Eine alte Vettel betreibt den\n"
"Hexenladen hinter diesem Shop.\n"
"Nimm die Tür links neben der\n"
"Theke, wenn Du hinein willst!" EVENT
);

DECLARE_MESSAGE_GER(0x5047,
"Mein Bruder muß sehr einsam\n"
"gewesen sein..."
);

DECLARE_MESSAGE_GER(0x5048,
"Ich habe gehört, daß die\n"
COLOR("\x42") "Verlorenen Wälder" COLOR("\x40") " ein mysteriöser\n"
"Ort mit vielen, noch seltsameren\n"
"Gewächsen sind."BOX_BREAK"Ich würde gern mal eine Medizin\n"
"mit einem der seltsamen Gewächse\n"
"zusammenbrauen, die es dort gibt."BOX_BREAK"Ich sehe vielleicht nicht mehr so\n"
"gut, aber meine Nase ist noch\n"
"sehr fein! Hihihi!"
);

DECLARE_MESSAGE_GER(0x5049,
"Schnüffel..."BOX_BREAK"Welch ein seltsamer Duft..."BOX_BREAK"Du mußt etwas gefunden haben!"
);

DECLARE_MESSAGE_GER(0x504A,
"Dieser Taugenichts! \n"
"Er mußte unbedingt in den Wald\n"
"gehen...\n"
TEXT_SPEED("\x01") "Hmmm..." TEXT_SPEED("\x00") " Ich verstehe." TEXTID("\x50\x4B")
);

DECLARE_MESSAGE_GER(0x504B,
"Hey, gib das sofort her!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x504C,
"Wie schade... Ich brauche nur\n"
"ein bißchen..."
);

DECLARE_MESSAGE_GER(0x504D,
UNSKIPPABLE "Wenn Du den Dummkopf siehst,\n"
"dann gib ihm dies. Es ist die\n"
"stärkste Medizin, die ich je \n"
"gebraut habe."BOX_BREAK
UNSKIPPABLE "Aber sie wirkt nicht bei jedem!" EVENT
);

DECLARE_MESSAGE_GER(0x504E,
"Hey, Kleiner! Wenn Du die Medizin\n"
"mitnehmen möchtest, brauchst Du\n"
"etwas zum Aufbewahren!" EVENT
);

DECLARE_MESSAGE_GER(0x504F,
"Es heißt, gegen Dummheit ist kein\n"
"Kraut gewachsen...\n"
"Ich glaube, das ist wahr..."
);

DECLARE_MESSAGE_GER(0x5050,
"Ich komme nicht mehr vom Dach\n"
"herunter. Aber dafür kann ich\n"
"Tag und Nacht den " COLOR("\x41") "Todesberg\n"
COLOR("\x40") "anschauen!"
);

DECLARE_MESSAGE_GER(0x5051,
"Ich komm hier nicht mehr runter.\n"
"Ich kann nur noch dauernd die\n"
"Sterne anschauen."
);

DECLARE_MESSAGE_GER(0x5052,
"Siehst Du das von hier aus? \n"
"Irgendetwas passiert auf dem\n"
COLOR("\x41") "Todesberg" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x5053,
"Siehst Du das von hier aus?\n"
"Auf dem " COLOR("\x41") "Todesberg " COLOR("\x40") "ist alles\n"
"wieder wie früher!"
);

DECLARE_MESSAGE_GER(0x5054,
"Eigentlich will ich gar nicht mehr \n"
"von diesem Dach herunter!\n"
"Egal was passiert, ich schaue mir\n"
"lieber den Todesberg an."
);

DECLARE_MESSAGE_GER(0x5055,
UNSKIPPABLE "Hey! Schön, Dich wiederzusehen!\n"
"Ich gebe Dir dieses\n"
"Erinnerungsstück."
);

DECLARE_MESSAGE_GER(0x5056,
"Für einen guten Überblick drückst\n"
"Du einfach " COLOR("\x46") "[C-Up]" COLOR("\x40") " und schaust mit\n"
COLOR("\x44") "[Control Stick]" COLOR("\x40") " umher."
);

DECLARE_MESSAGE_GER(0x5057,
UNSKIPPABLE "Hey! Betrittst Du fremde Häuser\n"
"immer unaufgefordert? Haben Dir \n"
"Deine Eltern keine Manieren\n"
"beigebracht?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x4E") "Na, egal..."BOX_BREAK
UNSKIPPABLE "Hast Du die Frau hinter dem\n"
"Haus gesehen? Sie hat's zur Zeit\n"
"nicht leicht."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4E") "Na, egal..." TEXTID("\x50\x58")
);

DECLARE_MESSAGE_GER(0x5058,
"Sollte die Frau mal etwas über\n"
"Hühner erzählen, hör ihr gut zu."
);

DECLARE_MESSAGE_GER(0x5059,
UNSKIPPABLE "Macht es Dir Spaß, fremde Leute\n"
"zu so später Stunde noch zu\n"
"belästigen? Du hast wohl gar\n"
"keine Erziehung genossen."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4E") "Na, egal..." TEXTID("\x50\x5A")
);

DECLARE_MESSAGE_GER(0x505A,
"Die Frau kümmert sich um die\n"
"Hühner, reagiert aber allergisch\n"
"auf Federn."BOX_BREAK
SHIFT("\x4E") "Na, egal..."
);

DECLARE_MESSAGE_GER(0x505B,
UNSKIPPABLE "Hey! Junge! Du bist fast\n"
"erwachsen und betrittst ein\n"
"fremdes Haus ohne Erlaubnis?!\n"
"Ich will mit Deinen Eltern reden!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x4E") "Na, egal..."BOX_BREAK
UNSKIPPABLE "Das hier ist sowieso nicht mein\n"
"Haus. Es ist das Haus\n"
"der " COLOR("\x41") "mächtigen Impa" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Die mächtige Impa ging zum\n"
COLOR("\x41") "Friedhof" COLOR("\x40") ", um eine widerliche\n"
"Kreatur zu bezwingen."BOX_BREAK
UNSKIPPABLE "Seit Ganondorf aufgetaucht ist,\n"
"wimmelt es nämlich von\n"
"ekligen Kreaturen!"BOX_BREAK
UNSKIPPABLE "Nur die mächtige Impa hat für\n"
"Frieden in unserem Dorf sorgen\n"
"können. Merk Dir das gut, mein \n"
"Junge!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x50") "Nun gut."BOX_BREAK
UNSKIPPABLE "Apropos Impa: Sie ist noch immer \n"
"nicht zurück. Ich frage mich, was\n"
"da passiert ist!" TEXTID("\x50\x5C")
);

DECLARE_MESSAGE_GER(0x505C,
"Ich habe gehört, daß der " COLOR("\x41") "Geist\n"
"des Totengräbers" COLOR("\x40") " öfters noch\n"
"auf dem Friedhof hinter dem Dorf\n"
"herumspukt..."BOX_BREAK
SHIFT("\x14") "Aber das ist nicht so wichtig."
);

DECLARE_MESSAGE_GER(0x505D,
UNSKIPPABLE "Hey, Kleiner! Bist Du zum ersten\n"
"Mal in Kakariko?"BOX_BREAK
UNSKIPPABLE "Die mächtige " COLOR("\x41") "Impa" COLOR("\x40") ", eine großartige\n"
"Frau, hat das Dorf für einfache\n"
"Leute wie uns erbauen lassen." TEXTID("\x50\x5E")
);

DECLARE_MESSAGE_GER(0x505E,
"Fühle Dich ganz wie zu Hause.\n"
"Das Essen ist allerdings\n"
"noch nicht fertig!"
);

DECLARE_MESSAGE_GER(0x505F,
"Die mächtige Impa ist nicht hier.\n"
"Ob etwas passiert ist?"
);

DECLARE_MESSAGE_GER(0x5060,
UNSKIPPABLE "Wir alle haben Schweres\n"
"durchgemacht. Aber wir möchten\n"
"das lieber für uns behalten." TEXTID("\x50\x61")
);

DECLARE_MESSAGE_GER(0x5061,
"Schau Dir den Bärtigen auf dem\n"
"Bett an. Ich wette, sogar einer\n"
"wie er hat seine Probleme..."
);

DECLARE_MESSAGE_GER(0x5062,
"Der Bärtige ist wieder zur Farm\n"
"zurück.\n"
"Er sah richtig glücklich aus!"
);

DECLARE_MESSAGE_GER(0x5063,
UNSKIPPABLE "Es ist jetzt " TIME " Uhr!\n"
"Die richtige Zeit, um Dir etwas\n"
"über das Dorf zu erzählen!"BOX_BREAK
UNSKIPPABLE "Zeldas Dienerin, die mächtige\n"
COLOR("\x41") "Impa" COLOR("\x40") ", erbaute dieses Dorf für\n"
"einfache Leute wie uns."BOX_BREAK
UNSKIPPABLE "Noch wohnen hier wenige,\n"
"aber eines Tages wird es genau\n"
"so lebhaft sein wie in Hyrule!\n"
"Oh ja, das wird es!"BOX_BREAK
UNSKIPPABLE "Steige die " COLOR("\x41") "Stufen im Norden \n"
"des Dorfes" COLOR("\x40") " hinauf.\n"
"Dort gelangst Du zu dem Paß,\n"
"der zum Todesberg führt."BOX_BREAK
UNSKIPPABLE "Aber Du brauchst des Königs\n"
"Erlaubnis, um diesen Weg nehmen\n"
"zu können."
);

DECLARE_MESSAGE_GER(0x5064,
"Es ist jetzt genau " TIME " Uhr."
);

DECLARE_MESSAGE_GER(0x5065,
"Es ist jetzt " TIME " Uhr.\n"
"Ach, übrigens: Weißt Du, was im\n"
"Schloß passiert ist?"
);

DECLARE_MESSAGE_GER(0x5066,
UNSKIPPABLE "Hey, Junge, was treibst Du Dich\n"
"hier mitten in der Nacht herum?"BOX_BREAK
UNSKIPPABLE "Ah, ich verstehe. Du willst Deinen\n"
"Mut testen! Du willst bestimmt...\n"
"auf den Friedhof!"BOX_BREAK
UNSKIPPABLE "Moment mal! Was rede ich\n"
"eigentlich mit so einem\n"
"Milchbubi? Ich muß Wache\n"
"stehen und meinen Mund halten!" TEXTID("\x50\x67")
);

DECLARE_MESSAGE_GER(0x5067,
"Es ist jetzt " TIME " Uhr.\n"
"Genau die richtige Zeit, um\n"
"Gräber zu besuchen!"BOX_BREAK"Geh nach Osten zum " COLOR("\x41") "Friedhof" COLOR("\x40") ".\n"
"Legenden besagen, man könne die\n"
"ruhelosen Seelen mit einem\n"
COLOR("\x43") "königlichen Schlaflied" COLOR("\x40") " besänftigen..."
);

DECLARE_MESSAGE_GER(0x5068,
"Ein komischer Typ lebt in der \n"
"Windmühle. Warst Du schon bei\n"
"ihm, großer Held?"
);

DECLARE_MESSAGE_GER(0x5069,
"Menschen sind widerlich. \n"
"Meine Eltern sind widerlich.\n"
"Du bist bestimmt auch widerlich!"
);

DECLARE_MESSAGE_GER(0x506A,
"Wir arbeiten den ganzen Tag lang\n"
"auf verschiedenen Baustellen hier\n"
"im Dorf. Es dauert wohl noch eine\n"
"Weile, bis alles fertig ist."BOX_BREAK"Unser Chef ist ein ziemlicher\n"
"Sklaventreiber!"
);

DECLARE_MESSAGE_GER(0x506B,
"Ich komme um vor Hunger!\n"
"Laß uns sofort etwas essen!"
);

DECLARE_MESSAGE_GER(0x506C,
"Jeder von ihnen arbeitet nur halb\n"
"so viel, wie er sollte. Aber sie\n"
"wollen immer eine\n"
"doppelte Portion essen!"
);

DECLARE_MESSAGE_GER(0x506D,
QUICKTEXT_ENABLE  COLOR("\x41") "Irrlicht   30 Rubine\n"
COLOR("\x40") "Dies ist ein Geist in einer Flasche. \n"
"Verkaufe ihn an jemanden, der\n"
"solch verrückte Dinge mag." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x506E,
QUICKTEXT_ENABLE "Irrlicht  30 Rubine" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x506F,
"506f"
);

DECLARE_MESSAGE_GER(0x5070,
"Meine Hühner sind davongerannt!\n"
"Bitte fange noch sechs weitere!"
);

DECLARE_MESSAGE_GER(0x5071,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME "!\n"
"Das Schiff sinkt!\n"
"Spring ab!\n"
"Rette Dich auf festen Boden!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x5072,
"Ich habe noch nicht alle Hühner!\n"
"Bitte fange noch fünf ein!"
);

DECLARE_MESSAGE_GER(0x5073,
QUICKTEXT_ENABLE "Mach bloß keinen Ärger!\n"
"Ich sag's Boris!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x5074,
"Schau Dir das an, Kleiner!\n"
"Meine schönen, zarten Hände sind\n"
"von der Arbeit ganz rissig!\n"
"Schnief..."
);

DECLARE_MESSAGE_GER(0x5075,
"Ein Job, bei dem Du viel Geld für\n"
"wenig Arbeit bekommst... Da fällt\n"
"mir nur Diebstahl ein... Du findest,\n"
"das wäre keine gute Idee?"
);

DECLARE_MESSAGE_GER(0x5076,
"Ich habe gehört, das Haus\n"
"unseres Chefs liegt direkt hinter\n"
"diesem. Aber er will nicht, daß wir\n"
"es wissen."
);

DECLARE_MESSAGE_GER(0x5077,
"Hast Du " COLOR("\x41") "Boris" COLOR("\x40") " gesehen, der auf\n"
"dem Friedhof lebt?"BOX_BREAK"Es ist jetzt " TIME " Uhr. Er schläft\n"
"wahrscheinlich in seiner Hütte."BOX_BREAK"Warum schlägst Du nicht ein\n"
"bißchen die Zeit tot, bis es\n"
"Abend wird?"
);

DECLARE_MESSAGE_GER(0x5078,
"Ich komme um vor Hunger!\n"
"Ist das Essen schon fertig?\n"
"Es ist schon " TIME " Uhr!"
);

DECLARE_MESSAGE_GER(0x5079,
UNSKIPPABLE "In diesem Haus lebte einst\n"
"die " COLOR("\x41") "mächtige Impa" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Es ist nun für alle Dorfbewohner\n"
"geöffnet. Du kannst auch hinein!" TEXTID("\x50\x7A")
);

DECLARE_MESSAGE_GER(0x507A,
"Dieses Dorf gehörte einst den\n"
COLOR("\x43") "Shiekah" COLOR("\x40") ", aber jetzt kann jeder\n"
"hier leben."
);

DECLARE_MESSAGE_GER(0x507B,
"Ich schwöre,\n"
"ich habe ihn gesehen!"BOX_BREAK"Ich habe den Geist von Boris, dem\n"
"Totengräber, im Grab\n"
"verschwinden sehen! Man sagt, er\n"
"lagere viel " COLOR("\x41") "Wertvolles" COLOR("\x40") " dort!"
);

DECLARE_MESSAGE_GER(0x507C,
"Da ist er! Er ist es!\n"
"Er fiel vom Himmel, umgeben\n"
"von blauem Feuer!"BOX_BREAK"Glaubst Du mir?"
);

DECLARE_MESSAGE_GER(0x507D,
"Kein Mensch glaubt mir, was ich in\n"
"den letzten sieben Jahren erzählt\n"
"habe!"
);

DECLARE_MESSAGE_GER(0x507E,
"Das Feuer hätte uns fast\n"
"vernichtet! Aber gemeinsam haben\n"
"wir es gelöscht! Gute Arbeit,\n"
"denkst Du nicht auch?"
);

DECLARE_MESSAGE_GER(0x507F,
"Hahaha!"BOX_BREAK"Schau Dir den an! Seit er aus\n"
"dem Schloß entkommen konnte,\n"
"ist er noch ängstlicher!"
);

DECLARE_MESSAGE_GER(0x5080,
"Hahaha!"BOX_BREAK"Er muß schlimme Sachen gesehen\n"
"haben!\n"
"Hahaha!"
);

DECLARE_MESSAGE_GER(0x5081,
"Hahaha!\n"
"Das sind vielleicht komische\n"
"Klamotten, Mann!"
);

DECLARE_MESSAGE_GER(0x5082,
"Hahaha!\n"
"Wenn die Zeiten hart sind, ist\n"
"Lachen die beste Medizin!\n"
"Das hat mein Alter immer gesagt!"
);

DECLARE_MESSAGE_GER(0x5083,
"Schau her! Ich bin ganz oben!\n"
"Ich mag es gar nicht, wenn jemand\n"
"höher hinaus will! Ich muß immer\n"
"ganz oben sein!"
);

DECLARE_MESSAGE_GER(0x5084,
"Wenn ich hier oben einschlafe,\n"
"falle ich bestimmt runter..."
);

DECLARE_MESSAGE_GER(0x5085,
"Die Windmühle pumpt das Wasser\n"
"aus dem Brunnen nach oben."BOX_BREAK"Doch jetzt ist er ausgetrocknet.\n"
"Hmmm..."
);

DECLARE_MESSAGE_GER(0x5086,
"Die Frau hier ist wirklich\n"
"großzügig. Sie hat sich sogar um\n"
"die Zimmerleute gekümmert, als \n"
"sie noch hier waren!"
);

DECLARE_MESSAGE_GER(0x5087,
"Es ist lange her...\n"
"Da gab es hier einen Mann, von\n"
"dem man sagte, er besäße das \n"
COLOR("\x45") "Auge der Wahrheit" COLOR("\x40") "!"BOX_BREAK"Heutzutage muß man schon selbst\n"
"ein ganz besonderes Gespür\n"
"entwickeln, um die Wahrheit zu\n"
"erkennen..."BOX_BREAK"Aber der Typ hat das irgendwie\n"
"anders gemacht..."BOX_BREAK"Sein Haus stand da, wo jetzt der\n"
"Brunnen ist..."
);

DECLARE_MESSAGE_GER(0x5088,
"Die Leute in der Gegend\n"
"erzählen von einer\n"
COLOR("\x41") "sagenhaft reichen Familie" COLOR("\x40") ",\n"
"die einst hier lebte."BOX_BREAK"Aber die ganze Familie war\n"
"verflucht, sagt man...\n"
"Wegen ihrer unermeßlichen\n"
"Habsucht!"BOX_BREAK"Wer weiß schon, was mit jenen\n"
"passiert, die von unstillbarer\n"
"Gier besessen sind!"
);

DECLARE_MESSAGE_GER(0x5089,
"Hey..."BOX_BREAK"Welch eine Nervensäge, die uns da \n"
"stört... Denkst Du das nicht\n"
"auch, meine Liebe?"
);

DECLARE_MESSAGE_GER(0x508A,
"Hey..."BOX_BREAK"Er verletzt unsere Privatsphäre...\n"
"Findest Du nicht auch, Liebling?"
);

DECLARE_MESSAGE_GER(0x508B,
UNSKIPPABLE "Schau ihn an, den Bärtigen.\n"
"Ich glaube, sie haben ihn von der\n"
"Farm gejagt..." TEXTID("\x50\x8C")
);

DECLARE_MESSAGE_GER(0x508C,
"Er hängt immer nur faul herum,\n"
"den ganzen Tag lang.\n"
"Das ist ziemlich gedankenlos in\n"
"derart schlimmen Zeiten!"
);

DECLARE_MESSAGE_GER(0x508D,
"Der Bärtige erinnert\n"
"mich irgendwie an meinen\n"
"kleinen Richard..."BOX_BREAK"Wie bitte? Du hast nie etwas von\n"
"meinem kleinen Richard gehört?\n"
"Er war so ein liebes Hundchen! Du\n"
"kennst ihn wirklich nicht?"
);

DECLARE_MESSAGE_GER(0x508E,
"Oh nein! Deine verflixte Okarina\n"
"ist ein Instrument des Teufels!\n"
"Grrrrr!"
);

DECLARE_MESSAGE_GER(0x508F,
"Du hast einen Nachtschwärmer\n"
"gefangen! Verkaufe ihn im\n"
COLOR("\x41") "Gespenstermarkt " COLOR("\x40") "zu einem\n"
"ordentlichen Preis!"
);

DECLARE_MESSAGE_GER(0x6000,
QUICKTEXT_ENABLE "Halt! Bleib, wo Du bist!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6001,
"Nun, Kleiner?"
);

DECLARE_MESSAGE_GER(0x6002,
"Hey, Kleiner! Warte eine Sekunde,\n"
"dann öffne ich Dir das Tor."
);

DECLARE_MESSAGE_GER(0x6003,
QUICKTEXT_ENABLE "Unterschätz uns nicht!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6004,
UNSKIPPABLE "Ich bin beeindruckt. Um an unseren\n"
"Wachen vorbeizukommen, muß man\n"
"schon sehr geschickt sein."BOX_BREAK
UNSKIPPABLE "Ich habe immer gedacht, alle Typen\n"
"außer Ganondorf wären ziemliche\n"
"Waschlappen... Aber ich muß\n"
"meine Meinung ändern!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Unsere Anführerin Naboru" COLOR("\x40") "\n"
"hat mir die Verantwortung für\n"
"diese Festung übertragen."BOX_BREAK
UNSKIPPABLE "Naboru ist die Stellvertreterin\n"
"des mächtigen Ganondorf,\n"
"des Herrn der Gerudo-Kriegerinnen."BOX_BREAK
UNSKIPPABLE "Sie ist gerade auf dem Weg zum\n"
COLOR("\x46") "Geistertempel" COLOR("\x40") ", der sich jenseits\n"
"der Wüste befindet. Sie vermutet\n"
"dort ein wertvolles Relikt."BOX_BREAK
UNSKIPPABLE "Du willst also einer von uns\n"
"werden, was? Na gut, Du hast\n"
"Deine Fähigkeiten bewiesen! \n"
"Du bist nun ein Gerudo!"BOX_BREAK
UNSKIPPABLE "Nimm dies. Damit kannst Du Dich\n"
"in der Festung frei bewegen!" EVENT
);

DECLARE_MESSAGE_GER(0x6005,
"Ab jetzt kannst Du das Tor zur\n"
"Wüste durchschreiten,\n"
"wann immer Du willst."BOX_BREAK"Dort findest Du den " COLOR("\x46") "Geistertempel" COLOR("\x40") "," COLOR("\x46") " \n"
COLOR("\x40") "in dem sich die herrliche Naboru\n"
"zur Zeit aufhält."
);

DECLARE_MESSAGE_GER(0x6006,
QUICKTEXT_ENABLE "Weichei!" QUICKTEXT_DISABLE "\n"
"Hinein mit Dir!\n"
"Und halt die Klappe!"
);

DECLARE_MESSAGE_GER(0x6007,
UNSKIPPABLE "Ich weiß zwar nicht, woher Du \n"
"kommst, aber Du mußt ganz schön \n"
"mutig sein, wenn Du Dich an den\n"
"Wachen vorbeitraust!"BOX_BREAK
UNSKIPPABLE "Meine anderen Kumpels sind\n"
"auch irgendwo eingesperrt."BOX_BREAK
UNSKIPPABLE "Befreie uns bitte alle!"BOX_BREAK
UNSKIPPABLE "Aber sei vorsichtig! Hier gibt's\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "jede" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Menge" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
COLOR("\x41") "Gerudo-Wächterinnen" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Hey!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Paß auf!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6008,
QUICKTEXT_ENABLE  SHIFT("\x1C") "Portal in die Vergangenheit" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6009,
QUICKTEXT_ENABLE  SHIFT("\x25") "Portal in die Gegenwart" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x600A,
QUICKTEXT_ENABLE  SHIFT("\x2D") "Portal in die Zukunft" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x600B,
SFX("\x38\xEC") "Den rechten Weg, den zeig ich Dir,\n"
"denn Du hast dafür kein Gespür.\n"
"Nun flott und folge mir sehr dicht.\n"
"Alleine überlebst Du's nicht!" FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x600C,
UNSKIPPABLE "Vergangenheit...\n"
"Gegenwart...\n"
"Zukunft..."BOX_BREAK
UNSKIPPABLE "Das Master-Schwert sei Dir ein\n"
"Ruder auf Deinem Weg hin und\n"
"zurück durch die Ströme der Zeit..."BOX_BREAK
UNSKIPPABLE "Der Hafen der Zeitwanderer liegt\n"
"in der Zitadelle der Zeit..."BOX_BREAK
UNSKIPPABLE "Willst Du den Wüstenkoloss\n"
"betreten und in den " COLOR("\x46") "Geistertempel" COLOR("\x40") "\n"
"eindringen, mußt Du wieder zurück\n"
"auf den Wellen der Zeiten..."BOX_BREAK
UNSKIPPABLE "Höre nun das " COLOR("\x46") "Requiem der Geister" COLOR("\x40") "!\n"
"Es wird Dich als Kind\n"
"in die Wüste zurückbringen!"
);

DECLARE_MESSAGE_GER(0x600D,
"Ich bin die Gerudo-Meisterin im\n"
"berittenen Bogenschießen! Ach ja,\n"
"und ich bin obendrein die beste\n"
"Reiterin der Gerudos!"BOX_BREAK"Willst Du gegen mich antreten?\n"
"Das kostet nur " COLOR("\x41") "20 Rubine" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x600E,
"Du hast Mut! Typen wie Dich\n"
"mag ich! \n"
"Folge mir."
);

DECLARE_MESSAGE_GER(0x600F,
"Das kannst Du vergessen, wenn\n"
"Du kein Pferd hast!"
);

DECLARE_MESSAGE_GER(0x6010,
QUICKTEXT_ENABLE "Mit so einem Weichei will ich\n"
"nichts zu tun haben!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6011,
"Na, so gut bist Du wohl doch\n"
"nicht! Vielleicht beim nächsten\n"
"Mal."
);

DECLARE_MESSAGE_GER(0x6012,
"Das ist ja super gelaufen!"BOX_BREAK"Ich muß zugeben, Du hast mich\n"
"ganz schön abgezogen. \n"
"Ich muß wohl noch besser werden..."
);

DECLARE_MESSAGE_GER(0x6013,
"Das ist die " COLOR("\x41") "Trainingsarena" COLOR("\x40") " der\n"
"Gerudo-Kriegerinnen."BOX_BREAK"Ohne Gerudo-Paß kommst Du hier\n"
"nicht hinein!"
);

DECLARE_MESSAGE_GER(0x6014,
"Das ist die " COLOR("\x41") "Trainingsarena" COLOR("\x40") " der\n"
"Gerudo-Kriegerinnen."BOX_BREAK"Du hast den Gerudo-Paß?\n"
"Gut, dann darfst Du hinein."BOX_BREAK"Ein Versuch kostet 10 Rubine!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ich versuche es!\n"
"Ich lasse es bleiben!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x6015,
"Okay, her mit den 10 Rubinen.\n"
"Schieß ordentlich!" EVENT
);

DECLARE_MESSAGE_GER(0x6016,
"Du hast nicht genug Geld!\n"
QUICKTEXT_ENABLE "Komm später wieder." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6017,
UNSKIPPABLE "Hey, Grünschnabel!"BOX_BREAK
UNSKIPPABLE "Willst Du Dich wirklich in\n"
"die Wüste begeben?\n"
"Na gut, ich öffne das Tor, aber..."BOX_BREAK
UNSKIPPABLE "Es ist nicht leicht, den" COLOR("\x41") "\n"
"Geistertempel" COLOR("\x40") " zu erreichen!" TEXTID("\x60\x18")
);

DECLARE_MESSAGE_GER(0x6018,
"Zunächst mußt Du den... " COLOR("\x41") "Treibsand-\n"
"Graben" COLOR("\x40") " überqueren! Dann folge\n"
"auf dem richtigen Weg den Flaggen,\n"
"sonst schluckt Dich der Sand."BOX_BREAK"Die zweite Prüfung: Folge dem\n"
COLOR("\x41") "Wüstengeist" COLOR("\x40") "!"BOX_BREAK"Ohne das " COLOR("\x41") "Auge der Wahrheit " COLOR("\x40") "aber\n"
"landest Du direkt wieder hier!"BOX_BREAK"Du willst immer noch dorthin?\n"
"Ich halte Dich nicht auf...\n"
"Mach's gut!" EVENT
);

DECLARE_MESSAGE_GER(0x6019,
UNSKIPPABLE "Warum bist Du schon wieder hier?\n"
"Was? Willst Du mich etwa noch\n"
"einmal dasselbe fragen?" TEXTID("\x60\x1A")
);

DECLARE_MESSAGE_GER(0x601A,
"Naja, wenn Du sowieso schon da\n"
"bist, dann mach das Beste draus!"
);

DECLARE_MESSAGE_GER(0x601B,
"Guter Junge! Vielen Dank!\n"
"Ich kann Dir zwar nichts derart \n"
"Wertvolles zum Tausch anbieten,\n"
"aber... vielleicht ist das ja okay!"
);

DECLARE_MESSAGE_GER(0x601C,
"601C"
);

DECLARE_MESSAGE_GER(0x601D,
UNSKIPPABLE "Ich habe Dich noch nie gesehen,\n"
"Kleiner..."BOX_BREAK"Was willst Du hier?\n"
THREE_CHOICE  COLOR("\x42") "Den Tempel anschauen!\n"
"Ich suche die Weisen!\n"
"Eigentlich nichts!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x601E,
"Du bist noch zu klein! Der Tempel\n"
"ist nicht der richtige Ort für\n"
"Kinder. Geh woanders spielen!"
);

DECLARE_MESSAGE_GER(0x601F,
"Ein Weiser? Keine Ahnung! Ist\n"
"das jemand, der Vater und Mutter\n"
"verloren hat?"
);

DECLARE_MESSAGE_GER(0x6020,
UNSKIPPABLE "Du hast nichts Besseres zu tun?\n"
"Du kommst wie gerufen! Kannst Du\n"
"mir einen Gefallen tun, Kleiner?"BOX_BREAK
UNSKIPPABLE "Moment mal, Du bist doch nicht\n"
"etwa einer von Ganondorfs..."BOX_BREAK"Anhängern... Oder?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Und wenn es so wäre?\n"
"Ich hasse Ganondorf!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x6021,
UNSKIPPABLE "Hahaha!\n"
"Gib nicht so an, Kleiner!"BOX_BREAK
UNSKIPPABLE "Jemand wie Du könnte nie einer\n"
"von Ganondorfs Anhängern sein!"BOX_BREAK
UNSKIPPABLE "Diese Schurken sind aus\n"
"ganz anderem Holz geschnitzt..." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_GER(0x6022,
UNSKIPPABLE "Ach was!"BOX_BREAK
UNSKIPPABLE "Du bist ganz schön mutig.\n"
"Ich glaube, ich mag Dich." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_GER(0x6023,
UNSKIPPABLE "Aber erst will ich mich vorstellen.\n"
"Ich bin die Gerudo-Kriegerin\n"
COLOR("\x41") "Naboru" COLOR("\x40") ". Ich gehe lieber allein\n"
"auf Beutetour."BOX_BREAK
UNSKIPPABLE "Und noch etwas solltest\n"
"Du wissen!"BOX_BREAK
UNSKIPPABLE "Ganondorf und ich gehören\n"
"zwar demselben Volk an, doch wir\n"
"sind grundverschieden."BOX_BREAK
UNSKIPPABLE "Ganondorf und seine Anhänger\n"
"haben auch Frauen und Kinder\n"
"beraubt, ja sogar getötet!"BOX_BREAK
UNSKIPPABLE "Wisse, das Gerudo-Geschlecht\n"
"besteht nur aus Frauen. Nur alle \n"
"100 Jahre wird ein Mann geboren..."BOX_BREAK
UNSKIPPABLE "Auch wenn es unser Gesetz so\n"
"will, daß dieser Mann der König\n"
"der Gerudo wird, so schwöre ich\n"
"Ganondorf niemals im Leben Treue!"BOX_BREAK
UNSKIPPABLE "Ach, wie war eigentlich Dein \n"
"Name, Kleiner?"BOX_BREAK
UNSKIPPABLE  NAME "?!"BOX_BREAK
UNSKIPPABLE "Was ist das denn für ein\n"
"komischer Name?\n"
"Naja, egal..." TEXTID("\x60\x24")
);

DECLARE_MESSAGE_GER(0x6024,
UNSKIPPABLE "Ich möchte Dich um einen Gefallen\n"
"bitten..."BOX_BREAK
UNSKIPPABLE "Schaffst Du es, durch diesen\n"
"engen Durchlaß zu kriechen und\n"
"einen Schatz zu bergen?"BOX_BREAK
UNSKIPPABLE "Es handelt sich um ein uraltes\n"
"Diebesrelikt, die " COLOR("\x43") "Krafthandschuhe" COLOR("\x40") ".\n"
"Damit kann man sehr schwere\n"
"Dinge anheben!"BOX_BREAK
UNSKIPPABLE "Hey, Kleiner! Denk nicht mal dran,\n"
"Dir die Handschuhe selbst unter\n"
"den Nagel zu reißen!"BOX_BREAK
UNSKIPPABLE "Die Krafthandschuhe würden Dir\n"
"sowieso nicht passen!\n"
"Sei anständig und bring sie mir!"BOX_BREAK
UNSKIPPABLE "Ganondorf und seine Vasallen\n"
"nutzen den Geistertempel als\n"
"eines ihrer Verstecke."BOX_BREAK
UNSKIPPABLE "Nur mit den Krafthandschuhen\n"
"kann ich mich hier hineinstehlen!"BOX_BREAK
UNSKIPPABLE "Dann kann ich nicht nur all ihr\n"
"Diebesgut an mich nehmen, sondern\n"
"auch ihre grauenvollen Pläne\n"
"durchkreuzen!"BOX_BREAK"Also, wie ist es? Machst Du's?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x6025,
UNSKIPPABLE "Danke, Kleiner!"BOX_BREAK
UNSKIPPABLE "Wir beide werden Ganondorfs\n"
"Tyrannei beenden! Nicht wahr,\n"
"Kleiner?" TEXTID("\x60\x26")
);

DECLARE_MESSAGE_GER(0x6026,
"Wenn Du die " COLOR("\x43") "Krafthandschuhe\n"
COLOR("\x40") "besorgst..."BOX_BREAK"Dann werde ich mich bei Dir\n"
"revanchieren!"
);

DECLARE_MESSAGE_GER(0x6027,
"Naja, was kann man von einem\n"
"Kind wie Dir schon erwarten?"
);

DECLARE_MESSAGE_GER(0x6028,
UNSKIPPABLE "Hey! Was macht Ihr miesen\n"
"alten Weiber mit mir?!"
);

DECLARE_MESSAGE_GER(0x6029,
UNSKIPPABLE "Hihihihi!\n"
"Sieht so aus, als hätten wir einen \n"
"ordentlichen Fang gemacht, Koume!"
);

DECLARE_MESSAGE_GER(0x602A,
UNSKIPPABLE "Hihihihi!\n"
"Sieht ganz so aus, Kotake!"
);

DECLARE_MESSAGE_GER(0x602B,
UNSKIPPABLE "Wie außergewöhnlich, daß sich\n"
"jemand so tief in unseren Tempel\n"
"hineintraut...\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x602C,
UNSKIPPABLE "Wir sollten ihm eine ordentliche \n"
"Lektion erteilen!\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x602D,
UNSKIPPABLE "Oh, treuer Vasall..."
);

DECLARE_MESSAGE_GER(0x602E,
UNSKIPPABLE "Zerstöre diesen Eindringling!"
);

DECLARE_MESSAGE_GER(0x602F,
UNSKIPPABLE "Ganondorfs... Feinde...\n"
"müssen sterben..."
);

DECLARE_MESSAGE_GER(0x6030,
UNSKIPPABLE "Uuhh...\n"
"Wo bin ich...?"
);

DECLARE_MESSAGE_GER(0x6031,
UNSKIPPABLE "Grummel...\n"
"Sieht aus, als hätte sie sich\n"
"befreien können, Koume..."
);

DECLARE_MESSAGE_GER(0x6032,
UNSKIPPABLE "Sie ist noch jung, genießt aber\n"
"hohen Respekt unter den Gerudo-\n"
"Kriegerinnen, Kotake..."
);

DECLARE_MESSAGE_GER(0x6033,
UNSKIPPABLE "Vielleicht sollten wir sie etwas\n"
"länger zum Dienste des mächtigen\n"
"Ganondorf versklaven!\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x6034,
UNSKIPPABLE "Wir sollten ihr Gehirn einer neuen\n"
"Behandlung unterziehen!\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x6035,
UNSKIPPABLE "Kleiner, ich muß Dir danken."BOX_BREAK
UNSKIPPABLE "Hey... Sieh mal an, was aus Dir\n"
"geworden ist - ein talentierter\n"
"Schwertkämpfer!"
);

DECLARE_MESSAGE_GER(0x6036,
"Du bist wirklich ein tapferer Held \n"
"geworden!"BOX_BREAK_DELAYED("\x50") "Dir gebührt eine ganz spezielle\n"
"Anerkennung..." FADE("\x50")
);

DECLARE_MESSAGE_GER(0x6037,
UNSKIPPABLE "Hier, nimm " COLOR("\x41") "dies" COLOR("\x40") "...\n"
"Es ist ein wichtiges Dokument.\n"
"Unsere Kräfte im Bogenschießen\n"
"können wir auch später messen!"
);

DECLARE_MESSAGE_GER(0x6038,
UNSKIPPABLE  NAME "... Wir sehen uns!"
);

DECLARE_MESSAGE_GER(0x6039,
UNSKIPPABLE "Au weia..."BOX_BREAK
UNSKIPPABLE "Ich bin völlig durcheinander..."BOX_BREAK
UNSKIPPABLE "Die beiden alten Weiber haben\n"
"mich verhext. Ich mußte für\n"
"Ganondorf tun, was er\n"
"verlangte..."BOX_BREAK
UNSKIPPABLE "Aber bist Du nicht überrascht?\n"
"Jemand wie ich ist letztendlich die\n"
COLOR("\x46") "Weise der Geister" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Ab jetzt kämpfe ich als eine der\n"
"Weisen gegen das Böse!"BOX_BREAK
UNSKIPPABLE "Nun werden sie für das bezahlen,\n"
"was sie mir angetan haben!"
);

DECLARE_MESSAGE_GER(0x603A,
UNSKIPPABLE "Kleiner..."BOX_BREAK
UNSKIPPABLE "Nein...\n"
NAME ", der strahlende\n"
"Wanderer durch die Zeiten!"BOX_BREAK
UNSKIPPABLE "Als Dank dafür, daß Du den\n"
"Fluch vom Geistertempel genommen\n"
"hast, übergebe ich Dir\n"
"dieses " COLOR("\x46") "Amulett" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Nimm es!"
);

DECLARE_MESSAGE_GER(0x603B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x2E") "Aaargh!" QUICKTEXT_DISABLE " Laßt mich!"
);

DECLARE_MESSAGE_GER(0x603C,
UNSKIPPABLE  SHIFT("\x14") "Ihr " QUICKTEXT_ENABLE "widerlichen alten Hexen!" QUICKTEXT_DISABLE "\n"
SHIFT("\x03") "Ihr seid Ganondorfs eklige Sklaven!"
);

DECLARE_MESSAGE_GER(0x603D,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x34") "Flüchte, " NAME "!" QUICKTEXT_DISABLE "\n"
SHIFT("\x51") "Schnell!"
);

DECLARE_MESSAGE_GER(0x603E,
UNSKIPPABLE  SHIFT("\x15") "Verdammte Hexen! Sie setzen\n"
SHIFT("\x0D") "schwarze Magie gegen mich ein!"
);

DECLARE_MESSAGE_GER(0x603F,
"Hey, Kleiner! Das ist die " COLOR("\x41") "Arena\n"
"für Bogenschießen zu Pferde" COLOR("\x40") "."BOX_BREAK"Wir treffen genau den Mittelpunkt\n"
"der Zielscheibe. Egal, wie wild wir\n"
"reiten!"BOX_BREAK"Wenn Du reiten kannst, dann\n"
"komm zu uns und probier es auch\n"
"aus. Es ist gefährlich - aber ein\n"
"Riesenspaß!"
);

DECLARE_MESSAGE_GER(0x6040,
"Hey, Junge, Du hast da aber ein\n"
"tolles Pferd!"BOX_BREAK"Keine Ahnung, wo Du das geklaut\n"
"hast, aber..."BOX_BREAK"...wie wäre es mit einer Runde\n"
COLOR("\x41") "Bogenschießen" COLOR("\x40") " " COLOR("\x41") "zu Pferde" COLOR("\x40") "!?"BOX_BREAK"Sowie Dein Pferd galoppiert,\n"
"schieße mit Deinen Pfeilen auf\n"
"die Zielscheiben."BOX_BREAK"Wir werden ja sehen, wie oft Du\n"
"triffst! Du bekommst 20 Pfeile."BOX_BREAK"Wenn Du " COLOR("\x41") "1.000 Punkte" COLOR("\x40") " erreichst,\n"
"erhältst Du einen genialen\n"
"Preis!" EVENT
);

DECLARE_MESSAGE_GER(0x6041,
"Willst Du es versuchen?\n"
"Es kostet nur " COLOR("\x41") "20 Rubine" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x6042,
"Hey, Kleiner!\n"
"Das sieht gar nicht schlecht aus!\n"
"Zeig's mir nochmal!"BOX_BREAK"Versuche doch jetzt,\n"
COLOR("\x41") "1.500 Punkte" COLOR("\x40") " zu erreichen!" EVENT
);

DECLARE_MESSAGE_GER(0x6043,
"Was? Du willst es nochmal\n"
"versuchen?\n"
"Du gibst wohl so schnell nicht\n"
"auf, was?" EVENT
);

DECLARE_MESSAGE_GER(0x6044,
"Donnerwetter! Du bist ja ein \n"
"wahrer Meister Deines Fachs!"BOX_BREAK"Ich gebe Dir etwas, dessen nur\n"
"ein echter Meister würdig ist."BOX_BREAK"Es ist ein wertvoller Köcher,\n"
"den ich Dir überreiche. Er gehört\n"
"nun Dir. Behandle ihn gut!"
);

DECLARE_MESSAGE_GER(0x6045,
POINTS " Punkte... Hmmm...\n"
"Hahaha! Da mußt Du wohl noch\n"
"ein bißchen üben!" EVENT
);

DECLARE_MESSAGE_GER(0x6046,
"Großartig!\n"
"Du bist ja ein absoluter König\n"
"im Bogenschießen!"BOX_BREAK"Hier, nimm dies.\n"
"Du kannst es bestimmt\n"
"gut gebrauchen!"
);

DECLARE_MESSAGE_GER(0x6047,
POINTS " Punkte...\n"
"Ganz ordentlich!" EVENT
);

DECLARE_MESSAGE_GER(0x6048,
"Sieh Dir diesen Dummkopf an!\n"
"Er kam freiwillig als Opfer\n"
"für den mächtigen Ganondorf..." FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x6049,
SHIFT("\x2A") "Meine Flammen werden\n"
SHIFT("\x3C") "ihn bis auf die\n"
SHIFT("\x2E") "Knochen verbrennen!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x604A,
SHIFT("\x3F") "Mein Eiszauber\n"
SHIFT("\x39") "wird seine Seele\n"
SHIFT("\x3A") "gefriertrocknen!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x604B,
SHIFT("\x28") "Verhext und zugenäht!\n"
SHIFT("\x25") "So ein widerliches Balg!\n"
SHIFT("\x1C") "Ab jetzt machen wir Ernst!\n"
SHIFT("\x42") "Was, Kotake?" FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x604C,
SHIFT("\x50") "Waaaas?"BOX_BREAK_DELAYED("\x14")  SHIFT("\x15") "Hey, Koume! Was schwebt da\n"
SHIFT("\x32") "über Deinem Kopf?" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x604D,
SHIFT("\x17") "Weiß ich nicht, aber über Dir\n"
SHIFT("\x15") "schwebt auch etwas, Kotake!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x604E,
SHIFT("\x0B") "Aber ich bin erst 400 Jahre alt!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x604F,
SHIFT("\x0F") "Und ich bin erst 380 Jahre alt!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x6050,
QUICKTEXT_ENABLE  SHIFT("\x33") "Wir sind Zwillinge!\n"
SHIFT("\x24") "Mach Dich nicht jünger,\n"
SHIFT("\x3E") "als Du bist!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_GER(0x6051,
QUICKTEXT_ENABLE  SHIFT("\x28") "Du bist ja völlig senil!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_GER(0x6052,
QUICKTEXT_ENABLE  SHIFT("\x1B") "Wen nennst Du hier senil?!\n"
SHIFT("\x26") "Behandelt man so seine\n"
SHIFT("\x32") "ältere Schwester?" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x6053,
QUICKTEXT_ENABLE  SHIFT("\x30") "Wir sind Zwillinge! \n"
SHIFT("\x14") "Wie kannst Du da älter sein?" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x6054,
QUICKTEXT_ENABLE  SHIFT("\x4F") "Iiihhhh!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE  SHIFT("\x24") "Du herzloses Miststück!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_GER(0x6055,
QUICKTEXT_ENABLE  SHIFT("\x2A") "Du undankbares Weib!" QUICKTEXT_DISABLE  FADE("\x0A")
);

DECLARE_MESSAGE_GER(0x6056,
QUICKTEXT_ENABLE  SHIFT("\x3A") "Du bist herzlos!" QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_GER(0x6057,
QUICKTEXT_ENABLE  SHIFT("\x24") "Und Du bist undankbar..." QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_GER(0x6058,
QUICKTEXT_ENABLE  SHIFT("\x29") "Ich mach Dich fertig!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_GER(0x6059,
QUICKTEXT_ENABLE "Okay, laß uns jetzt Ernst machen!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x605A,
SHIFT("\x41")  QUICKTEXT_ENABLE "Okay, Koume." QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x14")  SHIFT("\x2C")  QUICKTEXT_ENABLE "Kotakes" QUICKTEXT_DISABLE " und " QUICKTEXT_ENABLE "Koumes" QUICKTEXT_DISABLE "\n"
SHIFT("\x2D")  QUICKTEXT_ENABLE "Sexy" QUICKTEXT_DISABLE " Thermo " QUICKTEXT_ENABLE "Hexy!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_GER(0x605B,
UNSKIPPABLE "Bist Du hier, um mich zu retten? \n"
"Oh, das ist ja wirklich nett!\n"
"Ich bin " COLOR("\x41") "John, der Zimmermann" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Wir wollten uns eigentlich den\n"
"Gerudo-Kriegerinnen anschließen...\n"
"Aber dann haben sie uns\n"
"eingesperrt, weil wir Männer sind!"BOX_BREAK
UNSKIPPABLE "Jetzt wollen wir aber lieber\n"
"wieder heim! Diese Gerudos sind\n"
"schrecklich ungehobelt!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Drei meiner Kumpels" COLOR("\x40") " sind hier\n"
"noch eingesperrt.\n"
"Befreie sie bitte!"
);

DECLARE_MESSAGE_GER(0x605C,
UNSKIPPABLE "Das ist wirklich nett von Dir,\n"
"Kleiner! Danke für die Rettung!\n"
"Ich bin " COLOR("\x41") "Paul, der Zimmermann" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Diese Frauen hier machen mir\n"
"Angst! Ich bleibe lieber weiter\n"
"Zimmermann, als mich ihnen\n"
"anzuschließen!"BOX_BREAK
UNSKIPPABLE "Ich kann es kaum erwarten, wieder\n"
"daheim zu sein! " COLOR("\x41") "Zwei meiner\n"
"Kumpels " COLOR("\x40") "sind noch eingesperrt.\n"
"Hilfst Du ihnen?"
);

DECLARE_MESSAGE_GER(0x605D,
UNSKIPPABLE "Danke, Junge! Du bist super!\n"
"Ich bin " COLOR("\x41") "George, der Zimmermann" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Hast Du unseren Chef gesehen?\n"
"Er hat vielleicht Angst um uns!\n"
"Ich muß " QUICKTEXT_ENABLE "sofort" QUICKTEXT_DISABLE " zu ihm!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Einer von uns " COLOR("\x40") "ist noch gefangen.\n"
"Bitte hilf auch ihm!"
);

DECLARE_MESSAGE_GER(0x605E,
UNSKIPPABLE "Ich habe schon gedacht, Du hättest\n"
"mich vergessen! Vielen Dank!\n"
"Ich bin " COLOR("\x41") "Ringo, der Zimmermann" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Dafür, daß Du mich befreit hast,\n"
"verrate ich Dir, was sich die\n"
"Gerudos über die Wüste erzählen:"BOX_BREAK
UNSKIPPABLE "\"Wer die Gespensterwüste\n"
"durchqueren will, braucht das " COLOR("\x41") "Auge\n"
"der Wahrheit" COLOR("\x40") ". Den Wüstenkoloss\n"
"findet man jenseits der Wüste...\""BOX_BREAK
UNSKIPPABLE "Ich gehe jetzt zu meinem " COLOR("\x41") "Zelt in\n"
"der Nähe des Gerudotals" COLOR("\x40") ". Schau\n"
"doch mal vorbei, vielleicht gibt es\n"
"dort etwas für Dich! Leb wohl!"
);

DECLARE_MESSAGE_GER(0x605F,
COLOR("\x41") "Naboru" COLOR("\x40") ", die Anführerin der Gerudo-\n"
"Kriegerinnen, scheint Menschen\n"
"für ihre Zwecke zu versklaven..."
);

DECLARE_MESSAGE_GER(0x6060,
"Oh, es war Ganondorf, der\n"
"Großmeister des Bösen, der hinter\n"
"allem steckte...?"
);

DECLARE_MESSAGE_GER(0x6061,
UNSKIPPABLE "Als " COLOR("\x41") "Naboru" COLOR("\x40") " noch zu den Diebinnen\n"
"gehörte, hat sie nie die Schwachen\n"
"und Armen bestohlen." TEXTID("\x60\x62")
);

DECLARE_MESSAGE_GER(0x6062,
"Jetzt aber sind sie und ihre\n"
"Diebinnen brutal und rücksichtslos\n"
"geworden. Sie behauptet, sie sei\n"
"edel, aber... Von wegen!"
);

DECLARE_MESSAGE_GER(0x6063,
"Wie ich mir dachte: Naboru wurde\n"
"mit Hexerei von Ganondorfs\n"
"Schergen zu einer willenlosen\n"
"Sklavin gemacht..."
);

DECLARE_MESSAGE_GER(0x6064,
UNSKIPPABLE "Bei den Gerudo-Kriegerinnen\n"
"genießen besonders jene hohes\n"
"Ansehen, die gute Reiter und \n"
"Bogenschützen sind." TEXTID("\x60\x65")
);

DECLARE_MESSAGE_GER(0x6065,
"Wie wär's mit etwas Bogenschießen\n"
"zu Pferde?"BOX_BREAK"Wenn Du ein Pferd besitzt, dann\n"
"findet sich in der Festung sicher\n"
"eine Gerudo, die Dich\n"
"herausfordert!"
);

DECLARE_MESSAGE_GER(0x6066,
"Das hast Du großartig\n"
"gemacht, Junge!"
);

DECLARE_MESSAGE_GER(0x6067,
"Wenn wir alle zusammen sind,\n"
"ist es ein Kinderspiel, eine\n"
"Brücke über den Abgrund\n"
"zu bauen!"
);

DECLARE_MESSAGE_GER(0x6068,
"Ohne die widerlichen alten Hexen\n"
"machen mir die Gerudos nicht\n"
"mehr soviel Angst!"
);

DECLARE_MESSAGE_GER(0x6069,
"Hinter diesem Tor befindet sich\n"
"die " COLOR("\x41") "Gerudo-Festung" COLOR("\x40") ". Kinder haben\n"
"hier nichts zu suchen."
);

DECLARE_MESSAGE_GER(0x606A,
UNSKIPPABLE  SFX("\x68\x55") "Ich bin " COLOR("\x41") "Handwerkermeister" COLOR("\x40") ".\n"
"Es waren Gerudos, die die Brücke\n"
"zerstört haben."BOX_BREAK
UNSKIPPABLE "Ich will sie reparieren, aber meine\n"
"Leute sind verschwunden!"BOX_BREAK
UNSKIPPABLE "Sie haben gesagt, ihr Job sei öde.\n"
"Sie wollten lieber in die " COLOR("\x41") "Gerudo-\n"
"Festung " COLOR("\x40") "gehen, um Diebe\n"
"zu werden..." TEXTID("\x60\x6B")
);

DECLARE_MESSAGE_GER(0x606B,
"Hey, Du! Wenn Du schon in die\n"
"Festung gehst... Kannst Du\n"
"herausfinden, was meine Jungs\n"
"dort tun?"
);

DECLARE_MESSAGE_GER(0x606C,
"Hey, ich habe gehört, daß Du\n"
"meine Leute gerettet hast.\n"
"Als Gegenleistung haben wir die\n"
"Brücke repariert!"BOX_BREAK"Schau her! Ist sie nicht toll?"BOX_BREAK"Meine Arbeiter sind ziemliche\n"
"Weicheier. Aber wenn sie alle\n"
"gemeinsam zulangen, dann ist so \n"
"ein Job schnell erledigt."
);

DECLARE_MESSAGE_GER(0x606D,
UNSKIPPABLE  SFX("\x68\x55") "Oh, das ist ja meine Säge!"BOX_BREAK
UNSKIPPABLE "Aber... Ich dachte, ich hätte sie\n"
"bei der alten Frau liegen gelassen..." TEXTID("\x60\x6E")
);

DECLARE_MESSAGE_GER(0x606E,
"Ich besitze übrigens ein\n"
"zerbrochenes Biggoron-Schwert.\n"
"Du müßtest es nur von einem\n"
"Goronen reparieren lassen..."BOX_BREAK"Ich würde es gegen die Säge\n"
"eintauschen! Gibst Du sie mir?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x606F,
SHIFT("\x53")  QUICKTEXT_ENABLE "Was?!\n"
SHIFT("\x03") "Du stinkender, widerlicher Dieb!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x6070,
"Dies ist die " COLOR("\x41") "Trainingsarena " COLOR("\x40") "der\n"
"Gerudos. Wer sie betreten will,\n"
"braucht ein besonderes\n"
"Dokument!"
);

DECLARE_MESSAGE_GER(0x6071,
"Dies ist die " COLOR("\x41") "Trainingsarena " COLOR("\x40") "der \n"
"Gerudos." COLOR("\x41") " " COLOR("\x40") "Du darfst eintreten...\n"
"Trainiere Deine Fähigkeiten, so\n"
"lange Du willst." EVENT
);

DECLARE_MESSAGE_GER(0x6072,
"Dies ist die " COLOR("\x41") "Trainingsarena " COLOR("\x40") "der \n"
"Gerudos. Auch wenn Du sehr gut\n"
"bist: Sacke nicht alle Schätze\n"
"selbst ein!"
);

DECLARE_MESSAGE_GER(0x6073,
"6073"
);

DECLARE_MESSAGE_GER(0x6074,
"Oh, wie schade."BOX_BREAK"Das Zeichen, welches Euch zum\n"
"Geistertempel führt, ist die " COLOR("\x41") "Flagge\n"
"zur Linken" COLOR("\x40") " außerhalb des Ladens."BOX_BREAK"Solltet Ihr es Euch anders\n"
"überlegen, dann kommt doch\n"
"bitte wieder!"
);

DECLARE_MESSAGE_GER(0x6075,
"Oh, Ihr habt zu wenig Rubine.\n"
"Ich gebe keinen Nachlass,\n"
"nicht einen Rubin!"
);

DECLARE_MESSAGE_GER(0x6076,
"Keuch...\n"
"Du bist doch schon mit etwas\n"
"anderem beschäftigt, oder?"BOX_BREAK"Wenn Du mich herausfordern willst,\n"
"dann komm wieder, wenn Du den\n"
"Kopf dafür frei hast!"
);

DECLARE_MESSAGE_GER(0x6077,
SHIFT("\x46") "Willkommen!"BOX_BREAK"Ich verkaufe hier seltsame, seltene\n"
"Sachen aus der ganzen Welt. Mein\n"
"heutiges Angebot ist..."BOX_BREAK"Ein bombiges, ferngesteuertes\n"
"Objekt! Furchterregend!\n"
"Ich erzähle Euch erst etwas davon,\n"
"wenn ich Geld sehe..."BOX_BREAK"Wie wär's mit " COLOR("\x41") "200 Rubinen" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Kaufen!\n"
"Nicht kaufen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x6078,
"Vielen herzlichen Dank!"BOX_BREAK"Ich verkaufe... " TEXT_SPEED("\x02")  COLOR("\x41") "Krabbelminen" COLOR("\x40") "!" TEXT_SPEED("\x00") BOX_BREAK"Das Zeichen, welches Euch zum\n"
"Geistertempel führt, ist die " COLOR("\x41") "Flagge\n"
"zur Linken" COLOR("\x40") " außerhalb des Ladens.\n"
"Schaut mal wieder vorbei!"
);

DECLARE_MESSAGE_GER(0x6079,
UNSKIPPABLE "Hey, was ist, " NAME "?\n"
"Überrascht, mich zu sehen?"BOX_BREAK
UNSKIPPABLE "Lange Jahre in der Zukunft\n"
"bedeuten anscheinend gar\n"
"nichts. Hier sind nur wenige\n"
"Sekunden vergangen!"BOX_BREAK
UNSKIPPABLE "Sogar ich hatte gedacht, daß\n"
"Reisen durch die Zeit eine reine\n"
"Legende seien."BOX_BREAK
UNSKIPPABLE  NAME ", Du hast viel\n"
"Erfahrung gesammelt!" TEXTID("\x60\x7A")
);

DECLARE_MESSAGE_GER(0x607A,
"Das Schicksal Hyrules liegt von\n"
"nun an in Deinen Händen."BOX_BREAK"Vielleicht ist meine Zeit jetzt\n"
"vorüber. Hier ist ein letzter Rat:"BOX_BREAK"In diesem Tempel hausen zwei alte\n"
"Hexen. Um sie zu vernichten,\n"
COLOR("\x41") "schlage sie mit ihren eigenen\n"
"magischen Waffen" COLOR("\x40") "!" TEXTID("\x60\x7B")
);

DECLARE_MESSAGE_GER(0x607B,
"Möchtest Du das, was ich gesagt\n"
"habe, noch einmal hören?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x607C,
UNSKIPPABLE "Ich werde Dich\n"
"weiterhin beobachten...\n"
"Viel Glück!"
);

DECLARE_MESSAGE_GER(0x607D,
UNSKIPPABLE "Ich bin reisender Rennläufer!\n"
"Ich habe das ganze Land berannt...\n"
"ähh, bereist, um jemanden mit\n"
"echtem Sportsgeist zu finden!"BOX_BREAK
UNSKIPPABLE "Ob Mensch oder Tier - ich habe\n"
"alle Herausforderer geschlagen."BOX_BREAK
UNSKIPPABLE "Du siehst sportlich aus und hast\n"
"wohl auch den nötigen Biß!"BOX_BREAK
UNSKIPPABLE "Da jetzt die Brücke über den\n"
"Abgrund repariert wurde,\n"
"suche ich einen Herausforderer\n"
"für einen Marathon!" TEXTID("\x60\x7E")
);

DECLARE_MESSAGE_GER(0x607E,
"Die Bestzeit von hier zur " COLOR("\x42") "Brücke\n"
"nach Kokiri " COLOR("\x40") "war:\n"
COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ".\n"
"Das ist mein Rekord!"BOX_BREAK"Willst Du versuchen, diesen\n"
"Rekord zu brechen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein! " COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x607F,
"Ausgezeichnet!\n"
"Also..."BOX_BREAK"Du fängst an.\n"
"Ich gebe Dir sogar Vorsprung."BOX_BREAK
TEXT_SPEED("\x02") "Los geht's." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_GER(0x6080,
"Mit dieser Einstellung kommst Du\n"
"aber nicht sehr weit, mein Junge!"
);

DECLARE_MESSAGE_GER(0x6081,
"Nun ja, nicht perfekt, aber Du\n"
"traust Dich was! Nur dumm,\n"
"daß Du mich nie schlagen wirst.\n"
"Dein Rekord ist schon vergessen!"BOX_BREAK"Deine Zeit betrug " COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ", oder?\n"
"Denkbar knapp, aber ich war um\n"
"eine Sekunde schneller!" EVENT
);

DECLARE_MESSAGE_GER(0x6082,
"Hihihi...\n"
"Bitte! " TEXT_SPEED("\x02") "Lauf weiter!" TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_GER(0x6083,
"Oh, sieht aus, als würdest Du\n"
"aufgeben wollen. Hihihi...\n"
"Fast hättest Du Deine alte Form \n"
"wiedererlangt!" FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x6084,
"Hihihi...\n"
"Du hast doch noch nicht den\n"
"rechten Biß, mein Lieber."BOX_BREAK"Du mußt härter trainieren.\n"
QUICKTEXT_ENABLE "Mach's mal gut!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x6085,
TEXT_SPEED("\x01")  QUICKTEXT_ENABLE "Keuch..." QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Pust..." QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Hust..." QUICKTEXT_DISABLE  TEXT_SPEED("\x00") BOX_BREAK"Keuch... Pust... Wow!\n"
"Das war sehr gut!"BOX_BREAK"Doch Du hast mich noch nicht\n"
"geschlagen!\n"
"Deine Bestzeit war " COLOR("\x41")  MARATHON_TIME  COLOR("\x40") ", aber\n"
"ich war eine Sekunde schneller!"BOX_BREAK"Keuch... Hust... \n"
"Versuche es irgendwann noch\n"
"einmal!"BOX_BREAK"Keuch... Pust...\n"
QUICKTEXT_ENABLE "Mach's mal gut!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x6086,
"Ich bin reisender Rennläufer!\n"
"Ich habe das ganze Land berannt...\n"
"ähh, bereist, um jemanden mit\n"
"echtem Sportsgeist zu finden!"BOX_BREAK"Ich bin hierher gekommen, um durch\n"
"die Gespensterwüste zu laufen...\n"
"Aber das war, glaube ich, kein\n"
"guter Zeitpunkt."BOX_BREAK"Ich wollte zur hylianischen Steppe\n"
"zurück, aber die Brücke ist...\n"
"Naja, das siehst Du ja selbst.\n"
"Jetzt sitze ich hier fest."BOX_BREAK"Ich kann daher auch Deine\n"
"Herausforderung leider noch\n"
"nicht annehmen. Hihihi!"
);

DECLARE_MESSAGE_GER(0x6087,
"6087"
);

DECLARE_MESSAGE_GER(0x6088,
"6088"
);

DECLARE_MESSAGE_GER(0x6089,
"6089"
);

DECLARE_MESSAGE_GER(0x608A,
"608A"
);

DECLARE_MESSAGE_GER(0x608B,
"608B"
);

DECLARE_MESSAGE_GER(0x608C,
"608C"
);

DECLARE_MESSAGE_GER(0x608D,
"608D"
);

DECLARE_MESSAGE_GER(0x608E,
"608E"
);

DECLARE_MESSAGE_GER(0x608F,
"608F"
);

DECLARE_MESSAGE_GER(0x7000,
"Ich kann dieses Huhn\n"
"nicht einfangen!"
);

DECLARE_MESSAGE_GER(0x7001,
"Keuch! \n"
"Ich bin schwer\n"
"am Trainieren!"
);

DECLARE_MESSAGE_GER(0x7002,
"Lang lebe Prinzessin Zelda!"
);

DECLARE_MESSAGE_GER(0x7003,
"In Deinem Alter solltest Du um\n"
"diese Zeit im Bett liegen! Bleib\n"
"lieber im Haus bis morgen früh!"
);

DECLARE_MESSAGE_GER(0x7004,
"Mann, ist mir langweilig...\n"
"Es wäre bestimmt spannender,\n"
"wenn hier mehr los wäre..."BOX_BREAK"Hey, das bleibt aber unter uns,\n"
"klar?"BOX_BREAK"Egal, vielleicht können wir ja\n"
"etwas Dampf ablassen, indem wir\n"
"ein paar Krüge zerschlagen."BOX_BREAK"Stelle Dich vor einen Krug und\n"
"drücke " COLOR("\x42") "[A]" COLOR("\x40") ", um ihn anzuheben.\n"
"Drückst Du nochmal " COLOR("\x42") "[A]" COLOR("\x40") ", wirfst\n"
"Du ihn!"
);

DECLARE_MESSAGE_GER(0x7005,
UNSKIPPABLE "Großartig!"BOX_BREAK
UNSKIPPABLE "Das habe ich ganz vergessen..." EVENT
);

DECLARE_MESSAGE_GER(0x7006,
QUICKTEXT_ENABLE "Im Schloß ist es zur Zeit ziemlich\n"
"unruhig. Daher darf es\n"
"niemand betreten!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x7007,
UNSKIPPABLE "Arrgh... Bist Du der Junge aus\n"
"dem Wald...?"BOX_BREAK
UNSKIPPABLE "Endlich treffe ich Dich...\n"
"Ich... Ich muß Dir etwas... mitteilen..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Ganondorf" COLOR("\x40") ", der Herr der Gerudo,\n"
"hat unseren König verraten..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Impa" COLOR("\x40") " hat die Gefahr erkannt und\n"
"ist mit Prinzessin Zelda aus dem\n"
"Schloß geflüchtet..."BOX_BREAK
UNSKIPPABLE "Ich habe versucht, Ganondorfs\n"
"Leute daran zu hindern, ihnen zu\n"
"folgen... aber... ohne Erfolg..."BOX_BREAK
UNSKIPPABLE "Die Prinzessin hat... auf einen\n"
"Jungen aus dem Wald gewartet...\n"
"auf Dich... Sie wollte Dir " COLOR("\x41") "etwas\n"
"geben" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Wenn Du es hast, dann " TEXT_SPEED("\x03")  QUICKTEXT_ENABLE "eile" QUICKTEXT_DISABLE "... " QUICKTEXT_ENABLE "zur" QUICKTEXT_DISABLE "\n"
COLOR("\x44")  QUICKTEXT_ENABLE "Zita" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "delle" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "der" QUICKTEXT_DISABLE " Zeit" COLOR("\x40") "..." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_GER(0x7008,
"Er rührt sich nicht mehr..."
);

DECLARE_MESSAGE_GER(0x7009,
UNSKIPPABLE "Siehst Du den Mann dort?\n"
"Den mit dem bösen Blick?"BOX_BREAK
UNSKIPPABLE "Das ist " COLOR("\x41") "Ganondorf" COLOR("\x40") ", Anführer der \n"
"Gerudos, die in der Wüste fern im\n"
"Westen unseres Landes leben."BOX_BREAK
UNSKIPPABLE "Er hat meinem Vater die Treue\n"
"geschworen, doch ich glaube nicht,\n"
"daß er aufrichtig ist."BOX_BREAK
UNSKIPPABLE "Die dunklen Wolken, die Hyrule in\n"
"meinen Träumen einhüllten...\n"
"Sie müssen diesen Mann\n"
"symbolisiert haben!"
);

DECLARE_MESSAGE_GER(0x700A,
SHIFT("\x08") "Hahaha! Ausgezeichnet, Kleiner!"BOX_BREAK_DELAYED("\x3C") "Wie ich mir dachte, besitzt Du den\n"
SHIFT("\x1A") "Schlüssel zum Zeitportal!"BOX_BREAK_DELAYED("\x5A")  SHIFT("\x34") "Du hast mich zum\n"
SHIFT("\x20") "Heiligen Reich geführt..."BOX_BREAK_DELAYED("\x50")  SHIFT("\x12") "Ich muß Dir danken, Kleiner!" FADE("\x32")
);

DECLARE_MESSAGE_GER(0x700B,
UNSKIPPABLE "Bitte! Wenn Du Dich nicht beeilst,\n"
"wird er fort sein!" EVENT
);

DECLARE_MESSAGE_GER(0x700C,
"Bitte... Verkaufe mir etwas mit " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Verkaufe mir den " COLOR("\x41") "Inhalt" COLOR("\x40") " einer\n"
"Flasche...\n"
"Bitte... Drücke " COLOR("\x46") "[C]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_GER(0x700D,
"Welch merkwürdiger Laden! \n"
"Ich frage mich, wann er öffnet.\n"
"Ich habe zwar das Schild gelesen,\n"
"aber es ist doch sehr seltsam!"
);

DECLARE_MESSAGE_GER(0x700E,
"Es scheint ewig zu dauern,\n"
"bis die Sonne aufgeht..."BOX_BREAK"Der Blick auf Schloß Hyrule im\n"
"Licht der aufgehenden Sonne ist\n"
"einfach fantastisch!"
);

DECLARE_MESSAGE_GER(0x700F,
"Um das Mädchen aus dem Wald zu\n"
"retten, brauchst Du einen\n"
COLOR("\x41") "weiteren Ausrüstungsgegenstand" COLOR("\x40") "... \n"
"Geh zurück nach Kakariko!"
);

DECLARE_MESSAGE_GER(0x7010,
"Es scheint, als hättest Du, was \n"
"Du benötigst... \n"
"Das" COLOR("\x42") " Mädchen aus dem Wald\n"
COLOR("\x40") "wartet auf Deine Hilfe..."
);

DECLARE_MESSAGE_GER(0x7011,
"Wenn Du Elixiere kaufen willst,\n"
"dann bringe eine leere Flasche mit.\n"
"Hast Du verstanden, Junge?" PERSISTENT
);

DECLARE_MESSAGE_GER(0x7012,
"Tut mir leid, das ist nur eine\n"
"Attrappe. Wegen der Probleme in\n"
"Goronia haben wir in der letzten\n"
"Zeit kein Material mehr bekommen." PERSISTENT
);

DECLARE_MESSAGE_GER(0x7013,
"Wenn Du auf den Todesberg willst,\n"
"kaufe besser einen " COLOR("\x44") "Hylia-Schild" COLOR("\x40") ".\n"
"Damit schützt Du Dich vor\n"
"herabfallenden Lavabrocken."BOX_BREAK"Aber für ein Kind ist der Schild\n"
"vielleicht eine Nummer zu groß..." PERSISTENT
);

DECLARE_MESSAGE_GER(0x7014,
"Ich tanze nicht, weißt Du...\n"
"Mir tut der Rücken weh!\n"
"Auu! Aaah!"
);

DECLARE_MESSAGE_GER(0x7015,
"Es heißt, wir " COLOR("\x44") "Hylianer " COLOR("\x40") "hätten so\n"
"große Ohren, um die Stimmen der\n"
"Götter hören zu können.\n"
"Aber ich habe sie nie gehört!"
);

DECLARE_MESSAGE_GER(0x7016,
UNSKIPPABLE "Warst Du schon einmal auf der\n"
COLOR("\x46") "Lon Lon-Farm" COLOR("\x40") ", Kleiner?"BOX_BREAK
UNSKIPPABLE "Die Milch dort ist köstlich!\n"
"Außerdem gibt es da viele Pferde,\n"
"und die junge Tochter des Farmers\n"
"ist richtig süß!" TEXTID("\x70\x17")
);

DECLARE_MESSAGE_GER(0x7017,
"Zur " COLOR("\x46") "Farm " COLOR("\x40") "kommst Du, wenn Du\n"
"nach dem Ortsausgang durch die\n"
"Steppe nach Süden gehst.\n"
"Besuche sie unbedingt einmal!"
);

DECLARE_MESSAGE_GER(0x7018,
UNSKIPPABLE "Ich wollte zu " COLOR("\x41") "Prinzessin Zelda" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Habe die Wachen umgangen..."BOX_BREAK
UNSKIPPABLE "Bin durch den Burggraben\n"
"geschwommen..."BOX_BREAK
UNSKIPPABLE "Ich war fast bei ihr, als sie\n"
"mich doch noch geschnappt haben!" TEXTID("\x70\x19")
);

DECLARE_MESSAGE_GER(0x7019,
"Ich habe ein enges " COLOR("\x41") "Abflußloch " COLOR("\x40") "auf\n"
"der Ostseite des Schlosses\n"
"gefunden und dachte, ich käme\n"
"durch. Aber ich blieb hängen!"
);

DECLARE_MESSAGE_GER(0x701A,
SHIFT("\x53")  QUICKTEXT_ENABLE "Ähem!" QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x06") "Dieser Bart ist mein ganzer Stolz!\n"
SHIFT("\x01") "Ist er nicht eindrucksvoll, Kleiner?"
);

DECLARE_MESSAGE_GER(0x701B,
UNSKIPPABLE  SHIFT("\x37") "Ähem! " QUICKTEXT_ENABLE "Hrrrm!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x06") "Dieser Bart ist mein ganzer Stolz!\n"
"Ist er nicht eindrucksvoll, Kleiner?"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x56") "Was?!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Du suchst den Typen von der\n"
"Lon Lon-Farm?"BOX_BREAK
UNSKIPPABLE "Hmmm, wart mal..." TEXTID("\x70\x1C")
);

DECLARE_MESSAGE_GER(0x701C,
"Ich habe gesehen, wie ein " COLOR("\x41") "Typ mit\n"
"einem zerrupften Bart" COLOR("\x40") " Kisten zum \n"
"Schloß gebracht hat."
);

DECLARE_MESSAGE_GER(0x701D,
UNSKIPPABLE "Kennst Du die " COLOR("\x44") "Zitadelle \n"
"der Zeit" COLOR("\x40") ", die sich im Nordosten\n"
"der Stadt befindet?" TEXTID("\x70\x1E")
);

DECLARE_MESSAGE_GER(0x701E,
"Die Legenden besagen, daß sich in\n"
"der Zitadelle der Zeit der Zugang\n"
"zum Heiligen Reich befindet..."BOX_BREAK"Hast Du das schon gewußt?"
);

DECLARE_MESSAGE_GER(0x701F,
UNSKIPPABLE "Hahaha! Welch dämlicher\n"
"Kerl!"BOX_BREAK
UNSKIPPABLE "Kannst Du Dir vorstellen, daß er\n"
"sich tatsächlich ins Schloß \n"
"hineinschleichen wollte,\n"
"um " COLOR("\x41") "Prinzessin Zelda" COLOR("\x40") " zu sehen?" TEXTID("\x70\x20")
);

DECLARE_MESSAGE_GER(0x7020,
"Wegen diesem Idioten haben sie\n"
"die Bewachung vor dem Schloß\n"
"noch verstärkt!\n"
"Hahaha!"
);

DECLARE_MESSAGE_GER(0x7021,
UNSKIPPABLE "Ich habe tierisch viel verdient!"BOX_BREAK
UNSKIPPABLE "Vielleicht sollte ich noch\n"
"mehr Sachen suchen, die ich\n"
"verkaufen kann!" TEXTID("\x70\x22")
);

DECLARE_MESSAGE_GER(0x7022,
"Ich weiß schon! Ich sollte zum\n"
COLOR("\x43") "Hylia-See" COLOR("\x40") " gehen!\n"
"Da wird immer eine Menge\n"
"interessantes Zeug angeschwemmt!"
);

DECLARE_MESSAGE_GER(0x7023,
UNSKIPPABLE "Hey, Waldschrat! Das ist " COLOR("\x44") "Hyrule" COLOR("\x40") "!\n"
"Nimm Dir Zeit und schau Dich in\n"
"aller Ruhe um!" TEXTID("\x70\x24")
);

DECLARE_MESSAGE_GER(0x7024,
"Wenn Du zum " COLOR("\x44") "Schloß von Hyrule" COLOR("\x40") "\n"
"möchtest, nimm die Straße zu\n"
"Deiner Rechten."BOX_BREAK"Wenn Du die " COLOR("\x43") "Seitenstraßen" COLOR("\x40") "\n"
"erforschen willst, geh\n"
"nach links."
);

DECLARE_MESSAGE_GER(0x7025,
"Hey!"BOX_BREAK"Du... siehst gut aus..."BOX_BREAK"Fast wie der König von Hyrule..."BOX_BREAK"Hihihi..."
);

DECLARE_MESSAGE_GER(0x7026,
"Ohh..."BOX_BREAK"Du bist ja..."BOX_BREAK"noch schöner..."BOX_BREAK"als Prinzessin Zelda..."BOX_BREAK"Ohh..."
);

DECLARE_MESSAGE_GER(0x7027,
UNSKIPPABLE "Hast Du von der Legende des\n"
"\"Schattenvolks\" gehört?"BOX_BREAK
UNSKIPPABLE "Es sind die " COLOR("\x43") "Shiekah" COLOR("\x40") "... Die Schatten\n"
"der Hylianer."BOX_BREAK
UNSKIPPABLE "Es heißt, sie hätten dem König von\n"
"Hyrule ewige Treue geschworen,\n"
"um ihn und seine Familie\n"
"stets zu beschützen."BOX_BREAK
UNSKIPPABLE "Aber nach solch einer langen Zeit\n"
"voller Frieden, haben wir schon\n"
"lange keinen der Shiekah mehr\n"
"gesehen."BOX_BREAK
UNSKIPPABLE "Dennoch..." TEXTID("\x70\x28")
);

DECLARE_MESSAGE_GER(0x7028,
"Ich habe gehört, daß es noch eine\n"
"Vertreterin der " COLOR("\x43") "Shiekah" COLOR("\x40") " geben soll.\n"
"Sie lebt im Schloß..."
);

DECLARE_MESSAGE_GER(0x7029,
"Also Du sagst, Du willst \n"
COLOR("\x41") "Prinzessin Zelda" COLOR("\x40") " sehen, wie?"BOX_BREAK"Du hast bestimmt im Ort von ihr\n"
"gehört und willst sie jetzt\n"
"unbedingt kennenlernen... Nun..."BOX_BREAK
QUICKTEXT_ENABLE "Geh heim!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Verschwinde!" QUICKTEXT_DISABLE "\n"
"Einem wie Dir würde die Prinzessin\n"
"niemals Audienz gewähren!"
);

DECLARE_MESSAGE_GER(0x702A,
"Zzzzzzzz..."BOX_BREAK"Murmel... Grummel..."BOX_BREAK"Milch... frisch abliefern..."BOX_BREAK"Muß... mich beeilen..."
);

DECLARE_MESSAGE_GER(0x702B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x35") "Was zum Teufel...?" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Kann man denn nicht mal für eine\n"
"Sekunde die Augen zumachen?"
);

DECLARE_MESSAGE_GER(0x702C,
UNSKIPPABLE "Hallo! Wer bist Du?"BOX_BREAK
UNSKIPPABLE "Also ich bin " COLOR("\x41") "Talon" COLOR("\x40") ", Besitzer der\n"
"Lon Lon-Farm."BOX_BREAK
UNSKIPPABLE "Ich war auf dem Weg zum Schloß,\n"
"um frische Milch zu liefern. Als\n"
"ich mich kurz ausruhen wollte, muß\n"
"ich wohl eingeschlafen sein..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4C")  SFX("\x68\x52") "Was?!\n"
"Malon sucht nach mir?\n"
"Da bekomme ich wieder gehörigen\n"
"Ärger!"BOX_BREAK
UNSKIPPABLE "Ich hatte ihr doch versprochen..."BOX_BREAK
UNSKIPPABLE "Au weia, das läuft nicht gut!" EVENT
);

DECLARE_MESSAGE_GER(0x702D,
QUICKTEXT_ENABLE  SHIFT("\x35") "Hey, Kleiner! Halt!\n"
"Stehenbleiben! Im Namen des Königs!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x702E,
UNSKIPPABLE  SHIFT("\x53")  QUICKTEXT_ENABLE "Nanu?" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x702F,
UNSKIPPABLE  SHIFT("\x3A") "Wer bist Du?"BOX_BREAK
UNSKIPPABLE "Wie hast Du es geschafft,\n"
"an den Wachen vorbeizukommen?" EVENT
);

DECLARE_MESSAGE_GER(0x7030,
"Nun, hast Du ihn dabei? \n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7031,
"Das ist seltsam...\n"
"Ich glaubte eben, Du wärst der\n"
"Junge aus meinem Traum...\n"
"Du hast ihn wirklich nicht?"BOX_BREAK"Sag mir bitte die Wahrheit..." EVENT
);

DECLARE_MESSAGE_GER(0x7032,
UNSKIPPABLE "Wie ich mir dachte!" EVENT
);

DECLARE_MESSAGE_GER(0x7033,
"Du wirst das doch\n"
"nicht weitererzählen?\n"
TWO_CHOICE  COLOR("\x42") "Okay!\n"
"Doch!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7034,
"Also das hätte ich von Dir\n"
"nicht gedacht!" EVENT
);

DECLARE_MESSAGE_GER(0x7035,
UNSKIPPABLE "Dies ist die Legende..." EVENT
);

DECLARE_MESSAGE_GER(0x7036,
UNSKIPPABLE  SHIFT("\x11") "Das " COLOR("\x41") "Triforce" COLOR("\x40") " vereinte die Kraft\n"
SHIFT("\x0A") "der drei Göttinnen. Sie verbargen\n"
SHIFT("\x1C") "es an einem Ort in Hyrule."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x0B") "Denn das Triforce hat die Macht,\n"
SHIFT("\x09") "die Wünsche dessen wahr werden\n"
SHIFT("\x09") "zu lassen, der es in Händen hält!"BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x0D") "Ein rechtschaffenes Herz würde\n"
SHIFT("\x13") "Hyrule in goldene Zeiten voller\n"
SHIFT("\x14") "Reichtum und Frieden führen..."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x0D") "Würden Wünsche eines Menschen\n"
SHIFT("\x12") "mit niederer Gesinnung erfüllt,\n"
SHIFT("\x07") "so verschlänge das Böse die Welt!"BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x0F") "Daher errichteten die Weisen die\n"
SHIFT("\x06")  COLOR("\x44") "Zitadelle der Zeit" COLOR("\x40") ", um das Triforce\n"
SHIFT("\x0C") "vor bösen Mächten zu bewahren." FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x7037,
"Die Zitadelle der Zeit ist\n"
"in unserer Welt der Zugang zum\n"
"Heiligen Reich."BOX_BREAK"Doch dieser Zugang ist versiegelt\n"
"durch eine steinerne Mauer, die\n"
"man " COLOR("\x44") "Zeitportal" COLOR("\x40") " nennt."BOX_BREAK"Es heißt, man brauche die drei\n"
COLOR("\x41") "Heiligen Steine" COLOR("\x40") ", um den Zugang\n"
"zu öffnen."BOX_BREAK"Und noch etwas... Nämlich ein\n"
"uraltes Relikt, das im Besitz der\n"
"Königsfamilie von Hyrule ist..." EVENT
);

DECLARE_MESSAGE_GER(0x7038,
"Oh, tut mir leid...\n"
"Ich konnte noch nie gut\n"
"Geschichten erzählen..." EVENT
);

DECLARE_MESSAGE_GER(0x7039,
UNSKIPPABLE  QUICKTEXT_ENABLE "Was ist passiert?" QUICKTEXT_DISABLE " Hat er Dich\n"
"gesehen?"BOX_BREAK
UNSKIPPABLE "Hab keine Angst."BOX_BREAK
UNSKIPPABLE "Er hat keine Ahnung von unseren\n"
"Plänen... Noch nicht!" EVENT
);

DECLARE_MESSAGE_GER(0x703A,
UNSKIPPABLE "Bitte!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Ich glaube kein Wort!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x703B,
UNSKIPPABLE  SHIFT("\x38") "Ich danke Dir!" EVENT
);

DECLARE_MESSAGE_GER(0x703C,
"Meine Vertraute wird Dich aus\n"
"dem Schloß geleiten. Unterhalte\n"
"Dich ruhig mit ihr."
);

DECLARE_MESSAGE_GER(0x703D,
"Der Heilige Stein...\n"
"Du hast ihn gefunden!"BOX_BREAK"Wesen, deren Volk einen Heiligen\n"
"Stein besitzt, vertrauen sich nur\n"
"dem an, der eine" COLOR("\x43") " Melodie aus dem\n"
"Erbe unserer Familie" COLOR("\x40") " kennt."BOX_BREAK"Doch das wußtest Du bereits,\n"
"nicht wahr?"
);

DECLARE_MESSAGE_GER(0x703E,
"Hey, hast Du schon gehört, daß\n"
"Prinzessin Zelda in ihren Träumen\n"
"die Zukunft voraussieht?"
);

DECLARE_MESSAGE_GER(0x703F,
"Häh? Was? Still, Kleiner! Still!"
);

DECLARE_MESSAGE_GER(0x7040,
"Hier sind drei Vertiefungen\n"
"und eine Inschrift..."BOX_BREAK
QUICKTEXT_ENABLE "Jener mit den drei Heiligen Steinen" COLOR("\x43") "\n"
COLOR("\x40") "nehme seine " COLOR("\x44") "Okarina " COLOR("\x40") "zur Hand" COLOR("\x43") "\n"
COLOR("\x40") "und spiele hier die " COLOR("\x44") "Hymne der Zeit" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK"Seltsam, aber so steht\n"
"es geschrieben..." EVENT
);

DECLARE_MESSAGE_GER(0x7041,
"Hey, geht das nicht auch ein\n"
"bißchen billiger?"
);

DECLARE_MESSAGE_GER(0x7042,
"Hey, nimm Deine Finger weg!\n"
"Ich hab es zuerst gesehen!"
);

DECLARE_MESSAGE_GER(0x7043,
"Hey, wer drängelt sich da vor?!"
);

DECLARE_MESSAGE_GER(0x7044,
"Es ist komisch, daß Gerudos hier\n"
"eingedrungen sind... Das kommt mir\n"
"seltsam vor...!"
);

DECLARE_MESSAGE_GER(0x7045,
"War das nicht Prinzessin Zelda\n"
"auf diesem Schimmel?"
);

DECLARE_MESSAGE_GER(0x7046,
"Der schwarze Hengst dieses\n"
"Reiters hätte mich um ein Haar\n"
"zertrampelt!"
);

DECLARE_MESSAGE_GER(0x7047,
"Der Typ auf dem schwarzen Pferd\n"
"war bestimmt Ganondorf, der Herr\n"
"der Gerudo-Kriegerinnen!"
);

DECLARE_MESSAGE_GER(0x7048,
"Was ist denn hier passiert?"
);

DECLARE_MESSAGE_GER(0x7049,
"Schau Dir den Weichling an!\n"
"Er hat sich vor Angst fast in die \n"
"Hosen gemacht!\n"
"Hahaha!"
);

DECLARE_MESSAGE_GER(0x704A,
"Ich habe das Gefühl, daß noch viel\n"
"Schrecklicheres passieren wird...\n"
"Vielleicht sollte ich abhauen!"
);

DECLARE_MESSAGE_GER(0x704B,
"Im Schloß ist etwas Schlimmes\n"
"passiert! Sei lieber vorsichtig,\n"
"Kleiner!"
);

DECLARE_MESSAGE_GER(0x704C,
"Mit diesem " COLOR("\x41") "Schlüssel" COLOR("\x40") " kannst Du\n"
"den nächsten Raum betreten.\n"
"Los doch! Worauf wartest Du?"
);

DECLARE_MESSAGE_GER(0x704D,
"Die Person auf dem Schimmel, die\n"
"das Mädchen festhielt... War das\n"
"nicht eine der legendären Shiekah?"
);

DECLARE_MESSAGE_GER(0x704E,
UNSKIPPABLE  SHIFT("\x2D")  NAME "..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4B") "Wach auf!\n"
SHIFT("\x21") "Du bist der Auserwählte!"
);

DECLARE_MESSAGE_GER(0x704F,
UNSKIPPABLE "Ich bin " COLOR("\x41") "Rauru" COLOR("\x40") ", einer der Weisen..."BOX_BREAK
UNSKIPPABLE "Ich habe die Zitadelle der Zeit\n"
"erbaut, um den Zugang zum\n"
"Heiligen Reich zu schützen..."BOX_BREAK
UNSKIPPABLE "Dies ist die " COLOR("\x41") "Halle der Weisen \n"
COLOR("\x40") "im Tempel des Lichts..."BOX_BREAK
UNSKIPPABLE "Der Tempel des Lichts befindet\n"
"sich im Zentrum des Heiligen\n"
"Reiches. Er ist die letzte Festung\n"
"gegen die Macht Ganondorfs."BOX_BREAK
UNSKIPPABLE "Das " COLOR("\x41") "Master-Schwert" COLOR("\x40") ", das alles\n"
"Böse vernichtet und das Du aus\n"
"dem Zeitenfels zogst, öffnete\n"
"das Tor zum Heiligen Reich!"BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Erschrick nicht...\n"
"Schau Dich an..."
);

DECLARE_MESSAGE_GER(0x7050,
UNSKIPPABLE  SHIFT("\x27")  COLOR("\x44") "Sieh nur, " NAME "!\n"
COLOR("\x40")  SHIFT("\x31")  COLOR("\x44") "Du bist gewachsen!\n"
COLOR("\x40")  SHIFT("\x25")  COLOR("\x44") "Du bist älter geworden!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7051,
UNSKIPPABLE "Das Master-Schwert hat eine\n"
"heilige Klinge, die nie in die \n"
"Hände des Bösen fallen darf..."BOX_BREAK
UNSKIPPABLE "Nur jener, der zu Recht den\n"
"Namen " COLOR("\x41") "Herr der Zeiten" COLOR("\x40") " trägt, ist\n"
"in der Lage, es aus dem Zeitenfels\n"
"zu ziehen..."BOX_BREAK
UNSKIPPABLE "Doch Du warst noch zu jung für\n"
"diese Aufgabe..."BOX_BREAK
UNSKIPPABLE "Daher haben wir Deine Seele für\n"
"sieben Jahre hier gebannt."BOX_BREAK
UNSKIPPABLE "Nun ist es Zeit, daß Du wieder in\n"
"die Welt zurückkehrst und Deine\n"
"Mission vollendest!"BOX_BREAK"Nun, hast Du verstanden, was\n"
"Deine Bestimmung ist?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7052,
"Nun, es sieht aus, als wärest Du\n"
"etwas verwirrt... Laß mich noch\n"
"einmal von vorn beginnen." TEXTID("\x70\x51")
);

DECLARE_MESSAGE_GER(0x7053,
UNSKIPPABLE "Doch vergiß niemals..."BOX_BREAK
UNSKIPPABLE "Obwohl Du nur mit edelstem\n"
"Ansinnen das Zeitportal geöffnet\n"
"hast..."BOX_BREAK
UNSKIPPABLE "...hat der niederträchtige\n"
COLOR("\x41") "Ganondorf" COLOR("\x40") " dadurch das Heilige\n"
"Reich betreten können!"BOX_BREAK
UNSKIPPABLE "Er riß das Triforce-Fragment im\n"
"Tempel des Lichts an sich. Durch\n"
"dessen Kraft wurde er zum\n"
COLOR("\x41") "Großmeister des Bösen" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Seine schwarze Macht überzog\n"
"ganz Hyrule, entweihte die Tempel\n"
"und verwandelte das einst blühende\n"
"Land in ein Refugium des Unheils!"BOX_BREAK
UNSKIPPABLE "Meine Kraft ist nur noch\n"
"verschwindend gering, selbst in\n"
"diesem Heiligen Reich..."BOX_BREAK
UNSKIPPABLE "Sie kann lediglich diese Halle\n"
"der Weisen noch schützen."BOX_BREAK
UNSKIPPABLE "Doch noch ist Hoffnung..."BOX_BREAK
UNSKIPPABLE "Die Kraft der Weisen blieb\n"
"erhalten."BOX_BREAK
UNSKIPPABLE "Wenn die Kraft jedes der " COLOR("\x41") "Sieben\n"
"Weisen " COLOR("\x40") "wieder geweckt wird..."BOX_BREAK
UNSKIPPABLE "...kann mit den " COLOR("\x41") "Amuletten" COLOR("\x40") " die\n"
"Macht des Bösen ins Höllenreich\n"
"verbannt werden!"BOX_BREAK
UNSKIPPABLE "Ich, Rauru, bin einer dieser\n"
"Weisen..."BOX_BREAK
UNSKIPPABLE "Der Auserwählte, die Kraft der\n"
"Weisen zu wecken, bist Du - der\n"
COLOR("\x41") "Herr der Zeiten" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Du bist als Träger des \n"
"Master-Schwerts dazu auserwählt!"BOX_BREAK
UNSKIPPABLE "Ich übertrage Dir meine Macht...\n"
"Geh nun, erwecke die Kraft der\n"
"anderen Weisen und vereine deren\n"
"Macht mit Deiner Stärke!"
);

DECLARE_MESSAGE_GER(0x7054,
UNSKIPPABLE  COLOR("\x44")  NAME "... Wir sind zurück\n"
"in der " COLOR("\x40") "Zitadelle der Zeit" COLOR("\x44") "...\n"
"Aber sind wirklich " COLOR("\x40") "sieben Jahre\n"
COLOR("\x44") "vergangen?" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Es sieht so aus, als könntest\n"
"Du einige " COLOR("\x40") "Waffen" COLOR("\x44") ", die Du damals\n"
"gefunden hast, nicht mehr\n"
"benutzen..."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Los, laß uns gehen!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7055,
"Hey, was ist...? \n"
"Was ist schlimm daran, den Tag\n"
"über rumzuhängen, Kleiner?"BOX_BREAK"Was willst Du?"
);

DECLARE_MESSAGE_GER(0x7056,
UNSKIPPABLE "Ich habe auf Dich gewartet,\n"
"junger Held..."
);

DECLARE_MESSAGE_GER(0x7057,
UNSKIPPABLE "Beherrscht das Böse die Welt,\n"
"weilen jene Weisen, die von der\n"
"Stimme des Heiligen Reiches erweckt\n"
"werden, noch in den " COLOR("\x41") "fünf Tempeln" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Einer in " COLOR("\x42") "dunklen Wäldern" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Einer auf " COLOR("\x41") "hohem Berge" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Einer im " COLOR("\x43") "tiefen See" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Einer an der " COLOR("\x45") "Stätte des Todes" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Einer innerhalb der\n"
COLOR("\x46") "Göttin des Sandes" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Zusammen mit dem Auserwählten\n"
"werden diese ihre Kräfte einsetzen,\n"
"um der Welt den Frieden\n"
"wiederzugeben..."BOX_BREAK
UNSKIPPABLE "Dies ist die Legende der Tempel,\n"
"wie sie von meinem Volk, den\n"
COLOR("\x43") "Shiekah" COLOR("\x40") ", überliefert wurde."
);

DECLARE_MESSAGE_GER(0x7058,
"Oh, tut mir leid.\n"
"Wir haben noch nicht geöffnet.\n"
"Komm bitte später wieder!" EVENT
);

DECLARE_MESSAGE_GER(0x7059,
UNSKIPPABLE "Nimm das " COLOR("\x41") "Master-Schwert" COLOR("\x40") "!\n"
"Vernichte Ganon mit Deiner\n"
"heiligen Waffe!"
);

DECLARE_MESSAGE_GER(0x705A,
UNSKIPPABLE "Ich habe auf Dich gewartet,\n"
NAME "."
);

DECLARE_MESSAGE_GER(0x705B,
UNSKIPPABLE  NAME ", der Auserwählte..."BOX_BREAK
UNSKIPPABLE "Du hast unzählige Gefahren \n"
"überwunden und die sechs\n"
"Weisen erweckt."BOX_BREAK
UNSKIPPABLE "Nun wartet Deine größte Aufgabe:\n"
"Ein letztes Zusammentreffen mit\n"
"Ganondorf, dem Großmeister\n"
"des Bösen..."
);

DECLARE_MESSAGE_GER(0x705C,
UNSKIPPABLE  SHIFT("\x24") "Suchst Du das Triforce,\n"
SHIFT("\x38") "so höre gut zu..."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x08") "Es befindet sich im Heiligen Reich.\n"
SHIFT("\x16") "Dies ist ein Ort, der auf die\n"
SHIFT("\x08") "Wünsche Deines Herzens reagiert..."BOX_BREAK_DELAYED("\x46")  UNSKIPPABLE  SHIFT("\x07") "Ein schwarzes Herz macht es zum\n"
SHIFT("\x10") "Hort des Übels. Ein reines Herz\n"
SHIFT("\x04") "aber verwandelt es in ein Paradies!"BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x08") "Das Triforce... Symbol der Macht...\n"
SHIFT("\x12") "birgt das Gleichgewicht dreier\n"
SHIFT("\x0B") "Kräfte: Weisheit, Mut und Kraft!"BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x11") "Sind diese Kräfte ausgeglichen\n"
SHIFT("\x04") "im Herzen des Triforce-Trägers, hat\n"
SHIFT("\x02") "er die Macht, gerecht zu herrschen."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x1C") "Doch ist das Herz nicht im\n"
SHIFT("\x08") "Gleichgewicht, so spaltet sich das\n"
SHIFT("\x0A") "Triforce in seine drei Fragmente!"BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x07") "Nur ein Fragment bleibt ihm: Jenes\n"
SHIFT("\x01") "nämlich, das zu der Kraft gehört, an\n"
SHIFT("\x0C") "die er selbst am meisten glaubt."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x29") "Will er nun alle Macht\n"
SHIFT("\x17") "erhalten, muß er die anderen\n"
SHIFT("\x10") "Fragmente des Triforce finden!"BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x09") "Noch zwei vom Schicksal Erwählte\n"
SHIFT("\x09") "tragen je ein Triforce-Element als\n"
SHIFT("\x14") "Symbol auf ihrem Handrücken!" FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x705D,
UNSKIPPABLE "Sieben Jahre zuvor drang\n"
"Ganondorf in das Heilige Reich\n"
"ein, dessen Zugang Du in der\n"
"Zitadelle der Zeit geöffnet hast."BOX_BREAK
UNSKIPPABLE "Als seine Hände das Triforce\n"
"berührten, wurde die Legende wahr!"
);

DECLARE_MESSAGE_GER(0x705E,
UNSKIPPABLE "Der Auserwählte mit dem " COLOR("\x41") "Symbol \n"
"des Mutes " COLOR("\x40") "bist...\n"
"Du, " NAME "!"
);

DECLARE_MESSAGE_GER(0x705F,
UNSKIPPABLE "Das " COLOR("\x41") "Symbol der Weisheit" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "...trägt der siebte Weise,\n"
"dessen Bestimmung es ist, zum\n"
"Meister aller zu werden..."
);

DECLARE_MESSAGE_GER(0x7060,
UNSKIPPABLE "Ich bin es - " COLOR("\x41") "Zelda" COLOR("\x40") ",\n"
"Prinzessin von Hyrule."
);

DECLARE_MESSAGE_GER(0x7061,
UNSKIPPABLE "Verzeih, daß ich Dich stets in\n"
"dieser Verkleidung aufgesucht habe.\n"
"Doch es war nötig, da ich mich\n"
"vor Ganondorf verstecken mußte."
);

DECLARE_MESSAGE_GER(0x7062,
"Ich habe Dich gesehen, als ich mit\n"
"Impa zusammen aus dem \n"
"Schloß floh." FADE("\x50")
);

DECLARE_MESSAGE_GER(0x7063,
UNSKIPPABLE "Solange Du die Okarina in Deinen\n"
"Händen hältst, so dachte ich, wäre\n"
"es Ganondorf nicht möglich, das\n"
"Heilige Reich zu betreten. Aber..."BOX_BREAK
UNSKIPPABLE "...etwas, das ich nie erwartet\n"
"hätte, ist geschehen..."
);

DECLARE_MESSAGE_GER(0x7064,
UNSKIPPABLE  SHIFT("\x3D") "Dieses Beben...\n"
SHIFT("\x30") "Was geschieht hier?\n"
SHIFT("\x2E") "Das darf nicht sein!"
);

DECLARE_MESSAGE_GER(0x7065,
UNSKIPPABLE "Prinzessin Zelda... Endlich\n"
"habe ich Dich!"BOX_BREAK
UNSKIPPABLE "Ich bin beeindruckt, daß es Dir\n"
"gelungen ist, mir sieben Jahre lang\n"
"zu entkommen!"
);

DECLARE_MESSAGE_GER(0x7066,
UNSKIPPABLE "Nie wirst Du Zelda retten!\n"
"Wagst Du es, mein Schloß zu\n"
"betreten, vernichte ich auch Dich!"
);

DECLARE_MESSAGE_GER(0x7067,
UNSKIPPABLE  NAME "... Hörst Du mich?\n"
"Hier spricht Rauru."BOX_BREAK
UNSKIPPABLE "Die sechs Weisen sammeln ihre\n"
"Kraft, um eine Brücke zum Portal\n"
"von Ganondorfs Schloß zu legen..."BOX_BREAK
UNSKIPPABLE "Der Wachturm des Schlosses, auch\n"
"der " COLOR("\x41") "Teufelsturm" COLOR("\x40") " genannt, wird von\n"
"sechs " COLOR("\x41") "Siegeln des Bösen" COLOR("\x40") "\n"
"blockiert!"BOX_BREAK
UNSKIPPABLE "Brich die Siegel,\n"
"dringe in den Turm ein und\n"
"rette Prinzessin Zelda!"
);

DECLARE_MESSAGE_GER(0x7068,
"7068"
);

DECLARE_MESSAGE_GER(0x7069,
"7069"
);

DECLARE_MESSAGE_GER(0x706A,
"706a"
);

DECLARE_MESSAGE_GER(0x706B,
"706b"
);

DECLARE_MESSAGE_GER(0x706C,
"Ihr Erschaffer Hyrules!"BOX_BREAK_DELAYED("\x3C") "Öffnet das versiegelte Portal und\n"
"schickt diese Kreatur des Bösen\n"
"in den Abgrund der Hölle!" FADE("\x5A")
);

DECLARE_MESSAGE_GER(0x706D,
UNSKIPPABLE  NAME "!\n"
"Zerstöre ihn mit Deiner heiligen\n"
"Waffe - mit dem Master-Schwert!"
);

DECLARE_MESSAGE_GER(0x706E,
UNSKIPPABLE "Oh, heiliges Portal, entriegelt von\n"
"den Weisen... Schließe Dich für\n"
"immer und schütze unsere Welt vor\n"
"dieser üblen Kreatur des Bösen!"
);

DECLARE_MESSAGE_GER(0x706F,
UNSKIPPABLE "Danke, " NAME "..."BOX_BREAK
UNSKIPPABLE "Dank Deiner Hilfe ist es gelungen,\n"
"den Großmeister des Bösen in das\n"
"Reich der Hölle zu verbannen!"BOX_BREAK
UNSKIPPABLE "Nun wird wieder Frieden herrschen\n"
"in unserer Welt... Hoffentlich für \n"
"alle Zeit."
);

DECLARE_MESSAGE_GER(0x7070,
UNSKIPPABLE  SHIFT("\x54") "Danke!\n"
SHIFT("\x49")  NAME "..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  SHIFT("\x47") "Lebe wohl..." FADE("\x3C")
);

DECLARE_MESSAGE_GER(0x7071,
"Möchtest Du unbedingt durch\n"
"dieses Tor gehen? Nun, dann\n"
"verlange ich eine Gegenleistung...\n"
"Sagen wir..." TEXTID("\x70\x72")
);

DECLARE_MESSAGE_GER(0x7072,
"Gib mir 10 Rubine!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x7073,
"Bitte glaube mir...\n"
"Meine Prophezeiungen waren\n"
"niemals falsch!" EVENT
);

DECLARE_MESSAGE_GER(0x7074,
UNSKIPPABLE "Du hast jene bösen Geister\n"
"vernichtet, die im Tempel hausten.\n"
"Und Du hast " COLOR("\x42") "Salia" COLOR("\x40") " erweckt..."BOX_BREAK
UNSKIPPABLE "Doch sie ist nicht die einzige, die\n"
"Deiner Hilfe bedarf."BOX_BREAK
UNSKIPPABLE "Um alle Weisen zu erwecken, mußt\n"
"Du noch weit stärker werden!"BOX_BREAK
UNSKIPPABLE "Reise zu den Bergen..."BOX_BREAK
UNSKIPPABLE "...in die Tiefen des Wassers..."BOX_BREAK
UNSKIPPABLE "...und sogar durch die Zeit..."
);

DECLARE_MESSAGE_GER(0x7075,
UNSKIPPABLE "Solange Du die " COLOR("\x44") "Okarina\n"
"der Zeit" COLOR("\x40") " und das " COLOR("\x44") "Master-Schwert" COLOR("\x40") "\n"
"in Deinen Händen hältst..."BOX_BREAK
UNSKIPPABLE "...hast Du auch Macht\n"
"über die Zeit!"BOX_BREAK
UNSKIPPABLE  NAME ", wir sehen\n"
"uns wieder!"
);

DECLARE_MESSAGE_GER(0x7076,
"Eine neuartige Bombe! Ich kann Dir\n"
"nur eine begrenzte Stückzahl\n"
"anbieten. Ist das Lager leer,\n"
"gibt es keinen Nachschub mehr." EVENT
);

DECLARE_MESSAGE_GER(0x7077,
UNSKIPPABLE "Ich bin " COLOR("\x41") "Shiek" COLOR("\x40") ". Ich gehöre\n"
"den letzten Überlebenden\n"
"der Shiekah an..."
);

DECLARE_MESSAGE_GER(0x7078,
UNSKIPPABLE "Wahrlich, Du siehst aus wie der,\n"
"der uns prophezeit wurde. Tapfer " COLOR("\x41") "\n"
COLOR("\x40") "hältst Du das " COLOR("\x41") "Master-Schwert " COLOR("\x40") "in \n"
"der Hand..."
);

DECLARE_MESSAGE_GER(0x7079,
UNSKIPPABLE "Willst Du die Prophezeiung \n"
"erfüllen, so suche nach den fünf \n"
"Tempeln und befreie die dort \n"
"eingesperrten " COLOR("\x41") "fünf Weisen" COLOR("\x40") "..."
);

DECLARE_MESSAGE_GER(0x707A,
UNSKIPPABLE "Einer von ihnen wartet im \n"
COLOR("\x42") "Waldtempel" COLOR("\x40") " darauf, sich Deiner zu \n"
"offenbaren. Es ist ein Mädchen, an  \n"
"das Du Dich sicher erinnern wirst..."BOX_BREAK
UNSKIPPABLE "Aufgrund der bösen Aura, die den \n"
"Tempel umgibt, kann sie den \n"
"Ruf des Heiligen Reiches nicht \n"
"hören..."BOX_BREAK
UNSKIPPABLE "Mit Deiner jetzigen Ausrüstung\n"
"kannst Du den Tempel nicht \n"
"betreten..."BOX_BREAK
UNSKIPPABLE "So höre meine Worte und begib \n"
"Dich nach " COLOR("\x41") "Kakariko" COLOR("\x40") ", um dort das \n"
"zu suchen, das Dein Schlüssel zum \n"
"Tempel sein soll..."BOX_BREAK
UNSKIPPABLE "Hast Du mich verstanden, \n"
NAME "?"
);

DECLARE_MESSAGE_GER(0x707B,
"Ich fühlte, daß Du derjenige bist,\n"
"der die Okarina haben soll...\n"
"Ich wußte, daß es unsere beste\n"
"und einzige Chance war..." FADE("\x50")
);

DECLARE_MESSAGE_GER(0x707C,
UNSKIPPABLE "Bevor Du aufbrichst, solltest\n"
"Du meinen Worten lauschen..."BOX_BREAK
UNSKIPPABLE "So höre denn die Legende, \n"
"die sich die Shiekah über das \n"
"Triforce erzählten..."
);

DECLARE_MESSAGE_GER(0x707D,
UNSKIPPABLE "Als das Triforce in drei Teile\n"
"zerbrach, gelang es Ganondorf \n"
"lediglich, das " COLOR("\x41") "Triforce-Fragment\n"
"der Kraft " COLOR("\x40") "zu erringen..."
);

DECLARE_MESSAGE_GER(0x707E,
UNSKIPPABLE "Durch die Macht des Triforce-Teils\n"
"wurden seine teuflischen Kräfte \n"
"verstärkt. Doch sein Drang, Böses \n"
"zu tun, ist noch nicht befriedigt..."
);

DECLARE_MESSAGE_GER(0x707F,
UNSKIPPABLE "Daher sucht er nun " COLOR("\x41") "die, die \n"
"auserwählt wurden" COLOR("\x40") ", Träger der \n"
"anderen Triforce-Elemente zu \n"
"sein..."
);

DECLARE_MESSAGE_GER(0x7080,
UNSKIPPABLE "Heute vor genau sieben Jahren\n"
"suchte Ganondorf mit seiner Horde \n"
"wilder Kriegerinnen Hyrule heim..."
);

DECLARE_MESSAGE_GER(0x7081,
UNSKIPPABLE "Als Du das Tor zur Zeit betreten \n"
"hast, bannte Dich das Schwert \n"
"sieben Jahre im Heiligen Reich..."
);

DECLARE_MESSAGE_GER(0x7082,
UNSKIPPABLE "Dein Geist ruhte im Vakuum der\n"
"Zeit... Das Triforce fiel in Ganondorfs\n"
"blutige Hände, die Unheil über \n"
"das Heilige Reich brachten..."BOX_BREAK
UNSKIPPABLE "Ganondorf verlor mehr und mehr\n"
"sein menschliches Antlitz. Er\n"
"wurde zum Großmeister des Bösen,\n"
"dem Boten des Todes..."BOX_BREAK
UNSKIPPABLE "In all den Jahren gelang es mir, \n"
"mich als Shiekah zu tarnen und \n"
"so meinem Schicksal zu entgehen...\n"
"Ich wartete sieben Jahre..."
);

DECLARE_MESSAGE_GER(0x7083,
UNSKIPPABLE "Doch nun endlich bist Du \n"
"zurückgekehrt! Die Herrschaft des \n"
"Terrors soll jetzt ihr Ende finden!\n"
"Die Tage des Bösen sind gezählt!"
);

DECLARE_MESSAGE_GER(0x7084,
UNSKIPPABLE "Die sechs Weisen werden neue \n"
"Siegel schaffen und Ganondorf \n"
"für immer in die Tiefen der Hölle\n"
"verbannen..."BOX_BREAK
UNSKIPPABLE "Ist dies vollbracht, werde ich das \n"
"Tor zum Heiligen Reich auf ewig \n"
"schließen!"BOX_BREAK
UNSKIPPABLE "Auf diese Weise wird Ganondorf \n"
"und mit ihm alles Böse für alle \n"
"Zeit aus Hyrule verschwinden."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Um dieses Vorhaben mit Erfolg zu \n"
"krönen, mußt Du mich schützen, \n"
"bis der Plan vollbracht ist."BOX_BREAK
UNSKIPPABLE "Nimm nun die Waffe an Dich, die\n"
"die Kraft des Bösen mitten ins\n"
"schwarze Herz trifft..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x0D") "Die heiligen " COLOR("\x44") "Pfeile des Lichts" COLOR("\x40") "!"
);

DECLARE_MESSAGE_GER(0x7085,
UNSKIPPABLE "Endlich gibst Du Dich zu erkennen...\n"
"Ich wußte, daß ich nur dem Jungen\n"
"zu folgen brauchte, um Dich zu\n"
"finden..."
);

DECLARE_MESSAGE_GER(0x7086,
UNSKIPPABLE "Mein einziger Fehler war, die\n"
"Kräfte des Jungen zu \n"
"unterschätzen..."
);

DECLARE_MESSAGE_GER(0x7087,
UNSKIPPABLE "Nein... Es war nicht seine\n"
"Kraft, die ich unterschätzte.\n"
"Es waren die Kräfte des Triforce-\n"
"Symbols für Mut!"BOX_BREAK
UNSKIPPABLE "Doch mit dem Element, das er \n"
"besitzt, und dem Triforce der \n"
"Weisheit, das in Deinen Händen \n"
"ruht, schließt sich der Kreis..."BOX_BREAK
UNSKIPPABLE "Mit allen drei Elementen werde \n"
"ich zum Herrscher dieser Welt!"
);

DECLARE_MESSAGE_GER(0x7088,
QUICKTEXT_ENABLE "Als der Auserwählte die Okarina \n"
"spielte, öffnete sich das Portal \n"
"der Zeit. Das Master-Schwert \n"
"machte ihn zum Helden der Legende." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x7089,
"Ich weiß nicht, warum, aber \n"
"irgendwie scheinen die Hunde die\n"
"Nacht zu mögen...\n"
"Komisch, oder?"
);

DECLARE_MESSAGE_GER(0x708A,
"Hey, Kleiner! Ich verrate Dir\n"
"etwas..."BOX_BREAK"Ich hörte, daß sich in der Nähe des \n"
"Schlosses eine " COLOR("\x41") "geheimnisvolle \n"
"Quelle " COLOR("\x40") "befinden soll..."
);

DECLARE_MESSAGE_GER(0x708B,
UNSKIPPABLE "Willst Du in die Zeit, aus der Du\n"
"kamst, zurückkehren, so plaziere \n"
"das Master-Schwert wieder im \n"
COLOR("\x41") "Zeitenfels" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Tust Du dies, so reist Du\n"
"sieben Jahre in der Zeit \n"
"zurück..."
);

DECLARE_MESSAGE_GER(0x708C,
UNSKIPPABLE "Es wird die Zeit kommen, da\n"
"Du in Windeseile an diesen Ort \n"
"zurückkehren mußt... \n"
"Lausche daher meinen Worten..."BOX_BREAK
UNSKIPPABLE "Das Lied, das Du spielen mußt, \n"
"um zur Zitadelle der Zeit \n"
"zurückzukehren ist...\n"
COLOR("\x44") "die Kantate des Lichts" COLOR("\x40") "..."
);

DECLARE_MESSAGE_GER(0x708D,
UNSKIPPABLE "Ich bin " COLOR("\x41") "Impa" COLOR("\x40") ", Überlebende der \n"
"Shiekah. Meine Aufgabe ist, Zelda \n"
"zu schützen. Alles ist so geschehen, \n"
"wie es die Prinzessin prophezeite."
);

DECLARE_MESSAGE_GER(0x708E,
"Wenn Dich die Soldaten hier \n"
"finden, bekommst Du Ärger. Laß \n"
"mich Dich aus dem Schloß führen!"
);

DECLARE_MESSAGE_GER(0x708F,
QUICKTEXT_ENABLE "Hey, Du! Mach keinen Ärger!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x7090,
UNSKIPPABLE "Du bist ein tapferer Junge!\n"
"Die Vorsehung hat Dich an diesen \n"
"Ort geführt..."BOX_BREAK
UNSKIPPABLE "Mir wird nun die Aufgabe zuteil, \n"
"Dich eine Melodie zu lehren, die\n"
"Du nie vergessen darfst!"BOX_BREAK
UNSKIPPABLE "Es ist ein Lied, " COLOR("\x43") "das die \n"
"Königsfamilie von Generation zu \n"
"Generation weitergibt" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Ich habe dieses Lied für\n"
"Prinzessin Zelda gespielt, als sie\n"
"noch ein kleines Kind war."BOX_BREAK
UNSKIPPABLE "In den Noten verbergen\n"
"sich mysteriöse Kräfte!"BOX_BREAK
UNSKIPPABLE "Lausche nun der Melodie..."
);

DECLARE_MESSAGE_GER(0x7091,
UNSKIPPABLE "Ich bin schuld an all dem Unheil, \n"
"das über Hyrule kam..."BOX_BREAK
UNSKIPPABLE "Ich war zu jung... Ich konnte noch\n"
"nicht wissen, welche Fährnisse\n"
"sich mir auftun würden..."BOX_BREAK
UNSKIPPABLE "Ich habe Dich in all das \n"
"hineingezogen..."BOX_BREAK
UNSKIPPABLE "Nun ist es an der Zeit, meinen\n"
"Fehler wiedergutzumachen..."BOX_BREAK
UNSKIPPABLE "Leg nun das Master-Schwert aus \n"
"Deinen Händen und schließe so\n"
"das Zeitportal..."
);

DECLARE_MESSAGE_GER(0x7092,
UNSKIPPABLE "Die Verbindung zwischen den\n"
"Zeiten sei für immer gelöst..."
);

DECLARE_MESSAGE_GER(0x7093,
UNSKIPPABLE  NAME ",\n"
"gib mir die Okarina..."BOX_BREAK
UNSKIPPABLE "Als eine der Weisen habe ich die \n"
"Gabe, Dich in Deine Zeit \n"
"zurückbringen zu können."
);

DECLARE_MESSAGE_GER(0x7094,
UNSKIPPABLE "Nun herrscht wieder Friede\n"
"in Hyrule..."BOX_BREAK
UNSKIPPABLE "Und nun ist es für uns an der\n"
"Zeit, Abschied zu nehmen..."
);

DECLARE_MESSAGE_GER(0x7095,
UNSKIPPABLE "Gehe nun, " NAME ".\n"
"Hole die verlorenen sieben Jahre\n"
"nach!"BOX_BREAK
UNSKIPPABLE "Gehe nach Hause... \n"
"Dorthin, wo Dein Platz ist...\n"
"Als der, als der Du aufwuchst..."
);

DECLARE_MESSAGE_GER(0x7096,
SHIFT("\x46")  QUICKTEXT_ENABLE "Tss..." QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "tss..." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x7097,
"Das scheint für ein Kind\n"
"ein zu hoher Preis zu sein." EVENT
);

DECLARE_MESSAGE_GER(0x7098,
"Nun gut, ich lasse Dich passieren!\n"
"Schnell!" EVENT
);

DECLARE_MESSAGE_GER(0x7099,
"ERZÄHL DAS BLOSS \n"
"NIEMANDEM!"
);

DECLARE_MESSAGE_GER(0x709A,
"Mann, ich bin soooo müde!"BOX_BREAK"Nachtwache ist total langweilig!\n"
"Wenn wenigstens ein paar Geister\n"
"rumspuken würden..."BOX_BREAK"Ich finde so etwas nämlich\n"
"wirklich interessant!"BOX_BREAK"Ich studiere Geister-Wissenschaften\n"
"schon seit Jahren. Man weiß\n"
"ja nie, ob das nicht einmal\n"
"nützlich sein kann!"
);

DECLARE_MESSAGE_GER(0x709B,
"Verglichen mit den streunenden\n"
"Promenadenmischungen ist das Fell\n"
"meines Hundes prächtig und \n"
"glänzend!"
);

DECLARE_MESSAGE_GER(0x709C,
"Mein Hund ist gut erzogen...\n"
"Aber manchmal läuft auch er \n"
"nachts in Hyrule herum - so wie\n"
"diese streunenden Stinkeköter!"
);

DECLARE_MESSAGE_GER(0x709D,
"Hast Du meinen Richard gesehen?\n"
"Er ist sonst so ein braver Hund,\n"
"aber heute abend ist er\n"
"davongelaufen. Bitte suche ihn!"
);

DECLARE_MESSAGE_GER(0x709E,
QUICKTEXT_ENABLE "Arrrgh!" QUICKTEXT_DISABLE " Das ist nicht mein Hundi!\n"
"Wie kannst Du meinen Liebling mit\n"
"so einer Zeckenmatte\n"
"verwechseln?!"
);

DECLARE_MESSAGE_GER(0x709F,
SHIFT("\x46")  QUICKTEXT_ENABLE "Richard!" QUICKTEXT_DISABLE BOX_BREAK"Da ist ja mein kleiner Richie\n"
"wieder! Vielen Dank!\n"
"Bitte, nimm dies als Belohnung an\n"
"Dich!"
);

DECLARE_MESSAGE_GER(0x70A0,
"Nachts, wenn die Köter draußen \n"
"herumstreunen, ist es gefährlich!\n"
"Nein, nicht für Dich, sondern für\n"
"meinen Liebling!"
);

DECLARE_MESSAGE_GER(0x70A1,
"Hallo und willkommen\n"
"beim lustigen " COLOR("\x41") "Maskenhändler" COLOR("\x40") "!\n"
"Wir handeln mit Masken, die\n"
"allen Leuten Freude bringen..."BOX_BREAK"Wärst nicht auch Du gern ein Bote\n"
"der Freude? Paß auf, ich leihe\n"
"Dir eine Maske, Du verkaufst sie\n"
"und gibst mir dann das " COLOR("\x41") "Geld" COLOR("\x40") "!"BOX_BREAK"Willst Du wissen, wie es \n"
"funktioniert, lies das " COLOR("\x41") "Schild" COLOR("\x40") "\n"
"zu Deiner Linken."BOX_BREAK"Übrigens: Wenn Du alle Masken \n"
"verkauft hast, wirst auch Du \n"
"glücklicher sein!"BOX_BREAK
SHIFT("\x3C") "Vertrau mir..." EVENT
);

DECLARE_MESSAGE_GER(0x70A2,
QUICKTEXT_ENABLE "Wähle eine Maske, indem Du den\n"
COLOR("\x44") "[Control Stick] " COLOR("\x40") "nach links oder rechts bewegst.\n"
TWO_CHOICE  COLOR("\x42") "Mit dem Ladenbesitzer sprechen!\n"
"Nichts ausleihen!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x70A3,
"Eine " COLOR("\x41") "Maske " COLOR("\x40") "ist ein " COLOR("\x46") "[C]\n"
"Gegenstand" COLOR("\x40") ". Plaziere sie auf " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"und drücke " COLOR("\x46") "[C]" COLOR("\x40") ", um sie zu tragen."BOX_BREAK"Sprichst Du jemanden an, während\n"
"Du die Maske trägst, erhältst Du\n"
"eine entsprechende Reaktion."BOX_BREAK"Wenn jemand an der Maske \n"
"interessiert ist, wird Dich \n"
"derjenige danach fragen."BOX_BREAK"Irgendwo in diesem Land findet\n"
"sich für jede Maske ein Käufer."BOX_BREAK
SHIFT("\x26") "Vertrau mir einfach..." EVENT
);

DECLARE_MESSAGE_GER(0x70A4,
"Vor kurzem sah ich noch ein\n"
"goldiges, kleines Mädchen hier...\n"
"Vielleicht ist sie zum Schloß \n"
"gegangen... Wer weiß..."
);

DECLARE_MESSAGE_GER(0x70A5,
"Du hast sie verkauft?! Fantastisch!\n"
"Dann zahl mir nun meine " COLOR("\x41") "10 Rubine \n"
COLOR("\x40") "für die Fuchs-Maske." EVENT
);

DECLARE_MESSAGE_GER(0x70A6,
"Oh! Du hast die Maske noch nicht\n"
"verkauft. Vertrau mir... Es  wird\n"
"sich schon ein Käufer finden." EVENT
);

DECLARE_MESSAGE_GER(0x70A7,
"Bezahlung erhalten!" EVENT
);

DECLARE_MESSAGE_GER(0x70A8,
QUICKTEXT_ENABLE "Was?!" QUICKTEXT_DISABLE "\n"
"Du hast mein Geld verbraten?!"BOX_BREAK
QUICKTEXT_ENABLE "Wie kannst Du es wagen!" QUICKTEXT_DISABLE BOX_BREAK"Du besorgst besser ganz schnell \n"
"mein Geld, oder..." EVENT
);

DECLARE_MESSAGE_GER(0x70A9,
"Hey!"BOX_BREAK"Gut gemacht!\n"
"Alle Masken sind verkauft."BOX_BREAK"Ich wußte, daß Du der richtige\n"
"Mann, ähh, Junge dafür bist!" EVENT
);

DECLARE_MESSAGE_GER(0x70AA,
UNSKIPPABLE "Als Belohnung für Deine Mühe \n"
"sollst Du eine ganz besondere \n"
"Maske erhalten!"BOX_BREAK
UNSKIPPABLE "Dies ist die " COLOR("\x41") "Maske des Wissens." COLOR("\x40") "\n"
"Es ist eine mysteriöse Maske aus\n"
"dem Erbe der Shiekah."BOX_BREAK
UNSKIPPABLE "Suche, und Du wirst die \n"
"verborgenen Kräfte der Maske \n"
"entdecken... Sie ist nützlich und\n"
"unheimlich zugleich..."BOX_BREAK
UNSKIPPABLE "Warum sie unheimlich ist?"BOX_BREAK
UNSKIPPABLE "Das wirst Du herausfinden, wenn\n"
"Du älter wirst und irgendwann den\n"
"Sinn des Lebens erkennst..."BOX_BREAK
UNSKIPPABLE "Vertrau mir, hahaha..." EVENT
);

DECLARE_MESSAGE_GER(0x70AB,
"Ich habe Nachschub bekommen! \n"
"Von nun an kannst Du jede \n"
"beliebige Maske ausleihen...\n"
"Vertrau mir..." EVENT
);

DECLARE_MESSAGE_GER(0x70AC,
"Willkommen!\n"
"Welche Maske möchtest Du \n"
"leihen?" EVENT
);

DECLARE_MESSAGE_GER(0x70AD,
QUICKTEXT_ENABLE "Bewege den " COLOR("\x44") "[Control Stick]" COLOR("\x40") " nach rechts oder\n"
"links, um eine Maske zu wählen.\n"
TWO_CHOICE  COLOR("\x42") "Maske des Wissens???\n"
"Nichts ausleihen!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x70AE,
"Dies ist die " COLOR("\x41") "Maske des Wissens" COLOR("\x40") ".\n"
"Es ist eine mysteriöse Maske aus\n"
"dem Erbe der Shiekah."BOX_BREAK"Suche, und Du wirst die \n"
"verborgenen Kräfte der Maske \n"
"entdecken... Sie ist nützlich und\n"
"unheimlich zugleich..."BOX_BREAK"Warum sie unheimlich ist?"BOX_BREAK"Das wirst Du herausfinden, wenn\n"
"Du älter bist und irgendwann den\n"
"Sinn des Lebens erkennst..."BOX_BREAK"Vertrau mir, hahaha..." EVENT
);

DECLARE_MESSAGE_GER(0x70AF,
QUICKTEXT_ENABLE  COLOR("\x41") "Maske des Wissens -- Unverkäuflich" COLOR("\x40") "\n"
"Eine Maske mit mysteriösen Kräften." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Schädel-Maske -- Preis 20 Rubine" COLOR("\x40") "\n"
"Eine gehörnte Totenschädelmaske." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Geister-Maske -- Preis 30 Rubine\n"
COLOR("\x40") "Eine traurig blickende Holzmaske." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Fuchs-Maske -- Preis 10 Rubine\n"
COLOR("\x40") "Der letzte Schrei! Sehr angesagt!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Hasenohren -- Preis 50 Rubine\n"
COLOR("\x40") "Wippende Hasenohren! Supersüß!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B4,
QUICKTEXT_ENABLE  COLOR("\x41") "Schädel-Maske -- Gebührenfrei!" COLOR("\x40") "\n"
"Eine gehörnte Totenschädelmaske." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B5,
QUICKTEXT_ENABLE  COLOR("\x41") "Geister-Maske -- Gebührenfrei!\n"
COLOR("\x40") "Eine traurig blickende Holzmaske." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B6,
QUICKTEXT_ENABLE  COLOR("\x41") "Fuchs-Maske -- Gebührenfrei!\n"
COLOR("\x40") "Der letzte Schrei! Sehr angesagt!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Hasenohren -- Gebührenfrei!\n"
COLOR("\x40") "Wippende Hasenohren! Supersüß!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B8,
QUICKTEXT_ENABLE  COLOR("\x41") "Goronen-Maske -- Gebührenfrei! \n"
COLOR("\x40") "Trägst Du diese Maske,\n"
"lächelst Du immerzu!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Zora-Maske -- Gebührenfrei!" COLOR("\x40") "\n"
"Sieht besonders cool beim\n"
"Schwimmen aus!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70BA,
QUICKTEXT_ENABLE  COLOR("\x41") "Gerudo-Maske -- Gebührenfrei!\n"
COLOR("\x40") "Mit ihren verführerischen Augen \n"
"macht sie aus Dir ein \n"
"zauberhaftes Mädchen!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Maske des Wissens -- Gebührenfrei!" COLOR("\x40") "\n"
"Eine Maske aus dem Erbe der \n"
"Shiekah! Man erzählt sich, sie\n"
"besäße mysteriöse Kräfte." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_GER(0x70BC,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Schädel-Maske \n"
COLOR("\x40") "leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70BD,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Geister-Maske " COLOR("\x40") "\n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70BE,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Fuchs-Maske " COLOR("\x40") "\n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70BF,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Hasenohren" COLOR("\x40") " \n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C0,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Goronen-Maske" COLOR("\x40") " \n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C1,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Zora-Maske" COLOR("\x40") "\n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C2,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Gerudo-Maske" COLOR("\x40") "\n"
"leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C3,
QUICKTEXT_ENABLE "Möchtest Du die " COLOR("\x41") "Maske des\n"
"Wissens" COLOR("\x40") " leihen?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C4,
"Oh, großartig! Du hast sie\n"
"verkauft! Bitte zahle mir \n"
"für die Schädel-Maske die\n"
COLOR("\x41") "20 Rubine" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_GER(0x70C5,
"Oh, großartig! Du hast sie\n"
"verkauft! Bitte zahle mir\n"
"für die Geister-Maske die\n"
COLOR("\x41") "30 Rubine" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_GER(0x70C6,
"Oh, großartig! Du hast sie\n"
"verkauft! Bitte zahle mir\n"
"für die Hasenohren die\n"
COLOR("\x41") "50 Rubine" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_GER(0x70C7,
"Oh! Du hast die Maske noch\n"
"nicht verkauft? Dann biete sie\n"
"einfach weiterhin an."BOX_BREAK"Oder möchtest Du sie gegen eine\n"
"andere Maske tauschen?\n"
TWO_CHOICE  COLOR("\x42") "Ja!\n"
"Nein!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70C8,
UNSKIPPABLE "Die Fragmente des Triforce...\n"
"Ich spüre... Ihre Macht scheint\n"
"sich wieder zu vereinigen... "
);

DECLARE_MESSAGE_GER(0x70C9,
UNSKIPPABLE "Die fehlenden zwei Fragmente!\n"
"Ich warte seit\n"
"sieben Jahren darauf!"BOX_BREAK
UNSKIPPABLE "Ich bin wirklich überrascht! Ich\n"
"hätte nicht erwartet, daß gerade\n"
"ihr zwei sie tragen würdet!"
);

DECLARE_MESSAGE_GER(0x70CA,
UNSKIPPABLE "Endlich! Endlich! Die drei\n"
"Fragmente sind wieder\n"
"vereint!"
);

DECLARE_MESSAGE_GER(0x70CB,
UNSKIPPABLE "Diese Symbole der Macht sind\n"
"nichts für euch zwei! Ihr seid\n"
"dafür nicht geschaffen!"
);

DECLARE_MESSAGE_GER(0x70CC,
UNSKIPPABLE "Ich allein bin der rechtmäßige\n"
"Träger des Triforce! Übergebt mir\n"
"die Fragmente!\n"
"Ich befehle es!"
);

DECLARE_MESSAGE_GER(0x70CD,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44")  NAME "!\n"
"Ich kann Dir nicht helfen!\n"
"Die Aura des Bösen ist\n"
"zu mächtig!"BOX_BREAK
COLOR("\x44")  UNSKIPPABLE "Tut mir leid, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70CE,
UNSKIPPABLE "Ich, der Großmeister des Bösen... \n"
"Geschlagen von einem Kind?!\n"
"Das... darf... nicht... sein..."
);

DECLARE_MESSAGE_GER(0x70CF,
UNSKIPPABLE  NAME "...!"
);

DECLARE_MESSAGE_GER(0x70D0,
UNSKIPPABLE "Ganondorf... bemitleidenswerte\n"
"Kreatur..."BOX_BREAK
UNSKIPPABLE "Da ihm der Sinn für\n"
"Gerechtigkeit fehlte, konnte er die\n"
"Macht der Götter nicht nutzen..."
);

DECLARE_MESSAGE_GER(0x70D1,
UNSKIPPABLE  NAME ", hör zu!\n"
"Der Turm stürzt in sich zusammen!"BOX_BREAK
UNSKIPPABLE "Das ist Ganondorfs letzte, böse\n"
"Tat! Die Trümmer sollen uns\n"
"zerschmettern! Schnell! Wir\n"
"müssen fliehen!"
);

DECLARE_MESSAGE_GER(0x70D2,
UNSKIPPABLE "Schnell! Folge mir!"
);

DECLARE_MESSAGE_GER(0x70D3,
UNSKIPPABLE "Es ist vorüber... Alles..."
);

DECLARE_MESSAGE_GER(0x70D4,
UNSKIPPABLE  COLOR("\x44")  NAME "... \n"
"Tut mir leid, daß ich Dir im Kampf\n"
"nicht helfen konnte." COLOR("\x40")
);

DECLARE_MESSAGE_GER(0x70D5,
UNSKIPPABLE "Was ist das für ein Geräusch?"
);

DECLARE_MESSAGE_GER(0x70D6,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44") "Diesmal hat er keine Macht mehr\n"
"über mich!" COLOR("\x40") "\n"
QUICKTEXT_ENABLE  COLOR("\x44") "Wir kämpfen gemeinsam!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x70D7,
UNSKIPPABLE  NAME "!\n"
"Das Master-Schwert!\n"
"Es ist hier! \n"
QUICKTEXT_ENABLE "Schnell!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x70D8,
UNSKIPPABLE "Ich versuche, Ganon mit meiner\n"
"Kraft zu bannen!\n"
"Nimm Du das Schwert und\n"
"versetze ihm den Todesstoß!"
);

DECLARE_MESSAGE_GER(0x70D9,
UNSKIPPABLE  SHIFT("\x28") "Oh, ihr Sechs Weisen...\n"
QUICKTEXT_ENABLE  SHIFT("\x3F") "Es ist soweit!\n"
SHIFT("\x32") "Sendet Eure Kraft!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x70DA,
UNSKIPPABLE  TEXT_SPEED("\x03") "DUUUU... widerlicher..." TEXT_SPEED("\x00")  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x70DB,
UNSKIPPABLE  TEXT_SPEED("\x03") "ICH VERFLUCHE DICH... ZELDA!\n"
TEXT_SPEED("\x02") "ICH VERFLUCHE EUCH... IHR WEISEN!" TEXT_SPEED("\x00")  FADE("\x32")
);

DECLARE_MESSAGE_GER(0x70DC,
UNSKIPPABLE "ICH...\n"
"VERFLUCHE...\n"
"DICH... " QUICKTEXT_ENABLE  NAME "!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x70DD,
UNSKIPPABLE "Arrgh! Eines Tages werde ich\n"
"dieses Siegel brechen..."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE "Dann werde ich eure\n"
"Nachfahren auslöschen!" FADE("\x50")
);

DECLARE_MESSAGE_GER(0x70DE,
UNSKIPPABLE "Solange das Fragment der Kraft\n"
"in meiner Hand ist..." FADE("\x50")
);

DECLARE_MESSAGE_GER(0x70DF,
TEXT_SPEED("\x02") "Du... " TEXT_SPEED("\x00") "wer bist Du?" FADE("\x50")
);

DECLARE_MESSAGE_GER(0x70E0,
SHIFT("\x11") "Das " COLOR("\x42") "Wald-Siegel " COLOR("\x40") "ist gebrochen!\n"
SHIFT("\x1A") "Beeil Dich, " NAME "!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E1,
SHIFT("\x0F") "Das " COLOR("\x41") "Feuer-Siegel " COLOR("\x40") "ist gebrochen!\n"
SHIFT("\x33") "Beeil Dich, Bruder!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E2,
SHIFT("\x0A") "Das " COLOR("\x43") "Wasser-Siegel " COLOR("\x40") "ist gebrochen!\n"
SHIFT("\x2E") "Beeil Dich, Liebster!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E3,
SHIFT("\x06") "Das " COLOR("\x45") "Schatten-Siegel " COLOR("\x40") "ist gebrochen!\n"
SHIFT("\x1C") "Bitte rette die Prinzessin!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E4,
SHIFT("\x0A") "Das " COLOR("\x46") "Geister-Siegel" COLOR("\x40") " ist gebrochen!\n"
SHIFT("\x36") "Streng Dich an, Kleiner!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E5,
SHIFT("\x11") "Das " COLOR("\x44") "Licht-Siegel" COLOR("\x40") " ist gebrochen!\n"
SHIFT("\x41") "Schnell jetzt!" FADE("\x28")
);

DECLARE_MESSAGE_GER(0x70E6,
COLOR("\x44")  NAME ", ist das nicht...?!"
);

DECLARE_MESSAGE_GER(0x70E7,
COLOR("\x44") "Diese legendäre Klinge..." COLOR("\x40")  FADE("\x1E")
);

DECLARE_MESSAGE_GER(0x70E8,
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x44") "Das Master-Schwert!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x70E9,
UNSKIPPABLE "Finde die anderen\n"
"Weisen und rette Hyrule!" FADE("\x50")
);

DECLARE_MESSAGE_GER(0x70EA,
"Dieser schreckliche Typ ist wie\n"
"wild davongaloppiert!"
);

DECLARE_MESSAGE_GER(0x70EB,
"Oh, wie furchtbar...\n"
"Oh, wie schrecklich..."
);

DECLARE_MESSAGE_GER(0x70EC,
"Hey, was willst Du?\n"
"Ich habe keine Zeit, mit\n"
"Dir zu tratschen!"
);

DECLARE_MESSAGE_GER(0x70ED,
"Bitte... Verkaufe mir etwas mit " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Bitte verkaufe mir etwas...\n"
"Bitte... In einer Flasche..."
);

DECLARE_MESSAGE_GER(0x70EE,
"Nein...\n"
"Das ist nicht das, was ich will...\n"
"Ich möchte " COLOR("\x41") "etwas in einer Flasche" COLOR("\x40") "...\n"
"Nicht so etwas..."
);

DECLARE_MESSAGE_GER(0x70EF,
"Nein...\n"
"Das kann ich nicht nehmen...\n"
"Es ist nicht das, was ich\n"
"haben will..."
);

DECLARE_MESSAGE_GER(0x70F0,
"Oh," COLOR("\x43") " " COLOR("\x44") "Blaues Feuer" COLOR("\x40") "!\n"
"Ich kaufe es für " COLOR("\x41") "150 Rubine" COLOR("\x40") "!\n"
"Und nicht feilschen, okay?"
);

DECLARE_MESSAGE_GER(0x70F1,
"Oh, ein " COLOR("\x45") "Fisch" COLOR("\x40") "!\n"
"Ich kaufe ihn für " COLOR("\x41") "100 Rubine" COLOR("\x40") "!\n"
"Und nicht feilschen, okay?"
);

DECLARE_MESSAGE_GER(0x70F2,
"Oh, ein niedlicher " COLOR("\x42") "Käfer" COLOR("\x40") "!\n"
"Ich kaufe ihn für " COLOR("\x41") "50 Rubine" COLOR("\x40") "!\n"
"Und nicht feilschen, okay?"
);

DECLARE_MESSAGE_GER(0x70F3,
"Oh, eine hübsche, kleine " COLOR("\x44") "Fee" COLOR("\x40") "!\n"
"Ich kaufe sie für " COLOR("\x41") "25 Rubine" COLOR("\x40") "!\n"
"Und nicht feilschen, okay?"
);

DECLARE_MESSAGE_GER(0x70F4,
UNSKIPPABLE "Oh... Du bist ja ein agiler,\n"
"junger Mann. Und Du bist auch\n"
"ganz ansehnlich. Und mutig!"BOX_BREAK
UNSKIPPABLE "Hehehe... Du heißt\n"
NAME ", nicht wahr?"BOX_BREAK
UNSKIPPABLE "Hehehe... Schau nicht so.\n"
"Ich kann Gedanken lesen."BOX_BREAK
UNSKIPPABLE "Wenn ich so gut aussähe wie Du,\n"
"dann könnte ich mein Geld auf\n"
"andere Weise verdienen...\n"
"Hehehe..."BOX_BREAK
UNSKIPPABLE "Aber immerhin betreibe ich den\n"
"einzigen " COLOR("\x41") "Gespenstermarkt" COLOR("\x40") " von\n"
"Hyrule!"BOX_BREAK
UNSKIPPABLE "Dank Ganondorf - gepriesen sei\n"
"sein Name - gehen die Geschäfte \n"
"zur Zeit blendend... Hehehe..."BOX_BREAK
UNSKIPPABLE "Ich kann nur hoffen, daß das\n"
"auch so bleibt!"BOX_BREAK
UNSKIPPABLE "Die Geister nennt man \n"
COLOR("\x41") "Irrlichter " COLOR("\x40") "oder" COLOR("\x41") " Nachtschwärmer" COLOR("\x40") "...\n"
"Sie tragen allen Haß der Welt...\n"
"Und sie hassen alle Welt..."BOX_BREAK
UNSKIPPABLE "Wenn Du einen Geist fängst, dann\n"
"werde ich Dich reich belohnen,\n"
"mein Junge! Hehehe..."
);

DECLARE_MESSAGE_GER(0x70F5,
"Na, mein Junge! Hast Du ein Irrlicht\n"
"oder einen Nachtschwärmer dabei?\n"
"Ich gebe Dir 10 Rubine \n"
"für ein Irrlicht."BOX_BREAK"Für einen Nachtschwärmer erhältst\n"
"Du 50 Rubine sowie 100 Punkte!\n"
"Du hast bis jetzt " COLOR("\x45")  HIGHSCORE("\x01") " Punkte" COLOR("\x40") " auf\n"
"dem Nachtschwärmer-Konto gut!"
);

DECLARE_MESSAGE_GER(0x70F6,
UNSKIPPABLE "Oh, Du bringst mir etwas!"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "Nun..." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Laß sehen..."BOX_BREAK
UNSKIPPABLE "Es ist ein " COLOR("\x41") "Irrlicht" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Hier sind " COLOR("\x41") "10 Rubine" COLOR("\x40") ".\n"
"Vielen Dank!"BOX_BREAK
UNSKIPPABLE "Hehehe..."
);

DECLARE_MESSAGE_GER(0x70F7,
UNSKIPPABLE "Oh, Du bringst mir etwas!"BOX_BREAK
UNSKIPPABLE "Nun..."BOX_BREAK
UNSKIPPABLE "Erstaunlich!\n"
"Das ist ja ein " COLOR("\x41") "Nachtschwärmer" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Dafür bekommst Du " COLOR("\x41") "50 Rubine" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Obendrein hast Du nun " COLOR("\x41") "100 Punkte\n"
COLOR("\x40") "auf dem Nachtschwärmer-Konto gut."BOX_BREAK
UNSKIPPABLE "Hast Du " COLOR("\x41") "1.000 Punkte" COLOR("\x40") " gesammelt,\n"
"dann wartet eine geniale \n"
"Belohnung! Hehehe..."
);

DECLARE_MESSAGE_GER(0x70F8,
UNSKIPPABLE "Oh! WOW!"BOX_BREAK
UNSKIPPABLE "Du hast jetzt " COLOR("\x41") "1.000 Punkte" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Du bist ja der geborene\n"
COLOR("\x41") "Geisterjäger" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Du erwartest noch etwas von\n"
"mir? Was denn? Hehehe..."BOX_BREAK
UNSKIPPABLE "Dank Dir ist mein Bestand an\n"
COLOR("\x41") "Nachtschwärmern" COLOR("\x40") " enorm gestiegen...\n"
"Dies ist der letzte Geist, den ich \n"
"Dir abnehme."BOX_BREAK
UNSKIPPABLE "Ach, Du wartest auf das, was ich\n"
"Dir für ein 1.000 Punkte-Konto\n"
"versprochen habe? Hehehe..."BOX_BREAK
UNSKIPPABLE "Na, da will ich mal nicht so sein...\n"
"Nimm das hier!"
);

DECLARE_MESSAGE_GER(0x70F9,
UNSKIPPABLE "Oh? Was ist das?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Das" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ist" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_GER(0x70FA,
QUICKTEXT_ENABLE  COLOR("\x44") "Eine Fee" COLOR("\x40")  QUICKTEXT_DISABLE "?!"BOX_BREAK
UNSKIPPABLE "Dann... Dann kommst Du...\n"
"Kommst Du aus dem Wald?" EVENT
);

DECLARE_MESSAGE_GER(0x70FB,
UNSKIPPABLE "Du... Du hast nicht auch\n"
"zufällig... den " COLOR("\x42") "Heiligen Stein des \n"
"Waldes" COLOR("\x40") ", oder? Ich meine diesen\n"
"funkelnden, grünen Stein..." EVENT
);

DECLARE_MESSAGE_GER(0x70FC,
UNSKIPPABLE "Ich hatte einen Traum...\n"
"Darin überzogen dunkle Wolken\n"
"unser Land Hyrule..."BOX_BREAK
UNSKIPPABLE "Doch plötzlich... durchschnitt ein\n"
"Strahl hellen Lichts diese Wolken...\n"
"Er kam aus dem Wald, und ganz\n"
"Hyrule erstrahlte in seinem Glanz!"BOX_BREAK
UNSKIPPABLE "Das Licht verwandelte sich in\n"
"einen Jungen, der einen " COLOR("\x42") "glitzernden,\n"
"grünen Stein" COLOR("\x40") " in den Händen hielt.\n"
"Ihn begleitete eine " COLOR("\x44") "Fee" COLOR("\x40") "..." EVENT
);

DECLARE_MESSAGE_GER(0x70FD,
UNSKIPPABLE "Ich weiß, es war eine\n"
"Prophezeiung, daß jemand aus den\n"
COLOR("\x42") "Tiefen des Waldes" COLOR("\x40") " kommen würde..."BOX_BREAK
UNSKIPPABLE "Ich dachte, Du wärst es..." EVENT
);

DECLARE_MESSAGE_GER(0x70FE,
UNSKIPPABLE  SHIFT("\x37") "Oh! Tut mir leid!"BOX_BREAK
UNSKIPPABLE "Ich habe mich ein bißchen\n"
"mitreißen lassen von meiner\n"
"Geschichte und mich gar nicht\n"
"standesgemäß vorgestellt!" EVENT
);

DECLARE_MESSAGE_GER(0x70FF,
UNSKIPPABLE "Ich bin " COLOR("\x44") "Zelda" COLOR("\x40") ", Prinzessin von Hyrule." EVENT
);

DECLARE_MESSAGE_GER(0x7100,
"Was? Kennen wir uns?"
);

DECLARE_MESSAGE_GER(0x7101,
"Oh... Das ist aber süß!\n"
"Sagst Du mir, woher Du sie\n"
"hast?"
);

DECLARE_MESSAGE_GER(0x7102,
"Oh mein Gott!\n"
"Hilfe!"
);

DECLARE_MESSAGE_GER(0x7103,
"Ja? Was ist denn?"
);

DECLARE_MESSAGE_GER(0x7104,
"Ich hasse Füchse!"
);

DECLARE_MESSAGE_GER(0x7105,
"Du siehst bescheuert aus!"
);

DECLARE_MESSAGE_GER(0x7106,
"Hey, das steht Dir wirklich gut!"
);

DECLARE_MESSAGE_GER(0x7107,
QUICKTEXT_ENABLE "Bist Du so häßlich, daß Du das \n"
"Ding tragen mußt?!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x7108,
"Oooh... Bist Du ein Zora?\n"
"Diese Augen... Wirklich\n"
"faszinierend..."
);

DECLARE_MESSAGE_GER(0x7109,
"Das ist ja schrecklich!\n"
"Komm bloß nicht näher!"
);

DECLARE_MESSAGE_GER(0x710A,
"Wow... Eine Maske! Das erinnert\n"
"mich an die Zeit, als ich noch\n"
"ein kleines Kind war."
);

DECLARE_MESSAGE_GER(0x710B,
"Hey, das ist lustig... Es\n"
"bringt mich zum Lachen!\n"
"Hihihihi!"
);

DECLARE_MESSAGE_GER(0x710C,
QUICKTEXT_ENABLE "Oh-oh!" QUICKTEXT_DISABLE " Sorry, Mutter!\n"
"Oh... Ach, Du bist es!\n"
"Erschreck mich doch nicht \n"
"so!"
);

DECLARE_MESSAGE_GER(0x710D,
"Du hast einen Riesenkürbis!"
);

DECLARE_MESSAGE_GER(0x710E,
"Mach das nie wieder!\n"
"Ich bin so schreckhaft..."
);

DECLARE_MESSAGE_GER(0x710F,
"Findet hier ein Maskenwettbewerb \n"
"statt? \n"
QUICKTEXT_ENABLE "Wenn ja, dann wähle ich Dich!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_GER(0x7110,
"Oh! Ein Hase!\n"
"Erst kürzlich sah ich einen \n"
"Mann, der auf dem Feld den \n"
"Hasen nachjagte."
);

DECLARE_MESSAGE_GER(0x7111,
"Oh, welch gutaussehende Frau!\n"
"Aber Du bist ein wenig klein,\n"
"oder?"
);

DECLARE_MESSAGE_GER(0x7112,
"Wow, mit der Maske siehst Du \n"
"hübscher aus als vorher!"
);

DECLARE_MESSAGE_GER(0x7113,
"Eine Maske... Das erinnert mich an\n"
"meine Jugendzeit. Damals hab ich\n"
"auch welche getragen. Heute würde \n"
"man mich als Spinner beschimpfen!"
);

DECLARE_MESSAGE_GER(0x7114,
"Oh, hübsch... Ein wandelnder Fisch...\n"
"Ich könnte Dich zum Abendessen \n"
"einladen... Als Hauptgericht!"
);

DECLARE_MESSAGE_GER(0x7115,
"Nicht schlecht. So einen \n"
"großen Hasen kriegt man selten in \n"
"die Pfanne!"
);

DECLARE_MESSAGE_GER(0x7116,
QUICKTEXT_ENABLE "AAAAAAAAAAAH!\n"
"EINE GERUDO-KRIEGERIN!!!!" QUICKTEXT_DISABLE BOX_BREAK"Was? Nur eine Maske?!\n"
"Wie konntest Du mich so \n"
"erschrecken?!"
);

DECLARE_MESSAGE_GER(0x7117,
"Sorry, aber ich habe zu tun. Ich \n"
"muß etwas zum Essen einkaufen."
);

DECLARE_MESSAGE_GER(0x7118,
"Oh! Ein Fuchs! Hast Du auch\n"
"eine Gans gestohlen?!"
);

DECLARE_MESSAGE_GER(0x7119,
"Das ist gespenstisch!\n"
"Ein Junge in Kakariko hat\n"
"nach einer Maske wie dieser\n"
"gesucht!"
);

DECLARE_MESSAGE_GER(0x711A,
"Gähn... Hast Du keine andere\n"
"Maske?"
);

DECLARE_MESSAGE_GER(0x711B,
"Welch eine seltsame Maske!\n"
"Die ist klasse!"
);

DECLARE_MESSAGE_GER(0x711C,
"Stör uns jetzt nicht! Wir haben \n"
"hier Wichtiges zu, äh, \n"
"besprechen!"
);

DECLARE_MESSAGE_GER(0x711D,
"Ich denke gar nicht daran,\n"
"irgendeine andere Frau \n"
"anzuschauen!"
);

DECLARE_MESSAGE_GER(0x711E,
"Beachte ihn nicht, Darling...\n"
"Wir haben Besseres zu tun...\n"
"Küß mich..."
);

DECLARE_MESSAGE_GER(0x711F,
"Ein Hase! Sorry, aber ich hab \n"
"schon ein Häschen hier... und es \n"
"ist hübscher als Du!"
);

DECLARE_MESSAGE_GER(0x7120,
"Ein Gerücht besagt, daß es einen \n"
"Laden gibt, der das ultimative\n"
"Elixier verkauft!"
);

DECLARE_MESSAGE_GER(0x7121,
"Ich hörte, daß es irgendwo eine \n"
"Kreatur geben soll, die " COLOR("\x44") "hylianische \n"
"Schilde" COLOR("\x40") " frißt..."
);

DECLARE_MESSAGE_GER(0x7122,
"Ich kam her, um Bomben zu \n"
"verkaufen."
);

DECLARE_MESSAGE_GER(0x7123,
UNSKIPPABLE "Ich... Ich habe Angst...\n"
"Große Angst, daß dieser Mann \n"
"Hyrule den Untergang bringt."BOX_BREAK
UNSKIPPABLE "Er besitzt übermenschliche Kräfte!"BOX_BREAK
UNSKIPPABLE "Doch nun, da Du hier bist, wird \n"
"alles gut..." EVENT
);

DECLARE_MESSAGE_GER(0x7124,
"Das ist ja albern!"
);

DECLARE_MESSAGE_GER(0x7125,
"Würdest Du arbeiten,\n"
"kämst Du nicht auf solch\n"
"dämliche Ideen!"
);

DECLARE_MESSAGE_GER(0x7126,
"Hey, Du trägst eine Holzmaske!\n"
"Die brennt sicher gut!"
);

DECLARE_MESSAGE_GER(0x7127,
"Bist Du wirklich so häßlich,\n"
"daß Du dieses Ding tragen mußt?"
);

DECLARE_MESSAGE_GER(0x7128,
"Ogottogottogott... Das darfst Du \n"
"aber nicht, mich so erschrecken!"
);

DECLARE_MESSAGE_GER(0x7129,
"Du Böser! \n"
"Mich so auf den Arm zu \n"
"nehmen..."BOX_BREAK"Welch ein Schelm!"
);

DECLARE_MESSAGE_GER(0x712A,
"Huch, eine Frau...\n"
"Was will die denn hier...?"
);

DECLARE_MESSAGE_GER(0x712B,
"Ich werde auch versuchen, eine \n"
"Maske zu schnitzen... Vielleicht \n"
"eine Pinocchio-Maske. Wegen der \n"
"langen Nase... Hehe..."
);

DECLARE_MESSAGE_GER(0x712C,
"Whoa! Kommst Du gerade aus dem \n"
"Fratzenwald?"
);

DECLARE_MESSAGE_GER(0x712D,
"Ah, der Nachwuchsheld!\n"
"Wie läuft's denn so?\n"
"Alles klar?"
);

DECLARE_MESSAGE_GER(0x712E,
"Ich bin im Dienst!\n"
"Ich darf nicht lachen!\n"
"VERSCHWINDE!"
);

DECLARE_MESSAGE_GER(0x712F,
"Oh, eine Maske... Schützt sie\n"
"Dich auch vor Faustschlägen?"
);

DECLARE_MESSAGE_GER(0x7130,
"Oh, wie süß!\n"
"Aber nicht so süß wie meine \n"
"Hühner!"
);

DECLARE_MESSAGE_GER(0x7131,
"Hmmm, eine Maske...\n"
"Trägst Du sie, ist es ziemlich \n"
"schwer, festzustellen, ob Du \n"
"traurig oder fröhlich bist!"
);

DECLARE_MESSAGE_GER(0x7132,
"So häßlich bist Du nun auch \n"
"wieder nicht, daß Du eine Maske\n"
"tragen müßtest."
);

DECLARE_MESSAGE_GER(0x7133,
"Auf dem Friedhof ist auch ein\n"
"Junge, dem so etwas gefallen \n"
"würde..."
);

DECLARE_MESSAGE_GER(0x7134,
"Na, hübsche Frau?! Heute abend\n"
"schon etwas vor?"
);

DECLARE_MESSAGE_GER(0x7135,
"WÜRG!\n"
"Ich dachte gerade, Du wärst meine\n"
"Ex-Freundin! Erschreck mich bitte\n"
"nie wieder so..."
);

DECLARE_MESSAGE_GER(0x7136,
"Mein Vater sprach mal von einem\n"
"Meisterschmied...\n"
"Wie dem auch sei, ich verkaufe\n"
"Hühner..."
);

DECLARE_MESSAGE_GER(0x7137,
"Ah, ein Monster! Ich werde es\n"
"einen Kopf kürzer machen und\n"
"seine Gebeine durch den\n"
"Fleischwolf drehen..."
);

DECLARE_MESSAGE_GER(0x7138,
"Wer bist Du? Ich kann das von \n"
"hier aus schlecht erkennen..."
);

DECLARE_MESSAGE_GER(0x7139,
"Ah, Du bist es! Trägst Du Deine \n"
"Haare heute anders?"
);

DECLARE_MESSAGE_GER(0x713A,
"Hey, hast Du eine Beule am Kopf?"
);

DECLARE_MESSAGE_GER(0x713B,
"Huch, ein Außerirdischer!"
);

DECLARE_MESSAGE_GER(0x713C,
"Füchse finde ich nicht\n"
"besonders attraktiv!"
);

DECLARE_MESSAGE_GER(0x713D,
"Mit dieser Maske wirst Du bei\n"
"Frauen nicht viel Erfolg haben..."
);

DECLARE_MESSAGE_GER(0x713E,
"Ich war schon immer gegen \n"
"Genversuche..."
);

DECLARE_MESSAGE_GER(0x713F,
"Wow, die Möglichkeiten der\n"
"plastischen Chirurgie sind\n"
"erstaunlich!"
);

DECLARE_MESSAGE_GER(0x7140,
"Ungezogener Bengel!\n"
"Wenn Du jemanden ansprichst,\n"
"solltest Du stets den \n"
"Augenkontakt suchen!"
);

DECLARE_MESSAGE_GER(0x7141,
"Die Jugend von heute!\n"
"Nun tragen sie schon Masken, um \n"
"wie Frauen auszusehen! Zu meiner\n"
"Zeit hätte es das nicht gegeben!"
);

DECLARE_MESSAGE_GER(0x7142,
"Unverschämtes Balg! Wie läufst Du \n"
"überhaupt herum?! Dein Hemd ist \n"
"nicht gebügelt, Deine Schuhe sind\n"
"schmutzig und Du bist vorlaut!"
);

DECLARE_MESSAGE_GER(0x7143,
"Äußerst interessant! Diese Maske\n"
"scheint eine Todesmaske des Zulu-\n"
"Kultes zu sein! Die Tiki-Priester\n"
"verwenden sie bei Ritualen..."
);

DECLARE_MESSAGE_GER(0x7144,
"Eine Maske! Aber keine \n"
"besonders hübsche..."
);

DECLARE_MESSAGE_GER(0x7145,
"Nette Maske, leider habe ich keine\n"
"Zeit, sie mir näher anzuschauen."
);

DECLARE_MESSAGE_GER(0x7146,
"Eine Maske gleicht einem\n"
"Musikinstrument. Sie spiegelt den\n"
"Charakter ihres Besitzers wieder. \n"
"Ich mag das..."
);

DECLARE_MESSAGE_GER(0x7147,
"Meine Güte, was für eine \n"
"Superrübe! Bleibst Du damit\n"
"nicht überall hängen?"
);

DECLARE_MESSAGE_GER(0x7148,
"Ist das eine Rattenmaske?!"
);

DECLARE_MESSAGE_GER(0x7149,
"Welch bezaubernde Schönheit!\n"
"Niemals blickte ich in ein\n"
"Antlitz, das anmutiger war..."
);

DECLARE_MESSAGE_GER(0x714A,
"Ich will Dir ja nicht zu nahe\n"
"treten... Aber Du siehst aus wie\n"
"ein Vollidiot!"
);

DECLARE_MESSAGE_GER(0x714B,
"Cooles Outfit! Sind Deine Eltern \n"
"Zoras?"
);

DECLARE_MESSAGE_GER(0x714C,
"Hör auf mit den Spielchen\n"
"und erlöse uns von dem Fluch!"
);

DECLARE_MESSAGE_GER(0x714D,
"Ein Schädel! Er erinnert mich an\n"
"den Fluch... Den Fluch der \n"
"Skulltulas!"
);

DECLARE_MESSAGE_GER(0x714E,
"Verzeih mir, daß ich nicht lache,\n"
"aber ich wurde verflucht, und das\n"
"ist nicht sehr lustig..."
);

DECLARE_MESSAGE_GER(0x714F,
SFX("\x68\x67") "Whoa!\n"
"Das macht mir Angst!\n"
"Ich weiß, daß ich schon \n"
"furchteinflößend bin... Aber das..."
);

DECLARE_MESSAGE_GER(0x7150,
"Huch! Aaargh!"BOX_BREAK"Oh, es ist nur ein Kind! Du \n"
"darfst einen alten Mann doch \n"
"nicht so erschrecken!"
);

DECLARE_MESSAGE_GER(0x7151,
"Wow, ein riesiger Schwellkopf! \n"
"Ich habe auch einen! Sind wir \n"
"verwandt?"
);

DECLARE_MESSAGE_GER(0x7152,
"Weißt Du, was für eine Maske Du\n"
"trägst? Damit sollte man keine\n"
"Scherze treiben..."
);

DECLARE_MESSAGE_GER(0x7153,
"Sorry, ich habe jetzt keine Zeit\n"
"für Dich, ich muß ein neues Grab\n"
"ausheben..."
);

DECLARE_MESSAGE_GER(0x7154,
"Was ist das denn? Das sieht\n"
"nicht besonders unheimlich aus...\n"
"Na ja, vielleicht unheimlich\n"
"bescheuert..."
);

DECLARE_MESSAGE_GER(0x7155,
"Hey! Eine Fuchs-Maske! \n"
"Abgefahren! Mein Daddy wollte \n"
"mir so eine besorgen!"
);

DECLARE_MESSAGE_GER(0x7156,
"Du siehst aus wie\n"
"der Totengräber...\n"
"Das macht mir keine Angst!"
);

DECLARE_MESSAGE_GER(0x7157,
"Wow, cool! Richtig unheimlich!\n"
"Unheimlicher als Boris..."
);

DECLARE_MESSAGE_GER(0x7158,
SFX("\x68\x63") "Eine nette Maske... Aber wir \n"
"Kokiri sind hübscher, oder?"
);

DECLARE_MESSAGE_GER(0x7159,
"Hey! Das kenne ich...\n"
"So etwas habe ich kürzlich in\n"
"den Verlorenen Wäldern gesehen..."
);

DECLARE_MESSAGE_GER(0x715A,
SFX("\x68\x63") "Oh, wie goldig..."
);

DECLARE_MESSAGE_GER(0x715B,
"Oh... Schnief... Heul...\n"
"Diese Maske...\n"
"Sie macht mir Angst..."
);

DECLARE_MESSAGE_GER(0x715C,
"Pah! Das beeindruckt mich nicht!\n"
"Sicher trägst Du sie nur, weil Du\n"
"vor mir, dem mächtigen Mido, \n"
"Angst hast..."
);

DECLARE_MESSAGE_GER(0x715D,
"Aaaargh! Was? Ach so...\n"
"Nein, ich habe keine Angst!\n"
"Aber komm bloß nicht näher,\n"
"hörst Du?!"
);

DECLARE_MESSAGE_GER(0x715E,
"Hey, coole Maske!\n"
"Ha! War nur Spaß!\n"
"Damit siehst Du noch dämlicher \n"
"aus als vorher!"
);

DECLARE_MESSAGE_GER(0x715F,
"Ach, unser Süßer! Das steht\n"
"Dir, Du solltest sie aufbehalten!"
);

DECLARE_MESSAGE_GER(0x7160,
"Hilfeeeeeeeeee!\n"
"Das... Das erzähle ich Mido!"
);

DECLARE_MESSAGE_GER(0x7161,
"Iiiiihhhhhhhhh!\n"
"Wenn ich das Mido erzähle, \n"
"bekommst Du Ärger!"
);

DECLARE_MESSAGE_GER(0x7162,
"Aaaaaaaarggghhh!\n"
"Mir ist ein Waldgeist erschienen!"
);

DECLARE_MESSAGE_GER(0x7163,
"Wow! Ist die süß!\n"
"Äh... Sag Mido nicht, daß mir die \n"
"Maske gefällt!"
);

DECLARE_MESSAGE_GER(0x7164,
"Was?!\n"
"Du bist zurück!\n"
"Ich erkenne Dich, selbst wenn Du\n"
"diese Maske trägst!"
);

DECLARE_MESSAGE_GER(0x7165,
"Ich frage mich, wie Mido auf diese \n"
"Maske reagieren würde.\n"
"Das würde ich wirklich gerne \n"
"sehen!"
);

DECLARE_MESSAGE_GER(0x7166,
"Ah, verstehe...\n"
"Du trägst diese Maske, um Mido\n"
"zu erschrecken, stimmt's?!"
);

DECLARE_MESSAGE_GER(0x7167,
"Hihi! Welch lustige Maske!\n"
"Obwohl, einem Mädchen würde sie\n"
"sicher besser stehen... Hehehe..."
);

DECLARE_MESSAGE_GER(0x7168,
"Hihi!\n"
"Eine Holzmaske? Sieht aus, als\n"
"ob Du ein Brett vorm Kopf \n"
"hättest! Hihihi..."
);

DECLARE_MESSAGE_GER(0x7169,
"Welch häßliche Fratze!"BOX_BREAK"Und da beschweren sich manche \n"
"Kinder, daß sie nicht hübsch genug \n"
"seien..."
);

DECLARE_MESSAGE_GER(0x716A,
"Hallo Kartoffelkopf! Hihihi..."
);

DECLARE_MESSAGE_GER(0x716B,
"Hey! Wo hast Du das denn her?\n"
"Von außerhalb des Waldes!\n"
"Wow! Das ist unglaublich!"
);

DECLARE_MESSAGE_GER(0x716C,
"Witzig, aber nicht ganz mein \n"
"Fall..."
);

DECLARE_MESSAGE_GER(0x716D,
"Cool! Diese Maske sieht so \n"
"richtig unheimlich und diabolisch \n"
"aus! Groovy!"
);

DECLARE_MESSAGE_GER(0x716E,
"Oh Mann! Hier laufen manchmal\n"
"Spinner herum..."
);

DECLARE_MESSAGE_GER(0x716F,
"Danke, aber ich brauche nicht\n"
"noch eine... Meine gefällt mir ganz\n"
"gut..."
);

DECLARE_MESSAGE_GER(0x7170,
SFX("\x68\x6D") "Du machst mir Angst! Willst \n"
"Du das?"
);

DECLARE_MESSAGE_GER(0x7171,
SFX("\x68\x6B") "Was bist Du denn? Ach, Du bist \n"
"eines dieser goldigen kleinen \n"
"Taschenmonster, oder?"
);

DECLARE_MESSAGE_GER(0x7172,
SFX("\x68\x6C") "Wie goldig, ein Häschen!\n"
"Hast Du denn auch ein \n"
"Stummelschwänzchen?"
);

DECLARE_MESSAGE_GER(0x7173,
SFX("\x68\x69") "Irgendwie erinnerst Du mich \n"
"an meine Großmutter..."
);

DECLARE_MESSAGE_GER(0x7174,
"Hi Feen-Junge! Ach so, Du bist \n"
"verkleidet, ich darf Dich nicht \n"
"erkennen! Na gut... Huch, wer bist\n"
"Du denn?!"
);

DECLARE_MESSAGE_GER(0x7175,
"Wow! Du hast aber große Augen! \n"
"Aber... wo sind Deine Ohren?"
);

DECLARE_MESSAGE_GER(0x7176,
"Oh, dieses Gesicht kenne ich\n"
"doch! Bist Du Fox McCloud?\n"
"Ich habe schon viel von Dir\n"
"gehört!"
);

DECLARE_MESSAGE_GER(0x7177,
"Hallo Bruder!\n"
"Schönes Wetter heute, oder?!"
);

DECLARE_MESSAGE_GER(0x7178,
"Moment... Ich kenne Dich...\n"
"Du bist... Kaputchi... Nein...\n"
"Aber so ähnlich klang doch\n"
"Dein Name, oder..."
);

DECLARE_MESSAGE_GER(0x7179,
"Uh... Wie häßlich! Genauso häßlich\n"
"wie Basil!"
);

DECLARE_MESSAGE_GER(0x717A,
"Hey, sieht aus wie meine Frau...\n"
"Ähem, ich meine, nein, eigentlich...\n"
"Nein, niemals..."
);

DECLARE_MESSAGE_GER(0x717B,
"Gähn...\n"
"Ich bin ziemlich müde...\n"
"Zeig mir das Ding später..."
);

DECLARE_MESSAGE_GER(0x717C,
"Verschwinde!\n"
"Ich bin beschäftigt!"
);

DECLARE_MESSAGE_GER(0x717D,
"Tja! Das macht Spaß! Genieße \n"
"Deine Jugend... Später, wenn Du \n"
"erwachsen bist, zählt nur noch die \n"
"Arbeit!"
);

DECLARE_MESSAGE_GER(0x717E,
"HUCH!\n"
"Puh, nur eine Maske...\n"
"Verschwinde hier, Kleiner!"
);

DECLARE_MESSAGE_GER(0x717F,
"Hey, wie lustig!\n"
"Das hat mich ein wenig \n"
"aufgeheitert! Danke, Kleiner!"
);

DECLARE_MESSAGE_GER(0x7180,
"Hmmm, laß mal schauen...\n"
"In der Tat... Die Maske wurde aus\n"
"einem alten Sargdeckel gefertigt...\n"
"Ein Relikt aus dem Totenreich!"
);

DECLARE_MESSAGE_GER(0x7181,
"Ah, eine Schädelmaske...\n"
"Sehr interessant... Es ist ein\n"
"echter Schädel, es kleben noch\n"
"ein paar Würmer und Maden daran!"
);

DECLARE_MESSAGE_GER(0x7182,
"Zeig mal her... Ja, sehr gute\n"
"Handarbeit... Dies ändert jedoch\n"
"nichts an der Tatsache, daß Du \n"
"damit ziemlich dämlich aussiehst!"
);

DECLARE_MESSAGE_GER(0x7183,
"Laß mal sehen... Aha... Sehr \n"
"interessant. So was hab ich schon \n"
"einmal gesehen... Ich glaube, es \n"
"war in einem Nachtclub..."
);

DECLARE_MESSAGE_GER(0x7184,
"Mampf... Mampf...\n"
"Oh, eine Maske, cool...\n"
"Willst Du nicht ein paar Bohnen \n"
"kaufen?"
);

DECLARE_MESSAGE_GER(0x7185,
"Mampf... Rülps...\n"
"Schön, aber ich habe keine\n"
"Verwendung dafür..."
);

DECLARE_MESSAGE_GER(0x7186,
"Mampf... Börps...\n"
"Danke, aber die paßt nicht\n"
"zu meinem Wohnzimmerschrank."
);

DECLARE_MESSAGE_GER(0x7187,
"Mampf... Börps...\n"
"Danke, aber Masken mag ich nicht\n"
"besonders..."
);

DECLARE_MESSAGE_GER(0x7188,
"Was ist Euer Begehr?"
);

DECLARE_MESSAGE_GER(0x7189,
"Ihr scheint kein Wasserwesen zu \n"
"sein..."
);

DECLARE_MESSAGE_GER(0x718A,
"Ihr wirkt sehr exotisch, woher\n"
"kommt Ihr?"
);

DECLARE_MESSAGE_GER(0x718B,
"Ihr mögt das Antlitz der Zoras\n"
"besitzen, doch Eure Statur gleicht \n"
"der eines Gartenzwerges..."
);

DECLARE_MESSAGE_GER(0x718C,
"Was?! Ersucht da ein niederes \n"
"Getier bei mir Audienz?"
);

DECLARE_MESSAGE_GER(0x718D,
"Diese Fratze... Gar schrecklich!\n"
"Zu Hilfe!"
);

DECLARE_MESSAGE_GER(0x718E,
"Diese Maske... Sie erinnert mich\n"
"an einen alten Freund.\n"
"Sein werter Name ist Biggoron!"
);

DECLARE_MESSAGE_GER(0x718F,
"Wer wagt es, das edle hylianische \n"
"Zora-Geschlecht der Lächerlichkeit \n"
"preiszugeben?"
);

DECLARE_MESSAGE_GER(0x7190,
"Hihi! Du bist süß... Zum Anbeißen!"
);

DECLARE_MESSAGE_GER(0x7191,
"Das sieht lustig aus!"
);

DECLARE_MESSAGE_GER(0x7192,
"Laß das, so etwas trägt kein \n"
"Mann!"
);

DECLARE_MESSAGE_GER(0x7193,
"Wie ich sehe, hast Du Dich \n"
"entschloßen, ein Zora zu werden!\n"
"Nun steht unserer Heirat nichts\n"
"mehr im Wege!"
);

DECLARE_MESSAGE_GER(0x7194,
"WHOA!\n"
"Mein Herz! Welch ein Schock!"
);

DECLARE_MESSAGE_GER(0x7195,
"Das sieht nicht nett aus...\n"
"Tschüß..."
);

DECLARE_MESSAGE_GER(0x7196,
"Hm...\n"
"Bist Du ein Travestie-Künstler?"
);

DECLARE_MESSAGE_GER(0x7197,
"Du solltest mehr Steine fressen!\n"
"Wenn nicht, wirst Du immer so \n"
"mickrig bleiben!"
);

DECLARE_MESSAGE_GER(0x7198,
"Laß mich allein!"
);

DECLARE_MESSAGE_GER(0x7199,
"Willst Du mich zum Lachen bringen?\n"
"Vergiß es! Das ist nicht lustig."
);

DECLARE_MESSAGE_GER(0x719A,
"Ich habe schon mehr gelacht..."
);

DECLARE_MESSAGE_GER(0x719B,
"Ich mag keine Gerudos!"
);

DECLARE_MESSAGE_GER(0x719C,
"Stör mich nicht!\n"
"Verschwinde!"
);

DECLARE_MESSAGE_GER(0x719D,
"Glaubst Du wirklich, daß Du\n"
"verkleidet bist?"
);

DECLARE_MESSAGE_GER(0x719E,
"Aus dem Weg!\n"
"Verschwinde! Dies ist kein\n"
"Kinderspielplatz!"
);

DECLARE_MESSAGE_GER(0x719F,
"Du scheinst Mut zu haben, Dich\n"
"in diese Gegend zu wagen!\n"
"Glaub bloß nicht, daß Du uns \n"
"täuschen kannst!"
);

DECLARE_MESSAGE_GER(0x71A0,
"Was soll das?\n"
"Willst Du mich zum Narren\n"
"halten?"
);

DECLARE_MESSAGE_GER(0x71A1,
"Du bist sehr mutig, Dich mit \n"
"dieser Maske in unsere Gegend\n"
"zu wagen! Du gefällst mir!"
);

DECLARE_MESSAGE_GER(0x71A2,
"Das sind Spiele aus dem \n"
"Kindergarten! Werde erwachsen!"
);

DECLARE_MESSAGE_GER(0x71A3,
"Nanu? Du... Du siehst aus wie ich!\n"
"Nein, ich bin hübscher. Und vor \n"
"allem nicht so klein..."
);

DECLARE_MESSAGE_GER(0x71A4,
"Nein, nein!\n"
"Die Ohren sind etwas zu klein!\n"
"Sie sollten eher so aussehen!"
);

DECLARE_MESSAGE_GER(0x71A5,
"Hast Du denn keine Angst, des \n"
"Nachts hier herumzulaufen? Noch \n"
"dazu mit einer Maske wie dieser?"
);

DECLARE_MESSAGE_GER(0x71A6,
"Du scheinst ja ein richtiger \n"
"Maskensammler zu sein!"
);

DECLARE_MESSAGE_GER(0x71A7,
"Ich erinnere mich, irgendwo einen\n"
"Stein gesehen zu haben, der \n"
"ähnlich aussah..."
);

DECLARE_MESSAGE_GER(0x71A8,
"Beeil Dich, " NAME "!\n"
"Der Teufelsturm kann jede \n"
"Sekunde einstürzen!"
);

DECLARE_MESSAGE_GER(0x71A9,
"Achtung! Von überall her stürzen \n"
"Trümmer herab!"
);

DECLARE_MESSAGE_GER(0x71AA,
NAME "!\n"
"Hilf mir!"
);

DECLARE_MESSAGE_GER(0x71AB,
NAME "!\n"
"Der Ausgang ist hier drüben!"
);

DECLARE_MESSAGE_GER(0x71AC,
"Hab Dank, " NAME ".\n"
"Schnell! Laß uns fliehen!"
);

DECLARE_MESSAGE_GER(0x71AD,
"Du brauchst offenbar\n"
"noch etwas Training!"BOX_BREAK"Übe fleißig und komme wieder!" EVENT
);

DECLARE_MESSAGE_GER(0x71AE,
"Fast!"BOX_BREAK"Nun gut...\n"
"Du darfst es noch einmal \n"
"versuchen! Umsonst! \n"
"Diesmal mußt Du es schaffen!" EVENT
);

DECLARE_MESSAGE_GER(0x71AF,
"Ich bin begeistert!\n"
"Klasse!\n"
"Göttlich!"BOX_BREAK"Hier, nimm dieses einzigartige\n"
"Präsent an Dich!" EVENT
);

DECLARE_MESSAGE_GER(0x71B0,
QUICKTEXT_ENABLE  COLOR("\x44") "Oh-oh, " COLOR("\x41") "die Zeit" COLOR("\x44") " ist abgelaufen!" COLOR("\x41") "\n"
COLOR("\x44") "Das Ding, das Du ausliefern \n"
"solltest, ist verdorben! \n"
"Versuch es erneut!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_GER(0x71B1,
QUICKTEXT_ENABLE "Man erzählt sich, es sei\n"
TIME " Uhr!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_GER(0x71B2,
"Die Wache in Kakariko schickt \n"
"Dich?! Nun, dann werde ich Dir \n"
"einen guten Preis machen!"
);

DECLARE_MESSAGE_GER(0xFFFD,
""
);
