#include <ultra64.h>
#include <global.h>

#include <message_data_fmt.h>

#define DECLARE_MESSAGE_FRA(textId, message) DECLARE_MESSAGE(textId, fra, message)

DECLARE_MESSAGE_FRA(0x0001,
UNSKIPPABLE  ITEM_ICON("\x2D")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Oeuf de \n"
"Poche" COLOR("\x40") "!" QUICKTEXT_DISABLE " Une Cocotte apparaîtra\n"
"demain matin. Allez la rendre\n"
"une fois utilisée."
);

DECLARE_MESSAGE_FRA(0x0002,
UNSKIPPABLE  ITEM_ICON("\x2F")  QUICKTEXT_ENABLE "Vous échangez la Cocotte de \n"
"Poche contre le " COLOR("\x41") "P'tit Poulet" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Contrairement aux Cocottes, \n"
"P'tit Poulet chante très rarement."
);

DECLARE_MESSAGE_FRA(0x0003,
UNSKIPPABLE  ITEM_ICON("\x30")  QUICKTEXT_ENABLE "Vous recevez un " COLOR("\x41") "Champignon \n"
"suspect" COLOR("\x40") "!" QUICKTEXT_DISABLE " Apportez-le vite à \n"
"l'apothicaire de Cocorico!"
);

DECLARE_MESSAGE_FRA(0x0004,
UNSKIPPABLE  ITEM_ICON("\x31")  QUICKTEXT_ENABLE "Vous recevez une " COLOR("\x41") " Mixture \n"
"suspecte" COLOR("\x40") "!" QUICKTEXT_DISABLE " Elle peut toujours\n"
"vous être utile... Rendez-vous\n"
"vite aux Bois Perdus!"
);

DECLARE_MESSAGE_FRA(0x0005,
UNSKIPPABLE  ITEM_ICON("\x32")  QUICKTEXT_ENABLE "Vous échangez la Mixture \n"
"contre la " COLOR("\x41") "Scie du chasseur" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Le type bizarre l'a sûrement\n"
"laissée tomber."
);

DECLARE_MESSAGE_FRA(0x0006,
QUICKTEXT_ENABLE "Bombes   20 Unités   80 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0007,
UNSKIPPABLE  ITEM_ICON("\x48")  QUICKTEXT_ENABLE "Vous recevez le\n"
COLOR("\x41") "Sac de graines Mojo" COLOR("\x40") "." QUICKTEXT_DISABLE "\n"
"Ce sac contient jusqu'à " COLOR("\x46") "40" COLOR("\x40") "\n"
"munitions pour le lance-pierre."
);

DECLARE_MESSAGE_FRA(0x0008,
UNSKIPPABLE  ITEM_ICON("\x33")  QUICKTEXT_ENABLE "Vous échangez la Scie \n"
"contre l'" COLOR("\x41") "Epée brisée de Goron" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Rendez visite à Biggoron et il \n"
"vous la réparera!"
);

DECLARE_MESSAGE_FRA(0x0009,
UNSKIPPABLE  ITEM_ICON("\x34")  QUICKTEXT_ENABLE "Vous remettez l'Epée brisée \n"
"de Goron et vous recevez une\n"
COLOR("\x41") "Ordonnance" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Allez vite voir le Roi Zora!"
);

DECLARE_MESSAGE_FRA(0x000A,
UNSKIPPABLE  ITEM_ICON("\x37")  QUICKTEXT_ENABLE "L'Epée de Biggoron..." QUICKTEXT_DISABLE "\n"
"Vous recevez un " COLOR("\x41") "Certificat" COLOR("\x40") "!\n"
"Une fois prête, sa lame tran-\n"
"chera du monstre en rondelles!"
);

DECLARE_MESSAGE_FRA(0x000B,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Vous échangez la Lame \n"
"des Géants contre l'" COLOR("\x41") "Epée de \n"
"Biggoron" COLOR("\x40") "!" QUICKTEXT_DISABLE " \n"
"Cette lame est indestructible!"
);

DECLARE_MESSAGE_FRA(0x000C,
UNSKIPPABLE  ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Vous échangez le Certificat \n"
"contre l'" COLOR("\x41") "Epée de Biggoron" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette lame est indestructible!"
);

DECLARE_MESSAGE_FRA(0x000D,
UNSKIPPABLE  ITEM_ICON("\x35")  QUICKTEXT_ENABLE "Vous échangez l'ordonnance \n"
"contre le " COLOR("\x41") "Crapaud-qui-louche" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Apportez-le vite au Lac Hylia\n"
"avant qu'il ne soit trop tard!"
);

DECLARE_MESSAGE_FRA(0x000E,
UNSKIPPABLE  ITEM_ICON("\x36")  QUICKTEXT_ENABLE "Vous échangez le crapaud\n"
"contre les " COLOR("\x41") "Super Gouttes" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vite! Apportez-les à Biggoron \n"
"avant qu'elles ne tournent!"
);

DECLARE_MESSAGE_FRA(0x000F,
SHIFT("\x47")  COLOR("\x41") "GAGNE!!" COLOR("\x40")  EVENT
);

DECLARE_MESSAGE_FRA(0x0010,
ITEM_ICON("\x25")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"de Mort" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"et vous serez beau comme un \n"
"monstre!"
);

DECLARE_MESSAGE_FRA(0x0011,
ITEM_ICON("\x26")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"d'Effroi" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"pour terrifier certaines \n"
"personnes!"
);

DECLARE_MESSAGE_FRA(0x0012,
ITEM_ICON("\x24")  QUICKTEXT_ENABLE "Vous empruntez le " COLOR("\x41") "Masque du \n"
"Renard" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " et \n"
"devenez le type le plus cool \n"
"du moooonde!"
);

DECLARE_MESSAGE_FRA(0x0013,
ITEM_ICON("\x27")  QUICKTEXT_ENABLE "Vous empruntez le " COLOR("\x41") "Masque du \n"
"Lapin" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " et \n"
"devenez aussi mignon qu'un \n"
"lapinou d'amour!"
);

DECLARE_MESSAGE_FRA(0x0014,
ITEM_ICON("\x28")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"de Goron" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"pour avoir une grosse tête."
);

DECLARE_MESSAGE_FRA(0x0015,
ITEM_ICON("\x29")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"de Zora" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"pour devenir un vrai Zora!"
);

DECLARE_MESSAGE_FRA(0x0016,
ITEM_ICON("\x2A")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"de Gerudo" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"pour ressembler à... une fille?"
);

DECLARE_MESSAGE_FRA(0x0017,
ITEM_ICON("\x2B")  QUICKTEXT_ENABLE "Vous empruntez un " COLOR("\x41") "Masque \n"
"de Vérité" COLOR("\x40") "." QUICKTEXT_DISABLE " Portez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"et montrez-le à tout le monde!"
);

DECLARE_MESSAGE_FRA(0x0018,
"Découvrez l'attraction des \n"
"amateurs d'explosions:"BOX_BREAK
SHIFT("\x11")  COLOR("\x41") "Le célèbre Bowling Teigneux!" COLOR("\x40") BOX_BREAK"Tu veux savoir ce qu'on y gagne?\n"
"C'est un " TEXT_SPEED("\x03") "secret." TEXT_SPEED("\x00") "\n"
"Paie d'abord et je parlerai ensuite,\n"
"p'tite tête..."BOX_BREAK"C'est " COLOR("\x41") "30 Rubis" COLOR("\x40") " la partie.\n"
"Tu veux jouer?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0019,
QUICKTEXT_ENABLE  SHIFT("\x3C") "OKAY!!" QUICKTEXT_DISABLE BOX_BREAK"Vise le trou du centre et laisse \n"
"partir le missile!\n"
"Tu as 10 essais. Prêt..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "C'EST PARTI!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x001A,
"Veux-tu rejouer?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x001B,
"Oh, j'ai failli oublier!\n"
"Voilà ce que tu peux gagner!" EVENT
);

DECLARE_MESSAGE_FRA(0x001C,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombes   (20 unités)   80 Rubis\n"
COLOR("\x40") "Allumez-la avec " COLOR("\x46") "[C]" COLOR("\x40") " et utilisez \n"
COLOR("\x46") "[C]" COLOR("\x40") " pour la lancer. Un sac est \n"
"indispensable pour en acheter." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x001D,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombes   (30 unités)   120 Rubis\n"
COLOR("\x40") "Allumez-la avec " COLOR("\x46") "[C]" COLOR("\x40") " et utilisez\n"
COLOR("\x46") "[C]" COLOR("\x40") " pour la lancer. Un sac est \n"
"indispensable pour en acheter." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x001E,
QUICKTEXT_ENABLE "Bombes   30 unités   120 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x001F,
"Tout le monde est guéri!\n"
"C'est formidable!"
);

DECLARE_MESSAGE_FRA(0x0020,
"Sauve mes frères, je t'en prie!"
);

DECLARE_MESSAGE_FRA(0x0021,
UNSKIPPABLE "La malédiction est brisée!\n"
"Merci infiniment!\n"
"Voici une récompense bien\n"
"méritée!" EVENT
);

DECLARE_MESSAGE_FRA(0x0022,
"Beuaaaaark! Je suis maudit!!"
);

DECLARE_MESSAGE_FRA(0x0023,
"Les araignées... Plus jamais!"
);

DECLARE_MESSAGE_FRA(0x0024,
"Tu as détruit " COLOR("\x41")  TOKENS " " COLOR("\x40") "araignées de la \n"
"malédiction. Mes enfants sont \n"
"sains et saufs."BOX_BREAK"Mes enfants t'ont-ils tous donné\n"
"une récompense?"BOX_BREAK"Cherche bien les araignées surtout\n"
"de nuit... Extermine-les et \n"
"tu deviendras " COLOR("\x41") "très riche!" COLOR("\x40") BOX_BREAK"Et souviens-toi: les araignées \n"
"adorent la terre fraîchement \n"
"retournée!"
);

DECLARE_MESSAGE_FRA(0x0025,
UNSKIPPABLE "La malédiction des araignées nous\n"
"a tous transformés mais..." TEXTID("\x00\x24")
);

DECLARE_MESSAGE_FRA(0x0026,
"La malédiction des araignées nous\n"
"a tous transformés."BOX_BREAK"Si toutes les " COLOR("\x41") "Araignées de la \n"
"Malédiction " COLOR("\x40") "sont détruites,\n"
"nous serons sauvés!"BOX_BREAK"Pour chaque Araignée de la \n"
"Malédiction tuée un symbole \n"
"apparaîtra. Prouve ta valeur en\n"
"récupérant les symboles."BOX_BREAK
ITEM_ICON("\x71") "Le nombre affiché près de cette\n"
COLOR("\x46") "icône" COLOR("\x40") " sur l'écran du " COLOR("\x44") "Statut " COLOR("\x40") "indique \n"
"combien d'Araignées de la \n"
"Malédiction furent détruites."BOX_BREAK
ITEM_ICON("\x71") "Lorsque cette " COLOR("\x46") "icône" COLOR("\x40") " est affichée\n"
"près du nom d'un lieu sur l'écran\n"
"de la " COLOR("\x41") "Carte" COLOR("\x40") ", toutes les araignées \n"
"ont été éliminées." TEXTID("\x00\xFE")
);

DECLARE_MESSAGE_FRA(0x0027,
"Brise la malédiction et tu seras \n"
"très riche!"
);

DECLARE_MESSAGE_FRA(0x0028,
UNSKIPPABLE "En détruisant " COLOR("\x41")  TOKENS  COLOR("\x40") " Araignées de la\n"
"Malédiction tu as pu me sauver."BOX_BREAK
UNSKIPPABLE "Merci mille fois! Reçois donc ceci\n"
"en gage de ma gratitude!" EVENT
);

DECLARE_MESSAGE_FRA(0x0029,
"Merci d'avoir sauvé mes enfants."BOX_BREAK"Quoi? Moi? No Problemo.\n"
"Je suis en pleine forme!"BOX_BREAK"Tu as déjà détruit " COLOR("\x41")  TOKENS " " COLOR("\x40") "Araignées" COLOR("\x41") "\n"
COLOR("\x40") "de la Malédiction...\n"
"Ne t'inquiète surtout pas pour moi!"
);

DECLARE_MESSAGE_FRA(0x002A,
QUICKTEXT_ENABLE "Missiles   20 Unités   180 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x002B,
"Veux-tu tenter ta chance?\n"
"C'est " COLOR("\x41") "20 Rubis " COLOR("\x40") "la partie.\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Pas question" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x002C,
"Mais... Où est ton arc?" EVENT
);

DECLARE_MESSAGE_FRA(0x002D,
"Très bien. Personne ne t'oblige à \n"
"jouer, tu sais." EVENT
);

DECLARE_MESSAGE_FRA(0x002E,
QUICKTEXT_ENABLE "OKAY!!" QUICKTEXT_DISABLE "\n"
"Ce jeu n'est pas pour les gamins!\n"
"Le célèbre " COLOR("\x41") "Jeu d'adresse " COLOR("\x40") "d'Hyrule!"BOX_BREAK"Vise bien et dégomme ce qui \n"
"apparaît! Pourras-tu toucher\n"
COLOR("\x41") "dix cibles" COLOR("\x40") "? Tu as " COLOR("\x41") "quinze " COLOR("\x40") "essais!"BOX_BREAK"Utilise ton arme avec " COLOR("\x41") "[B]" COLOR("\x40") ". \n"
"Es-tu prêt?\n"
"Fais-moi un sans faute!\n"
"Bonne chance!" EVENT
);

DECLARE_MESSAGE_FRA(0x002F,
"On dirait de la terre fraîchement \n"
"retournée."
);

DECLARE_MESSAGE_FRA(0x0030,
UNSKIPPABLE  ITEM_ICON("\x06")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x41") "Lance-Pierre\n"
"des Fées" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"ou" COLOR("\x46") " [C-Right] " COLOR("\x40") "dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "Utilisez " COLOR("\x46") "[C] " COLOR("\x40") "pour le\n"
"brandir. Maintenez " COLOR("\x46") "[C] " COLOR("\x40") "dans la\n"
"direction choisie et visez avec " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"Relâchez " COLOR("\x46") "[C] " COLOR("\x40") "pour tirer."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x06") "Si vous désirez tirer très\n"
"vite, maintenez " COLOR("\x46") "[C] " COLOR("\x40") "dans la\n"
"direction choisie plus longtemps\n"
"pour préparer une graine."
);

DECLARE_MESSAGE_FRA(0x0031,
UNSKIPPABLE  ITEM_ICON("\x03")  QUICKTEXT_ENABLE "Vous trouvez l'" COLOR("\x41") "Arc des Fées" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x03") "Utilisez " COLOR("\x46") "[C] " COLOR("\x40") "pour le brandir.\n"
"Maintenez " COLOR("\x46") "[C] " COLOR("\x40") "dans la direction\n"
"choisie et visez avec " COLOR("\x44") "[Control Stick]" COLOR("\x40") ". Relâchez\n"
COLOR("\x46") "[C]" COLOR("\x40") " pour décocher une " COLOR("\x41") "flèche" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x0032,
ITEM_ICON("\x02")  QUICKTEXT_ENABLE "Vous obtenez des " COLOR("\x41") "Bombes" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-les à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x02") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour brandir puis \n"
"poser une bombe. Utilisez\n"
COLOR("\x46") "[C] " COLOR("\x40") "en vous déplaçant pour la \n"
"jeter. Faites tout sauter!"
);

DECLARE_MESSAGE_FRA(0x0033,
ITEM_ICON("\x09")  QUICKTEXT_ENABLE "Vous obtenez des " COLOR("\x41") "Missiles" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-les à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x09") " Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour brandir puis\n"
"poser un missile. Ce nouveau \n"
"type de bombe peut même \n"
"grimper aux murs. A l'attaque!"
);

DECLARE_MESSAGE_FRA(0x0034,
ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x41") "Noix Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-la à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x01") "Utilisez " COLOR("\x46") "[C] " COLOR("\x40") "pour en lancer \n"
"une! Vous pourrez ainsi \n"
"aveugler vos ennemis!"
);

DECLARE_MESSAGE_FRA(0x0035,
UNSKIPPABLE  ITEM_ICON("\x0E")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x41") "Boomerang" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0E") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour \n"
"attaquer vos ennemis à \n"
"distance!"
);

DECLARE_MESSAGE_FRA(0x0036,
UNSKIPPABLE  ITEM_ICON("\x0A")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x41") "Grappin" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette chaîne montée sur \n"
"ressort peut s'accrocher à \n"
"certaines choses."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "Vous pouvez l'utiliser pour \n"
"attirer un objet vers vous ou \n"
"pour vous tracter."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0A") "Maintenez " COLOR("\x46") "[C] " COLOR("\x40") "puis visez à \n"
"l'aide du " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"Faites feu en relâchant " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x0037,
ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Bâton Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") "\n"
"dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x00") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour donner de\n"
"grands coups!"BOX_BREAK
ITEM_ICON("\x00") "Restez immobile et appuyez \n"
"sur " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pour ranger votre \n"
"bâton. Vous ne pouvez trans-\n"
"porter que 10 bâtons!"
);

DECLARE_MESSAGE_FRA(0x0038,
UNSKIPPABLE  ITEM_ICON("\x11")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x41") "Masse des \n"
"Titans" COLOR("\x40") "!" QUICKTEXT_DISABLE " Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour \n"
"frapper comme un sourd ou \n"
"pour écraser quelque chose!"
);

DECLARE_MESSAGE_FRA(0x0039,
UNSKIPPABLE  ITEM_ICON("\x0F")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x41") "Monocle de \n"
"Vérité" COLOR("\x40") "!" QUICKTEXT_DISABLE " Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour le \n"
"porter! Certains éléments sont\n"
"dissimulés un peu partout!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0F") "Assurez-vous de l'utiliser en\n"
"dehors du puits. Porter le \n"
"monocle gaspillera de la magie.\n"
"Appuyez sur " COLOR("\x46") "[C] " COLOR("\x40") "pour l'ôter."
);

DECLARE_MESSAGE_FRA(0x003A,
UNSKIPPABLE  ITEM_ICON("\x08")  QUICKTEXT_ENABLE "Vous trouvez l' " COLOR("\x41") "Ocarina du \n"
"Temps" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ce trésor de la Famille\n"
"Royale vous est confié par la \n"
"Princesse Zelda..."
);

DECLARE_MESSAGE_FRA(0x003B,
"Vous invoquez le Vent de Farore!\n"
THREE_CHOICE  COLOR("\x42") "Retourner au téléporteur\n"
"Dissiper le téléporteur\n"
"Quitter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x003C,
UNSKIPPABLE  ITEM_ICON("\x67")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x41") "Médaillon du \n"
"Feu" COLOR("\x40") "!" QUICKTEXT_DISABLE " Darunia se révèle être un\n"
"des Sages et vous confie son \n"
"pouvoir!"
);

DECLARE_MESSAGE_FRA(0x003D,
UNSKIPPABLE  ITEM_ICON("\x68")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x43") "Médaillon de \n"
"l'Eau" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ruto se révèle être \n"
"une des Sages et vous confie \n"
"son pouvoir!"
);

DECLARE_MESSAGE_FRA(0x003E,
UNSKIPPABLE  ITEM_ICON("\x66")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x42") "Médaillon de \n"
"la Forêt" COLOR("\x40") "!" QUICKTEXT_DISABLE " Saria se révèle être \n"
"une des Sages et vous confie \n"
"son pouvoir!"
);

DECLARE_MESSAGE_FRA(0x003F,
UNSKIPPABLE  ITEM_ICON("\x69")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x46") "Médaillon de\n"
"l'Esprit" COLOR("\x40") "!" QUICKTEXT_DISABLE " Nabooru se révèle \n"
"être une des Sages et vous \n"
"confie son pouvoir!"
);

DECLARE_MESSAGE_FRA(0x0040,
UNSKIPPABLE  ITEM_ICON("\x6B")  QUICKTEXT_ENABLE "Vous recevez le" COLOR("\x44") " Médaillon de \n"
"la Lumière" COLOR("\x40") "!" QUICKTEXT_DISABLE " Rauru le Sage \n"
"vous confie son pouvoir!"
);

DECLARE_MESSAGE_FRA(0x0041,
UNSKIPPABLE  ITEM_ICON("\x6A")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x45") "Médaillon de \n"
"l'Ombre" COLOR("\x40") "!" QUICKTEXT_DISABLE " Impa se révèle être \n"
"une des Sages et vous confie \n"
"son pouvoir!"
);

DECLARE_MESSAGE_FRA(0x0042,
UNSKIPPABLE  ITEM_ICON("\x14")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x41") "Bouteille \n"
"Vide" COLOR("\x40") "!" QUICKTEXT_DISABLE " Après avoir rempli cette\n"
"bouteille, assignez-la à " COLOR("\x46") "[C] \n"
COLOR("\x40") "pour utiliser son contenu."
);

DECLARE_MESSAGE_FRA(0x0043,
ITEM_ICON("\x15")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x41") "Potion \n"
"Rouge" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " \n"
"ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x15") "Buvez-la avec " COLOR("\x46") "[C]" COLOR("\x40") " pour \n"
"restaurer votre énergie. \n"
"Cette potion remplit l'une de \n"
"vos bouteilles."
);

DECLARE_MESSAGE_FRA(0x0044,
ITEM_ICON("\x16")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x42") "Potion \n"
"Verte" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " \n"
"ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x16") "Buvez-la avec " COLOR("\x46") "[C]" COLOR("\x40") " pour \n"
"restaurer votre magie. Cette \n"
"potion remplit l'une de vos \n"
"bouteilles."
);

DECLARE_MESSAGE_FRA(0x0045,
ITEM_ICON("\x17")  QUICKTEXT_ENABLE "Vous recevez une " COLOR("\x43") "Potion \n"
"Bleue" COLOR("\x40") "!" QUICKTEXT_DISABLE " Buvez-la avec " COLOR("\x46") "[C]" COLOR("\x40") " pour \n"
"restaurer magie et énergie."
);

DECLARE_MESSAGE_FRA(0x0046,
ITEM_ICON("\x18")  QUICKTEXT_ENABLE "Vous attrapez une " COLOR("\x41") "Fée" COLOR("\x40") " dans \n"
"une bouteille!" QUICKTEXT_DISABLE " Assignez-la à\n"
COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x18") "Cette petite fée est bien \n"
"utile! Elle peut automatique-\n"
"ment restaurer votre énergie \n"
"dans un moment critique."BOX_BREAK
ITEM_ICON("\x18") "En revanche, après l'avoir \n"
"assignée à " COLOR("\x46") "[C]" COLOR("\x40") ", vous pouvez \n"
"solliciter son aide à tout\n"
"moment."
);

DECLARE_MESSAGE_FRA(0x0047,
ITEM_ICON("\x19")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Poisson" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Utilisez-le avec " COLOR("\x46") "[C]" COLOR("\x40") " au bon\n"
"endroit pour qu'il se passe \n"
"quelque chose."BOX_BREAK
ITEM_ICON("\x19") "Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'Inventaire\n"
"et utilisez ce " COLOR("\x46") "[C] " COLOR("\x40") "pour vous en\n"
"servir."
);

DECLARE_MESSAGE_FRA(0x0048,
ITEM_ICON("\x10")  QUICKTEXT_ENABLE "Vous obtenez des " COLOR("\x41") "Haricots \n"
"Magiques" COLOR("\x40") "!" QUICKTEXT_DISABLE " Plantez-les au bon \n"
"endroit avec " COLOR("\x46") "[C]" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x10") "Assignez-les à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire\n"
COLOR("\x40") "puis utilisez ce " COLOR("\x46") "[C] " COLOR("\x40") "pour en\n"
"planter."
);

DECLARE_MESSAGE_FRA(0x0049,
"Bon... Es-tu prêt cette fois-ci?"BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "C'EST PARTI" COLOR("\x40") "!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x004A,
UNSKIPPABLE  ITEM_ICON("\x07")  QUICKTEXT_ENABLE "Vous recevez l'" COLOR("\x41") "Ocarina des \n"
"Fées" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez ce cadeau de\n"
"Saria à " COLOR("\x46") "[C]" COLOR("\x40") " puis utilisez \n"
COLOR("\x46") "[C] " COLOR("\x40") "pour vous en servir."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "Assignez-le à\n"
COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "\n"
"puis utilisez " COLOR("\x46") "[C]  " COLOR("\x40") "pour en\n"
"jouer."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x07") "Les " COLOR("\x42") "[A]" COLOR("\x40") " et " COLOR("\x46") "[C]" COLOR("\x40") " \n"
"correspondent à différentes \n"
"notes. Appuyez sur " COLOR("\x41") "[B]" COLOR("\x40") " pour \n"
"arrêter de jouer."
);

DECLARE_MESSAGE_FRA(0x004B,
ITEM_ICON("\x3D")  QUICKTEXT_ENABLE "Vous obtenez la " COLOR("\x41") "Lame des \n"
"Géants" COLOR("\x40") "!" QUICKTEXT_DISABLE " Appuyez sur " COLOR("\x41") "[B]" COLOR("\x42") " " COLOR("\x40") "pour \n"
"attaquer! Vous ne pouvez \n"
"plus porter de " COLOR("\x44") "bouclier" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x004C,
ITEM_ICON("\x3E")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x44") "Bouclier \n"
"Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE " Sélectionnez ce bouclier\n"
"à l'" COLOR("\x42") "écran de l'Equipement" COLOR("\x40") ".\n"
"Appuyez sur " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pour l'équiper."BOX_BREAK
ITEM_ICON("\x3E") "Appuyez sur " COLOR("\x44") "[R]" COLOR("\x40") " pour vous \n"
"accroupir et vous protéger.\n"
"Appuyez sur " COLOR("\x44") "[R]" COLOR("\x40") " en maintenant\n"
COLOR("\x44") "[L] " COLOR("\x40") "pour en plus vous déplacer."
);

DECLARE_MESSAGE_FRA(0x004D,
ITEM_ICON("\x3F")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x44") "Bouclier \n"
"Hylien" COLOR("\x40") "!" QUICKTEXT_DISABLE " Sélectionnez-le à \n"
"l'" COLOR("\x42") "écran de l'Equipement" COLOR("\x40") ", puis \n"
"appuyez sur " COLOR("\x42") "[A]" COLOR("\x40") " pour l'équiper."
);

DECLARE_MESSAGE_FRA(0x004E,
UNSKIPPABLE  ITEM_ICON("\x40")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x44") "Bouclier \n"
"Miroir" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ce bouclier peut \n"
"réfléchir lumière et énergie. \n"
"Appuyez sur " COLOR("\x44") "[R] " COLOR("\x40") "pour l'utiliser."
);

DECLARE_MESSAGE_FRA(0x004F,
UNSKIPPABLE  ITEM_ICON("\x0B")  QUICKTEXT_ENABLE "Vous trouvez le " COLOR("\x41") "Super \n"
"Grappin" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ce nouveau modèle \n"
"de grappin peut s'étendre " COLOR("\x41") "deux\n"
"fois " COLOR("\x40") "plus loin!"
);

DECLARE_MESSAGE_FRA(0x0050,
ITEM_ICON("\x42")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x41") "Tunique \n"
"Goron" COLOR("\x40") "!" QUICKTEXT_DISABLE " L'étoffe de cet habit \n"
"pour adulte est à l'épreuve du\n"
"feu. Chaud, moi? J'crois pas!"
);

DECLARE_MESSAGE_FRA(0x0051,
ITEM_ICON("\x43")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x43") "Tunique\n"
"Zora" COLOR("\x40") "!" QUICKTEXT_DISABLE " Cet habit pour adulte \n"
"vous permettra de respirer \n"
"sous l'eau."
);

DECLARE_MESSAGE_FRA(0x0052,
QUICKTEXT_ENABLE "Vous trouvez une " COLOR("\x42") "Bouteille de \n"
"Magie" COLOR("\x40") "!" QUICKTEXT_DISABLE " Votre Magie est restaurée!"
);

DECLARE_MESSAGE_FRA(0x0053,
UNSKIPPABLE  ITEM_ICON("\x45")  QUICKTEXT_ENABLE "Vous trouvez les \n"
COLOR("\x41") "Bottes de plomb" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Si lourdes, nul ne court.\n"
"Si lourdes, nul ne flotte."
);

DECLARE_MESSAGE_FRA(0x0054,
UNSKIPPABLE  ITEM_ICON("\x46")  QUICKTEXT_ENABLE "Vous trouvez les " COLOR("\x41") "Bottes des\n"
"airs" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ces bottes ailées vous \n"
"permettront de léviter au-\n"
"dessus du sol. "BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x46") "Vous pouvez même utiliser \n"
"ces bottes pour marcher dans \n"
"le vide pendant quelques \n"
"instants."
);

DECLARE_MESSAGE_FRA(0x0055,
QUICKTEXT_ENABLE "Vous trouvez un " COLOR("\x45") "Coeur de Vie" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Votre énergie est restaurée!"
);

DECLARE_MESSAGE_FRA(0x0056,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "Vous changez votre carquois \n"
"pour un " COLOR("\x41") "Grand Carquois" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "40 " COLOR("\x40") "flèches!"
);

DECLARE_MESSAGE_FRA(0x0057,
UNSKIPPABLE  ITEM_ICON("\x4B")  QUICKTEXT_ENABLE "Vous changez votre carquois \n"
"pour un " COLOR("\x41") "Enorme Carquois" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "50 " COLOR("\x40") "flèches!"
);

DECLARE_MESSAGE_FRA(0x0058,
UNSKIPPABLE  ITEM_ICON("\x4D")  QUICKTEXT_ENABLE "Vous trouvez un " COLOR("\x41") "Sac de \n"
"Bombes" COLOR("\x40") "!" QUICKTEXT_DISABLE " Fait à base d'esto-\n"
"macs de Dodongos, ce sac \n"
"contient plusieurs bombes!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x02")  QUICKTEXT_ENABLE "Vous trouvez " COLOR("\x41") "20 Bombes" COLOR("\x40") " à \n"
"l'intérieur!" QUICKTEXT_DISABLE " Posez des bombes \n"
"avec " COLOR("\x46") "[C] " COLOR("\x40") "et faites tout sauter!"
);

DECLARE_MESSAGE_FRA(0x0059,
UNSKIPPABLE  ITEM_ICON("\x4E")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Gros Sac de \n"
"Bombes" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous pouvez \n"
"désormais transporter jusqu'à \n"
COLOR("\x46") "30" COLOR("\x40") " bombes!"
);

DECLARE_MESSAGE_FRA(0x005A,
UNSKIPPABLE  ITEM_ICON("\x4F")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Enorme Sac \n"
"de Bombes" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous pouvez \n"
"désormais transporter jusqu'à \n"
COLOR("\x46") "40" COLOR("\x40") " bombes!"
);

DECLARE_MESSAGE_FRA(0x005B,
UNSKIPPABLE  ITEM_ICON("\x51")  QUICKTEXT_ENABLE "Vous trouvez les " COLOR("\x43") "Gantelets \n"
"d'argent" COLOR("\x40") "!" QUICKTEXT_DISABLE " En les portant vous \n"
"pourriez soulever d'énormes \n"
"objets avec " COLOR("\x42") "[A]" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x51") "Mais ces gantelets sont trop \n"
"grands pour vos petites \n"
"menottes et vous avez promis à\n"
COLOR("\x41") "Nabooru" COLOR("\x40") " de les lui rapporter..."
);

DECLARE_MESSAGE_FRA(0x005C,
UNSKIPPABLE  ITEM_ICON("\x52")  QUICKTEXT_ENABLE "Vous trouvez les " COLOR("\x43") "Gantelets \n"
"d'or" COLOR("\x40") "!" QUICKTEXT_DISABLE " Une puissance démesurée\n"
"vous envahit! Utilisez " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pour\n"
"soulever d'énormes objets!"
);

DECLARE_MESSAGE_FRA(0x005D,
ITEM_ICON("\x1C")  QUICKTEXT_ENABLE "Vous enfermez une " COLOR("\x44") "Flamme \n"
"Bleue " COLOR("\x40") "dans une bouteille!" QUICKTEXT_DISABLE "\n"
"Utilisez cette flamme magique \n"
"avec " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down]" COLOR("\x40") " ou" COLOR("\x46") " [C-Right]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x005E,
UNSKIPPABLE  ITEM_ICON("\x56")  QUICKTEXT_ENABLE "Vous recevez la " COLOR("\x43") "Grande \n"
"Bourse" COLOR("\x40") "!" QUICKTEXT_DISABLE " Elle vous permet de\n"
"transporter jusqu'à " COLOR("\x46") "200" COLOR("\x40") " " COLOR("\x46") "Rubis" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x005F,
UNSKIPPABLE  ITEM_ICON("\x57")  QUICKTEXT_ENABLE "Vous recevez la " COLOR("\x43") "Bourse de \n"
"Géant" COLOR("\x40") "!" QUICKTEXT_DISABLE " Elle peut contenir\n"
"jusqu'à " COLOR("\x46") "500" COLOR("\x40") " " COLOR("\x46") "Rubis" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x0060,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "Vous trouvez une " COLOR("\x41") "Petite Clé" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette clé permet d'ouvrir une \n"
"des portes verrouillées de ce\n"
"donjon."
);

DECLARE_MESSAGE_FRA(0x0061,
QUICKTEXT_ENABLE  COLOR("\x41") "Missile  (20 unités)  180 Rubis\n"
COLOR("\x40") "Profilée comme une souris\n"
"mécanique, cette arme est \n"
"destructrice!!!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0062,
QUICKTEXT_ENABLE "Potion Rouge   40 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0063,
QUICKTEXT_ENABLE "Potion Rouge  50 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0064,
QUICKTEXT_ENABLE  COLOR("\x41") "Potion Rouge  40 Rubis\n"
COLOR("\x40") "Utilisable qu'une seule fois, elle\n"
"restaurera votre énergie." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0065,
QUICKTEXT_ENABLE  COLOR("\x41") "Potion Rouge   50 Rubis\n"
COLOR("\x40") "Utilisable qu'une seule fois, elle\n"
"restaurera votre énergie." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0066,
ITEM_ICON("\x76")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x41") "Carte du \n"
"Donjon" COLOR("\x40") "!" QUICKTEXT_DISABLE " Appuyez sur " COLOR("\x44") "START" COLOR("\x41") " \n"
COLOR("\x40") "pour accéder à l'écran de la\n"
COLOR("\x41") "Carte" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x76") "Les " COLOR("\x43") "pièces en bleu " COLOR("\x40") "sont \n"
"celles déjà visitées. Votre \n"
"position actuelle est une\n"
COLOR("\x44") "pièce clignotante" COLOR("\x40") "."BOX_BREAK
ITEM_ICON("\x76") "Déplacez " COLOR("\x44") "[Control Stick] en haut et en \n"
"bas " COLOR("\x40") "pour passer en revue un \n"
"étage précis."
);

DECLARE_MESSAGE_FRA(0x0067,
ITEM_ICON("\x75")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x41") "Boussole" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vous pouvez désormais \n"
"découvrir l'emplacement de \n"
"nombreux objets cachés!"
);

DECLARE_MESSAGE_FRA(0x0068,
UNSKIPPABLE  ITEM_ICON("\x6F")  QUICKTEXT_ENABLE "Vous obtenez la " COLOR("\x41") "Pierre de \n"
"Souffrance" COLOR("\x40") "!" QUICKTEXT_DISABLE " Avec la " COLOR("\x44") "fonction\n"
"Vibration" COLOR("\x40") ", vous pourrez sentir \n"
"la présence d'objets cachés."
);

DECLARE_MESSAGE_FRA(0x0069,
UNSKIPPABLE  ITEM_ICON("\x23")  QUICKTEXT_ENABLE "Vous recevez la " COLOR("\x41") "Lettre de \n"
"Zelda" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C] " COLOR("\x40") "et \n"
"montrez-la avec " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x006A,
QUICKTEXT_ENABLE "Bienvenue! \n"
"Je peux vous renseigner?" QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "J'veux acheter!\n"
"Je jette un oeil..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x006B,
QUICKTEXT_ENABLE "Désirez-vous autre chose?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui! J'en veux encore!\n"
"Non! J'en veux plus!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x006C,
ITEM_ICON("\x49")  QUICKTEXT_ENABLE "Votre " COLOR("\x41") "Sac de graines" COLOR("\x40") " devient\n"
"plus gros!" QUICKTEXT_DISABLE " Vous pouvez \n"
"désormais transporter jusqu'à\n"
COLOR("\x46") "50" COLOR("\x41") " " COLOR("\x40") "munitions!"
);

DECLARE_MESSAGE_FRA(0x006D,
"Ouvre un coffre et...Surprise!\n"
"Si tu trouves une clé à l'intérieur,\n"
"tu pourras continuer à avancer.\n"
"Fais ensuite le bon choix!"BOX_BREAK"C'est " COLOR("\x41") "10 Rubis " COLOR("\x40") "la partie.\n"
"Tu veux tenter ta chance?\n"
TWO_CHOICE  COLOR("\x42") "Ouais\n"
"Heu... Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x006E,
"Génial! T'es joueur, toi!"
);

DECLARE_MESSAGE_FRA(0x006F,
QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x42") "Rubis vert" COLOR("\x40") "!\n"
"Vous gagnez " COLOR("\x42") "un Rubis" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0070,
UNSKIPPABLE  ITEM_ICON("\x04")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x41") "Flèche de \n"
"Feu" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C] " COLOR("\x40") "pour \n"
"enchanter vos flèches! Tirez \n"
"et embrasez votre cible!"
);

DECLARE_MESSAGE_FRA(0x0071,
UNSKIPPABLE  ITEM_ICON("\x0C")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x43") "Flèche de \n"
"Glace" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C] " COLOR("\x40") "pour \n"
"enchanter vos flèches! Tirez \n"
"et gelez votre cible."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0C") "Ce sort enchantera les flèches\n"
"du valeureux archer ayant\n"
"triomphé de l'entraînement\n"
"des Gerudos."
);

DECLARE_MESSAGE_FRA(0x0072,
UNSKIPPABLE  ITEM_ICON("\x12")  QUICKTEXT_ENABLE "Vous obtenez la " COLOR("\x44") "Flèche de \n"
"Lumière" COLOR("\x40") "!" QUICKTEXT_DISABLE " Assignez-la à " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"et la clarté de la Justice\n"
"dissipera le Malin!"
);

DECLARE_MESSAGE_FRA(0x0073,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x32")  COLOR("\x42") "Menuet des bois" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0074,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x38")  COLOR("\x41") "Boléro du feu" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0075,
UNSKIPPABLE  SHIFT("\x2E") "Vous apprenez la \n"
SHIFT("\x2D")  COLOR("\x43") "Sérénade de l'eau" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0076,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x28")  COLOR("\x46") "Requiem des esprits" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0077,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x28")  COLOR("\x45") "Nocturne de l'ombre" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0078,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x24")  COLOR("\x44") "Prélude de la lumière" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0079,
UNSKIPPABLE  ITEM_ICON("\x50")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x41") "Bracelet \n"
"Goron" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous pouvez désormais\n"
"soulever les Choux-Péteurs. \n"
"Appuyez sur " COLOR("\x42") "[A]" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x007A,
ITEM_ICON("\x1D")  QUICKTEXT_ENABLE "Vous enfermez un " COLOR("\x41") "Insecte \n"
COLOR("\x40") "dans la bouteille!" QUICKTEXT_DISABLE "\n"
"Gardez-le ou libérez-le \n"
"avec " COLOR("\x46") "[C]" COLOR("\x40") "."BOX_BREAK"Cette petite bestiole adore se\n"
"cacher dans la terre!"
);

DECLARE_MESSAGE_FRA(0x007B,
UNSKIPPABLE  ITEM_ICON("\x70")  QUICKTEXT_ENABLE "Vous recevez la " COLOR("\x41") "Carte Gerudo" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vous pouvez désormais entrer\n"
"dans le Gymnase des Gerudos."
);

DECLARE_MESSAGE_FRA(0x007C,
QUICKTEXT_ENABLE "Bombes  10 unités  50 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x007D,
QUICKTEXT_ENABLE "Flèches  50 unités  90 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x007E,
QUICKTEXT_ENABLE "Poisson   200 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x007F,
QUICKTEXT_ENABLE "Noix Mojo   5 unités   15 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0080,
UNSKIPPABLE  ITEM_ICON("\x6C")  QUICKTEXT_ENABLE "Vous recevez l'" COLOR("\x42") "Emeraude Kokiri" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette Pierre Ancestrale de la\n"
"forêt vous est confiée par le\n"
"vénérable Arbre Mojo."
);

DECLARE_MESSAGE_FRA(0x0081,
UNSKIPPABLE  ITEM_ICON("\x6D")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x41") "Rubis Goron" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette Pierre Ancestrale du \n"
"feu vous est confiée par les \n"
"Gorons!"
);

DECLARE_MESSAGE_FRA(0x0082,
UNSKIPPABLE  ITEM_ICON("\x6E")  QUICKTEXT_ENABLE "Vous recevez le" COLOR("\x43") " Saphir Zora" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Cette Pierre Ancestrale de \n"
"l'eau vous est confiée par les \n"
"Zoras!"
);

DECLARE_MESSAGE_FRA(0x0083,
QUICKTEXT_ENABLE "Passez en revue les articles en \n"
"déplaçant " COLOR("\x44") "[Control Stick] " COLOR("\x40") "à gauche ou à droite.\n"
TWO_CHOICE  COLOR("\x42") "Parler au marchand\n"
"Quitter" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0084,
QUICKTEXT_ENABLE  SHIFT("\x33") "Merci beaucoup!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0085,
QUICKTEXT_ENABLE "Vous n'avez pas assez d'argent!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0086,
QUICKTEXT_ENABLE "Vous ne pouvez acheter ceci\n"
"maintenant." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0087,
QUICKTEXT_ENABLE "Noix Mojo   10 unités  30 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0088,
QUICKTEXT_ENABLE "Bâton Mojo  1 unité   10 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0089,
QUICKTEXT_ENABLE "Bouclier Mojo   40 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x008A,
QUICKTEXT_ENABLE "Flèches   10 unités   20 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x008B,
QUICKTEXT_ENABLE "Bombes   5 unités   25 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x008C,
QUICKTEXT_ENABLE "Missiles  10 unités   100 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x008D,
"Vous ne pouvez utiliser une Ame\n"
"ici! Vendez-la à l'homme près du\n"
"pont-levis!"
);

DECLARE_MESSAGE_FRA(0x008E,
QUICKTEXT_ENABLE "Potion rouge   30 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x008F,
QUICKTEXT_ENABLE "Potion verte  30 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0090,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "20" COLOR("\x40") " " COLOR("\x41") "Bâtons Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0091,
UNSKIPPABLE  ITEM_ICON("\x00")  QUICKTEXT_ENABLE "Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "30" COLOR("\x40") " " COLOR("\x41") "Bâtons Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0092,
QUICKTEXT_ENABLE "Bouclier Hylien   80 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0093,
QUICKTEXT_ENABLE "Tunique Goron   200 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0094,
QUICKTEXT_ENABLE "Tunique Zora   300 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0095,
QUICKTEXT_ENABLE "Coeur de vie   10 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0096,
QUICKTEXT_ENABLE "Désolé... Il vous faut une bouteille\n"
"vide pour acheter ceci." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x0097,
ITEM_ICON("\x20")  QUICKTEXT_ENABLE "Vous attrapez un " COLOR("\x41") "Esprit " COLOR("\x40") "dans \n"
"une bouteille!" QUICKTEXT_DISABLE "\n"
"Il doit bien servir à quelque \n"
"chose!"
);

DECLARE_MESSAGE_FRA(0x0098,
ITEM_ICON("\x1A")  QUICKTEXT_ENABLE "Vous obtenez le " COLOR("\x41") "Lait de \n"
"Lon Lon" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ce lait est très \n"
"nourrissant! Buvez-le avec " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"pour restaurer votre énergie!"BOX_BREAK
ITEM_ICON("\x1A") "Chaque dose restaurera " COLOR("\x41") "cinq\n"
"coeurs" COLOR("\x40") ". Une bouteille contient\n"
"deux doses."BOX_BREAK
ITEM_ICON("\x1A") "Assignez-le à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") "\n"
"ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire " COLOR("\x40") "puis\n"
"utilisez " COLOR("\x46") "[C] " COLOR("\x40") "pour boire."
);

DECLARE_MESSAGE_FRA(0x0099,
UNSKIPPABLE  ITEM_ICON("\x1B")  QUICKTEXT_ENABLE "Vous obtenez une " COLOR("\x41") "Bouteille \n"
"vide" COLOR("\x40") "!" QUICKTEXT_DISABLE " Enfermez-y quelque chose\n"
"et utilisez-la avec " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"Heu? Elle est pleine?"
);

DECLARE_MESSAGE_FRA(0x009A,
UNSKIPPABLE  ITEM_ICON("\x21")  QUICKTEXT_ENABLE "Vous recevez un " COLOR("\x41") "Oeuf \n"
"curieux" COLOR("\x40") "!" QUICKTEXT_DISABLE " On dirait que ça \n"
"bouge à l'intérieur! Assignez-le\n"
"à " COLOR("\x46") "[C] " COLOR("\x40") "et... Patience!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x21") "Assignez-le à\n"
COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " ou " COLOR("\x46") "[C-Right]" COLOR("\x40") " dans l'" COLOR("\x46") "Inventaire" COLOR("\x40") "\n"
"puis utilisez-le avec " COLOR("\x46") "[C]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x009B,
QUICKTEXT_ENABLE "Flèches   30 unités   60 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x009C,
"Ma meilleure vente est le " COLOR("\x44") "Bouclier \n"
"Hylien" COLOR("\x40") " mais il risque d'être trop\n"
"grand pour toi, mon p'tit." EVENT
);

DECLARE_MESSAGE_FRA(0x009D,
"Les temps sont durs... Et nous\n"
"avons dû fuir du château. Mais \n"
"j'espère vous avoir comme \n"
"client fidèle!!" EVENT
);

DECLARE_MESSAGE_FRA(0x009E,
QUICKTEXT_ENABLE  SHIFT("\x43") "Bienvenue!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x009F,
QUICKTEXT_ENABLE  COLOR("\x41") "Bouclier Mojo   40 Rubis\n"
COLOR("\x40") "Une fois équipé, appuyez sur " COLOR("\x44") "[R]\n"
COLOR("\x40") "pour vous protéger. Prenez garde\n"
"à ce qu'il ne brûle pas!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A0,
QUICKTEXT_ENABLE  COLOR("\x41") "Flèches   10 unités   20 Rubis\n"
COLOR("\x40") "Il vous faut un arc pour avoir\n"
"le droit d'acheter des flèches." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A1,
QUICKTEXT_ENABLE  COLOR("\x41") "Bâton Mojo  1 unité  10 Rubis\n"
COLOR("\x40") "Bien que fragile, cette longue\n"
"branche provenant de l'Arbre Mojo\n"
"peut vous servir d'arme." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A2,
QUICKTEXT_ENABLE  COLOR("\x41") "Noix Mojo  10 unités  30 Rubis\n"
COLOR("\x40") "Utilisez ces projectiles pour\n"
"paralyser vos ennemis." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A3,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombes   5 unités   25 Rubis\n"
COLOR("\x40") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour allumer et lancer\n"
"une bombe. Un sac de bombes est\n"
"indispensable pour en acheter." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A4,
UNSKIPPABLE  ITEM_ICON("\x3B")  QUICKTEXT_ENABLE "Vous trouvez l'" COLOR("\x41") "Epée Kokiri" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Activez l'" COLOR("\x42") "Ecran de l'Equipement" COLOR("\x40") ",\n"
"sélectionnez-la puis équipez-la\n"
"avec " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x3B") "Cette lame est le trésor \n"
"secret de la tribu Kokiri. \n"
"N'hésitez pas à vous entraîner\n"
"avant de croiser le fer!"
);

DECLARE_MESSAGE_FRA(0x00A5,
QUICKTEXT_ENABLE  COLOR("\x41") "Potion Rouge   30 Rubis\n"
COLOR("\x40") "Cette dose unique restaurera \n"
"votre énergie." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A6,
QUICKTEXT_ENABLE  COLOR("\x41") "Potion Verte   30 Rubis\n"
COLOR("\x40") "Cette dose unique restaurera\n"
"votre magie." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00A7,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "30 " COLOR("\x41") "Noix Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00A8,
UNSKIPPABLE  ITEM_ICON("\x01")  QUICKTEXT_ENABLE "Vous pouvez désormais trans-\n"
"porter jusqu'à " COLOR("\x46") "40" COLOR("\x40") " " COLOR("\x41") "Noix Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00A9,
QUICKTEXT_ENABLE  COLOR("\x41") "Bouclier Hylien   80 Rubis\n"
COLOR("\x40") "Ce bouclier pour chevalier est si\n"
"résistant qu'il vous protégera\n"
"des attaques de feu!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00AA,
QUICKTEXT_ENABLE  COLOR("\x41") "Tunique Goron   200 Rubis\n"
COLOR("\x40") "Créé par les Gorons, cet habit\n"
"pour adulte vous rend insensible \n"
"au feu." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00AB,
QUICKTEXT_ENABLE  COLOR("\x41") "Tunique Zora    300 Rubis\n"
COLOR("\x40") "Créé par les Zoras, cet habit\n"
"pour adulte vous permet de \n"
"respirer sous les flots." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00AC,
QUICKTEXT_ENABLE  COLOR("\x41") "Coeur de vie   10 Rubis\n"
COLOR("\x40") "Il restaurera une petite partie\n"
"de votre énergie." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00AD,
UNSKIPPABLE  ITEM_ICON("\x05")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x41") "Feu de Din" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Utilisez " COLOR("\x46") "[C] " COLOR("\x40") "pour invoquer\n"
"une puissante aura de feu \n"
"destructrice."
);

DECLARE_MESSAGE_FRA(0x00AE,
UNSKIPPABLE  ITEM_ICON("\x0D")  QUICKTEXT_ENABLE "Vous recevez le " COLOR("\x42") "Vent de \n"
"Farore" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ce sortilège vous \n"
"permettra de vous téléporter \n"
"en utilisant " COLOR("\x46") "[C]" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "En invoquant ce sort, vous\n"
"pourrez créer puis vous \n"
"rendre à un " COLOR("\x42") "téléporteur" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  ITEM_ICON("\x0D") "En utilisant la magie une \n"
"seconde fois, vous aurez le \n"
"choix entre vous téléporter ou\n"
"annuler le téléporteur."
);

DECLARE_MESSAGE_FRA(0x00AF,
UNSKIPPABLE  ITEM_ICON("\x13")  QUICKTEXT_ENABLE "Vous recevez l'" COLOR("\x43") "Amour de \n"
"Nayru" COLOR("\x40") "!" QUICKTEXT_DISABLE " Lancez ce sort avec\n"
COLOR("\x46") "[C] " COLOR("\x40") "pour invoquer une \n"
"puissante barrière protectrice."
);

DECLARE_MESSAGE_FRA(0x00B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Flèches  50 unités  90 Rubis\n"
COLOR("\x40") "Il vous faut un arc pour avoir\n"
"le droit d'acheter des flèches." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombes  10 unités  50 Rubis\n"
COLOR("\x40") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour allumer et lancer\n"
"une bombe. Un sac de bombes est\n"
"indispensable pour en acheter." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Noix Mojo  5 unités  15 Rubis\n"
COLOR("\x40") "Utilisez ces projectiles avec " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"pour paralyser vos ennemis." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Poisson   200 Rubis\n"
COLOR("\x40") "Une prise de ce matin!\n"
"A conserver dans une bouteille." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00B4,
"Vous venez de détruire une\n"
COLOR("\x41") "Skulltula d'or" COLOR("\x40") "! Ce symbole prouve\n"
"votre haut fait!"
);

DECLARE_MESSAGE_FRA(0x00B5,
"Vous venez de détruire une\n"
COLOR("\x41") "Skulltula d'or" COLOR("\x40") "! Ce symbole prouve\n"
"votre haut fait!"
);

DECLARE_MESSAGE_FRA(0x00B6,
QUICKTEXT_ENABLE "Esprit de fée    50 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Esprit de fée   50 Rubis\n"
COLOR("\x40") "Il vous faut une bouteille vide \n"
"pour la conserver. \n"
"Ne sortez pas sans elle!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00B8,
QUICKTEXT_ENABLE "Flamme bleue    300 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Flamme bleue   300 Rubis\n"
COLOR("\x40") "Il vous faut une bouteille vide\n"
"pour la conserver. A utiliser dans\n"
"les conditions extrêmes!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00BA,
QUICKTEXT_ENABLE "Insecte en bouteille   50 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Insecte en bouteille    50 Rubis\n"
COLOR("\x40") "Il vous faut une bouteille vide\n"
"pour le conserver. On dirait un\n"
"insecte ordinaire..." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00BC,
QUICKTEXT_ENABLE  COLOR("\x41") "Missile  10 unités  100 Rubis\n"
COLOR("\x40") "Profilée comme une souris\n"
"mécanique, cette arme est \n"
"destructrice!!!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00BD,
QUICKTEXT_ENABLE  COLOR("\x41") "Cet article est actuellement \n"
"indisponible." COLOR("\x40")  QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00BE,
"Allez, vieux! T'as plus l'âge\n"
"pour ce jeu!" EVENT
);

DECLARE_MESSAGE_FRA(0x00BF,
SHIFT("\x34") "Mmmm? Gueu--!"BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x2D") "Qu... Comm.. Hein?" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3C") "UN CLIENT!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x00C0,
SHIFT("\x1B") "zzzzz...(ronfle)...zzzzz..." EVENT
);

DECLARE_MESSAGE_FRA(0x00C1,
QUICKTEXT_ENABLE  COLOR("\x41") "Flèches   30 unités   60 Rubis\n"
COLOR("\x40") "A utiliser avec un arc.\n"
"A décocher avec modération!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00C2,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de \n"
"Coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Trouvez quatre \n"
"fragments pour gagner plus \n"
"d'énergie!"
);

DECLARE_MESSAGE_FRA(0x00C3,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de \n"
"Coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous disposez de deux\n"
"fragments. Encore deux et \n"
"vous gagnerez plus d'énergie!"
);

DECLARE_MESSAGE_FRA(0x00C4,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de \n"
"Coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous disposez de trois\n"
"fragments! Plus qu'un et votre\n"
"énergie sera plus importante!"
);

DECLARE_MESSAGE_FRA(0x00C5,
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de \n"
"Coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Un nouveau coeur \n"
"d'énergie est créé!"
);

DECLARE_MESSAGE_FRA(0x00C6,
ITEM_ICON("\x72")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Coeur \n"
"d'Energie" COLOR("\x40") "!" QUICKTEXT_DISABLE " Votre maximum \n"
"d'énergie augmente d'un coeur!\n"
"Votre énergie est restaurée!"
);

DECLARE_MESSAGE_FRA(0x00C7,
ITEM_ICON("\x74")  QUICKTEXT_ENABLE "Vous trouvez la " COLOR("\x41") "Clé d'or" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Vous pouvez désormais \n"
"accéder au repaire du Maître \n"
"des lieux."
);

DECLARE_MESSAGE_FRA(0x00C8,
"Non p'tite tête... T'as pas assez\n"
"d'argent!" EVENT
);

DECLARE_MESSAGE_FRA(0x00C9,
QUICKTEXT_ENABLE  SHIFT("\x2B") "Parfait, ça marche!" QUICKTEXT_DISABLE "\n"
"Attends dehors le temps que je\n"
"prépare la partie suivante!" EVENT
);

DECLARE_MESSAGE_FRA(0x00CA,
QUICKTEXT_ENABLE "Bombes   5 unités   35 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00CB,
QUICKTEXT_ENABLE  COLOR("\x41") "Bombes   5 unités   35 Rubis\n"
COLOR("\x40") "Utilisez " COLOR("\x46") "[C]" COLOR("\x40") " pour allumer et lancer\n"
"une bombe. Un sac de bombes est\n"
"indispensable pour en acheter." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00CC,
QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x43") "Rubis Bleu" COLOR("\x40") "!\n"
"Vous gagnez" COLOR("\x43") " cinq Rubis" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00CD,
UNSKIPPABLE  ITEM_ICON("\x53")  QUICKTEXT_ENABLE "Vous recevez l'" COLOR("\x43") "Ecaille \n"
"d'argent" COLOR("\x40") "!" QUICKTEXT_DISABLE " Nagez et utilisez \n"
COLOR("\x42") "[A]" COLOR("\x40") ". Vous pouvez désormais \n"
"plonger plus profondément."
);

DECLARE_MESSAGE_FRA(0x00CE,
UNSKIPPABLE  ITEM_ICON("\x54")  QUICKTEXT_ENABLE "Vous recevez l'" COLOR("\x43") "Ecaille d'or" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Nagez et appuyez sur " COLOR("\x42") "[A]" COLOR("\x40") ". \n"
"Vous pouvez désormais plonger \n"
"encore plus profondément!"
);

DECLARE_MESSAGE_FRA(0x00CF,
QUICKTEXT_ENABLE  COLOR("\x44") "Ceci n'a pas l'air de servir à \n"
"grand chose dans le coin..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00D0,
QUICKTEXT_ENABLE  COLOR("\x44") "Impossible de l'ouvrir!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00D1,
UNSKIPPABLE  SHIFT("\x02") "Vous apprenez le " COLOR("\x42") "Chant de Saria" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D2,
UNSKIPPABLE  SHIFT("\x05") "Vous apprenez le " COLOR("\x41") "Chant d'Epona" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D3,
UNSKIPPABLE  SHIFT("\x01") "Vous apprenez le " COLOR("\x46") "Chant du Soleil" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D4,
UNSKIPPABLE  SHIFT("\x2E") "Vous apprenez la \n"
SHIFT("\x2D")  COLOR("\x43") "Berceuse de Zelda" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D5,
UNSKIPPABLE "Vous apprenez le " COLOR("\x44") "Chant du Temps" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D6,
UNSKIPPABLE  SHIFT("\x32") "Vous apprenez le\n"
SHIFT("\x26")  COLOR("\x45") "Chant des Tempêtes" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00D7,
UNSKIPPABLE "Bienvenue " NAME "!\n"
"Je suis la divine Fée de la Force!"BOX_BREAK
UNSKIPPABLE "Je vais t'enseigner une nouvelle\n"
COLOR("\x41") "technique d'attaque" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Qu'il en soit ainsi!"
);

DECLARE_MESSAGE_FRA(0x00D8,
UNSKIPPABLE "Bienvenue " NAME "!\n"
"Je suis la divine Fée de la \n"
"Sagesse!"BOX_BREAK
UNSKIPPABLE "Je vais accroître ta " COLOR("\x42") "puissance" COLOR("\x40") " \n"
COLOR("\x42") "magique" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Qu'il en soit ainsi!"
);

DECLARE_MESSAGE_FRA(0x00D9,
UNSKIPPABLE "Bienvenue " NAME "!\n"
"Je suis la divine Fée du Courage!"BOX_BREAK
UNSKIPPABLE "Je vais renforcer ton " COLOR("\x44") "endurance" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Qu'il en soit ainsi!"
);

DECLARE_MESSAGE_FRA(0x00DA,
"Si les batailles un jour t'épuisent,\n"
"j'apaiserai tes blessures!" EVENT
);

DECLARE_MESSAGE_FRA(0x00DB,
"Bienvenue " NAME "!\n"
"Je vais apaiser tes souffrances." EVENT
);

DECLARE_MESSAGE_FRA(0x00DC,
ITEM_ICON("\x58")  QUICKTEXT_ENABLE "Vous obtenez des " COLOR("\x41") "Graines \n"
"Mojo" COLOR("\x40") "!" QUICKTEXT_DISABLE " Ces petites graines \n"
"vous serviront de munitions \n"
"pour votre lance-pierre."
);

DECLARE_MESSAGE_FRA(0x00DD,
QUICKTEXT_ENABLE  UNSKIPPABLE "Vous maîtrisez la technique\n"
"secrète de l'" COLOR("\x41") "Attaque Cyclone" COLOR("\x40") "!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Chargez votre épée avec " COLOR("\x41") "[B]" COLOR("\x40") " puis\n"
"relâchez " COLOR("\x41") "[B]" COLOR("\x40") " pour créer une vague\n"
"tourbillonnante d'énergie!"BOX_BREAK
UNSKIPPABLE "Pour créer un cyclone d'énergie\n"
"sans charger votre épée, faites un\n"
"tour complet avec" COLOR("\x44") " [Control Stick] " COLOR("\x40") "puis appuyez\n"
"sur " COLOR("\x41") "[B]" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00DE,
QUICKTEXT_ENABLE "Graines Mojo 30 unités 30 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00DF,
QUICKTEXT_ENABLE  COLOR("\x41") "Graines Mojo  30 unités  30 Rubis\n"
COLOR("\x40") "Elles servent de munitions pour\n"
"votre lance-pierre." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00E0,
COLOR("\x44") "Tu veux parler à Saria, c'est ça?\n"
COLOR("\x40") "\n"
TWO_CHOICE  COLOR("\x42") "Parler à Saria\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00E1,
COLOR("\x44") "Ah bon? Tu veux me parler alors?\n"
COLOR("\x40") "\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00E2,
SHIFT("\x3C")  NAME "...?\n"
SHIFT("\x0D") "C'est " COLOR("\x42") "Saria" COLOR("\x40") ". Peux-tu m'entendre?" EVENT
);

DECLARE_MESSAGE_FRA(0x00E3,
"Veux-tu encore parler à Saria?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x00E4,
UNSKIPPABLE  QUICKTEXT_ENABLE "Votre " COLOR("\x42") "puissance magique" COLOR("\x40") " \n"
"a augmenté!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00E5,
UNSKIPPABLE  QUICKTEXT_ENABLE "Votre " COLOR("\x44") "endurance" COLOR("\x40") " a augmenté!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00E6,
UNSKIPPABLE  QUICKTEXT_ENABLE "Vous obtenez " COLOR("\x46") "plusieurs flèches" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00E7,
UNSKIPPABLE "Mais prends garde: en concentrant\n"
"ton attaque, le " COLOR("\x42") "niveau de magie\n"
COLOR("\x40") "diminuera!"BOX_BREAK
UNSKIPPABLE "Hé, mon garçon! Tu es un \n"
"messager de la Famille Royale, \n"
"n'est-ce pas?"BOX_BREAK
UNSKIPPABLE "Si tu retournes au château,\n"
"va rendre visite à l'une de mes\n"
"amies vivant dans le coin."BOX_BREAK
UNSKIPPABLE "Elle se fera une joie de te\n"
"donner un petit quelque chose!"
);

DECLARE_MESSAGE_FRA(0x00E8,
UNSKIPPABLE "Votre puissance magique a\n"
"augmenté! Vous disposerez à \n"
"présent d'une puissance magique\n"
COLOR("\x41") "deux fois plus importante" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00E9,
UNSKIPPABLE "Tes blessures seront désormais\n"
"réduites de " COLOR("\x41") "moitié" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x00EA,
UNSKIPPABLE "Bienvenue " NAME "!\n"
"Je suis la Divine Fée des \n"
"enchantements!"BOX_BREAK
UNSKIPPABLE "Je t'offre un " COLOR("\x41") "sortilège" COLOR("\x40") ".\n"
"Utilise-le avec soin."
);

DECLARE_MESSAGE_FRA(0x00EB,
QUICKTEXT_ENABLE "Désolé, ce masque n'est pas \n"
"disponible pour l'instant." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x00EC,
UNSKIPPABLE "Le " COLOR("\x41") "Feu de Din" COLOR("\x40") " consumera tes \n"
"ennemis et certains obstacles!"
);

DECLARE_MESSAGE_FRA(0x00ED,
UNSKIPPABLE "Souviens-toi, le " COLOR("\x42") "Vent de Farore " COLOR("\x40") "ne\n"
"fonctionne que dans les donjons\n"
"possédant une carte."
);

DECLARE_MESSAGE_FRA(0x00EE,
UNSKIPPABLE "L'" COLOR("\x43") "Amour de Nayru" COLOR("\x44") " " COLOR("\x40") "ne fonctionne \n"
"que pendant un court instant, \n"
"alors prends-en soin!"
);

DECLARE_MESSAGE_FRA(0x00EF,
"Si les batailles un jour t'épuisent,\n"
"j'apaiserai tes blessures!"
);

DECLARE_MESSAGE_FRA(0x00F0,
QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Rubis rouge" COLOR("\x40") "!\n"
"Vous gagnez " COLOR("\x41") "vingt Rubis" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F1,
QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x45") "Rubis pourpre" COLOR("\x40") "!\n"
"Vous gagnez " COLOR("\x45") "cinquante Rubis" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F2,
QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x46") "énorme Rubis" COLOR("\x40") "!\n"
"Cette pierre vous rapporte\n"
COLOR("\x46") "deux cents Rubis" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F3,
ITEM_ICON("\x77")  QUICKTEXT_ENABLE "Vous obtenez une" COLOR("\x41") " Clé" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Utilisez cette clé pour accéder\n"
"à la salle suivante. Ouvrez un \n"
"coffre et... Surprise!"
);

DECLARE_MESSAGE_FRA(0x00F4,
SHIFT("\x4D")  COLOR("\x44") "Perdu!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Vous ne trouvez qu'" COLOR("\x42") "un Rubis" COLOR("\x40") ".\n"
"Dommage." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F5,
SHIFT("\x4D")  COLOR("\x44") "Perdu!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Vous trouvez " COLOR("\x43") "cinq Rubis" COLOR("\x40") ".\n"
"C'est peu." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F6,
SHIFT("\x4D")  COLOR("\x44") "Perdu!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Vous trouvez " COLOR("\x41") "vingt Rubis" COLOR("\x40") ".\n"
"Votre dernier choix fut une\n"
"erreur... C'est frustrant, hein?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F7,
SHIFT("\x4D")  COLOR("\x41") "Gagné!" COLOR("\x40") BOX_BREAK
QUICKTEXT_ENABLE "Vous trouvez " COLOR("\x46") "cinquante Rubis" COLOR("\x40") ".\n"
"Vous êtes troooop chanceux!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x00F8,
"00f8"
);

DECLARE_MESSAGE_FRA(0x00F9,
ITEM_ICON("\x1E")  QUICKTEXT_ENABLE "Vous enfermez une" COLOR("\x41") " Ame " COLOR("\x40") "dans \n"
"une bouteille!" QUICKTEXT_DISABLE " Allez vite la \n"
"vendre au " COLOR("\x41") "Marchand d'Ames" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x00FA,
SHIFT("\x49")  COLOR("\x41") "GAGNE" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de\n"
"coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Trouvez quatre \n"
"fragments pour créer un \n"
"nouveau coeur de vie!"
);

DECLARE_MESSAGE_FRA(0x00FB,
SHIFT("\x4B")  COLOR("\x41") "GAGNE" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de\n"
"coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous disposez de deux\n"
"fragments. Encore deux et\n"
"vous gagnerez plus d'énergie!"
);

DECLARE_MESSAGE_FRA(0x00FC,
SHIFT("\x4B")  COLOR("\x41") "GAGNE" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de\n"
"coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Vous disposez de trois\n"
"fragments! Plus qu'un et votre\n"
"énergie sera plus importante!"
);

DECLARE_MESSAGE_FRA(0x00FD,
SHIFT("\x4B")  COLOR("\x41") "GAGNE" COLOR("\x40") "!"BOX_BREAK
ITEM_ICON("\x73")  QUICKTEXT_ENABLE "Vous obtenez un " COLOR("\x41") "Quart de\n"
"coeur" COLOR("\x40") "!" QUICKTEXT_DISABLE " Un nouveau coeur\n"
"d'énergie est créé!"
);

DECLARE_MESSAGE_FRA(0x00FE,
"Cherche-les bien à l'extérieur mais\n"
"également dans tous les donjons."BOX_BREAK"Bien entendu, rien ne t'oblige à\n"
"nous aider, tu sais..." TEXTID("\x00\x27")
);

DECLARE_MESSAGE_FRA(0x0100,
COLOR("\x44") "C'est quoi, ça?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0101,
UNSKIPPABLE  COLOR("\x44") "Hé! Regarde, " NAME "!\n"
"Tu peux voir à travers cette\n"
COLOR("\x40") "toile d'araignée " COLOR("\x44") "en utilisant " COLOR("\x46") "[C-Up]" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0102,
UNSKIPPABLE  COLOR("\x44") "Regarde ce mur! Les racines qui\n"
"le recouvrent le rendent praticable.\n"
"Tu dois pouvoir l'escalader,\n"
NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0103,
UNSKIPPABLE  COLOR("\x44") "Place-toi devant une" COLOR("\x43") " " COLOR("\x40") "porte " COLOR("\x44") "et\n"
"ouvre-la avec" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x43") "." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Observe bien l'" COLOR("\x42") "icône d'action" COLOR("\x43") ".\n"
COLOR("\x44") "C'est l'" COLOR("\x42") "icône verte " COLOR("\x44") "située en haut\n"
"de l'écran!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0104,
UNSKIPPABLE  COLOR("\x44") "Là! Il y a quelque chose qui pend!\n"
"On dirait une vieille " COLOR("\x40") "échelle" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0105,
UNSKIPPABLE  COLOR("\x44") "Dis donc...\n"
"Ce symbole n'apparaît-il pas\n"
"sur la " COLOR("\x40") "Porte du Temps" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0106,
UNSKIPPABLE  COLOR("\x44") "Cette torche semble être éteinte\n"
"depuis peu..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0107,
UNSKIPPABLE  COLOR("\x44") "A partir d'ici nous allons emprunter\n"
"d'étroits passages! Si tu procèdes\n"
"prudemment, tu surprendras certai-\n"
"nement quelques monstres."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Utilise la " COLOR("\x40") "Visée [L] " COLOR("\x44") "pour toujours\n"
"regarder dans la bonne direction.\n"
"Axe-toi pour voir le fond d'un \n"
"couloir avant de bifurquer."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Une fois bien placé, maintiens " COLOR("\x40") "[L]\n"
COLOR("\x44") "pour faire un " COLOR("\x40") "pas de côté" COLOR("\x44") ".\n"
"Ainsi tu ne seras jamais pris dans\n"
"une embuscade." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0108,
UNSKIPPABLE  COLOR("\x44") "Approche-toi de ce " COLOR("\x40") "bloc de pierre" COLOR("\x44") "\n"
"et saisis-le avec " COLOR("\x42") "[A]" COLOR("\x44") ". En maintenant\n"
COLOR("\x42") "[A]" COLOR("\x44") ", tu peux le pousser ou le tirer."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Tu peux grimper sur un " COLOR("\x40") "bloc de\n"
"pierre " COLOR("\x44") "en maintenant " COLOR("\x40") "[Control Stick] " COLOR("\x44") "vers le \n"
COLOR("\x40") "bloc" COLOR("\x44") " et en appuyant sur " COLOR("\x42") "[A]" COLOR("\x44") "."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Observe bien l'" COLOR("\x42") "icône d'action" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0109,
"0109"
);

DECLARE_MESSAGE_FRA(0x010A,
"010a"
);

DECLARE_MESSAGE_FRA(0x010B,
"010b"
);

DECLARE_MESSAGE_FRA(0x010C,
UNSKIPPABLE  COLOR("\x44") "Une fois dans l'eau, tu pourras\n"
"plonger en maintenant" COLOR("\x43") " " COLOR("\x42") "[A]" COLOR("\x44") "!\n"
"Je parie que tu y trouveras \n"
"quelque chose!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x010D,
"010d"
);

DECLARE_MESSAGE_FRA(0x010E,
"010e"
);

DECLARE_MESSAGE_FRA(0x010F,
"010f"
);

DECLARE_MESSAGE_FRA(0x0110,
"0110"
);

DECLARE_MESSAGE_FRA(0x0111,
"0111"
);

DECLARE_MESSAGE_FRA(0x0112,
"0112"
);

DECLARE_MESSAGE_FRA(0x0113,
"0113"
);

DECLARE_MESSAGE_FRA(0x0114,
UNSKIPPABLE  COLOR("\x44") "Woah! Mate-moi tous ces \n"
COLOR("\x40") "Choux-Péteurs" COLOR("\x44") "!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Crois-tu pouvoir tous les faire\n"
"exploser en même temps?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0115,
UNSKIPPABLE  COLOR("\x44") "Prends garde aux nombreux\n"
COLOR("\x40") "puits de lave" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0116,
UNSKIPPABLE  COLOR("\x44") "Une fois enfoncé, cet interrupteur\n"
"fait monter cette " COLOR("\x40") "plate-forme \n"
COLOR("\x44") "jusqu'au deuxième étage!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0117,
"0117"
);

DECLARE_MESSAGE_FRA(0x0118,
"0118"
);

DECLARE_MESSAGE_FRA(0x0119,
UNSKIPPABLE  COLOR("\x44") "On ne sait jamais ce qu'il y a au\n"
"détour de ces étroits couloirs...."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Utilise la " COLOR("\x40") "Visée [L] " COLOR("\x44") "pour bien axer\n"
"ton angle de vue. Pratique, non?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x011A,
"011a"
);

DECLARE_MESSAGE_FRA(0x011B,
"011b"
);

DECLARE_MESSAGE_FRA(0x011C,
"011c"
);

DECLARE_MESSAGE_FRA(0x011D,
"011d"
);

DECLARE_MESSAGE_FRA(0x011E,
"011e"
);

DECLARE_MESSAGE_FRA(0x011F,
UNSKIPPABLE  COLOR("\x44") "Dis donc, " NAME "...\n"
"On peut savoir ce que tu mates?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0120,
"0120"
);

DECLARE_MESSAGE_FRA(0x0121,
"0121"
);

DECLARE_MESSAGE_FRA(0x0122,
"0122"
);

DECLARE_MESSAGE_FRA(0x0123,
"0123"
);

DECLARE_MESSAGE_FRA(0x0124,
UNSKIPPABLE  COLOR("\x44") "Le Mal se lit sur le visage de \n"
"cette statue...\n"
"J'ai un peu la trouille!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0125,
"0125"
);

DECLARE_MESSAGE_FRA(0x0126,
UNSKIPPABLE  COLOR("\x44") "J'entends les esprits murmurer \n"
"dans cette pièce:"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE "\"Cherche l'oeil de vérité...\""
);

DECLARE_MESSAGE_FRA(0x0127,
"0127"
);

DECLARE_MESSAGE_FRA(0x0128,
UNSKIPPABLE  COLOR("\x44") "J'entends les esprits murmurer \n"
"dans cette pièce:" COLOR("\x40") BOX_BREAK
UNSKIPPABLE "\"Le héros aux " COLOR("\x41") "pieds ailés " COLOR("\x40") "se \n"
"laissera porter par le vent.\n"
"Puisse-t-il être guidé sur la voie\n"
"secrète.\""
);

DECLARE_MESSAGE_FRA(0x0129,
UNSKIPPABLE  COLOR("\x44") "Ce mur...Il me parle...\n"
COLOR("\x40") "\"Danger au-dessus...\""
);

DECLARE_MESSAGE_FRA(0x012A,
UNSKIPPABLE  COLOR("\x44") "Ce mur...Il me parle...\n"
COLOR("\x40") "\"Danger en dessous...\""
);

DECLARE_MESSAGE_FRA(0x012B,
UNSKIPPABLE  COLOR("\x44") "L'eau qui coule de cette statue\n"
"inonde le sol." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x012C,
"012c"
);

DECLARE_MESSAGE_FRA(0x012D,
"012d"
);

DECLARE_MESSAGE_FRA(0x012E,
"012e"
);

DECLARE_MESSAGE_FRA(0x012F,
UNSKIPPABLE  COLOR("\x44") "Prends garde, " NAME "!\n"
"Cette chose" COLOR("\x42") " verte et gluante" COLOR("\x44") " est\n"
"électrifiée!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0130,
"0130"
);

DECLARE_MESSAGE_FRA(0x0131,
UNSKIPPABLE  COLOR("\x44") "Prends garde, " NAME "!\n"
"Cette chose " COLOR("\x41") "rouge et visqueuse \n"
COLOR("\x44") "est électrifiée!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0132,
UNSKIPPABLE  COLOR("\x44") "Prends garde, " NAME "!\n"
"Cette chose " COLOR("\x43") "bleue et visqueuse\n"
COLOR("\x44") "est électrifiée!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0133,
UNSKIPPABLE  COLOR("\x44") "Cet " COLOR("\x40") "interrupteur" COLOR("\x44") "...\n"
"Ta carrure de poids plume ne sera\n"
"pas suffisante pour l'activer, \n"
NAME "..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0134,
"0134"
);

DECLARE_MESSAGE_FRA(0x0135,
"0135"
);

DECLARE_MESSAGE_FRA(0x0136,
"0136"
);

DECLARE_MESSAGE_FRA(0x0137,
UNSKIPPABLE  COLOR("\x44") "Depuis que tu as tranché le \n"
COLOR("\x41") "tentacule rouge" COLOR("\x44") ", la chose " COLOR("\x41") "rouge et \n"
"visqueuse " COLOR("\x44") "n'est plus là! Cela\n"
"fonctionnera-t-il avec les autres?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0138,
"0138"
);

DECLARE_MESSAGE_FRA(0x0139,
UNSKIPPABLE  COLOR("\x44") "Il y a un interrupteur\n"
"derrière ce mur!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x013A,
UNSKIPPABLE  COLOR("\x44") "Il y a quelque chose sur cette\n"
"plate-forme, là-haut!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x013B,
"013b"
);

DECLARE_MESSAGE_FRA(0x013C,
"013c"
);

DECLARE_MESSAGE_FRA(0x013D,
UNSKIPPABLE  SHIFT("\x2B")  COLOR("\x44") "Qu... Comm... Hein?"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Regarde cette flopée de " COLOR("\x40") "drapeaux" COLOR("\x44") "!\n"
"Sauras-tu distinguer les vrais des\n"
"faux?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x013E,
"013e"
);

DECLARE_MESSAGE_FRA(0x013F,
"013f"
);

DECLARE_MESSAGE_FRA(0x0140,
COLOR("\x44") "Le très vénérable " COLOR("\x40") "Arbre Mojo\n"
COLOR("\x44") "veut te parler! Suis-moi vite!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0141,
COLOR("\x44") "Courage! \n"
"Entrons dans l'Arbre Mojo!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0142,
COLOR("\x44") "Le très vénérable Arbre Mojo \n"
"nous a demandé de rendre visite à \n"
"la Princesse du " COLOR("\x40") "Château d'Hyrule" COLOR("\x44") "....\n"
"On devrait y aller, non?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0143,
COLOR("\x44") "La fille du Ranch nous a demandé\n"
"de retrouver son " COLOR("\x40") "père" COLOR("\x44") "... \n"
"Sais-tu où il se trouve?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0144,
COLOR("\x44") "Je me demande où la " COLOR("\x40") "Princesse " COLOR("\x44") "se\n"
"cache dans cet immense château." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0145,
COLOR("\x44") "Que dirait " COLOR("\x40") "Saria" COLOR("\x41") " " COLOR("\x44") "en apprenant que\n"
"nous devons sauver Hyrule?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0146,
"Impa " COLOR("\x44") "nous a dit que la Pierre \n"
"Ancestrale du Feu est dissimulée\n"
"dans le " COLOR("\x40") "Mont du Péril" COLOR("\x44") "." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0147,
COLOR("\x44") "Entrons dans la Caverne Dodongo \n"
"en utilisant un " COLOR("\x40") "Chou-Péteur" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0148,
COLOR("\x44") "Darunia affirme qu'une " COLOR("\x40") "fée " COLOR("\x44") "vit au\n"
"sommet du Mont du Péril." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0149,
COLOR("\x44") "Je me demande si " COLOR("\x40") "Saria " COLOR("\x44") "sait\n"
"quelque chose sur l'autre Pierre\n"
"Ancestrale..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014A,
COLOR("\x44") "La " COLOR("\x40") "Princesse Ruto " COLOR("\x44") "est sans doute\n"
"dans le ventre de Jabu-Jabu..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014B,
COLOR("\x44") "Tu as trouvé les trois Pierres\n"
"Ancestrales! Retournons au \n"
COLOR("\x40") "Château d'Hyrule" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014C,
COLOR("\x44") "N'était-ce pas Impa et Zelda sur \n"
"le cheval blanc? Je crois qu'elles \n"
"ont jeté quelque chose dans les \n"
COLOR("\x40") "douves" COLOR("\x44") "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014D,
COLOR("\x44") "Et si nous allions faire un tour\n"
"dans le " COLOR("\x40") "Temple du Temps" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014E,
COLOR("\x44") "Devrions-nous croire ce que Sheik\n"
"raconte et aller au " COLOR("\x40") "Village\n"
"Cocorico" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x014F,
"014f"
);

DECLARE_MESSAGE_FRA(0x0150,
COLOR("\x44") "Je me demande ce qu'il se passe\n"
"dans la forêt en ce moment... \n"
"Et que devient " COLOR("\x40") "Saria" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0151,
COLOR("\x44") "Ce nuage au sommet du \n"
COLOR("\x40") "Mont du Péril " COLOR("\x44") "ne m'inspire pas\n"
"confiance..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0152,
COLOR("\x44") "Un étrange souffle glacé nous \n"
"vient du " COLOR("\x40") "Fleuve Zora" COLOR("\x44") "..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0153,
COLOR("\x44") "Tes " COLOR("\x40") "Bottes de plomb " COLOR("\x44") "ont l'air de \n"
"peser une tonne! En les portant, \n"
"tu pourras sûrement marcher " COLOR("\x40") "au \n"
"fond d'un lac" COLOR("\x44") "." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0154,
COLOR("\x44") "Quelqu'un peut-il nous renseigner\n"
"sur les autres " COLOR("\x40") "Sages" COLOR("\x44") "?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0155,
COLOR("\x44") "Ce monstre! Il est sorti du " COLOR("\x40") "puits\n"
"du village" COLOR("\x44") "! Allons l'examiner!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0156,
COLOR("\x44") "Je me demande bien qui a pu\n"
"construire le " COLOR("\x40") "Temple de l'Esprit" COLOR("\x44") "...\n"
"Et pourquoi?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0157,
COLOR("\x44") "N'as-tu jamais joué le " COLOR("\x45") "Nocturne\n"
"de l'Ombre" COLOR("\x44") " que Sheik t'a enseigné?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0158,
COLOR("\x44") "Le " COLOR("\x40") "désert" COLOR("\x44") "... C'est là que Ganondorf\n"
"a vu le jour. Je suis sûre que \n"
"nous y trouverons quelque chose..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0159,
"0159"
);

DECLARE_MESSAGE_FRA(0x015A,
COLOR("\x44") "Enfile tes " COLOR("\x40") "Gantelets d'argent " COLOR("\x44") "et \n"
"tente de bouger quelque chose de\n"
"très lourd!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x015B,
COLOR("\x44") "Celui qui nous attend au Temple \n"
"du Temps...ne serait-ce pas..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x015C,
COLOR("\x44") "Allons vite dans le Château" COLOR("\x40") " " COLOR("\x44") "libérer\n"
"la Princesse Zelda des griffes de\n"
"l'ignoble Ganondorf!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x015D,
"015D"
);

DECLARE_MESSAGE_FRA(0x015E,
"015E"
);

DECLARE_MESSAGE_FRA(0x015F,
COLOR("\x44")  NAME "...\n"
"Continue ta quête!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0160,
"Pourquoi utilises-tu ton ocarina?\n"
"Je ne suis qu'à deux pas!" EVENT
);

DECLARE_MESSAGE_FRA(0x0161,
"La forêt est reliée à bien des \n"
"lieux! Si tu entends ma chanson, \n"
"l'une des entrées n'est pas loin!" EVENT
);

DECLARE_MESSAGE_FRA(0x0162,
"Je suis si contente d'apprendre \n"
"que Darunia aime ma chanson!"BOX_BREAK"Je suis d'autant plus ravie que \n"
"cela t'a aidé dans ta quête!" EVENT
);

DECLARE_MESSAGE_FRA(0x0163,
"Cherches-tu les " COLOR("\x43") "Pierres \n"
"Ancestrales" COLOR("\x40") "? Il doit te manquer \n"
"celle de l'" COLOR("\x43") "eau" COLOR("\x40") ", n'est-ce pas?"BOX_BREAK"Le très vénérable Arbre Mojo m'a\n"
"dit un jour que le " COLOR("\x43") "Roi Zora" COLOR("\x40") "," COLOR("\x43") " \n"
"souverain du Domaine Zora" COLOR("\x40") ", garde\n"
"cette pierre..." EVENT
);

DECLARE_MESSAGE_FRA(0x0164,
"Cherches-tu les " COLOR("\x41") "Pierres \n"
"Ancestrales" COLOR("\x40") "?" COLOR("\x41") " " COLOR("\x40") "Il doit te manquer \n"
"celle du " COLOR("\x41") "feu" COLOR("\x40") ", n'est-ce pas?"BOX_BREAK"Le très vénérable Arbre Mojo m'a\n"
"dit un jour que " COLOR("\x41") "Darunia le Goron \n"
COLOR("\x40") "garde cette pierre..." EVENT
);

DECLARE_MESSAGE_FRA(0x0165,
NAME "...\n"
"J'ai une étrange intuition...\n"
"Je suis terrifiée..."BOX_BREAK"Le Château...\n"
"Il se passe quelque chose au \n"
"Château!" EVENT
);

DECLARE_MESSAGE_FRA(0x0166,
"Tiens... Ton ocarina sonne\n"
"différemment... \n"
"T'es-tu beaucoup entraîné, \n"
NAME "?" EVENT
);

DECLARE_MESSAGE_FRA(0x0167,
"Cherches-tu un temple?\n"
"Un bien étrange oiseau m'a dit un \n"
"jour..."BOX_BREAK"\"" COLOR("\x44") "L'oeil qui voit dans les ténèbres\n"
"s'ouvrira dans la tempête." COLOR("\x40") "\"\n"
"Ca te dit quelque chose?" EVENT
);

DECLARE_MESSAGE_FRA(0x0168,
"Où es-tu, " NAME "?\n"
"Cherches-tu un temple?\n"
"Un bien étrange oiseau m'a dit un \n"
"jour..."BOX_BREAK"\"" COLOR("\x44") "Va jusqu'à la Déesse du Désert,\n"
"un ocarina dans la main." COLOR("\x40") "\"\n"
"Ca te dit quelque chose?" EVENT
);

DECLARE_MESSAGE_FRA(0x0169,
"As-tu déjà trouvé tous les\n"
"temples?" EVENT
);

DECLARE_MESSAGE_FRA(0x016A,
"Incroyable! Tu es en vie!\n"
"J'étais sûre que tu donnerais signe\n"
"de vie!"BOX_BREAK"Je suis dans le " COLOR("\x42") "Temple de la Forêt" COLOR("\x40") "!\n"
"Les esprits des bois ont appellé \n"
"au secours et je m'y suis rendue..."BOX_BREAK"Mais de terribles monstres \n"
"pervertissent cet endroit...\n"
"A l'aide, " NAME "!" EVENT
);

DECLARE_MESSAGE_FRA(0x016B,
NAME "...\n"
"Je n'ai jamais voulu devenir le\n"
COLOR("\x42") "Sage de la Forêt" COLOR("\x40") "..."BOX_BREAK"Mais j'trouve ça pas mal,\n"
"finalement."BOX_BREAK"Ainsi je peux t'aider à sauver\n"
"Hyrule, " NAME "!\n"
"J'en suis très heureuse!" EVENT
);

DECLARE_MESSAGE_FRA(0x016C,
"Si les six " COLOR("\x41") "Sages" COLOR("\x40") " s'allient, nous \n"
"pourrons emprisonner Ganondorf,  \n"
"le seigneur du Malin, dans le\n"
"Saint Royaume."BOX_BREAK"Mais pour sceller parfaitement\n"
"cette prison, il nous faudra l'aide\n"
"du " COLOR("\x41") "Septième Sage" COLOR("\x40") "."BOX_BREAK"C'est certainement quelqu'un que\n"
"tu as déjà rencontré,\n"
NAME "..."BOX_BREAK"Dès maintenant, parcours passé et\n"
"futur pour éveiller les derniers\n"
"Sages!"BOX_BREAK"Tu es sur le bon chemin,\n"
NAME "!" EVENT
);

DECLARE_MESSAGE_FRA(0x016D,
"Nous, les Six Sages, te confions\n"
"nos pouvoirs!"BOX_BREAK"La fragile destinée d'Hyrule repose\n"
"sur ton noble courage!" EVENT
);

DECLARE_MESSAGE_FRA(0x016E,
"016e"
);

DECLARE_MESSAGE_FRA(0x016F,
"016f"
);

DECLARE_MESSAGE_FRA(0x0180,
UNSKIPPABLE  COLOR("\x44") "J'entends une voix..." COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Elle me dit:\n"
"\n"
COLOR("\x40")  SHIFT("\x0D") "\"Amasse cinq Rubis d'argent...\""
);

DECLARE_MESSAGE_FRA(0x0181,
UNSKIPPABLE  COLOR("\x44") "Ce mur... Il me parle!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Il dit:\n"
COLOR("\x40") "\n"
SHIFT("\x0A") "Si tu veux un aller simple pour\n"
SHIFT("\x15") "l'enfer, approche pour voir!"
);

DECLARE_MESSAGE_FRA(0x0182,
"0182"
);

DECLARE_MESSAGE_FRA(0x0183,
UNSKIPPABLE  COLOR("\x44") "Ce " COLOR("\x40") "bâteau " COLOR("\x44") "m'a l'air vieux... \n"
"Es-tu certain qu'il ne va pas \n"
"sombrer?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0184,
UNSKIPPABLE  COLOR("\x44") "Il y a une " COLOR("\x40") "porte " COLOR("\x44") "de ce côté...  \n"
"Sais-tu comment traverser?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0185,
"0185"
);

DECLARE_MESSAGE_FRA(0x0186,
UNSKIPPABLE  COLOR("\x44") "Cette " COLOR("\x40") "glace rouge" COLOR("\x44") "...\n"
"Bizarre, non?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0187,
"0187"
);

DECLARE_MESSAGE_FRA(0x0188,
"0188"
);

DECLARE_MESSAGE_FRA(0x0189,
UNSKIPPABLE  COLOR("\x44") "Cette " COLOR("\x40") "flamme bleue" COLOR("\x44") "... Elle n'a pas\n"
"l'air naturel. Elle doit sûrement \n"
"servir à quelque chose..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x018A,
"018a"
);

DECLARE_MESSAGE_FRA(0x018B,
"018b"
);

DECLARE_MESSAGE_FRA(0x018C,
UNSKIPPABLE  COLOR("\x44") "Le " COLOR("\x40") "feu de ces torches " COLOR("\x44") "s'est éteint.\n"
"Comme si les spectres l'avaient \n"
"consumé!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x018D,
UNSKIPPABLE  COLOR("\x44") "Regarde, " NAME "! \n"
"Une " COLOR("\x40") "torche " COLOR("\x44") "s'est allumée quand\n"
"tu as vaincu un spectre!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x018E,
"018e"
);

DECLARE_MESSAGE_FRA(0x018F,
UNSKIPPABLE  COLOR("\x44") "Regarde!\n"
"Il y a des " COLOR("\x40") "flèches " COLOR("\x44") "peintes sur le \n"
"sol!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0190,
UNSKIPPABLE  COLOR("\x44") "Ce " COLOR("\x40") "couloir " COLOR("\x44") "est tordu!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0191,
UNSKIPPABLE  COLOR("\x44") "Prends garde à l'" COLOR("\x40") "ombre des \n"
"monstres " COLOR("\x44") "qui apparaissent au\n"
"plafond." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0192,
UNSKIPPABLE  COLOR("\x44") "Il y a un " COLOR("\x40") "coffre" COLOR("\x44") " ici." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0193,
"0193"
);

DECLARE_MESSAGE_FRA(0x0194,
UNSKIPPABLE  COLOR("\x44") "Cette " COLOR("\x40") "torche" COLOR("\x44") " est identique à celle\n"
"de l'entrée du temple!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0195,
UNSKIPPABLE  COLOR("\x44") "Si cette " COLOR("\x40") "torche" COLOR("\x44") " est allumée...\n"
"Cela veut dire que..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0196,
"0196"
);

DECLARE_MESSAGE_FRA(0x0197,
UNSKIPPABLE  COLOR("\x44") "Cet " COLOR("\x40") "interrupteur " COLOR("\x44") "est pris dans la \n"
"glace!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0198,
UNSKIPPABLE  COLOR("\x44")  NAME ", attention!\n"
"Le plafond nous tombe dessus!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0199,
"0199"
);

DECLARE_MESSAGE_FRA(0x019A,
"019a"
);

DECLARE_MESSAGE_FRA(0x019B,
"019b"
);

DECLARE_MESSAGE_FRA(0x019C,
"019c"
);

DECLARE_MESSAGE_FRA(0x019D,
"019d"
);

DECLARE_MESSAGE_FRA(0x019E,
"019e"
);

DECLARE_MESSAGE_FRA(0x019F,
"019f"
);

DECLARE_MESSAGE_FRA(0x01A0,
"01a0"
);

DECLARE_MESSAGE_FRA(0x01A1,
"01a1"
);

DECLARE_MESSAGE_FRA(0x01A2,
"01a2"
);

DECLARE_MESSAGE_FRA(0x01A3,
UNSKIPPABLE  COLOR("\x44")  NAME ", \n"
"j'entends " COLOR("\x40") "des Gorons " COLOR("\x44") "juste en bas." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x01A4,
"01a4"
);

DECLARE_MESSAGE_FRA(0x01A5,
UNSKIPPABLE  COLOR("\x44") "D'ici on peut voir ce qu'il se passe\n"
"en bas... N'était-ce pas la salle où\n"
COLOR("\x40") "Darunia " COLOR("\x44") "est apparu?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x01A6,
"01a6"
);

DECLARE_MESSAGE_FRA(0x01A7,
UNSKIPPABLE  COLOR("\x44") "Cette " COLOR("\x40") "statue" COLOR("\x44") "... Ne l'aurions-nous\n"
"pas croisée autre part?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x01A8,
"01a8"
);

DECLARE_MESSAGE_FRA(0x01A9,
UNSKIPPABLE  COLOR("\x44") "Cet " COLOR("\x40") "interrupteur " COLOR("\x44") "m'a l'air rouillé." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x01AA,
"01aa"
);

DECLARE_MESSAGE_FRA(0x01AB,
UNSKIPPABLE  COLOR("\x44")  NAME "! Prends garde!\n"
"Ne te fais pas engloutir par le\n"
"tourbillon!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x01AC,
"01ac"
);

DECLARE_MESSAGE_FRA(0x01AD,
"01ad"
);

DECLARE_MESSAGE_FRA(0x01AE,
"01ae"
);

DECLARE_MESSAGE_FRA(0x01AF,
"01af"
);

DECLARE_MESSAGE_FRA(0x01B0,
"01b0"
);

DECLARE_MESSAGE_FRA(0x01B1,
"01B1"
);

DECLARE_MESSAGE_FRA(0x0200,
SHIFT("\x0E") "Bonjour! Je suis une porte \n"
SHIFT("\x46") "qui parle!"
);

DECLARE_MESSAGE_FRA(0x0201,
SHIFT("\x19")  COLOR("\x44") "Etrange... Cette porte ne \n"
COLOR("\x40")  SHIFT("\x41")  COLOR("\x44") "s'ouvre pas" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0202,
SHIFT("\x19")  COLOR("\x44") "De lourdes " COLOR("\x40") "barres d'acier \n"
SHIFT("\x0C")  COLOR("\x44") "verrouillent cette porte. Tu ne\n"
COLOR("\x40")  SHIFT("\x16")  COLOR("\x44") "peux l'ouvrir de tes mains!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0203,
COLOR("\x44") "Tu as besoin d'une " COLOR("\x40") "Clé" COLOR("\x44") " pour ouvrir\n"
COLOR("\x40")  SHIFT("\x0B")  COLOR("\x44") "cette porte. Elle est fortement\n"
COLOR("\x40")  SHIFT("\x43")  COLOR("\x44") "verrouillée." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0204,
SHIFT("\x0A")  COLOR("\x44") "Tu as besoin d'une " COLOR("\x40") "Clé spéciale\n"
SHIFT("\x1E")  COLOR("\x44") "pour ouvrir cette porte." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0205,
QUICKTEXT_ENABLE "Silence!" QUICKTEXT_DISABLE BOX_BREAK"Il n'est que " TIME "!\n"
"Moi, " COLOR("\x41") "Igor " COLOR("\x40") "le fossoyeur, \n"
"j'suis au pieu!"BOX_BREAK"Dégage et va jouer avec les \n"
"spectres du jour!"
);

DECLARE_MESSAGE_FRA(0x0206,
"Il est " TIME ".\n"
"L'" COLOR("\x41") "Excursion du fossoyeur" COLOR("\x40") " est finie!"BOX_BREAK"Moi, " COLOR("\x41") "Igor" COLOR("\x40") ", j'suis au pieu!"BOX_BREAK"Dégage et va jouer avec les \n"
"spectres!"
);

DECLARE_MESSAGE_FRA(0x0207,
QUICKTEXT_ENABLE  COLOR("\x44") "Foire aux Masques\n"
COLOR("\x40") "Veuillez lire cette affiche avant \n"
"de faire appel à nos services." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x41") "Fonctionnement de la Foire\n"
COLOR("\x40") "Ici les masques ne sont pas à \n"
"vendre mais sont " COLOR("\x41") "confiés" COLOR("\x40") " à un \n"
"coursier gratuitement." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Vous vendez le masque emprunté\n"
"à votre convenance." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Vous apportez l'" COLOR("\x41") "argent" COLOR("\x40") " et l'on vous\n"
"confiera un nouveau masque." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Vous pouvez emprunter un masque \n"
"déjà vendu sans pouvoir le vendre \n"
"de nouveau." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Pourquoi ne pas essayer?\n"
SHIFT("\x34") "--Le propriétaire" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0208,
"Temple de l'Ombre...\n"
"Ici sommeillent les légendes\n"
"sanglantes d'Hyrule, faites de haine\n"
"et de cupidité..." EVENT
);

DECLARE_MESSAGE_FRA(0x0209,
"Reposent au fond des ténèbres \n"
"pièges vicieux, trappes sournoises,\n"
"et l'ombre qui masque le chemin..." EVENT
);

DECLARE_MESSAGE_FRA(0x020A,
"Seul le gardien de l'" COLOR("\x41") "oeil de vérité \n"
COLOR("\x40") "pourra scruter le tréfonds obscur." EVENT
);

DECLARE_MESSAGE_FRA(0x020B,
COLOR("\x44") "Une étrange substance nous bloque\n"
"l'entrée. Tu dois résoudre l'" COLOR("\x40") "énigme" COLOR("\x44") " \n"
"de cette pièce pour passer." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x020C,
QUICKTEXT_ENABLE "Crâne géant de Dodongo...\n"
"Quand il voit rouge, un nouveau\n"
"chemin se découvre." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x020D,
SHIFT("\x2A")  COLOR("\x44") "Chasse aux trésors\n"
COLOR("\x40")  SHIFT("\x21") "Fermée pour le moment\n"
SHIFT("\x2A") "Ouverture: ce soir!"
);

DECLARE_MESSAGE_FRA(0x020E,
SHIFT("\x41")  COLOR("\x44") "Apothicaire\n"
COLOR("\x40")  SHIFT("\x28") "Fermé jusqu'au matin"
);

DECLARE_MESSAGE_FRA(0x020F,
SHIFT("\x3C")  COLOR("\x44") "Jeu d'adresse\n"
COLOR("\x40")  SHIFT("\x1B") "Ouvert seulement le jour"
);

DECLARE_MESSAGE_FRA(0x0210,
SHIFT("\x2D")  COLOR("\x44") "Foire aux Masques\n"
COLOR("\x40")  SHIFT("\x37") "Nous recrutons\n"
SHIFT("\x1E") "Se renseigner la journée"
);

DECLARE_MESSAGE_FRA(0x0211,
SHIFT("\x51")  COLOR("\x44") "Bazar\n"
COLOR("\x40")  SHIFT("\x1B") "Ouvert seulement le jour"
);

DECLARE_MESSAGE_FRA(0x0212,
"Apporte-moi la lumière!"
);

DECLARE_MESSAGE_FRA(0x0213,
QUICKTEXT_ENABLE "Seul un " COLOR("\x41") "regard juste " COLOR("\x40") "discernera\n"
"le guide fantomatique jusqu'au\n"
"Temple de l'Esprit." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0214,
QUICKTEXT_ENABLE "Toi qui désires ouvrir le sentier\n"
"enfoui au fond du lac, entonne le\n"
COLOR("\x41") "Chant de la Famille Royale" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0215,
QUICKTEXT_ENABLE "Toi qui désires ouvrir la porte\n"
"des hauteurs célestes, entonne le\n"
COLOR("\x41") "Chant de la Famille Royale" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0216,
"Qui a la " COLOR("\x41") "petite clé" COLOR("\x40") " passera.\n"
"Qui ne l'a pas, s'en va!"
);

DECLARE_MESSAGE_FRA(0x0217,
"Si tu veux Nous demander \n"
"audience, fais-le de la plate-forme." EVENT
);

DECLARE_MESSAGE_FRA(0x0218,
UNSKIPPABLE  SFX("\x68\x6D")  QUICKTEXT_ENABLE "Salut, " NAME "!" QUICKTEXT_DISABLE "\n"
"Regarde par là!"BOX_BREAK"Regarde-moi avec " COLOR("\x44") "[L]" COLOR("\x40") ", et parle-moi\n"
"avec " COLOR("\x42") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x0219,
"Au quatrième top; il sera:\n"
COLOR("\x41")  TIME  COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x021A,
"Inonde de lumière les morts."
);

DECLARE_MESSAGE_FRA(0x021B,
"Celui qui viole la Tombe Royale\n"
"réveillera les " COLOR("\x41") "bêtes de l'ombre" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x021C,
"Hé, toi! P'tit gars!\n"
"Regarde par là! Dans la cellule!" EVENT
);

DECLARE_MESSAGE_FRA(0x021D,
"Mon gamin n'est pas là pour\n"
"l'instant...\n"
"Je crois qu'il traîne du côté du\n"
"cimetière..."
);

DECLARE_MESSAGE_FRA(0x021E,
"Mon gamin dort pour le moment.\n"
"Reviens demain matin pour jouer\n"
"avec lui!"
);

DECLARE_MESSAGE_FRA(0x021F,
QUICKTEXT_ENABLE "Quand les premières lueurs de \n"
"l'aube se reflèteront sur le lac, \n"
"décoche vers l'astre du matin." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0220,
QUICKTEXT_ENABLE "Pour t'aventurer dans le futur,\n"
"rapporte le " COLOR("\x43") "pouvoir de l'argent " COLOR("\x40") "du \n"
"passé." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0221,
QUICKTEXT_ENABLE "Pour errer dans le passé, présente\n"
"ici un coeur pur d'enfant." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0222,
QUICKTEXT_ENABLE "Cette porte est en réparation." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0223,
QUICKTEXT_ENABLE "Quelque chose devait être fixé \n"
"sur ce socle..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0224,
QUICKTEXT_ENABLE  SHIFT("\x21") "Pointe mon bec vers le\n"
SHIFT("\x34")  COLOR("\x41") "crâne de vérité" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x14") "Une erreur te plongera dans\n"
SHIFT("\x25") "les abîmes infernales." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x0225,
COLOR("\x44") "Ce n'est pas la bonne " COLOR("\x40") "clé" COLOR("\x44") "...\n"
"Cette porte ne s'ouvre pas!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0226,
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x44") "Apothicaire\n"
COLOR("\x40")  SHIFT("\x50") "Fermé" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x1B") "Je suis partie faire des \n"
SHIFT("\x3C") "expériences...\n"
SHIFT("\x2C") "Revenez plus tard!\n"
SHIFT("\x4B") "--Granny" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0227,
QUICKTEXT_ENABLE "Qui va là? Quel sale môme!\n"
"Essayer de passer par derrière!" QUICKTEXT_DISABLE BOX_BREAK
TEXT_SPEED("\x02") "Vilain petit..." TEXT_SPEED("\x00") "\n"
"Je m'en vais te raconter une \n"
"petite histoire!"BOX_BREAK"Le chef des ouvriers a un fils...\n"
"Il passe ses nuits assis sous \n"
"l'arbre..."BOX_BREAK"Ne va pas dire au chef que je \n"
"t'en ai parlé!"
);

DECLARE_MESSAGE_FRA(0x0228,
COLOR("\x44") "Regarde ça!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0229,
"Malon est au lit!\n"
"Je vais me coucher, moi aussi.\n"
"Reviens demain lorsqu'il fera jour!"
);

DECLARE_MESSAGE_FRA(0x022A,
QUICKTEXT_ENABLE  COLOR("\x41") "Records de " NAME "!\n"
COLOR("\x40") "Araignées écrabouillées: " TOKENS "\n"
"Plus gros poisson: " HIGHSCORE("\x02") " livres" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Marathon: " HIGHSCORE("\x04") "\n"
"Course à cheval: " HIGHSCORE("\x03") "\n"
"Archerie montée: " HIGHSCORE("\x00") " points" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x022B,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Le blason de la Famille Royale\n"
SHIFT("\x24") "d'Hyrule est gravé ici." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x022C,
QUICKTEXT_ENABLE  SHIFT("\x32") "Paix à leur âme\n"
SHIFT("\x0C") "Ici reposent éternellement les \n"
SHIFT("\x09") "fidèles serviteurs de la Famille \n"
SHIFT("\x36") "Royale d'Hyrule." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x09") "Les Sheikahs, protecteurs de la\n"
SHIFT("\x0A") "Famille Royale et fondateurs de\n"
SHIFT("\x07") "Cocorico, veillent sur le sommeil\n"
SHIFT("\x32") "éternel des âmes." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x022D,
QUICKTEXT_ENABLE  SHIFT("\x28")  COLOR("\x43") "Cascade Insomniaque\n"
COLOR("\x40")  SHIFT("\x02") "Le flux de cette cascade obéit au\n"
SHIFT("\x05") "Roi d'Hyrule. Lorsque le Roi dort,\n"
SHIFT("\x28") "la cascade se meure." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x022E,
"Des crapauds vous toisent depuis\n"
"le fond des eaux..."
);

DECLARE_MESSAGE_FRA(0x022F,
"Vous foulez du pied un tapis \n"
"d'apparat...\n"
"C'est tout doux entre les orteils!"
);

DECLARE_MESSAGE_FRA(0x0230,
"Passe maître des " COLOR("\x41") "épreuves \n"
COLOR("\x40") "suivantes et notre trésor secret \n"
"récompensera ta valeur!"
);

DECLARE_MESSAGE_FRA(0x0231,
"Ouvre la voie jusqu'au trésor\n"
"secret en méritant les " COLOR("\x41") "clés \n"
COLOR("\x40") "dissimulées dans chaque salle!"
);

DECLARE_MESSAGE_FRA(0x0232,
"Ecrase tes ennemis en un \n"
COLOR("\x41") "temps record" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0233,
"Amasse les " COLOR("\x41") "gemmes sous-marines" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0234,
"Traverse les flots en feu!"
);

DECLARE_MESSAGE_FRA(0x0235,
"Révèle le secret de cette pièce!"
);

DECLARE_MESSAGE_FRA(0x0236,
"Aveugle " COLOR("\x41") "cette statue" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0237,
"Celui aux " COLOR("\x41") "doigts d'argent " COLOR("\x40") "pourra\n"
"déplacer un bloc de géant!"
);

DECLARE_MESSAGE_FRA(0x0238,
"Sans les bons objets, \n"
"la compréhension sera obscurcie \n"
"par d'innombrables mystères."
);

DECLARE_MESSAGE_FRA(0x0239,
"Amasse les " COLOR("\x41") "joyaux de platine" COLOR("\x40") " et \n"
"évite pièges et dangers!"
);

DECLARE_MESSAGE_FRA(0x023A,
QUICKTEXT_ENABLE  SHIFT("\x51")  COLOR("\x44") "Etang" COLOR("\x40") "\n"
SHIFT("\x03") "Les poissons mordent aujourd'hui!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x023B,
SHIFT("\x4E")  COLOR("\x44") "....???" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x023C,
QUICKTEXT_ENABLE  SHIFT("\x10") "Seul le détenteur de l'" COLOR("\x41") "oeil de" COLOR("\x40") "\n"
SHIFT("\x0A")  COLOR("\x41") "vérité" COLOR("\x40") " du Village Cocorico sera\n"
SHIFT("\x23") "porté par les Ombres." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0300,
BACKGROUND("\x00", "\x01", "\x10")
);

DECLARE_MESSAGE_FRA(0x0301,
QUICKTEXT_ENABLE  SHIFT("\x39")  COLOR("\x44") "Plaine d'Hyrule" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0302,
QUICKTEXT_ENABLE  SHIFT("\x39")  COLOR("\x44") "Bourg d'Hyrule" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0303,
QUICKTEXT_ENABLE  SHIFT("\x32")  COLOR("\x44") "Temple du Temps" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0304,
QUICKTEXT_ENABLE  SHIFT("\x4B")  COLOR("\x41") "Impasse" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0305,
QUICKTEXT_ENABLE  SHIFT("\x39")  COLOR("\x45") "Village Cocorico\n"
COLOR("\x40")  SHIFT("\x1F") "Première étape vers le \n"
SHIFT("\x36") "Chemin du Péril" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0306,
QUICKTEXT_ENABLE  SHIFT("\x24")  COLOR("\x45") "Cimetière de Cocorico" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0307,
QUICKTEXT_ENABLE  SHIFT("\x16") "Sombre! Etroit! Effrayant!\n"
SHIFT("\x29")  COLOR("\x45") "Le puits du mystère" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0308,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "Mont du Péril\n"
COLOR("\x40")  SHIFT("\x23") "Passage interdit sans \n"
SHIFT("\x2A") "autorisation royale!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0309,
QUICKTEXT_ENABLE  SHIFT("\x36")  COLOR("\x41") "Chemin du Péril" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030A,
QUICKTEXT_ENABLE  SHIFT("\x32")  COLOR("\x46") "Caverne Dodongo\n"
COLOR("\x40")  SHIFT("\x05") "Ne pas entrer sans autorisation!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030B,
QUICKTEXT_ENABLE  SHIFT("\x29") "Contrée des Gorons\n"
SHIFT("\x3C")  COLOR("\x41") "Village Goron" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030C,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x43") "Fleuve Zora\n"
COLOR("\x40")  SHIFT("\x0B") "Prenez garde aux remous et \n"
SHIFT("\x47") "courants." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030D,
QUICKTEXT_ENABLE  SHIFT("\x05") "L'oeil de la vérité, enfoui sous le\n"
SHIFT("\x14") "Village Cocorico, procurera \n"
SHIFT("\x1B") "l'alliance des ombres à son\n"
SHIFT("\x46") "détenteur." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030E,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x43") "Domaine Zora" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x030F,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x43") "Fontaine Zora\n"
COLOR("\x40")  SHIFT("\x12") "Ne pas déranger le Seigneur\n"
SHIFT("\x3C") "Jabu-Jabu! \n"
SHIFT("\x25") "--Zora le XVIème, Roi" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0310,
QUICKTEXT_ENABLE  SHIFT("\x0F")  COLOR("\x45") "Aire d'Entraînement Sylvestre" COLOR("\x41") "\n"
COLOR("\x40")  SHIFT("\x0F") "Prière de ne pas trancher les\n"
SHIFT("\x0F") "pancartes comme un barbare..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0311,
QUICKTEXT_ENABLE  SHIFT("\x12") "A ceux assez fous pour se \n"
SHIFT("\x1E") "risquer dans le désert: \n"
SHIFT("\x25") "Passez donc me voir!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x2E")  COLOR("\x46") "Marchand de Tapis" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0312,
QUICKTEXT_ENABLE  SHIFT("\x3C") "Droit devant:\n"
SHIFT("\x1A") "La " COLOR("\x42") "Clairière du Vénérable\n"
COLOR("\x40")  SHIFT("\x41")  COLOR("\x42") "Arbre Mojo" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0313,
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x42") "Temple de la Forêt" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0314,
QUICKTEXT_ENABLE  SHIFT("\x35")  COLOR("\x42") "Les Bois Perdus" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0315,
QUICKTEXT_ENABLE  SHIFT("\x38")  COLOR("\x46") "Lon Lon Ranch\n"
COLOR("\x40")  SHIFT("\x10") "Propriétaires: Talon et Malon." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0316,
QUICKTEXT_ENABLE  SHIFT("\x43")  COLOR("\x46") "Ranch Ingo\n"
COLOR("\x40")  SHIFT("\x16") "Propriétaire: le Grand Ingo." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0317,
QUICKTEXT_ENABLE  SHIFT("\x47")  COLOR("\x43") "Lac Hylia" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0318,
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x43") "Laboratoire du Lac\n"
COLOR("\x40")  SHIFT("\x14") "Nous tentons de percer les\n"
SHIFT("\x24") "secrets du Lac Hylia!\n"
SHIFT("\x34") "--Le Scientifique" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0319,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x46") "Vallée Gerudo" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031A,
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x46") "Archerie Montée" COLOR("\x40") "\n"
SHIFT("\x0C") "Bienvenue aux habiles archers!\n"
SHIFT("\x15") "Record actuel: " COLOR("\x41")  HIGHSCORE("\x00")  COLOR("\x40") " Points" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031B,
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x46") "Gymnase Gerudo\n"
COLOR("\x40")  SHIFT("\x0D") "Seuls les membres actifs sont\n"
SHIFT("\x46") "autorisés!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031C,
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x46") "Désert Hanté" COLOR("\x40") "\n"
SHIFT("\x07") "Poursuis un mirage et les sables\n"
SHIFT("\x07") "t'engloutiront. Seul un chemin te\n"
SHIFT("\x32") "mènera au salut!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031D,
QUICKTEXT_ENABLE  SHIFT("\x32")  COLOR("\x46") "Temple de l'Esprit" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031E,
QUICKTEXT_ENABLE  SHIFT("\x38")  COLOR("\x42") "Boutique Kokiri\n"
COLOR("\x40")  SHIFT("\x23") "Fournisseur officiel du\n"
SHIFT("\x32") "peuple sylvestre!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x031F,
QUICKTEXT_ENABLE  SHIFT("\x17") "Cabane de " NAME  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0320,
QUICKTEXT_ENABLE  SHIFT("\x19")  COLOR("\x42") "Un Kokiri ne quitte jamais\n"
COLOR("\x40")  SHIFT("\x49")  COLOR("\x42") "la Forêt." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0321,
QUICKTEXT_ENABLE  SHIFT("\x03") "Longez la falaise pour accéder au\n"
COLOR("\x41") "Village Goron" COLOR("\x40") ", demeure des Gorons." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0322,
QUICKTEXT_ENABLE  SHIFT("\x23") "Merveille de la nature:\n"
SHIFT("\x37") "Le " COLOR("\x41") "Chou-Péteur" COLOR("\x40") "\n"
SHIFT("\x16") "Danger! Ne pas déraciner!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0323,
QUICKTEXT_ENABLE  SHIFT("\x34")  COLOR("\x41") "Sommet du Péril\n"
COLOR("\x40")  SHIFT("\x2F") "Entrée du cratère\n"
SHIFT("\x04") "Attention aux vagues de chaleur!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0324,
QUICKTEXT_ENABLE  SHIFT("\x12")  COLOR("\x43") "Salle d'Audience du Roi Zora\n"
COLOR("\x40")  SHIFT("\x0A") "Pour entendre les proclamations\n"
SHIFT("\x19") "royales, tenez-vous sur la\n"
SHIFT("\x25") "plate-forme et parlez." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0325,
QUICKTEXT_ENABLE  SHIFT("\x11") "Arrête ma course folle et je\n"
"t'offrirai (peut-être) quelque chose.\n"
SHIFT("\x34") "-- " COLOR("\x41") "Le Goron Fou" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0326,
QUICKTEXT_ENABLE  SHIFT("\x12") "Un oeil de vérité révèlera le\n"
SHIFT("\x06") "bouclier de pierre, seule défense\n"
SHIFT("\x1C") "contre la nuée de lames." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0327,
QUICKTEXT_ENABLE  SHIFT("\x03") "Seuls ceux au " COLOR("\x41") "pied léger " COLOR("\x40") "pourront\n"
SHIFT("\x0F") "traverser la vallée des morts." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0328,
QUICKTEXT_ENABLE "Le plus rapide de mes adversaires\n"
"a fait:\n"
COLOR("\x44")  HIGHSCORE("\x06")  COLOR("\x40") "\n"
"--Igor le fossoyeur" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0329,
QUICKTEXT_ENABLE  COLOR("\x44") "Jeu d'adresse  \n"
"20 Rubis la partie\n"
COLOR("\x41") "10 cibles" COLOR("\x40") ", " COLOR("\x41") "15 coups" COLOR("\x40") ", facile!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "10 cibles touchées -- Premier Prix\n"
"8 cibles ou plus -- Partie gratuite\n"
"Moins de 8 cibles -- T'es nul" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x44") "Règles du Jeu d'adresse\n"
COLOR("\x40") "Ne pas tirer sur le patron.\n"
"Ne pas jeter de bombes.\n"
"Ne JAMAIS tirer sur le patron." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x032A,
QUICKTEXT_ENABLE  SHIFT("\x2A")  COLOR("\x44") "Chasse aux trésors" COLOR("\x40") "\n"
SHIFT("\x08") "T'auras du pot si t'es chanceux." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x032B,
QUICKTEXT_ENABLE  SHIFT("\x34")  COLOR("\x44") "Jeu du plongeon\n"
COLOR("\x40")  SHIFT("\x05") "Aurez-vous le courage de plonger\n"
SHIFT("\x23") "du haut de la falaise?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x032C,
"032c"
);

DECLARE_MESSAGE_FRA(0x032D,
QUICKTEXT_ENABLE  SHIFT("\x1F")  COLOR("\x41") "Sommet de la Montagne" COLOR("\x40") "\n"
SHIFT("\x46") "Danger!!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x032E,
QUICKTEXT_ENABLE  SHIFT("\x2A")  COLOR("\x44") "Foire aux Masques!" COLOR("\x40") "\n"
SHIFT("\x0C") "Nous recherchons un coursier!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x032F,
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x44") "Bowling Teigneux" COLOR("\x40") "\n"
SHIFT("\x08") "Testez les dernières nouveautés\n"
SHIFT("\x1E") "en matière d'explosions!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0330,
QUICKTEXT_ENABLE  SHIFT("\x51")  COLOR("\x44") "Bazar" COLOR("\x40") "\n"
SHIFT("\x20") "Ici l'on trouve de tout!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0331,
QUICKTEXT_ENABLE  SHIFT("\x42")  COLOR("\x44") "Apothicaire\n"
COLOR("\x40")  SHIFT("\x0A") "Potions, bandages et onguents!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0332,
QUICKTEXT_ENABLE  SHIFT("\x37")  COLOR("\x41") "Boutique Goron\n"
COLOR("\x40")  SHIFT("\x23") "Matériel de montagne!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0333,
QUICKTEXT_ENABLE  SHIFT("\x36")  COLOR("\x43") "Boutique Zora" COLOR("\x40") "\n"
SHIFT("\x1E") "Les produits de la mer!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0334,
QUICKTEXT_ENABLE  SHIFT("\x1E")  COLOR("\x44") "Excursion du Fossoyeur!\n"
COLOR("\x40")  SHIFT("\x10") "De 18h à 21h (heure d'Hyrule)\n"
SHIFT("\x2D") "--Igor le fossoyeur" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0335,
QUICKTEXT_ENABLE  SHIFT("\x1E") "Excursion du Fossoyeur!\n"
SHIFT("\x0A") "L'attraction est " COLOR("\x41") "annulée" COLOR("\x40") " jusqu'à\n"
SHIFT("\x3C") "nouvel ordre...\n"
SHIFT("\x20") "Recherchons fossoyeur." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0336,
QUICKTEXT_ENABLE  COLOR("\x45") "Attaque en Fente!\n"
COLOR("\x40") "Pour faire une fente avec votre \n"
"lame, maintenez " COLOR("\x44") "[L] " COLOR("\x40") "et" COLOR("\x44") " [Control Stick] " COLOR("\x40") "vers\n"
"votre cible puis appuyez sur " COLOR("\x41") "[B]" COLOR("\x40") "." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0337,
QUICKTEXT_ENABLE  SHIFT("\x39")  COLOR("\x45") "Passage étroit\n"
COLOR("\x40") "Faufilez-vous dans ce trou!" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Placez-vous devant le trou et \n"
"maintenez " COLOR("\x44") "[Control Stick] " COLOR("\x40") "vers celui-ci. \n"
"Lorsque l'" COLOR("\x42") "icône d'action" COLOR("\x43") " " COLOR("\x40") "indique\n"
"\"Entrer\", appuyez sur " COLOR("\x42") "[A]" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Observez bien ce qu'affiche\n"
COLOR("\x42") "l'icône d'action" COLOR("\x40") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0338,
QUICKTEXT_ENABLE  COLOR("\x45") "Coupez l'herbe avec votre épée!\n"
COLOR("\x40") "Attaquez avec " COLOR("\x41") "[B]" COLOR("\x40") " pour trancher\n"
"horizontalement. Maintenez " COLOR("\x44") "[L]" COLOR("\x40") " \n"
"pour trancher verticalement." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0339,
QUICKTEXT_ENABLE  SHIFT("\x33")  COLOR("\x44") "Château d'Hyrule" COLOR("\x40") "\n"
SHIFT("\x38")  COLOR("\x46") "Ranch Lon Lon" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033A,
QUICKTEXT_ENABLE  SHIFT("\x0A") "Vous êtes ici: " COLOR("\x44") "Château d'Hyrule" COLOR("\x40") "\n"
SHIFT("\x19") "Tout droit: " COLOR("\x46") "Ranch Lon Lon" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033B,
QUICKTEXT_ENABLE  SHIFT("\x43") "Tout droit:\n"
SHIFT("\x13")  COLOR("\x43") "Salle d'audience du Roi Zora\n"
COLOR("\x40")  SHIFT("\x11") "Appliquez-vous au protocole!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033C,
QUICKTEXT_ENABLE  SHIFT("\x23") "Cabane du Grand " COLOR("\x41") "Mido" COLOR("\x40") "\n"
SHIFT("\x32") "Chef des Kokiris" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033D,
QUICKTEXT_ENABLE  SHIFT("\x0A") "Cabane des Frères Je-Sais-Tout" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033E,
QUICKTEXT_ENABLE  SHIFT("\x28") "Cabane des Jumelles" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x033F,
QUICKTEXT_ENABLE  SHIFT("\x33") "Cabane de " COLOR("\x41") "Saria" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0340,
QUICKTEXT_ENABLE  COLOR("\x45") "Axer l'angle de vue avec [L] \n"
COLOR("\x40") "Appuyez sur " COLOR("\x44") "[L] " COLOR("\x40") "pour axer votre \n"
"angle de vue vers l'avant." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Restez immobile puis changez de\n"
"direction ou " COLOR("\x44") "maintenez [L] " COLOR("\x40") "pendant\n"
"un court instant." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Cette technique permet de vous\n"
"orienter toujours dans la bonne\n"
"direction. Pratique, non?" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "En " COLOR("\x44") "maintenant [L]" COLOR("\x40") ", vous pouvez \n"
"vous déplacez " COLOR("\x41") "latéralement" COLOR("\x40") " en \n"
"faisant face toujours au même \n"
"point." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  COLOR("\x41") "Les pas de côté" COLOR("\x40") " sont très \n"
"importants dans les couloirs d'un\n"
"donjon ou pendant un combat.\n"
"Entraînez-vous dès maintenant!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0341,
QUICKTEXT_ENABLE  COLOR("\x41") "Sauter sur les pierres\n"
COLOR("\x40") "Marchez vers le bord d'une plate-\n"
"forme pour sauter automatiquement." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Sautez sur toutes les pierres et\n"
"vous passerez une bonne journée!\n"
SHIFT("\x32") "(proverbe Kokiri)" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0342,
QUICKTEXT_ENABLE  SHIFT("\x23")  COLOR("\x41") "Interdiction de plonger\n"
COLOR("\x40")  SHIFT("\x32") "(L'eau ça mouille)" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0343,
QUICKTEXT_ENABLE  COLOR("\x45") "Visée\n"
COLOR("\x40") "Si vous apercevez une icône " COLOR("\x42") "▼" COLOR("\x40") " \n"
"au-dessus d'un élément, vous \n"
"pouvez cibler celui-ci avec " COLOR("\x44") "[L]" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "En d'autres termes, en appuyant \n"
"sur " COLOR("\x44") "[L]" COLOR("\x40") " lorsque vous voyez " COLOR("\x42") "▼" COLOR("\x46") " " COLOR("\x40") "au-\n"
"dessus d'un objet, vous pouvez \n"
"vous axer vers celui-ci. Cool, non?" QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "En appuyant de nouveau sur " COLOR("\x44") "[L]" COLOR("\x40") ", \n"
"la cible " COLOR("\x41") "disparaîtra" COLOR("\x40") " ou se fixera\n"
"sur un nouvel élément possédant \n"
"une icône " COLOR("\x42") "▼" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Lors d'un combat vous opposant à \n"
"de nombreux ennemis, appuyez sur\n"
COLOR("\x44") "[L] " COLOR("\x40") "et " COLOR("\x44") "[Control Stick]" COLOR("\x40") " vers l'arrière pour\n"
"faire disparaître la cible." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Ciblez les " COLOR("\x41") "pierres" COLOR("\x40") " à côté de cette\n"
"pancarte pour vous entraîner!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0344,
QUICKTEXT_ENABLE  SHIFT("\x30")  COLOR("\x42") "Théâtre Sylvestre" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Venez nous montrer vos grimaces!\n"
SHIFT("\x0D") "De fabuleux prix à remporter!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0345,
QUICKTEXT_ENABLE  SHIFT("\x1F") "Venez voir les fabuleux\n"
SHIFT("\x2D")  COLOR("\x41") "Frères Je-Sais-Tout\n"
COLOR("\x40")  SHIFT("\x0F") "Et vos questions ne resteront\n"
SHIFT("\x29") "plus sans réponse!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0400,
"Ceci est une " COLOR("\x41") "Pierre à Potins" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x0401,
"On raconte que d'appuyer sur " COLOR("\x41") "[B]" COLOR("\x42") "\n"
COLOR("\x40") "vous fait nager plus vite."
);

DECLARE_MESSAGE_FRA(0x0402,
"On raconte qu'il y a un passage \n"
"secret près de l'arbre au\n"
"Nord-Est de la Plaine d'Hyrule."
);

DECLARE_MESSAGE_FRA(0x0403,
"On raconte qu'il y a un passage\n"
"secret sur la route menant au Lac \n"
"Hylia."
);

DECLARE_MESSAGE_FRA(0x0404,
"On raconte que l'épée de Biggoron\n"
"est indestructible."
);

DECLARE_MESSAGE_FRA(0x0405,
"On raconte que Medigoron pue des\n"
"pieds."
);

DECLARE_MESSAGE_FRA(0x0406,
"On raconte que Malon est la\n"
"première à avoir inscrit un record\n"
"à la course d'obstacle du Ranch\n"
"Lon Lon."
);

DECLARE_MESSAGE_FRA(0x0407,
"On raconte que Malon du Ranch\n"
"Lon Lon rêve toutes les nuits \n"
"qu'un prince charmant la demande\n"
"en mariage."
);

DECLARE_MESSAGE_FRA(0x0408,
"On dit que Ruto, la capricieuse\n"
"princesse Zora, est amoureuse\n"
"d'un garçon..."
);

DECLARE_MESSAGE_FRA(0x0409,
"On dit que choisir la visée \n"
"\"maintenue\" au début du jeu \n"
"est super cool!"
);

DECLARE_MESSAGE_FRA(0x040A,
"On raconte qu'il y a un passage\n"
"secret non loin d'un arbre sur la\n"
"route de Cocorico."
);

DECLARE_MESSAGE_FRA(0x040B,
"On raconte que, contrairement aux\n"
"apparences, la Princesse Zelda du\n"
"Château d'Hyrule est un vrai\n"
"garçon manqué!"
);

DECLARE_MESSAGE_FRA(0x040C,
"On raconte que la nourrice de la\n"
"Princesse Zelda est une Sheikah, \n"
"une race souvent considérée comme\n"
"éteinte."
);

DECLARE_MESSAGE_FRA(0x040D,
"On dit qu'un drôle de type\n"
"s'amuse à cavaler autour de la\n"
"Plaine d'Hyrule."
);

DECLARE_MESSAGE_FRA(0x040E,
"On dit qu'il est interdit d'utiliser\n"
"des lunettes pendant la chasse\n"
"aux trésors.."
);

DECLARE_MESSAGE_FRA(0x040F,
"On dit que cogner sur les poules,\n"
"c'est rigolo et ça défoule!"
);

DECLARE_MESSAGE_FRA(0x0410,
"On raconte que les Gerudos \n"
"viennent souvent chercher des \n"
"petits amis au Château d'Hyrule."
);

DECLARE_MESSAGE_FRA(0x0411,
"On dit que Zelda est le plus beau\n"
"jeu du monde... Ben, j'crois bien\n"
"qu'c'est vrai!"
);

DECLARE_MESSAGE_FRA(0x0412,
"On dit que tenir un bâton Mojo\n"
"près d'un papillon fait \n"
"apparaître quelque chose."
);

DECLARE_MESSAGE_FRA(0x0413,
"On dit qu'un donjon une fois\n"
"terminé peut faire apparaître\n"
"de nouveaux monstres."
);

DECLARE_MESSAGE_FRA(0x0414,
"On dit que les Gerudos vénèrent\n"
"Ganondorf comme un dieu."
);

DECLARE_MESSAGE_FRA(0x0415,
"On dit qu'il y a un passage secret \n"
"près de l'entrée de la Vallée \n"
"Gerudo."
);

DECLARE_MESSAGE_FRA(0x0416,
"On dit que la chouette du nom de\n"
"Kaepora Gaebora est la réincarna-\n"
"tion d'un ancien Sage."
);

DECLARE_MESSAGE_FRA(0x0417,
"On dit que le traducteur de Zelda\n"
"est super beau et méga cool!"
);

DECLARE_MESSAGE_FRA(0x0418,
"On dit que le destrier de\n"
"Ganondorf est un étalon dressé \n"
"par les Gerudos."
);

DECLARE_MESSAGE_FRA(0x0419,
"On dit que Ganondorf veut non\n"
"seulement dominer les Gerudos \n"
"mais aussi Hyrule!"
);

DECLARE_MESSAGE_FRA(0x041A,
"On dit que le Gymnase Gerudo est\n"
"super balèze...\n"
"Et que le trésor secret n'est pas \n"
"aussi cool qu'on le pense!"
);

DECLARE_MESSAGE_FRA(0x041B,
"On dit qu'il y a un interrupteur\n"
"à activer avec l'Attaque Cyclone."
);

DECLARE_MESSAGE_FRA(0x041C,
"On dit qu'il y a en tout\n"
"100 Skulltulas d'or à trouver."
);

DECLARE_MESSAGE_FRA(0x041D,
"On dit qu'un Hylien se transforme\n"
"en monstre s'il s'égare dans les\n"
"Bois Perdus!"
);

DECLARE_MESSAGE_FRA(0x041E,
"On dit que les insectes adorent\n"
"se cacher dans les trous du sol\n"
"d'Hyrule."
);

DECLARE_MESSAGE_FRA(0x041F,
"On dit que manger des cafards,\n"
"c'est dégueulasse."
);

DECLARE_MESSAGE_FRA(0x0420,
"On dit qu'un Kokiri a quitté la \n"
"forêt et a survécu!"
);

DECLARE_MESSAGE_FRA(0x0421,
"0421"
);

DECLARE_MESSAGE_FRA(0x0600,
QUICKTEXT_ENABLE  COLOR("\x41") "C'est quoi ce truc?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0601,
QUICKTEXT_ENABLE "Gohma\n"
COLOR("\x44") "Ce monstre ronge les entrailles de\n"
"l'Arbre Mojo! Vise son " COLOR("\x40") "oeil" COLOR("\x44") " lorsque\n"
"celui-ci est rouge!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0602,
QUICKTEXT_ENABLE "Oeuf Gohma\n"
COLOR("\x44") "Si cet oeuf éclot, une Larve\n"
"Gohma apparaîtra." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0603,
QUICKTEXT_ENABLE "Larve Gohma\n"
COLOR("\x44") "Prends garde à ses sauts!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0604,
QUICKTEXT_ENABLE "Skulltula\n"
COLOR("\x44") "Son " COLOR("\x40") "ventre" COLOR("\x44") " est son point faible!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0605,
QUICKTEXT_ENABLE "Grosse Skulltula\n"
COLOR("\x44") "Son " COLOR("\x40") "ventre" COLOR("\x44") " est son point faible!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0606,
QUICKTEXT_ENABLE "Tailpasaran\n"
COLOR("\x44") "Sa " COLOR("\x40") "queue " COLOR("\x44") "est son point faible!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0607,
QUICKTEXT_ENABLE "Mojo Baba\n"
COLOR("\x44") "Frappe-la après son attaque et \n"
"elle se dressera. Tranche-la vite \n"
"pour obtenir un " COLOR("\x40") "Bâton Mojo" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0608,
QUICKTEXT_ENABLE "Grosse Mojo Baba\n"
COLOR("\x44") "Frappe-la après son attaque et \n"
"elle se dressera. Tranche-la vite \n"
"pour obtenir un " COLOR("\x40") "Bâton Mojo" COLOR("\x44") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0609,
QUICKTEXT_ENABLE "Mojo Baba\n"
COLOR("\x44") "Son seul contact te fera souffrir!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x060A,
QUICKTEXT_ENABLE "Peste Mojo\n"
COLOR("\x44") "Approche-t'en et il se cachera \n"
"dans l'herbe. Fais rebondir ses\n"
"projectiles!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x060B,
"060b"
);

DECLARE_MESSAGE_FRA(0x060C,
QUICKTEXT_ENABLE "King Dodongo\n"
COLOR("\x44") "Cet énorme Dodongo avalerait \n"
"n'importe quoi! Donne-lui une bonne\n"
"secousse et frappe avec ton " COLOR("\x40") "épée" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x060D,
QUICKTEXT_ENABLE "Dodongo\n"
COLOR("\x44") "Prends garde à son souffle!\n"
"Utilise bien la " COLOR("\x40") "Visée [L]" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x060E,
QUICKTEXT_ENABLE "Dodongo Junior\n"
COLOR("\x44") "Prends garde à ses sauts!\n"
"Il explosera une fois vaincu!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x060F,
QUICKTEXT_ENABLE "Lizalfos \n"
COLOR("\x44") "Utilise souvent ton bouclier et \n"
"la " COLOR("\x40") "Visée [L]" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0610,
QUICKTEXT_ENABLE "Dinolfos \n"
COLOR("\x44") "Utilise souvent ton bouclier et \n"
"la " COLOR("\x40") "Visée [L]" COLOR("\x44") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0611,
QUICKTEXT_ENABLE "Saigneur ardent\n"
COLOR("\x44") "Détruis-le rapidement ou ses \n"
"flammes feront brûler ton \n"
COLOR("\x40") "Bouclier Mojo" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0612,
QUICKTEXT_ENABLE "Saigneur\n"
COLOR("\x44") "Utilise la " COLOR("\x40") "Visée [L] " COLOR("\x44") "pour toujours\n"
"garder un oeil sur lui." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0613,
QUICKTEXT_ENABLE "Armos\n"
COLOR("\x44") "Immobilise-le pour ensuite le\n"
"détruire!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0614,
QUICKTEXT_ENABLE "Barinade\n"
COLOR("\x44") "De dangereuses méduses lui \n"
"tournent autour. Vise la partie\n"
"protégée de son corps!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0615,
QUICKTEXT_ENABLE "Tentacule Parasite?\n"
COLOR("\x44") "La partie mince semble être son\n"
"point faible... Tu as besoin d'une\n"
"arme spéciale pour le couper!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0616,
QUICKTEXT_ENABLE "Bulld'O\n"
COLOR("\x44") "Ta lame la fera rebondir!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0617,
QUICKTEXT_ENABLE "Biri\n"
COLOR("\x44") "Touche-la et tu recevras une\n"
"décharge électrique!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0618,
QUICKTEXT_ENABLE "Bari\n"
COLOR("\x44") "Touche-la et tu recevras une\n"
"décharge électrique!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0619,
QUICKTEXT_ENABLE "Manta\n"
COLOR("\x44") "Détruis-la avant qu'elle ne \n"
"t'attaque!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061A,
QUICKTEXT_ENABLE "Ganon Spectral\n"
COLOR("\x44") "C'est un esprit maléfique du \n"
"Temple de la forêt! Il surgit\n"
"de l'un des tableaux."BOX_BREAK
COLOR("\x44") "Réponds à son attaque magique \n"
"avec l'une des tiennes!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061B,
QUICKTEXT_ENABLE "Stalfos\n"
COLOR("\x44") "Attire-le et observe bien ses \n"
"mouvements! Attaque quand il\n"
"baisse sa garde!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061C,
QUICKTEXT_ENABLE "Tetdoss Bleue\n"
COLOR("\x44") "Protège-toi de sa flamme bleue \n"
"avec ton " COLOR("\x40") "bouclier" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061D,
QUICKTEXT_ENABLE "Tetdoss Blanche\n"
COLOR("\x44") "Vise-la une fois à l'arrêt!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061E,
QUICKTEXT_ENABLE "Tetdoss Verte\n"
COLOR("\x44") "Vise-la lorsque sa flamme verte \n"
"disparaît!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x061F,
QUICKTEXT_ENABLE "Skullwalltula\n"
COLOR("\x44") "Ne la touche surtout pas!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0620,
QUICKTEXT_ENABLE "Skulltula d'or\n"
COLOR("\x44") "Cette Araignée de la Malédiction,\n"
"une fois vaincue, fera apparaître \n"
"un " COLOR("\x40") "symbole" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0621,
QUICKTEXT_ENABLE "Volcania\n"
COLOR("\x44") "Il est le gardien du Temple du\n"
"feu, réveillé par le Roi Sombre.\n"
"Quel peut être son point faible?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0622,
QUICKTEXT_ENABLE "Danse-Flamme\n"
COLOR("\x44") "Souffle d'abord son " COLOR("\x40") "habit de \n"
"flammes" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0623,
QUICKTEXT_ENABLE "Feu Visqueux\n"
COLOR("\x44") "Il fuira une fois sa flamme éteinte.\n"
"Détruis-le avant sa régénération!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0624,
QUICKTEXT_ENABLE "Tetdoss Rouge\n"
COLOR("\x44") "Protège-toi de son attaque \n"
"avec ton " COLOR("\x40") "bouclier" COLOR("\x44") "!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0625,
QUICKTEXT_ENABLE "Morpha\n"
COLOR("\x44") "Gardien du Temple de l'eau, il\n"
"contrôle les fluides. Son point \n"
"faible semble être le " COLOR("\x40") "noyau" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0626,
QUICKTEXT_ENABLE "Ombre de " NAME "\n"
COLOR("\x44") "Terrasse ton Frère Noir!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0627,
QUICKTEXT_ENABLE "Coquillos\n"
COLOR("\x44") "Son " COLOR("\x40") "organe interne " COLOR("\x44") "est son point\n"
"faible!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0628,
QUICKTEXT_ENABLE "Spike\n"
COLOR("\x44") "Vise-le quand il rétracte ses \n"
"pointes!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0629,
QUICKTEXT_ENABLE "Bongo Bongo\n"
COLOR("\x44") "Seigneur du Temple de l'Ombre, \n"
"échappé du puits de Cocorico.\n"
"Utilise le " COLOR("\x40") "Monocle de Vérité" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x062A,
QUICKTEXT_ENABLE "Effroi\n"
COLOR("\x44") "Son regard te paralysera. S'il te \n"
"mord, appuie sur les " COLOR("\x40") "boutons " COLOR("\x44") "pour\n"
"te dégager!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x062B,
UNSKIPPABLE  QUICKTEXT_ENABLE "Ganon Spectral\n"
COLOR("\x44") "Attaque-le " COLOR("\x40") "lorsqu'il sort des \n"
"tableaux" COLOR("\x44") "! Fais attention aux \n"
"illusions!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x062C,
"062c"
);

DECLARE_MESSAGE_FRA(0x062D,
QUICKTEXT_ENABLE "Gibdo\n"
COLOR("\x44") "Son regard te paralysera. S'il te \n"
"mord, appuie sur les " COLOR("\x40") "boutons" COLOR("\x44") " pour\n"
"te dégager!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x062E,
QUICKTEXT_ENABLE "Poigneur\n"
COLOR("\x44") "S'il t'empoigne, appuie sur les\n"
COLOR("\x40") "boutons " COLOR("\x44") "pour te dégager!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x062F,
QUICKTEXT_ENABLE "Poignant\n"
COLOR("\x44") "Prends garde aux mains infinies! \n"
"Vise la tête...ça l'arrêtera net!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0630,
QUICKTEXT_ENABLE "Clapoir\n"
COLOR("\x44") "Fais bien attention à son " COLOR("\x40") "ombre" COLOR("\x44") " \n"
"sur le sol. Détruis-la avant qu'elle\n"
"ne retourne au plafond!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0631,
QUICKTEXT_ENABLE "Grossbaffe\n"
COLOR("\x44") "Lorsqu'elle se divise, viens à bout\n"
"de toutes les mains avant qu'elles\n"
"ne fusionnent!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0632,
QUICKTEXT_ENABLE "Koume\n"
COLOR("\x44") "Mère spirituelle de Ganondorf.\n"
"Maîtresse des flammes infinies. \n"
"Elle est vulnérable au " COLOR("\x40") "froid" COLOR("\x44") "." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0633,
QUICKTEXT_ENABLE "Kotake\n"
COLOR("\x44") "Mère spirituelle de Ganondorf.\n"
"Maîtresse des glaces éternelles.\n"
"Elle est vulnérable au " COLOR("\x40") "feu" COLOR("\x44") "." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0634,
QUICKTEXT_ENABLE "Hache-Viande\n"
COLOR("\x44") "C'est étrange...\n"
"Cet ennemi n'est pas comme les \n"
"autres!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0635,
QUICKTEXT_ENABLE "Hache-Viande\n"
COLOR("\x44") "Sa hache est meurtrière! \n"
"Frappe-le quand il baisse sa garde!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0636,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Voilà ce qu'il advient des enfants\n"
"perdus dans la forêt... On dirait \n"
"qu'il n'aime pas les adultes." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0637,
QUICKTEXT_ENABLE "Pudding\n"
COLOR("\x44") "Ce monstre avale " COLOR("\x40") "tuniques" COLOR("\x44") " et \n"
COLOR("\x40") "boucliers" COLOR("\x44") ". Détruis-le vite pour\n"
"récupérer ton équipement!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0638,
"0638"
);

DECLARE_MESSAGE_FRA(0x0639,
QUICKTEXT_ENABLE "Sentinelle\n"
COLOR("\x44") "Evite son regard meurtrier!\n"
"A mon avis, son oeil craint la \n"
"fumée!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x063A,
QUICKTEXT_ENABLE "Anubis\n"
COLOR("\x44") "Il est vulnérable au " COLOR("\x41") "feu" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x063B,
QUICKTEXT_ENABLE "Mr. Freezzard\n"
COLOR("\x44") "Attention à son souffle glacé! \n"
"Détruis-le entièrement avant qu'il\n"
"ne régénère." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x063C,
"063c"
);

DECLARE_MESSAGE_FRA(0x063D,
QUICKTEXT_ENABLE "Ganondorf, Seigneur du Malin\n"
COLOR("\x44") "Son point faible? \n"
"Comment veux-tu qu'je le sache!!!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x063E,
QUICKTEXT_ENABLE "Ganon\n"
COLOR("\x44") "Quel est son point faible?\n"
"Mais j'en sais rien moi!!!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x063F,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Voici ce qu'il advient des enfants\n"
"perdus dans la forêt. \n"
"Comment devenir son ami?" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0640,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Voilà ce qu'il advient des enfants\n"
"perdus dans la forêt? Il a l'air\n"
"triste de ne plus avoir de visage." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0641,
QUICKTEXT_ENABLE "Skull Kid\n"
COLOR("\x44") "Voilà ce qu'il advient des enfants\n"
"perdus dans la forêt? Il a l'air\n"
"content avec sa tête de mort." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0642,
QUICKTEXT_ENABLE "Octorok\n"
COLOR("\x44") "Fais rebondir ses rochers!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0643,
QUICKTEXT_ENABLE "Esprit du cimetière?\n"
COLOR("\x44") "Fixe-le avec la " COLOR("\x40") "Visée [L] " COLOR("\x44") "et il\n"
"disparaîtra..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0644,
QUICKTEXT_ENABLE "Esprit\n"
COLOR("\x44") "Fixe-le avec la " COLOR("\x40") "Visée [L] " COLOR("\x44") "et il\n"
"disparaîtra..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0645,
QUICKTEXT_ENABLE "Araknon Rouge\n"
COLOR("\x44") "Fixe-le avec la " COLOR("\x40") "Visée [L] " COLOR("\x44") "pendant\n"
"ses sauts..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0646,
QUICKTEXT_ENABLE "Araknon Bleu\n"
COLOR("\x44") "Attire-le de préférence vers le sol\n"
"pour le détruire!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0647,
QUICKTEXT_ENABLE "Leever\n"
COLOR("\x44") "Observe bien ses mouvements!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0648,
QUICKTEXT_ENABLE "Peahat\n"
COLOR("\x44") "Ses " COLOR("\x40") "racines " COLOR("\x44") "sont sensibles!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0649,
QUICKTEXT_ENABLE "Larve Peahat\n"
COLOR("\x44") "Protège-toi avec ton " COLOR("\x40") "bouclier" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x064A,
"064a"
);

DECLARE_MESSAGE_FRA(0x064B,
"064b"
);

DECLARE_MESSAGE_FRA(0x064C,
QUICKTEXT_ENABLE "Lobo\n"
COLOR("\x44") "Attire-le vers toi et observe ses\n"
"mouvements! Frappe quand il\n"
"baisse sa garde!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x064D,
QUICKTEXT_ENABLE "Peste Dingo\n"
COLOR("\x44") "Approche-t'en et il se cachera\n"
"dans l'herbe..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x064E,
QUICKTEXT_ENABLE "Peste Marchande\n"
COLOR("\x44") "Approche-t'en et il se cachera\n"
"dans l'herbe..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x064F,
QUICKTEXT_ENABLE "Spectre d'Igor\n"
COLOR("\x44") "C'est le fantôme du fossoyeur!\n"
"Suis-le et il te remettra son \n"
COLOR("\x40") "trésor" COLOR("\x44") "..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0650,
QUICKTEXT_ENABLE "Meg de la Confrérie des Esprits\n"
COLOR("\x44") "Ne te laisse pas avoir par ses\n"
"répliques illusoires! Cherche \n"
COLOR("\x40") "la bonne" COLOR("\x44") " et vise bien!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0651,
QUICKTEXT_ENABLE "Joelle de la Confrérie des Esprits\n"
COLOR("\x44") "Vise-la quand elle apparaît!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0652,
QUICKTEXT_ENABLE "Beth de la Confrérie des Esprits\n"
COLOR("\x44") "Vise-la quand elle apparaît!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0653,
QUICKTEXT_ENABLE "Amy de la Confrérie des Esprits\n"
COLOR("\x44") "Vise-la quand elle apparaît!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0654,
QUICKTEXT_ENABLE "Voleuse Gerudo\n"
COLOR("\x44") "Quand elle baisse sa garde, cogne-\n"
"la comme une brute! Fais vite ou \n"
"tu seras capturé." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0655,
QUICKTEXT_ENABLE "Sakdoss\n"
COLOR("\x44") "N'aie pas peur du Sakdoss!\n"
"Cogne comme un sourd en criant:\n"
"YAAAAAAAAAAH!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0656,
QUICKTEXT_ENABLE "Saigneur givré\n"
COLOR("\x44") "Détruis-le avant qu'il ne t'attaque!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0657,
QUICKTEXT_ENABLE "Lobo blanc\n"
COLOR("\x44") "Attire-le vers toi et observe ses\n"
"mouvements! Frappe quand il\n"
"baisse sa garde!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0658,
QUICKTEXT_ENABLE "Toukor\n"
COLOR("\x44") "Détruis-le avant qu'il ne t'attaque!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0659,
QUICKTEXT_ENABLE "Bigocto\n"
COLOR("\x44") "Attaque-le par derrière!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x065A,
QUICKTEXT_ENABLE "Ame\n"
COLOR("\x44") "Ce type d'Esprit, plus courageux, \n"
"ne fuira pas ton regard. \n"
"Attention: elle se déplace vite!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x065B,
QUICKTEXT_ENABLE "Fusion maléfique\n"
COLOR("\x44") "Le feu et la glace réunis en un\n"
"corps parfait. Sers-toi de leur\n"
COLOR("\x40") "propre attaque magique" COLOR("\x44") "!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x065C,
QUICKTEXT_ENABLE "Esprit\n"
COLOR("\x44") "Cet Esprit ne disparaît pas si tu\n"
"le fixes. Rien ne lui fait peur,\n"
"apparemment..." COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x086D,
QUICKTEXT_ENABLE  SHIFT("\x2D") "Jouez avec " COLOR("\x42") "[A]" COLOR("\x40") " et " COLOR("\x46") "[C]" COLOR("\x40") "." COLOR("\x46") "\n"
COLOR("\x40") "\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x086E,
QUICKTEXT_ENABLE  COLOR("\x42") "[A]" COLOR("\x40") " et " COLOR("\x46") "[C] " COLOR("\x40") "- Jouer " COLOR("\x42") "   " COLOR("\x41") "[B]" COLOR("\x42") " " COLOR("\x40") "- Annuler\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x086F,
"\n"
"\n"
OCARINA
);

DECLARE_MESSAGE_FRA(0x0870,
QUICKTEXT_ENABLE  SHIFT("\x19") "Jouez le " COLOR("\x42") "Menuet des bois" COLOR("\x40") "." COLOR("\x42") "\n"
"\n"
"\n"
COLOR("\x40")  QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0871,
QUICKTEXT_ENABLE  SHIFT("\x20") "Jouez le " COLOR("\x41") "Boléro du feu" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0872,
QUICKTEXT_ENABLE  SHIFT("\x15") "Jouez la " COLOR("\x43") "Sérénade de l'eau" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0873,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Jouez le " COLOR("\x46") "Requiem des esprits" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0874,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Jouez le " COLOR("\x45") "Nocturne de l'ombre" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0875,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Jouez le " COLOR("\x44") "Prélude de la lumière" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0876,
QUICKTEXT_ENABLE  SHIFT("\x1A") "Jouez le " COLOR("\x42") "Chant de Saria" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0877,
QUICKTEXT_ENABLE  SHIFT("\x21") "OK? Voici la" COLOR("\x41") " mélodie" COLOR("\x40") "...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0878,
QUICKTEXT_ENABLE  SHIFT("\x21") "Retiens cette " COLOR("\x43") "mélodie" COLOR("\x40") "...\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x0879,
QUICKTEXT_ENABLE "Retiens à jamais le " COLOR("\x46") "Chant du Soleil" COLOR("\x40") ".\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x087A,
QUICKTEXT_ENABLE  COLOR("\x44") "Ce chant" COLOR("\x40") " ouvre la Porte du Temps.\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x087B,
QUICKTEXT_ENABLE "Je n'oublierai jamais cette " COLOR("\x45") "mélodie" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x087C,
QUICKTEXT_ENABLE  COLOR("\x42") "[A]" COLOR("\x40") " et " COLOR("\x46") "[C] " COLOR("\x40") "- Jouer " COLOR("\x42") "   " COLOR("\x41") "[B]" COLOR("\x42") " " COLOR("\x40") "- Annuler\n"
"\n"
"\n"
QUICKTEXT_DISABLE  OCARINA
);

DECLARE_MESSAGE_FRA(0x088B,
BACKGROUND("\x00", "\x20", "\x00")  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x088C,
QUICKTEXT_ENABLE  SHIFT("\x0A")  COLOR("\x41") "Impossible de se téléporter ici!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x088D,
QUICKTEXT_ENABLE  COLOR("\x42") "Se téléporter aux Bois Perdus!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x088E,
QUICKTEXT_ENABLE  COLOR("\x41") "Se téléporter au Cratère du Péril!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x088F,
QUICKTEXT_ENABLE  COLOR("\x43") "Se téléporter au Lac Hylia!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0890,
QUICKTEXT_ENABLE  COLOR("\x46") "Se téléporter au Colosse du \n"
"Désert!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0891,
QUICKTEXT_ENABLE  COLOR("\x45") "Se téléporter au Cimetière!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0892,
QUICKTEXT_ENABLE  COLOR("\x44") "Se téléporter au Temple du Temps!" COLOR("\x40")  QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK!\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x0893,
QUICKTEXT_ENABLE  SHIFT("\x06") "Vous jouez le " COLOR("\x42") "Menuet des bois" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0894,
QUICKTEXT_ENABLE  SHIFT("\x10") "Vous jouez le " COLOR("\x41") "Boléro du feu" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0895,
QUICKTEXT_ENABLE  SHIFT("\x05") "Vous jouez la " COLOR("\x43") "Sérénade de l'eau" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0896,
QUICKTEXT_ENABLE "Vous jouez le " COLOR("\x46") "Requiem des esprits" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0897,
QUICKTEXT_ENABLE "Vous jouez le " COLOR("\x45") "Nocturne de l'ombre" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0898,
QUICKTEXT_ENABLE "Vous jouez le " COLOR("\x44") "Prélude de la lumière" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x0899,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Vous jouez le " COLOR("\x42") "Chant de Saria" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089A,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Vous jouez le " COLOR("\x41") "Chant d'Epona" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089B,
QUICKTEXT_ENABLE  SHIFT("\x03") "Vous jouez la " COLOR("\x43") "Berceuse de Zelda" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089C,
QUICKTEXT_ENABLE  SHIFT("\x0B") "Vous jouez le " COLOR("\x46") "Chant du Soleil" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089D,
QUICKTEXT_ENABLE  SHIFT("\x09") "Vous jouez le " COLOR("\x44") "Chant du Temps" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089E,
QUICKTEXT_ENABLE "Vous jouez le " COLOR("\x45") "Chant des Tempêtes" COLOR("\x40") "!\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x089F,
QUICKTEXT_ENABLE "Vous jouez le " COLOR("\x46") "Chant de l'Epouvantail" COLOR("\x40") "\n"
"\n"
"\n"
QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x1000,
UNSKIPPABLE  COLOR("\x44") "Haa... Enfin debout!\n"
"Moi c'est " COLOR("\x41") "Navi" COLOR("\x44") " la fée!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Le très vénérable Arbre Mojo m'a\n"
"désignée pour être ta " COLOR("\x41") "partenaire " COLOR("\x44") "!\n"
"J'en suis très honorée!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1001,
UNSKIPPABLE  SHIFT("\x14") "Hé! Salut, " NAME "!"
);

DECLARE_MESSAGE_FRA(0x1002,
UNSKIPPABLE "Whoaaa! Une fée!!"BOX_BREAK
UNSKIPPABLE "Enfin tu as reçu une fée,\n"
NAME "!" TEXTID("\x10\x0F")
);

DECLARE_MESSAGE_FRA(0x1003,
"Je vais t'attendre ici!\n"
"Va voir le vénérable Arbre Mojo!"
);

DECLARE_MESSAGE_FRA(0x1004,
COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "devant une pierre, et han! \n"
"Je la soulève.\n"
COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "devant une pierre, et yaa!\n"
"Je la soulève."BOX_BREAK"Pfouuh, cette peste de " COLOR("\x41") "Mido" COLOR("\x40") "... Il \n"
"m'a obligé à ramasser toutes les \n"
"pierres devant chez lui."
);

DECLARE_MESSAGE_FRA(0x1005,
UNSKIPPABLE "Oh, tu as une " COLOR("\x44") "fée" COLOR("\x40") " maintenant?!\n"
"C'est cool, " NAME "!"BOX_BREAK
UNSKIPPABLE "Comment?"BOX_BREAK
UNSKIPPABLE "Tu as été convoqué par le \n"
COLOR("\x41") "vénérable Arbre Mojo" COLOR("\x40") "?\n"
"Quel honneur!"BOX_BREAK
UNSKIPPABLE "Il va peut-être te donner un joli \n"
"cadeau, hi hi!"BOX_BREAK
UNSKIPPABLE "Il est notre père à tous, tu sais!\n"
"Il protège la forêt de sa toute\n"
"puissance! Il a donné vie à tous\n"
"les Kokiris!"
);

DECLARE_MESSAGE_FRA(0x1006,
"Je me demande bien si le \n"
COLOR("\x41") "vénérable Arbre Mojo " COLOR("\x40") "a créé\n"
"tous les êtres de la forêt."
);

DECLARE_MESSAGE_FRA(0x1007,
"Bon, répétons quelques \n"
"mouvements!"BOX_BREAK"Cible quelque chose avec la \n"
COLOR("\x44") "Visée [L]" COLOR("\x40") " et appuie sur " COLOR("\x42") "[A]" COLOR("\x40") " \n"
"en allant à droite ou à gauche \n"
"pour " COLOR("\x41") "bondir sur les côtés" COLOR("\x40") "."BOX_BREAK"Cible avec la " COLOR("\x44") "Visée [L]" COLOR("\x40") ", appuie\n"
"sur " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "tout en pointant vers\n"
"l'arrière pour faire un " COLOR("\x41") "saut \n"
"périlleux arrière" COLOR("\x40") "."BOX_BREAK"Pour faire une " COLOR("\x41") "roulade" COLOR("\x40") ", cible\n"
"avec la " COLOR("\x44") "Visée [L]" COLOR("\x40") " et appuie \n"
"sur " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Dégaine ton épée et utilise la \n"
COLOR("\x44") "Visée [L]" COLOR("\x40") " pour effectuer une \n"
COLOR("\x41") "Attaque sautée" COLOR("\x40") " avec " COLOR("\x42") "[A]" COLOR("\x40") "!\n"
"Elle fait deux fois plus mal!"BOX_BREAK"Entraîne-toi à la " COLOR("\x44") "Visée [L]" COLOR("\x40") " sur\n"
"ces pierres, et essaie tous ces \n"
"nouveaux mouvements!"
);

DECLARE_MESSAGE_FRA(0x1008,
UNSKIPPABLE "Tu n'es pas autorisé à quitter la \n"
"forêt, petit Kokiri!" TEXTID("\x10\x09")
);

DECLARE_MESSAGE_FRA(0x1009,
"Le très vénérable Arbre Mojo dit\n"
"qu'un Kokiri hors de la forêt est\n"
"un Kokiri mort!"
);

DECLARE_MESSAGE_FRA(0x100A,
UNSKIPPABLE "Cette peste de " COLOR("\x41") "Mido" COLOR("\x40") " m'a obligé à\n"
"tondre la pelouse devant la maison\n"
"de Saria."BOX_BREAK
UNSKIPPABLE "Mido drague Saria en lui rendant \n"
"service! Mais au bout du compte \n"
"c'est moi qui me tape le sale \n"
"boulot à sa place!" TEXTID("\x10\x0B")
);

DECLARE_MESSAGE_FRA(0x100B,
"Toi et " COLOR("\x41") "Saria" COLOR("\x40") ", vous êtes plutôt \n"
"copains, non? Alors pourquoi tu \n"
"m'aiderais pas un peu à couper \n"
"cette herbe!"BOX_BREAK"Tu n'as qu'à garder tout ce que tu \n"
"y trouveras."
);

DECLARE_MESSAGE_FRA(0x100C,
UNSKIPPABLE "Bravo! \n"
"Voilà comment s'utilise une " COLOR("\x44") "fée" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "C'est vraiment chouette d'en avoir\n"
"une, hein?"BOX_BREAK
UNSKIPPABLE "Je vais t'apprendre à parler aux \n"
"gens avec ta fée!" TEXTID("\x10\x0D")
);

DECLARE_MESSAGE_FRA(0x100D,
"Quand une fée vole autour de\n"
"quelqu'un, utilise " COLOR("\x44") "[L]" COLOR("\x40") " pour " COLOR("\x41") "regarder" COLOR("\x40") " \n"
"dans sa direction."BOX_BREAK"Utilise la " COLOR("\x44") "Visée [L]" COLOR("\x40") " pour parler \n"
"aux gens de loin, un peu comme\n"
"nous sommes en train de faire."BOX_BREAK"Et si tu n'as rien à cibler, appuie \n"
"sur " COLOR("\x44") "[L]" COLOR("\x40") " pour " COLOR("\x41") "regarder" COLOR("\x40") " devant toi."
);

DECLARE_MESSAGE_FRA(0x100E,
UNSKIPPABLE "Ah! Enfin tu as eu ta " COLOR("\x44") "fée" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Mais tu as encore beaucoup à \n"
"apprendre!" TEXTID("\x10\x19")
);

DECLARE_MESSAGE_FRA(0x100F,
UNSKIPPABLE  SFX("\x68\x63") "Yipii! " QUICKTEXT_ENABLE "Quelle bonne nouvelle!" QUICKTEXT_DISABLE "\n"
"Je suis si heureuse!"BOX_BREAK
UNSKIPPABLE "Tu es maintenant un vrai Kokiri,\n"
NAME "!" TEXTID("\x10\x10")
);

DECLARE_MESSAGE_FRA(0x1010,
UNSKIPPABLE "Alors, c'est vrai? \n"
"Le très vénérable Arbre Mojo t'a \n"
"convoqué?"BOX_BREAK
UNSKIPPABLE "C'est un véritable honneur d'être\n"
"convoqué par le vénérable Arbre\n"
"Mojo, tu sais!" TEXTID("\x10\x03")
);

DECLARE_MESSAGE_FRA(0x1011,
UNSKIPPABLE  SHIFT("\x1C") "Oh...alors tu pars...déjà..."
);

DECLARE_MESSAGE_FRA(0x1012,
UNSKIPPABLE "Ce n'est pas grave...\n"
"Nous serons amis pour toujours...\n"
"N'est-ce pas?"
);

DECLARE_MESSAGE_FRA(0x1013,
UNSKIPPABLE "Je veux que tu gardes cet \n"
"ocarina...\n"
"Prends-en grand soin!"
);

DECLARE_MESSAGE_FRA(0x1014,
"Pense à moi en jouant de l'ocarina.\n"
"Et un jour peut-être...\n"
"Tu reviendras me voir..."
);

DECLARE_MESSAGE_FRA(0x1015,
UNSKIPPABLE "Oh... Navi...\n"
"Enfin te voici..."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Sois le bienvenu..."BOX_BREAK
UNSKIPPABLE "Ecoute, écoute bien, jeune enfant...\n"
"Moi, " COLOR("\x41") "l'Arbre Mojo" COLOR("\x40") ", de par mes \n"
"sages paroles, vais te révéler la\n"
"sombre réalité!"BOX_BREAK
UNSKIPPABLE "Ton sommeil, depuis plusieurs\n"
"lunes, est tourmenté par\n"
"d'épuisants songes et de terribles \n"
"cauchemars..."BOX_BREAK
UNSKIPPABLE "Alors que les forces obscures\n"
"grandissent, une aura maléfique\n"
"s'étend sur le monde, pervertissant\n"
"nos rêves de sombres présages!"BOX_BREAK
UNSKIPPABLE "Et toi aussi, jeune enfant, tu as \n"
"ressenti cette infâmie..."BOX_BREAK
UNSKIPPABLE  NAME "... \n"
"Le temps est venu pour toi de \n"
"mettre ton courage à l'épreuve..." TEXTID("\x10\x16")
);

DECLARE_MESSAGE_FRA(0x1016,
"Je suis sous l'emprise d'une\n"
"odieuse " COLOR("\x41") "malédiction" COLOR("\x40") "...\n"
"Pour me libérer, j'ai besoin de \n"
"ta vaillance et de ta sagesse."BOX_BREAK"Auras-tu le courage d'entreprendre\n"
"cette noble quête?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1017,
UNSKIPPABLE "Alors entre, brave " NAME ",\n"
"et toi aussi Navi..."BOX_BREAK
UNSKIPPABLE "Navi la fée, tu aideras   \n"
NAME " de ton mieux..."BOX_BREAK
UNSKIPPABLE "Et toi " NAME ", quand " COLOR("\x44") "Navi \n"
COLOR("\x40") "désirera te parler, utilise " COLOR("\x46") "[C-Up] " COLOR("\x40") "pour\n"
"écouter ses conseils avisés..."
);

DECLARE_MESSAGE_FRA(0x1018,
"Soit... Il est sans doute encore \n"
"trop tôt pour toi...\n"
"Alors retourne dans la forêt pour \n"
"terminer ton apprentissage..."BOX_BREAK"Une fois prêt, reviens te présenter\n"
"devant moi... Parle en appuyant \n"
"sur " COLOR("\x44") "[L]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x1019,
"L'" COLOR("\x42") "aire d'entraînement sylvestre " COLOR("\x40") " \n"
"t'enseignera de nouvelles \n"
"techniques. Dirige-toi vers \n"
"cette colline..."
);

DECLARE_MESSAGE_FRA(0x101A,
UNSKIPPABLE  SFX("\x38\x82")  QUICKTEXT_ENABLE "Aïe-ouille-aïe!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Pardon, seigneur!" QUICKTEXT_DISABLE "\n"
"Je te donne un indice et tu me \n"
"laisses partir, OK?"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Tu peux sauter d'une falaise\n"
"sans te faire mal. Maintiens " COLOR("\x44") "[Control Stick]" COLOR("\x40") " \n"
"vers l'avant pour faire une roulade\n"
"et ainsi amortir ta chute."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Bon d'accord, ça ne marche pas\n"
"à tous les coups... Surtout si la \n"
"falaise est super haute...\n"
"Gnark, gnark..."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Essaie quand même!\n"
QUICKTEXT_ENABLE "Warf.. arf.. arf!!!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x101B,
"Tiens tiens!...\n"
"On dirait bien le p'tit Kokiri\n"
"derrière ce masque!"
);

DECLARE_MESSAGE_FRA(0x101C,
"Pas mal ton masque. Il me plaît!\n"
"Avec ça sur ma face, j'aurai l'air\n"
"d'un dur, un vrai!"BOX_BREAK"Donne! Donne! Donne!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Jamais" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x101D,
"Beuh! T'es nul..."
);

DECLARE_MESSAGE_FRA(0x101E,
"Ouais!!! Je vais le porter toute\n"
"la journée!"
);

DECLARE_MESSAGE_FRA(0x101F,
UNSKIPPABLE  SFX("\x48\x07") "Il n'a donné que " COLOR("\x41") "10 Rubis" COLOR("\x40") "! Et ce \n"
"masque en vaut 20! Tu t'es fait \n"
"avoir, mec!"BOX_BREAK
UNSKIPPABLE "Retournons à la Foire aux Masques\n"
"payer les " COLOR("\x41") "20 Rubis" COLOR("\x40") ". La différence, \n"
"c'est pour ta pomme!!!"
);

DECLARE_MESSAGE_FRA(0x1020,
"Tous mes copains veulent le même \n"
"masque, j'ai la super cote!!!\n"
"Nananèreuh..."
);

DECLARE_MESSAGE_FRA(0x1021,
"Tout va bien? \n"
"Tu n'as pas quitté la forêt?"
);

DECLARE_MESSAGE_FRA(0x1022,
"Sais-tu qu'en maintenant " COLOR("\x44") "▼ " COLOR("\x40") "vers" COLOR("\x44") "\n"
COLOR("\x40") "l'avant pendant un saut tu peux \n"
"faire une roulade pour amortir ta \n"
"chute?"BOX_BREAK"Bien sûr, tomber de trop haut te\n"
"fera quand même bobo..."
);

DECLARE_MESSAGE_FRA(0x1023,
"Saria t'attend à l'endroit habituel."
);

DECLARE_MESSAGE_FRA(0x1024,
UNSKIPPABLE "Félicitations, " NAME "..."
);

DECLARE_MESSAGE_FRA(0x1025,
"Whoa! Il est cool ton lance-pierre!"BOX_BREAK"Tu peux viser en maintenant " COLOR("\x46") "[C]" COLOR("\x40") "\n"
"et tirer en le relâchant!\n"
"Pratique, non?"BOX_BREAK"Garde ton lance-pierre en main, \n"
"cible avec la " COLOR("\x44") "Visée [L] " COLOR("\x40") "et" COLOR("\x44") " " COLOR("\x41") "tire en \n"
"te déplaçant!\n"
COLOR("\x40") "Tu le savais pas ça, hein?"
);

DECLARE_MESSAGE_FRA(0x1026,
"Hélas non, " NAME "...\n"
"Sache que mon temps est compté..."
);

DECLARE_MESSAGE_FRA(0x1027,
UNSKIPPABLE "Maintenant...écoute-moi bien... \n"
"Un" COLOR("\x41") " vil cavalier du désert " COLOR("\x40") "m'a \n"
"infligé cette terrible et odieuse \n"
"malédiction..."
);

DECLARE_MESSAGE_FRA(0x1028,
"Tu cherches Saria? \n"
"Elle est dans les " COLOR("\x42") "Bois Perdus" COLOR("\x40") ".\n"
"Comme d'habitude..."BOX_BREAK"Ne dis pas que tu ne sais plus \n"
"comment y aller! L'entrée est sur \n"
"la falaise au-dessus du village!"BOX_BREAK"Je parie que tu vas te perdre...\n"
"Minable!"BOX_BREAK
SHIFT("\x51")  QUICKTEXT_ENABLE "Pfeuhh!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x1029,
UNSKIPPABLE "Tu ne dois surtout pas laisser \n"
"l'homme du désert en armure noire \n"
"s'approcher de la sainte Triforce..."BOX_BREAK
UNSKIPPABLE "Et tu ne permettras jamais que \n"
"cet homme au coeur si mauvais \n"
"puisse s'immiscer dans le très \n"
"Saint Royaume des Légendes..."BOX_BREAK
UNSKIPPABLE "Ce vil chacal m'a jeté cette \n"
"malédiction infecte et mortelle \n"
"pour saper mon pouvoir."BOX_BREAK
UNSKIPPABLE "Ce sort si néfaste me promet un \n"
"trépas imminent..."BOX_BREAK
UNSKIPPABLE "Même si tes vaillants efforts\n"
"ont eu raison de ce maléfice, mon\n"
"destin est scellé depuis le début..."BOX_BREAK
UNSKIPPABLE "Hélas, je ne peux m'y soustraire:\n"
"le moment fatal est proche..."BOX_BREAK
UNSKIPPABLE "Mais ne te lamente pas sur \n"
"mon sort..."BOX_BREAK
UNSKIPPABLE "Je t'ai transmis mon savoir...\n"
"Tu connais la vérité maintenant...\n"
"Mon rôle s'achève ici..."BOX_BREAK
UNSKIPPABLE "Tu es le dernier espoir d'Hyrule!"
);

DECLARE_MESSAGE_FRA(0x102A,
UNSKIPPABLE "La destinée du monde dépend de \n"
"tes actes...\n"
NAME "...\n"
"Tu es courageux et vaillant..."BOX_BREAK
UNSKIPPABLE "Navi, belle petite fée...\n"
"Aide " NAME " dans sa \n"
"quête..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "Je t'en prie... Navi..." TEXT_SPEED("\x00") "\n"
TEXT_SPEED("\x03") "...Adieuuuu..." TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_FRA(0x102B,
UNSKIPPABLE  COLOR("\x44") "Allons au Château d'Hyrule,\n"
NAME "!!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x102C,
UNSKIPPABLE  TEXT_SPEED("\x01")  COLOR("\x44") "Adieu..." COLOR("\x40")  TEXT_SPEED("\x00")  COLOR("\x44") "Vénérable Arbre Mojo..." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x102D,
"Dommage...Hein? Hein?"
);

DECLARE_MESSAGE_FRA(0x102E,
"Tu veux encore tenter ta chance?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x102F,
UNSKIPPABLE "Hé, toi là! \n"
"\"" COLOR("\x44") "Monsieur J'ai-pas-d'fée" COLOR("\x40") "!\"\n"
"Tu lui veux quoi au vénérable \n"
"Arbre Mojo?"BOX_BREAK
UNSKIPPABLE "Sans fée t'es même pas un vrai \n"
"Kokiri, d'abord!" TEXTID("\x10\xD0")
);

DECLARE_MESSAGE_FRA(0x1030,
"Si tu veux passer, " COLOR("\x42") "equipe-toi" COLOR("\x41") " " COLOR("\x40") "\n"
"d'abord d'une " COLOR("\x41") "épée" COLOR("\x40") " et d'un " COLOR("\x44") "bouclier" COLOR("\x43") "," COLOR("\x40") "\n"
"minus!"BOX_BREAK
SHIFT("\x51")  QUICKTEXT_ENABLE "Pfeuh!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x1031,
SHIFT("\x4D")  QUICKTEXT_ENABLE "Quoi?!" QUICKTEXT_DISABLE "\n"
UNSKIPPABLE  COLOR("\x41") "Mido " COLOR("\x40") "ne veut pas te laisser voir\n"
"le vénérable Arbre Mojo?" TEXTID("\x10\xC8")
);

DECLARE_MESSAGE_FRA(0x1032,
"Va t'acheter un " COLOR("\x44") "bouclier " COLOR("\x40") "à la \n"
"boutique Kokiri. Mais pour l'" COLOR("\x41") "épée" COLOR("\x40") "... \n"
"Cherche bien du côté de la forêt!"
);

DECLARE_MESSAGE_FRA(0x1033,
UNSKIPPABLE "Si tu veux voir le Vénérable Arbre\n"
"Mojo, Il te faut d'abord une " COLOR("\x41") "épée" COLOR("\x40") " \n"
"et un " COLOR("\x44") "bouclier" COLOR("\x40") "!" TEXTID("\x10\xD2")
);

DECLARE_MESSAGE_FRA(0x1034,
"Moââ, le grand Mido, je ne \n"
"t'accepterai jamais comme l'un\n"
"des nôtres!"BOX_BREAK"Et puis d'abord, comment t'as fait \n"
"pour être le chouchou de Saria et\n"
"du vénérable Arbre Mojo?!  \n"
".......Pfeuuh!......."
);

DECLARE_MESSAGE_FRA(0x1035,
"Je peux te renseigner sur les \n"
COLOR("\x41") "icônes " COLOR("\x40") "en haut de l'écran. \n"
TWO_CHOICE  COLOR("\x42") "Les icônes jaunes\n"
"Les icônes vertes" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1036,
"Les trois icônes jaunes dans le \n"
"coin en haut à droite s'appellent:\n"
COLOR("\x46") "Icônes" COLOR("\x40") " " COLOR("\x46") "[C]" COLOR("\x40") "."BOX_BREAK"Elles montrent ce que tu peux \n"
"utiliser avec " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down] \n"
COLOR("\x40") "et " COLOR("\x46") "[C-Right]" COLOR("\x40") "."BOX_BREAK"Quand tu obtiens un nouvel " COLOR("\x46") "objet" COLOR("\x40") ", \n"
"tu peux l'assigner à " COLOR("\x46") "[C]" COLOR("\x40") " en activant\n"
"le menu de l'" COLOR("\x46") "inventaire" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x1037,
"L'icône verte en haut de l'écran \n"
"est l'" COLOR("\x42") "Icône d'Action" COLOR("\x40") "."BOX_BREAK"Cette icône t'indique les actions\n"
"réalisables en appuyant sur " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Selon l'endroit et le moment, il\n"
"te permettra de faire\n"
"différentes actions.\n"
"Observe bien l'icône d'action!"
);

DECLARE_MESSAGE_FRA(0x1038,
"Je suis incollable sur la " COLOR("\x41") "carte" COLOR("\x40") " et \n"
"les " COLOR("\x41") "objets" COLOR("\x40") "... Pose-moi n'importe\n"
"quelle question mais prépare-toi à  \n"
"de longues explications!"BOX_BREAK"Bon alors, tu veux savoir quoi?\n"
THREE_CHOICE  COLOR("\x42") "Ben...C'est quoi la carte?\n"
"Heu..Les objets... \n"
"Houlà! Me parle pas, toi!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1039,
"Il y a une " COLOR("\x41") "carte" COLOR("\x40") " affichée dans le \n"
"coin en bas à droite."BOX_BREAK"La " COLOR("\x46") "flèche jaune" COLOR("\x40") " montre ta position \n"
"et ton orientation actuelles. La \n"
COLOR("\x41") "marque rouge" COLOR("\x40") " indique l'endroit par \n"
"lequel tu es entré sur cette carte."BOX_BREAK"Tu peux supprimer l'affichage de la \n"
"carte avec " COLOR("\x44") "[D-Pad]" COLOR("\x40") "."BOX_BREAK"Pour connaître le nom des divers\n"
"emplacements de la carte, appuie \n"
"sur " COLOR("\x44") "START" COLOR("\x40") "."BOX_BREAK"Tu feras alors apparaître le\n"
COLOR("\x41") "Sous-Menu de la Carte" COLOR("\x40") "."BOX_BREAK"Seront alors affichés la carte\n"
"générale d'Hyrule ainsi qu'une\n"
"multitude de renseignements!\n"
"Tu as bien tout compris?"
);

DECLARE_MESSAGE_FRA(0x103A,
"Les objets appartiennent à trois\n"
"catégories différentes:\n"
"l'" COLOR("\x42") "Equipement" COLOR("\x40") ", l'" COLOR("\x46") "Inventaire" COLOR("\x40") " et \n"
"le " COLOR("\x44") "Statut" COLOR("\x40") "."BOX_BREAK"Les objets de" COLOR("\x43") " " COLOR("\x40") "l'" COLOR("\x42") "Equipement" COLOR("\x40") " sont  \n"
"les épées, les boucliers les \n"
"tuniques, etc... Equipe-les pour \n"
"les rendre actifs!"BOX_BREAK"Ceux de l'" COLOR("\x46") "Inventaire" COLOR("\x40") " peuvent être \n"
"assignés à " COLOR("\x46") "[C-Left]" COLOR("\x40") ", " COLOR("\x46") "[C-Down]" COLOR("\x40") " et \n"
COLOR("\x46") "[C-Right]" COLOR("\x40") ". Utilise-les avec " COLOR("\x46") "[C]" COLOR("\x40") "!"BOX_BREAK"Ceux du " COLOR("\x44") "Statut" COLOR("\x40") " sont des objets  \n"
"amassés au gré de l'aventure.\n"
"Tu ne peux que les porter!"BOX_BREAK"Si tu veux organiser ton\n"
"équipement ou juste vérifier ton \n"
"inventaire, appuie sur " COLOR("\x44") "START" COLOR("\x40") ". Des \n"
"sous-menus apparaîtront!"BOX_BREAK"Passe d'un sous-menu à l'autre \n"
"avec " COLOR("\x44") "[L]" COLOR("\x40") " ou " COLOR("\x44") "[R]" COLOR("\x40") ". Familiarise-toi \n"
"avec ce système!"BOX_BREAK"Utilise " COLOR("\x42") "[A]" COLOR("\x40") " pour activer un \n"
COLOR("\x42") "Equipement" COLOR("\x40") ", et " COLOR("\x46") "[C-Left]" COLOR("\x40") "," COLOR("\x46") " [C-Down] " COLOR("\x40") "ou" COLOR("\x46") " [C-Right]" COLOR("\x40") " \n"
"pour l'" COLOR("\x46") "Inventaire" COLOR("\x40") "."BOX_BREAK"Bwouff...C'était long!!!\n"
"J'espère que tu as bien tout \n"
"compris?"
);

DECLARE_MESSAGE_FRA(0x103B,
"Souviens-toi bien: pour \n"
COLOR("\x41") "sauvegarder" COLOR("\x40") ", appuie sur " COLOR("\x44") "START" COLOR("\x40") " \n"
"pour accéder aux sous-menus puis \n"
"sur " COLOR("\x41") "[B]" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x103C,
"Ma soeur est partie faire des \n"
"emplettes à la Boutique au toit \n"
"rouge. Hi hi!"BOX_BREAK"Au fait, un " COLOR("\x41") "Rubis" COLOR("\x40") " " COLOR("\x42") "vert" COLOR("\x40") " ne vaut \n"
"qu'un rubis, mais un " COLOR("\x43") "bleu" COLOR("\x40") " en vaut\n"
"cinq et un " COLOR("\x41") "rouge" COLOR("\x40") " en vaut vingt!\n"
"Hii hii hihi!"
);

DECLARE_MESSAGE_FRA(0x103D,
"Ce que propose cette boutique\n"
"se trouve dans la forêt!\n"
"Tii hii!"BOX_BREAK"Tu sais comment ça s'utilise un \n"
COLOR("\x41") "Bouclier Mojo" COLOR("\x40") ", hein, tu l'sais??"BOX_BREAK"Une fois acheté, appuie sur " COLOR("\x44") "START" COLOR("\x41") "\n"
COLOR("\x40") "pour accéder aux sous-menus. \n"
"Sélectionne le " COLOR("\x42") "sous-menu \n"
"Equipement" COLOR("\x43") " " COLOR("\x40") "avec " COLOR("\x44") "[L]" COLOR("\x40") " ou " COLOR("\x44") "[R]" COLOR("\x40") "."BOX_BREAK"Dans le " COLOR("\x42") "Sous-Menu Equipement" COLOR("\x40") ", \n"
"choisis l'objet qui t'intéresse et \n"
"active-le avec " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Une fois ton bouclier prêt,\n"
"brandis-le avec " COLOR("\x44") "[R]" COLOR("\x40") " et change ton \n"
"angle de défense avec " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"Tii hii!"
);

DECLARE_MESSAGE_FRA(0x103E,
"Veux-tu savoir comment utiliser\n"
"le " COLOR("\x46") "[C-Up]" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x103F,
"Appuie sur " COLOR("\x46") "[C-Up] " COLOR("\x40") "pour changer de \n"
"vue."BOX_BREAK"Dans un endroit comme celui-ci, \n"
"tu activeras une vue du dessus. \n"
"Mais à l'extérieur tu activeras une\n"
"vue subjective."BOX_BREAK"Quand \"" COLOR("\x46") "Navi" COLOR("\x40") "\" apparaît en haut de \n"
"l'écran, ta fée a quelque chose à\n"
"dire! Appuie alors sur " COLOR("\x46") "[C-Up] " COLOR("\x40") "pour \n"
"l'écouter!"
);

DECLARE_MESSAGE_FRA(0x1040,
"C'est sûr, tu pourrais le découvrir\n"
"tout seul!"
);

DECLARE_MESSAGE_FRA(0x1041,
"Mouais...C'est pas exactement \n"
"comme ça, la chanson de Saria..."
);

DECLARE_MESSAGE_FRA(0x1042,
"Mido est vraiment furieux!\n"
"Que lui est-il arrivé?"
);

DECLARE_MESSAGE_FRA(0x1043,
"Quoi? Où tu vas?!"BOX_BREAK"Au château?\n"
"C'est quoi un château?"
);

DECLARE_MESSAGE_FRA(0x1044,
"Un Kokiri ne peut quitter la forêt!\n"
"On dit souvent: \n"
"\"Qui n'en sort, n'en meurt!\""BOX_BREAK"...Comment ça?\n"
"Tu vas quitter la forêt?\n"
"Et notre proverbe?\n"
"T'en fais quoi?!"
);

DECLARE_MESSAGE_FRA(0x1045,
UNSKIPPABLE "Hé, " NAME "!\n"
"Qu'as-tu encore fait?!"BOX_BREAK
UNSKIPPABLE "Le très vénérable Arbre Mojo...\n"
"Il est...mort...?"BOX_BREAK
UNSKIPPABLE "Comment as-tu pu faire une chose \n"
"pareille?! Tout est de ta faute!!\n"
"Nous allons tous mourir à cause \n"
"de toi!!!" EVENT
);

DECLARE_MESSAGE_FRA(0x1046,
QUICKTEXT_ENABLE "Hé!!" QUICKTEXT_DISABLE "\n"
"Qu'est-ce que tu trafiques \n"
"chez moi?!"
);

DECLARE_MESSAGE_FRA(0x1047,
UNSKIPPABLE  NAME ", tu vas bien?" TEXTID("\x10\x48")
);

DECLARE_MESSAGE_FRA(0x1048,
"Saria et " NAME " seront \n"
"amis pour toujours."
);

DECLARE_MESSAGE_FRA(0x1049,
"Il est arrivé quelque chose au \n"
"très vénérable Arbre Mojo?"
);

DECLARE_MESSAGE_FRA(0x104A,
"La forêt a changé... "
);

DECLARE_MESSAGE_FRA(0x104B,
NAME ", \n"
"vas-tu nous quitter?"
);

DECLARE_MESSAGE_FRA(0x104C,
"Si jamais tu perds ton bouclier, \n"
"reviens nous voir!"
);

DECLARE_MESSAGE_FRA(0x104D,
SFX("\x38\x80") "Mes frères sont tous d'accord...\n"
"Tu es le sosie de notre totem!"BOX_BREAK
SFX("\x38\x80") "Accepte l'offrande de notre \n"
"communauté. Prends ces quelques \n"
COLOR("\x41") "Bâtons" COLOR("\x40") " " COLOR("\x41") "Mojo" COLOR("\x40") ". Tu pourras \n"
"aussi en transporter plus!"BOX_BREAK"Abracadabra!"BOX_BREAK
SFX("\x38\x80") "Alakazaaaam!" EVENT
);

DECLARE_MESSAGE_FRA(0x104E,
"Depuis la mort du très vénérable \n"
"Arbre Mojo de nombreux monstres\n"
"sont apparus dans la forêt...\n"
"J'ai très peur!"
);

DECLARE_MESSAGE_FRA(0x104F,
UNSKIPPABLE "Un vent diabolique nous vient du \n"
"Temple de la forêt."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Saria" COLOR("\x40") ", avant de partir, nous a dit:\n"
"\"Je dois aller voir ce qu'il se \n"
"passe là-bas!\"" TEXTID("\x10\x50")
);

DECLARE_MESSAGE_FRA(0x1050,
"Le " COLOR("\x42") "Temple de la Forêt se trouve\n"
COLOR("\x40") "près du Bosquet Sacré au fond \n"
"des Bois Perdus."
);

DECLARE_MESSAGE_FRA(0x1051,
"Saria est partie dans le temple, \n"
"mais elle n'en est jamais revenue..."
);

DECLARE_MESSAGE_FRA(0x1052,
"Hé, m'sieur! Vous pouvez pas \n"
"utiliser un Bouclier Mojo!\n"
"C'est pour les gamins!"
);

DECLARE_MESSAGE_FRA(0x1053,
"Hein? Où est Saria? \n"
"Vous la connaissez, Saria?\n"
"Heu...t'es un menteur, monsieur?" TEXTID("\x10\x54")
);

DECLARE_MESSAGE_FRA(0x1054,
"Mais où est donc " COLOR("\x41") "Mido" COLOR("\x40") "... \n"
"On a besoin de lui par ces temps \n"
"difficiles!"
);

DECLARE_MESSAGE_FRA(0x1055,
"Vous êtes entré dans la forêt \n"
"sans problème?"BOX_BREAK"Les monstres ne vous ont pas \n"
"attaqué? Du temps du Vénérable \n"
"Arbre Mojo, vous n'auriez pas vu \n"
"de pareilles nuisances dans le coin." TEXTID("\x10\x56")
);

DECLARE_MESSAGE_FRA(0x1056,
"C'est super dangereux dehors!\n"
"Alors je reste cloîtré chez moi!\n"
"....j'm'ennuie..."
);

DECLARE_MESSAGE_FRA(0x1057,
"Les " COLOR("\x41") "flèches" COLOR("\x40") " ne sont que pour les\n"
"archers... Vous avez un " COLOR("\x41") "arc" COLOR("\x40") ", vous?"
);

DECLARE_MESSAGE_FRA(0x1058,
UNSKIPPABLE "Avez-vous beaucoup voyagé, \n"
"monsieur?\n"
"Avez-vous déja rencontré un \n"
"garçon nommé " NAME "?"BOX_BREAK
UNSKIPPABLE "Mido à raconté à tout le monde \n"
"que " NAME " a tué le\n"
"vénérable Arbre Mojo..."BOX_BREAK
UNSKIPPABLE "Il n'y avait que Saria pour dire le \n"
"contraire!\n"
"Enfin...quand Saria était encore\n"
"parmi nous." TEXTID("\x10\x59")
);

DECLARE_MESSAGE_FRA(0x1059,
"Qui peut savoir la vérité?"
);

DECLARE_MESSAGE_FRA(0x105A,
"On s'connaît, monsieur?"
);

DECLARE_MESSAGE_FRA(0x105B,
UNSKIPPABLE "Monsieur, connaissez-vous un \n"
"garçon du nom de " NAME "?"BOX_BREAK
UNSKIPPABLE "Il a quitté la forêt et n'est jamais\n"
"revenu..." TEXTID("\x10\x5C")
);

DECLARE_MESSAGE_FRA(0x105C,
"Je me demande si " NAME "  \n"
"reviendra un jour..."
);

DECLARE_MESSAGE_FRA(0x105D,
UNSKIPPABLE "Etre grand, c'est trop cool!\n"
"Je veux être une grosse brute \n"
"comme vous, m'sieur!"BOX_BREAK
UNSKIPPABLE "I Je voudrais être très grand et \n"
"très fort pour me battre contre \n"
"les Pestes Mojo, mais...je ne suis\n"
"que petit et faible..." TEXTID("\x10\x5E")
);

DECLARE_MESSAGE_FRA(0x105E,
"Nous les Kokiris ne seront jamais \n"
"grands...\n"
"C'est vraiment pas drôle!"
);

DECLARE_MESSAGE_FRA(0x105F,
"Pourquoi une fée vous suit \n"
"partout? Vous n'êtes pourtant pas \n"
"un Kokiri!"
);

DECLARE_MESSAGE_FRA(0x1060,
UNSKIPPABLE "Mais qui êtes-vous? \n"
"Votre habit Kokiri ne marche pas!\n"
"Je ne suis pas né de la dernière\n"
"giboulée!" TEXTID("\x10\x61")
);

DECLARE_MESSAGE_FRA(0x1061,
"J'ai promis à Saria de ne laisser \n"
"passer personne."
);

DECLARE_MESSAGE_FRA(0x1062,
UNSKIPPABLE "Bonzour tout le monde! Ze suis le \n"
COLOR("\x41") "Bourzeon de l'Arbre Mozo" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Comme tu as brizé la malédiction\n"
"du Temple de la Forêt, ze peux \n"
"croître et fleurir!"BOX_BREAK
UNSKIPPABLE "Merzi beaucoup!"
);

DECLARE_MESSAGE_FRA(0x1063,
UNSKIPPABLE "Tu as vu tes zanciens zamis?\n"
"Ze ne pense pas qu'ils te \n"
"reconnaissent avec ta grande \n"
"taille..."BOX_BREAK
UNSKIPPABLE "C'est parze que les " COLOR("\x42") "Kokiris" COLOR("\x40") " ne \n"
"grandissent zamais! Même après \n"
"sept ans, ils restent des zenfants!"
);

DECLARE_MESSAGE_FRA(0x1064,
UNSKIPPABLE "Tu dois te demander alors \n"
"pourquoi tu as grandi!"BOX_BREAK
UNSKIPPABLE "Bon, comme tu as dézà dû le \n"
"deviner, tu n'es pas vraiment un \n"
"Kokiri! Tu es zen fait " COLOR("\x44") "Hylien" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Ze suis si content de te révéler\n"
"ce secret!"
);

DECLARE_MESSAGE_FRA(0x1065,
"Il y a très longtemps, il y eut \n"
"une guerre terrible, avant même \n"
"que le roi Hyrule n'unifie ce pays."BOX_BREAK_DELAYED("\x5A") "Un zour, pour échapper à ce \n"
"conflit, une " COLOR("\x41") "Maman Hylienne" COLOR("\x40") " et son \n"
COLOR("\x41") "Petit Bébé" COLOR("\x40") " entrèrent dans cette \n"
"forêt interdite."BOX_BREAK_DELAYED("\x5A") "Cette pauvre maman était \n"
"gravement blessée. Son seul espoir\n"
"était de confier son bébé à l'Arbre\n"
"Mozo, l'esprit gardien de la forêt."BOX_BREAK_DELAYED("\x5A") "L'Arbre Mozo pouvait dézà sentir \n"
"le pouvoir de cet enfant dont la \n"
"destinée allait affecter le monde \n"
"entier. Ainsi fut-il adopté..."BOX_BREAK_DELAYED("\x5A") "Après la mort de sa pauvre \n"
"maman, il fut élevé comme un \n"
COLOR("\x42") "Kokiri" COLOR("\x40") ". Et désormais sa destinée\n"
"doit s'accomplir!" FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x1066,
UNSKIPPABLE "Tu es zun " COLOR("\x44") "Hylien" COLOR("\x40") ", depuis \n"
"touzours ze savais que tu \n"
"devais quitter la forêt."BOX_BREAK
UNSKIPPABLE "Tu connais ta propre destinée...\n"
"Tu sais ce qu'il te reste à \n"
"faire..."BOX_BREAK
UNSKIPPABLE "Tu dois sauver Hyrule!"BOX_BREAK
UNSKIPPABLE "Va, " NAME "... Dissipe la \n"
"malédiction zetée sur les temples\n"
"et rétablis paix et amour sur \n"
"Hyrule!!"
);

DECLARE_MESSAGE_FRA(0x1067,
UNSKIPPABLE  SHIFT("\x34") "Cette melodie?!"BOX_BREAK
UNSKIPPABLE "Saria la jouait tout le temps!\n"
"Vous...connaissez Saria?"BOX_BREAK
UNSKIPPABLE "Cette chanson..."BOX_BREAK
UNSKIPPABLE "Saria ne l'a enseignée qu'à ses\n"
"amis..." TEXTID("\x10\x6F")
);

DECLARE_MESSAGE_FRA(0x1068,
"Je ne sais pas pourquoi, mais... \n"
"Vous me rappelez...l'autre..."
);

DECLARE_MESSAGE_FRA(0x1069,
UNSKIPPABLE "Capturé dans l'enfer de ma \n"
"malédiction, assis sur le seuil de\n"
"la réalité et du rêve, il ne restera\n"
"de toi qu'un corps décharné!"
);

DECLARE_MESSAGE_FRA(0x106A,
UNSKIPPABLE "Merci, merci beaucoup...\n"
"Grâce à toi, je m'éveille à la \n"
"conscience de Sage..."BOX_BREAK
UNSKIPPABLE "Je suis " COLOR("\x42") "Saria" COLOR("\x40") ".\n"
"Sage du Temple de la Forêt..."
);

DECLARE_MESSAGE_FRA(0x106B,
UNSKIPPABLE  SHIFT("\x26") "Saria sera toujours...\n"
SHIFT("\x44") "Ton amie..." FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x106C,
UNSKIPPABLE "La course du temps est cruelle...\n"
"Sa vitesse est perçue différemment\n"
"par chacun, mais personne ne peut\n"
"la modifier..."BOX_BREAK
UNSKIPPABLE "Seule la mémoire des jours \n"
"anciens n'est pas altérée..."BOX_BREAK
UNSKIPPABLE "Pour revenir ici, joue le \n"
COLOR("\x42") "Menuet des bois" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x106D,
UNSKIPPABLE  NAME "...\n"
"A très bientôt..."
);

DECLARE_MESSAGE_FRA(0x106E,
"Saria n'est pas encore revenue...\n"
"Mais je sais qu'elle reviendra \n"
"bientôt..."
);

DECLARE_MESSAGE_FRA(0x106F,
UNSKIPPABLE "OK...\n"
"Je te fais confiance." TEXTID("\x10\x68")
);

DECLARE_MESSAGE_FRA(0x1070,
UNSKIPPABLE "Oh...Je vois..."BOX_BREAK
UNSKIPPABLE "Saria ne reviendra jamais..."BOX_BREAK
UNSKIPPABLE "Mais...je...j'avais fait une promesse \n"
"à Saria..."BOX_BREAK
UNSKIPPABLE "Si " NAME " revient un jour, \n"
"je voudrais lui dire que Saria \n"
"l'attend..."BOX_BREAK
UNSKIPPABLE "Parce que " TEXT_SPEED("\x03") "Saria...aimait..." TEXT_SPEED("\x00")  TEXTID("\x10\x71")
);

DECLARE_MESSAGE_FRA(0x1071,
SHIFT("\x46") "Mais toi..."BOX_BREAK"Fais-lui le message...\n"
"S'il te plaît..." TEXTID("\x10\xD6")
);

DECLARE_MESSAGE_FRA(0x1072,
"Apprends-moi à me battre comme\n"
"toi! Tout ce que je sais faire \n"
"c'est appuyer sur " COLOR("\x41") "[B]!\n"
COLOR("\x40") "Haaa! Si j'avais lu les pancartes!"
);

DECLARE_MESSAGE_FRA(0x1073,
"Vous ressemblez à quelqu'un que \n"
"je connais, monsieur."
);

DECLARE_MESSAGE_FRA(0x1074,
"Vous êtes tellement fort! Un jour, \n"
"je serai comme vous! Même si je \n"
"reste un nabot toute ma vie."
);

DECLARE_MESSAGE_FRA(0x1075,
NAME "... \n"
"Je me demande s'il reviendra\n"
"un jour..."
);

DECLARE_MESSAGE_FRA(0x1076,
"J'ai l'impression de vous connaître \n"
"depuis longtemps, monsieur!"
);

DECLARE_MESSAGE_FRA(0x1077,
"Le " COLOR("\x41") "Bourgeon de l'Arbre Mojo \n"
COLOR("\x40") "grandit paisiblement et la forêt\n"
"est de nouveau joyeuse!"
);

DECLARE_MESSAGE_FRA(0x1078,
"Nous assurerons tous ensemble la \n"
"protection de la forêt!"
);

DECLARE_MESSAGE_FRA(0x1079,
"Un vent paisible commence à \n"
"souffler sur la forêt."
);

DECLARE_MESSAGE_FRA(0x107A,
"Ce vent paisible fera sûrement\n"
"revenir " NAME " !"
);

DECLARE_MESSAGE_FRA(0x107B,
"Je me demande si Saria va revenir."
);

DECLARE_MESSAGE_FRA(0x107C,
NAME " reviendra un jour!\n"
"C'est certain!"
);

DECLARE_MESSAGE_FRA(0x107D,
UNSKIPPABLE  SHIFT("\x1F")  COLOR("\x44") "Vénérable Arbre Mojo...\n"
COLOR("\x40")  SHIFT("\x2D")  COLOR("\x44") "Je suis de retour!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x107E,
UNSKIPPABLE "L'homme maléfique ne cesse de \n"
"faire appel à ses sombres et vils \n"
"pouvoirs pour trouver le Saint \n"
"Royaume relié à Hyrule..."BOX_BREAK
UNSKIPPABLE "Car dans le Saint Royaume \n"
"sommeille la divine relique, la \n"
COLOR("\x44") "Triforce" COLOR("\x40") ", renfermant des pouvoirs\n"
"comparables à ceux des dieux..."
);

DECLARE_MESSAGE_FRA(0x107F,
QUICKTEXT_ENABLE  SHIFT("\x1A") "Avant le début du temps,\n"
SHIFT("\x2A") "avant que vie et \n"
SHIFT("\x2F") "esprit n'existent..." QUICKTEXT_DISABLE  FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x1080,
QUICKTEXT_ENABLE  SHIFT("\x07") "Trois déesses d'or et de lumière\n"
SHIFT("\x05") "descendirent sur l'amas chaotique\n"
SHIFT("\x1E") "qu'allait devenir Hyrule..." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x1081,
QUICKTEXT_ENABLE  SHIFT("\x1A") "Din, déesse de la Force..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x1082,
QUICKTEXT_ENABLE  SHIFT("\x12") "Nayru, déesse de la Sagesse..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x1083,
QUICKTEXT_ENABLE  SHIFT("\x13") "Farore, déesse du Courage..." QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x1084,
QUICKTEXT_ENABLE  SHIFT("\x53") "Din..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x1085,
QUICKTEXT_ENABLE  SHIFT("\x1F") "De ses bras enflammés,\n"
SHIFT("\x28") "elle sculpta le sol et\n"
SHIFT("\x29") "créa la terre rouge." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x1086,
QUICKTEXT_ENABLE  SHIFT("\x4C") "Nayru..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x1087,
QUICKTEXT_ENABLE  SHIFT("\x12") "Elle inonda de sa sagesse la\n"
SHIFT("\x10") "terre et apporta ordre et loi\n"
SHIFT("\x3A") "sur ce monde." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x1088,
QUICKTEXT_ENABLE  SHIFT("\x4B") "Farore..." QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x1089,
QUICKTEXT_ENABLE  SHIFT("\x0D") "De son âme infinie, elle donna\n"
SHIFT("\x0E") "vie aux êtres issus de l'ordre\n"
SHIFT("\x40") "et de la loi." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x108A,
QUICKTEXT_ENABLE  SHIFT("\x2B") "Les trois déesses, \n"
SHIFT("\x24") "leur oeuvre accomplie,\n"
SHIFT("\x06") "s'en retournèrent vers les cieux." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x108B,
QUICKTEXT_ENABLE  SHIFT("\x09") "Leur départ fit alors apparaître\n"
SHIFT("\x2D") "trois triangles d'or,\n"
SHIFT("\x0C") "seuls vestiges de leur pouvoir." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x108C,
QUICKTEXT_ENABLE  SHIFT("\x12") "Depuis, les triangles sacrés\n"
SHIFT("\x1B") "symbolisent l'essence de \n"
SHIFT("\x38") "notre création." QUICKTEXT_DISABLE  FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x108D,
QUICKTEXT_ENABLE  SHIFT("\x2F") "Et depuis ce jour,\n"
SHIFT("\x06") "Le Saint Royaume est le berceau\n"
SHIFT("\x1E") "des triangles de justice." QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x108E,
"Alors moucheron... Tu as appris à\n"
"combattre! Tu revendiques le sang\n"
"des guerriers..."BOX_BREAK_DELAYED("\x3C") "Tu n'as vaincu que mon faible\n"
"spectre... Quand l'heure de \n"
"l'affrontement sonnera, l'ombre du\n"
"trépas sera sur toi."BOX_BREAK_DELAYED("\x3C") "Ce fantôme était une création \n"
"pitoyable, je vais le bannir par-delà\n"
"les seuils dimensionnels!!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x108F,
UNSKIPPABLE "J'ai toujours su que tu reviendrais.\n"
"Je le savais, je te connais bien..."BOX_BREAK
UNSKIPPABLE "Non..."BOX_BREAK_DELAYED("\x1E")  UNSKIPPABLE "Tu n'as pas besoin de te justifier\n"
"devant moi..."BOX_BREAK
UNSKIPPABLE "Le destin n'a pas voulu que nous\n"
"vivions dans le même monde."
);

DECLARE_MESSAGE_FRA(0x1090,
UNSKIPPABLE "En temps que Sage de la forêt, \n"
"ma place est ici..."BOX_BREAK
UNSKIPPABLE "Tiens... Prends ce " COLOR("\x42") "Médaillon" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x1091,
UNSKIPPABLE "Tu as fait preuve de courage\n"
"et de sagesse..."BOX_BREAK
UNSKIPPABLE "Tu te révèles digne de mon estime\n"
"et de ma confiance..."
);

DECLARE_MESSAGE_FRA(0x1092,
"J'ai encore bien des choses à te\n"
"dire veux-tu bien les écouter?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1093,
UNSKIPPABLE  NAME "...\n"
"Va au Château d'Hyrule..."BOX_BREAK
UNSKIPPABLE "Tu y rencontreras la \n"
COLOR("\x41") "Princesse de la Destinée" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Prends cette " COLOR("\x41") "Pierre" COLOR("\x40") "...\n"
"Elle est la cause de la malédiction\n"
"jetée sur moi par l'homme sombre."
);

DECLARE_MESSAGE_FRA(0x1094,
UNSKIPPABLE "J'ai toujours su qu'un jour...\n"
"Tu quitterais la forêt,\n"
NAME "..."BOX_BREAK
UNSKIPPABLE "Car tu es différent de nous..."
);

DECLARE_MESSAGE_FRA(0x1095,
UNSKIPPABLE  SFX("\x68\x44")  COLOR("\x44") "Hé, " QUICKTEXT_ENABLE  NAME  QUICKTEXT_DISABLE "!\n"
"Debout! Maintenant!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Le très " COLOR("\x41") "vénérable Arbre Mojo \n"
COLOR("\x44") "veut te parler!\n"
"Réveille-toi, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1096,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44")  QUICKTEXT_ENABLE "Ho!" QUICKTEXT_DISABLE " Tu vas te lever, oui?" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "La destinée d'Hyrule repose-t-elle \n"
"sur un garçon aussi paresseux?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1097,
"Sauter, c'est plus à la mode. \n"
"Moi j'fais des " COLOR("\x41") "sauts périlleux" COLOR("\x40") "!\n"
"Tu sais en faire un, toi?"
);

DECLARE_MESSAGE_FRA(0x1098,
UNSKIPPABLE  COLOR("\x44") "Le très " COLOR("\x41") "vénérable Arbre Mojo " COLOR("\x44") "\n"
"veut te parler!\n"
"Allons-y tout de suite!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x1099,
UNSKIPPABLE  SHIFT("\x4B") "Navi...\n"
SHIFT("\x37") "Navi, où es-tu?\n"
SHIFT("\x3C") "Viens à moi..."
);

DECLARE_MESSAGE_FRA(0x109A,
UNSKIPPABLE  COLOR("\x44") "Navi la fée" COLOR("\x40") "...\n"
"Ecoute mes paroles, les paroles du\n"
"très vénérable" COLOR("\x41") " Arbre Mojo" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Sens-tu le danger qui rôde?\n"
"Cette aura ténébreuse qui s'abat \n"
"sur le royaume..."BOX_BREAK
UNSKIPPABLE "Des forces maléfiques s'activent\n"
"dans l'ombre et préparent l'invasion\n"
"d'Hyrule..."BOX_BREAK
UNSKIPPABLE "Depuis toujours la " COLOR("\x41") "Forêt Kokiri" COLOR("\x40") "\n"
"s'élève comme un rempart contre \n"
"les forces chaotiques, assurant le\n"
"maintien de l'ordre et de la loi..."BOX_BREAK
UNSKIPPABLE "Mais face à ce pouvoir terrifiant\n"
"et infernal, mes forces ne sont\n"
"que misère..."BOX_BREAK
UNSKIPPABLE "Le temps est venu pour ce " COLOR("\x41") "garçon \n"
"sans fée " COLOR("\x40") "de commencer son \n"
"périple..."BOX_BREAK
UNSKIPPABLE "Cet enfant dont la destinée est\n"
"de conduire Hyrule sur la voie de \n"
"la justice et de la vérité..."BOX_BREAK
UNSKIPPABLE "Va... " COLOR("\x44") "Navi" COLOR("\x40") "! Trouve notre jeune ami \n"
"et présente-le devant moi..."BOX_BREAK
UNSKIPPABLE "Il ne me reste que peu de temps."BOX_BREAK
UNSKIPPABLE "Vole, Navi, vole! Le destin de la \n"
"forêt, que dis-je, du monde dépend\n"
"de toi!!!"
);

DECLARE_MESSAGE_FRA(0x109B,
UNSKIPPABLE  SFX("\x38\x82") "Pitié, Seigneur! Je ne le ferai \n"
"plus jamais! Epargne-moi et je te \n"
"donne un indice."BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Tu ne pourras jamais battre mes \n"
"frères si tu ne respectes pas un\n"
"ordre précis!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Le bon ordre est..." TEXT_SPEED("\x05")  COLOR("\x44") "2 - 3 - 1!" COLOR("\x40")  TEXT_SPEED("\x00") "\n"
QUICKTEXT_ENABLE  COLOR("\x44") "Vingt-trois est numéro un! Ha ha!" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Tu crois que j'suis un traître?" EVENT
);

DECLARE_MESSAGE_FRA(0x109C,
UNSKIPPABLE  SFX("\x38\x82") "Qui t'a donné notre secret?!\n"
"Hmmm... " QUICKTEXT_ENABLE "ça me rend dingue!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "J'suis tellement en pétard que je \n"
"vais te dire le point faible de \n"
COLOR("\x41") "Gohma notre Reine" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Pour lui administrer le coup de \n"
"grâce, frappe son oeil avec ton \n"
"épée après l'avoir " COLOR("\x41") "étourdie" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Oh ma Reine, ma p'tite Reine..."BOX_BREAK
SFX("\x38\x80")  QUICKTEXT_ENABLE  SHIFT("\x1B") "Je ne suis qu'un traître!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x109D,
"Dans l'immense forêt d'Hyrule..."BOX_BREAK_DELAYED("\x28")  SHIFT("\x0B") "Les siècles m'ont choisi comme\n"
SHIFT("\x0F") "le gardien spirituel des bois...\n"
SHIFT("\x1F") "Je suis... l'Arbre Mojo..." FADE("\x46")
);

DECLARE_MESSAGE_FRA(0x109E,
SHIFT("\x0F") "Les Kokiris sont mes enfants.\n"
SHIFT("\x0F") "Ils sont le peuple de la forêt."BOX_BREAK_DELAYED("\x3C")  SHIFT("\x0A") "Dès la naissance, chaque Kokiri\n"
SHIFT("\x3C") "reçoit sa fée." FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x109F,
SHIFT("\x19") "Mais seul un jeune garçon\n"
SHIFT("\x2A") "n'avait pas de fée..." FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x10A0,
SFX("\x38\x82") "Je me rends, c'est bon! En \n"
"échange je veux bien te vendre \n"
"des Noix Mojo!\n"
COLOR("\x41") "5 unités   20 Rubis" COLOR("\x40") ", c'est le prix!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10A1,
SFX("\x38\x82") "T'es le plus fort! Je vais\n"
"te vendre des Bâtons Mojo, tiens!\n"
COLOR("\x41") "1 unité   15 Rubis, " COLOR("\x40") "t'en veux?" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10A2,
SFX("\x38\x82") "J'abandonne! Tu veux bien \n"
"m'acheter des coeurs?\n"
COLOR("\x41") "1 unité   10 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10A3,
SFX("\x38\x80")  QUICKTEXT_ENABLE "Alors...ça marche?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Non, jamais!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x10A4,
SFX("\x38\x82")  QUICKTEXT_ENABLE "GLOPS!!" QUICKTEXT_DISABLE "\n"
"J'me rentre, si c'est comme ça!"
);

DECLARE_MESSAGE_FRA(0x10A5,
SFX("\x38\x82") "Pas assez de rubis!\n"
"Reviens plus tard!"
);

DECLARE_MESSAGE_FRA(0x10A6,
SFX("\x38\x82") "T'en as plein tes poches!\n"
"reviens plus tard!"
);

DECLARE_MESSAGE_FRA(0x10A7,
SFX("\x38\x80")  QUICKTEXT_ENABLE  SHIFT("\x41") "Merci bien!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x10A8,
UNSKIPPABLE "Je t'attendais,\n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Nous sommes ici dans le " COLOR("\x41") "Bosquet \n"
"Sacré" COLOR("\x40") ". C'est mon jardin secret!\n"
"J'ai le sentiment que..."BOX_BREAK
UNSKIPPABLE "Cet endroit sera très important \n"
"pour nous deux. J'en suis sûre!"BOX_BREAK
UNSKIPPABLE "Joue de l'ocarina ici et tu pourras\n"
"parler avec les esprits de la forêt." TEXTID("\x10\xA9")
);

DECLARE_MESSAGE_FRA(0x10A9,
"Veux-tu jouer de l'ocarina \n"
"avec moi?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10AA,
UNSKIPPABLE "Essaie de suivre cette mélodie.\n"
"Tu es prêt?"
);

DECLARE_MESSAGE_FRA(0x10AB,
UNSKIPPABLE "Heu?!\n"
"T'es pas drôle!\n"
"Allez! Jouons ensemble!"
);

DECLARE_MESSAGE_FRA(0x10AC,
UNSKIPPABLE  SFX("\x68\x63")  SHIFT("\x3A") "Bravo! Bravo!"BOX_BREAK
UNSKIPPABLE "N'oublie jamais cette mélodie!\n"
"Tu me le promets?" TEXTID("\x10\xAD")
);

DECLARE_MESSAGE_FRA(0x10AD,
"Entonne le " COLOR("\x42") "Chant de Saria " COLOR("\x40") "si tu \n"
"as besoin de me parler..."
);

DECLARE_MESSAGE_FRA(0x10AE,
"Prends-tu bien soin de mon \n"
"ocarina?"
);

DECLARE_MESSAGE_FRA(0x10AF,
UNSKIPPABLE  SFX("\x38\x80") "Whoaa!\n"
"Tu es très fort!\n"
"Trois fois dans le mille!"BOX_BREAK
UNSKIPPABLE  SFX("\x38\x80") "Je me sens obligé de t'offrir\n"
"un cadeau! Prends donc ceci!" EVENT
);

DECLARE_MESSAGE_FRA(0x10B0,
"S'il y a quelqu'un pour savoir ce\n"
"que fait Saria, c'est bien Mido!"BOX_BREAK"Il est sûrement dans le coin."
);

DECLARE_MESSAGE_FRA(0x10B1,
SHIFT("\x5A")  COLOR("\x44") "??\n"
COLOR("\x40")  SHIFT("\x15")  COLOR("\x44") "Pas de réponse. Il doit dormir." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10B2,
UNSKIPPABLE "Un P'tit Poulet?  Comment ça?\n"
"Seul un chic type comme moi peut\n"
"s'en occuper..."BOX_BREAK
UNSKIPPABLE "Ce qui veut dire que..."BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x01") "Toi... " TEXT_SPEED("\x00") "Toi aussi, tu es un chic type!\n"
QUICKTEXT_ENABLE "Incroyable!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Un chic type! Un vrai!" QUICKTEXT_DISABLE "\n"
"Oh, je t'en supplie..."BOX_BREAK
UNSKIPPABLE "Apporte ceci à l'" COLOR("\x41") "Apothicaire" COLOR("\x40") " du\n"
"village Cocorico!" EVENT
);

DECLARE_MESSAGE_FRA(0x10B3,
"Dépêche-toi sinon ceci va pourrir!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"J'peux pas!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10B4,
"Ha bon. " QUICKTEXT_ENABLE "Tu l'prends comme ça?" QUICKTEXT_DISABLE "\n"
"T'es pas si chic que ça, alors!!\n"
QUICKTEXT_ENABLE "Dégage!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x10B5,
"Saria te cherchait...\n"
"L'as-tu vue?"
);

DECLARE_MESSAGE_FRA(0x10B6,
"Grouille-toi, mon nouveau copain!\n"
"Apporte-le à la vieille peau, avant \n"
"qu'il ne soit trop tard..."
);

DECLARE_MESSAGE_FRA(0x10B7,
UNSKIPPABLE "Le garçon n'est plus ici."BOX_BREAK
UNSKIPPABLE "Un Hylien perdu dans la forêt est\n"
"un Hylien de moins! (proverbe)"BOX_BREAK
UNSKIPPABLE "Un Hylien perdu dans la forêt \n"
"devient un monstre......\n"
"Il ne reste que sa scie. Hii hii." TEXTID("\x10\xB8")
);

DECLARE_MESSAGE_FRA(0x10B8,
"La mixture est à base de champi-\n"
"gnons. Voulez-vous la rendre?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10B9,
"Hi hi hi hi!\n"
"Vas-tu te transformer en monstre,\n"
"toi aussi?"
);

DECLARE_MESSAGE_FRA(0x10BA,
"Nous vendons des boucliers, mais\n"
"pas d'épées!" EVENT
);

DECLARE_MESSAGE_FRA(0x10BB,
UNSKIPPABLE "Tu connais le " COLOR("\x42") "Chant de Saria" COLOR("\x40") "! \n"
"Alors soyons amis! \n"
"Tiens, prends donc ceci!"
);

DECLARE_MESSAGE_FRA(0x10BC,
"Salut! Ne trouves-tu pas que mon\n"
"visage n'a rien d'extraordinaire?\n"
"J'aimerais avoir du style..."
);

DECLARE_MESSAGE_FRA(0x10BD,
"Reviens jouer quand tu veux!"
);

DECLARE_MESSAGE_FRA(0x10BE,
UNSKIPPABLE "Accompagne-nous avec ton ocarina. \n"
"Nous allons te donner le rythme."
);

DECLARE_MESSAGE_FRA(0x10BF,
UNSKIPPABLE "Quelle belle prestation!\n"
"En gage de notre amitié, \n"
"accepte donc ceci."
);

DECLARE_MESSAGE_FRA(0x10C0,
UNSKIPPABLE "Hé ho! Par ici!\n"
"Hou hou!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  NAME "... \n"
"Quel plaisir de te voir! \n"
"Ecoute donc mes sages paroles!\n"
"Hou hou...." TEXTID("\x10\xC1")
);

DECLARE_MESSAGE_FRA(0x10C1,
"Après avoir traversé les Bois \n"
"Perdus tu arriveras au " COLOR("\x42") "Bosquet\n"
"Sacré" COLOR("\x40") "."BOX_BREAK"Ce saint domaine ne fut exploré\n"
"que par très peu d'aventuriers."BOX_BREAK"Chuuut... Ecoute...\n"
"J'entends un chant mystérieux..."BOX_BREAK"Tu devrais tendre l'oreille à\n"
"ton tour! Hou hou hou!" EVENT
);

DECLARE_MESSAGE_FRA(0x10C2,
"Veux-tu que je répète tout ça?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10C3,
UNSKIPPABLE "Sois courageux et la forêt ne\n"
"te posera pas de problèmes..."BOX_BREAK
UNSKIPPABLE "Fais confiance à tes oreilles,\n"
"dirige-toi grâce aux sons de \n"
"la forêt! Hou hou!"
);

DECLARE_MESSAGE_FRA(0x10C4,
UNSKIPPABLE "Hou hou!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Saria t'a-t-elle appris une chanson?"BOX_BREAK
UNSKIPPABLE "Cette mélodie semble avoir de \n"
"mystérieux pouvoirs."BOX_BREAK
UNSKIPPABLE "Tu apprendras sûrement d'autres \n"
"chants au gré de ton périple..." TEXTID("\x10\xC5")
);

DECLARE_MESSAGE_FRA(0x10C5,
"Utilise ton ocarina avec\n"
COLOR("\x46") "[C]" COLOR("\x40") " au bon endroit et une\n"
COLOR("\x41") "portée " COLOR("\x40") "apparaîtra."BOX_BREAK"Je te conseille alors de jouer un\n"
"chant que tu connais."BOX_BREAK"Je te conseille aussi de jouer\n"
"même si la portée n'apparaît pas.\n"
"Comme ça:\n"
"Hou hou hou hout hout hout!" EVENT
);

DECLARE_MESSAGE_FRA(0x10C6,
"Veux-tu que je répète tout ça?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x10C7,
UNSKIPPABLE "Les mélodies que tu apprendras\n"
"seront enregistrées dans le \n"
COLOR("\x44") "Sous-Menu du Statut" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x10C8,
UNSKIPPABLE "Ohh...Le vilain! Je ne sais \n"
"pas pourquoi il est si méchant\n"
"avec tout le monde!"BOX_BREAK
UNSKIPPABLE "Même s'il a raison cette fois-ci!" TEXTID("\x10\xC9")
);

DECLARE_MESSAGE_FRA(0x10C9,
UNSKIPPABLE "Il se passe des choses étranges \n"
"dans la forêt..."BOX_BREAK
UNSKIPPABLE "Sois prêt à tout!\n"
"Tu ferais mieux de te trouver une \n"
"arme!" TEXTID("\x10\x32")
);

DECLARE_MESSAGE_FRA(0x10CA,
SFX("\x38\x82") "Paix! Gentil! T'as gagné! \n"
"Veux-tu des " COLOR("\x41") "Graines Mojo" COLOR("\x40") "?\n"
COLOR("\x41") "30 unités   40 Rubis, " COLOR("\x40") "pas cher!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10CB,
SFX("\x38\x82") "J'me rends! Laisse-moi partir et \n"
"je te vends un Bouclier Mojo pour\n"
COLOR("\x41") "50 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10CC,
SFX("\x38\x82") "J'abandonne! Veux-tu des " COLOR("\x41") "bombes" COLOR("\x40") "?\n"
COLOR("\x41") "5 unités   40 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10CD,
SFX("\x38\x82") "C'est bon! Laisse-moi tranquille\n"
"et je te vends des " COLOR("\x41") "flèches" COLOR("\x40") "!\n"
COLOR("\x41") "30 unités   70 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10CE,
SFX("\x38\x82") "T'as gagné! Epargne-moi et je te\n"
"vends une " COLOR("\x41") "potion rouge" COLOR("\x40") " pour \n"
COLOR("\x41") "40 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10CF,
SFX("\x38\x82") "T'as gagné! Epargne-moi et je te \n"
"vends une " COLOR("\x42") "potion verte" COLOR("\x40") " pour \n"
COLOR("\x41") "40 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10D0,
UNSKIPPABLE "Quoi?!? Tu as une fée?!\n"
"Comment? Le Vénérable Arbre \n"
"Mojo t'a convoqué?" TEXTID("\x10\xD1")
);

DECLARE_MESSAGE_FRA(0x10D1,
UNSKIPPABLE  SHIFT("\x33") "Heiiiiinnnnnnnn?!"BOX_BREAK
UNSKIPPABLE "Et pourquoi j'suis pas \n"
"convoqué, moi le grand " COLOR("\x41") "Mido" COLOR("\x40") "? "BOX_BREAK
UNSKIPPABLE "C'est pas juste..."BOX_BREAK
UNSKIPPABLE "J'te crois pas!\n"
"Tu n'es même pas équipé!"BOX_BREAK
UNSKIPPABLE "Comment pourrais-tu aider le \n"
"Vénérable Arbre Mojo sans " COLOR("\x41") "épée" COLOR("\x40") " \n"
"ni " COLOR("\x44") "bouclier" COLOR("\x40") ", hein!?"BOX_BREAK"Quoi? \n"
"Ok, mon équipement non plus n'est\n"
"pas prêt mais...\n"
"Et puis de quoi j'me mêle?" TEXTID("\x10\x30")
);

DECLARE_MESSAGE_FRA(0x10D2,
UNSKIPPABLE  SHIFT("\x24") "Heu... C'est quoi ça?!"BOX_BREAK
UNSKIPPABLE "Oh! Tu as un " COLOR("\x44") "Bouclier" COLOR("\x40") " " COLOR("\x44") "Mojo" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Et pis ça c'est quoi?!"BOX_BREAK
UNSKIPPABLE "Mais... C'est l'" COLOR("\x41") "Epée Kokiri" COLOR("\x40") "!?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x30") "BEN CA ALORS!!" TEXTID("\x10\xD3")
);

DECLARE_MESSAGE_FRA(0x10D3,
UNSKIPPABLE "Enfin... Même avec tout ça,\n"
"une mauviette est toujours une \n"
"mauviette, hein?" TEXTID("\x10\x34")
);

DECLARE_MESSAGE_FRA(0x10D4,
SFX("\x38\x82") "Houlà! Doucement! J'ai perdu mais\n"
"je peux te vendre des \n"
COLOR("\x41") "Bâtons" COLOR("\x40") " " COLOR("\x41") "Mojo " COLOR("\x40") "pour " COLOR("\x41") "15 Rubis" COLOR("\x40") "." TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10D5,
SFX("\x38\x82") "Perdu! Dommage pour moi! \n"
"Veux-tu des " COLOR("\x41") "Noix" COLOR("\x40") " " COLOR("\x41") "Mojo" COLOR("\x40") "?\n"
COLOR("\x41") "5 unités   20 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10D6,
"Et aussi..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3A") "Dis-lui aussi..." QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x32") "Que je m'excuse."
);

DECLARE_MESSAGE_FRA(0x10D7,
"Hii hii hii!\n"
"Tu es arrivé jusqu'ici tout seul? \n"
"Comme un grand?\n"
"T'es un homme, un vrai de vrai!" TEXTID("\x10\xD8")
);

DECLARE_MESSAGE_FRA(0x10D8,
"Regarde! Belle vue, non?\n"
"Tu peux changer ton angle de vue \n"
"avec " COLOR("\x46") "[C-Up]" COLOR("\x40") " et ainsi admirer la forêt \n"
"avec " COLOR("\x44") "[Control Stick]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x10D9,
"Qu'as-tu fait au très vénérable \n"
"Arbre Mojo?"
);

DECLARE_MESSAGE_FRA(0x10DA,
"Avant d'aller dans les Bois Perdus, \n"
"il te faudra d'abord te trouver le \n"
"bon équipement!\n"
"Hii hii!"
);

DECLARE_MESSAGE_FRA(0x10DB,
SFX("\x38\x82") "Tous mes frères sont d'accord: \n"
"Ta face est trop moche..."BOX_BREAK
SFX("\x38\x82") "Mais ne pleure pas! \n"
"On va te donner des " COLOR("\x41") "Noix Mojo" COLOR("\x40") "."BOX_BREAK
SFX("\x38\x82") "Nous allons aussi te donner le \n"
"pouvoir d'en porter plus!"BOX_BREAK"Abracadabra..."BOX_BREAK
SFX("\x38\x80") "Alakazaaaam!!" EVENT
);

DECLARE_MESSAGE_FRA(0x10DC,
SFX("\x38\x82") "J'me rends!"BOX_BREAK
SFX("\x38\x80") "Pour faciliter ta quête, je peux\n"
"te donner le pouvoir de porter \n"
"plus de " COLOR("\x41") "Bâtons Mojo" COLOR("\x40") "!\n"
"Cela te coûtera " COLOR("\x41") "40 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10DD,
SFX("\x38\x82") "J'me rends!"BOX_BREAK
SFX("\x38\x80") "Pour faciliter ta quête, je peux\n"
"te donner le pouvoir de porter \n"
"plus de " COLOR("\x41") "Noix" COLOR("\x40") " " COLOR("\x41") "Mojo" COLOR("\x40") "!\n"
"Cela te coûtera " COLOR("\x41") "40 Rubis" COLOR("\x40") "!" TEXTID("\x10\xA3")
);

DECLARE_MESSAGE_FRA(0x10DE,
SFX("\x38\x82") "Yaaaa! Dommage! \n"
"Pas d'argent, pas d'amis!"
);

DECLARE_MESSAGE_FRA(0x10DF,
"Le garçon n'est plus ici."BOX_BREAK"Un Hylien dans la forêt est un\n"
"Hylien de moins. (proverbe)"BOX_BREAK"Il est devenu un monstre.\n"
"Comme tous les autres."
);

DECLARE_MESSAGE_FRA(0x2000,
UNSKIPPABLE "Merci encore pour l'autre jour...\n"
"Au fait...\n"
"Je ne connais même pas ton nom!"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........" TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Vraiment?\n"
NAME "!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "J'en étais sûre!" QUICKTEXT_DISABLE "\n"
"Tu es le garçon de la forêt! \n"
"Cela fait si longtemps!\n"
"Tu te souviens de moi?"BOX_BREAK
UNSKIPPABLE "Oui? J'étais certaine de t'avoir\n"
"déjà rencontré quand Epona est \n"
"venue vers toi!"BOX_BREAK
UNSKIPPABLE "Oh, au fait... Je dois te parler de\n"
COLOR("\x41") "Monsieur Ingo" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Il craignait que le Roi Sombre\n"
"n'apprenne qu'Epona a disparu...\n"
"Il était si préoccupé!"BOX_BREAK
UNSKIPPABLE "Mais un beau jour, sans crier gare,\n"
"il redevint un " COLOR("\x41") "homme gentil" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Mon père est maintenant de \n"
"retour au Ranch...\n"
"C'est incroyable, la paix est \n"
"revenue!"BOX_BREAK
UNSKIPPABLE "Et tout ça grâce à toi!\n"
"Je te suis si reconnaissante!"BOX_BREAK
UNSKIPPABLE "Merci infiniment,\n"
NAME "!"
);

DECLARE_MESSAGE_FRA(0x2001,
"Comment se porte " COLOR("\x41") "Epona" COLOR("\x40") "?"BOX_BREAK"Si tu joues le " COLOR("\x41") "Chant d'Epona" COLOR("\x40") " avec \n"
"ton ocarina, elle viendra vers toi."BOX_BREAK"Reviens vite au Ranch si tu veux\n"
COLOR("\x41") "entraîner " COLOR("\x40") "Epona!"
);

DECLARE_MESSAGE_FRA(0x2002,
UNSKIPPABLE "Epona" COLOR("\x41") " " COLOR("\x40") "est en pleine forme!\n"
"On dirait que tu as réussi à la \n"
"dompter, toi aussi!" TEXTID("\x20\x03")
);

DECLARE_MESSAGE_FRA(0x2003,
"Pourquoi ne pas mettre tes talents\n"
"de cavalier à l'épreuve avec une\n"
"petite " COLOR("\x41") "course d'obstacle" COLOR("\x40") "?"BOX_BREAK"Je relèverai ton temps pour \n"
COLOR("\x41") "deux tours" COLOR("\x40") ". Tu perdras si tu ne \n"
"sautes pas toutes les barrières\n"
"dans le bon ordre."BOX_BREAK"Qu'en dis-tu?\n"
"Tu veux tenter ta chance? \n"
TWO_CHOICE  COLOR("\x42") "C'est parti!\n"
"Pas question" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2004,
"Ton temps est de " COLOR("\x41")  RACE_TIME  COLOR("\x40") ".\n"
"Il te faut plus d'entraînement!"BOX_BREAK"Souviens-toi bien: tu n'as besoin\n"
"d'accélérer que pour sauter de\n"
"grandes barrières!"
);

DECLARE_MESSAGE_FRA(0x2005,
UNSKIPPABLE  SHIFT("\x09")  NAME "... M'entends-tu?\n"
SHIFT("\x30") "C'est moi...Zelda..." FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x2006,
SFX("\x28\xDF") "Meuuuuuuu!"BOX_BREAK"Quel chant mélooooodieux...\n"
"Il me rappelle les verts pâturages\n"
"de ma jeuuuuunesse..."BOX_BREAK"Je me sens si repooooosée!" EVENT
);

DECLARE_MESSAGE_FRA(0x2007,
"Prends donc un peu de mooooon \n"
"déliceuuuuux lait!" EVENT
);

DECLARE_MESSAGE_FRA(0x2008,
NAME ", quand tu trouveras\n"
"cet ocarina..."BOX_BREAK_DELAYED("\x3C") "Je serai déjà si loin..."BOX_BREAK_DELAYED("\x3C") "Malgré mes efforts, je n'ai pu \n"
"retarder ma fuite..."BOX_BREAK_DELAYED("\x3C") "Je ne peux t'offrir que cet\n"
"ocarina ainsi que " COLOR("\x44") "cette melodie" COLOR("\x40") "..." FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x2009,
UNSKIPPABLE "Va, " NAME ".\n"
"Entonne ce chant devant l'autel du\n"
"Temple du Temps.\n"
"Tu dois protéger la Triforce!"
);

DECLARE_MESSAGE_FRA(0x200A,
UNSKIPPABLE "Wha-ha-ha-hah! Alors comme ça \n"
"on s'déguise, p'tite tête?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x57") "Oh?"BOX_BREAK
UNSKIPPABLE "N'est-ce pas un Masque du... \n"
"Comment déjà...putois? Non...\n"
"Du Renard?"BOX_BREAK
UNSKIPPABLE "Mon gamin en est marteau!\n"
"Tu veux bien me le vendre alors \n"
"ce \"Masque du...truc...bidule...\"?\n"
"Allez, sois chic." TEXTID("\x20\x0B")
);

DECLARE_MESSAGE_FRA(0x200B,
"Marché conclu?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x200C,
"Je ne lâcherai pas le morceau!\n"
"J'ai de la patience, tu sais!\n"
"Il en faut pour faire un boulot \n"
"comme le mien!  Hah hah hah!" EVENT
);

DECLARE_MESSAGE_FRA(0x200D,
UNSKIPPABLE "Mmmm...(baille)...quoi?...\n"
"Hein? Ouais, ouais. J'suis réveillé!"BOX_BREAK
UNSKIPPABLE "Comment?"BOX_BREAK
UNSKIPPABLE "Hé, c'est toi? Bien le bonjour!"BOX_BREAK
UNSKIPPABLE "Quelle histoire!\n"
"Malon n'a pas arrêté de me crier\n"
"dessus!"BOX_BREAK
UNSKIPPABLE "Tu nous as bien aidés...\n"
"Je suis fier de t'offrir ce " COLOR("\x41") "lait" COLOR("\x40") "!\n"
"Tu peux garder la bouteille."
);

DECLARE_MESSAGE_FRA(0x200E,
"Au-delà de cette limite, la " COLOR("\x41") "route \n"
"est fermée" COLOR("\x40") "!\n"
"N'as-tu pas lu la pancarte,\n"
"là-bas?"BOX_BREAK"Ah, je vois. Tu n'es qu'un gamin et\n"
"tu ne sais pas encore lire, hein?\n"
"Tu t'paies ma tête?"
);

DECLARE_MESSAGE_FRA(0x200F,
"J'en veux pas d'ce machin!"
);

DECLARE_MESSAGE_FRA(0x2010,
UNSKIPPABLE "Oh, n'est-ce pas...\n"
"Mais si! C'est l'écriture de la\n"
"Princesse Zelda! Voyons voir..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x06") "\"" COLOR("\x45") "Ce preux chevalier se nomme\n"
COLOR("\x40")  SHIFT("\x06")  COLOR("\x45")  NAME "...\n"
COLOR("\x40")  SHIFT("\x06")  COLOR("\x45") "Sa noble quête est de sauver \n"
COLOR("\x40")  SHIFT("\x06")  COLOR("\x45") "Hyrule." COLOR("\x40") "\""BOX_BREAK
UNSKIPPABLE "Wah ha ha ha ha!\n"
"C'est quoi cette histoire?\n"
"Encore un jeu de la Princesse!"BOX_BREAK
UNSKIPPABLE "OK, OK, très bien. Je te laisse\n"
"passer... Sois quand même prudent,\n"
"Preux Chevalier! Wah hah ha ha!" EVENT
);

DECLARE_MESSAGE_FRA(0x2011,
"Oh, le Preux Chevalier!\n"
"Merci de sauver Hyrule!\n"
TEXT_SPEED("\x01") "Wah ha ha hah" TEXT_SPEED("\x00") "!!"
);

DECLARE_MESSAGE_FRA(0x2012,
"Woah! Génial!\n"
"Ton temps est de " COLOR("\x41")  RACE_TIME  COLOR("\x40") "!\n"
"Toi et Epona êtes faits l'un pour\n"
"l'autre!"
);

DECLARE_MESSAGE_FRA(0x2013,
"Ooooooh, quel doooommage.\n"
"Si tu avais une bouteille, j'aurais \n"
"pu t'offrir un peu de lait..." EVENT
);

DECLARE_MESSAGE_FRA(0x2014,
"Mon nom est " COLOR("\x41") "Ingo" COLOR("\x40") "--Monsieur Ingo.\n"
"Je prends soin des chevaux.\n"
"J'ai du boulot... Dégage!"
);

DECLARE_MESSAGE_FRA(0x2015,
UNSKIPPABLE "Au fait, Preux Chevalier..."BOX_BREAK
UNSKIPPABLE "Si tu comptes t'attaquer au\n"
"Sommet du Péril, équipe-toi du bon\n"
COLOR("\x44") "bouclier" COLOR("\x40") "! \n"
"Ce volcan est en activité!"BOX_BREAK
UNSKIPPABLE "Si tu retournes au marché,\n"
"va au Bazar. Ils auront un bouclier\n"
"pour toi!"BOX_BREAK
UNSKIPPABLE "Dis bien que tu viens de ma part,\n"
"ils te feront un prix!"BOX_BREAK
UNSKIPPABLE "En échange, j'aimerais que tu me\n"
"rendes un p'tit service...\n"
"Tu n'es pas obligé, mais...\n"
"On ne sait jamais!"BOX_BREAK
UNSKIPPABLE "Es-tu déjà allé à la " COLOR("\x41") "Foire aux \n"
"Masques" COLOR("\x40") " sur la place du marché?\n"
"Tout le monde en parle!"BOX_BREAK
UNSKIPPABLE "Mon gamin veut absolument un\n"
"masque à la mode mais je n'ai pas\n"
"le temps de m'y rendre..."BOX_BREAK
UNSKIPPABLE "Pourrais-tu y aller pour moi?\n"
"Encore une fois, rien ne t'oblige\n"
"à me rendre ce service..."BOX_BREAK
UNSKIPPABLE "Mon boulot est vraiment nul."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4B") "...pfff..." EVENT
);

DECLARE_MESSAGE_FRA(0x2016,
"J'aimerais tant pouvoir me rendre \n"
"à la " COLOR("\x41") "Foire aux Masques " COLOR("\x40") "..."BOX_BREAK
SHIFT("\x4B") "...pfff..."
);

DECLARE_MESSAGE_FRA(0x2017,
"Il est bel et bien mort..."
);

DECLARE_MESSAGE_FRA(0x2018,
NAME "!?"
);

DECLARE_MESSAGE_FRA(0x2019,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x10") "Tssss...!" QUICKTEXT_DISABLE " Elle s'est échappée!"
);

DECLARE_MESSAGE_FRA(0x201A,
UNSKIPPABLE  SHIFT("\x41") "Toi, là-bas!\n"
SHIFT("\x41")  QUICKTEXT_ENABLE "Moucheron!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x201B,
UNSKIPPABLE  SHIFT("\x43")  TEXT_SPEED("\x0A")  QUICKTEXT_ENABLE "Ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "ha" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00") "\n"
SHIFT("\x1A") "Tu cherches le contact?!\n"
SHIFT("\x3C") "Bonne blague!\n"
SHIFT("\x1C") "Tu es brave, mais sot!"
);

DECLARE_MESSAGE_FRA(0x201C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x34") "Insecte ridicule!" QUICKTEXT_DISABLE "\n"
SHIFT("\x19") "Sais-tu bien qui je suis?!"
);

DECLARE_MESSAGE_FRA(0x201D,
UNSKIPPABLE  SHIFT("\x2D") "Je suis " COLOR("\x41") "Ganondorf" COLOR("\x40") "!\n"
QUICKTEXT_ENABLE  SHIFT("\x04") "Et sous peu, le monde sera mien!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x201E,
UNSKIPPABLE  SHIFT("\x03") "Un destrier blanc vient de passer\n"
SHIFT("\x2E") "il y a un instant...\n"
SHIFT("\x26") "Par où s'est-il enfui?\n"
SHIFT("\x46")  QUICKTEXT_ENABLE "Réponds!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x201F,
"Tsss... Bientôt je te ficherai\n"
"tout ça dehors."
);

DECLARE_MESSAGE_FRA(0x2020,
"Mon gamin sera fou de joie!\n"
"Tu es vraiment un Preux Chevalier!\n"
"Wha ha ha ha!" EVENT
);

DECLARE_MESSAGE_FRA(0x2021,
UNSKIPPABLE  SFX("\x48\x07") "Vous vendez le masque pour\n"
COLOR("\x41") "15 Rubis" COLOR("\x40") ". Vous gardez les\n"
"bénéfices."BOX_BREAK
UNSKIPPABLE "Retournons à la Foire aux Masques\n"
"pour rendre les " COLOR("\x41") "10 Rubis" COLOR("\x40") "." EVENT
);

DECLARE_MESSAGE_FRA(0x2022,
"\"" COLOR("\x41") "l'Excursion du fossoyeur" COLOR("\x40") "\" est \n"
"interdite aux enfants."BOX_BREAK"Alors je me balade dans le\n"
"cimetière en imitant Igor le\n"
"fossoyeur."BOX_BREAK"Mais avec mon visage d'ange,\n"
"je ne suis pas aussi terrifiant que\n"
"ça, hein?"
);

DECLARE_MESSAGE_FRA(0x2023,
QUICKTEXT_ENABLE "Gyaah!" QUICKTEXT_DISABLE " C'est Igor le fossoyeur!"BOX_BREAK
SHIFT("\x57") "???"BOX_BREAK"Oh, c'est juste un masque. \n"
"Il m'a fait une de ces frousses...\n"
"Mais je l'adore!"BOX_BREAK"Peux-tu me le donner?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2024,
"J'ai de l'argent tu sais..."
);

DECLARE_MESSAGE_FRA(0x2025,
"Hop là! C'est fini, mon ami!\n"
"Tu n'as payé que 10 Rubis!\n"
"Tu t'es suffisamment amusé!" EVENT
);

DECLARE_MESSAGE_FRA(0x2026,
"Je vais être une terreur avec ce \n"
"masque! Comme Igor, mon idole! \n"
"Voilà mes sous!"
);

DECLARE_MESSAGE_FRA(0x2027,
UNSKIPPABLE  SFX("\x48\x07") "Vous vendez le masque à l'enfant\n"
"au prix fort! Quel arnaqueur vous \n"
"faites!"BOX_BREAK
UNSKIPPABLE "Retournons à la Foire aux Masques\n"
"rendre les " COLOR("\x41") "30 Rubis" COLOR("\x40") ". \n"
"Vous y trouverez aussi un nouveau\n"
"modèle!"
);

DECLARE_MESSAGE_FRA(0x2028,
"Je vais creuser et creuser!\n"
"Tout comme Igor!!"
);

DECLARE_MESSAGE_FRA(0x2029,
"Du temps jadis, force lapins \n"
"gambadaient de-ci de-là sur la\n"
"noble Plaine d'Hyrule. \n"
"Enfin, avant qu'on les bouffe tous!"BOX_BREAK"Je veux être un lapin.\n"
"Un gentil lapinou.\n"
"Qui court, qui saute et tout ça..."BOX_BREAK"Je donnerais n'importe quoi pour \n"
"me mettre des oreilles de lapinou\n"
"sur la tête."BOX_BREAK"Un lapin tout mimi...\n"
"C'est le lapinou gentil!"
);

DECLARE_MESSAGE_FRA(0x202A,
"Oh.... Quelle jolies oreilles de...\n"
QUICKTEXT_ENABLE "LAPIN???" QUICKTEXT_DISABLE "\n"
"Sont-ce de véritables oreilles de\n"
"lapinou tout mimi et tout poilu?" TEXTID("\x20\x2B")
);

DECLARE_MESSAGE_FRA(0x202B,
"Ton prix sera le mien!!!\n"
"Je les veux. MAINTENANT!!\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x202C,
"Mauvaise réponse.\n"
"Je les veux. Je les veux.\n"
"Je les veux. Je les veux.\n"
"Je les veux. Je les veux."
);

DECLARE_MESSAGE_FRA(0x202D,
"Enfin... Mon rêve se réalise.\n"
"Je suis un petit lapin.\n"
"Tout mimi. Tout gentil.\n"
"Je cours et je saute. Youki!" EVENT
);

DECLARE_MESSAGE_FRA(0x202E,
UNSKIPPABLE  SFX("\x48\x07") "Ce masque à 50 rubis a été\n"
"vendu à un prix incroyable!"BOX_BREAK
UNSKIPPABLE "Retournez à la Foire aux Masques\n"
"rendre les " COLOR("\x41") "50 Rubis" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x202F,
UNSKIPPABLE  SHIFT("\x10") "Tu crois que ton silence les \n"
SHIFT("\x12") "protègera? Jeune impudent..."
);

DECLARE_MESSAGE_FRA(0x2030,
UNSKIPPABLE "On dit à Cocorico que j'ai fichu\n"
"Talon à la porte du Ranch..."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x1E") "C'est du n'importe quoi!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ce vieux crétin était inutile!\n"
"Moi, " COLOR("\x41") "Ingo " COLOR("\x40") "le travailleur, me suis \n"
"dévoué entièrement à ce Ranch!"BOX_BREAK
UNSKIPPABLE "Alors fais gaffe à tes paroles!\n"
"Je n'aime pas trop les rigolos \n"
"dans ton genre qui racontent \n"
"n'importe quoi sur moi!"BOX_BREAK
UNSKIPPABLE "Le " COLOR("\x41") "grand Ganondorf " COLOR("\x40") "a reconnu mes\n"
"talents et m'a fait don de ce \n"
"Ranch! Ca te la coupe, hein?"BOX_BREAK
UNSKIPPABLE "Je vais dresser un cheval \n"
"d'exception et le grand Ganondorf\n"
"sera ravi de mes services!"BOX_BREAK
UNSKIPPABLE "Au fait, mon ami, que dirais-tu de\n"
"monter l'un de mes chevaux?" TEXTID("\x20\x31")
);

DECLARE_MESSAGE_FRA(0x2031,
"Donne-moi " COLOR("\x41") "10 Rubis " COLOR("\x40") "et tu pourras\n"
"monter un de mes chevaux.\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2032,
"Alors... Hors de ma vue, microbe!"
);

DECLARE_MESSAGE_FRA(0x2033,
"Tu n'as pas assez d'argent!\n"
"Va bosser un peu et reviens me\n"
"voir!"
);

DECLARE_MESSAGE_FRA(0x2034,
"Veux-tu savoir comment monter?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2035,
"Place-toi près du flanc du cheval \n"
"et appuie sur " COLOR("\x42") "[A]" COLOR("\x40") " pour le monter."BOX_BREAK"Utilise le " COLOR("\x44") "[Control Stick] " COLOR("\x40") "pour le faire galoper.\n"
"Pendant sa course, appuie sur\n"
COLOR("\x42") "[A]" COLOR("\x40") " pour le cravacher. \n"
"Il ira beaucoup plus vite!"BOX_BREAK"Pour sauter par-dessus un \n"
"obstacle, fais galoper ta monture\n"
"le plus vite possible!"BOX_BREAK"Attention: un cheval est parfois\n"
"capricieux! Il ne sautera pas si\n"
"l'angle de saut ne lui plaît pas."BOX_BREAK"Fais arrêter le cheval puis appuie\n"
"sur " COLOR("\x42") "[A]" COLOR("\x40") " pour mettre pied à terre.\n"
"Et maintenant va t'amuser!" EVENT
);

DECLARE_MESSAGE_FRA(0x2036,
"Utilise la " COLOR("\x44") "Visée [L] " COLOR("\x40") "pour parler \n"
"tout en montant ton cheval."BOX_BREAK"Veux-tu t'arrêter maintenant?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Non, je veux encore monter\n"
"Oui, j'en ai marre" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2037,
"Pour mettre pied à terre, \n"
"arrête-toi puis appuie sur " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Dis-moi jeune homme, on ne se\n"
"connaîtrait pas, par hasard?\n"
"J'ai l'impression de t'avoir déjà\n"
"vu quelque part..." TEXTID("\x20\x36")
);

DECLARE_MESSAGE_FRA(0x2038,
"Tu t'améliores!\n"
"Ca te dit une petite course\n"
"contre moi? Le premier à faire le\n"
"tour de l'enclos a gagné."BOX_BREAK"Paie-moi " COLOR("\x41") "50 Rubis " COLOR("\x40") "et c'est parti!\n"
"Tu es d'accord?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2039,
"Hé hé...\n"
"Tu n'as même pas 50 Rubis?!\n"
"Je ne fais pas la course contre \n"
"un clochard!"
);

DECLARE_MESSAGE_FRA(0x203A,
UNSKIPPABLE  SHIFT("\x3C") "Nooooooooon!"BOX_BREAK
UNSKIPPABLE "Si le grand Ganondorf apprend\n"
"cette infâmie...\n"
"Hé, toi!!  On refait la course!\n"
"Et si tu gagnes cette fois encore..."BOX_BREAK
UNSKIPPABLE "Tu pourras garder...le cheval!!" EVENT
);

DECLARE_MESSAGE_FRA(0x203B,
UNSKIPPABLE "Yaaaah!!! Quelle est cette jument?\n"
"Est-ce " COLOR("\x41") "Epona" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Comment as-tu pu dresser cet \n"
"animal sauvage???"BOX_BREAK
UNSKIPPABLE "Cette jument était destinée au \n"
"grand Ganondorf... Mais je l'ai \n"
"pariée et perdue! Noooooooon!" EVENT
);

DECLARE_MESSAGE_FRA(0x203C,
UNSKIPPABLE  SHIFT("\x36") "Hah ha hah!"BOX_BREAK
UNSKIPPABLE "Comme promis, \n"
"tu peux garder le cheval."BOX_BREAK
UNSKIPPABLE  SHIFT("\x3C") "Cependant..."BOX_BREAK
UNSKIPPABLE "Tu ne sortiras jamais de ce Ranch!" EVENT
);

DECLARE_MESSAGE_FRA(0x203D,
"Hé hé hé hé... Dommage, petit!\n"
"Je garde tes 50 Rubis." EVENT
);

DECLARE_MESSAGE_FRA(0x203E,
"Wah ha hah!\n"
"Tu n'es qu'un débutant, après tout!\n"
"Reviens quand tu veux pour te \n"
"faire ridiculiser..."
);

DECLARE_MESSAGE_FRA(0x203F,
UNSKIPPABLE "Huh? Que fais-tu là? \n"
"Sale môme, va!"BOX_BREAK
UNSKIPPABLE "Mon nom est " COLOR("\x41") "Ingo " COLOR("\x40") "et je m'occupe\n"
"du ranch."BOX_BREAK
UNSKIPPABLE "Je travaille pour ce crétin de\n"
"Talon depuis très longtemps. \n"
"Trop longtemps.\n"
"Il ne fait rien de toute la journée!"BOX_BREAK
UNSKIPPABLE "Aujourd'hui, par exemple, il est \n"
"parti faire une livraison et...\n"
"Il n'est toujours pas rentré!"BOX_BREAK
UNSKIPPABLE "Alors je me tape tout le boulot.\n"
"Cool, non?" TEXTID("\x20\x40")
);

DECLARE_MESSAGE_FRA(0x2040,
"Pfff...ça craint d'bosser!"
);

DECLARE_MESSAGE_FRA(0x2041,
UNSKIPPABLE "Hé! Tes vêtements! Ils sont...\n"
"Différents...\n"
"Tu n'es pas du coin, toi?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........." TEXT_SPEED("\x00") "........"BOX_BREAK
UNSKIPPABLE "Ohh... \n"
"Tu es un garçon de la forêt!\n"
"Mon nom est " COLOR("\x41") "Malon" COLOR("\x40") "! Mon père \n"
"tient le Ranch Lon Lon." TEXTID("\x20\x42")
);

DECLARE_MESSAGE_FRA(0x2042,
"Papa est parti livrer du lait au\n"
"Château mais il n'est toujours\n"
"pas revenu..."
);

DECLARE_MESSAGE_FRA(0x2043,
UNSKIPPABLE "Vas-tu au Château, garçon de la \n"
"forêt? Peux-tu trouver mon " COLOR("\x41") "père" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "Il a dû s'endormir quelque part\n"
"autour du Château. \n"
"Il est si paresseux! Hi hi hi!"BOX_BREAK
UNSKIPPABLE "Prends ceci... Tu en auras\n"
"probablement besoin."BOX_BREAK
UNSKIPPABLE "J'en prends soin depuis longtemps...\n"
"Hi hi hi!" EVENT
);

DECLARE_MESSAGE_FRA(0x2044,
"Assigne l'oeuf à " COLOR("\x46") "[C]" COLOR("\x40") " pour le \n"
"couver. Hi hi!"BOX_BREAK"Mon père est...spécial, hein?\n"
"Hi hi hi!"
);

DECLARE_MESSAGE_FRA(0x2045,
UNSKIPPABLE "Et dire que moi, le grand " COLOR("\x41") "Ingo" COLOR("\x40") ", \n"
"travaille dans un ranch aussi nul!\n"
"C'est de la folie!"BOX_BREAK
UNSKIPPABLE "Le propriétaire est si paresseux!\n"
"Alors je me tape toutes les \n"
"corvées! J'en ai ras la moustache!" TEXTID("\x20\x46")
);

DECLARE_MESSAGE_FRA(0x2046,
"Moi, le grand " COLOR("\x41") "Ingo" COLOR("\x40") ", devrait être le\n"
"patron de ce ranch. Pas l'autre\n"
"crétin de Talon!"
);

DECLARE_MESSAGE_FRA(0x2047,
UNSKIPPABLE "Oh, revoilà le garçon de la forêt!\n"
"Alors, tu as trouvé mon papa?\n"
"As-tu visité le Château? As-tu \n"
"rencontré la Princesse? Hi hi!"BOX_BREAK
UNSKIPPABLE  SFX("\x68\x6D") "Papa est revenu à la maison\n"
"en courant comme un lapin après \n"
"votre rencontre. Hi hi hi!"BOX_BREAK
UNSKIPPABLE "Au fait... Je ne t'ai pas encore\n"
"présenté mon amie!"BOX_BREAK
UNSKIPPABLE "Cette petite jument s'appelle\n"
COLOR("\x41") "Epona" COLOR("\x40") ". N'est-elle pas adorable?"
);

DECLARE_MESSAGE_FRA(0x2048,
"On dirait qu'Epona a peur de toi,\n"
"M. le garçon de la forêt..."
);

DECLARE_MESSAGE_FRA(0x2049,
"Ma mère me chantait cette \n"
"chanson. Elle est belle, non?\n"
"Chantons-la tous les deux."
);

DECLARE_MESSAGE_FRA(0x204A,
"Oh, Epona! Elle semble vous\n"
"apprécier, M. le garçon de la forêt."
);

DECLARE_MESSAGE_FRA(0x204B,
TEXT_SPEED("\x02") "Z Z Z Z Z Z Z Z Z Z Z Z Z Z Z" TEXT_SPEED("\x00") "..."
);

DECLARE_MESSAGE_FRA(0x204C,
"Oh...de la visite!\n"
"Les visiteurs se font rares\n"
"en ce moment...\n"
"D'où viens-tu?"BOX_BREAK"Depuis la venue de Ganondorf, \n"
"les gens ont fui les villes, le pays\n"
"est en ruines, et des monstres \n"
"sont apparus un peu partout."BOX_BREAK"M. Ingo ne dirige le Ranch que \n"
"pour plaire à Ganondorf..."BOX_BREAK"Tout le monde semble devenir\n"
"méchant..."BOX_BREAK"Et puis il y a mon père...\n"
"M. Ingo l'a jeté dehors..."BOX_BREAK"Si jamais j'ose désobéir à M. Ingo,\n"
"il fera du mal aux chevaux..."BOX_BREAK"Alors...\n"
"On ne peut pas dire que ce soit \n"
"la fête dans le coin..."
);

DECLARE_MESSAGE_FRA(0x204D,
"Personne n'est aussi rapide que \n"
"moi! Alors, résultat: j'm'ennuie."
);

DECLARE_MESSAGE_FRA(0x204E,
TEXT_SPEED("\x02") "Z Z Z Z Z Z Z Z Z Z Z Z Z" TEXT_SPEED("\x00") "...\n"
"Arrête de chanter...\n"
"Mmmm....Idiote..."
);

DECLARE_MESSAGE_FRA(0x204F,
UNSKIPPABLE "Regarde bien cette montagne.\n"
"C'est le " COLOR("\x41") "Mont du Péril" COLOR("\x40") ", la demeure\n"
"des Gorons. Ils détiennent la\n"
"Pierre Ancestrale du feu."
);

DECLARE_MESSAGE_FRA(0x2050,
"Ne dis surtout pas à M. Ingo que\n"
"je chante cette chanson..."
);

DECLARE_MESSAGE_FRA(0x2051,
UNSKIPPABLE "Tu...\n"
"Tu connais la " COLOR("\x41") "chanson de ma mère" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Tout le monde adorait cette\n"
"chanson...\n"
"Mon père... Même M. Ingo..."BOX_BREAK
UNSKIPPABLE "Mais...depuis la venue de\n"
"Ganondorf, M. Ingo a changé."BOX_BREAK
UNSKIPPABLE "Cette chanson me rappelle\n"
"les beaux jours..." TEXTID("\x20\x52")
);

DECLARE_MESSAGE_FRA(0x2052,
COLOR("\x41") "Epona" COLOR("\x40") " était folle de cette chanson...\n"
"J'étais la seule à pouvoir la \n"
"monter... Même M. Ingo a des \n"
"problèmes avec elle..."BOX_BREAK"Hi hi hi!"
);

DECLARE_MESSAGE_FRA(0x2053,
"L'oeil de cette statue perce les\n"
"mystères de votre esprit..."
);

DECLARE_MESSAGE_FRA(0x2054,
"Grâce à votre masque, cette \n"
"étrange statue vous parle..."BOX_BREAK"Voici ses paroles..."
);

DECLARE_MESSAGE_FRA(0x2055,
"J'ai pris de bonnes résolutions:\n"
"Désormais je vais me mettre à \n"
"bosser comme un méga-dingue."
);

DECLARE_MESSAGE_FRA(0x2056,
"M. Ingo... De sombres pouvoirs\n"
"ont dû l'ensorceler...\n"
"Il n'a jamais été un mauvais\n"
"homme..."
);

DECLARE_MESSAGE_FRA(0x2057,
"Z Z Z Z Z Z Z Z...\n"
"Mmmm... J'en ai marre de bosser..."
);

DECLARE_MESSAGE_FRA(0x2058,
"Bon alors...\n"
"Tu veux faire la course?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2059,
"Si tu changes d'avis,\n"
"reviens me voir!"
);

DECLARE_MESSAGE_FRA(0x205A,
"Alors... Hors de ma vue, microbe!" EVENT
);

DECLARE_MESSAGE_FRA(0x205B,
"Hé hé... Tu m'en veux d'avoir \n"
"gagné, hein? Dans ce cas je peux\n"
"t'accorder une revanche!\n"
"On refait la course?"BOX_BREAK"Aboule " COLOR("\x41") "50 Rubis " COLOR("\x40") "et c'est parti!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Pas question" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x205C,
"Merci beaucoup, Hé hé!" EVENT
);

DECLARE_MESSAGE_FRA(0x205D,
"Ingo va me hurler dessus si je te\n"
"donne ceci pour rien.\n"
"Alors je vais te faire un prix."
);

DECLARE_MESSAGE_FRA(0x205E,
"Veux-tu du lait pour " COLOR("\x41") "30 Rubis" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x205F,
"Bien le bonjour mon bon monsieur!\n"
"Mon nom est Ingo. Travailler ici\n"
"est un honneur."
);

DECLARE_MESSAGE_FRA(0x2060,
UNSKIPPABLE "Petit...tu es courageux!\n"
"Nous devons protéger cette belle\n"
"terre d'Hyrule!"
);

DECLARE_MESSAGE_FRA(0x2061,
UNSKIPPABLE "Oh, le bel ocarina!\n"
"Vas-tu jouer ma chanson avec ton\n"
"instrument?"
);

DECLARE_MESSAGE_FRA(0x2062,
UNSKIPPABLE "Au pied du Mont du Péril tu \n"
"trouveras mon village natal, \n"
COLOR("\x41") "Cocorico" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Interroge les villageois avant\n"
"de t'aventurer dans la montagne."
);

DECLARE_MESSAGE_FRA(0x2063,
UNSKIPPABLE "La mélodie que je t'ai enseignée\n"
"possède d'étranges pouvoirs. Elle \n"
"est le patrimoine de la Famille\n"
"Royale..."BOX_BREAK
UNSKIPPABLE "Elle t'aidera à prouver ton alliance\n"
"avec la Famille Royale."BOX_BREAK
UNSKIPPABLE "Maintenant va, jeune guerrier...\n"
"Tu dois rapporter les Pierres au \n"
"Château. Nous comptons tous sur \n"
"toi!"
);

DECLARE_MESSAGE_FRA(0x2064,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hou houuu!" QUICKTEXT_DISABLE "\n"
NAME "...\n"
"Regarde un peu par là!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Prépare-toi car ta noble quête \n"
"débute enfin!"BOX_BREAK
UNSKIPPABLE "Ton destin est tourmenté.\n"
"Obstacles et épreuves t'attendent. \n"
"Mais jamais le courage ne doit te\n"
"faire défaut!" TEXTID("\x20\x65")
);

DECLARE_MESSAGE_FRA(0x2065,
"Va tout droit pour aller au\n"
COLOR("\x41") "Château d'Hyrule" COLOR("\x40") "."BOX_BREAK"Une " COLOR("\x41") "Princesse " COLOR("\x40") "t'y attend..."BOX_BREAK"Si par malheur tu perds ton \n"
"chemin, n'hésite pas à consulter\n"
"la " COLOR("\x41") "Carte" COLOR("\x40") "."BOX_BREAK"Les contrées déjà explorées seront\n"
"affichées à l'écran. Appuie sur\n"
COLOR("\x44") "START" COLOR("\x41") " " COLOR("\x40") "puis sur " COLOR("\x44") "[L]" COLOR("\x40") " ou " COLOR("\x44") "[R]" COLOR("\x40") " pour \n"
"trouver la carte."BOX_BREAK"Sur l'" COLOR("\x41") "écran de la carte" COLOR("\x40") " apparaîtra\n"
"un " COLOR("\x41") "point clignotant" COLOR("\x40") " t'indiquant la \n"
"position de ta prochaine épreuve." TEXTID("\x20\x66")
);

DECLARE_MESSAGE_FRA(0x2066,
"M'as-tu bien compris?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Non\n"
"Oui" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2067,
UNSKIPPABLE "Bonne chance brave petit!\n"
"Et à la prochaine!\n"
"Hou hou houuu!"
);

DECLARE_MESSAGE_FRA(0x2068,
UNSKIPPABLE "Hé, " NAME "! Par ici!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "La Princesse est dans le Château.\n"
"Ne te fais surtout pas repérer \n"
"par les gardes!\n"
"Hou hou hou houuuu!" EVENT
);

DECLARE_MESSAGE_FRA(0x2069,
"Par ici, le temps s'écoule\n"
"normalement."BOX_BREAK"Mais le temps reste comme figé\n"
"lorsque tu visites le Ranch \n"
"Lon Lon ou une ville."BOX_BREAK"Dans ces conditions, tu devras \n"
"quitter la ville pour faire avancer\n"
"le temps normalement."BOX_BREAK"Dis-moi... Par où vas-tu aller\n"
"maintenant?\n"
"Hou hou houuu!" EVENT
);

DECLARE_MESSAGE_FRA(0x206A,
"Veux-tu que je répète tout ça?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x206B,
UNSKIPPABLE "Houuu. T'es un malin, toi!\n"
"Bonne chance mon garçon...\n"
"Hou hou hou."
);

DECLARE_MESSAGE_FRA(0x206C,
"Hé, " NAME "! \n"
"Attends une minute, l'ami!"BOX_BREAK"Par là tu trouveras le" COLOR("\x41") " village de \n"
"Cocorico" COLOR("\x40") ". As-tu déjà rencontré la\n"
"Princesse d'Hyrule? Si la réponse \n"
"est non, dirige-toi vers le Château." EVENT
);

DECLARE_MESSAGE_FRA(0x206D,
"Hé, " NAME "! \n"
"Par ici, mon tout petit!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Par là tu trouveras le " COLOR("\x41") "village de \n"
"Cocorico" COLOR("\x40") ". Prends garde à toi!\n"
"Houu houuu!" EVENT
);

DECLARE_MESSAGE_FRA(0x206E,
UNSKIPPABLE  NAME ", sur tes minces \n"
"épaules repose la destinée du\n"
"Royaume! Sois à la hauteur! \n"
"Houu houuu!"
);

DECLARE_MESSAGE_FRA(0x206F,
NAME "!\n"
"Ecoute donc mes sages paroles!\n"
"Hou houuuu!"BOX_BREAK_DELAYED("\x28") "Au sud s'étend le " COLOR("\x41") "Lac Hylia" COLOR("\x40") "."BOX_BREAK"A l'ouest tu trouveras la " COLOR("\x41") "Vallée\n"
"Gerudo" COLOR("\x40") ". Un repaire de voleuses\n"
"occupe l'autre versant de la\n"
"vallée."BOX_BREAK"Tu es libre d'aller n'importe où!\n"
"Hou hou hou...houuu!" EVENT
);

DECLARE_MESSAGE_FRA(0x2070,
UNSKIPPABLE "Reste courageux devant l'adversité.\n"
"Hou Hou Houuu!"
);

DECLARE_MESSAGE_FRA(0x2071,
"Dans cette direction s'étend les\n"
"eaux riches et pures du Lac Hylia."BOX_BREAK_DELAYED("\x28") "Les " COLOR("\x43") "Zoras" COLOR("\x40") ", un peuple vivant en \n"
"amont du fleuve, sont les gardiens \n"
"du Temple sous-marin et de la \n"
"Fontaine Zora."BOX_BREAK"Pour confirmer sa position sur la \n"
"carte, appuie sur " COLOR("\x44") "START" COLOR("\x41") " " COLOR("\x40") "puis sur \n"
COLOR("\x44") "[L] " COLOR("\x40") "ou " COLOR("\x44") "[R]" COLOR("\x40") " pour trouver la carte."BOX_BREAK"Toutes les contrées visitées sont\n"
"indiquées sur la carte.\n"
"Houuu houuu heu...hou!" EVENT
);

DECLARE_MESSAGE_FRA(0x2072,
UNSKIPPABLE "Mène à bien ta quête, \n"
"petit homme!"
);

DECLARE_MESSAGE_FRA(0x2073,
UNSKIPPABLE "Quel est ton nom?" EVENT
);

DECLARE_MESSAGE_FRA(0x2074,
UNSKIPPABLE  TEXT_SPEED("\x01") "....." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE  COLOR("\x42")  NAME  COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "C'est étrange...j'ai l'impression... \n"
"de te connaître." EVENT
);

DECLARE_MESSAGE_FRA(0x2075,
UNSKIPPABLE "Ecoute-moi bien, " NAME "..."BOX_BREAK
UNSKIPPABLE "Je vais te révéler la légende du\n"
"Saint Royaume, gardée depuis bien\n"
"des lunes par la noble Famille\n"
"d'Hyrule." EVENT
);

DECLARE_MESSAGE_FRA(0x2076,
SHIFT("\x28") "L'Ocarina du Temps!" EVENT
);

DECLARE_MESSAGE_FRA(0x2077,
"As-tu bien compris toute l'histoire?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2078,
UNSKIPPABLE "Je regardais par cette fenêtre..."BOX_BREAK
UNSKIPPABLE "Les " COLOR("\x43") "nuages noirs " COLOR("\x40") "de mon rêve...\n"
"Je crois qu'ils symbolisent...\n"
"Cet homme!"BOX_BREAK"Veux-tu jeter un coup d'oeil?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2079,
UNSKIPPABLE  TEXT_SPEED("\x01") "........" TEXT_SPEED("\x00") "Bien sûr!"BOX_BREAK
UNSKIPPABLE "J'ai parlé de mon rêve à Père..."BOX_BREAK
UNSKIPPABLE "Mais il n'a rien voulu savoir..."BOX_BREAK
UNSKIPPABLE "Quoi qu'il en soit...\n"
"Je suis certaine que cet homme \n"
"nourrit de noirs desseins!" EVENT
);

DECLARE_MESSAGE_FRA(0x207A,
UNSKIPPABLE "Ganondorf est à la recherche de\n"
"la " COLOR("\x41") "Triforce " COLOR("\x40") "du Saint Royaume.\n"
"J'en suis sûre!"BOX_BREAK
UNSKIPPABLE "Sa venue jusqu'à Hyrule en est la\n"
"preuve!"BOX_BREAK
UNSKIPPABLE "Cependant...\n"
"Ses plans de conquête ne se \n"
"bornent pas à Hyrule...\n"
"Mais au monde entier!" EVENT
);

DECLARE_MESSAGE_FRA(0x207B,
UNSKIPPABLE  NAME "...\n"
"Nous sommes les seuls en mesure\n"
"de protéger le Royaume d'Hyrule!" EVENT
);

DECLARE_MESSAGE_FRA(0x207C,
UNSKIPPABLE "Le vil Ganondorf ne doit JAMAIS\n"
"mettre la main sur la Triforce!"BOX_BREAK
UNSKIPPABLE "Je vais garder précieusement\n"
"l'" COLOR("\x44") "Ocarina du Temps" COLOR("\x40") ". \n"
"Jamais il ne le trouvera!"BOX_BREAK
UNSKIPPABLE "De ton côté, va récupérer les \n"
"deux autres " COLOR("\x41") "Pierres Ancestrales" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Il est de notre devoir de trouver\n"
"la Triforce avant Ganondorf et de\n"
"contrecarrer ses plans de \n"
"conquête!" EVENT
);

DECLARE_MESSAGE_FRA(0x207D,
UNSKIPPABLE "Encore une chose...\n"
"Prends cette " COLOR("\x41") "lettre" COLOR("\x40") "...\n"
"Elle te sera d'une grande aide." EVENT
);

DECLARE_MESSAGE_FRA(0x207E,
UNSKIPPABLE "Mmm...zzz..mmm...hein?\n"
"OK, j'suis réveillé maintenant!"BOX_BREAK
UNSKIPPABLE "Quoi?"BOX_BREAK
UNSKIPPABLE "Sacré nom d'un pétard mouillé!\n"
"C'est le p'tit gars d'la forêt!\n"
"Au fait, merci de m'avoir réveillé\n"
"l'aut'jour!"BOX_BREAK
UNSKIPPABLE "Tu as dû comprendre que mon truc\n"
"à moi, c'est d'pioncer."BOX_BREAK
UNSKIPPABLE "Alors quels sont tes projets pour\n"
"la journée? Ca te dirait de jouer\n"
"avec ton pote Talon?\n"
"(Heu... Talon, c'est moi.)"BOX_BREAK
UNSKIPPABLE "Les trois cocottes que j'ai ici \n"
"sont des " COLOR("\x41") "Super Cocottes" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Je vais lancer ces trois Cocottes \n"
"au milieu de toutes les autres."BOX_BREAK
UNSKIPPABLE "Si tu peux les retrouver avant\n"
"la fin du chrono, j'te donnerai\n"
COLOR("\x41") "un truc cool" COLOR("\x40") "."BOX_BREAK"Dans le cas contraire, c'est moi\n"
"le vainqueur. On parie 10 Rubis...\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Jamais!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x207F,
"Mmm...mmmm...quoi?\n"
"OK, OK, j'suis réveillé!"BOX_BREAK"Qu'y a-t-il?"BOX_BREAK"Salut, p'tit gars d'la forêt!\n"
"Tu as du temps devant toi?\n"
"Alors on va jouer!"BOX_BREAK"Je vais lancer ces trois \n"
COLOR("\x41") "Super Cocottes " COLOR("\x40") "au milieu de \n"
"toutes les autres."BOX_BREAK"Si tu peux les retrouver avant\n"
"la fin du chrono, j'te donnerai\n"
COLOR("\x41") "un truc cool" COLOR("\x40") "."BOX_BREAK"Dans le cas contraire, c'est moi\n"
"le vainqueur. On parie 10 Rubis... \n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Jamais!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2080,
"Tu as 30 secondes!\n"
"Prépare-toi...car voici...les...\n"
"Super Cocottes!"BOX_BREAK
SHIFT("\x37") "C'EST PARTI!!!" EVENT
);

DECLARE_MESSAGE_FRA(0x2081,
"Hop là! C'est fini!\n"
"Dommaaaaage mon poussin!!"BOX_BREAK"Il est cool mon jeu, hein?\n"
"Mes Cocottes si mignonnes!"BOX_BREAK"Super Cocottes... Au pied!" EVENT
);

DECLARE_MESSAGE_FRA(0x2082,
"En voilà une!\n"
"Bien joué mon poussin!\n"
"Encore " COLOR("\x41") "deux" COLOR("\x40") " à trouver!" EVENT
);

DECLARE_MESSAGE_FRA(0x2083,
"En voilà une autre!\n"
"Le moment de vérité! \n"
"Plus qu'" COLOR("\x41") "une" COLOR("\x40") " à trouver!" EVENT
);

DECLARE_MESSAGE_FRA(0x2084,
"Sacré nom d'une pipe en bois!\n"
"J'en reste baba!"BOX_BREAK"C'était la dernière!\n"
"Tu les as toutes trouvées!\n"
"Approche un peu mon poussin!" EVENT
);

DECLARE_MESSAGE_FRA(0x2085,
"Veux-tu jouer encore une fois?"BOX_BREAK"Un p'tit gars comme toi a de\n"
"l'énergie à revendre!\n"
"Trouve mes Super Cocottes en\n"
"30 secondes."BOX_BREAK"On parie 5 Rubis?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Jamais!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2086,
"Mon p'tit gars...\n"
"Tu as l'étoffe d'un éleveur de\n"
"Cocottes!"BOX_BREAK"Ca te dirait d'épouser Malon?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oh oui! Oh oui!\n"
"Jamaiiiis!!!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x2087,
UNSKIPPABLE "Ha ha! Je blaguais! \n"
"T'es peut-être un peu jeune pour \n"
"ça, p'tite tête!\n"
"Ha ha ha!"BOX_BREAK
UNSKIPPABLE "Voici un échantillon de notre\n"
"célèbre " COLOR("\x41") "Lait de Lon Lon" COLOR("\x40") ". \n"
"Il restaurera ton énergie en une\n"
"seconde!"BOX_BREAK
UNSKIPPABLE "Après l'avoir bu, rapporte la \n"
COLOR("\x41") "bouteille" COLOR("\x40") " pour faire le plein!" EVENT
);

DECLARE_MESSAGE_FRA(0x2088,
"Hé l'ami... tu m'as l'air honnête et \n"
"travailleur!"BOX_BREAK"Une fois plus grand tu pourras\n"
"travailler au Ranch!\n"
"L'offre tiendra toujours dans\n"
"quelques années." EVENT
);

DECLARE_MESSAGE_FRA(0x2089,
"Voilà pour toi! Un bon litre de\n"
COLOR("\x41") "Lait de Lon Lon " COLOR("\x40") "bien frais!" EVENT
);

DECLARE_MESSAGE_FRA(0x208A,
"Voilà pour toi! \n"
"Du lait bien frais...hein?..."BOX_BREAK"Dommaaaaaaaaage!!\n"
"Tu n'as pas de bouteille vide!"
);

DECLARE_MESSAGE_FRA(0x208B,
"Mmm...mmm...\n"
"OK, OK, j'suis réveillé!"BOX_BREAK"Quoi?"BOX_BREAK"Salut, " NAME "!\n"
"Si tu cherches Malon, elle est \n"
"dehors. Tu es peut-être venu pour\n"
"jouer?"BOX_BREAK"Alors que dirais-tu d'une partie de\n"
COLOR("\x41") "Cherche-la-Super-Cocotte" COLOR("\x40") "?\n"
"Ou veux-tu plutôt du \n"
COLOR("\x41") "lait de Lon Lon" COLOR("\x40") "?"BOX_BREAK"Dis-moi tout!\n"
THREE_CHOICE  COLOR("\x42") "Lait de Lon Lon - 30 Rubis\n"
"Jeu de la Cocotte - 10 Rubis\n"
"Quitter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x208C,
QUICKTEXT_ENABLE  COLOR("\x41") "Perdu!" COLOR("\x40") "\n"
"Tu dois sauter par-dessus tous les\n"
"obstacles!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x208D,
QUICKTEXT_ENABLE  COLOR("\x41") "Encore un tour!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_FRA(0x208E,
"Es-tu sûr de t'y prendre\n"
"correctement? Galope tout droit\n"
"vers les barrières ou ton cheval\n"
"ne sautera pas!"BOX_BREAK"Grimpe sur Epona pour retenter\n"
"ta chance!"
);

DECLARE_MESSAGE_FRA(0x208F,
UNSKIPPABLE "Fantastique!\n"
COLOR("\x41")  RACE_TIME  COLOR("\x40") " est le nouveau record!"BOX_BREAK
UNSKIPPABLE "Je dois te donner un petit\n"
"quelque chose pour te féliciter!"BOX_BREAK
UNSKIPPABLE "Je viendrai te livrer mon cadeau\n"
"chez toi...... Tu dois te demander\n"
"ce que c'est, hein? Hi hi hi!"
);

DECLARE_MESSAGE_FRA(0x2090,
"Le record est de " COLOR("\x41") "50 secondes" COLOR("\x40") ".\n"
"Ton meilleur temps est de " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "."BOX_BREAK"Si tu bats le record, je t'offrirai \n"
"un petit cadeau.\n"
"Alors fais de ton mieux, OK?"BOX_BREAK"Et c'est parti!" EVENT
);

DECLARE_MESSAGE_FRA(0x2091,
"Ton meilleur temps est de " COLOR("\x41")  HIGHSCORE("\x03")  COLOR("\x40") "!\n"
"Peux-tu faire mieux que ça?\n"
"Allez, c'est parti!" EVENT
);

DECLARE_MESSAGE_FRA(0x2092,
"Le record actuel est " COLOR("\x41") "50 secondes" COLOR("\x40") ".\n"
"Tente d'abord de battre ce temps!"BOX_BREAK"Si tu bats le record, je t'offrirai\n"
"un petit cadeau!\n"
"Alors fais de ton mieux, OK?"BOX_BREAK"Et c'est parti!" EVENT
);

DECLARE_MESSAGE_FRA(0x2093,
"2093"
);

DECLARE_MESSAGE_FRA(0x2094,
"2094"
);

DECLARE_MESSAGE_FRA(0x2095,
"2095"
);

DECLARE_MESSAGE_FRA(0x2096,
"2096"
);

DECLARE_MESSAGE_FRA(0x2097,
"2097"
);

DECLARE_MESSAGE_FRA(0x2098,
"2098"
);

DECLARE_MESSAGE_FRA(0x2099,
"2099"
);

DECLARE_MESSAGE_FRA(0x209A,
"209A"
);

DECLARE_MESSAGE_FRA(0x209B,
"209B"
);

DECLARE_MESSAGE_FRA(0x209C,
"209C"
);

DECLARE_MESSAGE_FRA(0x209D,
"209D"
);

DECLARE_MESSAGE_FRA(0x209E,
"209E"
);

DECLARE_MESSAGE_FRA(0x209F,
"209F"
);

DECLARE_MESSAGE_FRA(0x3000,
UNSKIPPABLE "Vous ne savez pas ce que\n"
"\"frères de sang\" veut dire mais \n"
"vous avez désormais deux Pierres\n"
"Ancestrales! Plus qu'une à trouver!"
);

DECLARE_MESSAGE_FRA(0x3001,
UNSKIPPABLE "Vous ne savez pas ce que\n"
"\"frères de sang\" veut dire mais\n"
"vous avez les trois Pierres \n"
"Ancestrales! Allez vite voir Zelda!"
);

DECLARE_MESSAGE_FRA(0x3002,
"J'ai faaaiiiis çççççaaaaaa...\n"
"Je veux le " COLOR("\x41") "certiffficaaat" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x3003,
"J'ai fait ceeeeeeciiiiii...\n"
"Commmmmmme sssouvvvenirrrr..."
);

DECLARE_MESSAGE_FRA(0x3004,
UNSKIPPABLE  SHIFT("\x2D") "Petit, j't'aime bien!"BOX_BREAK
UNSKIPPABLE "Pourquoi qu'on deviendrait pas \n"
"des frères de sang?!"BOX_BREAK
UNSKIPPABLE "Pas besoin de cérémonie! \n"
"Accepte ce cadeau en témoignage \n"
"de notre amitié!"
);

DECLARE_MESSAGE_FRA(0x3005,
SHIFT("\x25") "Viens faire un bisou!" FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x3006,
SHIFT("\x14") "Tu veux un gros cââlinouu?" FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x3007,
SHIFT("\x50") "Hé!!!"BOX_BREAK_DELAYED("\x1E")  SHIFT("\x4B") "Oh-oh!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x26")  QUICKTEXT_ENABLE "Plus fort la musique!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x11") "Allez donne-toi..." QUICKTEXT_ENABLE "ça balance" QUICKTEXT_DISABLE "!!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x37")  QUICKTEXT_ENABLE "C'est CHAUD!!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x1E")  SHIFT("\x28") "Quel rythme!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x32") "WHOOOOAH!"BOX_BREAK_DELAYED("\x28")  SHIFT("\x3C")  QUICKTEXT_ENABLE "YHAAAAA!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x28")  SHIFT("\x3C")  QUICKTEXT_ENABLE "YAHBADAA!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x3008,
UNSKIPPABLE "Nous les " COLOR("\x41") "Gorons" COLOR("\x40") " mangeons les\n"
"pierres du Mont du Péril."BOX_BREAK
UNSKIPPABLE "Regarde cet énorme rocher!"BOX_BREAK
UNSKIPPABLE "Il bloque l'entrée de la " COLOR("\x41") "Caverne" COLOR("\x40") "\n"
COLOR("\x41") "Dodongo" COLOR("\x40") "." COLOR("\x41") " " COLOR("\x40") "C'est un endroit très \n"
"important pour les Gorons!"BOX_BREAK
UNSKIPPABLE "Mais un jour, de nombreux \n"
"Dodongos infestèrent la caverne\n"
"et y aller devint très dangereux!"BOX_BREAK
UNSKIPPABLE "Et en plus, comme si ça suffisait \n"
"pas, un vilain " COLOR("\x41") "Gerudo en armure \n"
"noire " COLOR("\x40") "a jeté un sort pour bloquer\n"
"l'entrée avec ce rocher!" TEXTID("\x30\x2A")
);

DECLARE_MESSAGE_FRA(0x3009,
"Mon boulot c'est de dévaler le \n"
"long de la montagne avec un \n"
COLOR("\x41") "Chou-Péteur" COLOR("\x40") " dans les dents. \n"
"Je dois foncer dans l'rocher et..."BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x3C")  COLOR("\x41") "BOOOUUUM!" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK"Mais...j'suis un peu lent...\n"
"Mon Chou-Péteur explose trop tôt \n"
"et mes dents...bah...comment dire...\n"
"Elles sont nazes, quoi!"
);

DECLARE_MESSAGE_FRA(0x300A,
"Je reste ici pour faire de l'ombre\n"
"aux " COLOR("\x41") "Choux-Péteurs" COLOR("\x40") ". \n"
"Ouais...c'est mon boulot à moi!"BOX_BREAK"Tu veux m'poser une question?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Chou-Péteur?\n"
"Caverne Dodongo?" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x300B,
"Les plantes du coin sont des \n"
COLOR("\x41") "Choux-Péteurs" COLOR("\x40") ". Elles peuvent \n"
"exploser et ne poussent que sur \n"
"cette montagne."BOX_BREAK"Leur fruit est l'essence même\n"
"des célèbres bombes."BOX_BREAK"Mais un non-Goron ne peut se\n"
"servir d'un tel engin!"BOX_BREAK"Ces plantes ne poussent que dans \n"
"les endroits sombres... Mais \n"
"celle-ci est une des rares\n"
"exceptions."
);

DECLARE_MESSAGE_FRA(0x300C,
"Les plantes du coin sont des \n"
COLOR("\x41") "Choux-Péteurs" COLOR("\x40") ".  Elles peuvent \n"
"exploser et ne poussent que sur \n"
"cette montagne."BOX_BREAK"Ces plantes ne poussent que dans\n"
"les endroits sombres, comme\n"
"les cavernes, mais celle-ci est une \n"
"des rares exceptions."BOX_BREAK"Grâce au célèbre Bracelet Goron,\n"
"même un petit gars comme toi \n"
"pourrait les soulever avec " COLOR("\x42") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x300D,
"As-tu vu l'entrée d'une caverne\n"
"sur ton chemin? Hé ben, c'etait la\n"
COLOR("\x41") "Caverne Dodongo" COLOR("\x40") "."BOX_BREAK"Comme il n'y a que très peu de \n"
"lumière là-dedans, les " COLOR("\x41") "Choux-\n"
"Péteurs " COLOR("\x40") "poussent comme du \n"
"chiendent!"
);

DECLARE_MESSAGE_FRA(0x300E,
UNSKIPPABLE  SHIFT("\x55") "Oh?"BOX_BREAK
UNSKIPPABLE "Les visiteurs se font rares! \n"
"D'où viens-tu?"BOX_BREAK
UNSKIPPABLE "La forêt?"BOX_BREAK
UNSKIPPABLE "C'est quoi une \"forêt\"?"BOX_BREAK
UNSKIPPABLE "Hein?"BOX_BREAK
UNSKIPPABLE "On y trouve des \"arbres\" et\n"
"des \"plantes\"?"BOX_BREAK
UNSKIPPABLE "Heu... Tu me parles de quoi, là?\n"
"Ici il y a bien des " COLOR("\x41") "Choux-Péteurs" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Mais les Bâtons Mojo c'est \n"
"super rare dans l'coin!" TEXTID("\x30\x22")
);

DECLARE_MESSAGE_FRA(0x300F,
"J'ai pas grand chose à vendre \n"
"alors j'ai fermé l'entrée. \n"
"Mais je vois que tu es un client \n"
"acharné..." EVENT
);

DECLARE_MESSAGE_FRA(0x3010,
"Je suis désolé...\n"
"Cette bombe est en exposition.\n"
"J'ai " COLOR("\x41") "vendu" COLOR("\x40") " tout mon stock." EVENT
);

DECLARE_MESSAGE_FRA(0x3011,
"Ben...pourquoi tu m'as arrêté?\n"
"Pas ici! Non pas ici!"BOX_BREAK"Tu peux pas faire ça!"BOX_BREAK"Les roulés-boulés sont ma seule \n"
"raison de vivre: ça me calme les\n"
"nerfs!"BOX_BREAK"Respecte mes roulés-boulés! \n"
"Ecarte-toi que j'roule un peu!!"
);

DECLARE_MESSAGE_FRA(0x3012,
UNSKIPPABLE "Bon... Prends ceci en récompense\n"
"de ton courage!" EVENT
);

DECLARE_MESSAGE_FRA(0x3013,
"Merci, merci! Laisse-moi te \n"
"remercier en exécutant un de \n"
"mes plus beaux roulés-boulés!"
);

DECLARE_MESSAGE_FRA(0x3014,
UNSKIPPABLE  SHIFT("\x31") "Oh...J'ai si faim..."BOX_BREAK
UNSKIPPABLE "Tout le monde crève la dalle ici. \n"
"Nous sommes devenus une race en \n"
"voie d'extinction... \n"
"Faut nous protéger!"BOX_BREAK
UNSKIPPABLE "On ne peut plus entrer dans les \n"
"carrières de la " COLOR("\x41") "Caverne Dodongo" COLOR("\x40") ", \n"
"notre garde-manger!"BOX_BREAK
UNSKIPPABLE "On doit alors se contenter de \n"
"graviers, et ça c'est dur..."BOX_BREAK
UNSKIPPABLE "Les meilleurs rochers, à la fois\n"
"nutritifs et délicieux, sont dans la\n"
"Caverne Dodongo! Mais c'est de \n"
"l'histoire ancienne..."BOX_BREAK
UNSKIPPABLE "Nous sommes tous devenus \n"
"de vrais gourmets! Il est alors\n"
"impossible d'avaler autre chose \n"
"que de la pierre Dodongo!" TEXTID("\x30\x15")
);

DECLARE_MESSAGE_FRA(0x3015,
"Beuhh... Je me taperais bien\n"
"un gigot de caillasse de la\n"
COLOR("\x41") "Caverne Dodongo" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x3016,
UNSKIPPABLE "Hé!"BOX_BREAK
UNSKIPPABLE "C'est dangereux par ici! \n"
"Un petit gars comme toi pourrait \n"
"tomber n'importe où!"BOX_BREAK
UNSKIPPABLE "Attends! Tu ne serais pas\n"
"venu pour manger notre \n"
COLOR("\x41") "pierre rouge" COLOR("\x40") ", par hasard?\n"
"Dommage! Elle n'est plus là!"BOX_BREAK
UNSKIPPABLE "Quoi? Tu n'es pas ici pour ça?"BOX_BREAK
UNSKIPPABLE "Tu cherches la Pierre Ancestrale? \n"
"Il doit s'agir de la pierre rouge" COLOR("\x41") " " COLOR("\x40") "si \n"
"appétissante qui était là!"BOX_BREAK
UNSKIPPABLE "J'avais si faim alors je me suis\n"
"dit: \"une p'tite bouchée de cette \n"
"belle pierre, personne ne le saura!\"\n"
"Mais elle avait déjà disparu!"BOX_BREAK
UNSKIPPABLE "Je crois que le Chef l'a cachée."BOX_BREAK
UNSKIPPABLE "Il dit toujours que ça rend les \n"
"frères complètement dingues de \n"
"regarder cette pierre rouge par \n"
"ces temps de famine." TEXTID("\x30\x17")
);

DECLARE_MESSAGE_FRA(0x3017,
"Le Chef s'est cloîtré dans son \n"
"antre après avoir dit:\n"
"\"" COLOR("\x41") "J'attends le messager de la \n"
"Famille Royale!" COLOR("\x40") "\""
);

DECLARE_MESSAGE_FRA(0x3018,
UNSKIPPABLE "J'ai si faim que je ne pense qu'à\n"
"manger!"BOX_BREAK
UNSKIPPABLE "Adresse-toi au Chef pour les \n"
"histoires compliquées."BOX_BREAK
UNSKIPPABLE "S'il est de mauvaise humeur, il \n"
"risque de se fâcher pour un rien.\n"
"Et là...tu seras mal."BOX_BREAK
UNSKIPPABLE "Je connais son SECRET."BOX_BREAK
UNSKIPPABLE "Il n'en a peut-être pas l'air,\n"
"mais il adore danser!\n"
"S'il entend une belle mélodie,\n"
"qui sait ce qu'il se passera!" TEXTID("\x30\x19")
);

DECLARE_MESSAGE_FRA(0x3019,
"Je crois que le Chef adore\n"
"la " COLOR("\x42") "musique de la forêt" COLOR("\x40") "..."BOX_BREAK"Ha! C'était le bon vieux temps...\n"
"Cette musique me rend nostalgique." TEXTID("\x30\x2C")
);

DECLARE_MESSAGE_FRA(0x301A,
UNSKIPPABLE "Mmm? Quoi? Qui es-tu?!"BOX_BREAK
UNSKIPPABLE "C'est toi qui a joué le " COLOR("\x43") "chant de la \n"
"Famille Royale" COLOR("\x40") "? Mais tu n'es pas \n"
"un messager! Tu n'es qu'un nabot \n"
"avec un chapeau vert!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Darunia" COLOR("\x40") ", le Chef des Gorons,\n"
"mérite plus de considération de la \n"
"part de son frère de clan, le Roi \n"
"d'Hyrule!"BOX_BREAK
UNSKIPPABLE "Alors là je suis furax!\n"
"Hors d'ici, le gnome!"BOX_BREAK
UNSKIPPABLE "Tu me demandes pourquoi je suis\n"
"si furieux? Whoa! T'es mignon toi!\n"
"Ecoute..."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Des monstres infestent notre \n"
"Caverne Dodongo!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Notre récolte de Choux-Péteurs\n"
"est minable!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "On crève tous de faim par ici!\n"
"Y'a plus un rocher mangeable!!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x48") "Mais..." TEXTID("\x30\x1B")
);

DECLARE_MESSAGE_FRA(0x301B,
QUICKTEXT_ENABLE  SHIFT("\x23") "C'est notre problème..." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE  SHIFT("\x05") "Cela ne regarde que les Gorons!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x301C,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x11") "Hé! Ca c'est de la chanson!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Ma déprime vient de s'envoler!\n"
"J'ai eu tout d'un coup envie de \n"
"danser! Comme un méga-dingue!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x32") "Mon nom est " COLOR("\x41") "Darunia" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Je suis le Chef des Gorons!\n"
"Je peux faire quelque chose pour\n"
"toi?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x4B") "Pardon?"BOX_BREAK
UNSKIPPABLE "Tu veux la " COLOR("\x41") "Pierre Ancestrale du \n"
"Feu" COLOR("\x40") "? Ben voyons!"BOX_BREAK
UNSKIPPABLE "La Pierre Ancestrale du Feu est \n"
"notre trésor secret! Nous \n"
"l'appelons le Rubis Goron..."BOX_BREAK
UNSKIPPABLE "Mais si tu la veux vraiment,\n"
"tu pourrais peut-être nous rendre\n"
"un service..."BOX_BREAK
UNSKIPPABLE "Peux-tu détruire les monstres de\n"
"la Caverne Dodongo?"BOX_BREAK
UNSKIPPABLE "Ainsi nous aurions de quoi manger!\n"
"Je suis prêt à donner n'importe \n"
"quoi à notre sauveur...\n"
"Même la Pierre Ancestrale!"BOX_BREAK
UNSKIPPABLE "Tiens, prends déjà cet objet!\n"
"Il te sera certainement utile!"BOX_BREAK
UNSKIPPABLE "En l'utilisant, même un petit\n"
"gars comme toi pourra déraciner \n"
"des " COLOR("\x41") "Choux-Péteurs" COLOR("\x40") " avec " COLOR("\x42") "[A]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x301D,
"Allez, nettoie-moi la " COLOR("\x41") "Caverne\n"
"Dodongo" COLOR("\x40") "! Nous reparlerons de \n"
"cette pierre plus tard!"
);

DECLARE_MESSAGE_FRA(0x301E,
"Hé! Mon Frère! Rejoue-moi cette \n"
"chanson quand tu veux!"
);

DECLARE_MESSAGE_FRA(0x301F,
"Je ne me lasserai jamais de cette \n"
"chanson! Elle est si funky!"
);

DECLARE_MESSAGE_FRA(0x3020,
"Hmmm... Ce n'est pas vraiment mon\n"
"style de musique..."BOX_BREAK"Mais plutôt un truc...rigolo...\n"
"...champêtre...genre nature, quoi!"BOX_BREAK"Mon style à moi c'est le rock\n"
"des arbres et tout ça..."
);

DECLARE_MESSAGE_FRA(0x3021,
"Alors on peut entrer dans la \n"
"caverne maintenant? \n"
"T'es un génie! Je me demande bien\n"
"comment tu as fait!"
);

DECLARE_MESSAGE_FRA(0x3022,
"Je connais un truc pour conserver \n"
"un bâton: quand il brûle, range-le\n"
"avec " COLOR("\x42") "[A]" COLOR("\x40") " avant qu'il ne soit trop\n"
"tard!"BOX_BREAK"Au fait, j'ai planqué un bâton \n"
"quelque part...\n"
"Hé hé hé..."
);

DECLARE_MESSAGE_FRA(0x3023,
UNSKIPPABLE "C'est moi! " COLOR("\x41") "Darunia" COLOR("\x40") "!\n"
"Bien joué! Chapeau, petit!"BOX_BREAK
UNSKIPPABLE "Grâce à toi, nous pouvons manger \n"
"les délicieuses pierres de la \n"
"Caverne Dodongo jusqu'à explosion \n"
"ventrale!"
);

DECLARE_MESSAGE_FRA(0x3024,
UNSKIPPABLE "J'ai si faim! Je ne pense qu'à\n"
"manger!"BOX_BREAK
UNSKIPPABLE "\"Pierre Ancestrale?\"\n"
"Cette " COLOR("\x41") "pierre rouge" COLOR("\x40") " qui éclairait\n"
"notre village?"BOX_BREAK
UNSKIPPABLE "Le chef " COLOR("\x41") "Darunia" COLOR("\x40") " a dû la cacher\n"
"avant de s'enfermer dans son \n"
"antre."BOX_BREAK
UNSKIPPABLE "Depuis j'ai l'impression que toutes\n"
"les lumières du village sont ternes!\n"
"Tout le monde déprime à mort..." TEXTID("\x30\x25")
);

DECLARE_MESSAGE_FRA(0x3025,
"J'aimerais que tu apportes le " COLOR("\x41") "feu\n"
COLOR("\x40") "de l'antre du chef jusqu'ici!"
);

DECLARE_MESSAGE_FRA(0x3026,
"Je comprends maintenant!\n"
"Il fallait lancer la bombe du haut\n"
"de la falaise...D'accooooord! \n"
"On aurait dû y penser plus tôt!"
);

DECLARE_MESSAGE_FRA(0x3027,
"C'est dingue! \n"
"T'as détruit les Dodongos? \n"
"Je peux t'appeller Grand Frère?"
);

DECLARE_MESSAGE_FRA(0x3028,
"Merci! Nous sommes sauvés!!!\n"
"Tu peux acheter des bombes \n"
"maintenant!" EVENT
);

DECLARE_MESSAGE_FRA(0x3029,
"Je te remercie à mort! Tu es mon \n"
"héros! Mon fils portera ton nom!"
);

DECLARE_MESSAGE_FRA(0x302A,
"Si tu veux en savoir plus sur les\n"
"Gorons, va dans notre village!"BOX_BREAK"Le" COLOR("\x41") " Village Goron " COLOR("\x40") "est au bout du\n"
"chemin. C'est à deux pas!"
);

DECLARE_MESSAGE_FRA(0x302B,
"Ramasse un Chou-Péteur avec " COLOR("\x42") "[A]" COLOR("\x40") ". \n"
"Appuie sur " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pour" COLOR("\x43") " " COLOR("\x40") "le poser\n"
"ou le lancer."
);

DECLARE_MESSAGE_FRA(0x302C,
"Si toutes les " COLOR("\x41") "torches" COLOR("\x40") " étaient \n"
"allumées, le Village Goron serait \n"
"un peu plus vivant!"
);

DECLARE_MESSAGE_FRA(0x302D,
"Alors tu veux nous débarrasser \n"
"des Dodongos? C'est le problème \n"
"des Gorons, tu sais!"BOX_BREAK"Mais ton aide est quand même la\n"
"bienvenue! Sauve-nous et nous \n"
"pourrons récupérer toutes les \n"
"bombes dont nous avons besoin..."BOX_BREAK"Laisse-moi te prévenir...\n"
"Les Dodongos, c'est pas de la \n"
"rigolade! Ils mangeraient\n"
"n'importe quoi!!!"BOX_BREAK"Alors fais gaffe à ne pas te faire \n"
"croquer!" EVENT
);

DECLARE_MESSAGE_FRA(0x302E,
"Je t'ai déjà dit!\n"
"J'ai plus de BOMBES!!!\n"
"Hooo...j'ai tellement faim!" PERSISTENT
);

DECLARE_MESSAGE_FRA(0x302F,
"Comment va le chef?\n"
"......\n"
"Je vois..."BOX_BREAK"Au fait, connais-tu la musique\n"
"qui vient de ce tunnel?\n"
"Nous l'adorons tous!"
);

DECLARE_MESSAGE_FRA(0x3030,
"Tu ne m'auras jamais!\n"
"Tu es au service de Ganondorf!"
);

DECLARE_MESSAGE_FRA(0x3031,
UNSKIPPABLE "Comment peux-tu me faire ça?\n"
"Tu es aux ordres de Ganondorf!"BOX_BREAK
UNSKIPPABLE "Entends mon nom et tremble car \n"
"je suis..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41")  NAME  COLOR("\x40") "! \n"
"Héros des Gorons!"
);

DECLARE_MESSAGE_FRA(0x3032,
UNSKIPPABLE "Quoi?"BOX_BREAK
UNSKIPPABLE "Ton nom c'est aussi \n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Alors tu dois être le légendaire\n"
"tueur de Dodongos, \n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Mon pôpa c'est " COLOR("\x41") "Darunia" COLOR("\x40") "...\n"
"Tu te souviens de lui?"BOX_BREAK
UNSKIPPABLE "Pôpa m'a appellé " NAME "\n"
"en souvenir de ton courage!"BOX_BREAK
UNSKIPPABLE "C'est un super nom!\n"
"Je l'aime trop!"BOX_BREAK
UNSKIPPABLE  NAME ", \n"
"tu es le héros des Gorons! \n"
"Je suis très fier de te \n"
"rencontrer!"BOX_BREAK
UNSKIPPABLE "Tu peux me signer un autographe?\n"
"Ecris juste...\n"
SHIFT("\x0C") "\"Pour mon ami...\n"
SHIFT("\x0C")  NAME ", le Goron\""BOX_BREAK
UNSKIPPABLE "Ho..."BOX_BREAK
UNSKIPPABLE "Pardon...c'est peut-être pas le\n"
"moment de te demander ça..."BOX_BREAK
UNSKIPPABLE "Mon pôpa est parti dans le \n"
COLOR("\x41") "Temple du Feu" COLOR("\x40") ". \n"
"Il y a un dragon là-bas!"BOX_BREAK
UNSKIPPABLE "Si personne ne va l'aider,\n"
"il va se faire croquer!!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_FRA(0x3033,
"B-b-b-bouuu hoouuuu!" EVENT
);

DECLARE_MESSAGE_FRA(0x3034,
"Il a besoin d'être calmé...\n"
"Peut-être faut-il lui parler?"BOX_BREAK"Sur quoi allez-vous le questionner?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Le dragon\n"
"Les Gorons" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x3035,
UNSKIPPABLE "Il y a très longtemps de ça,\n"
"un gros dragon nommé " COLOR("\x41") "Volcania" COLOR("\x40") " \n"
"vivait dans cette montagne."BOX_BREAK
UNSKIPPABLE "Ce dragon était très méchant!\n"
"Il mangeait les Gorons!"BOX_BREAK
UNSKIPPABLE "Mais avec un marteau gigantesque,\n"
"le héros des Gorons...\n"
"Vlan! Paf! Boum!"BOX_BREAK
UNSKIPPABLE "Il en a fait de la purée...\n"
"C'est peut-être une légende mais\n"
"c'est vrai!"BOX_BREAK
UNSKIPPABLE "J'le sais parce que mon pôpa à moi\n"
"c'est un descendant de ce héros!" TEXTID("\x30\x33")
);

DECLARE_MESSAGE_FRA(0x3036,
UNSKIPPABLE "Ils ont tous été emmenés dans le\n"
COLOR("\x41") "Temple du Feu" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Pendant que pôpa était dehors...\n"
"Les soldats de Ganondorf sont \n"
"arrivés et ils ont enlevé tout le\n"
"monde!"BOX_BREAK
UNSKIPPABLE "Ils vont tous se faire manger par\n"
COLOR("\x41") "Volcania" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Pôpa dit que c'est Ganondorf qui a\n"
"réveillé le dragon..."BOX_BREAK
UNSKIPPABLE "Pour faire peur aux autres races,\n"
"Ganondorf va donner les Gorons \n"
"en pâture à Volcania!!!"BOX_BREAK
UNSKIPPABLE "Pôpa est allé au Temple du Feu\n"
"pour les sauver..."BOX_BREAK
UNSKIPPABLE "Aide-nous, " NAME "!\n"
"En échange, je te donne cette \n"
COLOR("\x41") "tunique résistante au feu" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x3037,
UNSKIPPABLE "Pôpa m'a dit de ne laisser \n"
"personne le suivre, mais..."BOX_BREAK
UNSKIPPABLE "Tu es le seul, " NAME ", à \n"
"pouvoir sauver tout le monde!"BOX_BREAK
UNSKIPPABLE "Je suis sûr que le patron de la\n"
"boutique sera prêt à t'aider. \n"
"Il se cache quelque part!"BOX_BREAK
UNSKIPPABLE "Maintenant je vais te dire où se \n"
"trouve le passage secret menant \n"
"au Temple du Feu!" TEXTID("\x30\x38")
);

DECLARE_MESSAGE_FRA(0x3038,
"Essaie de bouger la " COLOR("\x41") "statue" COLOR("\x40") " dans \n"
"l'antre de mon Pôpa!"
);

DECLARE_MESSAGE_FRA(0x3039,
UNSKIPPABLE "Qui est là? Est-ce toi,\n"
NAME "...?"BOX_BREAK
UNSKIPPABLE "C'est vraiment toi?!?"BOX_BREAK
UNSKIPPABLE "Tu es devenu si grand depuis la\n"
"dernière fois!"BOX_BREAK
UNSKIPPABLE "Bon... Faut qu'on parle...\n"
"D'homme à homme... \n"
"Mais y'a pas le temps!"BOX_BREAK
UNSKIPPABLE "Ganondorf sème la pagaille sur le \n"
"Mont du Péril encore une fois!\n"
"Il a réveillé l'ancien dragon \n"
"démoniaque Volcania!"BOX_BREAK
UNSKIPPABLE "Et en plus il va donner tout mon\n"
"peuple en amuse-gueule à ce sale \n"
"dragon! Tout ça pour faire peur \n"
"aux autres races du royaume..."BOX_BREAK
UNSKIPPABLE "Si ce cracheur de feu s'échappe \n"
"de la montagne, il y a des chances\n"
"pour qu'Hyrule devienne un vrai \n"
"feu de joie!!!"BOX_BREAK
UNSKIPPABLE "Je vais aller voir s'il y a un\n"
"moyen d'enfermer ce gros reptile..."BOX_BREAK
UNSKIPPABLE "Je n'ai pas la masse légendaire, \n"
"mais le temps presse!"BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Rends-moi un service, en tant que \n"
"Frère de sang..."BOX_BREAK
UNSKIPPABLE "Va sauver mon peuple pendant que \n"
"je m'occupe du dragon!"BOX_BREAK
UNSKIPPABLE "Les cellules sont de l'autre côté.\n"
"Je compte sur toi, " NAME "!"
);

DECLARE_MESSAGE_FRA(0x303A,
"Je suis libre!\n"
"Merci! Merci! Merci!\n"
"Voilà pour toi!"
);

DECLARE_MESSAGE_FRA(0x303B,
UNSKIPPABLE  NAME "...Vite...\n"
"Je ne peux plus tenir..."BOX_BREAK
UNSKIPPABLE "Sors vite d'ici!!"
);

DECLARE_MESSAGE_FRA(0x303C,
UNSKIPPABLE "Merci mon Frère. " COLOR("\x41") "\n"
COLOR("\x40") "Tu as fait du bon boulot.\n"
"Je te remercie au nom du peuple \n"
"Goron tout entier!"BOX_BREAK
UNSKIPPABLE "Tu es un vrai brave.\n"
"Je l'ai toujours su!"
);

DECLARE_MESSAGE_FRA(0x303D,
SHIFT("\x39") "N'oublie jamais...\n"
SHIFT("\x0D") "Nous sommes Frères de sang!" FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x303E,
UNSKIPPABLE "Il est un fait que le temps ne \n"
"peut altérer...Une amitié partagée...\n"
"Un sentiment profond du coeur qui\n"
"devient plus fort au fil des jours..."BOX_BREAK
UNSKIPPABLE "La confiance réciproque cèdera \n"
"bientôt sa place au pouvoir de \n"
"justice, te révélant le sentier de \n"
"la victoire et de la paix..."BOX_BREAK
UNSKIPPABLE "Cette chanson est dédiée au\n"
"pouvoir de l'amitié...\n"
"Ecoute bien le " COLOR("\x41") "Boléro du Feu" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x303F,
UNSKIPPABLE  NAME "...à bientôt..."
);

DECLARE_MESSAGE_FRA(0x3040,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME ", \n"
"il fait beaucoup trop chaud! \n"
"Nous ne tiendrons pas longtemps!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x3041,
UNSKIPPABLE "Frère " NAME "!\n"
"Pôpa est revenu!\n"
"Tout le monde est revenu!"BOX_BREAK
UNSKIPPABLE "Pôpa et toi avez vaincu le\n"
"dragon! Tous les deux!" TEXTID("\x30\x42")
);

DECLARE_MESSAGE_FRA(0x3042,
"Quand j'serai grand, je s'rai fort\n"
"comme toi, " NAME "!"
);

DECLARE_MESSAGE_FRA(0x3043,
"Merci, " NAME "!!"
);

DECLARE_MESSAGE_FRA(0x3044,
"Merci de nous avoir sauvés!" PERSISTENT
);

DECLARE_MESSAGE_FRA(0x3045,
UNSKIPPABLE "Moi, Darunia l'indomptable,\n"
"m'éveille à la conscience de \n"
COLOR("\x41") "Sage du Feu" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Moi! Un Sage! \n"
"C'est marrant, non? Enfin...\n"
"C'est ce qu'on appelle le destin."BOX_BREAK
UNSKIPPABLE "Si ma présence ici peut faire\n"
"reculer les forces du mal...\n"
"Tu peux compter sur moi!"
);

DECLARE_MESSAGE_FRA(0x3046,
UNSKIPPABLE "Tiens mon Frère! Prends ceci!\n"
"Ce " COLOR("\x41") "médaillon" COLOR("\x40") " renferme le pouvoir \n"
"du feu...et mon amitié."
);

DECLARE_MESSAGE_FRA(0x3047,
"Alors là, gros problème!\n"
"Tout le monde est parti!\n"
"Mais ma boutique est toujours\n"
"ouverte!" PERSISTENT
);

DECLARE_MESSAGE_FRA(0x3048,
UNSKIPPABLE "Ben dis donc! Quelle histoire!"BOX_BREAK
UNSKIPPABLE "Et dire que l'on croyait les \n"
"Dodongos disparus depuis bien des \n"
"lunes! Toute cette affaire est \n"
"étrange..."BOX_BREAK
UNSKIPPABLE "Et puis ce rocher à l'entrée de la \n"
"caverne..."BOX_BREAK
UNSKIPPABLE "A mon avis " COLOR("\x41") "Ganondorf" COLOR("\x40") " est le \n"
"responsable de tout ce tintouin!"BOX_BREAK
UNSKIPPABLE "\"" COLOR("\x44") "Donne-moi la Pierre Ancestrale et" COLOR("\x40") " \n"
COLOR("\x44") "j'ouvrirai la caverne" COLOR("\x40") "\", qu'il a dit..."BOX_BREAK
UNSKIPPABLE "Quel sale type...\n"
"Par contre toi, tu n'as pas hésité \n"
"à risquer ta vie pour nous... Merci."
);

DECLARE_MESSAGE_FRA(0x3049,
SHIFT("\x3D") "Un peu serré..."
);

DECLARE_MESSAGE_FRA(0x304A,
"Je travaille sur un truc vraiment\n"
"costaud! Mais ça va me prendre \n"
"du temps..." TEXTID("\x30\x4B")
);

DECLARE_MESSAGE_FRA(0x304B,
"Reviens disons dans...\n"
"Cinq ou six ans, OK?"
);

DECLARE_MESSAGE_FRA(0x304C,
"Je viens de finir ce cure-dent. \n"
"Qu'en dis-tu?" TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_FRA(0x304D,
"Alors qu'en penses-tu?"
);

DECLARE_MESSAGE_FRA(0x304E,
"Je n'ai pas encore résolu son \n"
"problème de résistance...\n"
"Mais enfin..." TEXTID("\x30\x4F")
);

DECLARE_MESSAGE_FRA(0x304F,
"Me le prends-tu pour 200 Rubis?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "J'achète!\n"
"Trop cher" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x3050,
"Ok, reviens quand tu veux."
);

DECLARE_MESSAGE_FRA(0x3051,
"Ne me mange pas! \n"
"Ne me mange pas!\n"
"Ne me mange pas!\n"
"Ne me mange pas!"BOX_BREAK"J'ai un goût atroce!"
);

DECLARE_MESSAGE_FRA(0x3052,
"Le Chef Darunia t'a demandé de \n"
"me sauver? Je te dois une fière\n"
"chandelle!"BOX_BREAK"Va vite aider Grand Frère!"
);

DECLARE_MESSAGE_FRA(0x3053,
"Mon frèèèère...\n"
"A ouveeeert un nouveau maaagasin...\n"
"C'est la boutique de laaaaames de\n"
"Medigoooooron..."BOX_BREAK"Mais mooooiiiiiii... \n"
"Je fooooorge les meilleures \n"
"épées du mooooonde!"BOX_BREAK"Les ouvriers Hyliens admiiiirent\n"
"mes taaaaalents...\n"
"J'te jure!"
);

DECLARE_MESSAGE_FRA(0x3054,
UNSKIPPABLE "Cette lame est briiiiisée...\n"
"J'aimeraiiiis te la répaaaarer mais..."BOX_BREAK
UNSKIPPABLE "L'éruuuuuption d'hier a irriiité\n"
"mes yeux..."BOX_BREAK
UNSKIPPABLE "Le " COLOR("\x41") "Roi Zoooora " COLOR("\x40") "a" COLOR("\x41") " " COLOR("\x40") "des gouttes \n"
"pour mes yeeeuuuuuux..." TEXTID("\x30\x55")
);

DECLARE_MESSAGE_FRA(0x3055,
"Peuuuuux-tu aller les chercher?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x3056,
"Nooooon... \n"
"Mes yeuuuuux....\n"
"Ouuiiillle...Booooboooo!"
);

DECLARE_MESSAGE_FRA(0x3057,
"Tout le monde est parti!\n"
"Je suis le seul survivant!" EVENT
);

DECLARE_MESSAGE_FRA(0x3058,
"Je t'ai attendu les yeux pleeiiins\n"
"de laaarrrrmmmmmes..."
);

DECLARE_MESSAGE_FRA(0x3059,
UNSKIPPABLE "Oooooh? Tu as rapportééé les\n"
"gouuutttes?! Je vais les utiliiiser\n"
"tout de suuiiitte!" EVENT
);

DECLARE_MESSAGE_FRA(0x305A,
UNSKIPPABLE  COLOR("\x41") "Wowwwwwwwwwwwwww!!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE "Caaaaa faaaiiiittt duuuu bieeennn!\n"
"J'y voooiiiis pluus claiiir!"BOX_BREAK
UNSKIPPABLE "Je vais pouvoir me remettre au\n"
"boulot! Tiens prends çaaaa, pour\n"
"te faaaiiire patienter." TEXTID("\x30\x5C")
);

DECLARE_MESSAGE_FRA(0x305B,
"Tout le monde est revenu!\n"
"Je fais des affaires monstres!" EVENT
);

DECLARE_MESSAGE_FRA(0x305C,
"Revieeeens...\n"
"Daaanns quelques jours...\n"
"Paaatience..."
);

DECLARE_MESSAGE_FRA(0x305D,
"Paaaaas encoooore...\n"
"Tu vas patienter, ouais?"
);

DECLARE_MESSAGE_FRA(0x305E,
"Voilàààààà c'est finiiiii!"
);

DECLARE_MESSAGE_FRA(0x305F,
QUICKTEXT_ENABLE  COLOR("\x44") "Votre " COLOR("\x40") "bouclier" COLOR("\x44") " a disparu!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x3060,
QUICKTEXT_ENABLE  COLOR("\x44") "Votre " COLOR("\x40") "tunique " COLOR("\x44") "a disparu!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x3061,
QUICKTEXT_ENABLE  COLOR("\x44") "Votre " COLOR("\x40") "bouclier" COLOR("\x44") " et votre " COLOR("\x40") "tunique" COLOR("\x44") " \n"
"ont disparu!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x3062,
UNSKIPPABLE "Bravo! \n"
"Tu es parvenu jusqu'ici sans\n"
"trop de problèmes, " NAME ". \n"
"Te voici au Sommet du Péril!"BOX_BREAK
UNSKIPPABLE "On raconte que les nuages autour\n"
"du pic reflètent la santé de la\n"
"Montagne. S'ils sont blancs, le\n"
"Mont est en paix..."BOX_BREAK
UNSKIPPABLE "Escalader cette montagne est bien\n"
"la preuve de ton courage! Mais \n"
"sauras-tu faire une sage décision?"BOX_BREAK
UNSKIPPABLE "La " COLOR("\x41") "Grande Fée" COLOR("\x40") " demeure au sommet.\n"
"Va donc la voir et elle te remettra\n"
"un nouveau pouvoir! Hou Hou Hou!"BOX_BREAK
UNSKIPPABLE "Je vais attendre ton retour. \n"
"N'hésite à me demander de te\n"
"faire descendre de la montagne.\n"
"A plus tard! Hou hou hou!!!"
);

DECLARE_MESSAGE_FRA(0x3063,
"Hoouu hou!\n"
"Le nouveau pouvoir de la Grande \n"
"Fée a augmenté tes capacités..."BOX_BREAK"Mais long est le chemin qui te \n"
"mènera jusqu'au salut d'Hyrule!"BOX_BREAK"Accroche-toi à mes griffes pour \n"
COLOR("\x41") "descendre la montagne" COLOR("\x40") "! \n"
"Je peux au moins te rendre ce\n"
"service!"
);

DECLARE_MESSAGE_FRA(0x3064,
"On dit qu'il y a une très " COLOR("\x41") "belle" COLOR("\x40") " \n"
COLOR("\x41") "fée" COLOR("\x40") " au Sommet du Péril!\n"
"Tu y crois, toi?"
);

DECLARE_MESSAGE_FRA(0x3065,
"Il paraît qu'une " COLOR("\x41") "fée" COLOR("\x40") " vit en haut de \n"
"la montagne."BOX_BREAK"Il te faut le bon " COLOR("\x44") "bouclier " COLOR("\x40") "pour \n"
"arriver jusqu'au sommet en un seul \n"
"morceau..."
);

DECLARE_MESSAGE_FRA(0x3066,
QUICKTEXT_ENABLE  COLOR("\x44") "Un " COLOR("\x40") "poulet" COLOR("\x44") " est sorti de ton " COLOR("\x40") "oeuf" COLOR("\x44") "! \n"
"C'est-y pas mimi la nature? Hein?" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x63")
);

DECLARE_MESSAGE_FRA(0x3067,
"Alors? Tu l'as ta pierre rouge?\n"
"Fais-moi goûter! Fais-moi goûter!"BOX_BREAK"Non? Beeeuuuuhhhh!"
);

DECLARE_MESSAGE_FRA(0x3068,
UNSKIPPABLE "Frère! Tu vas vite devenir une\n"
"montagne de muscles si tu \n"
"continues comme ça!"BOX_BREAK
UNSKIPPABLE "Je te conseille d'aller voir\n"
"la " COLOR("\x41") "Grande Fée" COLOR("\x40") " au sommet du \n"
"Mont du Péril! Elle a un cadeau \n"
"pour toi!"BOX_BREAK
UNSKIPPABLE "Hé les gars! Venez tous faire un\n"
"gros câlinou à notre Frère!"
);

DECLARE_MESSAGE_FRA(0x3069,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Dans ce temple tu trouveras des \n"
COLOR("\x41") "portes" COLOR("\x40") "...agressives. \n"
"Evite de te faire écraser!"BOX_BREAK
UNSKIPPABLE "Tu pourras les détruire avec la\n"
"\"spécialité locale\" des Gorons."
);

DECLARE_MESSAGE_FRA(0x306A,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Si ta tunique se met à brûler, \n"
"agite ton épée dans tous les sens\n"
"ou fait une roulade pour l'éteindre...\n"
"Tu le savais déjà? Ah bon."
);

DECLARE_MESSAGE_FRA(0x306B,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Certaines créatures vont bientôt\n"
"t'attaquer en dansant... \n"
"Elles sont insensibles aux flèches!"BOX_BREAK
UNSKIPPABLE "Je crois que tu auras besoin\n"
"d'une bonne moisson de notre \n"
"\"spécialité locale\"."
);

DECLARE_MESSAGE_FRA(0x306C,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Tu devras trancher certains \n"
"interrupteurs pour les activer. \n"
"Mais notre \"spécialité locale\" est\n"
"aussi très efficace!"
);

DECLARE_MESSAGE_FRA(0x306D,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "La carte t'indiquera certains \n"
"endroits inaccessibles. \n"
"Utilise ton ocarina!"
);

DECLARE_MESSAGE_FRA(0x306E,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Pour accéder à la pièce de \n"
"Darunia, tu devras faire quelque\n"
"chose avec le pilier coincé au\n"
"plafond."BOX_BREAK
UNSKIPPABLE "Trouve un moyen d'aller au-dessus\n"
"du plafond!"
);

DECLARE_MESSAGE_FRA(0x306F,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Une porte est cachée dans la \n"
"statue à l'entrée du temple."BOX_BREAK
UNSKIPPABLE "Mais la \"specialité locale\" ne sera\n"
"pas suffisante...Trouve quelque \n"
"chose de plus costaud!"
);

DECLARE_MESSAGE_FRA(0x3070,
UNSKIPPABLE "Pour te remercier, voici un petit\n"
"conseil..."BOX_BREAK
UNSKIPPABLE "Les parois sensibles à notre\n"
"\"spécialité locale\" sonnent \n"
"différemment lorsqu'elles sont \n"
"frappées avec une épée."
);

DECLARE_MESSAGE_FRA(0x3071,
"Oh? Tu es venu me sauver?\n"
"Je peux partir?" EVENT
);

DECLARE_MESSAGE_FRA(0x3072,
"3072"
);

DECLARE_MESSAGE_FRA(0x3073,
"3073"
);

DECLARE_MESSAGE_FRA(0x4000,
UNSKIPPABLE "Ces yeux sont délicieux!\n"
"Je vais m'en faire un bon ragoût!\n"
"Nyaha ha ha ha!"BOX_BREAK
UNSKIPPABLE "Dis bien merci au Roi Zora!\n"
"Hein? Quoi?" EVENT
);

DECLARE_MESSAGE_FRA(0x4001,
UNSKIPPABLE "Je dois en faire des " COLOR("\x41") "Gouttes pour\n"
"Biggoron" COLOR("\x40") "? Oh! Quel dommage!\n"
"Tu m'as donné faim!" EVENT
);

DECLARE_MESSAGE_FRA(0x4002,
UNSKIPPABLE  NAME "!\n"
"Par ici!  Hou hou!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "Je me demande ce que devient \n"
COLOR("\x41") "Saria" COLOR("\x40") "! Pourquoi ne pas aller dans \n"
"la forêt de temps en temps?"
);

DECLARE_MESSAGE_FRA(0x4003,
UNSKIPPABLE "Que fais-tu là? Tu as parcouru\n"
"un bien long chemin pour arriver\n"
"jusqu'ici..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE "N'hésite pas à consulter le \n"
COLOR("\x41") "Sous-menu de la Carte" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE  NAME "... \n"
"Regarde autour de toi...\n"
"Ce lac est d'une pureté cristalline."BOX_BREAK
UNSKIPPABLE "Au fond des eaux se trouve le \n"
COLOR("\x43") "Temple de l'Eau " COLOR("\x40") "dédié aux " COLOR("\x43") "Esprits \n"
"de l'Eau" COLOR("\x40") ". Les Zoras en sont\n"
"les gardiens. Hou, hou!"BOX_BREAK
UNSKIPPABLE "Les Zoras sont originaires du \n"
"Domaine Zora au Nord Est d'Hyrule.\n"
"Cette race aquatique est fidèle à\n"
"la Famille Royale."BOX_BREAK
UNSKIPPABLE "Seuls les membres de la Famille \n"
"Royale peuvent entrer dans le \n"
"Domaine Zora...\n"
"Hou hou!"BOX_BREAK
UNSKIPPABLE "Bon, je retourne au " COLOR("\x41") "château" COLOR("\x40") ".\n"
"Pour venir avec moi, accroche-toi \n"
"à mes serres!"
);

DECLARE_MESSAGE_FRA(0x4004,
"Bon, je retourne au " COLOR("\x41") "château" COLOR("\x40") ".\n"
"Pour venir avec moi, accroche-toi \n"
"à mes serres!"
);

DECLARE_MESSAGE_FRA(0x4005,
UNSKIPPABLE "...Hein?"BOX_BREAK
UNSKIPPABLE "Il y a quelque chose dans\n"
"cette bouteille. C'est une " COLOR("\x41") "lettre" COLOR("\x40") ":"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x0C") "\"" COLOR("\x45") "A l'aide!\n"
COLOR("\x40")  SHIFT("\x0C")  COLOR("\x45") "Je suis enfermée dans le\n"
COLOR("\x40")  SHIFT("\x0C")  COLOR("\x45") "ventre du" COLOR("\x40") " " COLOR("\x46") "Grand Jabu-Jabu!" COLOR("\x45") "\n"
COLOR("\x40")  SHIFT("\x18") "-" COLOR("\x46") "Ruto" COLOR("\x40")  QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x0C")  COLOR("\x45") "PS: N'en parlez pas à Père." COLOR("\x40") "\"" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x4006,
UNSKIPPABLE "Qui es-tu?"BOX_BREAK
UNSKIPPABLE "Nous sommes les " COLOR("\x43") "Zoras" COLOR("\x40") ", fier \n"
"peuple aquatique!"BOX_BREAK
UNSKIPPABLE "Tu dis avoir quelques liens avec\n"
"la Famille Royale d'Hyrule...\n"
"Que pouvons nous faire pour toi?"
);

DECLARE_MESSAGE_FRA(0x4007,
"Nous sommes d'excellents \n"
"plongeurs! Et toi?"BOX_BREAK"Pour devenir un bon plongeur, \n"
"essaie le " COLOR("\x41") "jeu du plongeon " COLOR("\x40") "en haut \n"
"de la cascade! Va piquer une tête!"
);

DECLARE_MESSAGE_FRA(0x4008,
UNSKIPPABLE "La Fontaine Zora est la source\n"
"du fleuve.\n"
COLOR("\x41") "Le Grand Jabu-Jabu " COLOR("\x40") "vit dans cette" COLOR("\x41") " \n"
COLOR("\x40") "fontaine." TEXTID("\x40\x09")
);

DECLARE_MESSAGE_FRA(0x4009,
"Le Grand Jabu-Jabu est notre dieu.\n"
"La " COLOR("\x41") "Princesse Ruto" COLOR("\x40") "  a pour mission \n"
"de lui préparer ses repas matin et\n"
"soir."
);

DECLARE_MESSAGE_FRA(0x400A,
"Nous sommes tous les sujets du\n"
"grand " COLOR("\x41") "Roi Zora" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x400B,
"Le grand Roi Zora est dans la\n"
COLOR("\x41") "salle du trône" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x400C,
"As-tu vu le Grand Jabu-Jabu?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x400D,
"Selon la \"Légende Zora\", faire\n"
"présent d'un poisson au Grand\n"
"Jabu-Jabu te rendra heureux pour\n"
"la journée."
);

DECLARE_MESSAGE_FRA(0x400E,
"Non? Quel dommage!"BOX_BREAK"Tous les nouveaux visiteurs se \n"
"doivent de présenter leurs \n"
"respects au " COLOR("\x41") "Grand Jabu-Jabu" COLOR("\x40") "!"BOX_BREAK"La Fontaine Zora est juste \n"
"derrière la salle du trône du Roi \n"
"Zora. Le Grand Jabu-Jabu y prend\n"
"son bain. Mais..."BOX_BREAK"Sans la permission du Roi Zora\n"
"tu ne pourras y accéder."
);

DECLARE_MESSAGE_FRA(0x400F,
UNSKIPPABLE "La " COLOR("\x41") "Princesse Ruto " COLOR("\x40") "est introuvable.\n"
"Nous l'avons cherchée partout, \n"
"même dans le " COLOR("\x43") "Lac Hylia" COLOR("\x40") "...."
);

DECLARE_MESSAGE_FRA(0x4010,
"Si tu trouves des indices sur la\n"
"disparition de la " COLOR("\x41") "Princesse Ruto" COLOR("\x40") ", \n"
"va vite en informer notre Roi!"
);

DECLARE_MESSAGE_FRA(0x4011,
"Toute l'eau d'Hyrule provient de la\n"
COLOR("\x43") "Fontaine Zora" COLOR("\x40") "."BOX_BREAK"Cette eau parcourt le Fleuve Zora\n"
"et aboutit dans le " COLOR("\x43") "Lac Hylia " COLOR("\x40") "\n"
"au sud."
);

DECLARE_MESSAGE_FRA(0x4012,
UNSKIPPABLE "Oh--Nous revenons à la vie!"BOX_BREAK
UNSKIPPABLE "Est-ce toi qui Nous a sauvé?\n"
"Ne sois pas timide devant Nous!"BOX_BREAK
UNSKIPPABLE "Il Nous semble que tu ne puisses \n"
"respirer sous l'eau comme les \n"
"nobles Zoras..."BOX_BREAK
UNSKIPPABLE "En reconnaissance de tes services,\n"
"Nous t'offrons cette " COLOR("\x41") "tunique" COLOR("\x40") ". \n"
"Elle te permettra de respirer sous\n"
"l'eau. Comme Nous, quoi."
);

DECLARE_MESSAGE_FRA(0x4013,
"La Princesse Ruto est partie au \n"
"Lac Hylia et n'est jamais revenue.\n"
"Nous sommes inquiet..."
);

DECLARE_MESSAGE_FRA(0x4014,
UNSKIPPABLE "Hoo...\n"
"Il veut donc....hmmm...\n"
"Hmmm... " COLOR("\x41") "Des Gouttes" COLOR("\x40") "...?"BOX_BREAK
UNSKIPPABLE "Peut-être en avons-Nous,\n"
"peut-être n'en avons-Nous pas...\n"
"Nous en avons les " COLOR("\x41") "ingrédients" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Apporte les ingrédients au docteur\n"
"du " COLOR("\x41") "laboratoire" COLOR("\x40") ", il en fera des\n"
"Gouttes!"BOX_BREAK
UNSKIPPABLE "Mais garde-les au frais..." TEXTID("\x40\x15")
);

DECLARE_MESSAGE_FRA(0x4015,
"Peux-tu t'en occuper avant qu'" COLOR("\x41") "ils \n"
"ne se dessèchent" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4016,
"Alors ne penses-tu pas être aussi\n"
"rapide que Nous?\n"
"Ce n'est qu'à une minute à cheval!"
);

DECLARE_MESSAGE_FRA(0x4017,
UNSKIPPABLE "Hou hou!"BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  NAME ", \n"
"Ton aventure te plait-elle?"BOX_BREAK
UNSKIPPABLE "La Princesse Zelda t'attend."BOX_BREAK
UNSKIPPABLE "Tu as déjà le " COLOR("\x41") "Rubis Goron" COLOR("\x40") ",\n"
"n'est-ce pas?"
);

DECLARE_MESSAGE_FRA(0x4018,
"Salut à toi, mon garçon! \n"
"En mélangeant l'eau du Lac Hylia à\n"
"des trucs baveux je fais des \n"
"potions dégueulasses!!!"BOX_BREAK"As-tu déjà rencontré la p'tite \n"
"vieille de l'apothicaire?"BOX_BREAK"Elle est comme mon élève et \n"
"teste toutes mes potions...\n"
"Nyarf nyarf nyarf!"
);

DECLARE_MESSAGE_FRA(0x4019,
QUICKTEXT_ENABLE "Oh! Woah!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Superbe " COLOR("\x41") "Crapaud-qui-louche" COLOR("\x40") ".\n"
"Un spécimen comme celui-ci se\n"
"fait rare depuis un bon moment!" EVENT
);

DECLARE_MESSAGE_FRA(0x401A,
"Notre chère et douce Princesse\n"
"Ruto... Mais où est-elle?\n"
"Nous sommes si inquiet..."
);

DECLARE_MESSAGE_FRA(0x401B,
UNSKIPPABLE "Ho! Cette lettre! \n"
"Elle est de la " COLOR("\x41") "Princesse Ruto" COLOR("\x40") "!!"BOX_BREAK
UNSKIPPABLE "Hmmm...voyons voir...\n"
"Elle est dans le ventre du Grand\n"
"Jabu-Jabu?\n"
"C'est incroyable!"BOX_BREAK
UNSKIPPABLE "Notre dieu protecteur, le " COLOR("\x41") "Grand" COLOR("\x40") "\n"
COLOR("\x41") "Jabu-Jabu" COLOR("\x40") ", ne ferait jamais une\n"
"chose pareille à la Princesse Ruto!"BOX_BREAK
UNSKIPPABLE "Mais depuis la venue de cet \n"
"étranger, " COLOR("\x41") "Ganondorf" COLOR("\x40") ", le Grand \n"
"Jabu-Jabu est un peu pâlot..."BOX_BREAK
UNSKIPPABLE "Les faits sont clairs...\n"
"Tu dois délivrer Notre Ruto!\n"
"Passe derrière Nous et dirige-toi \n"
"vers l'autel du Grand Jabu-Jabu."BOX_BREAK
UNSKIPPABLE "Nous gardons cette lettre.\n"
"Tu peux conserver cette " COLOR("\x41") "bouteille" COLOR("\x40") "!" TEXTID("\x40\x1C")
);

DECLARE_MESSAGE_FRA(0x401C,
"Nous t'en prions...\n"
"Sauve la " COLOR("\x41") "Princesse Ruto" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x401D,
QUICKTEXT_ENABLE  COLOR("\x44") "Vous ne pouvez respirer sous l'eau!\n"
"Retirez ves " COLOR("\x40") "bottes " COLOR("\x44") "avant qu'il ne\n"
"soit trop tard!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x401E,
QUICKTEXT_ENABLE  SHIFT("\x36") "Hoooo! Noooooonnnn!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x401F,
UNSKIPPABLE "Oh--Nous revenons à la vie!"BOX_BREAK
UNSKIPPABLE "Nous as-tu sauvé?\n"
"Ne sois pas timide et parle-Nous!"BOX_BREAK
UNSKIPPABLE "Nous allons te donner cette \n"
"tunique Zora en gage de Notre \n"
"immense gratitude!\n"
"Tu pourras...Quoi?!"BOX_BREAK
UNSKIPPABLE "Tu en as déjà une? \n"
"Tu es à la mode, toi!"BOX_BREAK
UNSKIPPABLE "Bon alors...\n"
"Que dirais-tu d'un de Nos bisous?\n"
"Quoi? Tu n'en veux pas?\n"
"Ha! Bon..."BOX_BREAK
UNSKIPPABLE "Si tu ne veux pas de Nos cadeaux,\n"
"écoute au moins Nos petits\n"
"malheurs..." TEXTID("\x40\x13")
);

DECLARE_MESSAGE_FRA(0x4020,
"Je suis un " COLOR("\x43") "Zora" COLOR("\x40") ". As-tu vu une\n"
"jolie fille zora dans le coin?"
);

DECLARE_MESSAGE_FRA(0x4021,
"Je suis un " COLOR("\x43") "Zora" COLOR("\x40") ". As-tu vu quelque\n"
"chose d'étrange dans le Lac? \n"
"Le fleuve véhicule souvent bien\n"
"des curiosités!"
);

DECLARE_MESSAGE_FRA(0x4022,
UNSKIPPABLE "Toi..." QUICKTEXT_ENABLE "t'es en retard!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Je t'attends depuis une heure!" QUICKTEXT_DISABLE "\n"
"Tu es " QUICKTEXT_ENABLE "NUL!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Je me sentais seule, c'est tout...\n"
"Juste un peu!!"
);

DECLARE_MESSAGE_FRA(0x4023,
UNSKIPPABLE  QUICKTEXT_ENABLE "J'avais peur..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "un peu!" QUICKTEXT_DISABLE " \n"
"Enfin juste un peu!!"
);

DECLARE_MESSAGE_FRA(0x4024,
UNSKIPPABLE  NAME "!\n"
NAME "!"
);

DECLARE_MESSAGE_FRA(0x4025,
UNSKIPPABLE  QUICKTEXT_ENABLE "Toi!" QUICKTEXT_DISABLE "\n"
"T'es cool... Plus cool que je ne le\n"
"pensais... " QUICKTEXT_ENABLE "Enfin juste un peu!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Tu m'as sauvée... Je dois donc te \n"
"récompenser!"BOX_BREAK
UNSKIPPABLE "Que veux-tu de moi? Je t'écoute...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "La Pierre Ancestrale\n"
"Rien du tout" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4026,
UNSKIPPABLE "Tu veux le " COLOR("\x43") "Saphir Zora" COLOR("\x40") "?" TEXTID("\x40\x27")
);

DECLARE_MESSAGE_FRA(0x4027,
UNSKIPPABLE "Ma mère me l'a transmis et je ne\n"
"le donnerai qu'à mon futur mari.\n"
"C'est une bague de fiançailles \n"
"Zora!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x4E")  QUICKTEXT_ENABLE "Bon OK!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Je te donne mon bien le plus\n"
"précieux:\n"
"Le Saphir Zora!"
);

DECLARE_MESSAGE_FRA(0x4028,
"Ne le dis pas à Père..."
);

DECLARE_MESSAGE_FRA(0x4029,
UNSKIPPABLE "Hihihihi... Ne sois pas timide."BOX_BREAK
UNSKIPPABLE "Je sais à quoi tu penses..." TEXTID("\x40\x27")
);

DECLARE_MESSAGE_FRA(0x402A,
"Je veux acheter un poisson mais \n"
"je n'ai pas assez d'argent..."BOX_BREAK"Il ne me reste qu'à en pêcher un.\n"
"Il y en a dans ce coin..."
);

DECLARE_MESSAGE_FRA(0x402B,
"Oh, " NAME "!\n"
"Alors tu as sauvé la Princesse?\n"
"Nous en sommes ravi!"
);

DECLARE_MESSAGE_FRA(0x402C,
"Prends-tu soin de mon bien le plus \n"
"précieux?\n"
"Hihihihihihi!"
);

DECLARE_MESSAGE_FRA(0x402D,
"Oh! Salut " NAME "!\n"
"La Princesse Ruto ne parle que de\n"
"toi!"
);

DECLARE_MESSAGE_FRA(0x402E,
"Oh! C'est toi, " NAME "!\n"
"Merci pour tout! Le Grand \n"
"Jabu-Jabu est en pleine forme!"
);

DECLARE_MESSAGE_FRA(0x402F,
UNSKIPPABLE "Tous les Zoras respectent le Roi\n"
"Zora! Il a la dignité et la noblesse\n"
"d'un grand souverain! \n"
"Il a une classe...dingue!"BOX_BREAK
UNSKIPPABLE "Le grand Roi Zora a une fille \n"
"unique: la Princesse " COLOR("\x41") "Ruto" COLOR("\x40") ". "BOX_BREAK
UNSKIPPABLE "C'est un vrai garçon manqué!\n"
"Notre Roi en est très inquiet." TEXTID("\x40\x0B")
);

DECLARE_MESSAGE_FRA(0x4030,
UNSKIPPABLE "Voilà!"BOX_BREAK
UNSKIPPABLE "Garanties sans colorants ni \n"
"conservateurs! Mais elles risquent\n"
"de tourner dans " COLOR("\x41") "peu de temps" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Va vite à la montagne Goron! \n"
"Tu es jeune et rapide, non?\n"
"Tu peux y arriver!"
);

DECLARE_MESSAGE_FRA(0x4031,
UNSKIPPABLE "Hou hou! \n"
"Tu es devenu très fort, \n"
NAME "!"BOX_BREAK
UNSKIPPABLE "Plus loin se trouve le " COLOR("\x43") "Domaine\n"
"Zora" COLOR("\x40") ". Les Zoras protègent cette \n"
"source d'eau et servent la Famille \n"
"Royale d'Hyrule."BOX_BREAK
UNSKIPPABLE "Leur porte ne s'ouvrira que pour\n"
"un ami de la Famille Royale."BOX_BREAK
UNSKIPPABLE "Chante haut et fort la " COLOR("\x41") "Mélodie de \n"
"la Famille Royale" COLOR("\x40") "!\n"
"Houu hou hoouu!"
);

DECLARE_MESSAGE_FRA(0x4032,
"Apporte-moi un p'tit cadeau la\n"
"prochaine fois!"
);

DECLARE_MESSAGE_FRA(0x4033,
UNSKIPPABLE "Vous avez trouvé la Princesse \n"
"Ruto! Le Roi Zora vous donnera \n"
"sûrement la " COLOR("\x43") "Pierre Ancestrale de \n"
"l'Eau" COLOR("\x40") "! Enfin...peut-être."BOX_BREAK
UNSKIPPABLE "Hummm?"
);

DECLARE_MESSAGE_FRA(0x4034,
UNSKIPPABLE "Son \"bien le plus précieux\"?\n"
"Vous ne savez pas de quoi elle\n"
"parlait mais vous avez deux\n"
"Pierres! Plus qu'une à trouver!"
);

DECLARE_MESSAGE_FRA(0x4035,
UNSKIPPABLE "Son \"bien le plus précieux\"?\n"
"Vous ne savez pas de quoi elle\n"
"parlait mais vous avez les trois\n"
"Pierres Ancestrales!!"BOX_BREAK
UNSKIPPABLE "Allez voir Zelda!"
);

DECLARE_MESSAGE_FRA(0x4036,
UNSKIPPABLE "A nouveau nos routes se croisent,\n"
NAME "..."
);

DECLARE_MESSAGE_FRA(0x4037,
UNSKIPPABLE "Cette glace est le fruit d'une \n"
"malédiction... Le monstre du " COLOR("\x43") "Temple \n"
"de l'Eau" COLOR("\x40") " en est la source."BOX_BREAK
UNSKIPPABLE "Vivant, la glace ne pourra jamais\n"
"fondre...."BOX_BREAK
UNSKIPPABLE "Ton courage puisse-t-il sauver tous\n"
"les Zoras. Je vais t'enseigner la\n"
"mélodie du Temple de l'Eau."
);

DECLARE_MESSAGE_FRA(0x4038,
UNSKIPPABLE "Le temps file et emporte les\n"
"hommes...\n"
"Ainsi coule le fleuve et jamais ne\n"
"s'arrête..."BOX_BREAK
UNSKIPPABLE "Un jeune esprit renferme un coeur\n"
"ambitieux... Des amours légères \n"
"cèdent à une passion profonde...  \n"
"Un miroir d'eau pure reflète la vie."BOX_BREAK
UNSKIPPABLE "Ecoute la " COLOR("\x43") "Sérénade de l'Eau " COLOR("\x40") "et \n"
"contemple ton reflet..."
);

DECLARE_MESSAGE_FRA(0x4039,
UNSKIPPABLE "Tu arrives trop tard, les Zoras \n"
"ne sont pas ici...\n"
"Voici ce qu'il en reste..."BOX_BREAK
UNSKIPPABLE "Les Zoras sont prisonniers de\n"
"cette vague de glace! \n"
"Tous...sauf une......"BOX_BREAK
UNSKIPPABLE "J'ai pu sauver la Princesse du gel\n"
"éternel, mais elle s'est rendue \n"
"au " COLOR("\x43") "Temple de l'Eau" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x403A,
"Il te faut un récipient pour \n"
"acheter un poisson." EVENT
);

DECLARE_MESSAGE_FRA(0x403B,
"Tu veux acheter une " COLOR("\x43") "tunique Zora" COLOR("\x40") "?\n"
"Cet habit est cousu d'un tissu\n"
"précieux. Il est honteusement cher!"BOX_BREAK
COLOR("\x41") "Les familles fortunées" COLOR("\x40") " de Cocorico \n"
"sont les seules à pouvoir se \n"
"l'offrir!" EVENT
);

DECLARE_MESSAGE_FRA(0x403C,
"403C"
);

DECLARE_MESSAGE_FRA(0x403D,
"403D"
);

DECLARE_MESSAGE_FRA(0x403E,
UNSKIPPABLE "Ho!...Toi?...Tu es?...\n"
NAME "?!"BOX_BREAK
UNSKIPPABLE  NAME ", c'est bien toi?"BOX_BREAK
UNSKIPPABLE "C'est moi, " COLOR("\x43") "Ruto" COLOR("\x40") "!" COLOR("\x43") " " COLOR("\x40") "Ta fiancée!\n"
"Princesse des Zoras!"BOX_BREAK
UNSKIPPABLE "Je n'ai pas oublié notre promesse!"BOX_BREAK
UNSKIPPABLE "Tu ne manques pas d'air!\n"
"Me faire attendre pendant sept \n"
"longues années..."BOX_BREAK
UNSKIPPABLE "Mais l'heure n'est pas vraiment \n"
"aux histoires de coeur..."BOX_BREAK
UNSKIPPABLE "As-tu vu le Domaine Zora?\n"
"Tout est gelé!"BOX_BREAK
UNSKIPPABLE "Un jeune homme nommé " COLOR("\x41") "Sheik" COLOR("\x40") " m'a \n"
"sauvée des glaces..."BOX_BREAK
UNSKIPPABLE "Mais mon père et les autres Zoras\n"
"sont" TEXT_SPEED("\x02") "...encore..." TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Je veux tous les sauver!\n"
"Je veux sauver le Domaine Zora!"BOX_BREAK
UNSKIPPABLE "Tu dois m'aider!\n"
"C'est une faveur que je te \n"
"demande, moi...ta future femme!"BOX_BREAK
UNSKIPPABLE  NAME ", \n"
"tu dois m'aider à détruire l'infect\n"
"monstre du temple, d'accord?!"BOX_BREAK
UNSKIPPABLE "Tu trouveras " COLOR("\x41") "trois endroits" COLOR("\x40") " te \n"
"permettant de changer le niveau \n"
"de l'eau."BOX_BREAK
UNSKIPPABLE "Je passe devant...\n"
"Suis-moi! Vite!!!"
);

DECLARE_MESSAGE_FRA(0x403F,
UNSKIPPABLE  NAME "! Attention!\n"
"Cette eau n'est pas normale!"
);

DECLARE_MESSAGE_FRA(0x4040,
"4040"
);

DECLARE_MESSAGE_FRA(0x4041,
UNSKIPPABLE  NAME "..."BOX_BREAK
UNSKIPPABLE "Tu es bien digne d'être mon futur\n"
"époux."BOX_BREAK
UNSKIPPABLE "Le Domaine Zora et son peuple \n"
"vont enfin se libérer des glaces."
);

DECLARE_MESSAGE_FRA(0x4042,
UNSKIPPABLE "Dis bien merci à Sheik de ma part." FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x4043,
UNSKIPPABLE "Ruto veut me remercier?"BOX_BREAK
UNSKIPPABLE "Je vois...."BOX_BREAK
UNSKIPPABLE "C'est aussi pour elle que nous \n"
"devons ramener paix et joie \n"
"en Hyrule."
);

DECLARE_MESSAGE_FRA(0x4044,
"4044"
);

DECLARE_MESSAGE_FRA(0x4045,
"Nous voyons...\n"
"La Princesse Ruto est dans le \n"
"Temple de l'Eau..."
);

DECLARE_MESSAGE_FRA(0x4046,
UNSKIPPABLE "Comme récompense...\n"
"Je t'offre mon amour éternel."BOX_BREAK
UNSKIPPABLE "Même si pour l'instant je ne peux\n"
"t'en offrir davantage."
);

DECLARE_MESSAGE_FRA(0x4047,
UNSKIPPABLE "La Princesse Zelda...Elle est en vie.\n"
"Je le sens. Ne te décourage pas."
);

DECLARE_MESSAGE_FRA(0x4048,
QUICKTEXT_ENABLE  SHIFT("\x42") "Beuâââârk!\n"
SHIFT("\x17") "C'est quoi? Une pieuvre?!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x4049,
UNSKIPPABLE "En tant que " COLOR("\x43") "Sage de l'Eau" COLOR("\x40") "," COLOR("\x43") " \n"
COLOR("\x40") "mon devoir est d'assurer la garde \n"
"du Temple de l'Eau..."BOX_BREAK
UNSKIPPABLE "Le tien est de chercher la \n"
"Princesse...comment...?\n"
COLOR("\x41") "Zelda" COLOR("\x40") "?"BOX_BREAK
UNSKIPPABLE "Ha!\n"
"Tu ne peux rien me cacher!"
);

DECLARE_MESSAGE_FRA(0x404A,
UNSKIPPABLE "Ta quête de justice et de paix \n"
"sera victorieuse...j'en suis sûre.\n"
"Prends ce " COLOR("\x43") "Médaillon " COLOR("\x40") "et garde-le\n"
"précieusement!"
);

DECLARE_MESSAGE_FRA(0x404B,
UNSKIPPABLE "Toi! Qui es-tu?!"BOX_BREAK
UNSKIPPABLE "Je suis " COLOR("\x41") "Ruto" COLOR("\x40") ", Princesse des Zoras."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Quoi?!" QUICKTEXT_DISABLE "\n"
"Mon père t'a demandé de me \n"
"sauver?"BOX_BREAK
UNSKIPPABLE "Je n'ai " QUICKTEXT_ENABLE "rien" QUICKTEXT_DISABLE " demandé à personne!"BOX_BREAK
UNSKIPPABLE "\"Un message dans une bouteille?\" \n"
"Je ne " QUICKTEXT_ENABLE "vois pas" QUICKTEXT_DISABLE " de quoi tu parles!"BOX_BREAK
UNSKIPPABLE "Mon père est très inquiet?"BOX_BREAK
UNSKIPPABLE "J'm'en " QUICKTEXT_ENABLE "fiche!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "De toute façon, je ne peux pas \n"
"partir maintenant.\n"
"Quant à toi..." QUICKTEXT_ENABLE "Va-t'en d'ici!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Compris?!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x404C,
UNSKIPPABLE "Tu es encore là, toi?\n"
"Je t'ai dit de partir!"BOX_BREAK
UNSKIPPABLE "Je vais dans le ventre de \n"
"Jabu-Jabu depuis que je suis toute \n"
"petite! Alors j't'ai pas attendu!"BOX_BREAK
UNSKIPPABLE "Le Grand Jabu-Jabu n'est pas \n"
"dans son assiette aujourd'hui..."BOX_BREAK
UNSKIPPABLE "Il y a d'étranges méduses \n"
"électriques et des trous partout..."BOX_BREAK
UNSKIPPABLE "Et en plus, ma chère pierre a été...\n"
QUICKTEXT_ENABLE "Mais c'est pas tes oignons!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Toi! " QUICKTEXT_ENABLE "Tu rentres chez toi!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "Compris?!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x404D,
UNSKIPPABLE "Tu t'inquiètes tant que ça pour \n"
"moi?"BOX_BREAK
UNSKIPPABLE "Alors je t'accorde l'honneur de me\n"
"porter!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Toutefois" QUICKTEXT_DISABLE "...Je ne partirai pas \n"
"sans avoir trouvé ce que je \n"
"cherche. Tu peux en être sûr!" EVENT
);

DECLARE_MESSAGE_FRA(0x404E,
QUICKTEXT_ENABLE "Ho! Vilain!" QUICKTEXT_DISABLE "\n"
"Tu m'as abandonnée?!\n"
"Comment oses-tu faire une chose\n"
"pareille à une Princesse?" EVENT
);

DECLARE_MESSAGE_FRA(0x404F,
UNSKIPPABLE  QUICKTEXT_ENABLE "Voilà!" QUICKTEXT_DISABLE "\n"
"C'est ça que je cherche!\n"
"Lance-moi sur cette plate-forme!"
);

DECLARE_MESSAGE_FRA(0x4050,
UNSKIPPABLE  QUICKTEXT_ENABLE "La Princesse Ruto trouve la \n"
COLOR("\x43") "Pierre Ancestrale" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02") "Mais" TEXT_SPEED("\x00") " pourquoi la Princesse Ruto?"
);

DECLARE_MESSAGE_FRA(0x4051,
UNSKIPPABLE "Enfin!\n"
"J'ai trouvé... \n"
"La Pierre de ma maman..."BOX_BREAK
UNSKIPPABLE "J'étais tellement triste quand le\n"
"Grand Jabu-Jabu l'a avalée..."BOX_BREAK
UNSKIPPABLE "Tout ça s'est passé pendant son\n"
"repas... Il s'est agité et m'a avalée\n"
"d'un seul coup!"BOX_BREAK
UNSKIPPABLE "Bon...on peut partir maintenant!"
);

DECLARE_MESSAGE_FRA(0x4052,
"Ramène-moi à la maison!\n"
"Tout de suite!"
);

DECLARE_MESSAGE_FRA(0x4053,
"Jeu du plongeon: 20 Rubis.\n"
"Tu veux essayer?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4054,
QUICKTEXT_ENABLE  SHIFT("\x47") "PARFAIT!" QUICKTEXT_DISABLE BOX_BREAK"Ramasse tous les rubis avant la \n"
"fin du chrono!"BOX_BREAK"Passe cette épreuve et reviens me \n"
"voir pour gagner un prix!" EVENT
);

DECLARE_MESSAGE_FRA(0x4055,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hé! Félicitations!" QUICKTEXT_DISABLE "\n"
"J'ai un beau cadeau pour toi! \n"
"Viens vite le chercher!" EVENT
);

DECLARE_MESSAGE_FRA(0x4056,
UNSKIPPABLE "Quel magnifique plongeon!\n"
"Prends donc ceci!"BOX_BREAK
UNSKIPPABLE "Cette \"" COLOR("\x41") "écaille" COLOR("\x40") "\" de Zora te\n"
"permettra de plonger plus \n"
"profondément." EVENT
);

DECLARE_MESSAGE_FRA(0x4057,
UNSKIPPABLE "Les flots s'élèvent... \n"
"Et le mal se dissout...\n"
"Tu as triomphé " NAME "!"
);

DECLARE_MESSAGE_FRA(0x4058,
UNSKIPPABLE "Je te crois capable de sauver ce \n"
"monde..."
);

DECLARE_MESSAGE_FRA(0x4059,
UNSKIPPABLE "Regarde, " NAME "..."BOX_BREAK
UNSKIPPABLE "La bête maléfique a péri. \n"
"Toi et la Princesse Ruto avez\n"
"accompli cet acte héroïque!"BOX_BREAK
UNSKIPPABLE "Les eaux pures et claires \n"
"emplissent à nouveau ce paisible \n"
"lac..."
);

DECLARE_MESSAGE_FRA(0x405A,
QUICKTEXT_ENABLE  SHIFT("\x38")  COLOR("\x44") "Et c'est parti!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x405B,
"Passe les cascades pour un \n"
"raccourci!" EVENT
);

DECLARE_MESSAGE_FRA(0x405C,
"Attrape un maximum pour 20 Rubis.\n"
"Ca te tente?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x405D,
QUICKTEXT_ENABLE "Hé! Bravo!!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x405E,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Les ventes sont faibles..."BOX_BREAK"Je t'en propose...\n"
COLOR("\x41") "10 Rubis" COLOR("\x40") " pièce?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x405F,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Leur succès est médiocre."BOX_BREAK"Je t'en propose...\n"
COLOR("\x41") "20 Rubis" COLOR("\x40") " pièce?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4060,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Ils sont assez populaires..."BOX_BREAK
COLOR("\x41") "30 Rubis" COLOR("\x40") " pièce.\n"
"T'en veux?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4061,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Ils sont à la mode!"BOX_BREAK
COLOR("\x41") "40 Rubis" COLOR("\x40") " pièce.\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4062,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Il ne m'en reste que très peu!"BOX_BREAK
COLOR("\x41") "50 Rubis" COLOR("\x40") " pièce.\n"
"(Offre spéciale)\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4063,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Ils sont siiiii bons!"BOX_BREAK"Super promo!\n"
COLOR("\x41") "60 Rubis " COLOR("\x40") "pièce!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4064,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Ca marche du tonnerre!"BOX_BREAK"Promo de la mort!\n"
COLOR("\x41") "70 Rubis" COLOR("\x40") " pièce!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4065,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Ils sont introuvables!"BOX_BREAK"Offre de folie!\n"
COLOR("\x41") "80 Rubis" COLOR("\x40") " pièce!\n"
TWO_CHOICE  COLOR("\x42") "Oui \n"
"No" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4066,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"C'est cher mais...c'est cool!"BOX_BREAK"Je ne peux les lâcher à moins de\n"
COLOR("\x41") "90 Rubis" COLOR("\x40") " pièce!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4067,
UNSKIPPABLE "Miam miam miam...\n"
"Veux-tu des " COLOR("\x41") "haricots magiques" COLOR("\x40") "?\n"
"Combien??? Devine!!!! \n"
"Hé hé hé..."BOX_BREAK
COLOR("\x41") "100 Rubis pièce" COLOR("\x40") "!\n"
"Wouahahahahaha!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4068,
"Ha! Bon...\n"
"Miam miam..."
);

DECLARE_MESSAGE_FRA(0x4069,
"Pas assez d'argent! \n"
"J'vais pas te les donner pour \n"
"rien! Miam miam..."
);

DECLARE_MESSAGE_FRA(0x406A,
"Assigne un haricot à " COLOR("\x46") "[C] " COLOR("\x40") "et \n"
"plante-le dans la terre à côté."
);

DECLARE_MESSAGE_FRA(0x406B,
"Dommage! Je suis en rupture de\n"
"de stock! Miam miam...Comment?\n"
"Non! Ces haricots ne sont pas à \n"
"vendre! C'est mon goûter..."
);

DECLARE_MESSAGE_FRA(0x406C,
"Tu trouveras de nombreux trous\n"
"pour planter tes haricots...\n"
"Cherche bien!!!\n"
"Miam miam miam."
);

DECLARE_MESSAGE_FRA(0x406D,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "un mètre" COLOR("\x40") ". \n"
"C'est pas terrible."
);

DECLARE_MESSAGE_FRA(0x406E,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "2 mètres" COLOR("\x40") ". \n"
"C'est pas terrible."
);

DECLARE_MESSAGE_FRA(0x406F,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "3 mètres" COLOR("\x40") ". \n"
"C'est pas terrible."
);

DECLARE_MESSAGE_FRA(0x4070,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "4 mètres" COLOR("\x40") ". \n"
"Ce n'est pas assez."
);

DECLARE_MESSAGE_FRA(0x4071,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "5 mètres" COLOR("\x40") ". \n"
"Ce n'est pas assez."
);

DECLARE_MESSAGE_FRA(0x4072,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "6 mètres" COLOR("\x40") ". \n"
"Tu peux faire mieux."
);

DECLARE_MESSAGE_FRA(0x4073,
"Sans que tu le saches, je \n"
"t'observais... \n"
"Tu viens de plonger à " COLOR("\x41") "7 mètres" COLOR("\x40") ". \n"
"Tu peux faire mieux."
);

DECLARE_MESSAGE_FRA(0x4074,
UNSKIPPABLE "Sans que tu le saches, je\n"
"t'observais...\n"
"Tu as " COLOR("\x41") "touché le fond" COLOR("\x40") ". Tu es fort!\n"
"Prends ceci en récompense!"
);

DECLARE_MESSAGE_FRA(0x4075,
"Tu es le meilleur plongeur du \n"
"monde... Peut-être devrais-tu \n"
"plonger dans le Lac Hylia?"
);

DECLARE_MESSAGE_FRA(0x4076,
"Mon nom est " COLOR("\x41") "Pierre" COLOR("\x40") " l'épouvantail! \n"
"J'adore les rythmes entraînants! \n"
"Mais je suis planté ici..."
);

DECLARE_MESSAGE_FRA(0x4077,
"Superbe mélodie! \n"
"Elle fait bouger mon p'tit corps!" EVENT
);

DECLARE_MESSAGE_FRA(0x4078,
"N'hésite pas à revenir me chanter\n"
"quelque chose!" EVENT
);

DECLARE_MESSAGE_FRA(0x4079,
"Cette mélodie est gravée au fond\n"
"de mon coeur...\n"
"Joue-la encore une fois!" EVENT
);

DECLARE_MESSAGE_FRA(0x407A,
"Je garde cette mélodie au fond \n"
"de mon coeur!" EVENT
);

DECLARE_MESSAGE_FRA(0x407B,
"La partie de pêche te coûtera...\n"
COLOR("\x41") "20 Rubis" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x407C,
"Ha! La " COLOR("\x41") "fonction" COLOR("\x40") " " COLOR("\x41") "Vibration " COLOR("\x40") "n'est" COLOR("\x41") "\n"
COLOR("\x40") "pas activée! Tu ne pourras\n"
"malheureusement pas sentir\n"
"les poissons taquiner ton hameçon."BOX_BREAK"Pas de vibrations pour toi!" EVENT
);

DECLARE_MESSAGE_FRA(0x407D,
"Whoa! La " COLOR("\x41") "fonction" COLOR("\x40") " " COLOR("\x41") "Vibration\n"
COLOR("\x40") "est activée! Tu pourras\n"
"sentir les poissons\n"
"taquiner ton hameçon!" EVENT
);

DECLARE_MESSAGE_FRA(0x407E,
"Dommage! Tu n'as pas assez\n"
"d'argent!"
);

DECLARE_MESSAGE_FRA(0x407F,
"Bon! Je t'explique!"BOX_BREAK"Approche-toi du bord de l'eau et \n"
"appuie sur " COLOR("\x44") "[L]" COLOR("\x40") " pour repérer un\n"
"poisson."BOX_BREAK"Envoie ta ligne vers ce poisson \n"
"avec " COLOR("\x41") "[B]" COLOR("\x40") "  puis appuie sur " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "pour\n"
"arrêter le déroulement de la ligne."BOX_BREAK"Remue l'appât avec " COLOR("\x44") "[Control Stick]" COLOR("\x40") " ou utilise\n"
COLOR("\x41") "[B]" COLOR("\x42") " " COLOR("\x40") "si tu es un débutant!"BOX_BREAK"Remonte ta ligne avec " COLOR("\x42") "[A]" COLOR("\x43") " " COLOR("\x40") "et \n"
"appuie sur " COLOR("\x44") "[R] " COLOR("\x40") "pour l'enrouler \n"
"plus vite."BOX_BREAK"Si tu sens une touche, accroche-la\n"
"avec " COLOR("\x42") "[A] " COLOR("\x40") "et " COLOR("\x44") "[Control Stick] " COLOR("\x40") "vers le bas. \n"
"Remonte ensuite la ligne avec " COLOR("\x42") "[A]" COLOR("\x40") "."BOX_BREAK"Tu as bien tout compris?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4080,
"Je suis très généreux aujourd'hui!\n"
"Tu peux pêcher aussi longtemps \n"
"que tu le désires... Mais tu ne \n"
"pourras conserver qu'un poisson."BOX_BREAK"Le poisson le plus gros jamais \n"
"attrapé pèse " COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "."BOX_BREAK"Au fait! Change ton angle de vue\n"
"avec " COLOR("\x44") "[L] " COLOR("\x40") "après avoir jeté ta ligne."BOX_BREAK
SHIFT("\x20") "Allez hop! A la pêche!" EVENT
);

DECLARE_MESSAGE_FRA(0x4081,
"Wah ha ha ha ha!\n"
"As-tu accroché ce poisson en \n"
"appuyant sur " COLOR("\x42") "[A]" COLOR("\x40") " et " COLOR("\x44") "[Control Stick] " COLOR("\x40") "en bas?"
);

DECLARE_MESSAGE_FRA(0x4082,
"Que s'est-il passé?\n"
"Tu as perdu ta prise!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x4083,
"Mouais... Il pèse " COLOR("\x41")  FISH_INFO " livres." COLOR("\x40") "\n"
"Veux-tu le garder?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4084,
"Que veux-tu?\n"
THREE_CHOICE  COLOR("\x42") "Peser mon bô poisson!\n"
"Discuter un peu\n"
"Partir" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4085,
"La passion seule ne fait pas le \n"
"bon pêcheur!"
);

DECLARE_MESSAGE_FRA(0x4086,
SHIFT("\x4B") "WHOAAAA!"BOX_BREAK"Ce poisson est é-norme! C'est un \n"
"nouveau record! Il pèse au bas\n"
"mot " COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "! Vraiment! \n"
"Tiens voilà ton prix!" EVENT
);

DECLARE_MESSAGE_FRA(0x4087,
"Héééé! \n"
"J'suis pas un poisson moi!!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x4088,
"Hé! P'tite tête! T'as pas un truc\n"
"plus important à faire?"BOX_BREAK"Quoi? Tu trouves que c'est plus\n"
"drôle de jouer ici?"BOX_BREAK"Y'en a beaucoup qui sont morts\n"
"en faisant ça! C'est mauvais pour\n"
"la santé! Sérieux!\n"
"Enfin bon..."
);

DECLARE_MESSAGE_FRA(0x4089,
QUICKTEXT_ENABLE "Plus gros poisson jamais pêché.\n"
"Poids:  " FISH_INFO " livres.\n"
"Pêcheur: " NAME  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x408A,
"Veux-tu continuer à pêcher?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x408B,
"Il ne pèse que:  " COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "...\n"
"Y'a plus gros, c'est sûr!" EVENT
);

DECLARE_MESSAGE_FRA(0x408C,
"Ben alors! C'est pas la forme?" EVENT
);

DECLARE_MESSAGE_FRA(0x408D,
"Tu veux essayer un autre appât?\n"
"N'as-tu pas confiance en moi?\n"
"N'aimes-tu pas mon matériel?"BOX_BREAK"On dit souvent:\n"
"\"Le bon pêcheur ne décide jamais\n"
"de ses appâts!\""
);

DECLARE_MESSAGE_FRA(0x408E,
"Quoi? Tu veux connaître ma \n"
"technique secrète de pêche?\n"
"Ben justement, ma technique...\n"
"Elle est secrète..."
);

DECLARE_MESSAGE_FRA(0x408F,
"Quoi? Tu veux savoir si je suis \n"
"un bon pêcheur!"BOX_BREAK"T'étais pas né que le grand \n"
"Jabu-Jabu se balançait au bout de\n"
"ma ligne! \n"
"J'suis un pro! Une pointure!"
);

DECLARE_MESSAGE_FRA(0x4090,
QUICKTEXT_ENABLE "Règlement:" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE "1. Ne pas utiliser d'appâts coulants.\n"
"2. Ne pas cracher dans l'étang.\n"
"3. Rester calme." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "4. Ne pas jeter sa ligne sur \n"
"le patron.\n"
"5. Ne pas utiliser de bombes." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x4091,
"Wooaa! Quel gros morceau!\n"
"Voyons voir... Il pèse...\n"
COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "!"BOX_BREAK"Veux-tu le garder?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4092,
"Reviens une fois plus grand!\n"
"Les poissons auront grandi aussi!\n"
"Wha ha ha ha...hmm...hmm."
);

DECLARE_MESSAGE_FRA(0x4093,
UNSKIPPABLE "Hé, jeune homme! Je me souviens \n"
"de toi! Cela fait un bail!"BOX_BREAK
UNSKIPPABLE "Combien d'années? Sept?! \n"
"Alors...quelles nouvelles?!"BOX_BREAK
UNSKIPPABLE "Moi? Bof....\n"
"Tu es mon seul client. \n"
"Je n'ai plus de boulot.\n"
"Les temps sont durs!"BOX_BREAK
UNSKIPPABLE "En plus mes cheveux..."BOX_BREAK
UNSKIPPABLE "Enfin...\n"
"C'est un charme dont j'me passe."BOX_BREAK
UNSKIPPABLE "Bon...tu veux pêcher?\n"
COLOR("\x41") "20 Rubis" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4094,
"Quoi?"BOX_BREAK"Tu veux pêcher ailleurs? \n"
"T'es fou!?"BOX_BREAK"Qu'est-ce que je vais devenir?"
);

DECLARE_MESSAGE_FRA(0x4095,
"Quoi?"BOX_BREAK"Pourquoi j'me gratte tout l'temps?\n"
"Mais...j'me gratte pas!\n"
"T'es un p'tit marrant, toi!"
);

DECLARE_MESSAGE_FRA(0x4096,
"Quoi?"BOX_BREAK"L'eau est trop sombre?\n"
"Les poissons ne mordent pas?"BOX_BREAK"Mais.... N'importe quoi!\n"
"C'est le meilleur moment pour\n"
"pêcher!"BOX_BREAK"Un énorme poisson peut mordre à\n"
"n'importe quel moment!\n"
"C'est ça la grande aventure de la\n"
"pêche, mon p'tit bonhomme!"
);

DECLARE_MESSAGE_FRA(0x4097,
"Hé! Ho non! C'est interdit, ça!\n"
"Rends-moi mon chapeau ou \n"
"j't'accroche à mon hameçon!"BOX_BREAK"Tu m'cherches ou quoi?\n"
"Rends-le moi!\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Jamais!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4098,
"Quoi? Humm? Oh?\n"
"Je crois que ce poisson est plus\n"
"petit que ta précédente prise..."BOX_BREAK"Tu veux vraiment le garder?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Non\n"
"Oui" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x4099,
"Peuchère! Il est bizarre ce \n"
"poisson! En plus il pèse\n"
COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "!"BOX_BREAK"Veux-tu le garder?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x409A,
SHIFT("\x14") "Mmmm? C'est quoi ce truc?"BOX_BREAK"C'est pas un...? Incroyable!\n"
"Vous trouvez un " COLOR("\x41") "appât coulant" COLOR("\x40") "!"BOX_BREAK"Voulez-vous l'utiliser maintenant?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Jamais!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x409B,
"Voyons, voyons..."BOX_BREAK"WOW! C'est pas commun!\n"
"C'est un " COLOR("\x41") "brochet Hylien" COLOR("\x40") "!"BOX_BREAK"Ce poisson est si rare, son poids \n"
"n'est pas important... \n"
"Voilà ton prix!" EVENT
);

DECLARE_MESSAGE_FRA(0x409C,
"Ce type de poisson se fait rare.\n"
"Je vais le relâcher." EVENT
);

DECLARE_MESSAGE_FRA(0x409D,
QUICKTEXT_ENABLE "Règlement:\n"
"1. Ne pas utiliser d'appâts coulants.\n"
"2. Ne pas utiliser de bombes.\n"
"3. Rester calme." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x409E,
"Holà! Holà!\n"
"Les cannes ne sortent pas d'ici!"BOX_BREAK"Ta journée de pêche finie, \n"
"rapporte ta canne au patron!"
);

DECLARE_MESSAGE_FRA(0x409F,
"Ohhhh mon Dieuuuuu!!!\n"
"Ce poisson est énooooorme!!"BOX_BREAK"Il ne tient même pas à l'écran! \n"
"J'peux pas l'peser... Il va faire \n"
"imploser ma balance!!! \n"
"Il doit faire " COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "!"BOX_BREAK"Tu veux garder ce monstre, hein?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Le garder" COLOR("\x40") "\n"
COLOR("\x42") "Ne pas le garder" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x40A0,
"Hé! P'tit mec!\n"
"Moi c'est " COLOR("\x41") "Bonooru" COLOR("\x40") ", l'épouvantail!\n"
"j'ai une mémoire fabuleuse!"BOX_BREAK"N'hésite pas à me jouer une\n"
"super mélodie!"BOX_BREAK"Voilà la mélodie que tu m'as jouée\n"
"la dernière fois, mec!"BOX_BREAK"Chauffe, petit!" EVENT
);

DECLARE_MESSAGE_FRA(0x40A1,
"Je suis " COLOR("\x41") "Bonooru" COLOR("\x40") " l'épouvan-tail \n"
"musi-cal et gé-nial!\n"
"Moi...J'n'oublie jamais une mélodie!"
);

DECLARE_MESSAGE_FRA(0x40A2,
"Entonne ta mélodie pour appeler \n"
"mon copain Pierre! \n"
"Il apparaîtra s'il se trouve dans \n"
"l'coin, mec!"
);

DECLARE_MESSAGE_FRA(0x40A3,
"Hé! N'es-tu pas le p'tit mec à la\n"
"fée d'il y a sept ans?\n"
"Wow! T'as bien grandi!"BOX_BREAK"Tiens voilà ta mélodie..."BOX_BREAK"Quoi?"BOX_BREAK"Non, moi j'oublie rien!\n"
"Alors joue ta mélodie pour voir...\n"
"Tu l'as peut-être oubliée, qui sait?\n"
"Joue, mec! Joue!!!"
);

DECLARE_MESSAGE_FRA(0x40A4,
"Whaouuu! Tu as un ocarina!\n"
"Pourquoi ne pas en pousser une \n"
"petite?" EVENT
);

DECLARE_MESSAGE_FRA(0x40A5,
"Mmmmm.... Pas mal!\n"
"Je vais l'enregistrer pour toi!"BOX_BREAK"A la différence de Pierre, je peux\n"
"mémoriser n'importe quelle chanson,\n"
"même très longue! Mais ne \n"
"retenons que cette partie, OK?" EVENT
);

DECLARE_MESSAGE_FRA(0x40A6,
"C'est mal! \n"
"Jouer de cette façon ne fera \n"
"jamais bouger mon p'tit corps!!!" EVENT
);

DECLARE_MESSAGE_FRA(0x40A7,
"HO YEAHHH!!\n"
"C'est ça! C'est la mélodie!!\n"
"Ca balance!! Je suis soufflé!"BOX_BREAK"Je n'ai pas oublié cette mélodie...\n"
"Je n'oublie jamais rien! \n"
"Je vais te récompenser, mec!"BOX_BREAK"........\n"
"J'ai une idée!"BOX_BREAK"Mon pote Pierre se balade dans le\n"
"coin! Joue cette mélodie et il\n"
"apparaîtra...peut-être!"BOX_BREAK"Je vais lui dire de t'aider au \n"
"son de ton ocarina!" EVENT
);

DECLARE_MESSAGE_FRA(0x40A8,
"Hé! C'est un ocarina!\n"
"Joue ta chanson, mec!" EVENT
);

DECLARE_MESSAGE_FRA(0x40A9,
SFX("\x28\xE4") "Quel chant délicieux!\n"
"Cette mélodie est très belle...\n"
"Crooâââââ! Nous allons l'apprendre\n"
"par coeur...Croooââââ !"BOX_BREAK"Prends donc ces Rubis!\n"
"N'hésite pas à revenir nous\n"
"chanter quelque chose...\n"
"Croooâââ croooâââ!" EVENT
);

DECLARE_MESSAGE_FRA(0x40AA,
SFX("\x28\xE3") "Crooooââââââ!\n"
"Cette mélodie est divine! \n"
"Croooâââââ!"BOX_BREAK"Je chaaaaannnte sous la pluie!\n"
"Croooââââ!!"BOX_BREAK"La communauté grenouille te dit:\n"
"Merci!!! A bientôt!!\n"
"Crooooâââââ!" EVENT
);

DECLARE_MESSAGE_FRA(0x40AB,
SFX("\x28\xE4") "Nous sommes les célèbres ténors \n"
"grenouillesques!!! Les stars de \n"
"l'étang! Croooââââ!!"BOX_BREAK"Fais-nous sauter pour avaler les\n"
"insectes! Croooââââ!!!"BOX_BREAK"D'accord? \n"
"Trois, deux, un, PARTEZ!" EVENT
);

DECLARE_MESSAGE_FRA(0x40AC,
SFX("\x28\xE3") "Fantastique! Délicieux!\n"
"Un repas bien équilibré!\n"
"Crooooââââââ!"BOX_BREAK"Gros crapauds et belles grenouilles\n"
"te disent: Merci! Burp." EVENT
);

DECLARE_MESSAGE_FRA(0x40AD,
"Je ne me souviens pas de cette \n"
"chanson, mec! \n"
"Pourquoi? J'sais pas moi!"
);

DECLARE_MESSAGE_FRA(0x40AE,
QUICKTEXT_ENABLE "Le plus gros poisson pêché dans \n"
"cet étang pèse: " FISH_INFO " livres.\n"
"Pêcheur: le patron " QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x40AF,
"Quoi? Tu veux pêcher avec un \n"
"autre appât?\n"
"...Hé! C'est quoi ça?"BOX_BREAK"Quoi? Tu l'as trouvé? Mon oeil!\n"
"Tu n'as pas le droit d'utiliser ça! \n"
"C'est le règlement!\n"
"Enfin...je passe l'éponge..."
);

DECLARE_MESSAGE_FRA(0x40B0,
"WHOOOOOAAAAAAOOOO!\n"
"Il est E-N-O-R-M-E!!! \n"
"Tu as pulvérisé le record!!! \n"
"Il pèse " COLOR("\x41")  FISH_INFO " livres" COLOR("\x40") "!!"BOX_BREAK"Maaaaaaais...tu n'as pas utilisé un\n"
"appât réglementaire!\n"
"Donc...pas de prix pour toi!\n"
"Hé hé hé hé!!! P'tit tricheur!" EVENT
);

DECLARE_MESSAGE_FRA(0x40B1,
QUICKTEXT_ENABLE "Le plus gros poisson pêché dans\n"
"cet étang pèse: " FISH_INFO " livres.\n"
"Pêcheur: " NAME "\n"
"(NOTE: appât non-réglementaire!)" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x40B2,
"T'es un bon p'tit gars!\n"
"Mais ne dis pas à tout le monde \n"
"que j'ai plus un poil sur l'caillou!" EVENT
);

DECLARE_MESSAGE_FRA(0x40B3,
"QUOIIIIII?!?"BOX_BREAK"Pourquoi tant de haine?\n"
"T'es un punk, toi?"BOX_BREAK"Mais j'vais pas m'laisser faire!\n"
"Paie-moi " COLOR("\x41") "50 Rubis" COLOR("\x40") "!\n"
"Non mais des fois!" EVENT
);

DECLARE_MESSAGE_FRA(0x5000,
QUICKTEXT_ENABLE "GYAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Tu" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "m'as" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "tué!!" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Hein? Oh! C'est toi."BOX_BREAK"As-tu déjà utilisé le\n"
COLOR("\x46") "Chant du soleil" COLOR("\x40") "?"BOX_BREAK"Comme je te l'ai déjà dit, ce chant\n"
"te permet de passer de la nuit au \n"
"jour et inversement. Et ceci à\n"
"n'importe quel moment."BOX_BREAK"Même plongé dans les ténèbres, ce \n"
"chant te viendra en aide.\n"
"N'hésite pas à souvent l'utiliser!"
);

DECLARE_MESSAGE_FRA(0x5001,
QUICKTEXT_ENABLE "En creusant un trou, j'ai trouvé un\n"
"truc qui fait BOING! BOING!\n"
"On dirait un ressort...\n"
"Je ne le donnerai à personne!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x5002,
"Vous trouvez le " COLOR("\x41") "journal du \n"
"fossoyeur" COLOR("\x40") "."BOX_BREAK"Désirez-vous le lire?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x5003,
QUICKTEXT_ENABLE "Toi le petit curieux qui lit ce\n"
"journal, viens dans ma tombe.\n"
"Et peut-être auras-tu droit à mon\n"
"précieux " COLOR("\x41") "trésor" COLOR("\x40") "." QUICKTEXT_DISABLE BOX_BREAK
QUICKTEXT_ENABLE "Je t'attends...\n"
"--Igor" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x5004,
QUICKTEXT_ENABLE "Etre curieux, c'est pas bien..." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x5005,
"Vous avez vaincu un Esprit!"BOX_BREAK"Voulez-vous le garder dans une\n"
"bouteille?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x5006,
"Vous n'avez malheureusement pas \n"
"de bouteille vide."
);

DECLARE_MESSAGE_FRA(0x5007,
"L'Esprit peut alors s'enfuir."
);

DECLARE_MESSAGE_FRA(0x5008,
"Vous obtenez un Esprit!"
);

DECLARE_MESSAGE_FRA(0x5009,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x14") "La course du soleil s'achève\n"
SHIFT("\x3B") "le soir venu...\n"
SHIFT("\x18") "Les nouvelles vies un jour\n"
SHIFT("\x3D") "se meurent..." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x2D") "Un soleil, une lune.\n"
SHIFT("\x30") "Un jour, une nuit." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x05") "Respecte les morts jadis vivants." QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Purée... Que c'est beau!"
);

DECLARE_MESSAGE_FRA(0x500A,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Entonne le " COLOR("\x46") "Chant du Soleil" COLOR("\x40") " et \n"
SHIFT("\x11") "apaise le long tourment des \n"
SHIFT("\x3A") "âmes damnées" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x500B,
UNSKIPPABLE "Il y a quelque chose d'écrit\n"
"sur cette pierre tombale..."BOX_BREAK
UNSKIPPABLE "C'est la " COLOR("\x46") "mélodie secrète" COLOR("\x40") " des \n"
"Frères Musiciens!"
);

DECLARE_MESSAGE_FRA(0x500C,
"Potion ultime! Que dis-tu de\n"
COLOR("\x41") "100 Rubis" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x500D,
"Reviens me voir si tu changes\n"
"d'avis... Hé hé hé hé!"
);

DECLARE_MESSAGE_FRA(0x500E,
"Tu n'as pas assez d'argent!\n"
"Hé hé hé hé!"
);

DECLARE_MESSAGE_FRA(0x500F,
UNSKIPPABLE "GYAAAAH!\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Tu" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "m'as" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "tué..." QUICKTEXT_DISABLE  TEXT_SPEED("\x00")  QUICKTEXT_ENABLE "INCROYABLE!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Oh! Hein?\n"
"Tu n'es pas un soldat de \n"
"Ganondorf! Qui es-tu?"BOX_BREAK
UNSKIPPABLE "Désolé de m'être comporté de la \n"
"sorte, mais... Je ne suis qu'un\n"
"fantôme, après tout!"BOX_BREAK
UNSKIPPABLE "Sais-tu qui je suis? Non?\n"
"Ah bon... Alors écoute-moi bien.\n"
"Hum hum..." TEXTID("\x50\x10")
);

DECLARE_MESSAGE_FRA(0x5010,
"Je suis un fantôme de l'un des \n"
"frères musiciens du Village \n"
"Cocorico."BOX_BREAK"Tous les habitants de ce village \n"
"sont les loyaux sujets de la Famille\n"
"Royale d'Hyrule."BOX_BREAK"Mon frère et moi-même avions\n"
"pour mission d'étudier les pouvoirs\n"
"mystiques héréditaires de la Famille\n"
"Royale."BOX_BREAK"Tout en ignorant à quoi pouvait \n"
"bien servir la célèbre Triforce,"BOX_BREAK"nous fûmes sur le point d'achever\n"
"nos expériences sur le " COLOR("\x41") "contrôle du" COLOR("\x40") "\n"
COLOR("\x41") "temps" COLOR("\x40") " grâce aux ocarinas."BOX_BREAK"Plus précisément..."BOX_BREAK"Nous avons percé le mystère du \n"
"temps!"BOX_BREAK"La gloire nous tendait les bras\n"
"mais cet odieux Ganondorf tenta \n"
"de dérober le résultat d'années \n"
"d'études!"BOX_BREAK"Et c'est donc au prix de nos vies\n"
"que nous pûmes protéger le secret." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_FRA(0x5011,
"Veux-tu que je répète tout ça?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x5012,
UNSKIPPABLE  QUICKTEXT_ENABLE "GYAAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "JE SUIS" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "MORT!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Heu..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "ENCORE?" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Gueuh?? C'est toi?"BOX_BREAK
UNSKIPPABLE "Tu me fais vraiment penser à la\n"
"Princesse Zelda."BOX_BREAK
UNSKIPPABLE "Tu es en si bons termes avec la\n"
"Famille Royale que je vais de ce \n"
"pas te conter la suite de notre\n"
"tragique histoire."BOX_BREAK
UNSKIPPABLE "En raison de nos nombreuses\n"
"symphonies, les sujets d'Hyrule \n"
"nous élevèrent au rang de Grands\n"
"Compositeurs."BOX_BREAK
UNSKIPPABLE "Mais notre rôle sur cette terre ne \n"
"se bornait pas à la composition."BOX_BREAK
UNSKIPPABLE "Notre mission était d'analyser les\n"
"mystérieux pouvoirs de la Famille\n"
"Royale d'Hyrule."BOX_BREAK
UNSKIPPABLE "Mais les évènements ont voulu\n"
"que le résultat de nos recherches \n"
"ne soit jamais révélé...\n"
"Pourtant la gloire nous souriait!"BOX_BREAK
UNSKIPPABLE "Nos études furent gardées \n"
"secrètes jusqu'à terme...." TEXTID("\x50\x14")
);

DECLARE_MESSAGE_FRA(0x5013,
UNSKIPPABLE  QUICKTEXT_ENABLE "GYAAAAH!" QUICKTEXT_DISABLE "\n"
TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "JE SUIS" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "MORT!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Heu?" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "ENCORE?" QUICKTEXT_DISABLE  TEXT_SPEED("\x00") "\n"
"Quoi?? Encore toi?"BOX_BREAK
UNSKIPPABLE "Tu me fais vraiment penser à la\n"
"Princesse Zelda."BOX_BREAK
UNSKIPPABLE "Tu es en si bons termes avec la\n"
"Famille Royale que je vais de ce \n"
"pas te conter la suite de notre\n"
"tragique histoire." TEXTID("\x50\x14")
);

DECLARE_MESSAGE_FRA(0x5014,
"Pour être franc, chaque frère \n"
"étudiait un chant différent.\n"
"L'un pour " COLOR("\x41") "invoquer le soleil " COLOR("\x40") "et \n"
"l'autre pour " COLOR("\x41") "invoquer la lune" COLOR("\x40") "."BOX_BREAK"Si un membre de la Famille Royale\n"
"t'a envoyé jusqu'ici, je pense \n"
"pouvoir te faire confiance et te\n"
"faire partager notre secret."BOX_BREAK"Va donc examiner les inscriptions\n"
"sur la " COLOR("\x41") "pierre tombale royale" COLOR("\x40") "."BOX_BREAK"Toi, jeune messager de la Famille\n"
"Royale, chante haut et fort ta\n"
"loyauté sur la Sainte Triforce." TEXTID("\x50\x11")
);

DECLARE_MESSAGE_FRA(0x5015,
"Z Z Z..."BOX_BREAK"Malon...tout va bien...\n"
"Mmm...(ronfle)...Mmm...\n"
"Tout va bien..."
);

DECLARE_MESSAGE_FRA(0x5016,
"Ingo s'occupe du Ranch Lon Lon à\n"
"présent. On l'appelle le " COLOR("\x41") "Ranch Ingo" COLOR("\x40") "."BOX_BREAK"On m'a fichu dehors et...\n"
"Regarde dans quel état j'suis!\n"
"Ma fille Malon y travaille toujours."BOX_BREAK"Je me fais tant de souci..."
);

DECLARE_MESSAGE_FRA(0x5017,
"Malon est de nouveau heureuse?\n"
"Je vais retourner au Ranch!"
);

DECLARE_MESSAGE_FRA(0x5018,
UNSKIPPABLE  QUICKTEXT_ENABLE "Hé! Petit!" QUICKTEXT_DISABLE "\n"
"Laisse les tombes à leur place!"BOX_BREAK
UNSKIPPABLE "Moi c'est " COLOR("\x41") "Igor le fossoyeur" COLOR("\x40") "!\n"
"Ma face fait peur aux mouches \n"
"mais je suis un chic type..."BOX_BREAK
UNSKIPPABLE "Connais-tu l'attraction du\n"
"cimetière?\n"
"Elle s'appelle..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x1A")  COLOR("\x41") "L'excursion du fossoyeur" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Je creuse, je creuse...\n"
"J'trouve un truc ou que dalle...\n"
"Fais-moi creuser et...\n"
"Garde tout pour ta pomme!" TEXTID("\x50\x19")
);

DECLARE_MESSAGE_FRA(0x5019,
"Tu veux que j'creuse ici?\n"
"C'est " COLOR("\x41") "10 Rubis" COLOR("\x40") " le trou.\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x501A,
COLOR("\x41") "Y'a rien ici!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x501B,
UNSKIPPABLE "Arrière, " NAME "!"
);

DECLARE_MESSAGE_FRA(0x501C,
UNSKIPPABLE  NAME "....\n"
"Un grand malheur vient de se \n"
"produire! Le " COLOR("\x41") "monstre de l'ombre" COLOR("\x40") " \n"
"s'est échappé!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Impa" COLOR("\x40") ", chef du Village Cocorico, \n"
"a jadis combattu puis enfermé le \n"
"Monstre de l'Ombre au fond du \n"
"puits...."BOX_BREAK
UNSKIPPABLE "Mais depuis longtemps cette bête,\n"
"grâce à l'influence de Ganondorf, \n"
"rassemble ses forces pour enfin\n"
"recouvrer sa liberté!!!"
);

DECLARE_MESSAGE_FRA(0x501D,
UNSKIPPABLE "Je vais m'occuper du village!\n"
"Je compte sur toi " NAME "."
);

DECLARE_MESSAGE_FRA(0x501E,
QUICKTEXT_ENABLE  SHIFT("\x28") "Frère Musicien Royal\n"
SHIFT("\x3C") "Bémol l'aîné\n"
SHIFT("\x37") "Repose En Paix" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x501F,
QUICKTEXT_ENABLE  SHIFT("\x28") "Frère Musicien Royal\n"
SHIFT("\x38") "Dièse le cadet\n"
SHIFT("\x37") "Repose En Paix" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x5020,
QUICKTEXT_ENABLE  SHIFT("\x37") "Tombe Royale" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x5021,
UNSKIPPABLE  QUICKTEXT_ENABLE "Cette ode est dédiée à la mémoire\n"
SHIFT("\x03") "des disparus de la Famille Royale." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x5022,
UNSKIPPABLE "Jeune garçon à l'ocarina...\n"
"Enfin tu es venu."BOX_BREAK
UNSKIPPABLE "Mon nom est " COLOR("\x41") "Impa" COLOR("\x40") " des Sheikahs.\n"
"Je suis la nourrice de la Princesse\n"
"et le Sage du Temple de l'Ombre."
);

DECLARE_MESSAGE_FRA(0x5023,
UNSKIPPABLE "Prends bien soin de la Princesse!" FADE("\x32")
);

DECLARE_MESSAGE_FRA(0x5024,
UNSKIPPABLE  NAME ", le héros!"BOX_BREAK
UNSKIPPABLE "Enfin les " COLOR("\x41") "six Sages " COLOR("\x40") "sont éveillés!\n"
"L'heure est venue pour toi de \n"
"défier le Seigneur du Malin!"BOX_BREAK
UNSKIPPABLE "Mais avant de croiser le fer avec\n"
"le vil Ganondorf, il te reste une \n"
"personne à rencontrer..."BOX_BREAK
UNSKIPPABLE "Cette personne t'attend au\n"
COLOR("\x44") "Temple du Temps" COLOR("\x40") "...."
);

DECLARE_MESSAGE_FRA(0x5025,
UNSKIPPABLE "Depuis des siècles, les Sheikahs \n"
"furent les serviteurs secrets de \n"
"la Famille Royale d'Hyrule.\n"
"Toutefois..."BOX_BREAK
UNSKIPPABLE "Il y a sept ans, Ganondorf lança\n"
"son attaque et le Château d'Hyrule \n"
"dut se rendre après une très \n"
"courte bataille."BOX_BREAK
UNSKIPPABLE "Ganondorf était à la recherche\n"
"de l'une des clés du Saint \n"
"Royaume...le trésor secret de la \n"
"Famille Royale...l'Ocarina du Temps!"BOX_BREAK
UNSKIPPABLE "Mon devoir était de mettre\n"
"la Princesse Zelda à l'abri."BOX_BREAK
UNSKIPPABLE "Je me souviens t'avoir vu lors\n"
"de notre fuite..."BOX_BREAK
UNSKIPPABLE "Tu es devenu un valeureux\n"
"guerrier..."
);

DECLARE_MESSAGE_FRA(0x5026,
UNSKIPPABLE "Mon devoir est de rester ici... \n"
"Trouve la Princesse Zelda et \n"
"protège-la à ma place."BOX_BREAK
UNSKIPPABLE "Je vais maintenant te transmettre\n"
"mon pouvoir grâce à ce " COLOR("\x43") "Médaillon" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x5027,
"Comment se porte ta Cocotte?\n"
"Veux-tu me la remettre?"
);

DECLARE_MESSAGE_FRA(0x5028,
UNSKIPPABLE  SFX("\x68\x55") "Je suis le " COLOR("\x41") "chef des ouvriers \n"
COLOR("\x40") "engagé par Impa pour transformer\n"
"le village en grande ville!"BOX_BREAK
UNSKIPPABLE "Mais les jeunes gens d'aujourd'hui\n"
"n'ont aucune ambition..."BOX_BREAK
UNSKIPPABLE "Mes ouvriers se baladent toute\n"
"la sainte journée! Alors le travail \n"
"prend du retard et ça me rend \n"
"dingue..."BOX_BREAK
UNSKIPPABLE "Même mon propre fils ne travaille\n"
"pas. Il fiche sa vie en l'air!" TEXTID("\x50\x29")
);

DECLARE_MESSAGE_FRA(0x5029,
UNSKIPPABLE "Inutiles et paresseux! TOUS!"
);

DECLARE_MESSAGE_FRA(0x502A,
"Regarde-moi cette pauvre fille.\n"
"Elle s'occupe des cocottes même \n"
"en étant allergique aux plumes!\n"
"Quel courage...je l'aime..."BOX_BREAK"J'aimerais bien l'aider mais...\n"
"Les cocottes, moi ça m'énerve!\n"
"Pas toi?"
);

DECLARE_MESSAGE_FRA(0x502B,
UNSKIPPABLE "La Princesse est à l'abri \n"
"maintenant..."
);

DECLARE_MESSAGE_FRA(0x502C,
UNSKIPPABLE "Très bientôt, Zelda viendra tout \n"
"t'expliquer..."BOX_BREAK
UNSKIPPABLE "Une fois les six Sages réunis et\n"
"le Roi Sombre détruit, la vérité te \n"
"sera révélée."
);

DECLARE_MESSAGE_FRA(0x502D,
UNSKIPPABLE "Héhéhé, mon p'tit bouchon...\n"
"Alors t'es un rapide, hein?"BOX_BREAK
UNSKIPPABLE "En récompense je te donne mon\n"
"trésor... un " COLOR("\x41") "Grappin" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Cette chaîne montée sur ressort\n"
"te hissera là où sa pointe s'est\n"
"plantée. Pratique, hein?"BOX_BREAK
UNSKIPPABLE "Reviens me voir et tu gagneras \n"
"peut-être un autre p'tit cadeau. \n"
"Alors à bientôt!"BOX_BREAK
UNSKIPPABLE "Au fait... Bonne chance pour sortir \n"
"d'ici! Yark yark yark!"
);

DECLARE_MESSAGE_FRA(0x502E,
"Te revoilà, mon bouchon...\n"
"As-tu toujours sur toi mon\n"
"p'tit cadeau?"
);

DECLARE_MESSAGE_FRA(0x502F,
SHIFT("\x05") "Le temps de cette course est de\n"
SHIFT("\x4B")  RACE_TIME "!!" EVENT
);

DECLARE_MESSAGE_FRA(0x5030,
UNSKIPPABLE "Bien... Tu reviens à toi..."
);

DECLARE_MESSAGE_FRA(0x5031,
UNSKIPPABLE "Impa est partie sceller le\n"
COLOR("\x45") "Temple de l'Ombre" COLOR("\x40") "," COLOR("\x43") " " COLOR("\x40") "mais...\n"
"Elle sera en danger si personne ne \n"
"vient lui prêter main-forte!"BOX_BREAK
UNSKIPPABLE  NAME "!\n"
"Impa est l'une des six Sages.\n"
"Va détruire le Monstre de l'Ombre\n"
"et sauve Impa!"BOX_BREAK
UNSKIPPABLE "L'entrée du Temple se trouve sous \n"
"le cimetière de ce village."BOX_BREAK
UNSKIPPABLE "La seule chose en mon pouvoir est\n"
"de t'apprendre la mélodie t'ouvrant \n"
"le passage vers le Temple de \n"
"l'Ombre..."BOX_BREAK
UNSKIPPABLE "Cet air te plongera dans les \n"
"ténèbres abyssales... \n"
"Hors du temps et de l'espace...\n"
"Entends le " COLOR("\x45") "Nocturne de l'Ombre" COLOR("\x40") "!!"
);

DECLARE_MESSAGE_FRA(0x5032,
"Tourne et tourne! \n"
"Encore et encore!\n"
"Quelle fête!!!"BOX_BREAK"Je suis un joyeux musicien\n"
"qui tourne et tourne et tourne!\n"
"Danse et tourne avec moi!!!"BOX_BREAK"J'aimerais que ma chanson du \n"
"moulin fasse le tour du monde!\n"
"Tourne et tourne et tourne!!!"
);

DECLARE_MESSAGE_FRA(0x5033,
"Tourne et tourne et...hein?\n"
"Holà! Ca tourne trop vite!\n"
"Stooooooooooooooop!!!"
);

DECLARE_MESSAGE_FRA(0x5034,
"Grrrrrrrrr!"BOX_BREAK"Si jamais je retrouve ce môme...\n"
"Je lui écrase la tête!\n"
"Grrrrrrrrr!"BOX_BREAK"Il y a sept ans, il a tout détraqué \n"
"mon beau moulin avec son ocarina!\n"
"Si jamais je le retrouve...\n"
"Ping! Vlan! Dans les dents!"
);

DECLARE_MESSAGE_FRA(0x5035,
UNSKIPPABLE "Quoi?! Tu as un ocarina!!\n"
"Nom d'un chou-péteur!\n"
"Comme ce môme, il y a sept ans..."BOX_BREAK
UNSKIPPABLE "Il est arrivé ici comme une fleur\n"
"et il a joué une " COLOR("\x45") "curieuse mélodie" COLOR("\x40") ". \n"
"Mon moulin est ensuite devenu \n"
"complètement dingue!"
);

DECLARE_MESSAGE_FRA(0x5036,
"Que dois-je faire!?\n"
"Mes " COLOR("\x41") "Cocottes" COLOR("\x40") " sont perdues!"BOX_BREAK"Aide-moi, mon petit!\n"
"Dépose toutes les cocottes dans\n"
"cet enclos!"
);

DECLARE_MESSAGE_FRA(0x5037,
"Mes Cocottes sont perdues!\n"
"Dépose encore quatre cocottes \n"
"dans l'enclos!"
);

DECLARE_MESSAGE_FRA(0x5038,
"Mes Cocottes sont perdues!\n"
"Dépose encore trois cocottes \n"
"dans l'enclos!"
);

DECLARE_MESSAGE_FRA(0x5039,
"Mes Cocottes sont perdues!\n"
"Dépose encore deux cocottes \n"
"dans l'enclos!"
);

DECLARE_MESSAGE_FRA(0x503A,
"Mes Cocottes sont perdues!\n"
"Dépose encore une cocotte dans \n"
"l'enclos!"
);

DECLARE_MESSAGE_FRA(0x503B,
UNSKIPPABLE "Merci d'avoir retrouvé mes\n"
"cocottes. Mon allergie aux plumes\n"
"est vraiment pénible!"BOX_BREAK
UNSKIPPABLE "Voici un petit quelque chose\n"
"pour te remercier..." EVENT
);

DECLARE_MESSAGE_FRA(0x503C,
"Mais que fais-tu?!\n"
"Rassemble-les dans l'enclos ou \n"
"paie le prix fort!" EVENT
);

DECLARE_MESSAGE_FRA(0x503D,
"Sois gentil avec les cocottes!"
);

DECLARE_MESSAGE_FRA(0x503E,
UNSKIPPABLE "J'élève une nouvelle espèce de\n"
"Cocotte: les " COLOR("\x41") "Cocottes de Poche" COLOR("\x40") "! \n"
"Je n'y suis plus allergique!"BOX_BREAK
UNSKIPPABLE "Les " COLOR("\x41") "Cocottes " COLOR("\x40") "font d'excellents \n"
"réveils! Fais donc l'essai avec\n"
"quelqu'un de paresseux!"BOX_BREAK
UNSKIPPABLE "Leur chant est si mélodieux...\n"
QUICKTEXT_ENABLE  SHIFT("\x2D")  COLOR("\x41") "COCOOOOOOTTE" COLOR("\x40") "!" QUICKTEXT_DISABLE "\n"
"Surtout lorsqu'un gros dormeur\n"
"se trouve à proximité! Hi hi hi!"BOX_BREAK
UNSKIPPABLE "Toutefois... Mes cocottes ne sont\n"
"pas toutes heureuses..."BOX_BREAK
UNSKIPPABLE "Dis-moi... \n"
"Tu m'as l'air d'aimer les cocottes!\n"
"Je me trompe?"BOX_BREAK
UNSKIPPABLE "Tiens, prends cet oeuf.\n"
"Après l'apparition d'une cocotte,\n"
"reviens me voir et nous \n"
"examinerons son humeur." TEXTID("\x50\x3F")
);

DECLARE_MESSAGE_FRA(0x503F,
"Qu'en penses-tu? \n"
"L'idée t'intéresse?\n"
TWO_CHOICE  COLOR("\x42") "Mouais\n"
"Bof" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x5040,
"Dommage... \n"
"Les cocottes te font-elles peur?" EVENT
);

DECLARE_MESSAGE_FRA(0x5041,
"Hé hé hé! Mon p'tit bouchon...\n"
"Tu t'crois rapide?"BOX_BREAK"J'ai peut-être la trogne de\n"
"travers mais... Je fonce comme \n"
"une flèche! On fait la course?"
);

DECLARE_MESSAGE_FRA(0x5042,
"Sois gentil avec ma cocotte!\n"
"D'accord?"
);

DECLARE_MESSAGE_FRA(0x5043,
UNSKIPPABLE "Oh! Ta cocotte est en pleine \n"
"forme! Tu as sûrement réveillé\n"
"quelqu'un de très paresseux!"BOX_BREAK
UNSKIPPABLE "Tu aimes les cocottes à la folie!\n"
"Je vais te donner une cocotte \n"
"très rare..."BOX_BREAK
UNSKIPPABLE "Son nom est " COLOR("\x41") "P'tit Poulet" COLOR("\x40") "!\n"
"Mon frère s'en occupait...\n"
"Ses plumes bleues sont si douces!"BOX_BREAK
UNSKIPPABLE "Depuis le départ de mon frère,\n"
"P'tit Poulet n'a pas chanté une \n"
"seule fois...." TEXTID("\x50\x44")
);

DECLARE_MESSAGE_FRA(0x5044,
"Veux-tu garder " COLOR("\x41") "P'tit Poulet" COLOR("\x40") "?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x5045,
"Tu es amoureux de ta cocotte!\n"
"C'est génial! Garde-la encore un \n"
"peu et reviens me voir quand le\n"
"P'tit Poulet t'intéresse..." EVENT
);

DECLARE_MESSAGE_FRA(0x5046,
"Une vieille bique a ouvert une\n"
"boutique derrière celle-ci.\n"
"Va à gauche du comptoir pour y\n"
"accéder." EVENT
);

DECLARE_MESSAGE_FRA(0x5047,
"Mon frère devait se sentir bien\n"
"seul..."
);

DECLARE_MESSAGE_FRA(0x5048,
"L'on dit souvent que de par les\n"
COLOR("\x42") "Bois Perdus" COLOR("\x40") ", d'étranges senteurs \n"
"vous titillent les naseaux...\n"
"Gniii gniii gniii..."BOX_BREAK"Il me plairait tant de cueillir \n"
"maintes et diverses choses en un \n"
"tel lieu... Gniii gniii gniiii!"BOX_BREAK"Mes yeux ne sont plus que l'ombre\n"
"d'eux-mêmes mais mes saintes \n"
"narines sont si fines...C'est fou! \n"
"Gniii gniii gniii!"
);

DECLARE_MESSAGE_FRA(0x5049,
"Sniff sniff sniff..."BOX_BREAK"Dieu! Quelle étrange senteur..."BOX_BREAK"Qu'as-tu dans ta besace?"
);

DECLARE_MESSAGE_FRA(0x504A,
"Jeune fou! Perdu dans la forêt...\n"
TEXT_SPEED("\x01") "....." TEXT_SPEED("\x00") "Je vois." TEXTID("\x50\x4B")
);

DECLARE_MESSAGE_FRA(0x504B,
"Remets-le moi prestement!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x504C,
"Dommage...Gniiii..."
);

DECLARE_MESSAGE_FRA(0x504D,
UNSKIPPABLE "Va donc tendre à ce jeune insensé\n"
"cette mixture. Gniii niiii!\n"
"Elle est puissante! C'est dingue!"BOX_BREAK
UNSKIPPABLE "Allez...dehors maintenant! Gnii!" EVENT
);

DECLARE_MESSAGE_FRA(0x504E,
"Jeune homme! Il te faut un \n"
"récipient pour transporter une\n"
"potion!" EVENT
);

DECLARE_MESSAGE_FRA(0x504F,
"L'on dit de par les villes qu'un\n"
"jeune sot dans les bois se perd,\n"
"sa vie n'est plus que poussière.\n"
"C'est complètement fou!"
);

DECLARE_MESSAGE_FRA(0x5050,
"J'suis coincé ici...ça craint.\n"
"Alors je regarde le " COLOR("\x41") "Mont du Péril" COLOR("\x40") ".\n"
"Et alors ça...ça craint à mort."
);

DECLARE_MESSAGE_FRA(0x5051,
"J'suis coincé ici...ça craint.\n"
"Alors je regarde les étoiles.\n"
"Et alors ça...ça craint à mort."
);

DECLARE_MESSAGE_FRA(0x5052,
"T'as vu? Là-haut! \n"
"Il se passe quelque chose sur le\n"
COLOR("\x41") "Mont du Péril" COLOR("\x40") "!"
);

DECLARE_MESSAGE_FRA(0x5053,
"Tu as remarqué?\n"
"Le " COLOR("\x41") "Mont du Péril " COLOR("\x40") "est devenu normal!"
);

DECLARE_MESSAGE_FRA(0x5054,
"Je n'ai plus envie de descendre!\n"
"Je ne me lasserai jamais d'admirer\n"
"le Mont du Péril."
);

DECLARE_MESSAGE_FRA(0x5055,
UNSKIPPABLE "Hé! Comment vas-tu?\n"
"C'est mon jour de bonté...\n"
"Prends donc ceci!"
);

DECLARE_MESSAGE_FRA(0x5056,
"Admire les environs avec " COLOR("\x46") "[C-Up]" COLOR("\x40") " et \n"
"utilise ensuite le " COLOR("\x44") "[Control Stick]" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x5057,
UNSKIPPABLE "Dis donc petit! Cela t'arrive \n"
"souvent d'entrer chez les gens \n"
"comme ça? Tu te crois où?\n"
"Chez ta p'tite soeur?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x1E") "Enfin...je passe l'éponge."BOX_BREAK
UNSKIPPABLE "As-tu rencontré une gentille\n"
"fille derrière cette maison?\n"
"Elle a de gros ennuis."BOX_BREAK
UNSKIPPABLE  SHIFT("\x2D") "Tu m'écoutes, oui?" TEXTID("\x50\x58")
);

DECLARE_MESSAGE_FRA(0x5058,
"Si cette fille te parle de ses\n"
"cocottes, écoute-la attentivement."
);

DECLARE_MESSAGE_FRA(0x5059,
UNSKIPPABLE "Non mais tu rentres chez les gens\n"
"comme ça, toi? Et en pleine nuit?\n"
"Tu serais pas un p'tit peu malade?\n"
"Tu t'crois où? Au zoo?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x1E") "Enfin...je passe l'éponge." TEXTID("\x50\x5A")
);

DECLARE_MESSAGE_FRA(0x505A,
"La fille derrière chez moi s'occupe\n"
"de cocottes mais elle est allergique\n"
"aux plumes...\n"
"Pfff... J'te jure..."BOX_BREAK
SHIFT("\x0D") "Enfin...après tout...j'm'en fiche."
);

DECLARE_MESSAGE_FRA(0x505B,
UNSKIPPABLE "Dites donc jeune homme! \n"
"Cela vous prend souvent d'entrer\n"
"chez les autres comme ça?\n"
"Vous vous croyez dans une gare?"BOX_BREAK
UNSKIPPABLE  SHIFT("\x1E") "Enfin...je passe l'éponge."BOX_BREAK
UNSKIPPABLE "Ce n'est même pas chez moi ici.\n"
"C'est la maison de la " COLOR("\x41") "noble Impa" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Impa est allée au " COLOR("\x41") "cimetière" COLOR("\x40") " pour y\n"
"enfermer une sale bête."BOX_BREAK
UNSKIPPABLE "Depuis la venue de Ganondorf, de\n"
"nombreux monstres sont apparus \n"
"dans les environs."BOX_BREAK
UNSKIPPABLE "Seule la grande Impa a su \n"
"préserver la paix dans notre \n"
"village. Ne l'oubliez jamais!"BOX_BREAK
UNSKIPPABLE  SHIFT("\x2D") "Enfin...après tout..."BOX_BREAK
UNSKIPPABLE "Au fait! Impa n'est toujours pas\n"
"revenue du cimetière! Lui est-il\n"
"arrivé malheur?" TEXTID("\x50\x5C")
);

DECLARE_MESSAGE_FRA(0x505C,
"Il paraît que le " COLOR("\x41") "spectre du \n"
"fossoyeur " COLOR("\x40") "se balade souvent dans\n"
"le cimetière, la nuit tombée..."BOX_BREAK
SHIFT("\x1F") "Enfin...moi j'y crois pas."
);

DECLARE_MESSAGE_FRA(0x505D,
UNSKIPPABLE "Hé! Petit! C'est la première fois\n"
"que tu visites ce village?"BOX_BREAK
UNSKIPPABLE "Une noble dame, " COLOR("\x41") "Impa" COLOR("\x40") ", a créé ce\n"
"village pour nous, pauvres paysans." TEXTID("\x50\x5E")
);

DECLARE_MESSAGE_FRA(0x505E,
"Fais comme chez toi..."
);

DECLARE_MESSAGE_FRA(0x505F,
"La noble Impa n'est pas ici. \n"
"Lui est-il arrivé quelque chose?"
);

DECLARE_MESSAGE_FRA(0x5060,
UNSKIPPABLE "Les habitants ont tous de \n"
"douloureux souvenirs...\n"
"Enfouis dans leur mémoire." TEXTID("\x50\x61")
);

DECLARE_MESSAGE_FRA(0x5061,
"Regarde ce gros moustachu...\n"
"Même lui a souffert par le passé..."
);

DECLARE_MESSAGE_FRA(0x5062,
"Le gros moustachu est parti au \n"
"Ranch. Il était si joyeux!"
);

DECLARE_MESSAGE_FRA(0x5063,
UNSKIPPABLE "Ding dong, ding dong!\n"
"Je suis le soldat-pendule!\n"
"Au quatrième top il sera: " TIME "."BOX_BREAK
UNSKIPPABLE "Bonjour mon ami!\n"
"La nourrice de Zelda, " COLOR("\x41") "Impa" COLOR("\x40") ", a  \n"
"fondé ce village."BOX_BREAK
UNSKIPPABLE "Nous ne sommes que très peu\n"
"d'habitants pour l'instant mais\n"
"un jour ce village sera aussi\n"
"important que le bourg d'Hyrule!"BOX_BREAK
UNSKIPPABLE "Les " COLOR("\x41") "escaliers au nord" COLOR("\x40") " du village\n"
"mènent au Mont du Péril."BOX_BREAK
UNSKIPPABLE "Mais ce chemin n'est ouvert que \n"
"sur présentation d'un écrit royal."
);

DECLARE_MESSAGE_FRA(0x5064,
"Ding dong, ding dong!\n"
"Au quatrième top il sera: " TIME "."
);

DECLARE_MESSAGE_FRA(0x5065,
"Ding dong, ding dong!\n"
"Au quatrième top il sera: " TIME ".\n"
"Au fait... \n"
"Que s'est-il passé au château?"
);

DECLARE_MESSAGE_FRA(0x5066,
UNSKIPPABLE "Hé! L'ami... Que fais-tu dehors\n"
"à une heure pareille?"BOX_BREAK
UNSKIPPABLE "Oh! Je vois! Tu mets ton courage\n"
"à l'épreuve, hein? Alors pourquoi \n"
"ne pas aller au...cimetière?"BOX_BREAK
UNSKIPPABLE "Allez, circule!\n"
"J'ai du travail!" TEXTID("\x50\x67")
);

DECLARE_MESSAGE_FRA(0x5067,
"Ding dong, ding dong!\n"
"Au quatrième top il sera: " TIME "."BOX_BREAK"A l'Est du village tu trouveras le\n"
COLOR("\x41") "cimetière" COLOR("\x40") ". On dit souvent qu'une\n"
COLOR("\x43") "mélodie de la Famille Royale " COLOR("\x40") "a le\n"
"pouvoir d'apaiser les âmes..."
);

DECLARE_MESSAGE_FRA(0x5068,
"Un type louche vit dans le moulin.\n"
"Il chante toute la sainte journée \n"
"et sa voix me tape sur les nerfs..."
);

DECLARE_MESSAGE_FRA(0x5069,
"Les gens me dégoûtent.\n"
"Mes parents me dégoûtent.\n"
"Ta p'tite tête me dégoûte."
);

DECLARE_MESSAGE_FRA(0x506A,
"Toute la journée, nous travaillons\n"
"sur les chantiers... Cela va \n"
"prendre du temps avant que tout \n"
"soit terminé."BOX_BREAK"Notre chef nous fait travailler \n"
"dur!"
);

DECLARE_MESSAGE_FRA(0x506B,
"J'ai faim! On passe à table tout \n"
"de suite? Et après ça une bonne \n"
"sieste et...hop! Au lit!"
);

DECLARE_MESSAGE_FRA(0x506C,
"Vous n'êtes tous que de gros\n"
"flemmards! Le travail n'avance pas\n"
"et vous ne pensez qu'à bouffer!\n"
"JE VOUS HAIS!"
);

DECLARE_MESSAGE_FRA(0x506D,
QUICKTEXT_ENABLE  COLOR("\x41") "Esprit   30 Rubis\n"
COLOR("\x40") "Spectre en bouteille. \n"
"A vendre à un passionné." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x506E,
QUICKTEXT_ENABLE "Esprit  30 Rubis" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x506F,
"506f"
);

DECLARE_MESSAGE_FRA(0x5070,
"Mes cocottes sont perdues!\n"
"Dépose six cocottes dans l'enclos!"
);

DECLARE_MESSAGE_FRA(0x5071,
QUICKTEXT_ENABLE  COLOR("\x44")  NAME "!\n"
"Ce navire sombre!\n"
"Vite! Mets-toi à l'abri!!!" COLOR("\x40")  QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x5072,
"Il me manque encore des cocottes!\n"
"Dépose encore 5 cocottes!"
);

DECLARE_MESSAGE_FRA(0x5073,
QUICKTEXT_ENABLE "Sois sage ou j'le dirai à Igor!" QUICKTEXT_DISABLE  FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x5074,
"Regarde-moi ça! Je me suis cassé\n"
"un ongle en travaillant.\n"
"C'est super moche!\n"
"Pffff...."
);

DECLARE_MESSAGE_FRA(0x5075,
"Travailler...moi j'aime pas.\n"
"Je veux devenir un voleur. \n"
"Un grand voleur! Avec des bottes\n"
"rouges et une cape! Cool, non?"
);

DECLARE_MESSAGE_FRA(0x5076,
"Il paraît que la maison du chef \n"
"est derrière celle-ci...\n"
"Et si on la brûlait? Hein?"
);

DECLARE_MESSAGE_FRA(0x5077,
"As-tu déjà rencontré " COLOR("\x41") "Igor" COLOR("\x40") "?\n"
"Il vit dans le cimetière du village."BOX_BREAK"Il est " TIME "... Il doit dormir dans \n"
"sa cabane à cette heure-ci."BOX_BREAK"Pourquoi ne pas te balader sur\n"
"la Plaine d'Hyrule en attendant?"
);

DECLARE_MESSAGE_FRA(0x5078,
"J'ai faiiiim !!  !\n"
"On va manger?\n"
"Il est déjà " TIME "!"
);

DECLARE_MESSAGE_FRA(0x5079,
UNSKIPPABLE "Ici vivait autrefois la " COLOR("\x41") "noble Impa" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Cette maison est ouverte à tous \n"
"les villageois. \n"
"L'entrée est gratuite." TEXTID("\x50\x7A")
);

DECLARE_MESSAGE_FRA(0x507A,
"Ce village fut jadis un repaire\n"
COLOR("\x43") "Sheikah " COLOR("\x40") "mais la noble Impa en fit\n"
"une terre d'accueil."
);

DECLARE_MESSAGE_FRA(0x507B,
"Mais j'en suis sûr! J'l'ai vu!"BOX_BREAK"J'ai vu le fantôme d'Igor entrer \n"
"dans sa tombe! Il portait même un\n"
COLOR("\x41") "trésor" COLOR("\x40") "... J'te l'jure!"
);

DECLARE_MESSAGE_FRA(0x507C,
"C'est lui! C'est lui!\n"
"Il est tombé du ciel entouré d'une\n"
"lumière bleue! J'ai tout vu!"BOX_BREAK"Tu me crois, hein?"
);

DECLARE_MESSAGE_FRA(0x507D,
"Depuis bientôt sept ans, personne \n"
"ne veut croire à mes histoires.\n"
"C'est agaçant à la fin!"
);

DECLARE_MESSAGE_FRA(0x507E,
"Le village fut ravagé mais nous \n"
"avons pu maîtriser le feu!\n"
"Beau boulot, hein?"
);

DECLARE_MESSAGE_FRA(0x507F,
"Wah hah hah hah hah hah!"BOX_BREAK"Mate-moi ce type! Depuis son \n"
"évasion du Bourg d'Hyrule, il est\n"
"devenu un méga-froussard!"
);

DECLARE_MESSAGE_FRA(0x5080,
"Wah hah hah hah hah hah!"BOX_BREAK"Ce type a des visions!\n"
"Wah hah hah hah hah hah!"
);

DECLARE_MESSAGE_FRA(0x5081,
"Wah hah hah hah hah hah!\n"
"Elles sont chouettes tes fringues!"
);

DECLARE_MESSAGE_FRA(0x5082,
"Wah hah hah hah hah hah!\n"
"Mon truc à moi c'est rigoler!\n"
"Wah hah hah hah hah hah!"
);

DECLARE_MESSAGE_FRA(0x5083,
"Ya-ha-ha! Je suis le roi du monde!\n"
"J'adore regarder les gens d'ici!\n"
"Ils sont si petits!"
);

DECLARE_MESSAGE_FRA(0x5084,
"J'ai peur de m'endormir...\n"
"Je risquerais de tomber!"
);

DECLARE_MESSAGE_FRA(0x5085,
"Le moulin draine l'eau du puits..."BOX_BREAK"Mais le puits est à sec depuis un \n"
"bon moment..."
);

DECLARE_MESSAGE_FRA(0x5086,
"La fille du coin est vraiment\n"
"gentille... Elle s'est même occupée\n"
"des ouvriers."
);

DECLARE_MESSAGE_FRA(0x5087,
"Il y a bien longtemps...\n"
"Le regard perçant d'un habitant de \n"
"ce village permettait à celui-ci de \n"
"voir la vérité!"BOX_BREAK"La vérité est une notion plus \n"
"philosophique que visuelle.\n"
"La percevoir est le fruit d'un long\n"
"travail intellectuel..."BOX_BREAK"Mais cet homme avait une autre \n"
"façon de procéder..."BOX_BREAK"Le puits fut construit là où\n"
"se trouvait sa maison..."
);

DECLARE_MESSAGE_FRA(0x5088,
"On raconte dans le coin qu'une\n"
COLOR("\x41") "riche famille" COLOR("\x40") " possédait une maison\n"
"dans ce village..."BOX_BREAK"Mais les membres de cette famille\n"
"étaient avares... Ainsi ils furent \n"
"maudits."BOX_BREAK"Bien heureux le pauvre... \n"
"Crois-moi!"
);

DECLARE_MESSAGE_FRA(0x5089,
"Oh...."BOX_BREAK"Quel malotru...\n"
"Nous déranger en plein câlin!\n"
"Où en étions-nous, amour?"
);

DECLARE_MESSAGE_FRA(0x508A,
"Hi hi..."BOX_BREAK"Nous déranger en plein câlinou!\n"
"Le crois-tu jaloux, mon gnougnou?"
);

DECLARE_MESSAGE_FRA(0x508B,
UNSKIPPABLE "Regarde celui-là...\n"
"Le gros moustachu...\n"
"On l'a mis à la porte du Ranch." TEXTID("\x50\x8C")
);

DECLARE_MESSAGE_FRA(0x508C,
"Il ne fait rien de la journée. \n"
"Et la crise actuelle...\n"
"Il s'en contre-fiche!"
);

DECLARE_MESSAGE_FRA(0x508D,
"Ce gros flemmard me rappelle kiki."BOX_BREAK"Comment? Tu n'as jamais entendu \n"
"parler de mon cher petit kiki\n"
"d'amour et d'amitié trop mignon?\n"
"C'est mon chien!"
);

DECLARE_MESSAGE_FRA(0x508E,
"Oh NoOoOoOoOoOoN!!!!\n"
"Encore un orage? \n"
QUICKTEXT_ENABLE "C'est de ta faute ! ! !" QUICKTEXT_DISABLE "\n"
"Grrrrrrrrrrrrrrr!!"
);

DECLARE_MESSAGE_FRA(0x508F,
"Vous attrapez une Ame!\n"
"Allez la vendre chez le\n"
COLOR("\x41") "Marchand d'Ames " COLOR("\x40") "au prix fort!"
);

DECLARE_MESSAGE_FRA(0x6000,
QUICKTEXT_ENABLE  SHIFT("\x19") "Halte! On ne bouge plus!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6001,
"Salut le nouveau!"
);

DECLARE_MESSAGE_FRA(0x6002,
"Une minute, le nouveau...\n"
"Je vais t'ouvrir la porte."
);

DECLARE_MESSAGE_FRA(0x6003,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Ne jamais défier une Gerudo!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6004,
UNSKIPPABLE "J'ai vu comment tu as évité les\n"
"gardes. Tu es fort et rapide."BOX_BREAK
UNSKIPPABLE "J'ai toujours pensé que les mâles\n"
"n'étaient que des larves! Tous \n"
"sauf le Grand Ganondorf, bien sûr!\n"
"Mais tu m'as prouvé le contraire..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Nabooru l'exaltée" COLOR("\x40") ", notre chef, \n"
"m'a confié la garde de cette \n"
"forteresse."BOX_BREAK
UNSKIPPABLE "Nabooru est le bras droit du \n"
"grand Ganondorf, Roi des Voleurs\n"
"Gerudo."BOX_BREAK
UNSKIPPABLE "Son quartier général se trouve \n"
"dans le " COLOR("\x46") "Temple de l'Esprit" COLOR("\x40") ", au-delà \n"
"du désert..."BOX_BREAK
UNSKIPPABLE "A mon avis...tu aimerais devenir un\n"
"Gerudo! J'me trompe?\n"
"Alors c'est chose faite!"BOX_BREAK
UNSKIPPABLE "Prends donc ceci. C'est une carte \n"
"de membre Gerudo. Toutes les \n"
"pièces de la forteresse te seront\n"
"désormais accessibles!" EVENT
);

DECLARE_MESSAGE_FRA(0x6005,
"Tu es désormais libre d'emprunter\n"
"la porte du désert."BOX_BREAK"Tu trouveras dans le désert le \n"
COLOR("\x46") "Temple de l'Esprit" COLOR("\x40") ". \n"
"Nabooru l'exaltée y a élu domicile."
);

DECLARE_MESSAGE_FRA(0x6006,
QUICKTEXT_ENABLE "Pauvre idiot!" QUICKTEXT_DISABLE "\n"
"Entre là-dedans et reste \n"
"tranquille!"
);

DECLARE_MESSAGE_FRA(0x6007,
UNSKIPPABLE "Tu as évité tous les gardes?\n"
"Je ne sais pas d'où tu viens, mais\n"
"tu dois être très fort!"BOX_BREAK
UNSKIPPABLE "Tous les autres ouvriers sont\n"
"enfermés dans la forteresse."BOX_BREAK
UNSKIPPABLE "Fais-nous tous sortir de ce\n"
"traquenard et nous te rendrons un\n"
"grand service!"BOX_BREAK
UNSKIPPABLE "Sois prudent! Des gardes " COLOR("\x41") "Gerudos" COLOR("\x40") " \n"
"rôdent dans les couloirs..."BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE "Woah!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Attention!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6008,
QUICKTEXT_ENABLE  SHIFT("\x11") "Le Seuil ouvert sur le Passé" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6009,
QUICKTEXT_ENABLE  SHIFT("\x0C") "Le Seuil ouvert sur le Présent" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x600A,
QUICKTEXT_ENABLE  SHIFT("\x11") "Le Seuil ouvert sur le Futur" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x600B,
SFX("\x38\xEC") "Le sentier laisse-moi te révéler\n"
"ou du désert tu seras prisonnier.\n"
"Poursuis bien mon halo spectral\n"
"qui te mènera jusqu'au lieu du mal!" FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x600C,
UNSKIPPABLE "Passé, présent, futur..."BOX_BREAK
UNSKIPPABLE "L'épée de Légende est un esquif\n"
"voguant sur les flots tumultueux \n"
"du temps..."BOX_BREAK
UNSKIPPABLE "Son voyage fait halte dans le\n"
"Temple du Temps..."BOX_BREAK
UNSKIPPABLE "Pour entrer dans ce " COLOR("\x46") "Temple" COLOR("\x40") ", \n"
"remonte le cours des âges..."BOX_BREAK
UNSKIPPABLE "Entends le " COLOR("\x46") "Requiem des Esprits" COLOR("\x40") "...\n"
"Cette mélodie conduira un enfant\n"
"aux portes du désert."
);

DECLARE_MESSAGE_FRA(0x600D,
"Je suis la meilleure archère \n"
"montée des Gerudos! Je suis \n"
"aussi la meilleure cavalière!"BOX_BREAK"L'archerie montée te tente?\n"
"Alors paie " COLOR("\x41") "20 Rubis" COLOR("\x40") "!\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x600E,
"Tu as du cran...j'aime ça.\n"
"Suis-moi!!!"
);

DECLARE_MESSAGE_FRA(0x600F,
"Mais t'es un crétin!\n"
"L'archerie montée se fait à cheval!\n"
"Si t'en a pas...t'en fais pas!\n"
"C'est logique!!!"
);

DECLARE_MESSAGE_FRA(0x6010,
QUICKTEXT_ENABLE "Lâche! Fuis mon regard! \n"
"Tu n'es que l'ombre d'un rat!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6011,
"Tu es faible... \n"
"Comme tous les hommes!\n"
"Peut-être la prochaine fois."
);

DECLARE_MESSAGE_FRA(0x6012,
"Tu es fort. J'en conviens."BOX_BREAK"Aujourd'hui je perds, demain à moi\n"
"la victoire!!!"
);

DECLARE_MESSAGE_FRA(0x6013,
"Voici l'entrée du " COLOR("\x41") "Gymnase Gerudo" COLOR("\x40") "."BOX_BREAK"Ne sont autorisés que les \n"
"membres actifs."
);

DECLARE_MESSAGE_FRA(0x6014,
"Voici l'entrée du " COLOR("\x41") "Gymnase Gerudo" COLOR("\x40") "."BOX_BREAK"Carte de membre acceptée."BOX_BREAK"Une session pour 10 Rubis!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x6015,
"C'est parti...\n"
"Bonne chance, le nouveau!\n"
"Ha ha ha ha ha!" EVENT
);

DECLARE_MESSAGE_FRA(0x6016,
"Tu n'as pas assez d'argent!\n"
QUICKTEXT_ENABLE "Reviens les poches pleines." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6017,
UNSKIPPABLE "Hé! Le nouveau!"BOX_BREAK
UNSKIPPABLE "Vas-tu dans le désert?\n"
"Je t'ouvre la porte, mais..."BOX_BREAK
UNSKIPPABLE "Prends garde: tu ne pourras \n"
"traverser le désert sans passer \n"
"les " COLOR("\x41") "deux épreuves" COLOR("\x40") "." TEXTID("\x60\x18")
);

DECLARE_MESSAGE_FRA(0x6018,
"La première épreuve est le " COLOR("\x41") "Fleuve\n"
"de Sable" COLOR("\x40") "! Franchis-le et suis le\n"
"chemin bordé de drapeaux."BOX_BREAK"La deuxième épreuve est... \n"
COLOR("\x41") "Le Guide Spectral" COLOR("\x40") "!"BOX_BREAK"Ceux qui ne peuvent" COLOR("\x41") " distinguer la \n"
"vérité de leurs yeux " COLOR("\x40") "s'en \n"
"reviendront ici."BOX_BREAK"Enfin...si ton choix est fait, je ne\n"
"peux te retarder davantage...\n"
"Fonce, beau gosse!!!" EVENT
);

DECLARE_MESSAGE_FRA(0x6019,
UNSKIPPABLE "Que fais-tu là? Quoi?\n"
"Tu allais me poser la même \n"
"question?" TEXTID("\x60\x1A")
);

DECLARE_MESSAGE_FRA(0x601A,
"Te voilà bien avancé!\n"
"Comment vas-tu remonter à \n"
"présent?"
);

DECLARE_MESSAGE_FRA(0x601B,
"Merci mon garçon!\n"
"Désolé, je n'ai pas grand chose à \n"
"te donner, mais...\n"
"Prends ceci...pour le geste!"
);

DECLARE_MESSAGE_FRA(0x601C,
"601C"
);

DECLARE_MESSAGE_FRA(0x601D,
UNSKIPPABLE "Tu es nouveau dans le coin, \n"
"gamin..."BOX_BREAK"Que veux-tu?\n"
THREE_CHOICE  COLOR("\x42") "Voir le Temple\n"
"Je cherche les Sages\n"
"Heu...j'me balade" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x601E,
"Tu n'es qu'un gamin! \n"
"Et les temples... C'est pas pour \n"
"les gamins!"
);

DECLARE_MESSAGE_FRA(0x601F,
"Quoi? Les Sages? \n"
"C'est quoi donc?\n"
"Ici il n'y a que des voleurs!"
);

DECLARE_MESSAGE_FRA(0x6020,
UNSKIPPABLE "Tu te balades? Tu n'as donc rien \n"
"à faire? Ca tombe très bien! \n"
"J'ai un petit service à te \n"
"demander..."BOX_BREAK
UNSKIPPABLE "Au fait...juste une question...\n"
"Tu ne serais pas un des sbires \n"
"de..."BOX_BREAK"Ganondorf...par hasard?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Peut-être...j'hésite encore.\n"
"Ganondorf? Je le HAIS!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x6021,
UNSKIPPABLE "Wha-ha-ha-ha!\n"
"Tu veux jouer au dur! \n"
"C'est trooooop mignon!"BOX_BREAK
UNSKIPPABLE "Crois-tu que Ganondorf recruterait\n"
"un gamin comme toi?"BOX_BREAK
UNSKIPPABLE "Bon...allons droit au but..." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_FRA(0x6022,
UNSKIPPABLE "Ho-hoh!"BOX_BREAK
UNSKIPPABLE "Tu n'as pas froid au yeux!\n"
"Hmm...J'aime ça." TEXTID("\x60\x23")
);

DECLARE_MESSAGE_FRA(0x6023,
UNSKIPPABLE "Je me présente: mon nom est \n"
COLOR("\x41") "Nabooru " COLOR("\x40") "la Gerudo! Je suis une \n"
"voleuse solitaire."BOX_BREAK
UNSKIPPABLE "Mais...attention!"BOX_BREAK
UNSKIPPABLE "Ganondorf et moi-même sommes\n"
"des voleurs, soit! Mais je suis \n"
"très différente de ce chacal!"BOX_BREAK
UNSKIPPABLE "Ganondorf et ses infâmes\n"
"serviteurs volent les femmes et\n"
"les enfants. Ils commettent parfois \n"
"des meurtres!!!"BOX_BREAK
UNSKIPPABLE "Sais-tu que la race des Gerudos\n"
"ne comporte que des femmes? \n"
"Un homme Gerudo n'apparaît qu'une\n"
"fois tous les cent ans."BOX_BREAK
UNSKIPPABLE "Nos lois sont claires: cet homme\n"
"est né pour être roi des Gerudos.\n"
"Mais je refuse de jurer allégeance\n"
"à un homme aussi vil!"BOX_BREAK
UNSKIPPABLE "Je parle, je parle et...au fait...\n"
"Quel est ton nom?"BOX_BREAK
UNSKIPPABLE  NAME "?!"BOX_BREAK
UNSKIPPABLE "Whoa! Tes parents ont le sens de\n"
"l'humour! Quel drôle de nom!\n"
"Enfin...peu importe..." TEXTID("\x60\x24")
);

DECLARE_MESSAGE_FRA(0x6024,
UNSKIPPABLE "Rends-moi service, veux-tu?"BOX_BREAK
UNSKIPPABLE "De l'autre côté de ce passage se\n"
"trouve un trésor. Peux-tu me le \n"
"rapporter?"BOX_BREAK
UNSKIPPABLE "Ce trésor renferme les " COLOR("\x43") "Gantelets \n"
"d'argent" COLOR("\x40") ". En les portant, n'importe\n"
"qui peut déplacer d'immenses \n"
"objets!"BOX_BREAK
UNSKIPPABLE "Non, non, non, gamin! \n"
"Ne pense même pas à les garder \n"
"pour ta pomme!"BOX_BREAK
UNSKIPPABLE "Les Gantelets d'argent sont trop\n"
"grands pour tes petites mains!\n"
"Sois un gentil petit et rapporte\n"
"à tata Nabooru!"BOX_BREAK
UNSKIPPABLE "Ganondorf et ses sbires ont élu \n"
"domicile dans ce temple."BOX_BREAK
UNSKIPPABLE "Grâce aux Gantelets d'argent, je\n"
"pourrai m'y glisser discrètement..."BOX_BREAK
UNSKIPPABLE "Une fois sur place, je déroberai \n"
"leurs trésors et saccagerai leurs \n"
"plans de conquête!"BOX_BREAK"Alors? Veux-tu m'aider?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Nan, j'veux pas!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x6025,
UNSKIPPABLE "Merci bien, gamin!"BOX_BREAK
UNSKIPPABLE "Nous allons mettre une de ces\n"
"pagailles dans les affaires de \n"
"Ganondorf! On va bien rire!" TEXTID("\x60\x26")
);

DECLARE_MESSAGE_FRA(0x6026,
"En échange, si tu me rapportes \n"
"les " COLOR("\x43") "Gantelets d'argent" COLOR("\x40") "..."BOX_BREAK"Je te donnerai un petit bisou!"
);

DECLARE_MESSAGE_FRA(0x6027,
"Pfff... Après tout, tu n'es qu'un\n"
"gamin! Allez, ouste! Du balai!"
);

DECLARE_MESSAGE_FRA(0x6028,
UNSKIPPABLE "Hé! Lâchez-moi! Nooon!"
);

DECLARE_MESSAGE_FRA(0x6029,
UNSKIPPABLE "Gni...gni...gniii!\n"
"Tiens, tiens, tiens!!!\n"
"Voici de la visite, Koume!"
);

DECLARE_MESSAGE_FRA(0x602A,
UNSKIPPABLE "Gnan...gnan...gnan!\n"
"De la visite en effet, Kotake!"
);

DECLARE_MESSAGE_FRA(0x602B,
UNSKIPPABLE "Qui es-tu, jeune impudent, pour\n"
"t'introduire dans notre temple?\n"
"Gni...gni...gni!"
);

DECLARE_MESSAGE_FRA(0x602C,
UNSKIPPABLE "Une bonne correction!\n"
"Oh oui! Une bonne correction!\n"
"Gnan...gnan...gnan!"
);

DECLARE_MESSAGE_FRA(0x602D,
UNSKIPPABLE "Esclave! Entends-moi..."
);

DECLARE_MESSAGE_FRA(0x602E,
UNSKIPPABLE "Mon verbe est ton ordre...\n"
"Tue ce jeune sot! Tue!!!"
);

DECLARE_MESSAGE_FRA(0x602F,
UNSKIPPABLE "Grand Ganondorf... Intrus...\n"
"Mise à mort..."
);

DECLARE_MESSAGE_FRA(0x6030,
UNSKIPPABLE "Hein? Quoi?...\n"
"Où suis-je...?"
);

DECLARE_MESSAGE_FRA(0x6031,
UNSKIPPABLE "Tiens, tiens...\n"
"Le charme est brisé...\n"
"Koume..."
);

DECLARE_MESSAGE_FRA(0x6032,
UNSKIPPABLE "Ce n'est qu'une jeune fille\n"
"mais grande est son influence au \n"
"sein des Gerudos, Kotake..."
);

DECLARE_MESSAGE_FRA(0x6033,
UNSKIPPABLE "Elle se doit de servir la noble \n"
"cause du Seigneur Ganondorf!\n"
"Gni...gni...gni!"
);

DECLARE_MESSAGE_FRA(0x6034,
UNSKIPPABLE "Utilisons le charme une fois\n"
"encore....\n"
"Gnan...gnan...gnan!"
);

DECLARE_MESSAGE_FRA(0x6035,
UNSKIPPABLE "Merci, gamin...du fond du coeur.\n"
UNSKIPPABLE "Regardez-moi ça! \n"
"Le gamin est devenu un grand\n"
"guerrier!"
);

DECLARE_MESSAGE_FRA(0x6036,
"Tu es devenu beau et fort..."BOX_BREAK_DELAYED("\x50") "J'aurais dû tenir ma promesse..." FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x6037,
UNSKIPPABLE "Tiens! Je te donne " COLOR("\x41") "ceci" COLOR("\x40") "...\n"
"J'y tiens beaucoup. \n"
"Mais tu as mérité ma confiance!"
);

DECLARE_MESSAGE_FRA(0x6038,
UNSKIPPABLE  NAME "...A bientôt!"
);

DECLARE_MESSAGE_FRA(0x6039,
UNSKIPPABLE "Au fait..."BOX_BREAK
UNSKIPPABLE "Excuse-moi de t'avoir attaqué."BOX_BREAK
UNSKIPPABLE "J'étais sous le contrôle des\n"
"sorcières et sous les ordres de\n"
"Ganondorf... Pouah!"BOX_BREAK
UNSKIPPABLE "Toute cette histoire est \n"
"incroyable, non? \n"
"Moi! Le " COLOR("\x46") "Sage de l'Esprit" COLOR("\x40") "! \n"
"C'est à mourir de rire!"BOX_BREAK
UNSKIPPABLE "Mais en tant que Sage, mon devoir \n"
"est désormais de combattre!\n"
"Hé hé hé..."BOX_BREAK
UNSKIPPABLE "Ma vengeance sera terrible!\n"
"Yaaaaaaaaah!!! "
);

DECLARE_MESSAGE_FRA(0x603A,
UNSKIPPABLE "Gamin...heu..."BOX_BREAK
UNSKIPPABLE "Non...\n"
NAME ", Héros du Temps!"BOX_BREAK
UNSKIPPABLE "Je te remets ce " COLOR("\x46") "Médaillon" COLOR("\x40") "!\n"
"Le p'tit bisou sera pour plus tard."BOX_BREAK
UNSKIPPABLE "Prends-en soin!"
);

DECLARE_MESSAGE_FRA(0x603B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x0B") "Yaaaaaah!" QUICKTEXT_DISABLE " Laissez-moi partir!!"
);

DECLARE_MESSAGE_FRA(0x603C,
UNSKIPPABLE  SHIFT("\x1F")  QUICKTEXT_ENABLE "Créatures démoniaques!" QUICKTEXT_DISABLE "\n"
SHIFT("\x23") "Larbins de Ganondorf!"
);

DECLARE_MESSAGE_FRA(0x603D,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x1E")  NAME "!" QUICKTEXT_DISABLE "\n"
SHIFT("\x25") "Fuis cet enfer! Vite!"
);

DECLARE_MESSAGE_FRA(0x603E,
UNSKIPPABLE  SHIFT("\x10") "Ces sorcières! Elles utilisent\n"
SHIFT("\x19") "leur magie noire sur moi!"
);

DECLARE_MESSAGE_FRA(0x603F,
"Hé, l'nouveau! Voici notre " COLOR("\x41") "terrain\n"
"d'archerie montée" COLOR("\x40") "."BOX_BREAK"Tout en faisant galoper nos \n"
"chevaux, nos flèches se plantent\n"
"dans le mille à tous les coups!"BOX_BREAK"Apprends à monter à cheval et\n"
"reviens nous voir pour tester tes\n"
"capacités... On va bien rire!"
);

DECLARE_MESSAGE_FRA(0x6040,
"Hé, l'nouveau!\n"
"Ton cheval a fière allure!"BOX_BREAK"Je ne sais où tu l'as volé, mais..."BOX_BREAK"Pourquoi ne pas participer au\n"
"concours d'archers montés?"BOX_BREAK"Fais galoper ton destrier et\n"
"décoche tes flèches vers les \n"
"cibles. "BOX_BREAK"Tu as 20 flèches. Voyons un peu \n"
"quel sera ton score après un\n"
"aller-retour."BOX_BREAK"Totalise plus de " COLOR("\x41") "1,000 points" COLOR("\x40") ",\n"
"et tu gagneras un prix!" EVENT
);

DECLARE_MESSAGE_FRA(0x6041,
"Veux-tu tenter ta chance pour \n"
COLOR("\x41") "20 Rubis" COLOR("\x40") "?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x6042,
"Hé, l'nouveau!\n"
"T'es plutôt doué!\n"
"Augmentons un peu la difficulté..."BOX_BREAK"Totalise " COLOR("\x41") "1,500 points " COLOR("\x40") "ou plus \n"
"pour voir!" EVENT
);

DECLARE_MESSAGE_FRA(0x6043,
"Quoi? Tu veux recommencer?\n"
"Tu as un certain potentiel!" EVENT
);

DECLARE_MESSAGE_FRA(0x6044,
"Fabuleux! Un vrai maître!"BOX_BREAK"Prends cet objet, il conviendra\n"
"mieux à un expert comme toi."BOX_BREAK"Ce carquois m'est très cher.\n"
"Mais je tiens à te le donner.\n"
"Prends-en soin, OK?"
);

DECLARE_MESSAGE_FRA(0x6045,
POINTS " points?!?\n"
"Wha-ha-ha! La gloire n'est pas \n"
"pour tout de suite!" EVENT
);

DECLARE_MESSAGE_FRA(0x6046,
"Fantastique! De toute beauté!\n"
"Tu es un archer d'exception!"BOX_BREAK"Ceci te sera d'une grande aide..."
);

DECLARE_MESSAGE_FRA(0x6047,
POINTS " points...\n"
"Pas mal...enfin...bof." EVENT
);

DECLARE_MESSAGE_FRA(0x6048,
"Quel jeune insensé!\n"
"Venir de son propre chef s'offrir \n"
"en sacrifice au Grand Ganondorf..." FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x6049,
SHIFT("\x14") "Le souffle de mes flammes \n"
SHIFT("\x28") "consumera son âme!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x604A,
SHIFT("\x1B") "La morsure de ma glace \n"
SHIFT("\x2F") "pétrifiera ses os!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x604B,
SHIFT("\x28") "Quelle petite peste!\n"
SHIFT("\x12") "Cette fois, c'est du serieux,\n"
SHIFT("\x26") "n'est-ce pas Kotake?" FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x604C,
SHIFT("\x51") "Hein?"BOX_BREAK_DELAYED("\x14")  SHIFT("\x17") "Hé! Koume! Tu as un truc\n"
SHIFT("\x24") "au-dessus de la tête!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x604D,
SHIFT("\x19") "Heu? Regarde! Toi aussi!\n"
SHIFT("\x15") "C'est quoi ce machin rond?" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x604E,
SHIFT("\x18") "Mais je n'ai que 400 ans!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x604F,
SHIFT("\x14") "Et moi je n'ai que 380 ans!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x6050,
QUICKTEXT_ENABLE  SHIFT("\x08") "Nous sommes jumelles! Tu ne \n"
SHIFT("\x19") "peux pas avoir 380 ans! \n"
SHIFT("\x34") "Arrête de mentir!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x6051,
QUICKTEXT_ENABLE  SHIFT("\x2E") "T'es devenue sénile!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_FRA(0x6052,
QUICKTEXT_ENABLE  SHIFT("\x12") "Quoi? C'est moi la sénile?\n"
SHIFT("\x01") "Cause meilleur à ta grande soeur!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x6053,
QUICKTEXT_ENABLE  SHIFT("\x05") "ON...EST...JUMELLES! JU-MELLES!\n"
SHIFT("\x05") "Tu ne peux pas être plus vieille \n"
SHIFT("\x43") "que moi!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x6054,
QUICKTEXT_ENABLE  SHIFT("\x35") "Gnyyaaaarghh!!" QUICKTEXT_DISABLE "\n"
QUICKTEXT_ENABLE  SHIFT("\x0D") "C'que tu peux être sournoise!" QUICKTEXT_DISABLE  FADE("\x14")
);

DECLARE_MESSAGE_FRA(0x6055,
QUICKTEXT_ENABLE  SHIFT("\x10") "Comment fais-tu pour être  \n"
SHIFT("\x34") "aussi mesquine?" QUICKTEXT_DISABLE  FADE("\x0A")
);

DECLARE_MESSAGE_FRA(0x6056,
QUICKTEXT_ENABLE  SHIFT("\x39") "T'es sournoise!!" QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_FRA(0x6057,
QUICKTEXT_ENABLE  SHIFT("\x37") "T'es mesquine..." QUICKTEXT_DISABLE  FADE("\x04")
);

DECLARE_MESSAGE_FRA(0x6058,
QUICKTEXT_ENABLE  SHIFT("\x10") "En tout cas...moi j'suis sexy!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x6059,
QUICKTEXT_ENABLE "Bon... Cette fois y'en a marre!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x605A,
SHIFT("\x32")  QUICKTEXT_ENABLE "En avant, Koume!" QUICKTEXT_DISABLE BOX_BREAK_DELAYED("\x14")  SHIFT("\x2D")  QUICKTEXT_ENABLE "Kotake" QUICKTEXT_DISABLE " et " QUICKTEXT_ENABLE "Koume" QUICKTEXT_DISABLE "...\n"
SHIFT("\x1C")  QUICKTEXT_ENABLE "Double" QUICKTEXT_DISABLE " Fusion " QUICKTEXT_ENABLE "Maléfique!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x605B,
UNSKIPPABLE "Tu es venu pour me sauver?\n"
"Alors ça, c'est trop chou! \n"
"Je suis " COLOR("\x41") "Hiro l'ouvrier" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Nous voulions tous joindre leur\n"
"club de filles mais elles nous ont\n"
"enfermés! Tout ça parce que nous\n"
"sommes des...mâles!"BOX_BREAK
UNSKIPPABLE "Au diable ces jolies filles Gerudos!\n"
"Elles sont trop dures!"BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Trois de mes compagnons" COLOR("\x40") " sont \n"
"aussi enfermés. Peux-tu les sauver?"
);

DECLARE_MESSAGE_FRA(0x605C,
UNSKIPPABLE "Gentil petit bouchon! \n"
"Je suis " COLOR("\x41") "Julio l'ouvrier" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Ces femmes me font peur! \n"
"Je préfère travailler que d'en \n"
"épouser une!"BOX_BREAK
UNSKIPPABLE "J'ai hâte de quitter cet endroit!\n"
"Mais encore " COLOR("\x41") "deux petits camarades\n"
COLOR("\x40") "sont enfermés! Peux-tu les sauver?"
);

DECLARE_MESSAGE_FRA(0x605D,
UNSKIPPABLE "Merci p'tite tête, t'es un amour! \n"
"Je suis " COLOR("\x41") "Jibo l'ouvrier" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "T'as pas vu notre chef? Y doit\n"
"se faire du mouron! Je dois le \n"
"voir maintenant! Je suis déjà à la\n"
QUICKTEXT_ENABLE "bourre!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Mais un " COLOR("\x41") "autre ouvrier " COLOR("\x40") "est \n"
"encore enfermé... Sauve-le!\n"
"Je l'aime tant!"
);

DECLARE_MESSAGE_FRA(0x605E,
UNSKIPPABLE "Youki! Je suis Liiiiibre!\n"
"Mon nom est " COLOR("\x41") "Nico l'ouvrier" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Pour te remercier, voici ce que\n"
"mes petites oreilles d'amour ont \n"
"entendu il n'y a pas si longtemps..."BOX_BREAK
UNSKIPPABLE "\"Seul l'oeil de vérité peut faire\n"
"traverser le désert... La déesse \n"
"est au-delà des sables...\""BOX_BREAK
UNSKIPPABLE "Bon...je retourne dans ma\n"
COLOR("\x41") "tente près de la Vallée Gerudo" COLOR("\x40") "!\n"
"Viens donc y faire un tour!\n"
"Saluuuut!"
);

DECLARE_MESSAGE_FRA(0x605F,
"Le chef du clan des voleurs est \n"
COLOR("\x41") "Nabooru" COLOR("\x40") ". Elle efface la mémoire \n"
"des voyageurs près des ruines\n"
"dans le désert."
);

DECLARE_MESSAGE_FRA(0x6060,
"Ganondorf, le seigneur du malin, \n"
"est derrière toute cette histoire\n"
"de voleuses..."
);

DECLARE_MESSAGE_FRA(0x6061,
UNSKIPPABLE "Quand " COLOR("\x41") "Nabooru" COLOR("\x40") " n'était qu'une \n"
"voleuse solitaire, elle ne dérobait\n"
"jamais les faibles, mais..." TEXTID("\x60\x62")
);

DECLARE_MESSAGE_FRA(0x6062,
"Aujourd'hui le clan de Nabooru est \n"
"violent et cruel! Elle se prétend \n"
"noble et chevaleresque...\n"
"Ben voyons!"
);

DECLARE_MESSAGE_FRA(0x6063,
"Comme je l'ai toujours dit, \n"
"Nabooru était manipulée par les \n"
"sbires de Ganondorf..."
);

DECLARE_MESSAGE_FRA(0x6064,
UNSKIPPABLE "Chez les Gerudos, un bon archer\n"
"et un fier cavalier est toujours \n"
"respecté." TEXTID("\x60\x65")
);

DECLARE_MESSAGE_FRA(0x6065,
"Tu devrais te risquer au concours \n"
"d'archerie montée près de la \n"
"forteresse Gerudo!"BOX_BREAK"Si tu as un cheval, une Gerudo\n"
"te lancera un défi."
);

DECLARE_MESSAGE_FRA(0x6066,
"Tu as été brillant, jeune homme!"
);

DECLARE_MESSAGE_FRA(0x6067,
"Construire un pont est une simple \n"
"tâche si nous travaillons en équipe."
);

DECLARE_MESSAGE_FRA(0x6068,
"Sans ces sales vieilles sorcières, \n"
"le clan des voleuses est moins\n"
"terrifiant!"
);

DECLARE_MESSAGE_FRA(0x6069,
"La " COLOR("\x41") "forteresse Gerudo" COLOR("\x40") " est de \n"
"l'autre côté...mais un gamin comme \n"
"toi n'a rien à y faire."
);

DECLARE_MESSAGE_FRA(0x606A,
UNSKIPPABLE  SFX("\x68\x55") "Je suis le " COLOR("\x41") "chef des ouvriers" COLOR("\x40") ". \n"
"Les voleuses Gerudos ont cassé \n"
"mon joli pont."BOX_BREAK
UNSKIPPABLE "J'aimerais le réparer mais mes \n"
"hommes ont disparu!\n"
"Alors...je suis coincé ici."BOX_BREAK
UNSKIPPABLE "Leur condition d'ouvrier ne leur \n"
"plaisait pas...des mauviettes, oui! \n"
"Alors ils sont tous partis à \n"
"la " COLOR("\x41") "forteresse Gerudo" COLOR("\x40") "..." TEXTID("\x60\x6B")
);

DECLARE_MESSAGE_FRA(0x606B,
"Hé! Toi! Tu vas à la forteresse?\n"
"Pourrais-tu voir ce que fabriquent\n"
"mes ouvriers?"
);

DECLARE_MESSAGE_FRA(0x606C,
"Hé! C'est toi qui as sauvé mes \n"
"hommes! Pour te remercier on t'a \n"
"construit ce pont! Pas mal, hein!\n"
"C'est pas du boulot d'Goron!!!"BOX_BREAK"Il est droit, il est soigné...\n"
"Mon pont à moi c'est le plus beau\n"
"de tous les ponts du mooooonde!"BOX_BREAK"Mes ouvriers sont, soit, un peu\n"
"paresseux...mais en travaillant en\n"
"équipe, ils font du bon travail!"
);

DECLARE_MESSAGE_FRA(0x606D,
UNSKIPPABLE  SFX("\x68\x55") "Hé! Mais c'est ma scie!"BOX_BREAK
UNSKIPPABLE "Je l'avais égarée chez ma vieille \n"
"femme...C'est fou!" TEXTID("\x60\x6E")
);

DECLARE_MESSAGE_FRA(0x606E,
"Mon outil Biggoron est brisé. \n"
"Je m'apprêtais à le faire réparer \n"
"au village Goron."BOX_BREAK"Ta venue est providentielle.\n"
"Peux-tu me rendre la scie?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x606F,
SHIFT("\x4D")  QUICKTEXT_ENABLE "Quoi?!\n"
SHIFT("\x30") "Sale petit voleur!\n"
SHIFT("\x38") "JE TE HAIS!!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x6070,
"Voici l'entrée du " COLOR("\x41") "Gymnase " COLOR("\x40") "Gerudo.\n"
"Les personnes non autorisées sont\n"
"interdites d'accès!"
);

DECLARE_MESSAGE_FRA(0x6071,
"Voici l'entrée du " COLOR("\x41") "Gymnase " COLOR("\x40") "Gerudo.\n"
"Carte de membre valide...\n"
"Entre et donne-toi à fond!" EVENT
);

DECLARE_MESSAGE_FRA(0x6072,
"Voici l'entrée du " COLOR("\x41") "Gymnase " COLOR("\x40") "Gerudo. \n"
"Même si ta carte est valide, ne \n"
"garde pas tous les trésors pour\n"
"ta pomme!"
);

DECLARE_MESSAGE_FRA(0x6073,
"6073"
);

DECLARE_MESSAGE_FRA(0x6074,
"Oh! Comme c'i dommage"BOX_BREAK"Li marque qui ti mènera au Temple\n"
"di Isprits c'i li " COLOR("\x41") "drapeau à gauche \n"
COLOR("\x40") "en sortant d'ici."BOX_BREAK"N'hisite pas à rivinir mi voir!"
);

DECLARE_MESSAGE_FRA(0x6075,
"Oh! Ti as pas assez di Rubis!\n"
"Ji fi pas cridit ici!!!"
);

DECLARE_MESSAGE_FRA(0x6076,
"Hé! Hé!\n"
"Tu m'as l'air préoccupé."BOX_BREAK"Pour me défier, il faut avoir\n"
"l'esprit clair... Une course est\n"
"un travail mental et physique!"
);

DECLARE_MESSAGE_FRA(0x6077,
"Bienvinue chez Sabib al Mamoud!"BOX_BREAK"Ji vends di choses...mirvilleuses.\n"
"Li curiositi, li objits magiques...\n"
"Ti trove tout chi Sabib al Mamoud!\n"
"Aujourd'hui, ji ti propose..."BOX_BREAK"Une arme qu'elle est tirrible!\n"
"Mais montre à Sabib tes Rubis..."BOX_BREAK"Donne " COLOR("\x41") "200 Rubis " COLOR("\x40") "et ji ti li donne.\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Acheter\n"
"Ne pas acheter" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x6078,
"Merci di li beaucoup!\n"
"Ti es beau! Que ti es beau!"BOX_BREAK"Ci qui ji li vends c'est di...\n"
TEXT_SPEED("\x02")  COLOR("\x41") "Missiles Teigneux" COLOR("\x40") "!" TEXT_SPEED("\x00") BOX_BREAK"Si ti veux aller au Temple di \n"
"l'Isprit va vers li " COLOR("\x41") "drapeau à\n"
"gauche " COLOR("\x40") "en sortant d'ici!"
);

DECLARE_MESSAGE_FRA(0x6079,
UNSKIPPABLE "Bonjour " NAME "!\n"
"Content de me voir?"BOX_BREAK
UNSKIPPABLE "Le temps n'a aucune prise sur toi! \n"
"Comme c'est étrange!"BOX_BREAK
UNSKIPPABLE "J'ai toujours cru qu'un voyageur \n"
"du temps n'était qu'une légende..."BOX_BREAK
UNSKIPPABLE  NAME ", \n"
"tu es devenu un adulte!" TEXTID("\x60\x7A")
);

DECLARE_MESSAGE_FRA(0x607A,
"Le destin d'Hyrule est désormais\n"
"entre tes mains."BOX_BREAK"Le moment est mal choisi mais \n"
"voici un dernier conseil..."BOX_BREAK"Deux puissantes sorcières habitent\n"
"dans ce temple. Pour les vaincre, \n"
"il te faudra " COLOR("\x41") "utiliser contre elles \n"
"leur propre magie" COLOR("\x40") ". Hou hou!" TEXTID("\x60\x7B")
);

DECLARE_MESSAGE_FRA(0x607B,
"Veux-tu que je répète tout ça?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x607C,
UNSKIPPABLE "Je garde un oeil sur toi...\n"
"Hou hou hou hou!"
);

DECLARE_MESSAGE_FRA(0x607D,
UNSKIPPABLE "Je suis le marathonien errant!\n"
"J'ai parcouru ce monde à la \n"
"recherche du véritable esprit\n"
"de compétition."BOX_BREAK
UNSKIPPABLE "J'ai triomphé de tous mes \n"
"adversaires...\n"
"Car je suis...(tadaaaaa!).....\n"
QUICKTEXT_ENABLE "Le marathonien errant" QUICKTEXT_DISABLE "!"BOX_BREAK
UNSKIPPABLE "Tu m'as l'air costaud. \n"
"L'instinct du furieux guerrier \n"
"sanguinaire brille dans ton regard."BOX_BREAK
UNSKIPPABLE "Le pont de la vallée Gerudo est \n"
"à nouveau en état. Je cherche des\n"
"adversaires de valeur." TEXTID("\x60\x7E")
);

DECLARE_MESSAGE_FRA(0x607E,
"Le meilleur temps d'ici jusqu'au \n"
COLOR("\x42") "pont des bois perdus" COLOR("\x40") " est " COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ".  \n"
"C'est mon record perso..."BOX_BREAK"Relèves-tu le défi?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x607F,
"Parfait!\n"
"Alors..."BOX_BREAK"Tu pars le premier.\n"
"Tu prendras la tête de la course.\n"
"Enfin...au début!"BOX_BREAK"Prêt? " TEXT_SPEED("\x02") "Partez!" TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_FRA(0x6080,
"Pfffff.....\n"
"Tu ne découvriras jamais ton \n"
"instinct de furieux guerrier \n"
"sanguinaire de cette façon!!!"
);

DECLARE_MESSAGE_FRA(0x6081,
"Pas mal. Pas super-super, mais tu \n"
"t'es bien défendu! \n"
"Enfin...ne rêve pas trop!\n"
"Tu ne pourras JAMAIS me battre."BOX_BREAK"Ton temps est de " COLOR("\x41")  HIGHSCORE("\x04")  COLOR("\x40") ", non?\n"
"Malheureusement pour ta pomme,\n"
"je suis arrivé une seconde avant \n"
"toi! C'est bête, hein?" EVENT
);

DECLARE_MESSAGE_FRA(0x6082,
"Hé hé hé hé hé...\n"
"Ne sois pas timide! " TEXT_SPEED("\x02") "Passe devant!" TEXT_SPEED("\x00")
);

DECLARE_MESSAGE_FRA(0x6083,
"C'est mal! \n"
"Tu as abandonné la course! \n"
"Tu ne seras donc jamais un \n"
"furieux guerrier sanguinaire!!!" FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x6084,
"Hé hé hé hé...\n"
"Ton instinct de furieux guerrier \n"
"sanguinaire est faible."BOX_BREAK"Entraîne-toi encore et encore!\n"
"A la prochaine... " QUICKTEXT_ENABLE "Limace!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x6085,
TEXT_SPEED("\x01")  QUICKTEXT_ENABLE "Heuff..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "peuff..." QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "heuff..." QUICKTEXT_DISABLE  TEXT_SPEED("\x00") BOX_BREAK"Woah! Tu as fait très fort!"BOX_BREAK"Maaaaaiiiis...je suis le vainqueur! \n"
"Ton temps est de " COLOR("\x41")  MARATHON_TIME  COLOR("\x40") ".\n"
"Je t'ai battu d'une seconde!"BOX_BREAK"Heuff...heuff... \n"
"N'hésite pas à me défier une \n"
"nouvelle fois! Quand tu veux!"BOX_BREAK"Heuff...heuff...\n"
"A la prochaine, " QUICKTEXT_ENABLE "limace!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x6086,
"Je suis le marathonien errant!\n"
"Je cherche un adversaire à\n"
"l'instinct du furieux guerrier\n"
"sanguinaire!"BOX_BREAK"J'aimerais rejoindre la plaine\n"
"d'Hyrule, mais le pont est...\n"
"Enfin ça se voit d'ici! \n"
"Alors je suis coincé ici."BOX_BREAK"Je suis désolé mais je ne peux\n"
"te défier aujourd'hui. Hé hé hé!"
);

DECLARE_MESSAGE_FRA(0x6087,
"6087"
);

DECLARE_MESSAGE_FRA(0x6088,
"6088"
);

DECLARE_MESSAGE_FRA(0x6089,
"6089"
);

DECLARE_MESSAGE_FRA(0x608A,
"608A"
);

DECLARE_MESSAGE_FRA(0x608B,
"608B"
);

DECLARE_MESSAGE_FRA(0x608C,
"608C"
);

DECLARE_MESSAGE_FRA(0x608D,
"608D"
);

DECLARE_MESSAGE_FRA(0x608E,
"608E"
);

DECLARE_MESSAGE_FRA(0x608F,
"608F"
);

DECLARE_MESSAGE_FRA(0x7000,
"Je n'arrive pas à attraper cette \n"
"cocotte!"
);

DECLARE_MESSAGE_FRA(0x7001,
"Huff huff! \n"
"Je suis en retard!\n"
"J'ai un rencard!"
);

DECLARE_MESSAGE_FRA(0x7002,
"Gloire et longue vie à la noble\n"
"Famille Royale d'Hyrule!"
);

DECLARE_MESSAGE_FRA(0x7003,
"Les gamins ne se promènent pas \n"
"près du château la nuit! \n"
"Reste dans la ville en attendant \n"
"le lever du soleil!"
);

DECLARE_MESSAGE_FRA(0x7004,
"Bwooarff! Je m'ennuie...\n"
"Ha! S'il y avait un peu plus \n"
"d'action, je pourrais m'amuser..."BOX_BREAK"Mais tu gardes ça pour toi, OK?"BOX_BREAK"Enfin...on peut toujours faire un \n"
"peu de bruit en brisant ces jarres."BOX_BREAK"Appuie sur " COLOR("\x42") "[A]" COLOR("\x40") " pour en soulever\n"
"une. Utilise ensuite " COLOR("\x42") "[A]" COLOR("\x40") " pour\n"
"la lancer!"
);

DECLARE_MESSAGE_FRA(0x7005,
UNSKIPPABLE "C'est fantastique!"BOX_BREAK
UNSKIPPABLE "Ha! J'ai oublié de te dire..." EVENT
);

DECLARE_MESSAGE_FRA(0x7006,
QUICKTEXT_ENABLE "Le château est en alerte! Je ne \n"
"laisserai même pas une souris\n"
"entrer!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x7007,
UNSKIPPABLE "Arrrrgh...es-tu le garçon de la\n"
"forêt...?"BOX_BREAK
UNSKIPPABLE "Enfin te voici...\n"
"E-éc-écoute..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Ganondorf" COLOR("\x40") ", le prince des voleurs,\n"
"a trahi notre Roi..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Impa" COLOR("\x40") " la nourrice a senti le danger\n"
"et s'est enfuie du château avec la\n"
"Princesse Zelda..."BOX_BREAK
UNSKIPPABLE "J'ai essayé d'arrêter les hommes \n"
"de Ganondorf...mais..."BOX_BREAK
UNSKIPPABLE "La Princesse attendait...un garçon\n"
"de la forêt...toi... Elle voulait\n"
"te donner " COLOR("\x41") "quelque chose" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Si la Princesse te l'a remis, \n"
TEXT_SPEED("\x03")  QUICKTEXT_ENABLE "Vite" QUICKTEXT_DISABLE "..." QUICKTEXT_ENABLE "va au" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE  COLOR("\x44") "Tem" QUICKTEXT_DISABLE  QUICKTEXT_ENABLE "ple" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "du" QUICKTEXT_DISABLE " Temps" COLOR("\x40") "...." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_FRA(0x7008,
"Il ne bouge plus...."
);

DECLARE_MESSAGE_FRA(0x7009,
UNSKIPPABLE "Tu vois cet homme aux yeux \n"
"noirs de haine?"BOX_BREAK
UNSKIPPABLE "C'est " COLOR("\x41") "Ganondorf" COLOR("\x40") ", il est le chef \n"
"des Gerudos, une tribu du désert."BOX_BREAK
UNSKIPPABLE "Même s'il jure fidélité à Père, \n"
"je suis sûre qu'il est un traître."BOX_BREAK
UNSKIPPABLE "Mes rêves me font voir de \n"
"sombres nuages sur Hyrule...\n"
"Ils doivent représenter cet homme!"
);

DECLARE_MESSAGE_FRA(0x700A,
SHIFT("\x05") "Ha hah hah! Félicitations, gamin!"BOX_BREAK_DELAYED("\x3C")  SHIFT("\x02") "Comme je le pensais, tu avais en \n"
SHIFT("\x06") "ta possession la clé des portes \n"
SHIFT("\x44") "du temps!"BOX_BREAK_DELAYED("\x5A")  SHIFT("\x0B") "Tu m'as ouvert la voie jusqu'au\n"
SHIFT("\x34") "Saint Royaume..."BOX_BREAK_DELAYED("\x50")  SHIFT("\x0F") "Je te dois ma victoire, petit!" FADE("\x32")
);

DECLARE_MESSAGE_FRA(0x700B,
UNSKIPPABLE "Vite! Il va s'en aller!" EVENT
);

DECLARE_MESSAGE_FRA(0x700C,
"Pitié...avec " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Pitié vends-moi le " COLOR("\x41") "contenu" COLOR("\x40") " d'une\n"
"bouteille...\n"
"Pitié...avec " COLOR("\x46") "[C]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x700D,
"Quelle étrange boutique!\n"
"Quand va-t-elle ouvrir?\n"
"J'ai lu le panneau mais... \n"
"J'y comprends rien!"
);

DECLARE_MESSAGE_FRA(0x700E,
"L'aube se fait attendre..."BOX_BREAK"La vue du château sous le soleil \n"
"du matin est superbe!"
);

DECLARE_MESSAGE_FRA(0x700F,
"Pour sauver la fille de la forêt il\n"
"te faudra un " COLOR("\x41") "nouveau pouvoir" COLOR("\x40") "... \n"
"Va au village Cocorico!"
);

DECLARE_MESSAGE_FRA(0x7010,
"Tu as le pouvoir qu'il te faut...\n"
"La " COLOR("\x42") "fille de la forêt " COLOR("\x40") "t'attend..."
);

DECLARE_MESSAGE_FRA(0x7011,
"Il te faut une bouteille vide\n"
"pour transporter une potion!" PERSISTENT
);

DECLARE_MESSAGE_FRA(0x7012,
"Désolé...ce n'est qu'une maquette. \n"
"La crise du village Goron nous\n"
"a mis en rupture de stock." PERSISTENT
);

DECLARE_MESSAGE_FRA(0x7013,
"Avant d'aller sur le Mont du Péril, \n"
"procure-toi un " COLOR("\x44") "bouclier Hylien" COLOR("\x40") ". \n"
"Les chutes de pierres sont \n"
"terribles, tu verras!"BOX_BREAK"Mais il risque d'être un peu grand \n"
"pour toi..." PERSISTENT
);

DECLARE_MESSAGE_FRA(0x7014,
"T'es fou! Je ne danse pas...\n"
"J'ai le dos qui me gratte...\n"
"Haaaa! Hooooo! Rhaaaaa!"
);

DECLARE_MESSAGE_FRA(0x7015,
"On dit que les grandes oreilles \n"
"des " COLOR("\x44") "Hyliens" COLOR("\x40") " servent à entendre la \n"
"voix des dieux...faut croire que les \n"
"miennes sont en panne."
);

DECLARE_MESSAGE_FRA(0x7016,
UNSKIPPABLE "Es-tu déjà allé au " COLOR("\x46") "Ranch Lon Lon" COLOR("\x40") ",\n"
"Gamin?"BOX_BREAK
UNSKIPPABLE "Leur lait est délicieux!\n"
"Ils ont beaucoup de chevaux et la\n"
"fille du patron est très mignonne!" TEXTID("\x70\x17")
);

DECLARE_MESSAGE_FRA(0x7017,
"Pour te rendre au " COLOR("\x46") "Ranch" COLOR("\x40") ", c'est \n"
"simple: traverse la plaine vers \n"
"le Sud en sortant du château!\n"
"Tu m'en diras des nouvelles!"
);

DECLARE_MESSAGE_FRA(0x7018,
UNSKIPPABLE "Je voulais voir la " COLOR("\x41") "Princesse Zelda" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "J'ai évité tous les gardes..."BOX_BREAK
UNSKIPPABLE "J'ai nagé dans les douves..."BOX_BREAK
UNSKIPPABLE "J'y étais presque mais...ils m'ont\n"
"attrapé!" TEXTID("\x70\x19")
);

DECLARE_MESSAGE_FRA(0x7019,
"J'ai trouvé un petit " COLOR("\x41") "trou\n"
"d'évacuation" COLOR("\x40") " sur la droite du \n"
"château. J'ai voulu m'y glisser \n"
"mais je suis resté coincé!"
);

DECLARE_MESSAGE_FRA(0x701A,
SHIFT("\x37") "Ahem! " QUICKTEXT_ENABLE "Hrrrm!" QUICKTEXT_DISABLE BOX_BREAK
SHIFT("\x15") "Cette barbe est ma fierté!\n"
SHIFT("\x17") "Elle est belle, hein? Hein?"
);

DECLARE_MESSAGE_FRA(0x701B,
UNSKIPPABLE  SHIFT("\x37") "Ahem! " QUICKTEXT_ENABLE "Hrrrm!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE  SHIFT("\x16") "Cette barbe est ma fierté.\n"
SHIFT("\x0E") "Elle est belle et bien fournie!"BOX_BREAK
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x4D") "Quoi?!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "Tu cherches le gars du Ranch \n"
"Lon Lon?"BOX_BREAK
UNSKIPPABLE "Hmm, Peut-être..." TEXTID("\x70\x1C")
);

DECLARE_MESSAGE_FRA(0x701C,
"J'ai vu un " COLOR("\x41") "type avec une horrible\n"
"moustache noire " COLOR("\x40") "apporter du lait\n"
"au château."
);

DECLARE_MESSAGE_FRA(0x701D,
UNSKIPPABLE "Sais-tu que le " COLOR("\x44") "Temple du Temps" COLOR("\x40") "\n"
"se trouve au Nord Est du Bourg?" TEXTID("\x70\x1E")
);

DECLARE_MESSAGE_FRA(0x701E,
"Les légendes racontent que le \n"
"Temple du Temps est l'entrée du\n"
"Saint Royaume..."BOX_BREAK"C'est trop terrible ça!"
);

DECLARE_MESSAGE_FRA(0x701F,
UNSKIPPABLE "Wha-ha-ha! Il est dingue ce type!"BOX_BREAK
UNSKIPPABLE "Il a essayé d'entrer dans le \n"
"château pour voir la " COLOR("\x41") "Princesse \n"
"Zelda" COLOR("\x40") "! Il est dingue, lui!" TEXTID("\x70\x20")
);

DECLARE_MESSAGE_FRA(0x7020,
"A cause de ce crétin ils ont \n"
"doublé la garde! C'est malin!\n"
"Wha-ha-hah!"
);

DECLARE_MESSAGE_FRA(0x7021,
UNSKIPPABLE "J'ai gagné beaucoup d'argent!"BOX_BREAK
UNSKIPPABLE "Moi j'aime vendre des trucs \n"
"et des machins!" TEXTID("\x70\x22")
);

DECLARE_MESSAGE_FRA(0x7022,
"Je vais me faire des sous près du\n"
COLOR("\x43") "Lac Hylia" COLOR("\x40") "! On trouve plein d'objets\n"
"au fond de l'eau! Hah hah!"
);

DECLARE_MESSAGE_FRA(0x7023,
UNSKIPPABLE "Hé! P'tit gars de la forêt! \n"
"Voici le " COLOR("\x44") "Bourg d'Hyrule" COLOR("\x40") "! \n"
"Prends ton temps et admire!" TEXTID("\x70\x24")
);

DECLARE_MESSAGE_FRA(0x7024,
"Pour aller au " COLOR("\x44") "Château d'Hyrule" COLOR("\x40") ",\n"
"prends la rue à droite."BOX_BREAK"Pour examiner la " COLOR("\x43") "ruelle" COLOR("\x40") ", emprunte\n"
"la rue de gauche."
);

DECLARE_MESSAGE_FRA(0x7025,
"Amour..."BOX_BREAK"Tu es si...beau..."BOX_BREAK"Comme le Roi d'Hyrule..."BOX_BREAK"Amour..."
);

DECLARE_MESSAGE_FRA(0x7026,
"Comme tu es belle..."BOX_BREAK"Tu es..."BOX_BREAK"Encore plus belle que..."BOX_BREAK"La Princesse Zelda..."BOX_BREAK"Mon p'tit chat... Je t'aime tant!"
);

DECLARE_MESSAGE_FRA(0x7027,
UNSKIPPABLE "Connais-tu le \"peuple de l'ombre\"?"BOX_BREAK
UNSKIPPABLE "Les " COLOR("\x43") "Sheikahs " COLOR("\x40") "sont l'ombre des \n"
"Hyliens."BOX_BREAK
UNSKIPPABLE "On dit qu'ils ont juré fidélité au\n"
"Roi d'Hyrule! Leur tâche est de \n"
"protéger la Famille Royale."BOX_BREAK
UNSKIPPABLE "Mais ils se font très rares par \n"
"ces temps de paix ..."BOX_BREAK
UNSKIPPABLE "Enfin..." TEXTID("\x70\x28")
);

DECLARE_MESSAGE_FRA(0x7028,
"J'ai entendu dire qu'un " COLOR("\x43") "Sheikah \n"
COLOR("\x40") "vivait au château..."
);

DECLARE_MESSAGE_FRA(0x7029,
"Quoi? Tu veux voir la " COLOR("\x41") "Princesse\n"
"Zelda" COLOR("\x40") "?\n"
"Haaaa... Encore un!"BOX_BREAK"Bon! Ce que tu veux, on s'en \n"
"contre-fiche!\n"
"Alors..."BOX_BREAK
QUICKTEXT_ENABLE "Du balai!" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Ouste!!" QUICKTEXT_DISABLE "\n"
"Jamais la Princesse n'accordera\n"
"une audience à un bouseux comme \n"
"toi! Hah ah ah ha ha!"
);

DECLARE_MESSAGE_FRA(0x702A,
"Z Z Z Z Z...."BOX_BREAK"Ronnnff...Zzzzzz...Hmmmpfff! "BOX_BREAK"Bienvenue...au Ranch..."BOX_BREAK"Il est beau mon Ranch...\n"
"Roooooonnnfle...."
);

DECLARE_MESSAGE_FRA(0x702B,
UNSKIPPABLE  QUICKTEXT_ENABLE  SHIFT("\x32") "Nom d'un pétard!" QUICKTEXT_DISABLE BOX_BREAK
UNSKIPPABLE "On peut pas piquer un p'tit\n"
"roupillon en paix ici?"
);

DECLARE_MESSAGE_FRA(0x702C,
UNSKIPPABLE "Bonjour mon ami! Qui es-tu?"BOX_BREAK
UNSKIPPABLE "Ouaip! Moi c'est " COLOR("\x41") "Talon" COLOR("\x40") ", patron du\n"
"Ranch Lon Lon."BOX_BREAK
UNSKIPPABLE "Je suis venu au château livrer du\n"
"lait et...j'ai dû m'endormir..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x4C")  SFX("\x68\x52") "Quoi?!\n"
SHIFT("\x2D") "Malon me cherche?\n"
"Houlà je vais m'faire crier dessus!"BOX_BREAK
UNSKIPPABLE "Malon n'aime pas mes p'tites\n"
"pauses!"BOX_BREAK
UNSKIPPABLE "Je ne vais pas y couper!" EVENT
);

DECLARE_MESSAGE_FRA(0x702D,
QUICKTEXT_ENABLE  SHIFT("\x0F") "Hé! Le mioche! Viens par là!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x702E,
UNSKIPPABLE  SHIFT("\x5F") "!"BOX_BREAK_DELAYED("\x0A")  UNSKIPPABLE  SHIFT("\x4E")  QUICKTEXT_ENABLE "Qui?!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x702F,
UNSKIPPABLE  SHIFT("\x42") "Qui es-tu?"BOX_BREAK
UNSKIPPABLE "Comment as-tu évité les gardes?" EVENT
);

DECLARE_MESSAGE_FRA(0x7030,
"Alors...tu as la Pierre?\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7031,
"Etrange...\n"
"Tu ressembles pourtant au garçon \n"
"de mon rêve...\n"
"Vraiment? Tu ne l'as pas?"BOX_BREAK"Allez... Dis-moi la vérité..." EVENT
);

DECLARE_MESSAGE_FRA(0x7032,
UNSKIPPABLE  SHIFT("\x34") "J'en étais sûre!" EVENT
);

DECLARE_MESSAGE_FRA(0x7033,
"Bon...ne répète ça à personne...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7034,
"Tu vas cafarder? \n"
"Sois gentil..." EVENT
);

DECLARE_MESSAGE_FRA(0x7035,
UNSKIPPABLE "Voici ce que dit la légende..." EVENT
);

DECLARE_MESSAGE_FRA(0x7036,
UNSKIPPABLE  SHIFT("\x0A") "Les trois déesses dissimulèrent\n"
"la " COLOR("\x41") "Triforce" COLOR("\x40") " renfermant la puissance\n"
SHIFT("\x04") "des dieux quelque part en Hyrule."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x1F") "Cette puissance permet\n"
SHIFT("\x0A") "d'exaucer un voeu au détenteur\n"
SHIFT("\x39") "de la Triforce."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x11") "Si ce voeu est prononcé par\n"
SHIFT("\x08") "un homme au coeur pur, Hyrule \n"
SHIFT("\x26") "connaîtra l'âge d'or...."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x08") "Mais si le voeu est formulé par\n"
SHIFT("\x04") "un homme mauvais, le monde sera\n"
SHIFT("\x15") "englouti dans les flammes..."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x08") "Les Sages anciens ont construit\n"
SHIFT("\x05") "le " COLOR("\x44") "Temple du Temps " COLOR("\x40") "pour tenir la\n"
SHIFT("\x22") "Triforce à l'écart des \n"
SHIFT("\x33") "forces obscures." FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x7037,
"En effet... Le Temple du Temps est\n"
"la porte vers le Saint Royaume \n"
"légendaire."BOX_BREAK"Mais la " COLOR("\x44") "Porte du Temps" COLOR("\x40") " en interdit\n"
"l'accès..."BOX_BREAK"Pour ouvrir cette porte les trois\n"
COLOR("\x41") "Pierres Ancestrales" COLOR("\x40") " sont\n"
"indispensables."BOX_BREAK"Ainsi que le trésor de la Famille\n"
"Royale......" EVENT
);

DECLARE_MESSAGE_FRA(0x7038,
"Excuse-moi...\n"
"Je ne suis pas douée pour conter \n"
"les légendes..." EVENT
);

DECLARE_MESSAGE_FRA(0x7039,
UNSKIPPABLE  QUICKTEXT_ENABLE "Que s'est-il passé?" QUICKTEXT_DISABLE " Il t'a vu?"BOX_BREAK
UNSKIPPABLE "Ce n'est pas grave..."BOX_BREAK
UNSKIPPABLE "Il ignore nos plans... \n"
"Enfin pour l'instant!" EVENT
);

DECLARE_MESSAGE_FRA(0x703A,
UNSKIPPABLE "Je t'en prie!\n"
"\n"
TWO_CHOICE  COLOR("\x42") "OK\n"
"Je ne te crois pas" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x703B,
UNSKIPPABLE  SHIFT("\x4E") "Merci!" EVENT
);

DECLARE_MESSAGE_FRA(0x703C,
"Ma nourrice te guidera hors du\n"
"château. N'aie pas peur et va lui \n"
"parler."
);

DECLARE_MESSAGE_FRA(0x703D,
"La Pierre Ancestrale...\n"
"Tu l'as enfin trouvée!"BOX_BREAK"Il est dit que les races possédant \n"
"une Pierre Ancestrale ouvrent leur \n"
"esprit au son de la " COLOR("\x43") "Mélodie de la \n"
"Famille Royale" COLOR("\x40") "."BOX_BREAK"Mais tu connais déjà cette \n"
"mélodie, n'est-ce pas?"
);

DECLARE_MESSAGE_FRA(0x703E,
"Hé! Sais-tu que la Princesse \n"
"Zelda fait souvent des rêves \n"
"prémonitoires?"
);

DECLARE_MESSAGE_FRA(0x703F,
"Gné? Quoué? Comment? \n"
"Va-t'en, petit..."
);

DECLARE_MESSAGE_FRA(0x7040,
"Il y a trois socles et une \n"
"inscription...."BOX_BREAK
QUICKTEXT_ENABLE "Toi qui portes les trois Pierres\n"
"Ancestrales, entonne le " COLOR("\x44") "chant du \n"
"temps " COLOR("\x40") "avec l'" COLOR("\x44") "Ocarina du Temps" COLOR("\x40") "." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x7041,
"Allez, fais-moi un prix! \n"
"Une réduc' quoi! \n"
"C'est trop cher!"
);

DECLARE_MESSAGE_FRA(0x7042,
"Hé! Va-t'en! C'est à môa!\n"
"Je l'ai vu la première!"
);

DECLARE_MESSAGE_FRA(0x7043,
"Hé! Qui c'est qui m'a poussée? \n"
"QUI?!"
);

DECLARE_MESSAGE_FRA(0x7044,
"Etrange...Un groupe de Gerudos \n"
"dans la ville...Il se passe quelque\n"
"chose de pas très correct dans \n"
"le coin! Ouais, ça c'est sûr!"
);

DECLARE_MESSAGE_FRA(0x7045,
"C'était pas la Princesse Zelda sur\n"
"ce cheval blanc?!"
);

DECLARE_MESSAGE_FRA(0x7046,
"j'ai failli me faire écraser par \n"
"cet énorme cheval noir!\n"
"L'est fou l'aut' grand type!"
);

DECLARE_MESSAGE_FRA(0x7047,
"L'homme sur le cheval noir \n"
"s'appelle Ganondorf. Il est connu \n"
"comme étant le Roi des Voleurs \n"
"Gerudo."
);

DECLARE_MESSAGE_FRA(0x7048,
"Hein?! Que s'est-il passé?!"
);

DECLARE_MESSAGE_FRA(0x7049,
"Regarde ce type! Il est mort de\n"
"trouille! Quelle mauviette!\n"
"Ha ha hah!"
);

DECLARE_MESSAGE_FRA(0x704A,
"Hmmmm...ça craint dans l'coin...\n"
"Je vais prendre des vacances!"
);

DECLARE_MESSAGE_FRA(0x704B,
"Un drame est arrivé au château!\n"
"Sois prudent, gamin!"
);

DECLARE_MESSAGE_FRA(0x704C,
"Cette " COLOR("\x41") "clé" COLOR("\x40") " te permet d'ouvrir la\n"
"salle suivante!"
);

DECLARE_MESSAGE_FRA(0x704D,
"Sur le cheval blanc...\n"
"C'était pas cette...Sheikah?"
);

DECLARE_MESSAGE_FRA(0x704E,
UNSKIPPABLE  SHIFT("\x2D")  NAME "..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x37") "Reviens à toi...\n"
SHIFT("\x4B") "...L'élu..."
);

DECLARE_MESSAGE_FRA(0x704F,
UNSKIPPABLE "Je suis " COLOR("\x41") "Rauru" COLOR("\x40") "...\n"
"L'un des anciens Sages."BOX_BREAK
UNSKIPPABLE "Jadis, les Sages bâtirent le Temple \n"
"du Temps pour protéger l'entrée \n"
"du Saint Royaume Légendaire..."BOX_BREAK
UNSKIPPABLE "Voici le " COLOR("\x41") "Sanctuaire des Sages" COLOR("\x40") " au\n"
"sein même du Temple de la \n"
"Lumière!"BOX_BREAK
UNSKIPPABLE "Le Temple de la Lumière se trouve\n"
"au centre du Saint Royaume. Il est\n"
"le dernier rempart contre \n"
"l'influence maléfique de Ganondorf."BOX_BREAK
UNSKIPPABLE "L'" COLOR("\x41") "Epée de Légende" COLOR("\x40") ", la lame \n"
"purificatrice jadis prisonnière \n"
"du piédestal du Temps, est la\n"
"clé ultime du Saint Royaume."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"N'aie pas peur...\n"
"Regarde-toi...!"
);

DECLARE_MESSAGE_FRA(0x7050,
UNSKIPPABLE  SHIFT("\x1B")  COLOR("\x44") "Regarde " NAME "!" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  SHIFT("\x38")  COLOR("\x44") "Tu as grandi!!\n"
COLOR("\x40")  SHIFT("\x32")  COLOR("\x44") "Tu es un adulte!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7051,
UNSKIPPABLE "L'Epée de Légende est une lame \n"
"sacrée interdite aux forces \n"
"obscures...."BOX_BREAK
UNSKIPPABLE "Seul le \"" COLOR("\x41") "Héros du Temps" COLOR("\x40") "\" peut la \n"
"retirer de son socle de granit...."BOX_BREAK
UNSKIPPABLE "Mais tu étais trop jeune pour être\n"
"ce Héros du Temps...."BOX_BREAK
UNSKIPPABLE "Ton esprit fut scellé en ce lieu\n"
"pendant sept ans."BOX_BREAK
UNSKIPPABLE "Mais il est enfin temps de \n"
"t'éveiller et de laisser la \n"
"destinée du Héros du Temps \n"
"s'accomplir par tes actes!"BOX_BREAK"As-tu conscience de la tâche à \n"
"accomplir?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7052,
"Oui, je comprends, ton esprit est \n"
"encore embrumé par les voiles d'un\n"
"repos de sept ans...Je vais tout\n"
"te répéter." TEXTID("\x70\x51")
);

DECLARE_MESSAGE_FRA(0x7053,
UNSKIPPABLE "Mais souviens-toi..."BOX_BREAK
UNSKIPPABLE "Même si tu as ouvert les Portes \n"
"du Temps au nom de la paix et \n"
"de la justice..."BOX_BREAK
UNSKIPPABLE  COLOR("\x41") "Ganondorf" COLOR("\x40") ", le Roi des voleurs\n"
"Gerudo, en a profité pour violer\n"
"le Saint Royaume interdit!"BOX_BREAK
UNSKIPPABLE "Il a dérobé la Triforce dans le \n"
"Temple de la Lumière, et grâce à\n"
"ses nouveaux pouvoirs il s'est \n"
"sacré " COLOR("\x41") "Seigneur du Malin" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Son pouvoir maléfique a perverti\n"
"les Temples d'Hyrule et a transfor-\n"
"mé en sept ans notre monde en \n"
"un chaos innommable."BOX_BREAK
UNSKIPPABLE "Mon pouvoir est bien faible, mon\n"
"influence mineure, dans le \n"
"Saint Royaume...et..."BOX_BREAK
UNSKIPPABLE "...dans ce Sanctuaire des Sages."BOX_BREAK
UNSKIPPABLE "Mais il reste un espoir."BOX_BREAK
UNSKIPPABLE "La puissance des Sages."BOX_BREAK
UNSKIPPABLE "Quand la puissance des " COLOR("\x41") "sept\n"
"Sages " COLOR("\x40") "se manifestera......"BOX_BREAK
UNSKIPPABLE "...les influences maléfiques seront \n"
"endiguées par le " COLOR("\x41") "Sceau des Sages" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Moi, Rauru, je suis l'un des Sages.\n"
"Et..."BOX_BREAK
UNSKIPPABLE "...ta puissance combinée à celle\n"
"des Sages te proclame...\n"
COLOR("\x41") "Héros du Temps" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Elu par l'Epée de Légende,\n"
"ta destinée sera de guider Hyrule\n"
"vers la lumière."BOX_BREAK
UNSKIPPABLE "Garde mon esprit avec toi...\n"
"Trouve les autres Sages et reviens\n"
"ici consacré de leurs pouvoirs!"
);

DECLARE_MESSAGE_FRA(0x7054,
UNSKIPPABLE  COLOR("\x44") "Nous sommes de retour dans le \n"
COLOR("\x40") "Temple du Temps" COLOR("\x44") "...\n"
COLOR("\x40") "Sept ans" COLOR("\x44") " se sont-ils vraiment\n"
"écoulés?" COLOR("\x40") BOX_BREAK
UNSKIPPABLE  COLOR("\x44") "Je pense que tu ne pourras plus\n"
"utiliser ton équipement d'enfant \n"
"ainsi que certaines " COLOR("\x40") "armes" COLOR("\x44") "..."BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Bon...partons d'ici!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7055,
"Hééé! Quoi...? \n"
"Qu'y a-t-il de mal à ne rien\n"
"faire de la journée?"BOX_BREAK"Hein? hein? hein?"
);

DECLARE_MESSAGE_FRA(0x7056,
UNSKIPPABLE "Je t'attendais,\n"
"Héros du Temps..."
);

DECLARE_MESSAGE_FRA(0x7057,
UNSKIPPABLE "Quand le mal est sur le monde, \n"
"ceux sensibles à l'appel du Saint\n"
"Royaume Légendaire se réfugient \n"
"dans les " COLOR("\x41") "cinq Temples" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Dans une " COLOR("\x42") "profonde forêt" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Sur une " COLOR("\x41") "haute montagne" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Dans un " COLOR("\x43") "vaste lac" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Dans la " COLOR("\x45") "maison des morts" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Dans la " COLOR("\x46") "déesse de sable" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Grâce au Héros du Temps les \n"
"éveillés chasseront les forces \n"
"maléfiques du monde et apporteront \n"
"paix et justice en Hyrule!"BOX_BREAK
UNSKIPPABLE "Telle est la légende des temples,\n"
"transmise de génération en \n"
"génération par mon peuple, les\n"
COLOR("\x43") "Sheikahs" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x7058,
"Oh! Je suis désolée.\n"
"Nous ne sommes pas ouverts pour \n"
"l'instant. Revenez plus tard!" EVENT
);

DECLARE_MESSAGE_FRA(0x7059,
UNSKIPPABLE "Frappe-le avec " COLOR("\x41") "l'Epée de Légende" COLOR("\x40") "!\n"
"Seule la sainte lame peut terrasser\n"
"Ganon!"
);

DECLARE_MESSAGE_FRA(0x705A,
UNSKIPPABLE "Je t'attendais,\n"
NAME "."
);

DECLARE_MESSAGE_FRA(0x705B,
UNSKIPPABLE  NAME ", Héros du Temps..."BOX_BREAK
UNSKIPPABLE "Tu as traversé bien des épreuves\n"
"pour éveiller les six Sages."BOX_BREAK
UNSKIPPABLE "Il ne te reste plus que la dernière\n"
"épreuve, la plus terrible! La \n"
"confrontation finale avec \n"
"Ganondorf, le Seigneur du Malin..."
);

DECLARE_MESSAGE_FRA(0x705C,
UNSKIPPABLE  SHIFT("\x21") "Toi, quêteur des saints\n"
SHIFT("\x21") "triangles, écoute bien..."BOX_BREAK_DELAYED("\x3C")  UNSKIPPABLE  SHIFT("\x0E") "Les triangles sacrés reposent\n"
SHIFT("\x29") "en un lieu mystique,\n"
SHIFT("\x11") "un miroir reflétant l'intérieur\n"
SHIFT("\x46") "de l'âme..."BOX_BREAK_DELAYED("\x46")  UNSKIPPABLE  SHIFT("\x14") "Si une âme noire y pénètre,\n"
SHIFT("\x0C") "le royaume deviendra chaos et\n"
SHIFT("\x0B") "flammes. Si elle est pure, il se\n"
SHIFT("\x23") "changera en paradis...."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x06") "La Triforce, les triangles sacrés,\n"
SHIFT("\x11") "est une balance qui équilibre\n"
SHIFT("\x28") "les trois puissances:\n"
SHIFT("\x15") "Force, Sagesse et Courage."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x20") "Si l'âme du porteur des\n"
SHIFT("\x1B") "Saints Triangles préserve\n"
SHIFT("\x0F") "cet équilibre, alors le porteur\n"
SHIFT("\x20") "aura l'ultime puissance!"BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x07") "Mais si son âme est tourmentée\n"
SHIFT("\x25") "la Triforce se brisera\n"
SHIFT("\x18") "en trois parties: la Force,\n"
SHIFT("\x19") "la Sagesse et le Courage."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE  SHIFT("\x11") "A celui qui a brisé l'équilibre\n"
SHIFT("\x15") "il ne restera qu'une pièce...\n"
SHIFT("\x13") "Celle qui correspond le plus\n"
SHIFT("\x34") "à ses ambitions."BOX_BREAK_DELAYED("\x5A")  UNSKIPPABLE  SHIFT("\x0C") "Et s'il cherche l'Ultime Pouvoir,\n"
SHIFT("\x19") "il devra acquérir les deux\n"
SHIFT("\x3A") "autres pièces."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE "Ces deux pièces seront transmises\n"
SHIFT("\x2B") "aux élus du Destin.\n"
SHIFT("\x10") "Ils porteront la marque de la\n"
SHIFT("\x10") "Triforce au dos de leur main." FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x705D,
UNSKIPPABLE "Il y a sept ans, Ganondorf, \n"
"utilisa la porte que tu as ouverte \n"
"dans le temple du temps pour \n"
"violer le Saint Royaume."BOX_BREAK
UNSKIPPABLE "Mais en posant la main sur la \n"
"Triforce la légende devint réalité."
);

DECLARE_MESSAGE_FRA(0x705E,
UNSKIPPABLE "Le porteur de la " COLOR("\x41") "Triforce du \n"
"courage" COLOR("\x40") ", c'est...\n"
"Toi, " NAME "!"
);

DECLARE_MESSAGE_FRA(0x705F,
UNSKIPPABLE "Le détenteur de la " COLOR("\x41") "Triforce\n"
"de la sagesse" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "...est le septième Sage, dont\n"
"le destin est de conduire les \n"
"autres éveillés..."
);

DECLARE_MESSAGE_FRA(0x7060,
UNSKIPPABLE "C'est moi," COLOR("\x41") " Zelda" COLOR("\x40") ", Princesse\n"
"d'Hyrule."
);

DECLARE_MESSAGE_FRA(0x7061,
UNSKIPPABLE "Pardonne-moi de t'avoir caché ma\n"
"véritable identité, mais je devais \n"
"me dérober aux yeux de Ganondorf."
);

DECLARE_MESSAGE_FRA(0x7062,
"Je t'ai vu en m'enfuyant du \n"
"château d'Hyrule." FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x7063,
UNSKIPPABLE "En te confiant l'ocarina, je pensais\n"
"pouvoir empêcher Ganondorf de \n"
"violer le Saint Royaume, mais..."BOX_BREAK
UNSKIPPABLE "Quelque chose d'inattendu\n"
"est arrivé..."
);

DECLARE_MESSAGE_FRA(0x7064,
UNSKIPPABLE  SHIFT("\x19") "Cette secousse...c'est...!?"
);

DECLARE_MESSAGE_FRA(0x7065,
UNSKIPPABLE "Princesse Zelda...\n"
"Petite cachottière!"BOX_BREAK
UNSKIPPABLE "Je te félicite d'avoir échappé à\n"
"mes recherches pendant sept ans."
);

DECLARE_MESSAGE_FRA(0x7066,
UNSKIPPABLE "Si tu veux sauver la Princesse,\n"
"viens la chercher au château!"
);

DECLARE_MESSAGE_FRA(0x7067,
UNSKIPPABLE  NAME "... C'est moi, Rauru!\n"
"Peux-tu m'entendre?"BOX_BREAK
UNSKIPPABLE "Nous, les six Sages, allons \n"
"concentrer nos pouvoirs pour \n"
"créer une passerelle vers le \n"
"château de Ganondorf..."BOX_BREAK
UNSKIPPABLE "Le donjon, la Tour de Ganon, \n"
"est protégé par " COLOR("\x41") "six barrières \n"
"maléfiques" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Abats ces barrières et sauve la\n"
"Princesse Zelda!!"
);

DECLARE_MESSAGE_FRA(0x7068,
"7068"
);

DECLARE_MESSAGE_FRA(0x7069,
"7069"
);

DECLARE_MESSAGE_FRA(0x706A,
"706a"
);

DECLARE_MESSAGE_FRA(0x706B,
"706b"
);

DECLARE_MESSAGE_FRA(0x706C,
"Anciens créateurs d'Hyrule!"BOX_BREAK_DELAYED("\x3C") "Ouvrez le sceau dimensionnel et\n"
"renvoyez l'incarnation du Malin\n"
"dans le vide infernal!!" FADE("\x5A")
);

DECLARE_MESSAGE_FRA(0x706D,
UNSKIPPABLE  NAME "!\n"
"Achève-le avec la lame sacrée, \n"
"l'Epée de Légende!"
);

DECLARE_MESSAGE_FRA(0x706E,
UNSKIPPABLE "Ô, sceau dimensionnel ouvert par \n"
"les Sages... Referme-toi sur \n"
"l'Incarnation du Malin!!"
);

DECLARE_MESSAGE_FRA(0x706F,
UNSKIPPABLE "Merci, " NAME "..."BOX_BREAK
UNSKIPPABLE "Grâce à toi, Ganondorf est \n"
"prisonnier du royaume infernal!"BOX_BREAK
UNSKIPPABLE "La paix et la justice vont à \n"
"nouveau régner sur ce monde...\n"
"Et pour longtemps."
);

DECLARE_MESSAGE_FRA(0x7070,
UNSKIPPABLE  SHIFT("\x1E") "Merci, " NAME "..."BOX_BREAK_DELAYED("\x28")  UNSKIPPABLE  SHIFT("\x4B") "Adieu...." FADE("\x3C")
);

DECLARE_MESSAGE_FRA(0x7071,
"Tu veux vraiment passer? \n"
"Bon...laisse-moi réfléchir...\n"
"C'est d'accord, mais en échange..." TEXTID("\x70\x72")
);

DECLARE_MESSAGE_FRA(0x7072,
"Donne-moi 10 Rubis...\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x7073,
"Crois-moi....\n"
"Mes visions prophétiques sont\n"
"toujours exactes!" EVENT
);

DECLARE_MESSAGE_FRA(0x7074,
UNSKIPPABLE "Tu as détruit l'odieux fantôme\n"
"de ce temple et éveillé le Sage..."BOX_BREAK
UNSKIPPABLE "Mais d'autres Sages ont besoin de\n"
"ton aide."BOX_BREAK
UNSKIPPABLE "Pour éveiller les autres Sages, tu \n"
"devras devenir encore plus \n"
"puissant..."BOX_BREAK
UNSKIPPABLE "Va par les montagnes..."BOX_BREAK
UNSKIPPABLE "Sous les flots..."BOX_BREAK
UNSKIPPABLE "Et deviens voyageur du Temps..."
);

DECLARE_MESSAGE_FRA(0x7075,
UNSKIPPABLE "Aussi longtemps que tu garderas\n"
COLOR("\x44") "l'ocarina " COLOR("\x40") "et " COLOR("\x44") "l'Epée de Légende" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "...le temps sera avec toi..."BOX_BREAK
UNSKIPPABLE  NAME "... A bientôt!"
);

DECLARE_MESSAGE_FRA(0x7076,
"C'est un nouveau type de bombes!\n"
"Disponible uniquement en quantité\n"
"limitée! Quand y'en a pus, ben... \n"
"Y'en a pus!" EVENT
);

DECLARE_MESSAGE_FRA(0x7077,
UNSKIPPABLE "Mon nom est " COLOR("\x41") "Sheik" COLOR("\x40") ".\n"
"L'un des derniers Sheikahs..."
);

DECLARE_MESSAGE_FRA(0x7078,
UNSKIPPABLE "Armé de L'" COLOR("\x41") "Epée de Légende" COLOR("\x40") ", \n"
"le titre de Héros du Temps te\n"
"revient de droit..."
);

DECLARE_MESSAGE_FRA(0x7079,
UNSKIPPABLE "Si j'en crois les légendes, ta quête\n"
"est claire... Tu dois éveiller " COLOR("\x41") "les \n"
"cinq Sages " COLOR("\x40") "dans les cinq temples..."
);

DECLARE_MESSAGE_FRA(0x707A,
UNSKIPPABLE "L'un des Sages attend dans le \n"
COLOR("\x42") "Temple de la forêt " COLOR("\x40") "l'heure de son \n"
"éveil. C'est une jeune fille que tu \n"
"connais..."BOX_BREAK
UNSKIPPABLE "L'influence maléfique qui pervertit \n"
"les temples l'empêche de répondre \n"
"aux appels du Saint Royaume..."BOX_BREAK
UNSKIPPABLE "Equipé comme tu l'es, tu ne\n"
"pourras entrer dans le Temple..."BOX_BREAK
UNSKIPPABLE "Alors crois-moi, rends-toi au\n"
COLOR("\x41") "Village Cocorico" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "M'as-tu compris, \n"
NAME "?"
);

DECLARE_MESSAGE_FRA(0x707B,
"Je pensais que te confier l'ocarina\n"
"était notre seule chance..." FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x707C,
UNSKIPPABLE "J'ai certaines choses à te dire... \n"
"Ecoute-moi bien."BOX_BREAK
UNSKIPPABLE "Voici une autre légende sur la\n"
"Triforce connue des Sheikahs, \n"
"le peuple de l'ombre...."
);

DECLARE_MESSAGE_FRA(0x707D,
UNSKIPPABLE "La Triforce s'est brisée en \n"
"trois parties. Ganondorf possède \n"
"la " COLOR("\x41") "Triforce de la Force" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x707E,
UNSKIPPABLE "Grâce à sa Triforce il put devenir\n"
"le Seigneur du Malin. Mais ses \n"
"ambitions maléfiques n'ont pas de\n"
"limites."
);

DECLARE_MESSAGE_FRA(0x707F,
UNSKIPPABLE "Pour devenir le maître du monde\n"
"Ganondorf cherche les " COLOR("\x41") "élus du \n"
"destin" COLOR("\x40") " pour s'approprier les deux \n"
"pièces restantes de la Triforce."
);

DECLARE_MESSAGE_FRA(0x7080,
UNSKIPPABLE "En ce jour maudit, il y a sept ans,\n"
"Ganondorf prit d'assaut le Château \n"
"d'Hyrule..."
);

DECLARE_MESSAGE_FRA(0x7081,
UNSKIPPABLE "Après avoir ouvert les portes du\n"
"Temps, l'Epée de Légende t'a \n"
"envoyé dans le Saint Royaume..."
);

DECLARE_MESSAGE_FRA(0x7082,
UNSKIPPABLE "Ton esprit s'est endormi dans le \n"
"Saint Royaume et Ganondorf viola\n"
"ce lieu sacré pour se saisir de la\n"
"Triforce..."BOX_BREAK
UNSKIPPABLE "Ganondorf est devenu le Roi du \n"
"Mal, et sous son règne de haine, \n"
"Hyrule s'est transformée en une \n"
"terre hostile."BOX_BREAK
UNSKIPPABLE "Je pris l'apparence d'un Sheikah en \n"
"attendant l'éveil de ton esprit. \n"
"Pendant sept longues années..."
);

DECLARE_MESSAGE_FRA(0x7083,
UNSKIPPABLE "Désormais...et grâce à toi....\n"
"Le règne maléfique de Ganondorf \n"
"va prendre fin!"
);

DECLARE_MESSAGE_FRA(0x7084,
UNSKIPPABLE "Les six Sages ouvriront le sceau\n"
"pour attirer Ganondorf dans le \n"
"Saint Royaume."BOX_BREAK
UNSKIPPABLE "Je fermerai ensuite la porte.\n"
"Pour toujours..."BOX_BREAK
UNSKIPPABLE "Ainsi Ganondorf, le Seigneur du \n"
"Malin, disparaîtra d'Hyrule."BOX_BREAK
UNSKIPPABLE  NAME "...\n"
"Ton devoir est de me protéger\n"
"pendant l'exécution de ce plan."BOX_BREAK
UNSKIPPABLE "Voici une arme qui pourra \n"
"pénétrer les défenses du Seigneur\n"
"du Malin...\n"
"L'arme sacrée de l'élu..."BOX_BREAK
UNSKIPPABLE  SHIFT("\x0F") "La sainte " COLOR("\x44") "flèche de lumière" COLOR("\x40") "!!!"
);

DECLARE_MESSAGE_FRA(0x7085,
UNSKIPPABLE "Mais tu as baissé ta garde...\n"
"Et grâce à ce gamin, encore une \n"
"fois, j'ai pu te retrouver!"
);

DECLARE_MESSAGE_FRA(0x7086,
UNSKIPPABLE "Ma seule erreur fut de sous-\n"
"estimer sa puissance..."
);

DECLARE_MESSAGE_FRA(0x7087,
UNSKIPPABLE "Mais sa puissance n'est que\n"
"misère...\n"
"Sa seule force est la Triforce du\n"
"Courage!"BOX_BREAK
UNSKIPPABLE "Grâce à la Triforce de la Sagesse, \n"
"celle de Zelda...\n"
"Deux parties seront en ma \n"
"possession!"BOX_BREAK
UNSKIPPABLE "Et bientôt tu me remettras ton\n"
"fragment... \n"
"Je serai alors le maître du monde!"
);

DECLARE_MESSAGE_FRA(0x7088,
QUICKTEXT_ENABLE "Ouverte par l'Ocarina du Temps, \n"
"la porte laissa apparaître l'élu, \n"
"porteur de l'Epée de Légende." QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x7089,
"Je ne sais pas pourquoi, mais les \n"
"chiens aiment sortir le soir.\n"
"C'est curieux, hein?"
);

DECLARE_MESSAGE_FRA(0x708A,
"Hé! Mon petit, écoute ceci..."BOX_BREAK"On dit qu'il y a une " COLOR("\x41") "étrange \n"
"fontaine" COLOR("\x40") " près du château..."
);

DECLARE_MESSAGE_FRA(0x708B,
UNSKIPPABLE "Pour voyager vers le passé, \n"
"pose l'Epée de Légende dans le \n"
COLOR("\x41") "piédestal" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "A nouveau tu seras un jeune\n"
"garçon...."
);

DECLARE_MESSAGE_FRA(0x708C,
UNSKIPPABLE "Un jour viendra où tu voudras\n"
"revenir ici au plus vite...\n"
"Ecoute-moi et ton esprit volera,\n"
"défiant le temps et l'espace..."BOX_BREAK
UNSKIPPABLE "Entends et apprends car voici...\n"
COLOR("\x44") "Le Prélude de la lumière" COLOR("\x40") "."
);

DECLARE_MESSAGE_FRA(0x708D,
UNSKIPPABLE "Mon nom est " COLOR("\x41") "Impa " COLOR("\x40") "des Sheikahs.\n"
"Je suis chargée de la protection\n"
"de la Princesse Zelda."
);

DECLARE_MESSAGE_FRA(0x708E,
"Les gardes du Roi ne doivent \n"
"pas te trouver en ces lieux. \n"
"Laisse-moi te guider hors du \n"
"château."
);

DECLARE_MESSAGE_FRA(0x708F,
QUICKTEXT_ENABLE "Hé! Toi! Ne fais pas l'imbécile!" QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x7090,
UNSKIPPABLE "Tu es un garçon courageux...\n"
"Une grande et périlleuse aventure\n"
"t'attend!"BOX_BREAK
UNSKIPPABLE "D'après les prédictions de la \n"
"Princesse, mon rôle est d'enseigner\n"
"une mélodie au garçon de la forêt."BOX_BREAK
UNSKIPPABLE "Cette mélodie est transmise de" COLOR("\x43") "\n"
COLOR("\x40") "génération en génération" COLOR("\x43") " au sein\n"
"de la Famille Royale" COLOR("\x40") "."BOX_BREAK
UNSKIPPABLE "Elle fut pendant longtemps la \n"
"berceuse de la Princesse Zelda..."BOX_BREAK
UNSKIPPABLE "Ces notes renferment un pouvoir\n"
"mystérieux."BOX_BREAK
UNSKIPPABLE "Ecoute bien..."
);

DECLARE_MESSAGE_FRA(0x7091,
UNSKIPPABLE "Je suis responsable de tous les \n"
"maux d'Hyrule..."BOX_BREAK
UNSKIPPABLE "J'étais si jeune... \n"
"J'ignorais que le contrôle du Saint \n"
"Royaume pouvait entraîner tant de \n"
"troubles..."BOX_BREAK
UNSKIPPABLE "Je t'ai fait prendre beaucoup de\n"
"risques."BOX_BREAK
UNSKIPPABLE "Il est temps pour moi de réparer\n"
"mes erreurs..."BOX_BREAK
UNSKIPPABLE "Laisse derrière toi l'Epée de \n"
"Légende et scelle les portes du \n"
"Temps..."
);

DECLARE_MESSAGE_FRA(0x7092,
UNSKIPPABLE "Mais en faisant cela les chemins\n"
"du temps seront à jamais fermés..."
);

DECLARE_MESSAGE_FRA(0x7093,
UNSKIPPABLE  NAME ",\n"
"rends-moi l'Ocarina..."BOX_BREAK
UNSKIPPABLE "En tant que Sage, je peux te\n"
"renvoyer dans ton temps."
);

DECLARE_MESSAGE_FRA(0x7094,
UNSKIPPABLE "Quand la paix reviendra en Hyrule...\n"
UNSKIPPABLE "Il sera temps de nous dire adieu..."
);

DECLARE_MESSAGE_FRA(0x7095,
UNSKIPPABLE "Rentre chez toi, " NAME ".\n"
"Retourne à ton époque!"BOX_BREAK
UNSKIPPABLE "Ta maison... \n"
"Là est ta place...\n"
"Là est ton temps..."
);

DECLARE_MESSAGE_FRA(0x7096,
SHIFT("\x42")  QUICKTEXT_ENABLE "Tss..." QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "Tss..." QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x7097,
"Hmmm...Tu as perdu ton argent de\n"
"poche?" EVENT
);

DECLARE_MESSAGE_FRA(0x7098,
"Bon...j'te laisse passer!" EVENT
);

DECLARE_MESSAGE_FRA(0x7099,
"GARDE CA POUR TOI!\n"
"NE LE REPETE A PERSONNE!"
);

DECLARE_MESSAGE_FRA(0x709A,
"Haaa! Je suis siiiii fatigué!"BOX_BREAK"Les tours de garde nocturnes sont\n"
"super-méga-lourds!\n"
"Y'a même pas de fantômes..."BOX_BREAK"Hein? J'adore les fantômes!"BOX_BREAK"C'est ma passion! En savoir \n"
"beaucoup sur les Esprits et les\n"
"Ames peut être utile, non?"
);

DECLARE_MESSAGE_FRA(0x709B,
"Mon petit Kiki est le plus beau!\n"
"Il est le plus beau du moooonde!\n"
"C'est un gentil Kiki d'amour et\n"
"d'amitié qui me fait des bisous!"
);

DECLARE_MESSAGE_FRA(0x709C,
"Mon p'tit Kiki, il est le Kiki le \n"
"plus rapide du moooonde!\n"
"Il court et saute et fait des \n"
"bisous à sa mémère."
);

DECLARE_MESSAGE_FRA(0x709D,
"Je ne trouve plus mon petit KIKI!\n"
"Il est où le Kiki? Il est où?\n"
"Kiki! Kiki! Mon p'tit Kiki!"
);

DECLARE_MESSAGE_FRA(0x709E,
SHIFT("\x4C")  QUICKTEXT_ENABLE "Arrrgh!" QUICKTEXT_DISABLE "\n"
"C'est pas mon chien ça!\n"
"Celui-là il bave et il est moche!"
);

DECLARE_MESSAGE_FRA(0x709F,
SHIFT("\x53")  QUICKTEXT_ENABLE "KIKI!" QUICKTEXT_DISABLE BOX_BREAK"Mon p'tit Kiki! C'est bien lui!\n"
"Merci! Merci!\n"
"Tiens! Voilà pour toi!"
);

DECLARE_MESSAGE_FRA(0x70A0,
"La nuit des chiens errants sèment \n"
"la terreur, j'ai peur!\n"
"Pas pour toi...pour mon chien.\n"
"Mon Kiki à moi....mon p'tit Kiki!"
);

DECLARE_MESSAGE_FRA(0x70A1,
"B'jour!\n"
"Bienvenue à la " COLOR("\x41") "Foire aux Masques" COLOR("\x40") "!\n"
"Notre devise:\n"
"Un masque, un sourire,...la joie!"BOX_BREAK"Veux-tu devenir un coursier \n"
"officiel distributeur de bonheur? \n"
"Je te prête un masque, tu le \n"
"vends et tu me rapportes " COLOR("\x41") "l'argent" COLOR("\x40") "."BOX_BREAK"Pour jeter un oeil aux clauses du\n"
"contrat, va lire la " COLOR("\x41") "pancarte" COLOR("\x40") "."BOX_BREAK"Après avoir vendu tous les \n"
"masques, ta joie sera aussi grande\n"
"que le Mont du Péril!"BOX_BREAK
SHIFT("\x32") "Aie la foi, petit..." EVENT
);

DECLARE_MESSAGE_FRA(0x70A2,
QUICKTEXT_ENABLE "Choisis un masque avec le " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Parler au vendeur\n"
"Quitter" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x70A3,
"Un " COLOR("\x41") "masque" COLOR("\x40") " est un objet \n"
"d'" COLOR("\x46") "inventaire [C]" COLOR("\x40") ".\n"
"Assigne-le à " COLOR("\x46") "[C]" COLOR("\x40") " et active-le avec\n"
COLOR("\x46") "[C]" COLOR("\x40") " pour le porter."BOX_BREAK"Tes interlocuteurs réagiront\n"
"différemment en fonction de ton\n"
"masque."BOX_BREAK"Si quelqu'un s'intéresse à ton \n"
"masque, n'hésite pas à lui vendre."BOX_BREAK"Quelque part, perdu dans ce \n"
"monde de haine, une voix s'élève \n"
"par-delà les montagnes:\n"
QUICKTEXT_ENABLE "\"J'VEUX UN MASQUE\"!" QUICKTEXT_DISABLE BOX_BREAK"C'est une image, bien sûr..." EVENT
);

DECLARE_MESSAGE_FRA(0x70A4,
"J'ai vu une jolie fille passer...\n"
"Elle allait vers le château?\n"
"J'en sais rien moi!"
);

DECLARE_MESSAGE_FRA(0x70A5,
"Haaaa, bien! Tu l'as vendu!\n"
"Donne-moi " COLOR("\x41") "10 Rubis " COLOR("\x40") "pour le Masque\n"
"du Renard." EVENT
);

DECLARE_MESSAGE_FRA(0x70A6,
"Ho! Tu n'as pas vendu le masque?\n"
"Pas grave...ça viendra...\n"
"Cherche encore! Encore! Encore!" EVENT
);

DECLARE_MESSAGE_FRA(0x70A7,
"Merci mon joli!" EVENT
);

DECLARE_MESSAGE_FRA(0x70A8,
QUICKTEXT_ENABLE "Quoi?!" QUICKTEXT_DISABLE "\n"
"Tu n'as pas mon argent?!"BOX_BREAK
QUICKTEXT_ENABLE "C'EST MAL!" QUICKTEXT_DISABLE BOX_BREAK"Donne-moi mon pognon...sinon...\n"
"Plus de masques!" EVENT
);

DECLARE_MESSAGE_FRA(0x70A9,
"Fantastique!"BOX_BREAK"Tous les masques ont été vendus."BOX_BREAK"Tu es un excellent vendeur.\n"
"Je l'ai toujours su!" EVENT
);

DECLARE_MESSAGE_FRA(0x70AA,
UNSKIPPABLE "En récompense...\n"
"Je te laisse ce masque spécial."BOX_BREAK
UNSKIPPABLE "C'est le " COLOR("\x41") "Masque de Vérité" COLOR("\x40") ". \n"
"ses pouvoirs sont mystérieux...\n"
"Il me vient des Sheikahs."BOX_BREAK
UNSKIPPABLE "Ce masque te permet de lire dans\n"
"l'esprit des gens...\n"
"Pratique mais effrayant!"BOX_BREAK
UNSKIPPABLE "Pourquoi effrayant?"BOX_BREAK
UNSKIPPABLE "Ha! Tu as encore bien des choses\n"
"à apprendre! Ho ho ho!" EVENT
);

DECLARE_MESSAGE_FRA(0x70AB,
"Tu peux désormais emprunter \n"
"n'importe quel masque.\n"
"Amuse-toi bien..." EVENT
);

DECLARE_MESSAGE_FRA(0x70AC,
"Bienvenue!\n"
"Quel masque te ferait plaisir?" EVENT
);

DECLARE_MESSAGE_FRA(0x70AD,
QUICKTEXT_ENABLE "Choisis un masque avec le " COLOR("\x44") "[Control Stick]" COLOR("\x40") ".\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Le Masque de Vérité?\n"
"Quitter" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x70AE,
"Voici le " COLOR("\x41") "Masque de Vérité" COLOR("\x40") ". \n"
"Cet objet Sheikah est très \n"
"mystérieux."BOX_BREAK"Il permet de lire dans les esprits.\n"
"Pratique mais effrayant!"BOX_BREAK"Pourquoi effrayant?"BOX_BREAK"Tu comprendras quand tu seras \n"
"grand!"BOX_BREAK"Ho ho ho!" EVENT
);

DECLARE_MESSAGE_FRA(0x70AF,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Vérité -- En exposition\n"
COLOR("\x40") "Ce masque détient d'étranges \n"
"pouvoirs." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B0,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Mort -- 20 Rubis" COLOR("\x40") "\n"
"Une tête de mort avec des cornes." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B1,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque d'Effroi -- 30 Rubis\n"
COLOR("\x40") "Un masque de bois bien triste." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B2,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque du Renard -- 10 Rubis\n"
COLOR("\x40") "Le Renard est à la mode!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B3,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque du Lapin -- 50 Rubis\n"
COLOR("\x40") "Ses oreilles sont à croquer!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B4,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque  de Mort -- Gratuit" COLOR("\x40") "\n"
"Une tête d'os avec des cornes." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B5,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque d'Effroi -- Gratuit\n"
COLOR("\x40") "Un  masque en bois bien triste." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B6,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque du Renard -- Gratuit\n"
COLOR("\x40") "Le Renard est à la mode!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B7,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque du Lapin -- Gratuit\n"
COLOR("\x40") "Ses oreilles sont à croquer!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B8,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Goron -- Gratuit\n"
COLOR("\x40") "Une grosse tête, c'est rigolo!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70B9,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Zora -- Gratuit" COLOR("\x40") "\n"
"A la mode pour une baignade!" QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70BA,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Gerudo -- Gratuit\n"
COLOR("\x40") "Un parfait déguisement de femme." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70BB,
QUICKTEXT_ENABLE  COLOR("\x41") "Masque de Vérité -- Gratuit" COLOR("\x40") "\n"
"Un mystérieux masque permettant \n"
"de lire dans l'esprit des hommes." QUICKTEXT_DISABLE  PERSISTENT
);

DECLARE_MESSAGE_FRA(0x70BC,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque de Mort" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70BD,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque d'Effroi" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70BE,
QUICKTEXT_ENABLE "Veux- tu le " COLOR("\x41") "Masque du Renard" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70BF,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque du Lapin" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C0,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque de Goron" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C1,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque de Zora" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C2,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque de Gerudo" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C3,
QUICKTEXT_ENABLE "Veux-tu le " COLOR("\x41") "Masque de Vérité" COLOR("\x40") "?" QUICKTEXT_DISABLE "\n"
"\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C4,
"Bravo! Tu as vendu ton masque!\n"
"Donne-moi " COLOR("\x41") "20 Rubis " COLOR("\x40") "pour le\n"
"Masque de Mort." EVENT
);

DECLARE_MESSAGE_FRA(0x70C5,
"Bravo! Tu as vendu ton masque!\n"
"Donne-moi " COLOR("\x41") "30 Rubis " COLOR("\x40") "pour le \n"
"Masque d'Effroi." EVENT
);

DECLARE_MESSAGE_FRA(0x70C6,
"Bravo! Tu as vendu ton masque!\n"
"Donne-moi " COLOR("\x41") "50 Rubis " COLOR("\x40") "pour le \n"
"Masque du Lapin." EVENT
);

DECLARE_MESSAGE_FRA(0x70C7,
"Oh! Tu n'as pas encore vendu le\n"
"masque. Continue et garde espoir."BOX_BREAK"Tu veux peut-être essayer avec\n"
"un autre masque?\n"
TWO_CHOICE  COLOR("\x42") "Oui\n"
"Non" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70C8,
UNSKIPPABLE "Les fragments de la Triforce \n"
"se réveillent...\n"
"Ils fusionnent une fois de plus..."
);

DECLARE_MESSAGE_FRA(0x70C9,
UNSKIPPABLE "Il y a sept ans...\n"
"Deux fragments ont échappé à \n"
"mon contrôle..."BOX_BREAK
UNSKIPPABLE "Comment ont-ils pu arriver entre\n"
"vos mains?"
);

DECLARE_MESSAGE_FRA(0x70CA,
UNSKIPPABLE "Quoi qu'il en soit, les fragments \n"
"vont enfin s'unir en ce lieu!"
);

DECLARE_MESSAGE_FRA(0x70CB,
UNSKIPPABLE "Pauvres insectes....\n"
"Cette puissance n'est pas \n"
"pour vous!"
);

DECLARE_MESSAGE_FRA(0x70CC,
UNSKIPPABLE "Je vous ordonne de me les rendre!"
);

DECLARE_MESSAGE_FRA(0x70CD,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44")  NAME "!\n"
"Je ne peux pas t'aider!\n"
"L'énergie noire m'empêche \n"
"d'approcher!"BOX_BREAK
COLOR("\x40")  UNSKIPPABLE  COLOR("\x44") "Pardonne-moi, " NAME "!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70CE,
UNSKIPPABLE "Quoi? Le Grand Ganondorf vaincu \n"
"par ce gamin?!"
);

DECLARE_MESSAGE_FRA(0x70CF,
UNSKIPPABLE  NAME "....!"
);

DECLARE_MESSAGE_FRA(0x70D0,
UNSKIPPABLE "Misérable Ganondorf......"BOX_BREAK
UNSKIPPABLE "Sans un esprit sain et fort il ne\n"
"put maîtriser la puissance \n"
"des dieux...et..."
);

DECLARE_MESSAGE_FRA(0x70D1,
UNSKIPPABLE  NAME ", Ecoute-moi!\n"
"La tour va s'effondrer!"BOX_BREAK
UNSKIPPABLE "De son dernier souffle de haine, \n"
"Ganon tente de nous écraser sous \n"
"les ruines de cette tour!\n"
"Dépêchons-nous!"
);

DECLARE_MESSAGE_FRA(0x70D2,
UNSKIPPABLE "Suis-moi vite!"
);

DECLARE_MESSAGE_FRA(0x70D3,
UNSKIPPABLE "C'est terminé...enfin..."
);

DECLARE_MESSAGE_FRA(0x70D4,
UNSKIPPABLE  COLOR("\x44")  NAME "... \n"
"Pardonne-moi...je n'ai pas pu t'aider." COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70D5,
UNSKIPPABLE "Quel est ce bruit?"
);

DECLARE_MESSAGE_FRA(0x70D6,
UNSKIPPABLE  SFX("\x68\x5F")  COLOR("\x44") "Cette fois-ci je ne fuirai pas!\n"
COLOR("\x40")  QUICKTEXT_ENABLE  COLOR("\x44") "Nous combattrons ensemble!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x70D7,
UNSKIPPABLE  NAME "! \n"
"L'Epée de Légende est ici! \n"
QUICKTEXT_ENABLE "Vite!!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x70D8,
UNSKIPPABLE "Mes pouvoirs paralysent Ganon!\n"
"Utilise l'Epée et porte-lui le coup\n"
"de grâce!"
);

DECLARE_MESSAGE_FRA(0x70D9,
UNSKIPPABLE  SHIFT("\x41") "Six Sages...\n"
QUICKTEXT_ENABLE  SHIFT("\x3D") "Maintenant!!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x70DA,
UNSKIPPABLE  TEXT_SPEED("\x03") "TOI..." TEXT_SPEED("\x00")  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x70DB,
UNSKIPPABLE  TEXT_SPEED("\x03") "SOIS MAUDITE...ZELDA!\n"
TEXT_SPEED("\x02") "PESTE SOIT DES...SAGES!!" TEXT_SPEED("\x00")  FADE("\x32")
);

DECLARE_MESSAGE_FRA(0x70DC,
UNSKIPPABLE "JE TE MAUDIS..." QUICKTEXT_ENABLE  NAME "!" QUICKTEXT_DISABLE  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x70DD,
UNSKIPPABLE "Un jour...\n"
"Ce sceau se brisera et...."BOX_BREAK_DELAYED("\x50")  UNSKIPPABLE "Je tuerai de mes mains tes \n"
"descendants!!" FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x70DE,
UNSKIPPABLE "N'oublie pas...\n"
"Le fragment de la Force est \n"
"toujours en ma possession!...." FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x70DF,
TEXT_SPEED("\x02") "Toi..." TEXT_SPEED("\x00") "Qui es-tu?" FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x70E0,
SHIFT("\x15") "La " COLOR("\x42") "Barrière de la Forêt " COLOR("\x40") "est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x23") "Vite, " NAME "!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E1,
SHIFT("\x21") "La " COLOR("\x41") "Barrière du Feu " COLOR("\x40") "est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x3F") "Vite, Frère!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E2,
SHIFT("\x1F") "La " COLOR("\x43") "Barrière de l'Eau " COLOR("\x40") "est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x3E") "Depèche-toi!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E3,
SHIFT("\x17") "La " COLOR("\x45") "Barrière de l'Ombre " COLOR("\x40") "est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x18") "Va et sauve la Princesse!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E4,
SHIFT("\x18") "La " COLOR("\x46") "Barrière de l'Esprit " COLOR("\x40") "est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x40") "Vite, gamin!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E5,
SHIFT("\x0F") "La " COLOR("\x44") "Barrière de la Lumière" COLOR("\x40") " est\n"
SHIFT("\x48") "dissipée!\n"
SHIFT("\x52") "Vite!" FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x70E6,
COLOR("\x44")  NAME ", mais c'est...?!" COLOR("\x40")
);

DECLARE_MESSAGE_FRA(0x70E7,
COLOR("\x44") "C'est la Lame purificatrice..." COLOR("\x40")  FADE("\x1E")
);

DECLARE_MESSAGE_FRA(0x70E8,
QUICKTEXT_ENABLE  SHIFT("\x29")  COLOR("\x44") "L'Epée de Légende!!" COLOR("\x40")  QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x70E9,
UNSKIPPABLE "Trouve les Sages et sauve Hyrule!" FADE("\x50")
);

DECLARE_MESSAGE_FRA(0x70EA,
"Cet homme effrayant a semé une\n"
"sacrée pagaille ici!"
);

DECLARE_MESSAGE_FRA(0x70EB,
"Oh! J'ai si peur...\n"
"Je suis terrifié..."
);

DECLARE_MESSAGE_FRA(0x70EC,
"Hé! Que veux-tu?\n"
"Je n'ai pas le temps de parler!"
);

DECLARE_MESSAGE_FRA(0x70ED,
"Pitié avec " COLOR("\x46") "[C]" COLOR("\x40") "...\n"
"Pitié vends-moi un truc...\n"
"Pitié avec " COLOR("\x46") "[C]" COLOR("\x40") "..."
);

DECLARE_MESSAGE_FRA(0x70EE,
"Non...\n"
"C'est pas ça que je veux...\n"
"Je veux un truc " COLOR("\x41") "dans une bouteille" COLOR("\x40") ".\n"
"Pas ce drôle de truc..."
);

DECLARE_MESSAGE_FRA(0x70EF,
"Non...\n"
"Je peux pas prendre ça...\n"
"J'veux pas acheter ça..."
);

DECLARE_MESSAGE_FRA(0x70F0,
"Oh! C'est une " COLOR("\x44") "Flamme Bleue" COLOR("\x40") "!\n"
"Je t'en donne " COLOR("\x41") "150 Rubis" COLOR("\x40") "!\n"
"Vends-la moi! Vends-la moi!"
);

DECLARE_MESSAGE_FRA(0x70F1,
"Oh! Un p'tit " COLOR("\x45") "poisson" COLOR("\x40") "!\n"
"Je t'en donne " COLOR("\x41") "100 Rubis" COLOR("\x40") "!\n"
"Dis-moi oui...chéri."
);

DECLARE_MESSAGE_FRA(0x70F2,
"Mais...c'est un superbe..." COLOR("\x42") "insecte" COLOR("\x40") "!\n"
"Je t'en donne " COLOR("\x41") "50 Rubis" COLOR("\x40") "!\n"
"Donne! Donne!"
);

DECLARE_MESSAGE_FRA(0x70F3,
"Quelle jolie " COLOR("\x44") "fée" COLOR("\x40") "!\n"
"Je t'en offre " COLOR("\x41") "25 Rubis" COLOR("\x40") ", OK?"
);

DECLARE_MESSAGE_FRA(0x70F4,
UNSKIPPABLE "Quel garçon plein d'entrain et \n"
"de vie...j'adore ça..."BOX_BREAK
UNSKIPPABLE "Hé hé hé...ton nom est bien\n"
NAME "?"BOX_BREAK
UNSKIPPABLE "Hé hé hé...ne sois pas surpris!\n"
"Je lis dans les esprits comme \n"
"dans un livre ouvert."BOX_BREAK
UNSKIPPABLE "Si j'avais autant d'énergie que toi, \n"
"je pourrais changer de métier!\n"
"Hé hé hé..."BOX_BREAK
UNSKIPPABLE "Je suis l'unique " COLOR("\x41") "marchand d'âmes \n"
COLOR("\x40") "de tout le Royaume d'Hyrule."BOX_BREAK
UNSKIPPABLE "Depuis la venue de Ganondorf, les\n"
"affaires marchent plutôt bien...\n"
"Hé hé hé..."BOX_BREAK
UNSKIPPABLE "Oh...Je ne peux qu'espérer une\n"
"nouvelle guerre!"BOX_BREAK
UNSKIPPABLE "Les fantômes du nom d'" COLOR("\x41") "Esprits" COLOR("\x40") "\n"
"sont l'essence même de la haine. \n"
"Ils apparaissent dans les \n"
"cimetières ou dans les plaines."BOX_BREAK
UNSKIPPABLE "Jeune homme plein de vie, si par \n"
"chance tu en captures un, viens \n"
"donc me le vendre...\n"
"Tu gagneras beaucoup d'argent!"
);

DECLARE_MESSAGE_FRA(0x70F5,
"Hé! Jeune homme plein de vie!\n"
"Quoi de neuf? \n"
"As-tu un Esprit ou une Ame à me \n"
"vendre?"BOX_BREAK"Ta carte a " COLOR("\x45")  HIGHSCORE("\x01") " " COLOR("\x40") "points.\n"
"Reviens vite me voir!\n"
"Hé hé hé!"
);

DECLARE_MESSAGE_FRA(0x70F6,
UNSKIPPABLE "Oh! Tu as apporté un fantôme!"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02") "........" TEXT_SPEED("\x00") BOX_BREAK
UNSKIPPABLE "Hmmm..."BOX_BREAK
UNSKIPPABLE "Ce n'est qu'un " COLOR("\x41") "Esprit" COLOR("\x40") ".\n"
"Je t'en donne " COLOR("\x41") "10 Rubis" COLOR("\x40") ". \n"
"C'est tout!"BOX_BREAK
UNSKIPPABLE "Hé hé hé."
);

DECLARE_MESSAGE_FRA(0x70F7,
UNSKIPPABLE "Oh! Tu as apporté un fantôme!"BOX_BREAK
UNSKIPPABLE "Hmmmm!"BOX_BREAK
UNSKIPPABLE "Magnifique!\n"
"C'est une " COLOR("\x41") "Ame" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Je t'en donne " COLOR("\x41") "50 Rubis" COLOR("\x40") "."BOX_BREAK"Et en plus, j'inscris " COLOR("\x41") "100 points\n"
COLOR("\x40") "sur ta carte."BOX_BREAK
UNSKIPPABLE "Obtiens " COLOR("\x41") "1,000 points" COLOR("\x40") " et tu ne\n"
"seras pas déçu...\n"
"Hé hé hé."
);

DECLARE_MESSAGE_FRA(0x70F8,
UNSKIPPABLE "Ooooh! WHOA!"BOX_BREAK
UNSKIPPABLE "Tu as obtenu " COLOR("\x41") "1,000 points" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Tu es un véritable " COLOR("\x41") "chasseur de\n"
"fantômes" COLOR("\x40") "!"BOX_BREAK
UNSKIPPABLE "Il est content? Hein? \n"
"Il est content le monsieur?\n"
"Hé hé hé!"BOX_BREAK
UNSKIPPABLE "Grâce à toi, mon stock d'" COLOR("\x41") "Ames" COLOR("\x40") " est\n"
"plein! C'est donc la dernière fois \n"
"que nous faisons affaire."BOX_BREAK
UNSKIPPABLE "Je sais, je sais...\n"
"Nous avions passé un pacte...\n"
"Tu as eu tes 1000 points et je \n"
"t'en félicite... Hé hé hé!"BOX_BREAK
UNSKIPPABLE "Alors prends donc ceci, \n"
"mon bon ami!"
);

DECLARE_MESSAGE_FRA(0x70F9,
UNSKIPPABLE "Oh? C'est quoi ça?"BOX_BREAK
UNSKIPPABLE  TEXT_SPEED("\x02")  QUICKTEXT_ENABLE "Est-ce" QUICKTEXT_DISABLE " " QUICKTEXT_ENABLE "une" QUICKTEXT_DISABLE "..." TEXT_SPEED("\x00")  EVENT
);

DECLARE_MESSAGE_FRA(0x70FA,
SHIFT("\x4B") "..." QUICKTEXT_ENABLE  COLOR("\x44") "Fée" COLOR("\x40")  QUICKTEXT_DISABLE "?!"BOX_BREAK
UNSKIPPABLE "Alors tu es un garçon...\n"
"de la forêt?" EVENT
);

DECLARE_MESSAGE_FRA(0x70FB,
UNSKIPPABLE "Alors...mais alors...tu dois avoir\n"
"la...la " COLOR("\x42") "Pierre Ancestrale de la \n"
"forêt" COLOR("\x40") "?! Hein? Cette belle pierre \n"
"verte et brillante..." EVENT
);

DECLARE_MESSAGE_FRA(0x70FC,
UNSKIPPABLE "J'ai fait un rêve...Dans ce rêve,\n"
"des nuages noirs et épais \n"
"recouvraient la terre d'Hyrule..."BOX_BREAK
UNSKIPPABLE "Quand soudain, un rayon de \n"
"lumière surgit de la forêt, \n"
"dispersant les ténèbres et \n"
"illuminant la terre..."BOX_BREAK
UNSKIPPABLE "Cette lumière se matérialisa sous \n"
"la forme d'un garçon tenant une \n"
COLOR("\x42") "pierre verte " COLOR("\x40") "dans la main. \n"
"Une " COLOR("\x44") "fée " COLOR("\x40") "volait à ses côtés..." EVENT
);

DECLARE_MESSAGE_FRA(0x70FD,
UNSKIPPABLE "Je sais qu'une prophétie annonce\n"
"la venue d'un enfant de la " COLOR("\x42") "forêt" COLOR("\x40") "..."BOX_BREAK
UNSKIPPABLE "Cet enfant...ne peut être que toi." EVENT
);

DECLARE_MESSAGE_FRA(0x70FE,
UNSKIPPABLE  SHIFT("\x2D") "Oh! Pardonne-moi!"BOX_BREAK
UNSKIPPABLE "Je parle, je parle et je ne me\n"
"suis toujours pas présentée..." EVENT
);

DECLARE_MESSAGE_FRA(0x70FF,
UNSKIPPABLE  SHIFT("\x2A") "Mon nom est " COLOR("\x44") "Zelda" COLOR("\x40") ",\n"
SHIFT("\x2E") "Princesse d'Hyrule." EVENT
);

DECLARE_MESSAGE_FRA(0x7100,
"Quoi? On se connaît?"
);

DECLARE_MESSAGE_FRA(0x7101,
"Oooh... C'est trop mignon!\n"
"Où l'as-tu trouvé?"
);

DECLARE_MESSAGE_FRA(0x7102,
"Wouaaaaaah!\n"
"Au secours!"
);

DECLARE_MESSAGE_FRA(0x7103,
"Hein?...ouais? Et alors?"
);

DECLARE_MESSAGE_FRA(0x7104,
"JE HAIS LES RENARDS!"
);

DECLARE_MESSAGE_FRA(0x7105,
"C'est agaçant ton truc!"
);

DECLARE_MESSAGE_FRA(0x7106,
"Whoa! La classe!"
);

DECLARE_MESSAGE_FRA(0x7107,
QUICKTEXT_ENABLE "Beuark! C'est quoi ton problème?" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x7108,
"Oooh...c'est un Zora?\n"
"Ses yeux sont fascinants..."
);

DECLARE_MESSAGE_FRA(0x7109,
"Yaaah! J'ai peur!!\n"
"Ne me mange pas! \n"
"Ne me mange pas!"
);

DECLARE_MESSAGE_FRA(0x710A,
"C'est-y pas mignon...\n"
"La jeunesse, les masques...\n"
"Tout ça est si loin à présent."
);

DECLARE_MESSAGE_FRA(0x710B,
"C'est rigolo ton truc!\n"
"Hi hi hi!"
);

DECLARE_MESSAGE_FRA(0x710C,
QUICKTEXT_ENABLE "Oh-oh!" QUICKTEXT_DISABLE " Bonjour maman!\n"
"...Hein? C'est toi!\n"
"T'es malade ou quoi?"
);

DECLARE_MESSAGE_FRA(0x710D,
"Woah! T'as une de ces têtes!"
);

DECLARE_MESSAGE_FRA(0x710E,
"Enlève-le tout d'suite!\n"
"J'ai peur..."
);

DECLARE_MESSAGE_FRA(0x710F,
"Y a-t-il un concours de masques \n"
"en ce moment?\n"
QUICKTEXT_ENABLE "Je vais voter pour toi!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x7110,
"Oh! Un lapin! Un petit lapinou!\n"
"Tout mimi. Tout gentil.\n"
"Il est à qui le lapin? Hein?\n"
"Il est à qui? C'est mignoooon."
);

DECLARE_MESSAGE_FRA(0x7111,
"Oooh! Quelle belle fille!\n"
"Un peu petite mais...jolie."
);

DECLARE_MESSAGE_FRA(0x7112,
"Mmm? Oui? C'est pour quoi?\n"
"Tu veux ma photo?"
);

DECLARE_MESSAGE_FRA(0x7113,
"Oh! Un masque... Cela me rappelle\n"
"mon enfance. Je gambadais dans\n"
"la forêt avec un masque...\n"
"Et puis un jour...? Tu m'écoutes?"
);

DECLARE_MESSAGE_FRA(0x7114,
"Ohhhh...Je vois...\n"
"C'est une illusion d'optique..."
);

DECLARE_MESSAGE_FRA(0x7115,
"Hé petit! Ne deviens pas comme\n"
"moi...ça craint."
);

DECLARE_MESSAGE_FRA(0x7116,
QUICKTEXT_ENABLE "YAAAAAAAAAAAH!\n"
"UNE GERUDO!!!!" QUICKTEXT_DISABLE BOX_BREAK"Quoi? Un masque?\n"
"Mais pourquoi tu portes un truc\n"
"comme ça? T'es tapé ou quoi?!"
);

DECLARE_MESSAGE_FRA(0x7117,
"Laisse-moi tranquille...ouste!"
);

DECLARE_MESSAGE_FRA(0x7118,
"Cool! C'est le Renard!\n"
"Bonjour monsieur le Renard!"
);

DECLARE_MESSAGE_FRA(0x7119,
"Quelle horreur!\n"
"Un petit garçon à Cocorico \n"
"cherchait un masque comme\n"
"celui-ci..."
);

DECLARE_MESSAGE_FRA(0x711A,
"Mmm...super...tu n'as pas un autre\n"
"masque?"
);

DECLARE_MESSAGE_FRA(0x711B,
"Woah! Il est louche ton masque!"
);

DECLARE_MESSAGE_FRA(0x711C,
"Tu vois pas qu'on discute?\n"
"Laisse-nous tranquilles!"
);

DECLARE_MESSAGE_FRA(0x711D,
"Désolé. Je ne pourrai plus jamais\n"
"regarder une autre femme!"
);

DECLARE_MESSAGE_FRA(0x711E,
"Hi hi hi...\n"
"Ne prête pas attention à ce petit.\n"
"Embrasse-moi plutôt, amour."
);

DECLARE_MESSAGE_FRA(0x711F,
"Heu....\n"
"Tu veux pas aller aut'part?"
);

DECLARE_MESSAGE_FRA(0x7120,
"On dit qu'un apothicaire fabrique\n"
"un médicament surpuissant!"
);

DECLARE_MESSAGE_FRA(0x7121,
"On raconte qu'un monstre avale\n"
"les " COLOR("\x44") "boucliers" COLOR("\x40") ". \n"
"En as-tu déjà vu un?"
);

DECLARE_MESSAGE_FRA(0x7122,
"Je suis venu vendre des bombes...\n"
"En veux-tu?"
);

DECLARE_MESSAGE_FRA(0x7123,
UNSKIPPABLE "J'ai...J'ai peur...\n"
"J'ai le sentiment que cet homme\n"
"va anéantir Hyrule."BOX_BREAK
UNSKIPPABLE "Ses pouvoirs sont terrifiants!"BOX_BREAK
UNSKIPPABLE "Mais ta venue est providentielle." EVENT
);

DECLARE_MESSAGE_FRA(0x7124,
"Hein? Mais tu veux quoi?\n"
"Tu vas me lâcher, ouais?"
);

DECLARE_MESSAGE_FRA(0x7125,
"J'suis occupé! Dégage!\n"
"JE TE HAIS!"
);

DECLARE_MESSAGE_FRA(0x7126,
"Mmm... Du bois de qualité!"
);

DECLARE_MESSAGE_FRA(0x7127,
"Grrrr!\n"
"Tu m'oublies, oui?\n"
"Mauviette..."
);

DECLARE_MESSAGE_FRA(0x7128,
"YAAAAAAAAAAAAH!\n"
"Oups. Désolé.\n"
"Je ne devrais pas crier comme ça."
);

DECLARE_MESSAGE_FRA(0x7129,
"Désolé, chef!\n"
"Ma pause est terminée!\n"
"Je vais travailler...promis!"BOX_BREAK"Heu...chef? C'est vous?"
);

DECLARE_MESSAGE_FRA(0x712A,
"Les Gerudos sont si belles...\n"
"Je les aime! Toutes!"
);

DECLARE_MESSAGE_FRA(0x712B,
"Un jour j'aurai du talent.\n"
"Et alors je pourrai sculpter un \n"
"masque comme le tien!"
);

DECLARE_MESSAGE_FRA(0x712C,
"C'est ça le masque à la mode?\n"
"Il est méga-moche!"
);

DECLARE_MESSAGE_FRA(0x712D,
"Wa-ha-hah!\n"
"Tout se passe comme vous le \n"
"voulez, M. Le Preux Chevalier?\n"
"Hah hah hah!"
);

DECLARE_MESSAGE_FRA(0x712E,
"Je suis de service.\n"
"T'as compris?\n"
"DE SERVICE!"
);

DECLARE_MESSAGE_FRA(0x712F,
"Mmmm... Pas mal...enfin...\n"
"J'm'en fiche, quoi!"
);

DECLARE_MESSAGE_FRA(0x7130,
"Oooh! C'est trop mimi!\n"
"Mais mes cocottes sont encore \n"
"plus mignonnes!"
);

DECLARE_MESSAGE_FRA(0x7131,
"Hein? Quoi?\n"
"Tu es joyeux ou triste?\n"
"Difficile à dire..."
);

DECLARE_MESSAGE_FRA(0x7132,
"Mmm... Ce n'est pas vraiment mon \n"
"style..."
);

DECLARE_MESSAGE_FRA(0x7133,
"Le petit garçon du cimetière nous\n"
"parle toute la journée de son \n"
"visage..."
);

DECLARE_MESSAGE_FRA(0x7134,
"Je suis un type bien.\n"
"Tu ne me crois pas?"
);

DECLARE_MESSAGE_FRA(0x7135,
"YAAAA--! Hein?\n"
"J'ai cru que c'était encore l'autre\n"
"vieille bique! J'ai eu une de ces\n"
"frousses!"
);

DECLARE_MESSAGE_FRA(0x7136,
"Mon père me parlait souvent\n"
"d'un forgeron...mais tout ça ne\n"
"m'intéresse plus...."
);

DECLARE_MESSAGE_FRA(0x7137,
"Les monstres de la forêt ne me\n"
"font pas peur! Tu me prends pour\n"
"qui, toi?"
);

DECLARE_MESSAGE_FRA(0x7138,
"Mmm? C'est quoi ça?\n"
"Je ne vois rien d'ici..."
);

DECLARE_MESSAGE_FRA(0x7139,
"Bonjour! Quelles nouvelles?"
);

DECLARE_MESSAGE_FRA(0x713A,
"Belle journée, n'est-ce pas?"
);

DECLARE_MESSAGE_FRA(0x713B,
"Fatigué...dormir..."
);

DECLARE_MESSAGE_FRA(0x713C,
"Les renards m'agacent!"
);

DECLARE_MESSAGE_FRA(0x713D,
"Tu es assez agaçant toi, non?\n"
"Allez! Du balai!"
);

DECLARE_MESSAGE_FRA(0x713E,
"Mmmm...joli!"
);

DECLARE_MESSAGE_FRA(0x713F,
"Waaaaaaah!\n"
"C'est quoi ton problème, petit?"
);

DECLARE_MESSAGE_FRA(0x7140,
"Crétin! Enlève ton masque avant \n"
"de parler à quelqu'un!"
);

DECLARE_MESSAGE_FRA(0x7141,
"Crétin! Ne parle pas aux gens en\n"
"les fixant!"
);

DECLARE_MESSAGE_FRA(0x7142,
"Crétinus!\n"
"Regarde-moi quand j'te parle!"
);

DECLARE_MESSAGE_FRA(0x7143,
"Bouffon!\n"
"Je ne sais pas pourquoi mais...\n"
"Bouffon!"
);

DECLARE_MESSAGE_FRA(0x7144,
"Mon dieu! Ton visage!\n"
"Il est tout...\n"
"Quoi? C'est un masque?\n"
QUICKTEXT_ENABLE "Sors de chez moi!" QUICKTEXT_DISABLE
);

DECLARE_MESSAGE_FRA(0x7145,
"Laisse-moi tranquille...\n"
"J'suis occupé."
);

DECLARE_MESSAGE_FRA(0x7146,
"Un masque est un instrument: \n"
"il reflète la personnalité... \n"
"J'aime ton style, petit!"
);

DECLARE_MESSAGE_FRA(0x7147,
"Quelle tête ENORME!\n"
"Comment as-tu pu entrer ici?!"
);

DECLARE_MESSAGE_FRA(0x7148,
"JE HAIS LES RENARDS!\n"
"Je les..... " QUICKTEXT_ENABLE "HAIS" QUICKTEXT_DISABLE "!"
);

DECLARE_MESSAGE_FRA(0x7149,
"Alors ça...c'est bien la tête la\n"
"plus énervante de tous les temps!\n"
"Félicitations, petit!"
);

DECLARE_MESSAGE_FRA(0x714A,
"Whoa! Joli visage, petit!"
);

DECLARE_MESSAGE_FRA(0x714B,
"Tu veux me parler?\n"
"Alors enlève ce truc!"
);

DECLARE_MESSAGE_FRA(0x714C,
"Heu...comment dire...\n"
"On n'a pas vraiment le temps de \n"
"jouer avec toi, petit!\n"
"SAUVE-NOUS!"
);

DECLARE_MESSAGE_FRA(0x714D,
"J'ai beau être un demi-monstre \n"
"mais... ton masque...comment dire...\n"
"YAAAAAAAAAAH!"
);

DECLARE_MESSAGE_FRA(0x714E,
"Excuse-moi si je n'explose pas de\n"
"rire mais...comment dire...\n"
"SAUVE-NOUS ! ! ! !"
);

DECLARE_MESSAGE_FRA(0x714F,
SFX("\x68\x67") "WOUAAAAAAA!\n"
"Il est monstrueux ton masque!\n"
"Hein? Oui, je sais...merci...\n"
"Moi aussi j'suis un monstre!"
);

DECLARE_MESSAGE_FRA(0x7150,
"Gheu?! Quoi?!?"BOX_BREAK"Oh...c'est juste un gamin...\n"
"J'ai eu une de ces trouilles!\n"
"Ma face fait peur aux cafards\n"
"mais je suis super sensible!"
);

DECLARE_MESSAGE_FRA(0x7151,
"Nom d'un ver pourri...\n"
"Regardez-moi cette tête!\n"
"Hein? Quoi ma tête?"
);

DECLARE_MESSAGE_FRA(0x7152,
"Hé! Tu sais c'que tu portes, là?\n"
"Vraiment? Mais t'es tapé!"
);

DECLARE_MESSAGE_FRA(0x7153,
"Je bosse, là... \n"
"Si tu veux qu'je creuse,\n"
"laisse-moi tranquille."
);

DECLARE_MESSAGE_FRA(0x7154,
"C'est quoi ça? C'est pas un p'tit\n"
"truc tout mignon qui saute un peu\n"
"partout? Comment ça s'appelle?"
);

DECLARE_MESSAGE_FRA(0x7155,
"Hé! C'est un masque du Renard!!\n"
"J'ai demandé à mon papa de m'en\n"
"acheter un!"
);

DECLARE_MESSAGE_FRA(0x7156,
"C'est Igor tout craché, hein?"
);

DECLARE_MESSAGE_FRA(0x7157,
"Rien à voir avec Igor, hein?"
);

DECLARE_MESSAGE_FRA(0x7158,
SFX("\x68\x63") "Cool comme masque mais...\n"
"Il est un p'tit peu trop effrayant!"
);

DECLARE_MESSAGE_FRA(0x7159,
"Ce masque me dit quelque chose...\n"
"Je l'ai déjà vu dans la forêt, non?"
);

DECLARE_MESSAGE_FRA(0x715A,
SFX("\x68\x63") "Ce masque me rend...heureuse..."
);

DECLARE_MESSAGE_FRA(0x715B,
"Oooh.....sniff...\n"
"Ce masque...me rend...\n"
"Si triiiiste! Bouhouuuuuu!"
);

DECLARE_MESSAGE_FRA(0x715C,
"Ha! Tu portes un masque, hein?\n"
"Tu as donc peur de moi!Ha ha!"
);

DECLARE_MESSAGE_FRA(0x715D,
"Yaaaaaaaaah! C'est quoi ça?\n"
"J'ai pas peur! J'ai pas peur!\n"
"Mais...ne t'approche pas de moi!\n"
"Compris?"
);

DECLARE_MESSAGE_FRA(0x715E,
"Whoa! Il est génial ton masque!\n"
"Tu veux bien être mon copain?\n"
"....Ha ha! Tu m'as cru, hein?\n"
"Pauv'nul, va! Ha ha ha ha ha!"
);

DECLARE_MESSAGE_FRA(0x715F,
"Wah hah ha hah!\n"
"C'est ton portrait tout craché!"
);

DECLARE_MESSAGE_FRA(0x7160,
"Yaaaaaah Waaaah! \n"
"J-Je vais le dire à Mido!"
);

DECLARE_MESSAGE_FRA(0x7161,
"Bwaaaaaaaahh!\n"
"J-Je vais dire à Mido de te \n"
"casser la figure!"
);

DECLARE_MESSAGE_FRA(0x7162,
"Whooooah!\n"
"Es-tu un fantôme de la forêt?"
);

DECLARE_MESSAGE_FRA(0x7163,
"Gé-nial! Super ton masque!\n"
"Heu...ne répète pas à Mido que j'ai \n"
"dit ça, OK?"
);

DECLARE_MESSAGE_FRA(0x7164,
"Hein?!\n"
"Tu es revenu!\n"
"Pas la peine de se cacher derrière\n"
"ce masque! Je t'ai reconnu!"
);

DECLARE_MESSAGE_FRA(0x7165,
"Je me demande quelle serait la \n"
"réaction de Mido en voyant ça..."
);

DECLARE_MESSAGE_FRA(0x7166,
"Je vois...\n"
"Tu veux faire peur à Mido avec ce\n"
"masque, hein?"
);

DECLARE_MESSAGE_FRA(0x7167,
"Hah hah hah!\n"
"C'est trop drôle!\n"
"Saria va adorer ce masque!"
);

DECLARE_MESSAGE_FRA(0x7168,
"Hi hi hi hi!!!\n"
"Un masque de bois?\n"
"C'est comme si tu portais un\n"
"bouclier sur la tête!"
);

DECLARE_MESSAGE_FRA(0x7169,
"Quelle drôle de tête!"BOX_BREAK"Au fait... Un enfant de la forêt\n"
"se plaint de son visage toute la\n"
"journée..."
);

DECLARE_MESSAGE_FRA(0x716A,
"Quelle ENORME tête!"
);

DECLARE_MESSAGE_FRA(0x716B,
"Hi hi!\n"
"Où l'as-tu trouvé?\n"
"En dehors de la forêt?\n"
"Impossible! Je ne te crois pas!"
);

DECLARE_MESSAGE_FRA(0x716C,
"Ha ha!\n"
"C'est rigolo mais...ce n'est pas\n"
"vraiment mon style..."
);

DECLARE_MESSAGE_FRA(0x716D,
"Cool! \n"
"Porter ce masque me donne\n"
"l'impression d'être un vrai dur!\n"
"Hé hé!"
);

DECLARE_MESSAGE_FRA(0x716E,
"Hé hé! \n"
"Cool ton masque mais...bon."
);

DECLARE_MESSAGE_FRA(0x716F,
"Hé hé!\n"
"J'ai mon masque maintenant...\n"
"Les autres ne m'intéressent pas..."
);

DECLARE_MESSAGE_FRA(0x7170,
SFX("\x68\x6D") "Woah! Tu as une ENORME tête!"
);

DECLARE_MESSAGE_FRA(0x7171,
SFX("\x68\x6B") "Oh! Le mignon petit rat!\n"
"Quoi?\n"
"C'est pas un rat? Tu rigoles?"
);

DECLARE_MESSAGE_FRA(0x7172,
SFX("\x68\x6C") "C'est quoi ces trucs mous\n"
"au-dessus de ta p'tite tête?\n"
"Des oreilles? T'en as quatre?"
);

DECLARE_MESSAGE_FRA(0x7173,
SFX("\x68\x69") "Tu as réussi à éviter les gardes\n"
"avec ça sur la tête?"
);

DECLARE_MESSAGE_FRA(0x7174,
"Bonjour gentil garçon à la fée!\n"
"...Pardon?\n"
"Mais bien sûr que je t'ai reconnu!"
);

DECLARE_MESSAGE_FRA(0x7175,
"Whoa!\n"
"Quels énormes yeux!\n"
"Les Gorons sont siiiii mignons!"
);

DECLARE_MESSAGE_FRA(0x7176,
"Oh! Je te reconnais! tu es le\n"
"Renard! Bonjour le Renard!\n"
"Tu es très à la mode, tu sais!"
);

DECLARE_MESSAGE_FRA(0x7177,
"Les garçons...tous les mêmes!"
);

DECLARE_MESSAGE_FRA(0x7178,
"Attends...attends...\n"
"Je sais qui tu es...\n"
"Tu es...le Renard, non?\n"
"Woah! J'suis trop fort!"
);

DECLARE_MESSAGE_FRA(0x7179,
"Whoa!... Il est moche ton masque!\n"
"Presque aussi moche que...Ingo!"
);

DECLARE_MESSAGE_FRA(0x717A,
"Tu me rappelles ma femme...\n"
"Attends...finalement non.\n"
"Tu ne lui ressembles pas du tout!"
);

DECLARE_MESSAGE_FRA(0x717B,
"(Baille)...\n"
"J'suis un peu naze...\n"
"Tu me le montreras plus tard..."
);

DECLARE_MESSAGE_FRA(0x717C,
"Hors de ma vue!\n"
"Tu vois pas que j'travaille?!"
);

DECLARE_MESSAGE_FRA(0x717D,
"Très drôle... Tu verras plus tard!\n"
"La vie active n'est pas aussi \n"
"marrante que ça!"
);

DECLARE_MESSAGE_FRA(0x717E,
"YAAAAAAAH!\n"
"Heu? C'est juste un masque...\n"
"OK. Bonne blague. Super. Dégage."
);

DECLARE_MESSAGE_FRA(0x717F,
"Hé hé hé...\n"
"Un petit rayon de soleil dans ma\n"
"journée... Merci mon garçon!"
);

DECLARE_MESSAGE_FRA(0x7180,
"Mmmm... Voyons un peu ceci...\n"
"Du bel ouvrage! Du bois de\n"
"premier choix! Gni gni...."
);

DECLARE_MESSAGE_FRA(0x7181,
"Ahhh...oui! En effet...\n"
"Un travail impeccable...\n"
"L'auteur de ce masque est un \n"
"véritable chef."
);

DECLARE_MESSAGE_FRA(0x7182,
"Oh! Un joli Goron!\n"
"A propos...Je me demande comment \n"
"se porte mon vieil ami Biggoron du\n"
"Mont du Péril."
);

DECLARE_MESSAGE_FRA(0x7183,
"Etrange...\n"
"Il ne doit pas être soluble."
);

DECLARE_MESSAGE_FRA(0x7184,
"Miam miam miam...\n"
"Cool. Un masque. Youpi.\n"
"Tu veux m'acheter des haricots?"
);

DECLARE_MESSAGE_FRA(0x7185,
"Miam miam miam...\n"
"J'en veux pas de ton masque."
);

DECLARE_MESSAGE_FRA(0x7186,
"Miam miam miam...\n"
"Ce n'est pas vraiment mon style..."
);

DECLARE_MESSAGE_FRA(0x7187,
"Miam miam miam...\n"
"Heu...non. J'en veux pas."
);

DECLARE_MESSAGE_FRA(0x7188,
"Que veux-tu?"
);

DECLARE_MESSAGE_FRA(0x7189,
"Tu n'as pas l'air d'être un bon\n"
"nageur..."
);

DECLARE_MESSAGE_FRA(0x718A,
"Cheveux rouges...peau mate...\n"
"Cela me rappelle quelque chose..."
);

DECLARE_MESSAGE_FRA(0x718B,
"Hé hé hé!\n"
"Tu es trop petit pour être un\n"
"Zora..."
);

DECLARE_MESSAGE_FRA(0x718C,
"Ho ho ho!\n"
"Tu Nous fais bien rire!"
);

DECLARE_MESSAGE_FRA(0x718D,
"Ce visage...il Nous fait peur!"
);

DECLARE_MESSAGE_FRA(0x718E,
"Cela Nous rappelle notre vieil ami\n"
"d'enfance: le joyeux Biggoron!"
);

DECLARE_MESSAGE_FRA(0x718F,
"Te paies-tu Notre tête?"
);

DECLARE_MESSAGE_FRA(0x7190,
"T'es rigolo, toi!"
);

DECLARE_MESSAGE_FRA(0x7191,
"Ta tête... Elle est ENORME!"
);

DECLARE_MESSAGE_FRA(0x7192,
"Arrête ça tout de suite...\n"
"Tu me perturbes..."
);

DECLARE_MESSAGE_FRA(0x7193,
"Génial! Tu as enfin décidé de\n"
"devenir un Zora et de m'épouser?"
);

DECLARE_MESSAGE_FRA(0x7194,
"WHOA!\n"
"Mon coeur s'est mis à battre \n"
"très vite!"
);

DECLARE_MESSAGE_FRA(0x7195,
"Ce masque me dérange...\n"
"Au revoir."
);

DECLARE_MESSAGE_FRA(0x7196,
"Mmmmmmm...\n"
"Je ne sais pas quoi te dire."
);

DECLARE_MESSAGE_FRA(0x7197,
"Mange bien tous tes cailloux et\n"
"tu deviendras gros et fort \n"
"comme moi!"
);

DECLARE_MESSAGE_FRA(0x7198,
"Tu vas m'lâcher les bottes, ouais?"
);

DECLARE_MESSAGE_FRA(0x7199,
"Tu cherches à me faire rire?\n"
"Bah c'est raté!"
);

DECLARE_MESSAGE_FRA(0x719A,
"Tu m'énerves. \n"
"File avant que j'te brise!"
);

DECLARE_MESSAGE_FRA(0x719B,
"JE HAIS LES GERUDOS!!"
);

DECLARE_MESSAGE_FRA(0x719C,
"Ouste. Du balai!"
);

DECLARE_MESSAGE_FRA(0x719D,
"Wah hah hah!\n"
"Alors comme ça on s'déguise?\n"
"T'es un marrant, toi!"
);

DECLARE_MESSAGE_FRA(0x719E,
"Tu vas m'laisser tranquille, oui?\n"
"Tu m'cherches?"
);

DECLARE_MESSAGE_FRA(0x719F,
"Tu as du courage de porter ça...\n"
"Mais ton p'tit jeu ne prend pas!"
);

DECLARE_MESSAGE_FRA(0x71A0,
"C'est quoi ça?\n"
"Quel rapport avec notre histoire?"
);

DECLARE_MESSAGE_FRA(0x71A1,
"Ha ha hah!\n"
"Tu as du courage, toi!\n"
"J't'aime bien, petit!"
);

DECLARE_MESSAGE_FRA(0x71A2,
"On arrête de jouer une seconde?"
);

DECLARE_MESSAGE_FRA(0x71A3,
"Etrange...ça me ressemble...\n"
"En fait...pas du tout!\n"
"Je suis plus belle que ça!"
);

DECLARE_MESSAGE_FRA(0x71A4,
"Non! Ces oreilles sont nulles!\n"
"Je veux des oreilles un peu plus...\n"
"Enfin un peu moins...\n"
"Tu vois, quoi!"
);

DECLARE_MESSAGE_FRA(0x71A5,
"Tu te balades avec ça sur la\n"
"tête en pleine nuit? \n"
"T'as peur de rien, toi!"
);

DECLARE_MESSAGE_FRA(0x71A6,
"Ha ha hah!\n"
"Tu t'amuses bien?!"
);

DECLARE_MESSAGE_FRA(0x71A7,
"Un rocher ressemble à ça quelque\n"
"part...mais où?"
);

DECLARE_MESSAGE_FRA(0x71A8,
"Vite, " NAME "!\n"
"La tour va s'effondrer!!"
);

DECLARE_MESSAGE_FRA(0x71A9,
"Attention aux chutes de pierres!"
);

DECLARE_MESSAGE_FRA(0x71AA,
NAME "!\n"
"Au secours!"
);

DECLARE_MESSAGE_FRA(0x71AB,
NAME "!\n"
"La sortie est par là!"
);

DECLARE_MESSAGE_FRA(0x71AC,
"Merci, " NAME ".\n"
"Ne perdons pas de temps!"
);

DECLARE_MESSAGE_FRA(0x71AD,
"Dommage!"BOX_BREAK"Entraîne-toi et reviens vite!" EVENT
);

DECLARE_MESSAGE_FRA(0x71AE,
"Presque!!"BOX_BREAK"Bon...je suis sympa!\n"
"La prochaine partie est gratuite. \n"
"Donne-toi à fond!" EVENT
);

DECLARE_MESSAGE_FRA(0x71AF,
"Fantastique!!!\n"
"Bravo!!!\n"
"Génial!!!"BOX_BREAK"Voici ton magnifique prix!" EVENT
);

DECLARE_MESSAGE_FRA(0x71B0,
QUICKTEXT_ENABLE  COLOR("\x44") "Oh, non! " COLOR("\x41") "Le" COLOR("\x44") " " COLOR("\x41") "temps est écoulé!\n"
COLOR("\x44") "L'objet à apporter est perdu!\n"
"Essayez à nouveau!" COLOR("\x40")  QUICKTEXT_DISABLE  EVENT
);

DECLARE_MESSAGE_FRA(0x71B1,
QUICKTEXT_ENABLE "DING! DONG!\n"
"Au quatrième top il sera: " TIME "!" QUICKTEXT_DISABLE  FADE("\x28")
);

DECLARE_MESSAGE_FRA(0x71B2,
"Tu connais le garde de Cocorico?\n"
"On va te faire un bon prix!"
);

DECLARE_MESSAGE_FRA(0xFFFD,
""
);
