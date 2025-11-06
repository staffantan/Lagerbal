import '../models/category.dart';
import '../models/song.dart';

final List<Category> sampleSongbook = [
  Category(
    name: 'Klassiskt',
    songs: [
      Song(
        title: 'Nationalsången',
        author: 'Text: Richard Dybeck',
        melody: 'Melodi: Så rider jag mig över tolvmilan skog',
        lyrics: '''Du gamla, Du fria, Du fjällhöga nord
Du tysta, Du glädjerika sköna!
Jag hälsar Dig, vänaste land uppå jord,
||: Din sol, Din himmel, Dina ängder gröna. :||

Du tronar på minnen från fornstora dar,
då ärat Ditt namn flög över jorden.
Jag vet att Du är och Du blir vad Du var.
||: Ja, jag vill leva jag vill dö i Norden. :||

Jag städs vill Dig tjäna mitt älskade land,
Din trohet till döden vill jag svära.
Din rätt, skall jag värna, med håg och med hand,
||: Din fana, högt den bragderika bära. :||

Med Gud skall jag kämpa, för hem och för härd,
för Sverige, den kära fosterjorden.
Jag byter Dig ej, mot allt i en värld.
||: Nej, jag vill leva jag vill dö i Norden. :||''',
        about: '''Sången är skriven till den västmanländska folkmelodin 'Så rider jag mig över tolvmilan skog...' och framfördes första gången vid Dybecks första 'aftonunderhållning med nordisk folkmusik' i Stockholm den 18 november 1844. Då började sången 'Du gamla, Du friska' men detta ändrades senare. Sången kom med tiden att betraktas som Sveriges nationalsång.''',
      ),
      Song(
        title: 'Gustafs Skål',
        author: 'Text: Carl Michael Bellman',
        melody: '',
        lyrics: '''||: Gustafs skål!
Den bäste Kung, som Norden äger: 
Han ej tål,
At vigtskåln ojämt väger. :|| 
||: God och glad,

Han Ilskans röst föraktar 
Samt afvaktar
Och betraktar
Dårskap i sin grad. :||

||: Sådan Kung
är värd att styra Sveriges öden:
Rask och ung,
Ej rådlös uti nöden. :||

||: Wasa ätt
Har aldrig lärt att svika, 
Aldrig tvika,
Men at fika
Till at göra rätt. :||''',
        about: 'Sveriges första nationalsång. Blev allmänt känd efter Gustaf III:s statskupp den 19 augusti 1772, men komponerades sannolikt tidigare.',
      ),
      Song(
        title: 'Kungssången',
        author: 'Text: Carl Vilhelm August Strandberg',
        melody: 'Melodi: Otto Lindblad',
        lyrics: '''Ur svenska hjärtans djup en gång
en samfälld och en enkel sång,
som går till kungen fram!
Var honom trofast och hans ätt,
gör kronan på hans hjässa lätt,
och all din tro till honom sätt,
du folk av frejdad stam!

O konung, folkets majestät
är även ditt. Beskärma det
och värna det från fall!
Stå oss all världens härar mot,
vi blinka ej för deras hot,
vi lägga dem inför din fot,
en kunglig fotapall.

Men stundar ock vårt fall en dag,
från dina skuldror purpurn tag,
lyft av dig kronans tvång
och drag de kära färger på,
det gamla gula och det blå,
och med ett svärd i handen gå
till kamp och undergång!

Och grip vår sista fana du
och dristeliga för ännu
i döden dina män!
Ditt trogna folk med hjältemod
skall sömma av sitt bästa blod
en kunglig purpur varm och god,
och svepa dig i den.

Du himlens herre, med oss var,
som förr du med oss varit har,
och liva på vår strand
det gamla lynnets art igen
hos sveakungen och hans män.
Och låt din ande vila än
utöver nordanland!''',
        about: 'Framfördes första gången i Lund den 5 december 1844.',
      ),
      Song(
        title: 'Här är gudagott att vara',
        author: 'Text: Gunnar Wennerberg',
        melody: '',
        lyrics: '''Här är gudagott att vara.
O, vad livet dock är skönt.
Hör vad fröjd från fåglars skara,
Se vad gräset lyser grönt.
Humlan surrar, fjäriln prålar,
Lärkan slår i skyn sin drill
Och ur nektarfyllda skålar
Dricka oss små blommor till.''',
        about: '''Glunt nr 25. Ur 'Examens-sexa på Eklundshof', skriven 1848 när Glunten slutligen tog examen.''',
      ),
      Song(
        title: 'Sveriges flagga',
        author: 'Text: Karl Gustav Ossiannilsson',
        melody: 'Melodi: Hugo Alfvén',
        lyrics: '''Flamma stolt mot dunkla skyar
lik en glimt av sommarens sol!
över Sveriges skogar, berg och byar,
över vatten av viol!
Du som sjunger, när Du bredes
som vår gamla lyckas tolk.
Solen lyser! Solen lyser! 
Ingen vredes åska slog vårt tappra folk! 

Flamma högt vårt kärlekstecken!
Värm oss, när det blåser kallt!
Stråla ut de blåa vecken
kärlek mera stark än allt!
Sveriges flagga! Sveriges ära!
Fornklenod och framtidstolk!
Gud är med oss! Gud är med oss!
Han skall bära stark vårt fria svenska folk!''',
        about: 'Framfördes första gången på Stockholms Stadion den 6 juni 1916, under ledning av Hugo Alfvén.',
      ),
      Song(
        title: 'Studentsången',
        author: 'Text: Herman Sätherberg',
        melody: 'Melodi: Prins Gustaf',
        lyrics: '''Sjung om studentens lyckliga dag
låtom oss fröjdas i ungdomens vår!
än klappar hjärtat med friska slag,
och den ljusnande framtid är vår.
Inga stormar än,
i våra sinnen bo.
Hoppet är vår vän,
och vi dess löften tro,
när vi knyta förbund i den lund,
där de härliga lagrarna gro,
där de härliga lagrarna gro!

Svea, vår moder, hugstor och skön,
manar till bragd som i forntida dagar.
Vinkar med segerns och ärans lön,
men den skörd utan strid man ej tar.
Aldrig slockne då,
känslornas rene brand.
Aldrig brista må,
vår trohets helga band,
så i gyllene frid som i strid:
Liv och blod för vårt fädernesland!
Liv och blod för vårt fädernesland!''',
        about: 'Marschen komponerades troligen 1851, året innan sångarprinsen dog. Texten skrevs något år senare.',
      ),
      Song(
        title: 'Frans Mikael Franzéns dryckesvisa',
        author: 'Text: Biskop Frans Mikael Franzén',
        melody: 'Melodi: Olof Åhlström',
        lyrics: '''När skämtet tar ordet vid vänskapens bord
med fingret kring glasen som dofta.
Så drick och var glad, på vår sorgliga jord
man gläder sig aldrig för ofta.
Ty en blomma är glädjen, i dag slår hon ut,
i morgon förvissnar hon redan.
Just nu, när du kan, hav en lycklig minut,
och tänk på det kommande sedan.

Vem drog ej en suck över tidernas lopp?
Dock sitt ej och dröm på kalaset!
Här lev i sekunden och hela ditt hopp
se fyllas och tömmas i glaset.
Här sörj ej för glaset, om fullt, så drick ut.
Om tomt, så försänd det att fyllas!
Och minns allt det sköna och goda förut
sen gädjen och nöjet må hyllas.

Ty ägne vi först åt värdinnan en skål:
vad vore vår fröjd utan henne?
Sen prise vi värden och särskilt hans bål:
vad vore vårt mod utan denne?
Dem båda förene ett glas och en sång,
de själva så skönt sig förente.
Med druvorna myrten blev skapt på en gång:
vem ser ej, vad himmelen mente?

För övrigt må värden ge alltid nytt skäl
till ständig omsättning av glasen
och visa att rangen är nyttig likväl
till skålarnas mängd vid kalasen.
Men förr'n han är färdig med klang och harang
vi skynde att självmante dricka
och helge ett glas, som är över all rang
i tysthet en var åt sin flicka.''',
        about: 'Texten publicerades den 4 februari 1807 i Åbo Tidning, året innan Franzén valdes in i Svenska Akademien.',
      ),
      Song(
        title: 'Sverige',
        author: 'Text: Verner von Heidenstam',
        melody: 'Melodi: Wilhelm Stenhammar',
        lyrics: '''Sverige, Sverige, Sverige fosterland
Vår längtans bygd, vårt hem på jorden.
Nu spelar källorna, där härar lysts av brand,
och dåd blev saga, men med hand vid hand
svär än ditt folk som förr de gamla trohetsorden.
Fall julesnö och susa djupa mo!
Brinn österstjärna genom junikvällen!

Sverige, moder! Bliv vår strid, vår ro,
du land där våra barn en gång få bo
och våra fäder sova under kyrkohällen!''',
        about: 'Komponerad 1905.',
      ),
      Song(
        title: 'O gamla klang- och jubeltid',
        author: 'Text: August Lindh',
        melody: 'Melodi: O alte Burschenherrlichkeit',
        lyrics: '''O gamla klang- och jubeltid
ditt minne skall förbliva
och än åt livets bistra strid,
ett rosigt skimmer giva.
Snart tystnar allt vårt yra skämt,
vår sång blir stum, vårt glam förstämt.
O, jerum, jerum, jerum.
O, quae mutatio rerum!

Var äro de som kunde allt,
blott ej sin ära svika.
Som voro män av äkta halt
och världens herrar lika?
De drogo bort från vin och sång
till vardagslivets tråk och tvång.
O, jerum...

Den ene vetenskap och vett
in i scholares mänger,
Den andre i sitt anlets svett
på paragrafer vränger,
en plåstrar själen, som är skral,
en lappar hop dess trasiga fodral;
O, jerum...

Men hjärtat i en sann student,
kan ingen tid förfrysa.
Den glädjeeld, som där han tänt,
hans hela liv skall lysa.
Det gamla skalet brustit har
men kärnan finnes frisk dock kvar,
och vad han än må mista,
den skall dock aldrig brista!

Så sluten, bröder, fast vår krets,
till glädjens värn och ära!
Trots allt vi tryggt och väl tillfreds
vår vänskap trohet svära.
Lyft bägarn högt och klinga vän!
De gamla gudar leva än
bland skålar och pokaler,
bland skålar och pokaler!''',
        about: '''Melodin och refrängen 'O, jerum...' är ursprungligen från den tyska visan 'Was fang ich armer Teufel an' skriven av Jenaer Blatt 1763. Till denna melodi skrev Eugen Höfling sin nya text 1825, vilken den tidigare uppsalastudenten August Lindh översatte till Västmanlands-Dala nations första sångbok 1921. Angående refrängen: Jerum är en omskrivning för Jesus. Quae mutatio rerum betyder 'vilken sakernas förändring', alltså betyder refrängen 'O jösses, vilken förändring!' Den latinska diftongen ae, som romarna uttalade 'aj', har under medeltiden och framåt vanligen har uttalats som 'ä'. Sjungen av svenskar bör ordet quae uttalas 'kvä'.''',
      ),
      Song(
        title: 'O alte Burschenherrlichkeit',
        author: 'Text: Eugen Höfling',
        melody: '',
        lyrics: '''O alte Burschenherrlichkeit,
Wohin bist du entschwunden,
Nie kehrst du wieder gold'ne Zeit,
So froh und ungebunden!
Vergebens spähe ich umher,
Ich finde deine Spur nicht mehr.
O jerum, jerum, jerum,
O quae mutatio rerum.

Den Burschenhut bedeckt der Staub,
Es sank der Flaus in Trümmer,
Der Schläger ward des Rostes Raub,
Erblichen ist sein Schimmer.
Verklungen der Kommersgesang,
Verhallt Rapier- und Sporenklang.
O jerum...

Wo sind sie, die vom breiten Stein
Nicht wankten und nicht wichen,
Die ohne Moos bei Scherz und Wein,
Dem Herrn der Erde glichen?
Sie zogen mit gesenktem Blick
In das Philisterland zurück.
O jerum...

Da schreibt mit finsterem Amtsgesicht
Der eine Relationen.
Der andere seufzt beim Untericht,
Und der macht Rezensionen;
Der schilt die sünd'ge Seele aus
Und der flickt ihr verfallnes Haus.
O jerum...

Auf öder Strecke schraubt und spannt
Das Fadenkreuz der eine,
Der andre seufzt beim Blockverband,
Und der setzt Ziegelsteine;
Der kocht aus Rüben Zuckersaft
Und der aus Wasser Pferdekraft.
O jerum...

Zur Börse schnell der eine rennt,
Zu tät'gem Geschäfte,
Der andre sitzt beim Kontokorrent
Und der nützt fremde Kräfte;
Der importiert aus Turkestan
Und der bohrt seine Schuldner an.
O jerum...

Allein das rechte Burschenherz
Kann nimmermehr erkalten,
Im Ernste wird, wie hier im Scherz,
Der rechte Sinn stehts walten;
Die alte Schale nur ist fern,
Geblieben ist uns doch der Kern,
Und den lasst fest uns halten, 
Und den lasst fest uns halten.

D'rum Freunde reichet euch die Hand,
Damit es sich erneue,
Der alten Freundschaft heil'ges Band,
Das alte Band der Treue.
Klingt an und hebt die Gläser hoch,
Die alten Burschen leben noch,
Noch lebt die alte Treue,
Noch lebt die alte Treue.''',
        about: '',
      ),
      Song(
        title: 'Nu grönskar det',
        author: 'Text: Evelyn Lindström',
        melody: 'Melodi: Johann Sebastian Bach, ur Bondekantaten',
        lyrics: '''Nu grönskar det i dalens famn
nu doftar äng och lid.
Kom med, kom med på vandringsfärd
i vårens glada tid!
Var dag är som en gyllne skål
till brädden fylld med vin.
Så drick, min vän, drick sol och
doft, ty dagen, den är din!

Långt bort från stadens gråa hus
vi glatt vår kosa styr
och följer vägens vita band
mot ljusa äventyr.
Med öppna ögon låt oss se
på livets rikedom,
som gror och sjuder överallt
där våren går i blom.''',
        about: '',
      ),
      Song(
        title: 'Den blomstertid nu kommer',
        author: 'Text: Israel Kolmodin',
        melody: '',
        lyrics: '''Den blomstertid nu kommer
med lust och fägring stor.
Du nalkas ljuva sommar,
då gräs och gröda gror.
Med blid och livlig värma
till allt, som varit dött.
Sig solens strålar närma,
och allt blir återfött.

De fagra blomsterängar
och åkerns ädla säd,
de rika örtesängar
och lundens gröna träd.
De skola oss påminna
Guds godhets rikedom,
att vi den nåd besinna,
som räcker året om.

Man hörer fåglar sjunga
med mångahanda ljud,
skall icke då vår tunga
lovsäga Herren Gud?
Min själ, upphöj Guds ära
stäm upp din glädjesång
till den som vill oss nära
och fröjda på en gång.''',
        about: '''Psalm 199. Skrevs 1694 under Kolmodins tid som biskop i Visby och hette från början 'En sommarwisa'.''',
      ),
      Song(
        title: 'De brevitate vitae',
        author: 'Text: Christian Wilhelm Kindleben',
        melody: '',
        lyrics: '''||: Gaudeamus igitur, juvenes dum sumus! :||
Post jucundam juventutem,
post molestam senectutem
||: nos habebit humus. :||
||: Ubi sunt, qui ante nos in mundo fuere? :||
Vadite ad superos,
transite ad inferos!
||: Ubi jam? Fuere! :||
||: Vita nostra brevis est brevi finietur. :||
Venit mors velociter,
rapit nos atrociter,
||: nemini parcetur. :||
||: Vivat academia, vavant professores, :||
Vivat membrum quodlibet,
vivant membra quaelibet,
||: semper sin in flore! :||
||: Vivant omnes virgines faciles, formosae! :||
Vivant et mulieres
tenerae, amabiles,
||: bonae, loboriosae! :||
||: Vivat et respublica et qui illam regit! :||
Vivat nostra civitas,
maecenatum caritas,
||: quae nos hic protegit! :||
||: Pereat tristia, pereant osores! :||
Pereat diabolus,
quivis antiburschius,
||: atque irrisores! :||''',
        about: 'Återgår på en redan 1267 känd visa, tillskriven biskop Strada i Bologna. Sin nuvarande form har sången fått av studentskalden Kindleben i Halle 1781.',
      ),
      Song(
        title: 'Längtan till landet',
        author: 'Text: Herman Sätherberg',
        melody: 'Melodi: Otto Lindblad',
        lyrics: '''Vintern rasat ut bland våra fjällar,
drivans blommor smälta ner och dö.
Himlen ler i vårens ljusa kvällar,
solen kysser liv i skog och sjö.
Snart är sommarn här i purpurvågor,
guldbelagda, azurskiftande
ligga ängarne i dagens lågor
och i lunden dansa källorne.

Ja, jag kommer! Hälsen, glada vindar,
ut till landet, ut till fåglarne,
att jag älskar dem till björk och lindar,
sjö och berg, jag vill dem återse.
Se dem än som i min barndoms stunder,
följa bäckens dans till klarnad sjö,
trastens sång i furuskogens lunder,
vattenfågelns lek kring fjärd och ö.''',
        about: '''Från 'Jägarens hvila. Poetiska bilder från skogen, fältet och sjön', 1838. Har egentligen ytterligare fyra verser.''',
      ),
      Song(
        title: 'Vårvindar friska',
        author: 'Text: Julia Kristina Nyberg alias Euphrosyne',
        melody: '',
        lyrics: '''Vårvindar friska, leka och viska
lunderna kring, likt älskande par.
Strömmarna ila, finna ej vila,
förrän i havet störtvågen far.
Klappa mitt hjärta, klaga och hör,
vallhornets klang bland klipporna dör.
Strömkarlen spelar, sorgerna delar
vakan kring berg och dal.

Hjärtat vill brista, ack, när den sista
gången jag hörde kärlekens röst.
ögonens låga, avskedets plåga,
mun emot mun och klappande bröst.
Fjälldalen stod i grönskande skrud.
Trasten slog drill på drill för sin brud.
Strömkarlen spelar, sorgerna delar
vakan kring berg och dal.''',
        about: '''Ursprunglig titel 'Den stackars Anna eller Moll-toner från Norrland'. Originalet har ytterligare fyra verser och skrevs på 1830-talet.''',
      ),
      Song(
        title: 'Uti vår hage',
        author: '',
        melody: '',
        lyrics: '''Uti vår hage där växa blå bär.
Kom hjärtans fröjd!
Vill du mig något, så träffas vi där.
Kom liljor och akvileja,
kom rosor och saliveja,
kom ljuva krusmynta,
kom hjärtans fröjd!

Fagra små blommor där bjuda till dans.
Kom hjärtans fröjd!
Vill du så binder jag åt dig en krans.
Kom liljor...

Kransen den sätter jag sen i ditt hår.
Kom hjärtans fröjd!
Solen den dalar men hoppet uppgår.
Kom liljor...

Uti vår hage finns blommor och bär.
Kom hjärtans fröjd!
Men utav alla du kärast mig är.
Kom liljor...''',
        about: 'Text och melodi av traditionellt gotländskt ursprung Växterna som nämns har eventuellt ingått i ett medeltida abortmedel. Sången blev allmänt känd genom Hugo Alfvén vars arrangemang framfördes första gången vid en Orphei Drängar-konsert i Stockholm 1918.',
      ),
      Song(
        title: 'Majsång',
        author: 'Text: Johan Ludvig Runeberg',
        melody: 'Melodi: Lars Magnus Béen',
        lyrics: '''Sköna maj, välkommen
till vår bygd igen!
Sköna maj, välkommen,
våra lekars vän!
Känslans gudaflamma
väcktes vid din ljusning;
jord och skyar stamma
kärlek och förtjusning;
sorgen flyr för våren,
glädje ler ur tåren,
morgonrodnad ur bekymrens moln.

Blomman låg förkolnad
under frost och snö;
höstens bleka vålnad,
gick hon nöjd att dö.
Vintern, härjarns like,
som föröder nejden
och i skövlat rike
tronar efter fejden,
satt med isad glaven
segrande på graven,
dyster själv och mörk och kall som den.

Inga strålar sänktes
på vår morgon ner,
ingen daggtår skänktes
nordens afton mer,
tills, av svaner dragen,
maj med blomsterhatten
göt sitt guld i dagen,
purpurklädde natten,
vinterns spira bräckte
och ur lossat häkte
kallade den väna Flora fram.

Nu ur lundens sköte
och ur blommans knopp
stiga dig till möte
glada offer opp.
Blott ditt lov de susa,
dessa rosenhäckar,
till din ära brusa
våra silverbäckar,
och med tacksam tunga
tusen fåglar sjunga
liksom vi: Välkommen, sköna maj!''',
        about: '',
      ),
      Song(
        title: 'En vänlig grönskas rika dräkt',
        author: 'Text: Carl David af Wirsén',
        melody: 'Melodi: Waldemar Åhlén',
        lyrics: '''En vänlig grönskas rika dräkt
har smyckat dal och ängar.
Nu smeker vindens ljumma fläkt
de fagra örtesängar,
och solens ljus och lundens sus
och vågens sorl bland viden
förkunna sommartiden.

Sin lycka och sin sommarro
de yra fåglar prisa.
Ur skogen snår, ur stilla bo
framklingar deras visa.
En hymn går opp, med fröjd och hopp
från deras glada kväden,
bland blommorna och träden.

Men du, o Gud som gör vår jord
så skön i sommarns stunder,
Giv, att jag aktar främst ditt ord
och dina nådestunder.
Allt kött är hö, och blomstren dö
och tiden allt fördriver.
Blott Herrens ord förbliver.''',
        about: '''Psalm 201. Publicerades urprungligen i 'Kristna högtids- och helgdagar' 1889. Tonsattes 1933 inför en skolavslutning.''',
      ),
    ],
  ),
  Category(
    name: 'Nubbe',
    songs: [
      Song(
        title: 'Portos visa',
        author: 'Text: Tord Andrén',
        melody: 'Melodi: You can\'t get a man with a gun',
        lyrics: '''Jag vill börja gasqua
var fan är min flaska?
Vem i helvete stal min butelj?
Skall törsten mig tvinga
en TT börja svinga?
Nej, för fan, bara blunda och svälj.
Vilken smörja!
Får jag spörja:
Vem, för fan, tror att jag är en älg?

Till England vi rider,
och sedan vad det lider
träffar vi välan på någon pub.
Och där skall vi festa,
blott dricka av det bästa
utav whisky och portvin.
Jag tänker gå hårt in
för att pröva på rubb och stubb.
''',
        about: '''Från Bergsspexet 'De fyra musketörerna' 1959. Bestämda bergsmän hävdar att visan ursprungligen hette 'Athos visa'.''',
      ),
      Song(
        title: 'Jag har aldrig var\'t på snusen',
        author: '',
        melody: 'Melodi: Åh, hur saligt att få vandra',
        lyrics: '''Jag har aldrig var't på snusen
aldrig rökat en cigarr, halleluja!
Mina dygder äro tusen,
inga syndiga laster jag har.
Jag har aldrig sett nå't naket,
inte ens ett litet nyfött barn.
Mina blickar går mot taket,
därmed undgår jag frestarens garn.

||: Halleluja, halleluja. :||

Bacchus spelar på gitarren,
Satan spelar på sitt handklaver.
Alla djävlar dansar tango,
säg, vad kan man väl önska sig mer?
Jo, att alla bäckar vore brännvin,
Riddarfjärden full av bayerskt öl,
konjak i varenda rännsten
och punsch i varendaste pöl.

||: Och mera öl, och mera öl. :||''',
        about: '',
      ),
      Song(
        title: 'Gums visa',
        author: '',
        melody: '',
        lyrics: '''||: Skål kamrater, ty livet är glatt,
och snart förgäta vi sorgen.
Vi söpo igår, vi supa idag
och vi tar en sjujäkel i morgon. :||
Skål, skål, skål, skååål.
''',
        about: '',
      ),
      Song(
        title: 'Handelsvisa',
        author: '',
        melody: 'Melodi: Åh, hur saligt att få vandra',
        lyrics: '''Jag vill aldrig gå på Handels,
aldrig tenta företagsekonomi.
Deras IQ den e' Mandels
och förståndet, det har gjort sorti.
Dom har jätteusla snören,
till sitt jättefula draperi.
Dom kan bara räkna ören,
hela Handels e' ett djävla aperi!

||: Handels är skit, jag vill ej dit. :||

Mammons gossar är dom alla,
pappas flickor är dom likaså,
går och tror att dom är balla,
fastän dom inget alls kan förstå.
Hela Handels borde rivas,
detta tycker hela vårat lag.
Då så skulle Razor trivas
uppå denna Handels ljuva domedag!

||: Åh, vilket drag, på denna dag. :||''',
        about: 'Skriven av Team kangaroo till Gerhards-gasque, Fysik KTH, 1977',
      ),
      Song(
        title: 'Jag vill inte gå på Fysik',
        author: '',
        melody: 'Melodi: Åh, hur saligt att få vandra',
        lyrics: '''Jag vill inte gå på Fysik,
aldrig tenta termometerdynamik.
Jag vill inte höra syntmusik,
inte festa som en tråkig mattegeek.
Vi ser ut som Televerket
i vår jättefula overall.
vi kan bara räkna kvarkar,
och nu hyllar vi Data med en skål!

||: Fysik är torrt, jag vill ju bort. :||

Einsteins gossar är vi alla,
Handels flickor kan vi aldrig få.
Går och tror att vi har ballar,
men det får bli för egen hand om det ska gå.
Nu ska hela Sing-Sing rivas,
arkitekt är med på Datas lag,
Televerket ska fördrivas
uppå Konsulatets ljuva domedag

||: Å nubbedrag, på denna dag. :||''',
        about: 'Gemensamt förkör inför en marskalkssittning på Lärarhögskolan hösten 2000 ledde till att Datasektionen skrev spexet som Fysiksektionen sedan framförde.',
      ),
      Song(
        title: 'Härjarevisan',
        author: 'Text: Hans Alfredson',
        melody: 'Melodi: Gärdebylåten',
        lyrics: '''Liksom våra fäder, vikingarna i Norden
drar vi landet runt och super oss under borden.
Brännvinet har blitt ett elixir för kropp såväl som själ.
Känner du dig liten och ynklig på jorden,
växer du med supen och blir stor uti orden,
slår dig för ditt håriga bröst och blir en man från hår till häl.

Ja, nu skall vi ut och härja,
supa och slåss och svärja,
bränna röda stugor, slå små barn och säga fula ord:
Fy fan! (Alternativt 'KTH!' eller så.)
Med blod skall vi stäppen färga,
nu änteligen lär jag
kunna dra nån verklig nytta av
min Hermodskurs i mord.

Hurra, nu ska vi äntligen få röra på benen
hela stammen jublar och det spritter i grenen.
Tänk, att än en gång få spränga fram på Brunte i galopp.
Din doft, o kära Brunte, är trots brist i hygienen
för en vild mongol minst lika ljuv som syrenen.
Tänk att på din rygg få rida runt i stan och spela topp.

Ja, nu skall vi ut och härja...

Ja, mordbränder är klämmiga, ta fram fotogenen,
eftersläckningen tillhör just de fenomenen
inom brandmansyrket som jag tycker det är nån nytta med.
Jag målar för mitt inre upp den härliga scenen:
blodrött mitt i brandgult. Ej ens prins Eugen en
lika mustig vy kan måla, ens om han målade med sked.

Ja, nu skall vi ut och härja...''',
        about: '''Ur Lundaspexet 'Djinghis Khan' 1954.''',
      ),
      Song(
        title: 'Auld Lang Syne',
        author: 'Text: Robert Burns',
        melody: 'Melodi: Scottish Air',
        lyrics: '''Should auld acquaintance be forgot,
and never brought to mind?
Should auld acquaintance be forgot,
and days of auld lang syne?

||: For auld lang syne my dear,
for auld lang syne:
We'll take a cup o'kindness yet,
for auld lang syne. :||

And there's a hand my trusty friend,
and gie's a hand o'thine.
We'll take a right gude willing draught,
for auld lang syne.

||: For auld... :||''',
        about: '',
      ),
      Song(
        title: 'Our Family',
        author: '',
        melody: 'Melodi: My Bonnie',
        lyrics: '''My father makes counterfeit money.
My mother brews synthetic gin.
My sister sells kisses to sailors.
My God how the money rolls in.
||: Rolls in, rolls in, my God how the money rolls in, rolls in :||

My aunt keeps a girls seminary.
She's teaching young girls to begin.
She doesn't say when they shall finish.
My God how the money rolls in.
||: Rolls in... :||

My brother's a slum missionary.
He's saving young girls from the sin.
He'll save you a blond for a shilling.
My God how the money rolls in.
||: Rolls in... :||

My uncle's a Harley Street surgeon.
With instruments long, sharp and thin.
He only knows one operation.
My God how the money rolls in.
||: Rolls in... :||

I've spent all the counterfeit money,
I've drunk all the synthetic gin,
I've been making love to my sister.
My God, what a mess I am in!
||: I'm in, I'm in, my God what a mess I am in, I'm in :||''',
        about: '',
      ),
      Song(
        title: 'Spritbolaget',
        author: '',
        melody: 'Melodi: Snickerboa',
        lyrics: '''Till spritbolaget ränner jag
och bankar på dess port.
Jag vill ha nåt som bränner bra
och gör mig skitfull fort.
Expediten sade goddag,
hur gammal kan min herre va?
Har du nåt leg, ditt fula drägg,
kom hit igen när du fått skägg.

Men detta var ju inte bra,
jag vill bli full i kväll.
Då plötsligt en idé fick jag,
de har ju sprit på Shell.
Flaskorna de stod där på rad,
så nu kan jag bli full och glad.
Den röda drycken rinner ner...

Drycken intages.

...nu kan jag inte se nåt mer.''',
        about: '',
      ),
      Song(
        title: 'Uti min mage',
        author: '',
        melody: 'Melodi: Uti vår hage',
        lyrics: '''Uti min mage en längtan mig tär,
kom hjärtans fröjd.
Där råder en hunger som ropar så här:
kom kryddsill och kall potatis,
kom brännvin och quantum satis,
kom allt som kan drickas,
kom hjärtans fröjd.

Uti min mage där växa begär,
kom hjärtans kär.
Vill du mig något så har jag det där.
Kom Renat och Aqua Vitae,
kom OP och allt vad sprit e',
kom ljuva Genever,
kom Överste.

Uti mitt hjärta en längtan mig tär,
kom hjärtans fröjd.
Där råder en hunger som ropar så här:
kom famnande lena armar,
kom läppar och sköna barmar,
kom fagraste kvinnor,
kom hjärtans fröjd.''',
        about: '',
      ),
      Song(
        title: 'Jag var full en gång',
        author: '',
        melody: 'Melodi: Flottarkärlek',
        lyrics: '''Jag var full en gång för länge sen,
på knäna kröp jag hem.
Varje dike var för mig ett vilohem.
I varje hörn och varje vrå
hade jag en liten vän,
ifrån renat upp till 96 procent, hemmabränt.

Jag var full en gång för länge sen,
på knäna kröp jag hem,
och i sällskap hade jag en elefant.
Elefanten spruta' vatten,
men jag trodde det var vin,
sedan dess har alla kallat mig för svin, mera vin!

Jag var full en gång för länge sen
på knäna kröp jag hem,
och i sällskap hade jag en elefant.
Elefanten spruta' vatten,
men jag trodde det var öl,
sedan dess har alla kallat mig för knöl, mera öl!

Jag var full en gång för länge sen,
på knäna kröp jag hem,
och i sällskap hade jag en elefant.
Elefanten spruta' vatten,
men jag trodde det var sprit
sedan dess har alla kallat mig för skit, mera sprit!''',
        about: '',
      ),
      Song(
        title: 'Bamsesången',
        author: 'Text: D-LTH, Sångarstriden 1987',
        melody: 'Melodi: Signaturmelodin till Bamse',
        lyrics: '''Jag skall festa, ta det lugnt med spriten.
Ha det roligt utan att va' full.
Inte krypa runt med festeliten,
ta det varligt för min egen skull.

Först en öl i torra strupen,
efter det så kommer supen,
i med vinet, ner med punschen,
sist en groggbuffé.

Jag är skitfull, däckar först av alla,
missar festen men vad gör väl de'.
Blandar hejdlöst öl och gammal filmjölk,
kastar upp på bordsdamen bredve'.

Först en öl...''',
        about: '',
      ),
      Song(
        title: 'Det var länge sen',
        author: '',
        melody: 'Melodi: Det var länge sen jag plocka\' några blommor',
        lyrics: '''Det var länge sen jag plocka' några tentor.
Det var länge sen jag tog några poäng.
Det var länge sen jag handla' på Systemet.
Det var länge sen jag fick en grabb i säng.
Men å andra sidan bränner jag ju hemma,
och klarar kärleken alldeles för mig själv.
Det var länge sen jag plocka' några tentor,
men å andra sidan går de om igen.''',
        about: '',
      ),
      Song(
        title: 'Dance macabre',
        author: '',
        melody: 'Melodi: Vårvindar friska',
        lyrics: '''Runt kring vår stuga, smådjävlar sluga
dansa så tyst med bockfot och svans.
Varulvar yla, isande kyla
sveper i dimman fanstygens dans.
Bäva o broder, lyssna och hör
vrålen från gast, som osalig dör.
Satan han skrattar, flaskan han fattar,
super tills dagen gryr.

Gastar och spöken, skymtar i kröken,
dödingar släpa ruttnande lik.
Benrangel skramla, spökhänder famla,
kväva din strupes rosslande skrik.
Helvetes alla fasor släpps loss.
Fan rider här med hela sin tross.
Göm dig i stugan, du har fått flugan.
Dille det blir din lott.
''',
        about: '',
      ),
      Song(
        title: 'Var rädd om din fyrfota vän',
        author: '',
        melody: '',
        lyrics: '''Var rädd om din fyrfota vän,
för en anka kan vara dess mamma.
Som simmar omkring i en damm
just när solen tittar fram,
och nu tror du att visan är slut
och det är den!
(Inte!)''',
        about: 'Kan upprepas nästan hur många gånger som helst...',
      ),
      Song(
        title: 'Nu vill jag supa',
        author: '',
        melody: '',
        lyrics: '''||: Nu vill jag supa nu me'ns jag lever,
när jag är död så kan jag inte mer. :||
När jag väl en gång ligger i mull,
kan jag väl inte supa mig full.
När jag väl en gång ligger i mull,
kan jag väl inte supa.

||: Nu vill jag gänga nu me'ns jag lever
när jag är död så kan jag inte mer. :||
När jag väl en gång ligger i mull,
kan jag väl inte få mig ett knull.
När jag väl en gång ligger i mull
kan jag väl inte gänga.

Damernas vers:
||: Nu vill jag suga nu me'ns jag lever,
när jag är död så kan jag inte mer. :||
När jag väl en gång ligger i mull,
kan jag väl inte suga munnen full.
När jag väl en gång ligger i mull,
kan jag väl inte suga.

Herrarnas vers:
||: Nu vill jag slicka nu me'ns jag lever,
när jag är död så kan jag inte mer. :||
När jag väl en gång ligger i mull,
kan jag väl inte lapa munnen full.
När jag väl en gång ligger i mull,
kan jag väl inte slicka.

||: Nu vill jag kramas nu me'ns jag lever,
när jag är död så kan jag inte mer. :||
När jag väl en gång ligger i mull,
kan jag väl inte få famnen full.
När jag väl en gång ligger i mull,
kan jag väl inte gosa.''',
        about: 'Under köns respektive verser är det andra könet tyst. De som också/istället föredrar det egna kön et sjunger även/istället under det andra könets vers',
      ),
      Song(
        title: 'Född i Norge',
        author: '',
        melody: 'Melodi: Oh my darling Clementine',
        lyrics: '''Född i Norge, bor i Sverige,
Danmark är mitt fosterland,
talar spanska som en jude,
för jag är en engelsman.

Full idag och full imorgon,
så ser livet ut för mig.
Jag ska aldrig svika flaskan,
jag skall aldrig gifta mig.

Och på min gravsten, på min gravsten,
ska det ristas på latin
att i kistan vilar stoftet
av ett jävla fyllesvin

Och alla maskar, alla maskar
de skall krypa i min kropp.
Och de ska bli så djävla fulla
att de aldrig hittar opp.''',
        about: '',
      ),
      Song(
        title: 'De som är nyktra',
        author: '',
        melody: 'Melodi: Du är den ende',
        lyrics: '''De som är nyktra
de har inget roligt,
de har bara ansvar
och inte nå't tjolitt-
anlej faderulla.
Men vi som är fulla
vi har bara kul, nästan jämt.

Det sägs att en mänska
kan va utan brännvin
det stämmer måhända
men se blott på den min
som pryder en absolutist
den är jävligt trist
därför så sjunger vi så,
liksom så:

De som är nyktra...''',
        about: '',
      ),
      Song(
        title: 'Eno',
        author: '',
        melody: 'Melodi: Staffan stalledräng',
        lyrics: '''Eno är en masochist,
vi slår honom så gärna.
Motorsåg och giftig kvist,
allt för den sjuka hjärna.
Inga skador synes än,
spikarna i huvudet de blänka''',
        about: '',
      ),
      Song(
        title: 'Siffervisan',
        author: '',
        melody: 'Melodi: Ritsch, ratsch, fillibom',
        lyrics: '''||: 1, 2, 75, 6, 7, 75, 6, 7, 75, 6, 7,
1, 2, 75, 6, 7, 75, 6, 7, 73,
107, 103, 102, 107, 6, 19, 27,
17, 18, 16, 15, 13, 19, 14, 17,
19, 16, 15, 11, 8, 47. :||''',
        about: 'Upprepas allt snabbare tills alla gett upp.',
      ),
      Song(
        title: 'Pelle Jöns',
        author: 'Text: Britt G. Hallqvist',
        melody: 'Melodi: Moster Ingeborg',
        lyrics: '''Det var en gång en daggmask som hette Pelle Jöns.
Han var så rädd för skator, han var så rädd för höns.
Han var så rädd för metare och letare med burk.
'Den som tar mask på kroken, den kallar jag en skurk!'

Så sa den lilla masken och borrade sig ner,
en meter under jorden och syntes inte mer.
I trädgården går metare och letare och höns.
De hittar många maskar, men ingen Pelle Jöns.''',
        about: '',
      ),
      Song(
        title: 'Moralvisa',
        author: '',
        melody: 'Melodi: Vem kan segla',
        lyrics: '''Den som dricker mer än han tål,
strax runt badrummet crawlar,
i sitt surplus av får i kål,
bland roll-onnar och tvålar.''',
        about: '',
      ),
      Song(
        title: 'Kalmarevisan',
        author: '',
        melody: '',
        lyrics: '''Uti Kalmare stad
ja, där finns det ingen kvast
förrän lördagen.
Hej dick
Hej dack,
jag slog i
och vi drack,
Hej dickom dickom dack,
hej dickom dickom dack.
För uti Kalmare stad,
ja, där finns det ingen kvast
förrän lördagen.

||: När som bonden kommer hem
kommer bondekvinnan ut :||
är så stor i sin trut.
Hej...

||: Var är pengarna du fått?
Jo, dom har jag supit opp :||
uppå Kalmare slott.
Hej...

||: Jag ska mäla dej an
för vår kronbefallningsman :||
och du ska få skam.
Hej...

||: Kronbefallningsmannen vår
satt på krogen igår :||
och var full som ett får.
Hej...''',
        about: '',
      ),
      Song(
        title: 'Drunken sailor',
        author: '',
        melody: '',
        lyrics: '''What shall we do with the drunken sailor,
what shall we do with the drunken sailor,
what shall we do with the drunken sailor,
early in the morning?
Hooray, up she rises,
hooray, up she rises,
hooray, up she rises,
early in the morning.

Put him in the longboat till he's sober...

Pull out the plug and wet him all over...

Put him in the bilge and make him drink it...

Put him in a leaky boat and make him bale it...

Put him in the scrubbers with the hosepipe on him...

Shave his legs with a rusty razor...

Keel haul him until he's sober...

Put him in a bed with the captains daughter...

That's what we'll do with the drunken sailor...''',
        about: '',
      ),
      Song(
        title: 'Balladen om den onyktre',
        author: '',
        melody: 'Melodi: När månen vandrar på fästet blå',
        lyrics: '''När jag är fuller då är jag glad,
fan vet om jag ej är vacker.
Jag vandrar kring i vår lilla stad,
ibland lyxhus och baracker.
Jag sjunger ljuvligt en serenad,
det gör jag bara när jag är glad
och full och vacker, och full och vacker.

När jag är fuller då är jag stark,
fan vet om jag ej är modig.
Då kan jag slå vem som helst i mark,
så han blir trasig och blodig.
Jag välter träden i våran park,
det gör jag bara när jag är stark
och full och modig, och full och modig.

När jag är fuller då är jag rik,
fan vet om jag ej är snille.
Och dör jag blir jag ett vackert lik,
begravs med gravöl och gille.
I himlen möts jag av hornmusik,
det gör man bara när man är rik
och är ett snille, och är ett snille.

Men när jag vaknar upp nästa dag,
uppå ett enkelrum med galler.
Då känner jag mig så rysligt svag,
och hatar bråk och kravaller.
min mage krånglar och är ur lag,
nog fan så vet jag att jag idag
är bakom galler, är bakom galler.

Damernas extravers: (Text: Emma Wibom)

När jag är fuller då är jag snygg,
fan vet om jag ej är stilig.
Då kan jag få vem som helst på rygg,
då kan jag få vemhelst villig!
Ja, alla gossarna får jag omkull,
det får jag bara när jag är full
och snygg och stilig, och snygg och stilig.''',
        about: '',
      ),
      Song(
        title: 'Vi som oss för att glupa satt',
        author: '',
        melody: 'Melodi: Vi gå över daggstänkta berg',
        lyrics: '''Vi som oss för att glupa satt, supa glatt,
ity den som försmå sin första tår, törsta får.
Av längtan vi tryckas,
av trängtan att lyckas,
vi nu med bravur häller ur, eller hur?

Vi ge titt och tätt strupen sitt, supen stritt
skall forsa och snart får tarmen vår, varm en tår.
Er öven i seder
och söven ned Eder.
På denna protestbullerfest, full är bäst.''',
        about: '',
      ),
      Song(
        title: 'Störthärligt full',
        author: '',
        melody: 'Melodi: Fat Mammy Brown',
        lyrics: '''Nu har alla lämnat festen
och jag sitter ensam kvar
ibland groggar, pilsnerflaskor
i en sönderslagen bar.
Sista pilsnerflaskan tog jag
till min frukost klockan fem
och nu sitter jag och väntar
på att få bli buren hem.

För jag är störthärligt full
och jag ramlar mest omkull.
Jag ser skära elefanter
som har jättekonstig ull.
Ja, jag är störthärligt full
och jag ramlar mest omkull.
Det är präktigt, härligt,
supa och va' full.

Ifrån festen minns jag inget,
men mitt öga blev visst blått.
Och det måste jag ha fått
när någon kastat en karott
full med vispgrädde och fimpar
och en okammad peruk,
eller också när jag stod
i moraklockan och var sjuk.

För jag är...

Nästa morgon när jag vaknar
med en bergsborr i min kropp.
Sandpapper på tungan
och jag vill ej stiga opp.
Mina armar dom känns tunga
och min näsa den är sne'.
Så jag raglar ut till köket
för en återställare.

För jag är...''',
        about: '',
      ),
      Song(
        title: 'Lyft ditt välförsedda glas',
        author: '',
        melody: 'Melodi: Ding Dong Merrily on High',
        lyrics: '''Lyft ditt välförsedda glas
det är en ljuvlig börda,
nu har grabbarna kalas,
och vi skall segern skörda!
Ding, dinge-dinge-ding
dinge-dinge-ding
dinge-dinge-ding, dong-dong,
i morgon är det lördag.

Lyft nu glaset till din mun,
se, döden på dig väntar!
Nu har grabbarna kalas,
hör, liemannen flämtar!
Ding, dinge-dinge-ding
dinge-dinge-ding
dinge-dinge-ding, dong-dong.
Begravningsklockor klämtar.''',
        about: '',
      ),
      Song(
        title: 'Sakta det går med banan',
        author: 'Text: Torbjörn H, Mats T, Peo K och Lennart H.',
        melody: 'Melodi: Sakta vi gå genom stan',
        lyrics: '''Å, det är skönt
att med frukter och grönt
uppnå ett djupare plan.
Jag vet ett sätt
då man inte blir mätt,
men ändå rätt nöjd med banan.
Det finns dom som säger
att endast vi tjejer
kan uppskatta morotens form.
Men grönsaker kan
vara svåra ibland,
ta pumpan - den är ju enorm!

Jag har gjort försök
med kålrot och lök,
men det kliar och svider som fan.
En ärta, javisst,
men det blir rätt trist,
nej, ingenting slår min banan!

En köttkorv är nog
både nyttig och god,
men såsen gör magen så rund...
Nej, grönt ska det va',
tänk, så skönt att få ha
med gurka en ljuv herdestund!

Jag har testat kiwi,
men den var för rivig,
nej, ta av bananen dess skal!
För då har jag känt
att dess friktionsko'ff'cient
har blivit för mig optima-al!

Banan, vilken grej!
Bra för mig som är tjej!
Jag är ju ve-ge-tarian!
Med skal eller ej,
jag vill ha den i mig.
Sakta det går med banan...
Sakta det går med banan...''',
        about: 'Lantmäterisektionens bidrag i Sångartäflan 1987.',
      ),
      Song(
        title: 'Nikolajevs längtan',
        author: '',
        melody: 'Melodi: Ryska nationalsången',
        lyrics: '''Mitt namn är Nikolajev, kosmonaut ifrån Sovjet.
Jag åker runt jorden i min rymdraket,
men drabbats jag har av en olycka stor,
för jag glömde gå på muggen innan jag for

Jag längtar hem, till mitt fosterland igen,
till mor och far uti Sovjetien,
men mest utav allt så längtar jag till
en röd liten stuga med hjärta på dörr'n!
Jag längtar hem!''',
        about: '11-15 augusti 1962 flög Andrian Nikolajev 64 varv runt jorden i Vostok 3.',
      ),
      Song(
        title: 'Sista dansen',
        author: '',
        melody: '',
        lyrics: '''Om han skulle dansa sista dansen med mig,
som jag tror att han gör,
han har gjort så en gång förr,
så får han inte följa mig till porten i kväll.
Det lovar jag dig,
det lovar jag min mamma och det lovar jag dig.

Men om han skulle följa mig till porten i kväll...
så får han inte följa mig på rummet i kväll...

Men om han skulle följa mig på rummet i kväll...
så får han inte sätta sig på sängen med mig...

Men om han skulle sätta sig på sängen med mig...
så får han inte krypa under fällen med mig...

Men om han skulle krypa under fällen med mig...
så får han inte röra kussimurran på mig...

Men om han skulle röra kussimurran på mig...
så får han inte ränna sturske Laban i mig...

Men om han skulle stoppa sturske Laban i mig...
så får han inte släppa stora satsen i mig...

Men om han skulle släppa hela satsen i mig...
så får han inte göra små små flickebarn med mig...

Men om han skulle göra små små flickebarn med mig...
så får det inte bli någon 25-örestjej...

Men om det skulle bli någon 25-örestjej...
så får hon inte kallas kåta Lisa efter mig...

Men om hon skulle kallas kåta Lisa efter mig...
så får hon inte stjäla några kunder av mig...

Men om hon skulle stjäla några kunder av mig...
så får hon inte dansa sista dansen med dig...''',
        about: '',
      ),
      Song(
        title: 'Somnarvisa',
        author: '',
        melody: 'Melodi: Idas sommarvisa',
        lyrics: '''Du ska inte tro du får somna
när spriten har satt lite fart.
Om armar och ben börjar domna
så börjar vi dansa såklart!
Och när jag har fångat dig i min famn
så släpper jag inte mitt grepp.
Jag älskar dig, fast jag har glömt ditt namn
jag håller, fast du skriker 'Släpp!\'''',
        about: '',
      ),
      Song(
        title: 'I ett hus vid skogens slut',
        author: '',
        melody: '',
        lyrics: '''I ett hus vid skogens slut,
liten tomte tittar ut.
Haren skuttar fram så fort,
klappar på dess port.
Hjälp ack, hjälp ack, hjälp du mig,
annars skjuter jägarn mig.
Kom, ja, kom i stugan in,
räck mig handen din.''',
        about: '',
      ),
      Song(
        title: 'Katta vore',
        author: '',
        melody: 'Melodi: Du ska få min gamla cykel när jag dör',
        lyrics: '''Katta vore hon ha onge unner lon, unner lon.
Katta vore hon ha onge unner lon, unner lon.
Snälla pappa ta en häschitro
å peta fram kattonga,
ta å peta fram kattonga jer du bra, pappa du.

Pappa to en häschjestang å peta fram, allihop.
Pappa to en häschjestang å peta fram, allihop.
En var grön å svart å brokut
å den ann va alldeles tokut,
tredje ongen han va alldeles kall å slö
för han va dö.

Pappa han ha hormoslyr å DDT, oppå lon.
Pappa han ha hormoslyr å DDT, oppå lon.
He had fyrä jörning golva
på na konstit märklit vis,
he jer väl trolit he va därför eint dom vor
som dom skull''',
        about: 'Ska sjungas på arvidsjaursbondska.',
      ),
      Song(
        title: 'Min häst',
        author: 'Text: Lasse Åberg',
        melody: '',
        lyrics: '''Min häst den har gula öron,
och vita små skor av trä.
Röda strumpor till knät,
han är ganska fet,
med blåa små vingar under magen.''',
        about: '',
      ),
      Song(
        title: 'Jag är en liten undulat',
        author: '',
        melody: 'Melodi: Med en enkel tulipan',
        lyrics: '''Jag är en liten undulat
som får så dåligt med mat.
För dom jag bor hos, för dom jag bor hos
dom är så snåla.
Dom äter sill, varenda da',
det vill jag rakt inte ha.
Jag vill ha brännvin, jag vill ha brännvin
så jag får skåla.''',
        about: '',
      ),
      Song(
        title: 'A long time ago',
        author: '',
        melody: 'Melodi: Schuberts Marche Militaire',
        lyrics: '''A long time ago in a small town in Germany
there was a shoemaker, Shoemaker was his name.
He could play the violin, violin, violin
he could play the violin, vio-violin.

A long time ago...
He could play the trombone...

A long time ago...
He could play the piccolo...

A long time ago...
He could play the el-guitar...

A long time ago...
He could play the bloody fool...''',
        about: '',
      ),
      Song(
        title: 'Lille Olle',
        author: 'Text: Calle Isaksson',
        melody: 'Melodi: Katjuscha',
        lyrics: '''Lille Olle skulle gå på disco,
men han hade inte någon sprit.
Lille Olle skaffa' lite hembränt,
lille Olle gick då på en nit.

La lalla la la la...

Lille Olle skulle börja festa,
spriten blandade han ut med Mer.
Lille Olle drack upp hela bålen,
lille Olle ser nu inte mer.

La lalla la la la...

Lille Olle skaffade en ledhund,
den var ful, men även ganska trind.
Olles ledhund drack upp femton flaskor,
Olles ledhund är nu också blind.

La lalla la la la...

Lille Olle började med droger,
blandade sin LSD med juice.
Lille Olles hjärna står i lågor,
lille Olle dog av överdos.

La lalla la la la...

Lille Olle sitter nu i himlen,
festa kan man även göra där.
Lille Olle skaffade en ölback,
capsar nu med Gud och Sankte Per.

La lalla la la la...''',
        about: 'Skrevs 1991 då textförfattaren gick D-linjen på LiTH.',
      ),
      Song(
        title: 'Det var i vår ungdoms fagraste vår',
        author: '',
        melody: '',
        lyrics: '''Det där det gjorde han/hon/de fan så bra,
en skål uti botten för honom/henne/de (nu) vi ta.
Hugg i och dra - hej!
Hugg i och dra - hej!
En skål uti botten för honom/henne/dem (nu) vi ta.
Alla så dricka vi nu NN till,
och NN han säger inte nej därtill.
Det var i vår ungdoms fagraste vår,
vi drack varandra till, och vi sade gutår!''',
        about: 'Sjunges som tack för något berömvärt.',
      ),
      Song(
        title: 'Raj, raj',
        author: '',
        melody: 'Melodi: Elvira Madigan',
        lyrics: '''Om vi inga texter kunna
sjunga vi blott dessa ord:
Raj, raj, raj, raj, raj, raj, raj, raj,
raj, raj, raj, raj kring vårt bord''',
        about: '',
      ),
      Song(
        title: 'Lingonben',
        author: 'Text: Povel Ramel',
        melody: 'Melodi: Povel Ramel',
        lyrics: '''Bluff och Spark och Tork och Kvark
voro sex små dvärgar.
En var ful och en var glad
och en var dum i huv'et.
Hej, sa' Kvark till lille Tork,
känner du igelkotten Pilt?
Han som har varit i Paris?
Ja, det gjorde Ivar.
Hör du hans lilla runda tass
när som han trippar på sitt pass;
Tripp och trapp och trypa,
se hans lilla faster.

Tomtefar i skogens brus
sitter som ett päron.
Han har inget eget hus
allt i sin stora näsa.
Söt och blöt är skogens fé,
trollen är bjudna hit på te.
Det lilla trollet! Pass för de'!
Nu skall mormor bada!
Väva och spinna natten lång,
prinsen är här i fjorton språng!
Hopp och hipp och häppla.
Hästen heter Sverker.

Stora slottet Drummeldimp
ligger bortom fjärran.
Dit får ingen komma in
som ej kan baka struvor.
Gyllenkrull och Sockertipp,
kom, ska vi dansa häxan våt.
Vill du mig här, så har du nå't.
 Sov du lilla tryne.
Kungen är full av stock och sten.
Skogen är full av lingonben.
Per är full av tomtar,
hur skall Lillan orka?''',
        about: '''Även känd under titeln 'Nonsensvisa'.''',
      ),
      Song(
        title: 'Hoppe Hoppe Hare',
        author: '',
        melody: 'Melodi: Imse vimse spindel',
        lyrics: '''Hoppe Hoppe Hare satt och mumsa bär
klappa sig på magen, 'det va' gott de' här'.
Fram smyger räven, tänker Hoppe ta,
men Hoppe Hoppe Hare hoppar ju så bra.

Hoppe Hoppe Hare hoppa' in i sten
stuka lilla tassen, bröt sitt långa ben.
Fram smyger räven, knäcker Hoppes hals.
Hoppe Hoppe Hare hoppar inte alls.''',
        about: '''Vid 'bröt' och 'knäcker' kan man t.ex. bryta sönder plastbesticken.''',
      ),
      Song(
        title: 'Solen',
        author: '',
        melody: 'Melodi: Camptown Races',
        lyrics: '''Solen den går upp och ner, doda doda.
Jag skall aldrig supa mer, hej doda dej.
Hej doda dej, hej doda dej.
Jag skall aldrig supa mer, hej doda dej.

Men detta det var inte sant, doda doda.
I morgon gör jag likadant, hej doda dej.
Hej doda dej, hej doda dej.
I morgon gör jag likadant, hej doda dej.''',
        about: '',
      ),
      Song(
        title: 'En kulen natt',
        author: '',
        melody: '',
        lyrics: '''En kulen natt-natt-natt, 
min båt jag styrde
på havets vågade-vågade-våg,
 så skummet yrde.
Och vart jag sågade-sågade-såg
på havets vågade-vågade-våg
långt ner i djupete-pete-pete-pet
en fisk jag såg och det var du!''',
        about: '',
      ),
      Song(
        title: 'Tårtan',
        author: '',
        melody: '',
        lyrics: '''Socker, grädde, nötter och mandelflarn.
Och så sist, men inte minst:
en liten ros av marsipan.
Smörkräm, krikon, snabbkräm och gott gelé.
Frasses deg och en flaska saft
och så en liten klick med sylt.''',
        about: '',
      ),
      Song(
        title: 'Älsk me gullong',
        author: '',
        melody: 'Melodi: Love me tender',
        lyrics: '''Älsk mä Gullong, hall mä hart,
krama heile mäg.
Bloon män fa sån himla fart
se fort i sej på däg.
Älsk mä Gullong, kan eint vänt,
känn se varm i jer.
I jer eint skakkerhent,
i jer bara kär.

Älsk mä Gullong, älsk mä fort,
du hav hjärte mett.
Live jer ju alltför kort,
djiv mä hjärte dett.
Älsk mä Gullong, kom-kom-kom
lett natta vahl deill dag.
Ork vä eint da böri vä om,
sä vihl vä oss ett tag.

Älsk mä Gullong, älsk mä nöuv,
tro du att i löög.
He feinns eingen ann än döuv,
i älsk dä deill i döö.
Älsk mä, snart jer he för saint,
tjänn vå i vibrer.
I jer eint skakkerbaint,
i jer bara kär.''',
        about: '',
      ),
      Song(
        title: 'Skånsk madavisa',
        author: '',
        melody: 'Melodi: Aspelöv och lindelöv',
        lyrics: '''Rabbemos å spegefläsk, panntofflagröd med knudor,
fläskasvålar, grisatassar, prinsakorv me snudor,
fittemadar, sillarumpor, sylta me röbedor,
äggakaga, revbensspjäll.

Luad ål, å rögad ål, å ål som di har halmad,
kogad ål, å stegad ål, å ål i gelantin,
ålasluring, ålapudding, ål me chokelasås,
rutten ål, å ål i kål.

Hussegröd å puggavälling, kläggefläsk me bläror,
tösaflabbar, flinerumpor, pattagris me päror,
glyttanäsor, hunnarövar, lommemög me hylle,
mormor Karnas hönsafjäs.

Sillasupen, ålasupen, supen till sardellen,
fläskasupen, rabbesupen, suparna till spjällen,
gåsasupen, äggasupen, suparna till supen,
å till sist en kagesup.

Spiddekaga, kransakaga, flarn å mazariner,
sockerkaga, butterkaga, nötter och praliner,
risengröd me vispegrädde, punsch å karameller.
Sen e de dags för nattamad!!!

Skål!''',
        about: '',
      ),
      Song(
        title: 'Helan går',
        author: '',
        melody: '',
        lyrics: '''Helan går,
sjung hopp, faderallanlallanlej.
Helan går,
sjung hopp, faderallanlej.
Och den som inte helan tar
han heller inte halvan får
Helan går!
Sjung hopp, faderallanlej!''',
        about: '',
      ),
      Song(
        title: 'Hell and Gore',
        author: '',
        melody: 'Melodi: Helan går',
        lyrics: '''Hell and Gore,
chung hop father Allan-Allan-ley.
Hell and Gore,
chung hop father Allan-ley.
Oh, handsome in the hell and tar
and hell are in the half and four.
Hell and Gore,
chung hop father Allan-ley.
''',
        about: '',
      ),
      Song(
        title: 'Alla tallarna',
        author: 'Text: Lars T. Johansson och Ehrling Eliasson',
        melody: '',
        lyrics: '''Alla tallarna, alla tallarna, alla stora, alla små!
Alla tallarna, alla tallarna, ska vi koka 'rännvin på!
Alla tallarna, alla tallarna, ifrån roten till dess topp,
Alla tallarna, alla tallarna, ska vi ta och 'ricka opp!
Skål!''',
        about: '',
      ),
      Song(
        title: 'Måsen',
        author: '',
        melody: 'Melodi: När månen vandrar',
        lyrics: '''Det satt en mås på en klyvarbom
 och tom i krävan var kräket.
 Och tungan lådde vid skepparns gom
 där han satt uti bleket.
 Jag vill ha sill hördes måsen rope
 och skepparn svarte: jag vill ha OP
 om blott jag får, om blott jag får.
 
 Nu lyfter måsen från klyvarbom
 och vinden spelar i tågen.
 OP:n svalkat har skepparns gom,
 jag önskar blott att jag såg en.
 Så nöjd och lycklig den arme saten,
 han sätter storsegel den krabaten,
 till sjöss han far och halvan tar!
 
 Nu månen vandrar sin tysta ban
 och tittar in i kajutan.
 Då tänker jag att på ljusa da'n
 då kan jag klara mig utan.
 Då kan jag klara mig utan måne,
 men utan Renat och utan Skåne,
 det vete fan, det vete fan.
 
 Den mås som satt på en klyvarbom,
 den är nu död och begraven,
 och skepparn som drack en flaska rom,
 han har nu drunknat i haven.
 Så kan det gå om man fått för mycket,
 om man för brännvin har fattat tycke.
 Vi som har kvar, vi resten tar.''',
        about: '',
      ),
      Song(
        title: 'JASen',
        author: '',
        melody: 'Melodi: När månen vandrar på fästet blå',
        lyrics: '''Och JASen styrde mot Västerbron,
 men styrsystemet var trasigt.
 Piloten utsköt sig med kanon
 för planet vingla' så knasigt.
 Han ville uppåt, han ville mer
 men planet svarte: 'Jag vill ju ner
 mot alla hjon, på Västerbron.\'''',
        about: 'Skriven av dadderiet vid Datasektionen, KTH, i samband med n0llningen 1993.',
      ),
      Song(
        title: 'I Norrland',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''I Norrland växer det tallar höga,
 att de är höga det båtar föga.
 För en gång faller de än' omkull,
 allt för den eviga törstens skull!''',
        about: '',
      ),
      Song(
        title: 'Mera brännvin',
        author: '',
        melody: 'Melodi: Internationalen',
        lyrics: '''Nu är det dags att taga supen,
 den stärker varje svag fysik.
 Den rinner ner igenom strupen,
 river gott som en tolvtums spik.
 
 Den är vårt hopp mot gula faran,
 vår tröst vid varje bleklagd sorg.
 Den stärker oss mot mask i magen,
 starkare än Sveaborg.
 
 Mera brännvin i glasen,
 mera glas på vårt bord,
 mera bord på kalasen,
 mer kalas på vår jord.
 
 Mera jordar kring månen,
 mera månar kring mars,
 mera marscher till Skåne,
 mera Skåne gud bevars!''',
        about: '',
      ),
      Song(
        title: 'För brännvin är jädrans gott',
        author: '',
        melody: 'Melodi: Här kommer Karl-Alfred Boy',
        lyrics: '''För brännvin är jädrans gott.
 Blir bättre ju mer man fått.
 Men går man i golvet
 så där framåt tolv-ett
 så slår man sig jävligt hårt.''',
        about: '',
      ),
      Song(
        title: 'Livet är härligt',
        author: '',
        melody: 'Melodi: Röda kavalleriet',
        lyrics: '''Livet är härligt!
 Tavaritj, vårt liv är härligt!
 Vi alla våra små bekymmer glömmer
 när vi har fått en tår på tanden, skål!
 
 Ta dig en vodka!
 Tavaritj, en liten vodka!
 Glasen i botten vi tillsammans tömmer,
 det kommer mera efter hand. En skål!
 
 Fingret i halsen!
 Tavaritj, ett stick i halsen!
 Magen på golvet vi tillsammans tömmer
 det kommer mera efter handen - skål!''',
        about: '''Från Chalmersspexet 'Katarina II' 1959. Ett tillägg från den finlandssvenska studentföreningen Spektrum:''',
      ),
      Song(
        title: 'När jag kom hem från gärdet',
        author: '',
        melody: 'Melodi: Gärdesvisan',
        lyrics: '''När jag kom hem från gärdet
 så tog jag mig en knorr,
 för kläderna var våta,
 men strupen den var torr.
 ||: Och jag tänkte liksom så,
 det är bäst att blöta på,
 för strupen torkar fortare än kläderna ändå! :||''',
        about: '',
      ),
      Song(
        title: 'Ingen har det så bra',
        author: '',
        melody: 'Melodi: Kväsarevalsen',
        lyrics: '''För ingen har det så bra som jag,
 nej, ingen har det så bra som jag.
 Förutom bror min, så vitt jag vet,
 som ligger i sprit uppå Riksmuse't.''',
        about: '',
      ),
      Song(
        title: 'Rattataa',
        author: '',
        melody: '',
        lyrics: '''Att dricka brännvin är en sed
 som ingen har oss lärt.
 Från början vi ej kunde
 men det var blott temporärt.
 
 Vi lärde oss så småningom
 det var nog värt besvär't.
 Titilurenbom, tutidalenpang.
 Det var nog värt besvär't.
 
 Rattataa, så tar vi oss en tuting.
 Rattataa, med mycket brännvin i.
 Rattataa, ratatataa
 dricka brännvin gillar jag
 för jag blir så full och glad.''',
        about: '',
      ),
      Song(
        title: 'Magen brummar',
        author: '',
        melody: 'Melodi: Broder Jakob',
        lyrics: '''Magen brummar, jag försummar
 hälla dit mera sprit.
 Nu så ska vi dricka,
 så att vi får hicka,
 mera sprit, akvavit.''',
        about: '',
      ),
      Song(
        title: 'Hej på er bröder alla',
        author: '',
        melody: '',
        lyrics: '''Hej på er bröder alla,
 nu ska vi supa till dess vi falla
 och brännvinslitern, den är för liten,
 den är för liten för oss alla.
 
 Å en gång när jag är döder
 och lagd mellan tvenne bröder,
 begrav mig, begrav mig,
 i en brännvinskällare på Söder.
 
 Å på min gravsten ska det stå ristat
 med tvenne små enkla rader:
 Här vilar det en fyllebror
 som alltid var så god och glader.
 Ja, här vilar det en fyllebror
 som alltid var så glad och goder.''',
        about: '',
      ),
      Song(
        title: 'Supvisa',
        author: '',
        melody: 'Melodi: Elvira Madigan',
        lyrics: '''Vad kan menas då man säger
 livets glädje flyktig är?
 Jo, den jäkeln ångtryck äger,
 nubben som dig väntar här.
 
 Låt den därför inte vänta:
 var sekund en dunst går bort.
 Denna negativa ränta
 bör vi stoppa som ett skott.''',
        about: '',
      ),
      Song(
        title: 'Imbelupet',
        author: '',
        melody: 'Melodi: Kors på Idas grav',
        lyrics: '''Imbelupet glaset står på bräcklig fot.
 Tomma pilsnerflaskor luta sig därmot.
 Men där nere, miserere,
 uti magens dunkla djup,
 sitter djävulen och väntar på en sup!
 
 ...uti magens mörka valv,
 sitter djävulen och väntar på en halv!
 
 ...uti magen härs och tvärs,
 sitter djävulen och väntar på en ters!
 
 ...uti magen tom och svart,
 sitter djävulen och väntar på en kvart!
 
 ...uti magens labyrint,
 sitter djävulen och väntar på en kvint!
 
 ...uti magens slingerväxt,
 sitter djävulen och väntar på en sext!
 
 ...uti magen halvuppknäppt,
 sitter djävulen och väntar på en sept!
 
 ...uti magen an och av,
 vankar själve fan och väser på oktav!
 
 ...sitter allas våran far,
 det är Fan och han vill ha det som är kvar!''',
        about: '',
      ),
      Song(
        title: 'Än en gång däran',
        author: 'Text: Evert Taube',
        melody: 'Melodi: Evert Taube',
        lyrics: '''Än en gång däran, bröder! Än en gång däran!
 Följom den urgamla seden!
 Intill sista man, bröder, intill sista man,
 trotsa vi hatet och vreden!
 Blankare vapen sågs aldrig i en här,
 än dessa glasen, kamrater: I gevär!
 Än en gång däran, bröder! Än en gång däran!
 Svenska hjärtans djup - här är din sup!
 
 Livet är så kort, bröder! Livet är så kort!
 Lek det ej bort, nej var redo!
 Kämpa mot allt torrt, bröder! Kämpa mot allt torrt!
 Tänk på de gamle som skredo
 fram utan tvekan i floder av champagne,
 styrkta från början av brännvin från vårt land!
 Kämpa mot allt torrt, bröder! Kämpa mot allt torrt!
 Svenska hjärtans djup - här är din sup!''',
        about: 'Skrevs i början av 1930-talet.',
      ),
      Song(
        title: 'Fordom gällde lagen',
        author: 'Text: Bosse Österberg',
        melody: 'Melodi: Kors på Idas grav',
        lyrics: '''Fordom gällde lagen: 'Den som spar, han har!'
 Mottot är för dagen: 'Lämna inget kvar!'
 Töm i botten fyllda måtten,
 ej som skotten, slatten spar.
 Annars utav potten Staten halvan tar!''',
        about: '',
      ),
      Song(
        title: 'Vikingen',
        author: '',
        melody: 'Melodi: When Johnny comes marching home',
        lyrics: '''En viking älskar livets vann,
 hurra, hurra!
 Den hastigt i mitt svalg försvann,
 hurra, hurra!
 Till kalv, till oxe, till fisk, till fläsk,
 när kärringar bara dricker läsk.
 Ja, då vill alla vikingar ha en bäsk.
 
 När bäsken småningom är slut,
 tragik, tragik
 Då bäres varje viking ut
 som lik, sig lik.
 Och se'n, om vi vaknar, vi sjunger en bit,
 se'n korkar vi upp Skånes Aquavit.
 Skål för alla vikingar som kom hit!''',
        about: '',
      ),
      Song(
        title: 'En gång i måna\'n',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''En gång i måna'n är månen full,
 aldrig jag sett honom ramla omkull.
 Stum av beundran hur mycket han tål,
 höjer jag glaset och säger nu skål.
 
 Höjer nu glasen och dricker ur.
 Nu kära bröder, står halvan i tur.
 Nubben den giver oss ny energi,
 säkert den minskar vårt livs entropi.''',
        about: '',
      ),
      Song(
        title: 'Törsten rasar',
        author: '',
        melody: 'Melodi: Längtan till landet',
        lyrics: '''Törsten rasar uti våra strupar.
 Tungan hänger torr och styv och stel.
 Men snart vankas stora långa supar
 var och en får sin beskärda del.
 Snapsen kommer, den vi vilja tömma,
 denna nektar likt Olympens saft.
 Kommer oss att våra sorger glömma
 snapsen skänker hälsa, liv och kraft.
 
 Fordom odlade man vindruvsranka,
 av vars frukt man gjorde ädelt vin.
 Nu man pressar saften ur en planka,
 doftande av äkta terpentin.
 Höj nu bägaren, o bröder och systrar,
 låt den svenska skogen rinna kall,
 ned i strupen, och om du är dyster:
 Låt oss dricka upp en liten tall!
 
 Helan tänder helig eld i själen
 halvan rosar livet som en sky.
 Tersen känns från hjässan ner i hälen
 kvarten gör en som en mänska ny.
 Låt oss skåla med varann go' vänner,
 skål för våran levnads glada hopp.
 Törstens eld på nytt i strupen bränner.
 Leva livet! Skål och botten opp!''',
        about: '',
      ),
      Song(
        title: 'Får jag lov?',
        author: '',
        melody: 'Melodi: Räven raskar över isen',
        lyrics: '''Han: ||: Första snapsen heter göken :||
 Säg, får jag lov? Säg, får jag lov,
 att byta byxor med fröken?
 
 Hon: ||: Andra snapsen den var värre :||
 Säg, får jag lov? Säg, får jag lov, 
 att byta byxor med min herre?
 
 Han: Mina byxor är himmelsblå, 
 men med dina är det si och så.
 Alla: Säg, får vi lov?
 Säg, får vi lov,
 att byta byxor med göken?''',
        about: ''''Byta byxor' är sannolikt en bisarr felhörning av 'dricka du-skål', vilket var nog så viktigt på den tiden då det begav sig.''',
      ),
      Song(
        title: 'En visa till septen',
        author: '',
        melody: 'Melodi: Nu skall vi skörda linet idag',
        lyrics: '''Nuskaviklämmaseptengutår,
 sjungaentrudeluttomdetgår,
 tjosanmohammedsnartärdetvår,
 julaftonärenfredag.
 Klunkklunkklunkklunkklunkklunk,
 blandaochgeblandaochge,
 abrakadabraklunk,
 julaftonärenfredag.''',
        about: '',
      ),
      Song(
        title: 'Venngarn',
        author: '',
        melody: 'Melodi: Kors på Idas grav',
        lyrics: '''Säg, vad vore livet utan alkohol?
 För ju mer man dricker, desto mer man tål.
 Venngarn väntar på oss alla,
 vi ska mötas där en dag,
 med försupna och förvridna anletsdrag.
 
 Varför sörja nu för det som komma skall?
 Lev för ruset när du salig är och knall!
 Tids nog börjar ögat vattnas,
 handen darra, kran blir blå,
 men det ska supas ur ändå, spill på, spill på!''',
        about: '',
      ),
      Song(
        title: 'Denna thaft',
        author: '',
        melody: 'Melodi: Helan går',
        lyrics: '''Denna thaft, den bästa thaft thythtemet haft.
 Denna thaft är den bätha thaft dom haft.
 Och den thom inte har nån kraft
 han dricka thkall av denna thaft.
 denna thaft, till landth, till thjöth, till havth!''',
        about: '',
      ),
      Song(
        title: 'Amanda',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Amanda gångar sig ner i lunden,
 där får hon se att en ko står bunden.
 Amanda gångar sig hem igen,
 slår upp en nubbe och sveper den.''',
        about: '',
      ),
      Song(
        title: 'Fillibrännvinbom',
        author: '',
        melody: 'Melodi: Ritsch, ratsch, fillibom',
        lyrics: '''Brännvin fillibom-bom-bom
 är en härlig dryck för en törstig gom.
 Brännvin fillibom-bom-bom
 är mitt livs potatis-jom.
 Ett litet barn vid flaskan redan blivit van.
 Det sitter i, till dess vi gamla bli.
 Så följ de gamla lagarna,
 drick något starkt om dagarna,
 för det är bra för magarna
 och stärker vår aptit.
 ''',
        about: '',
      ),
      Song(
        title: 'Mitt lilla lån',
        author: '',
        melody: 'Melodi: Hej, tomtegubbar',
        lyrics: '''||: Mitt lilla lån det räcker inte
 det går till öl och till brännvin. :||
 Till öl och brännvin går det åt,
 och till små flickor emellanåt.
 Mitt lilla...''',
        about: '',
      ),
      Song(
        title: 'Till supen tager man sill',
        author: '',
        melody: 'Melodi: Vi gå över daggstänkta berg',
        lyrics: '''Till supen så tager man sill, fallera,
 men också ansjovis, om man vill, fallera.
 ||: Och om man är oviss, om sillen är ansjovis,
 så tar man bara några supar till, fallera. :||''',
        about: '',
      ),
      Song(
        title: 'Vodka, vodka',
        author: '',
        melody: 'Melodi: Stenka Razin',
        lyrics: '''Vodka, vodka vill jag dricka,
 jag vill äta kaviar.
 ||: Jag vill älska russkij flicka.
 Jag vill spy i samovar. :||
 
 Uppi taket går en gädda
 med långa ludna svarta ben.
 ||: Men ni ska inte vara rädda,
 tag en sup och allt går väl! :||
 
 Vita möss som går i taket
 råma hest och trilla ned.
 ||: Men ni ska inte vara rädda,
 tag en sup och allt går väl! :||
 ''',
        about: '',
      ),
      Song(
        title: 'Humlorna',
        author: '',
        melody: 'Melodi: Här kommer Karl-Alfred Boy',
        lyrics: '''||: Vi äro små humlor vi, bzz-bzz, :||
 vi äro små humlor som tar oss en geting.
 Vi äro små humlor vi, bzz-bzz!
 
 ||: Vi äro små fiskar vi, blubb-blubb, :|| 
 vi äro små fiskar som tar oss en kallsup.
 Vi äro små fiskar vi, blubb-blubb!
 
 ||: Vi äro små änglar vi, flax-flax, :|| 
 vi äro små änglar som tar oss en djävel.
 Vi äro små änglar vi, flax-flax!''',
        about: '',
      ),
      Song(
        title: 'Om cykling med mera',
        author: 'Text: Povel Ramel',
        melody: 'Melodi: Väva vadmal',
        lyrics: '''Man cyklar för lite',
 man röker för mycke'
 och man är fasen så liberal
 när det det gäller maten och spriten.
 Jag borde slutat för länge sen 
 men denna sup är så liten.
 Vad tjänar att hyckla?
 Tids nog får man cykla.
 (En tredjedel drickes ur.)
 
 Man badar för lite',
 man röker för mycke'
 och man är...
 Det kan inte skada.
 Tids nog får man bada.
 (Nästa tredjedel drickes ur.)
 
 Man sover för lite',
 man röker för mycke'
 och man är...
 Njut var gudagåva!
 Tids nog får man sova.
 (Sista tredjedelen drickes ur.)
 Ja, det vill jag lova!''',
        about: '',
      ),
      Song(
        title: 'Cykelhandlarens visa',
        author: '',
        melody: '',
        lyrics: '''Åh, hoj!''',
        about: '',
      ),
      Song(
        title: 'Tjugotre',
        author: '',
        melody: 'Melodi: Amanda Lundbom',
        lyrics: '''Tjugotre är Beska Droppar,
 bomfaderi, bomfaderaderalla.
 Skänker liv åt döda kroppar,
 bomfaderi, faderallanlej.
 Slå en sup i död mans kropp,
 bomfaderi, faderallanlej. Hugg i!
 Så stapplar han ur graven opp,
 bomfaderi faderallanlej.
 
 Jesus visste att de döda,
 bomfaderi, bomfaderaderalla,
 Kunde väckas utan möda,
 bomfaderi faderallanlej.
 Beska Droppar nyttja' han,
 bomfaderi, faderallanlej. Hugg i!
 Och Lazarus spratt till, minsann,
 bomfaderi faderallanlej.
 ''',
        about: '',
      ),
      Song(
        title: 'Nu hoppar laxen',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Nu hoppar laxen, nu blommar häggen
 nu lyfter taxen sitt ben mot väggen.
 
 Ssssss...skål! (Supen tages.)
 
 Ett litet avbrott har visan fått,
 och under tiden har taxen gått.''',
        about: '',
      ),
      Song(
        title: 'Toj hemtegubbar',
        author: '',
        melody: 'Melodi: Hej, tomtegubbar',
        lyrics: '''||: Toj hemtegubbar gla i slåsen,
 och loss tå vastiga lura! :||
 En tiden lid vi heva lär
 med möcket myda och svärt bestor.
 Toj hemtegubbar gla i slåsen,
 och loss tå vastiga lura!''',
        about: '',
      ),
      Song(
        title: 'Helan gick i vänstra foten',
        author: '',
        melody: 'Melodi: Amanda Lundbom',
        lyrics: '''Helan gick i vänstra foten,
 bomfaderi, bomfaderaderalla.
 Gudskelov så vet vi boten,
 bomfaderi, faderallanlej.
 Halvan ställer saken rätt,
 bomfaderi, faderallanlej. Hugg i!
 På nubbar blir man aldrig mätt,
 bomfaderi faderallanlej.''',
        about: '',
      ),
      Song(
        title: 'Fans hämnd',
        author: '',
        melody: 'Melodi: Där som sädesfälten',
        lyrics: '''När som sädesfälten böja sig för vinden...
 står nån djävul där och böjer dem tillbaks!''',
        about: '',
      ),
      Song(
        title: 'Sjömannens visa',
        author: '',
        melody: '',
        lyrics: '''Åh, boj!''',
        about: '',
      ),
      Song(
        title: 'O.P. river',
        author: '',
        melody: 'Melodi: Ol\' man river',
        lyrics: '''O.P. river
 ja, O.P. river
 var gång jag lenat
 min hals med Renat
 jag sagt med iver
 att O.P. river 
 långt mer,
 långt mer.
 
 Mången glädes
 när han fått Sädes
 och fattighjonet 
 ses le mot Kronet,
 men faktum bliver
 att O.P. river 
 långt mer,
 långt mer.''',
        about: '',
      ),
      Song(
        title: 'Ekorr\'n satt i tallen',
        author: '',
        melody: 'Melodi: Ekorr\'n satt i granen',
        lyrics: '''Ekorr'n satt i tallen,
 bryggde lite planksaft.
 Därav blev han knall, men
 överfylld av manskraft,
 hoppa han till stugan så,
 våldtog katten och gick på
 med den långa ludna svansen.''',
        about: '',
      ),
      Song(
        title: 'Den gamla apparaten',
        author: '',
        melody: 'Melodi: Där som sädesfälten',
        lyrics: '''Där som sädesbrännvin rann igenom strupen,
 och en flaska dunder väntar bakom den.
 Stod den gamla apparaten uppå spisen,
 som i forna dagar var min bästa vän.
 Så kom länsman, tog det käraste jag ägde.
 Tog den gamla apparaten med sig hem.
 Nu står alla glasen tomma uppå bordet,
 och han bränner själv, den gamle djävulen.''',
        about: '',
      ),
      Song(
        title: 'Tänk om man hade',
        author: '',
        melody: 'Melodi: Hej, tomtegubbar',
        lyrics: '''||: Tänk om man hade lilla nubben
 uppå ett snöre i halsen. :||
 Man kunde dra den upp och ner
 så att det kändes som många fler.
 Tänk om man hade lilla nubben
 uppå ett snöre i halsen.''',
        about: '',
      ),
      Song(
        title: 'Barndom',
        author: 'Text: Magnus Jönsson',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''När jag var liten i skolmatsalen,
 all djävla lever gjorde mig galen.
 Nu tar jag hämnd på detta organ...
 min egen lever ska få på fan.''',
        about: '',
      ),
      Song(
        title: 'För att människan',
        author: '',
        melody: 'Melodi: Bä bä, vita lamm',
        lyrics: '''För att människan
 skall trivas på vår jord
 bör hon ständigt ha
 på sitt smörgårsbord:
 en stor, stor sup åt far,
 en liten snaps åt mor,
 och två små droppar
 åt lille, lille bror.''',
        about: '',
      ),
      Song(
        title: 'Då verka lätt',
        author: '',
        melody: 'Melodi: Dover Calais',
        lyrics: '''När jag tar mig en sup
 blir jag intressant och djup.
 Allting som är svårt kan då verka lätt.
 All min rädsla går bort
 med en grogg av någon sort.
 Allting som är svårt kan då verka lätt!''',
        about: '',
      ),
      Song(
        title: 'Pärlan',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''Sup kallas pärla, det kan man förstå,
 öppnar ju skalet hos män'skan också.
 I glaset den lovande, glittrande bor,
 som musslan i botten den tas nu, min bror.''',
        about: '',
      ),
      Song(
        title: '\'rännvinskokaren',
        author: 'Text: Lars T. Johansson, Ehrling Eliasson',
        melody: 'Melodi: En sockerbagare här bor i staden',
        lyrics: '''En 'rännvinskokare
 här bor i skogen.
 Han säljer 'rännvinet
 svart till krogen.
 Å ä' du nykter 
 så kan du gå.
 Men ä' du fuller
 så kan du int'.''',
        about: '',
      ),
      Song(
        title: 'Vi går över ån',
        author: '',
        melody: 'Melodi: Vi gå över daggstänkta berg',
        lyrics: '''Vi går över ån efter sprit, fallera,
 men efter vatten går vi ej en bit, fallera,
 ja, sup kära bröder
 fast näsan är röder
 för tids nog blir den akvavit, faller av!''',
        about: '',
      ),
      Song(
        title: 'Dalarna',
        author: 'Text: Magnus Jönsson',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''En sträng, ny präst i en by i Dalom,
 han sa att sprit blir det inte tal om.
 Istället tar vi, det tycker jag,
 en redig nattvard varenda dag.''',
        about: '',
      ),
      Song(
        title: 'Vem sade ordet skål?',
        author: '',
        melody: 'Melodi: Vårvindar friska',
        lyrics: '''Vem sade ordet skål här vid bordet,
 viskande for det sällskapet kring.
 Fattom kristallen, nubben är kall den,
 stiger åt skallen, kling klingeling!
 Käraste vänner, välkomna hit,
 hoppas ni har en 'bon appetit'.
 Nu lilla nubben, tager vi stubben
 Skål lilla nubben, kling klingeling.''',
        about: '',
      ),
      Song(
        title: 'I Frankrike dricks det viner',
        author: '',
        melody: 'Melodi: Te Deum (Eurovisions-signaturen)',
        lyrics: '''I Frankrike dricks det viner,
 när tyskarna dricker öl
 underbart de mår.
 Men svenskar som dricker, svin är.
 Oss svin emellan:
 tag en tår!''',
        about: '''Ur Chalmersspexet 'Dr Livingstone' 1978.''',
      ),
      Song(
        title: 'Vad säger svenska folket',
        author: '',
        melody: 'Melodi: Kungliga Södermanlands regementes paradmarsch',
        lyrics: '''Vad säger svenska folket
 när dom får en sup?
 Jo, jag tackar!''',
        about: '',
      ),
      Song(
        title: 'Jag tror, jag tror',
        author: '',
        melody: 'Melodi: Jag tror, jag tror på sommaren',
        lyrics: '''Jag tror, jag tror på akvavit,
 jag tror, jag tror på dynamit,
 den ger en kraft att sjunga ut
 och ingen krämpa blir akut.
 Man glömmer vardagslivets jäkt
 och känner stundens ruseffekt.
 En snaps, en skål, en truddelutt
 och sen så tar vi våran hutt.''',
        about: '',
      ),
      Song(
        title: 'Nu har vi ljus',
        author: '',
        melody: 'Melodi: Julpolska',
        lyrics: '''Nu har vi ljus här i vårt hus.
 Far han har tagit sig ett kraftigt rus.
 Mor hon är full, dansar omkull, välter ett ljus. Hej!
 Se hur alla barnen brinner inne.
 Fjorton stycken, lille Karl i minne.
 Farfar trogen, han säljer plogen
 och går åt skogen på krogen.''',
        about: '',
      ),
      Song(
        title: 'Tussan lull',
        author: '',
        melody: 'Melodi: Byssan lull',
        lyrics: '''||: Tussan lull, utav brännvin blir man full,
 och slipsen man doppar i smöret. :||
 Och näsan den blir röd,
 och ögonen får glöd,
 men tusan så bra blir humöret.''',
        about: '',
      ),
      Song(
        title: 'När helan man tagit',
        author: '',
        melody: 'Melodi: Skånska slott och herresäten',
        lyrics: '''När helan man tagit och halvan skall dricka(s),
 det är som att kyssa en nymornad flicka(s).
 Ju mera man får desto mer vill man ha(s).
 En ensammer jäkel gör alls ingen gla'(s)!
 Skål!''',
        about: '',
      ),
      Song(
        title: 'En liten fyllhund',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''En liten fyllhund på krogen satt,
 rosor på kinden men blicken var matt,
 Läpparna små, liksom näsan var blå.
 Ack, om jag kunde så skulle jag gå!''',
        about: '',
      ),
      Song(
        title: 'Det var en tvilling',
        author: '',
        melody: 'Melodi: Petter Jönssons resa till Amerika',
        lyrics: '''Det var en tvilling av det siamesiska slaget
 som ej tog färre än tvenne supar i taget.
 Han Helan tog för att därmed hedra sin moder,
 med Halvan reta' han sin helnyktre broder.''',
        about: '',
      ),
      Song(
        title: 'Vad blåser det för vind idag?',
        author: '',
        melody: '',
        lyrics: '''Vad blåser det för vind idag?
 
 - Brännvind!''',
        about: '',
      ),
      Song(
        title: 'Magen skriker',
        author: '',
        melody: 'Melodi: Kors på Idas grav',
        lyrics: '''Magen skriker, strupen brinner efter mer.
 Därför tar vi tersen, sen så tar vi fler.
 Ingen olja kan som brännvin få maskinen i funktion.
 Brännvin gör ett fylleskrål till ädel ton.''',
        about: '',
      ),
      Song(
        title: 'Brännvin hit',
        author: '',
        melody: 'Melodi: Skära havre',
        lyrics: '''Brännvin hit och brännvin dit,
 och brännvin är det bästa.
 Och fan ta den som brännvin har
 och inte bju'r sin nästa.''',
        about: '',
      ),
      Song(
        title: 'Invers aptit',
        author: '',
        melody: 'Melodi: Nu tändas tusen juleljus',
        lyrics: '''Nu fyllas många magar små
 av iskall renad sprit.
 Men några kastar åter opp.
 Det är invers aptit.''',
        about: '',
      ),
      Song(
        title: 'Ner med supen',
        author: '',
        melody: 'Melodi: Broder Jakob',
        lyrics: '''Ner med supen, genom strupen,
 drick blott till, om du vill.
 Spotta ej i glaset, säger fylleaset,
 ta en till, om du vill.''',
        about: '',
      ),
      Song(
        title: 'Regissörens skål',
        author: '',
        melody: '',
        lyrics: '''Tystnad... Tagning!''',
        about: '',
      ),
      Song(
        title: 'Sista supen',
        author: '',
        melody: 'Melodi: Väva vadmal',
        lyrics: '''Krök armen i vinkel! 
 Här vankas det finkel. 
 Och finka vankel och vanka finkel, 
 och kröka armen i vinkel. 
 Här vankas det finkel!''',
        about: '',
      ),
      Song(
        title: 'Titta taket',
        author: '',
        melody: '',
        lyrics: '''Titta, taket!''',
        about: '',
      ),
      Song(
        title: 'Farväl, farväl',
        author: '',
        melody: 'Melodi: En sjöman älskar havets våg',
        lyrics: '''Farväl, farväl, förtjusande sup,
 men kom inte upp igen!''',
        about: '',
      ),
      Song(
        title: 'Hyfsvisa',
        author: '',
        melody: '',
        lyrics: '''Kors i allsin dar!
 Har du brännvin kvar?
 Är du sparsam eller snål?
 Skål!''',
        about: '''Sparsamma sjunger 'Snål!\'''',
      ),
      Song(
        title: 'Jag äter inte klockor',
        author: '',
        melody: 'Melodi: Det var en lørdag aften',
        lyrics: '''Jag äter inte klockor,
 men dricker gärna ur.''',
        about: '',
      ),
      Song(
        title: 'Gräv ur tundran',
        author: 'Text: Kenneth Hagås',
        melody: 'Melodi: Katjuscha',
        lyrics: '''Gräv ur tundran två dussin potäter,
 låt dem jäsa uti fjorton dar.
 ||: Modersmjölken för ryssar och sovjeter
 brännes i babusjkas samovar :||
 
 Kyl sen drycken i Sibiriens tjäle,
 tappa upp på immiga små glas.
 Höj sen glasen för fosterlandets välgång,
 sjung Nastarovja med en mäktig bas!
 Höj sen glasen för fosterlandets välgång,
 sjung Nastarovja –
 låt glasen gå i kras!''',
        about: '''Den här visan skrevs till ekonomspexet 'Lenin eller Gossplanen eller Wanted; Red or alive' 1989. Den blev så uppskattad att den numera ofta sjunges som sista nubbevisa. Första versen och andra fram till 'Höj sen...' sjunges viskande. På 'Höj' höjes även rösten. Meningen är att nubbeglaset kastas över vänster axel efter supen, men det görs av förklarliga skäl aldrig. Nubbeglas i plast brukar däremot krossas i handen på ordet 'kras'.''',
      ),
    ],
  ),
  Category(
    name: 'Öl',
    songs: [
      Song(
        title: 'Der var en skikkelig bondemand',
        author: '',
        melody: '',
        lyrics: '''||: Der var en skikkelig bondemand,
 han skulle ud efter øl. :||
 Han skulle ud efter øl,
 han skulle ud efter øl, efter øl,
 efter hopsasa, tralalala,
 han skulle ud efter øl.
 
 ||: Til konen kom der en ung student,
 mens manden var ud' efter øl. :||
 Mens manden var ud' efter øl...
 
 ||: Han klapped' hende på rosenkind
 og kyssed' hende på mund. :||
 Mens manden var ud' efter øl...
 
 ||: Men manden stod bag ved døren og så,
 hvordan det hele gik til. :||
 For de trod' han var ud' efter øl...
 
 ||: Så skød han studenten og kællingen med,
 og så gik han ud efter øl. :||
 Og så gik han ud efter øl...
 
 ||: Moralen er: Tag din kone med,
 hver gang du skal ud efter øl. :||
 Hver gang du skal ud efter øl...''',
        about: '''Dette er en gammel skæmtevise, som var kendt allerede i 1500-tallets Tyskland under navnet 'Es hatt ein Bauer ein junges Weib'.''',
      ),
      Song(
        title: 'Ölvisan',
        author: '',
        melody: 'Melodi: SJ, SJ gamle vän',
        lyrics: '''Dricka pilsner varje da'
 det är kul å det e bra.
 Ja, det borde alla ha,
 en pilsner varje da'.
 
 Öl det slinker ner så lätt
 lättare än fläskkotlett.
 Å när en har slunkit ner
 så måste man ha fler.
 
 Efter sex, sju flaskor till
 blir det svårt att sitta still.
 Å vid cirka trettitvå
 så blir det svårt att gå.
 
 Öl de e ju faktiskt mat,
 öl på burk å öl på fat.
 Måste fyllas på i ett
 för annars går det snett.
 
 Ingen har väl illa mått
 utav öl som e så gott.
 Den som ändå detta gjort
 har druckit det för fort.
 
 Korka upp din öl å drick
 så blir du en festlig prick.
 Korka upp å drick min vän
 å rapa högljutt sen.''',
        about: '',
      ),
      Song(
        title: 'Min pilsner',
        author: '',
        melody: 'Melodi: My Bonnie',
        lyrics: '''Min pilsner ska svalka min tunga,
 min pilsner ska duscha min gom.
 Min pilsner ska få mig att sjunga,
 om jag ser att flaskan är tom:
 Pilsner! Pilsner!
 Hämta en pilsner till mig, till mig.
 Pilsner! Pilsner!
 Hämta en pilsner till mig!''',
        about: '',
      ),
      Song(
        title: 'Ode till ölet',
        author: '',
        melody: 'Melodi: Trampa på gasen',
        lyrics: '''Tu tu tu Tuborg och ca ca ca Carlsberg,
 det är den bästa pi pi pi pilsnern som jag vet.
 
 Tu tu tu Carlsberg och ca ca ca Tuborg,
 det är det bästa pi pi pi ölet som jag vet.
 
 Tu tu tu ölberg och ca ca ca pilsborg,
 det är den bästa pi pi pi biran som jag vet.''',
        about: '',
      ),
      Song(
        title: 'When I get drunker',
        author: '',
        melody: 'Melodi: When I\'m 64',
        lyrics: '''When I get drunker, losing my mind
 many beers from now.
 Will I still be having me a jolly good time,
 whisky, gin and a bottle of wine.
 So, fill up the glasses, drunk as a skunk,
 don't say you want no more,
 'cause we are the singers
 and we are the swingers,
 join us and you won't get bored.''',
        about: '',
      ),
      Song(
        title: 'En pilsnerdrickare',
        author: '',
        melody: 'Melodi: En sockerbagare här bor i staden',
        lyrics: '''En pilsnerdrickare här bor i staden,
 han dricker pilsner mest hela dagen,
 han dricker gröna, han dricker blå,
 han dricker några med renat på.
 
 Och i hans fönster hänga tomma glasen,
 och alla burkarna ifrån kalasen,
 och är han nykter så kan han gå
 ner till butiken och fylla på.''',
        about: '',
      ),
      Song(
        title: 'Vi älskar öl',
        author: '',
        melody: 'Melodi: Ser du stjärnan i det blå?',
        lyrics: '''Täckt av silver sejdeln full
 gnistrar mot oss med sitt guld.
 Humle, malt är livets salt, vi älskar öl.
 
 Källarsval så bärs den in
 för att glädja gommen din,
 släcka törsten, stärka rösten, till dess lov.
 
 Knubbig blir du, men so what,
 gott och roligt har du fått
 extraturen, rensat njuren, öl är gott.''',
        about: '',
      ),
      Song(
        title: 'Sanningen om ölet',
        author: '',
        melody: 'Melodi: Här är gudagott att vara',
        lyrics: '''Öl är gudagott att dricka.
 O, vad öldrycken dock är skön.
 Dricka öl med älskad flicka
 billigare än likören grön.
 Humlan surrar, flickan strålar,
 nu går jag och slår en drill.
 Lättad, törstig, sedan jag skålar
 i gott öl min flicka till.''',
        about: '',
      ),
      Song(
        title: 'Drömmen om ölen',
        author: '',
        melody: 'Melodi: Drömmen om Elin',
        lyrics: '''Nu så har vi fest.
 Det går sång ur alla strupar.
 Ölen är vår gäst,
 ibland sill och supar.
 Tredje klass ger mest,
 och om du blir trött och stupar:
 drömmen om ölen låter dig festa igen!
 
 På vårt ölkalas,
 där finns inga fat och koppar.
 Stora sejdelglas
 helt servisen toppar.
 När den sista tas,
 och du själv går hem och knoppar:
 drömmen om ölen låter dig festa igen!''',
        about: '''Från Linköpingsspexet 'En bror för mycket eller de Gama och havet' 1988.''',
      ),
      Song(
        title: 'La oss dricke',
        author: '',
        melody: 'Melodi: Änkevalsen ur Glada änkan',
        lyrics: '''Gamle venner halsen brenner
 Øl - øl - øl.
 Hvilken väske kan oss leske?
 Øl - øl - øl.
 Er vår sang enn ikke ren og klar som sølv,
 la oss dricke, la oss dricke.
 Øl - øl - øl.''',
        about: '',
      ),
      Song(
        title: 'Ju mera öl vi dricker',
        author: '',
        melody: 'Melodi: Ju mer vi är tillsammans',
        lyrics: '''Ju mera öl vi dricker,
 vi dricker, vi dricker,
 ju mera öl vi dricker,
 ju rundare vi bli.
 För rundare är sundare
 och sundare är rundare.
 Ju mera öl vi dricker,
 ju rundare vi bli.''',
        about: '',
      ),
      Song(
        title: 'Ölet som försvann',
        author: '',
        melody: 'Melodi: Elvira Madigan',
        lyrics: '''Sorgeliga saker hända,
 än i våra dar minsann.
 Sorgeligast är dock denna,
 den om ölet som försvann.
 
 Aldrig nånsin skall vi glömma
 mellanölets äventyr.
 För att nu om ölet drömma
 helt vi oss till spriten tyr.''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Vin',
    songs: [
      Song(
        title: 'Feta fransyskor',
        author: '',
        melody: 'Melodi: Schuberts Marche Militaire',
        lyrics: '''Feta fransyskor som svettas om fötterna
 de trampa druvor som sedan ska jäsas till vin.
 Transpirationen viktig e'
 ty den ger fin bouquet.
 Vårtor och svampar följer me'
 men vad gör väl de'?
 
 För... vi vill ha vin, vill ha vin, vill ha mera vin!
 Även om följderna blir att vi må lida pin.
 Damerna: Flaskan och glaset gått i sin.
 Herrarna: Hit med vin, mera vin!
 Damerna: Tror ni att vi är fyllesvin?
 Herrarna: JA! (Fast större)''',
        about: 'Skriven av K-LTH till Sångarstriden 1985. Enligt legenden var de två sista orden enbart riktade till personen som skulle trycka upp sångbladen.',
      ),
      Song(
        title: 'Sudda, sudda',
        author: '',
        melody: '',
        lyrics: '''Sudda, sudda, sudda, sudda bort din sura min,
 med fyra jättestora bamseklunkar ädelt vin.
 Munnen den ska sjunga och va' glad
 för att den ska bli som den ska va.
 Vad häller du då bak det dolda flinet? Vinet!
 Som suddar, suddar bort din sura min.''',
        about: '',
      ),
      Song(
        title: 'Bordeaux, bordeaux',
        author: '',
        melody: 'Melodi: I sommarens soliga dagar',
        lyrics: '''Jag minns än idag hur min fader
 kom hem ifrån staden så glader
 och rada' upp flaskor i rader
 och sade nöjd som så: Bordeaux, Bordeaux.
 Han drack ett glas,
 kom i extas,
 och sedan blev det stort kalas.
 Och vi små glin,
 ja, vi drack vin,
 som första klassens fyllesvin.
 Och vi dansade runt där på bordet
 och skrek så vi blev blå: Bordeaux, Bordeaux!''',
        about: '',
      ),
      Song(
        title: 'Pussvisa',
        author: '',
        melody: 'Melodi: Längtan till landet',
        lyrics: '''Vintern rasat enligt alla källor
 våren kommer när den nu får tid.
 Men vi har ju vin och vackra fjällor
 och vi kysser den vi har bredvid.
 
 Här kan man passa på att pussa någon...
 
 Snart är vinet där det gör någon nytta
 om du bara fattar glaset i hand.
 Vänd det upp och ned, som rakt i en bytta,
 tänk dig nu att strupen står i brand!''',
        about: '',
      ),
      Song(
        title: 'Rhenvinets lov',
        author: 'Text: R Palmé',
        melody: 'Melodi: Strömt herbei, ihr Völkerscharen',
        lyrics: '''Ställ nu fram i källarsalen
 av den dunkelgröna färg
 härligt glänsande pokalen,
 fylld av ädla druvans märg.
 Ty blott rhenvin vill jag dricka,
 nöjd och glad i samma stund
 ||: när mot mig dess pärlor blicka
 från pokalens vida rund. :||
 
 Under Spaniens sol måhända
 färgas druvan mera röd,
 må champagnens eldflod tända
 i mitt bröst passionens glöd,
 men det rhenska vin ej rusar,
 sans och måtta bo däri,
 ||: och vårt sinne milt det tjusar
 likt en älskad melodi. :||
 
 I min ungdoms fröjd och gamman
 som i mannaåren än,
 detta vinet band mig samman
 med så mången trogen vän.
 Därför när mig döden nalkas,
 förr'n min kropp blir lagd i skrin,
 ||: av en droppe låt mig svalkas
 av det ädla rhenska vin. :||''',
        about: '',
      ),
      Song(
        title: 'Röd vitamin',
        author: '',
        melody: 'Melodi: My Bonnie',
        lyrics: '''Hur badar man bäst på en kurort?
 Jo, om man har fyllt en bassäng
 med vätskan som snart skall besjungas
 när vi kommit fram till refräng.
 
 Rödvin, rödvin
 rödvin är fin hälsokost, kost, kost.
 Rödvin, rödvin,
 rödvin vår bästa flaskpost.
 
 Man får vitaminer från rödvin,
 man piggnar ju till på en gång.
 När glaset har tömts uti botten
 så stämmer vi upp till en sång.
 
 Rödvin, rödvin...''',
        about: '',
      ),
      Song(
        title: 'Till vinet',
        author: '',
        melody: 'Melodi: Flickan i Havanna',
        lyrics: '''Flickan vid din sida,
 hon har ännu vinet kvar.
 Sitter nu och väntar
 att en skål vi tar
 Hej, du kära vännen min,
 drick nu ur ditt goda vin.
 Glas blir tomt och du blir full,
 skål mitt hjärtegull.''',
        about: '',
      ),
      Song(
        title: 'Festen kan börja',
        author: '',
        melody: 'Melodi: Vårvindar friska',
        lyrics: '''Festen kan börja, ingen får sörja
 här finns ju både rödvin och mat.
 Vinet skall tömmas, sorgerna glömmas,
 ingen får vara tråkig kamrat.
 
 Klappa mitt hjärta, fröjdas min själ,
 vinet serveras genast nåväl.
 Fatta nu glaset, börja kalaset,
 skål allesammans, skål!''',
        about: '',
      ),
      Song(
        title: 'Se vinet väntar',
        author: '',
        melody: 'Melodi: Svarte Rudolf',
        lyrics: '''Se vinet väntar i glaset,
 men väntan skall inte bli lång.
 För skall det bli sprätt på kalaset
 skall vinglaset tagas med sång.
 Vår sång ädla känslor framföder
 och skapar en festatmosfär.
 Lyft bägaren, systrar och bröder,
 vi firar att just vi är här!''',
        about: '',
      ),
      Song(
        title: 'Kvinnans skål',
        author: '',
        melody: 'Melodi: Fjäriln vingad',
        lyrics: '''Skål för kvinnan vill vi dricka,
 hon som har oss alla i hand.
 Vad är pojken utan flicka?
 Blott en något äldre ensam man.
 Kvinnans väsen här vid bordet
 har åt kvällen givit glans.
 Låt oss anta hur det vore;
 utan kvinnan ingen av oss fanns.''',
        about: '',
      ),
      Song(
        title: 'Mannens skål',
        author: '',
        melody: 'Melodi: Fritiof och Carmencita',
        lyrics: '''Kvinnor gemensamt tar en skål här nu vid bordet
 riktad till mannen, han som nästan jämt har ordet.
 Fast han är härlig, om än lite besvärlig,
 vore livet förutan honom mycket grått och trist.
 För det är faktiskt så att mannen har nåt visst
 något som vi kvinnor gillar.
 
 Styrka och charm och gott humör
 och en förmåga att ofta förstå varför
 kvinnor väntar sig att han skall göra
 allt vad kvinnan vill.
 Därför vi skåla för honom.''',
        about: '',
      ),
      Song(
        title: 'Så länge rösten är mild',
        author: '',
        melody: 'Melodi: Så länge skutan kan gå',
        lyrics: '''Så länge rösten är mild,
 så länge ingen är vild.
 Så länge spegeln på väggen
 ger halvskaplig bild.
 Så länge alla kan gå,
 så länge alla kan stå,
 så länge alla kan tralla - så fyller vi på.
 
 För vem har sagt att just du kom med storken,
 för att bli glad av att lukta på korken?
 Men kring vårt bord här nånstans,
 vi höjer bägarn med glans,
 och låter vinet gå ner i en yrande dans.''',
        about: '',
      ),
      Song(
        title: 'Till rödvinet',
        author: '',
        melody: 'Melodi: En gång jag seglar i hamn',
        lyrics: '''En sång, det är ingen sång
 om inte på samma gång
 man tar ett glas i sin hand
 och får på tand
 en pärla ibland.
 Druva, vi varmt dig nu be:
 ljuva minuter oss ge.
 Än är vi unga,
 sjung och glamma och le.''',
        about: '',
      ),
      Song(
        title: 'Damernas skål',
        author: '',
        melody: 'Melodi: Svarte Rudolf',
        lyrics: '''Nu rödvin gnistrar i bägar'n,
 jag lyfter den sakta och ler.
 Och blicken liksom vilde jägarn
 den löper längs bordsranden ner.
 Att söka kontakt med det sköna 
 det lär vara herrarnas mål.
 Så'nt blickfång det borde sig löna 
 med slagordet 'Damernas skål'.
 
 Nu rödvin gnistrar i bägar'n,
 jag höjer den sakta och ler
 åt fläckarna på vita skjortan
 där rödvinet har runnit ner.
 Jag struntar i fläckarnas storlek
 om än de var stora som torg.
 Klorin är det bästa mot rödvin
 och rödvin det bästa mot sorg.''',
        about: '',
      ),
      Song(
        title: 'När det strålar uti salen',
        author: '',
        melody: 'Melodi: Fjäriln vingad',
        lyrics: '''När det strålar uti salen
 utav glädje, glans och färg.
 När det gnistrar i pokalen
 utav ädla druvans märg.
 
 Kära vänner, varför dröja
 med att dricka glädjen till?
 Låt oss bort från framtids slöja
 se allt skönt vi skåda vill.
 
 Drick för allt vad livet skänker
 glädjestunder, ljus och sol.
 Drick för stjärnorna som blänker
 över oss från pol till pol.
 
 Drick för åren, väl du kan det.
 Drick för kärlek åren ger.
 Drick för starka vänskapsbanden.
 Drick för allt vad skönt du ser.''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Punsch',
    songs: [
      Song(
        title: 'Punschen kommer (kall)',
        author: '',
        melody: 'Melodi: Änkevalsen ur Glada änkan',
        lyrics: '''Punschen kommer, 
 punschen kommer,
 ljuv och sval.
 Glasen imma, röster stimma
 i vår sal.
 Skål för glada minnen!
 Skål för varje vår!
 Inga sorger finnas mer
 när punsch vi får.''',
        about: '',
      ),
      Song(
        title: 'Punschen kommer (varm)',
        author: '',
        melody: 'Melodi: Änkevalsen ur Glada änkan',
        lyrics: '''Punschen kommer,
 punschen kommer,
 god och varm.
 Vettet svinner, droppen rinner
 ner i tarm.
 Skål för alla minnen!
 Dem vi snart ej ha.
 Då ett glas med simmig punsch
 vi hunnit ta.''',
        about: 'Sjunges under utförande av diverse rörelser fram till dess man fått sin punsch, då slutar man sjunga så att serveringspersonalen lätt kan se vilka gäster som fortfarande väntar på de gula dropparna.',
      ),
      Song(
        title: 'Djungelpunsch',
        author: '',
        melody: 'Melodi: Var nöjd med allt som livet ger',
        lyrics: '''Jag gillar alla tiders punsch.
 Punsch till frukost, punsch till lunch,
 en punsch till förrätt, varmrätt och dessert.
 Jag gillar punsch för vet du va',
 rent kaffe gör ju ingen gla'.
 Nej, punsch för fulla muggar vill jag ha.
 
 Med konjak du lockar.
 Den bästa Renault.
 Förlåt om jag chockar
 och tar punsch ändå.
 Och bjuder du på fin likör
 får du ursäkta om det stör.
 Jag väljer hellre Grönsteds Blå,
 en Cederlunds eller Flaggpunsch å
 - kanske har du ren Platin?
 Jag gillar punsch,
 ger du mig punsch så är jag din.
 För evigt din.''',
        about: '',
      ),
      Song(
        title: 'Studiemedelsrondo',
        author: '',
        melody: 'Melodi: Vi lossa sand',
        lyrics: '''||: Vi dricker punsch
 till lunch,
 när vi har fått avin.
 Vi lunchar hela dagen
 tills kassan gått i sin. :||''',
        about: '',
      ),
      Song(
        title: 'Gul lyser solen',
        author: '',
        melody: 'Melodi: Lili Marlene',
        lyrics: '''Gul lyser solen,
 gult är flaggans kors,
 gul vajar säden
 och gul är ängens pors.
 Gul är kinesen,
 gul japan,
 och pyttens ägg
 är gult som fan.
 Vår punsch är gul så ta'n,
 vår punsch är gul så ta'n.''',
        about: '',
      ),
      Song(
        title: 'Lilla punschvisan',
        author: '',
        melody: '',
        lyrics: '''Det var en gång jag tänkte
 att punschen övergiva,
 men det blir aldrig av
 så länge jag får leva.
 För när jag en gång dör
 så står det på min grav:
 'Här vilar en som
 svenska punschen älskat har'.
 
 Jag gillar, jag gillar punschen,
 jag gillar den som punschen skapat har.
 Jag gillar, jag gillar punschen,
 jag gillar punschen och dess far.''',
        about: 'Här brukar följa ett varierande antal tilläggsverser.',
      ),
      Song(
        title: 'Punschkanon',
        author: '',
        melody: '',
        lyrics: '''Herrarna:
 ||: Punsch, punsch, punsch, punsch,
 punsch, punsch, alla sorters :||
 
 Damerna:
 När supen runnit hädan
 och maten lagts därpå,
 och kaffet står på bordet,
 vad väntar vi då på?
 ||: Jo punsch, jo punsch
 och ännu mera punsch. :||
 
 Ja, den föll oss i smaken,
 nu ropar vi gutår,
 och koppen står där naken
 och väntar på påtår.
 ||: Jo punsch, jo punsch
 och ännu mera punsch. :||''',
        about: '',
      ),
      Song(
        title: 'Änglapunsch',
        author: '',
        melody: 'Melodi: Änglamark',
        lyrics: '''Kalla den gudagåva eller himlanektar,
 vad du vill.
 Punschen den gyllne, de gamle oss skänkte.
 Vet att så länge som punschen nå'nsin funnits till
 glädjen den höjde och sorgerna dränkte.
 
 Blunda och dröm om en blommande sommarnatt
 svala bersåer där punschen står immig.
 Eller en höstdag när Nordan har lekt tafatt,
 varm punsch som ångar och ärtsoppa simmig.
 
 Punschen den älskas ju av alla och envar.
 Låt festen börja - låt punschen få flöda!
 Skål alla vänner som har nå't i glaset kvar,
 hedra nu minnet av gamle kung Oscars da'r!
 
 Kalla den gudagåva eller himlanektar, vad du vill.
 Punschen den gyllne, som får oss att drömma.
 Fukta din strupe, låt inte flaskan få stå still,
 skåla för punschen och glasen vi tömma!''',
        about: '',
      ),
      Song(
        title: 'Härlig är punschen',
        author: '',
        melody: 'Melodi: Härlig är jorden',
        lyrics: '''Härlig är punschen,
 härlig är dess konsistens.
 Skönt är att taga den än en gång.
 Genom att taga punschen av daga
 gå vi till paradis med sång.''',
        about: '',
      ),
      Song(
        title: 'Punsch, punsch',
        author: '',
        melody: 'Melodi: Ritsch, ratsch, fillibom',
        lyrics: '''Punsch, punsch fillibom-bom-bom,
 fillibom-bom-bom, fillibom-bom-bom.
 Punsch, punsch fillibom-bom-bom,
 fillibom-bom-bom, fillibom.
 Vi har ju både Cederlunds och Carlshamns Flagg
 och Grönstedts blå och lilla Caloric.
 Det blir för trist med sodavatten,
 sodavatten, sodavatten.
 Det blir för trist med sodavatten.
 Ge mig mera punsch!''',
        about: '',
      ),
      Song(
        title: 'Punschens lov',
        author: '',
        melody: 'Melodi: Rövarna i Kamomilla stad',
        lyrics: '''Ja, punschen är och punschen var
 och punschen skall förbliva
 en lidelse vi alla har
 som inget kan fördriva.
 Ja, punschen tinar upp såväl
 och svalkar både kropp och själ.
 Den botar begären
 och lindrar besvären,
 ja, punschen den gör både gott och väl.''',
        about: '''Från Kårspexet 'Sven Hedin eller en enkel tur och retur' 1987.''',
      ),
      Song(
        title: 'Punschvisa',
        author: '',
        melody: 'Melodi: Med en enkel tulipan',
        lyrics: '''Nu med en ny och stadig krök
 med armen gör vi försök
 att lyfta koppen, att lyfta koppen
 som står och väntar.
 Håll blicken fäst vid koppens rand 
 och darra inte på hand.
 Nu allesammans, nu allesammans
 på munnen gläntar.
 En liten punschtår så här placerad
 i ena handen sig bättre gör 
 än tio liter uppå Systemet
 och inga pengar att köpa för.
 Spill inga droppar på ditt bord
 och spill ej mer några ord.
 Nu tar vi punschen, nu tar vi punschen 
 som står och väntar.''',
        about: '',
      ),
      Song(
        title: 'Giv oss vår punsch',
        author: '',
        melody: 'Melodi: God save the Queen',
        lyrics: '''Giv oss vår punsch idag,
 den som är sval och bra,
 eller väl värmd.
 Glasen vi tömma här,
 det blir en glad affär,
 för vi ska ha mera punsch.
 Vi är här se'n lunch.''',
        about: '',
      ),
      Song(
        title: 'Min älskling',
        author: '',
        melody: 'Melodi: Min älskling du är som en ros',
        lyrics: '''Min älskling du är som en punsch,
 en nyupphälld och kall.
 Ack, som en Cederlunds så ljuv,
 min älskling, jag är knall.
 
 Så underbar blir du av punschen,
 och ser så vacker ut.
 Att älska dig det skall jag än
 när punschen tagit slut.
 
 När hela flaskan står där tom
 och torkan i min gom
 härjar så brännande och from,
 då fäller jag min dom.
 
 Min älskling du är som en punsch,
 en flaska Cederlundsch.
 Ack, jag vill bara älska dig,
 min älskling och min punsch!''',
        about: '',
      ),
      Song(
        title: 'FestUs punschvisa',
        author: '',
        melody: 'Melodi: Tomtarnas julnatt',
        lyrics: '''Punschen, punschen rinner genom strupen,
 ner i djupen.
 Blandas, konfronteras där med supen,
 där med supen.
 Gula droppar stärker våra kroppar:
 punsch, punsch, punsch.''',
        about: '',
      ),
      Song(
        title: 'Kaffe, kaffe, kaffe',
        author: '',
        melody: 'Melodi: Du ska få min gamla cykel när jag dör',
        lyrics: '''Vi har ätit och vi mår så väldans bra
 och nu vill nog alla säkert kaffe ha.
 Snart så får vi höra stönen
 när vi sjunger kaffebönen.
 Det ska höras ända bort till nästa sta'.
 
 Kaffe, kaffe, kaffe, konjak och likör
 ger åt alla här ett mycket glatt humör.
 Och det kan ni ge er katten
 vi ska sitta hela natten
 dricka kaffe, kaffe, konjak och likör.
 
 Ofta får man höra ordet kaffetant
 husets herre säger gärna helt galant
 Du min rara, du min sköna, 
 älskar du din kaffeböna
 mer än mej, det kan väl inte vara sant?
 
 Kaffe, kaffe, kaffe...
 
 Calle Schewen blanda kaffet sitt med Kron.
 Det var medicin, han hade denna tron.
 Och man blir ju allt en rask en
 när man dricker kaffekasken.
 Jublar högt i skyn och sedan tar man ton.
 
 Kaffe, kaffe, kaffe...
 
 Uti alla väder smakar fikan gott
 och hos damer tungan ofta får så brått
 och man skulle nog bli häpen 
 om man kom på kafferepen
 munnen går som om den vore smord med flott.
 
 Kaffe, kaffe, kaffe...''',
        about: '',
      ),
      Song(
        title: 'Tvekan inför punschen',
        author: '',
        melody: 'Melodi: Rosa på bal',
        lyrics: '''Jag borde nog inte dricka mer
 varken öl eller vin eller brännevin.
 En kaffetår blott, men såvitt jag ser
 står det punsch brevi'n.
 
 Tänk vilken underbar färg och odör.
 Nej, det blir bara man bråkar och stör.
 Men för att inte min kväll skall bli trist,
 krävs både slughet och list!
 
 Så jag tror nog att jag tar en
 punsch, kanske två, kanske tre!
 Se'n blir det groggar i baren,
 jag klarar säkert av det!
 
 Trots att jag egentligen är rätt knall,
 piggar nog punsch upp mig i alla fall.
 Jag kvicknar till med en punsch i min bål.
 Nu har jag bestämt mig, skål!''',
        about: '',
      ),
      Song(
        title: 'Nya punschvisan',
        author: '',
        melody: 'Melodi: Mjölnarens dotter',
        lyrics: '''Vad ger dig din sisu, vad håller dig varm?
 Skororompompej!
 Jo, punschen som upptas i mage och tarm.
 Försvinnande god!
 Försvinnande god!
 Får upp humöret och promillen, hej!
 
 Du blir som en ny män'ska om du tar en punsch.
 Skororompompej!
 Och den nya män'skan vill också ha en punsch.
 Försvinnande god!
 Försvinnande god!
 Får upp humöret och promillen, hej!''',
        about: '''Ur Chalmersspexet 'Sven Duva' 1965.''',
      ),
      Song(
        title: 'Vädjan till punschen',
        author: '',
        melody: 'Melodi: Sov du lilla videung',
        lyrics: '''Kom nu lilla punschen min,
 följ nu efter supen. 
 Snart så skall du åka in
 ner igenom strupen,
 till mitt stora magpalats,
 där det finns så mycket plats.
 Kom nu lilla punschen,
 följ nu efter supen.''',
        about: '',
      ),
      Song(
        title: 'Johansson är ful',
        author: '',
        melody: 'Melodi: Kostervalsen',
        lyrics: '''Johansson är ful,
 han får gömma sig i ett skjul.
 Ful är Perssons bror,
 Persson själv har glömt var han bor.
 Fulhet gör mig trött,
 ge mig snabbt någonting som är sött!
 Ge mig punsch,
 ett glas med punsch,
 nej, en flaska med punsch!
 (Å' en kasse bärs.)''',
        about: '',
      ),
      Song(
        title: 'Punschschottis',
        author: '',
        melody: 'Melodi: Schottis på Valhall',
        lyrics: '''Uppå bordet står nu en liten tår,
 den har lyster precis som kristall.
 Den är lockande, den är pockande,
 och fast den är isande kall,
 den oss värme ger när den slunkit ner
 i en dammig och torr liten hals.
 Det är punschen som går,
 det är punschen som får
 hela livet att bli till en vals.''',
        about: '',
      ),
      Song(
        title: 'Ärter och punsch',
        author: '',
        melody: 'Melodi: Fritiof och Carmencita',
        lyrics: '''Ärter och punsch, en liten rätt med traditioner.
 Den smakar bra och väcker många sensationer.
 Blekgul till färgen, smaken går in till märgen,
 med en senap som blandas enligt gammal tradition,
 så ska den njutas denna svenska folks passion,
 en torsdagskväll i varje månad.
 
 Skål nu vänner uti denna mäss,
 ärter och punsch ska vi njuta utan stress.
 Inga sura miner vill vi se i afton,
 när doften utav ärter och punsch sprids i salongen.
 Tänk på Grönstedt, Cederlund och Flagg,
 åh, vilken doft från denna arraksgula tagg.
 Hela natten ska vi njuta denna underbara brygd,
 skål för lilla ärten och punschen.''',
        about: '',
      ),
      Song(
        title: 'Visa vid torsdagskväll',
        author: '',
        melody: 'Melodi: Visa vid midsommartid',
        lyrics: '''Du häller ur flaskan en gyllene tår,
 av punsch ifrån Cederlunds.
 Du lyfter se'n bägar'n och väl du förstår,
 att föra den till din mun.
 Ikväll skall du dricka ditt livselixir
 och känna den ljuva punschen liksom ett vårbjörkeskir.
 I natt skall du bäras av Razor på bår,
 och kallas för fyllehund.''',
        about: '',
      ),
      Song(
        title: 'Sista punschvisan',
        author: '',
        melody: 'Melodi: Auld lang syne',
        lyrics: '''När punschen småningom är slut
 och vår flaska blivit tom,
 då vänder vi den upp och ner
 till dess inget rinner ur.
 
 ||: Så slickar vi, så slickar vi
 båd' utanpå och i,
 och finns det ändå något kvar
 får det va' till sämre dar. :||''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Kräftor',
    songs: [
      Song(
        title: 'Kräftvisa',
        author: '',
        melody: 'Melodi: Studentsången',
        lyrics: '''Nykokta kräftor, nyslagen dill,
 fem liter brännvin och sjuhundra pilsner.
 Rödaste skal är ju bättre än sill.
 Särskilt om man får supen därtill.
 Skal kring stjärt och klor,
 döljer dock smaken, bror.
 Men ingen möda stor,
 dess skal skall brytas opp,
 och aromen skall in i vår kropp.
 Helan tömmer vi snabbt till dess klor,
 Halvan tar vi sen tvärt till dess stjärt.
 Hurra!''',
        about: '',
      ),
      Song(
        title: 'Små nubbarna',
        author: '',
        melody: 'Melodi: Små grodorna',
        lyrics: '''Små nubbarna,
 små nubbarna,
 är lustiga att ta.
 Små nubbarna,
 små nubbarna,
 dom vill vi gärna ha.
 Ej röra, ej röra,
 nej, skala kräftan först
 och sedan, och sedan,
 vi släcka ska vår törst.''',
        about: '',
      ),
      Song(
        title: 'Kräftor ätas',
        author: '',
        melody: '',
        lyrics: '''Kräftor ätas uti sen augustikväll.
 Strupar vätas med nånting ur en putäll.
 Lyften glasen, klara basen
 så i stämning vi kan bli.
 Kräftkalasen de är fina, tycker vi.
 
 Läckert röda våra skaldjur ligga här.
 Utan möda ett par tjog vi friskt förtär.
 Glasen imma, kräftor simma
 bäst i brännvin, som ni vet.
 Lyktor glimma känsligt mot all härlighet.
 
 Första tjoget kravlat ner i magens djup.
 I begravningståget gick en fattig sup.
 Så att Tersen här i versen
 kommer före nummer två.
 Tål ni pärsen tar vi Halvan ovanpå.''',
        about: '',
      ),
      Song(
        title: 'Kräfta, kräfta prydd med dill',
        author: '',
        melody: 'Melodi: Blinka lilla stjärna',
        lyrics: '''Kräfta, kräfta prydd med dill
 och en immig sup därtill,
 bröd och smör och ost och sill,
 och så några supar till.
 Kräfta, kräfta prydd med dill,
 nu vi fått allt vad vi vill.''',
        about: '',
      ),
      Song(
        title: 'Kräftorna sköna',
        author: '',
        melody: 'Melodi: Vårvindar friska',
        lyrics: '''Kräftorna sköna,
 dillkronor gröna,
 lysa så grant bland blommor och bla'r.
 Nubbarna ila,
 finna ej vila,
 förrän i magen störtvågen far.
 Gläd dig min mage,
 håll dig beredd,
 Helan vi tage,
 på längd och bredd.
 Och lilla snapsen
 dyker så rapp sen
 ner i sin sköna bädd.''',
        about: '',
      ),
      Song(
        title: 'Stänk utav sälta',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''Stänk utav sälta och doft utav dill,
 lyktor som lysa i höstkvällen still.
 Sorl utav röster och klirr utav glas,
 tiden är inne för kräftans kalas.
 
 Innan vår värld har gått under med brak,
 ville jag föreslå eder en sak:
 glädoms åt kräftan och drickom nu till,
 skaldjurens drottning med krona av dill.''',
        about: '',
      ),
      Song(
        title: 'Kräftor kräva dessa drycker',
        author: '',
        melody: 'Melodi: Räven raskar över isen',
        lyrics: '''Kräftor kräva dessa drycker.
 Kräftor kräva dessa drycker.
 En liten snaps till varje klo,
 det är för strupen en lisa.
 Så här gör kräftvännen när det står
 kräftor på bordet och när han får
 en liten snaps till varje klo.
 Nu är det slut på vår visa.''',
        about: '',
      ),
      Song(
        title: 'Kvällens klo',
        author: '',
        melody: 'Melodi: Milord',
        lyrics: '''Oh, vilken klo, milord,
 den är så stor och hård.
 Vi hoppas alla att den aldrig ska ta slut.
 Den är så fin, milord,
 nu blir det världsrekord,
 nu ska vi suga tills det goda kommer ut.''',
        about: '',
      ),
      Song(
        title: 'Kräftklon',
        author: '',
        melody: 'Melodi: Vi gå över daggstänkta berg',
        lyrics: '''Till kräftklon man tager en sup - sup - sup,
 som letar sig ner i magens djup - djup - djup.
 Och den som börjar tveka,
 om detta var en räka,
 han tar sig ytterligare en sup - sup – sup.''',
        about: '',
      ),
      Song(
        title: 'Vi går mot de dillprydda berg',
        author: '',
        melody: 'Melodi: Vi gå över daggstänkta berg',
        lyrics: '''Vi går mot de dillprydda berg, fallera,
som lånat av rubinerna sin färg, fallera.
Så skön på stora faten
ligger kräftan, gudamaten,
vilken stärker och styrker vår märg, fallera!

Man gärna har levt i den tron, fallera,
att kräftor kräva O.P. eller Kron, fallera.
Men råkar du det sakna
så låt ej glädjen slakna,
njut ändå utav stjärten eller klon, fallera!

Visst kräftan är dyr uti pris, fallera,
och säljs nu till på köpet kilovis, fallera.
Dock svär jag vid min lyra,
kräftor kan ej bli för dyra,
ty det finns ingen liknande spis, fallera!

Och därför så måste vi ta, fallera,
för kräftorna ett rungande hurra. Hipp hurra!
Ty livet blommar just i
fagra månaden augusti,
då vårt månsken och kräftor vi ha, fallera!

Så fattom ett glas i vår hand, fallera,
och tagom då och då en tår på tand, fallera.
För klon vi tager tvärt en
sup och sedan två för stjärten,
ty vi måste ju festa ibland, fallera!''',
        about: '',
      ),
      Song(
        title: 'Kräftan kommer, kräftan går',
        author: '',
        melody: 'Melodi: Kovan kommer, kovan går',
        lyrics: '''Kräftan fordrar nubbar små,
nubbar små, nubbar små.
Annars börjar den att gå,
den att gå, den att gå.
Uti magen din den kryper
och i tarmarna dig nyper.
Detta är ett ofint sätt,
svälj nu nubben fort och lätt.

Kräftan är ett läckert djur,
läckert djur, läckert djur.
Färgen den går aldrig ur,
aldrig ur, aldrig ur.
Går den bakåt är den okokt.
Går den framåt är det oklokt,
att du tar en pärla till,
men du gör ju som du vill.

Kräftorna har hårda skal,
hårda skal, hårda skal.
Jordgubbar har lösa skal,
lösa skal, lösa skal.
Detta för att på dem skilja,
med den allra sista vilja.
Efter tersen i kvadrat:
gott det är med lite mat.''',
        about: '',
      ),
      Song(
        title: 'Våran kräfta',
        author: '',
        melody: 'Melodi: Gubben Noak',
        lyrics: '''Våran kräfta,
våran kräfta,
har båd' klo och stjärt.
Klon den ska vi knäcka,
stjärten ska vi spräcka.
Sedan supen
ner i strupen
häller vi så tvärt.''',
        about: '',
      ),
      Song(
        title: 'Å kräftan å ja',
        author: '',
        melody: 'Melodi: Jänta å ja',
        lyrics: '''Å kräftan å ja', å kräftan å ja',
vi trivas så bra tillsammans, å ja.
Ja kräftan å ja', ja kräftan å ja',
vi trivas i fröjd och gamman.
Där ligger hon på ett fat mellan dill
och lovar precis så mycket du vill
och får man en iskall nubbe därtill,
av glädje man faller samman.''',
        about: '',
      ),
      Song(
        title: 'Å detta brännvin',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Å detta brännvin som alltid jäklas
för framåt natten man måste kräkas.
För kräftor har ju så hårda skal,
de kan ju fastna i ens anal!''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Bakfylla',
    songs: [
      Song(
        title: 'Treo-Comp',
        author: '',
        melody: 'Melodi: Längtan till landet',
        lyrics: '''Morgonstund med smak av döda bävrar,
frukostmorgonen är över oss.
Hur vi stretar, hur vi alla vägrar,
så går solen likt förbannat opp.
Snart är dagen här med hemska plågor,
huvudvärk och ångest, elände, men
det finns faktiskt ett glas som dig kan rädda:
Treo-Comp, vår frälsare och vän.''',
        about: '',
      ),
      Song(
        title: 'Dränkta lucia',
        author: '',
        melody: 'Melodi: Natten går tunga fjät',
        lyrics: '''Huvet slår kopparslag,
ögonen svider,
magen i obehag,
natten den lider.
Då genom strupen går,
hembränd en liten tår,
vördat vare vårat brännvin,
vördat vårt brännvin''',
        about: '',
      ),
      Song(
        title: 'Strömmar av whisky',
        author: '',
        melody: 'Melodi: Drömmar av silver',
        lyrics: '''Strömmar av whisky, strömmar av gin.
Vaknar på morgon' full som ett svin.
Stiger ur sängen, faller omkull,
sjutusan djävlar, vad jag är full.''',
        about: '',
      ),
      Song(
        title: 'Var var jag igår?',
        author: '',
        melody: 'Melodi: Bei mir bist du schö',
        lyrics: '''||: Bär ner mig till sjön! :||
Jag känner att jag måste i.
Och när du badat mig,
så får du torka mig,
och när du torkat mig,
så vill jag i igen.
||: Bär ner mig till sjön! :||
Jag känner att jag måste i.

||: Var var jag igår? :||
Jag undrar var jag var igår.
Mitt huvud känns så tungt,
jag kan ej andas lugnt.
Hur har jag kommit hem?
Vem stoppa' mig i säng?
||: Var var jag igår? :||
Jag undrar var jag var igår.

||: Var var jag igår? :||
Jag undrar var jag var igår.
Ett gäng med aspirin,
det gör mig pigg och fin.
Nu kan jag se igen,
jag hamnat i fel säng!
||: Var var jag igår? :||
Jag undrar var jag var igår.''',
        about: '',
      ),
      Song(
        title: 'Mjölk, mjölk',
        author: '',
        melody: 'Melodi: Trink, trink, brüderlein trink',
        lyrics: '''Mjölk, mjölk, vi vill ha mjölk.
Det är en underbar dryck!
Mjölk, mjölk, vi vill ha mjölk.
Det är vår senaste nyck.
Hämta din spann och mjölka din get,
ge mig en klunk utav det.
Slut upp i kampen för helnykterhet.
Mjölk är det bästa vi vet!''',
        about: '',
      ),
      Song(
        title: 'Bakfyllesång',
        author: '',
        melody: 'Melodi: Änglamark',
        lyrics: '''Huvudvärk, svettningar, darrningar och diarré.
Ge mig en isblåsa och en gul Jaffa.
B-vitaminer, apelsinjuice och lite te.
Kan de bakfyllan måhända bortfösa.
Festen var dålig, men nattsexan blev för bra:
Jansson's temptation och brännvinsturnering.
Borta var jag då i går kväll men mest i dag.
No concentration, men mycket vomering.''',
        about: '',
      ),
      Song(
        title: 'Drömmar om sillis',
        author: '',
        melody: 'Melodi: Drömmar av silver',
        lyrics: '''Drömmar om sillis, drömmar av gull,
tag lilla nubben, snart är du full.
Morgonen randas: tomglas, kapsyl.
Drömmen blev vatten och två magnecyl.''',
        about: '',
      ),
      Song(
        title: 'När mitt rus har tagit slut',
        author: '',
        melody: 'Melodi: I ett hus vid skogens slut',
        lyrics: '''När mitt rus har tagit slut
svullen tunga tittar ut.
Hjärtat skuttar fram så fort,
vad är det jag gjort?

Hjälp ack, hjälp ack, hjälp du mig
annars vänder magen sig.
Återställar'n kom nu in,
in i munnen min.''',
        about: '',
      ),
      Song(
        title: 'Antisnapsvisa',
        author: '',
        melody: 'Melodi: Sjösala vals',
        lyrics: '''Huvudet vi lyfter med ett stön ur vår säng,
diskmaskin i buken, kanoner i huvudet.
Tungan som en plyschsoffa och yrseln i sväng,
i ångesten vi svettas, kom sjung din refräng.

Varför finns det aldrig någon nykter karneval?
O, låt oss somna om så vi slipper våra kval.
Men se, så många supar vi redan kastat upp i sängen:
Renat och Skåne, Svartvinbär och fager Bäsk!''',
        about: '',
      ),
      Song(
        title: 'Sämre och sämre',
        author: '',
        melody: 'Melodi: Bättre och bättre, dag för dag',
        lyrics: '''Sämre och sämre da'n därpå.
Säg mig, vad gjorde jag igår?
Många namn för hur man mår sen
både bilmek, betongkeps och Ågren.
Tag, en
akvavitamin
och gå på för full maskin.
Aj, aj, aj, aj, aj, aj, aj
men jag mår sämre och sämre da'n därpå!''',
        about: '',
      ),
      Song(
        title: 'Vit vecka',
        author: '',
        melody: 'Melodi: White Christmas',
        lyrics: '''Jag drömmer om en vit vecka.
Sju dagar utan alkohol. 
Tänk att bara skåla 
i juice och cola 
och sedan minnas allt man gjort.

Jag drömmer om en vit vecka, 
det finns en gräns för vad jag tål. 
Jag vill inte ha mera sprit 
så låt nästa vecka vara vit.''',
        about: '',
      ),
      Song(
        title: 'Minnet',
        author: 'Text: Bosse Österberg',
        melody: 'Melodi: Memory',
        lyrics: '''Minne, jag har tappat mitt minne.
Är jag svensk eller finne?
Kommer inte ihåg.
Inne, är jag ut' eller inne?
Jag har luckor i minne',
sån' där små alkohol.
Men besinn' er,
man tätar med det brännvin man får,
fastän minnet och helan går.''',
        about: 'Skall sjungas på finlandssvenska.',
      ),
      Song(
        title: 'Hjärnan som klister',
        author: '',
        melody: 'Melodi: Lili Marlene',
        lyrics: '''Hjärnan som klister,
handen skakar lätt.
Levern är som ister,
stor och vit av fett.
Magen den känns som en vulkan,
mitt öga lyser som Aldebaran.
||: Ta hit ett glas, för fan. :||''',
        about: '',
      ),
      Song(
        title: 'Krognota',
        author: '',
        melody: 'Melodi: Lysmaskidyll',
        lyrics: '''Tag dig en sup fast din plånbok bantar.
Räkningen här går på feta slantar:

Snaps               400:69
Påfyllda supar      22:10
Groggvirke          1003:19
Mera utbångat       (fast utan kvitton)

Avrundat            2502
Någonting att tänka på.''',
        about: '',
      ),
      Song(
        title: 'Botvisa',
        author: '',
        melody: 'Melodi: I fjol så gick jag med herrarna i hagen',
        lyrics: '''Igår så drack jag punsch hela dagen,
aj, aj, punsch hela dagen, ja, punsch hela dagen.
Idag har jag huvudvärk och ont uti magen,
aj, aj, ont uti magen, ja, ont uti magen.

Igår var jag glad som en kalv ut på ängen,
aj, aj, kalv ut på ängen, ja, kalv ut på ängen.
Idag har jag svårt att komma ur sängen,
aj, aj, komma ur sängen, ja, komma ur sängen.

Men nu ska jag ta mig en ny liten pärla,
aj, aj, ny liten pärla, ja, ny liten pärla.
Det lättar humöret, man blir fri som en ärla,
aj, aj, fri som ärla, ja, fri som en ärla.''',
        about: '',
      ),
      Song(
        title: 'Kopparslagaren',
        author: '',
        melody: 'Melodi: En sockerbagare här bor i staden',
        lyrics: '''Små kopparslagare här bor i staden,
de är ett otyg för varje glad en.
De plågar stora, de plågar små,
de plågar många - mest dan därpå.

På förmiddagen de väcker opp en
med dunderslag uti huvudknoppen.
Sin dag de börjar med friskt humör,
och till sin verkstad de huvet gör.

Men hettan ökar inunder pannan
man söker släcka med vattenkannan.
Man dricker mjölk och tar magnecyl
men ändock glöder var molekyl

Dock, kopparslagare kan man nog slippa
om man går nykter ifrån var hippa,
om man förblir vad man är helt visst,
en pigg och skötsam absolutist.

Men vi, som lärt utav livet mera,
vet andra medel att den parera.
Vi har en visdom - oändligt djup;
vi stiger opp och tar oss en sup.''',
        about: '',
      ),
      Song(
        title: 'Buller och trätor',
        author: '',
        melody: 'Melodi: Ja, må han leva',
        lyrics: '''Buller och trätor och slagsmål och fasor,
stölder och rån, även mordbrand och död.
Drunkning, förfrysning och armod och trasor,
sjukdom och svaghet, förgiftning och nöd.

Minskning av lust och av arbetsförmåga,
slapphet i vilja, i kraft och moral.
Ärftliga anlag till sjukdom och plåga,
lidelse, olycka, tårar, skandal.

Laster och slöhet och uttröttat hjärta,
grymhet och piskslag och missbrukad makt.
Ondska, förbannelse, undergång, smärta,
fattigdom, elände, skam och förakt.

Hatet och svälten samt ängslig förbidan,
fängelse, yrsel och vansinnig blick.
Sprängning av hemmet samt sorger och kvidan,
säg vill du pröva allt detta så drick.''',
        about: '',
      ),
      Song(
        title: 'Full just idag',
        author: '',
        melody: 'Melodi: Rosen (refrängen)',
        lyrics: '''Full just idag, men imorgon ska jag
bli nykterist för jag mår inte bra.
Den sista jag tog fick mig att få nog,
fick mig att spy i min grannes sko!''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Nördigt',
    songs: [
      Song(
        title: 'Om Emacs',
        author: 'Text: Ingemar Ragnemalm',
        melody: 'Melodi: Kovan kommer, kovan går',
        lyrics: '''Emacs är en stor koloss.
Tugga på, tugga på.
Verkar aldrig komma loss.
Tugga på, tugga på.
För att flytta på ett tecken
går två meg i garbage-säcken.
Ner i skärmens undre rand
står: garbage collecting, done!

Väntar på'n till min pension.
Tugga på, tugga på.
Emacs gör en Sparcstation
Tugga på, tugga på.
snabb som en ABC-80.
Högprestanda blir så smått i
Emacs, den ser säkert till
ingen dödtid blir förspilld!

Emacs skriven är i Lisp.
Tugga på, tugga på.
Inget rimmar alls på Lisp.
Tugga på, tugga på.
Om du in i kärnan trevar
finn en gnu som motorn vevar.
Den drar Emacs runt för hand!
Klart att det går trögt ibland!''',
        about: '',
      ),
      Song(
        title: 'Länka lilla dator där',
        author: '',
        melody: 'Melodi: Blinka lilla stjärna',
        lyrics: '''Länka lilla dator där,
hur jag undrar hur du är.
Ständigt frestar du mitt mod,
med en massa fel i kod.
Blinka lilla dator kär, 
vad jag undrar hur du gör.

När den sköna sol blitt släckt,
strax du startas upp så käckt.
Börjar klar din stilla gång,
glimmar, glimmar natten lång.
Länka lilla dator kär,
jag undrar vad klockan är.''',
        about: '',
      ),
      Song(
        title: 'Système International',
        author: '',
        melody: 'Melodi: Studentsången',
        lyrics: '''W kg m Wb s
Ω m T A rad
Cd S N s
Ω A m Lx dB
°C W/m²
J/kg H V C
kg/m³ mol
m/s²
m/s²
F!''',
        about: '',
      ),
      Song(
        title: 'Bring back my dump tape to me',
        author: '',
        melody: 'Melodi: My Bonnie',
        lyrics: '''His first day our new operator
knew not what root's powers might be.
One 'rm -rf /' later... ('r m dash r f slash')
Oh, bring back my dump tape to me!

Bring back, bring back,
oh, bring back that dump tape to me, to me.
Bring back, bring back,
oh, bring back our last DAT.''',
        about: '',
      ),
      Song(
        title: 'Yesterday',
        author: '',
        melody: '',
        lyrics: '''Yesterday,
all those backups seemed a waste of pay.
Now my database has gone away.
Oh I believe in yesterday.

Suddenly,
there's not half the files there used to be,
and there's a milestone hanging over me.
The system crashed so suddenly.

I pushed something wrong,
what it was I could not say.

Now all my data's gone
and I long for yesterday-ay-ay-ay.

Yesterday,
the need for back-ups seemed so far away.
I knew my data was all here to stay,
now I believe in yesterday.''',
        about: '',
      ),
      Song(
        title: 'Programmer\'s Drinking Song',
        author: '',
        melody: '',
        lyrics: '''99 little bugs in the code,
99 bugs in the code.
Fix one bug, compile it again,
100 little bugs in the code.''',
        about: 'Repeat until (bugs == 0).',
      ),
      Song(
        title: 'Mors lilla dator',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''Mors lilla dator åt skogen gick,
mitt i programmet sade det klick.
Svart bidde skärmen och minnet försvann,
den informationen kan ingen få fram.

Brummeli-brum, vad brummar där?
Det sprakar och gnistrar, ett jordfel det är!
Blixtar blå ifrån burken det slå,
synd att jag här nu ensam får stå.

Hyscheli-hysch, vad prasslar här?
Fram väller pappret ur printern där!
Den har fått nippran av tecken så små,
jag tror att jag snart hemåt skall gå.''',
        about: '',
      ),
      Song(
        title: 'The BASIC Song',
        author: '',
        melody: 'Melodi: Mors lille Olle',
        lyrics: '''10 LET oss nu fatta i våra glas
20 INPUT en klunk utav det som där has
30 IF du fått nog THEN till 50 min vän
40 ELSE GOTO-baka till l0 igen
50 END''',
        about: '',
      ),
      Song(
        title: 'Hackerns trosbekännelse',
        author: '',
        melody: '',
        lyrics: '''Fader Dator, som är i Salen,
helgad vare Din skärm,
tillkomme Ditt tangentbord,
ske Din vilja, så som i minnet,
så ock på nätet.
Vår dagliga utskrift giv oss idag
och förlåt oss våra misstag
trots att vi ej förlåta
dem som skyldiga äro.
Låt oss icke behöva vänta
och fräls oss ifrån dumpar.
Ty Salen är din
och Makten hos Handledaren 
i Evighet.

UNIX.''',
        about: '',
      ),
      Song(
        title: 'Write in C',
        author: '',
        melody: 'Melodi: Let it be',
        lyrics: '''When I find my code in tons of trouble,
friends and colleagues come to me,
speaking words of wisdom:
'Write in C'.

As the deadline fast approaches,
and bugs are all that I can see,
somewhere, someone whispers:
'Write in C'.

Write in C, write in C,
write in C, oh, write in C.
LOGO's dead and buried,
write in C.

I used to write a lot of FORTRAN,
for science it worked flawlessly.
try using it for graphics!
Write in C.

If you've just spent nearly 30 hours
debugging some assembly,
soon you will be glad to
write in C.

Write in C, write in C,
write in C, yeah, write in C.
Only wimps use BASIC,
write in C.

Write in C, write in C 
write in C, oh, write in C.
Pascal won't quite cut it,
write in C.

Write in C, write in C,
write in C, yeah, write in C.
Don't even mention COBOL,
write in C.

And when the screen is fuzzy,
And the editor is bugging me.
I'm sick of ones and zeroes,
write in C.

A thousand people swear that T.P.
Seven is the one for me.
I hate the word PROCEDURE,
write in C.

Write in C, write in C,
Write in C, yeah, write in C.
PL1 is 80's,
write in C.

Write in C, write in C,
Write in C, yeah, write in C.
The government loves ADA,
write in C.''',
        about: '',
      ),
    ],
  ),
  Category(
    name: 'Odödliga',
    songs: [
      Song(
        title: 'Fredmans epistel N:o 81',
        author: 'Text: Carl Michael Bellman',
        melody: 'Melodi: Carl Michael Bellman',
        lyrics: '''Märk hur' vår skugga, märk Movitz Mon Frere!
Innom et mörker sig slutar,
Hur Guld och Purpur i Skåfveln, den där,
Byts til grus och klutar.
Vinkar Charon från sin brusande älf,
Och tre gånger sen Dödgräfvaren sjelf,
Mer du din drufva ej kryster.
Därföre Movitz kom hjelp mig och hvälf
Grafsten öfver vår Syster.

Ach längtansvärda och bortskymda skjul,
Under de susande grenar,
Där Tid och Döden en skönhet och ful
Til et stoft förenar!
Til dig aldrig Afund sökt någon stig,
Lyckan, eljest uti flygten så vig,
Aldrig kring Grifterna ilar.
Ovän där väpnad, hvad synes väl dig?
Bryter fromt sina pilar.

Lillklockan klämtar til Storklockans dön,
Löfvad står Cantorn i porten;
Och vid de skrålande Gåssarnas bön,
Helgar denna orten.
Vägen opp til Templets griftprydda stad
Trampas mellan Rosors gulnade blad,
Multnade Plankor och Bårar;
Til dess den långa och svartklädda rad,
Djupt sig bugar med tårar.

Så gick til hvila, från Slagsmål och Bal,
Grälmakar Löfberg, din maka;
Där, dit åt gräset långhalsig och smal,
Du än glor tilbaka.
Hon från Danto bommen skildes i dag,
Och med Hänne alla lustiga lag;
Hvem skall nu Flaskan befalla.
Torstig var hon och uttorstig är jag;
Vi ä torstiga alla.''',
        about: 'Til Grälmakar Löfberg i Sterbhuset vid Danto bommen, diktad vid Grafven. Dedicerad til Doctor BLAD. Sannolikt skriven 1790 eller möjligen något år tidigare.',
      ),
      Song(
        title: 'Fredmans sång N:o 64',
        author: 'Text: Carl Michael Bellman',
        melody: 'Melodi: Carl Michael Bellman',
        lyrics: '''Fjäriln vingad syns på Haga,
Mellan dimmors frost och dun,
Sig sitt gröna skjul tillaga,
Och i blomman, sin paulun;
Minsta kräk i kärr och syra,
Nyss af Solens värma väckt,
Til en ny högtidlig yra
Eldas vid Zephirens flägt.

Haga, i ditt sköte röjes
Gräsets brodd och gula plan;
Stolt i dina ränlar höjes
Gungande den hvita Svan;
Längst ur skogens glesa kamrar
Höras täta återskall,
Än från den graniten hamrar,
Än från yx i björk och tall.

Se Brunsvikens små Najader
Höja sina gyldne horn,
Och de frusande cascader
Sprutas öfver Solna torn;
Under skygd af hvälfda stammar,
På den väg man städad ser,
Fålen yfs och hjulet dammar,
Bonden mildt åt Haga ler.

Hvad Gudomlig lust at röna
Innom en så ljuflig Park,
Då man hälsad af sin Sköna,
Ögnas af en mild Monark!
Hvarje blick hans öga skickar,
Lockar tacksamhetens tår;
Rörd och tjust af dessa blickar,
Sjelf den trumpne glädtig går.''',
        about: 'Dediceras til Herr Capitainen KJERSTEIN. Skriven 1790 eller 1791.',
      ),
      Song(
        title: 'Fredmans sång N:o 21',
        author: 'Text: Carl Michael Bellman',
        melody: '',
        lyrics: '''Så lunka vi så småningom
Från Bacchi buller och tumult,
När döden ropar: Granne kom,
Ditt timglas är nu fullt.
Du Gubbe fäll din krycka ner,
Och du, du Yngling, lyd min lag,
Den skönsta Nymph som åt dig ler
Inunder armen tag.
Tycker du at grafven är för djup,
Nå välan så tag dig då en sup,
Tag dig sen dito en, dito två, dito tre,
Så dör du nöjdare.

Du vid din remmare och präss,
Rödbrusig och med hatt på sned,
Snart skrider fram din likprocess
I några svarta led;
Och du som pratar där så stort,
Med band och stjernor på din rock,
Re'n snickarn kistan färdig gjort,
Och hyflar på des lock.
Tycker du...

Men du som med en trumpen min,
Bland riglar, galler, järn och lås,
Dig hvilar på ditt penningskrin,
Innom din stängda bås;
Och du som svartsjuk slår i kras
Buteljer, speglar och pocal;
Bjud nu god natt, drick ut dit glas,
Och helsa din rival;
Tycker du...

Och du som under titlars klang
Din tiggarstaf förgylt hvart år,
Som knappast har, med all din rang,
En skilling til din bår;
Och du som ilsken, feg och lat,
Fördömmer vaggan som dig hvälft,
Och ändå dagligt är placat
Til glasets sista hälft;
Tycker du...

Du som vid Martis fältbasun
I blodig skjorta sträckt ditt steg;
Och du som tumlar i paulun,
I Chloris armar feg;
Och du som med din gyldne bok
Vid templets genljud reser dig,
Som rister hufvud lärd och klok,
Och för mot afgrund krig;
Tycker du...

Men du som med en ärlig min
Plär dina vänner häda jämt,
Och dem förtalar vid dit vin,
Och det liksom på skämt;
Och du som ej försvarar dem,
Fastän ur deras flaskor du,
Du väl kan slicka dina fem,
Hvad svarar du väl nu?
Tycker du...

Men du som til din återfärd,
Ifrån det du til bordet gick,
Ej klingat för din raska värd,
Fastän han ropar: Drick!
Drif sådan gäst från mat och vin,
Kör honom med sitt anhang ut,
Och sen med en ovänlig min,
Ryck remmarn ur hans trut.
Tycker du...

Säg är du nöjd? min granne säg,
Så prisa värden nu til slut;
Om vi ha en och samma väg,
Så följoms åt; drick ut.
Men först med vinet rödt och hvitt
För vår Värdinna bugom oss,
Och halkom sen i grafven fritt,
Vid aftonstjernans bloss.
Tycker du...''',
        about: 'Måltids sång. Skriven mellan jul och nyår 1787 medan Bellman sörjde sonen Elis som gått bort ett par månader tidigare.',
      ),
      Song(
        title: 'Fredmans sång N:o 35',
        author: 'Text: Carl Michael Bellman',
        melody: 'Melodi: Carl Michael Bellman',
        lyrics: '''||: Gubben Noach, Gubben Noach
Var en hedersman, :||
När han gick ur arken
Plantera han på marken
Mycket vin, ja mycket vin, ja
Detta gjorde han.

||: Noach rodde, Noach rodde
Ur sin gamla ark, :||
Köpte sig buteljer,
Sådana man sälljer,
För at dricka, för at dricka
På vår nya park.

||: Han väl visste, han väl visste
At en mänska var :||
Torstig af naturen
Som de andra djuren,
Därför han ock, därför han ock
Vin planterat har.

||: Gumman Noach, Gumman Noach
Var en heders fru; :||
Hon gaf man sin dricka;
Fick jag sådan flicka,
Gifte jag mig, gifte jag mig
Just på stunden nu.

||: Aldrig sad' hon, aldrig sad' hon
Kära far nå nå; :||
Sätt ifrån dig kruset;
Nej det ena ruset
På det andra, på det andra
Lät hon gubben få.

||: Gubben Noach, Gubben Noach
Brukte egna hår, :||
Pipskägg, hakan trinder
Rosenröda kinder,
Drack i botten, drack i botten.
Hurra och gutår!

||: Då var lustigt, då var lustigt
På vår gröna jord; :||
Man fick väl til bästa,
Ingen torstig nästa
Satt och blängde, satt och blängde
Vid et dukadt bord.

||: Inga skålar, inga skålar
Gjorde då besvär, :||
Då var ej den läran:
Jag skal ha den äran;
Nej i botten, nej i botten
Drack man ur så här.''',
        about: '''1 Mos 9:20-21: 'Och Noah begynte til och wardt en åkerman, och planterade en wingård. Och tå han drack af winet, wardt han drucken, och låg oskyld i sine hyddo'.''',
      ),
      Song(
        title: 'Bort alt hvad oro gör',
        author: 'Text: Carl Michael Bellman',
        melody: '',
        lyrics: '''Bort alt hvad oro gör, 
bort alt hvad hjertat qväljer!
Bäst at man väljer
Bland desse Bouteiller
Sin mag-liqueur.
Granne! gör du just som jag gör,
Vet denna oljan ger humeur.
Hvad det var läckert!
Hvad var det? Renskt Bläckert?
Oui Monseigneur.

Bort alt hvad oro gör,
Alt är ju stoft och aska,
Låt oss bli raska,
Och tömma vår flaska
Bland Bröderna.
Granne! gör du just som jag gör,
Vet denna oljan ger humeur.
Hvad det var mägtigt!
Hvad var det? ... Jo präktigt,
Mallaga - ja.''',
        about: 'Sång nr 17 ur Bacchi Tempel.',
      ),
    ],
  ),
  Category(
    name: 'Ekivoka',
    songs: [
      Song(
        title: 'Porros visa – pojkarnas',
        author: '',
        melody: 'Melodi: Portos visa',
        lyrics: '''Jag vill börja schlicka,
var fan är min flicka,
vem i helvete stal min modell?
Skall kättjan mig tvinga,
min höger börja svinga?
Nej, för fan, bara blunda och svälj!
Vilken smörja! Får jag spörja:
"Vem för fan tror att jag är en Älg?"

Till Thailand vi rider 
och sedan vad det lider
träffar vi välan på någon club.
Och där skall vi fläska,
blott stöta i det bästa.
Uti alla med hål i,
vi tänker stå hårt i,
för att sätta på rubb och stubb!''',
        about: '',
      ),
      Song(
        title: 'Porros visa – flickornas',
        author: '',
        melody: 'Melodi: Portos visa',
        lyrics: '''Jag vill runka pille,
va' fan är min kille,
vem i helvete stal min massagestav.
Skall törsten mig tvinga,
en balle börja svinga?
Nej för fan bara runka och svälj!
Vilken smörja! Får jag spörja:
”Vem för fan tror att jag är en dum brud?”

Till Grekland vi rider
och sedan vad det lider
träffar vi välan på någon hunk.
Och han ska vi rida,
tills det börjar svida.
Då tackar vi kuken,
och tar sen till kuken,
för att sätta på rubb och stubb!''',
        about: '',
      ),
      Song(
        title: 'Det satt en mus',
        author: '',
        melody: 'Melodi: När månen vandrar på fästet blå',
        lyrics: '''Det satt en mus på en klyvarbom
och torr i fittan var kräket,
och tungan hängde från skepparns gom,
mot hans styvnande veke.
Jag vill ha kuk hördes musen kvida,
och skepparn svarte: "Fläk upp din slida,
ska du få fläns, pumpa läns!"''',
        about: '',
      ),
      Song(
        title: 'Drömmar om plåt',
        author: '',
        melody: 'Melodi: Drömmar av ',
        lyrics: '''Drömmar om silver, drömmar om plåt, 
vakna nu älskling, för nu är jag kåt. 
Lägg dig på sängen, slappna nu av, 
sära på bena för här kommer jag!''',
        about: '',
      ),
      Song(
        title: 'Dinah',
        author: '',
        melody: '',
        lyrics: '''A rich girl has a limousine, 
a poor girl has a truck. 
The only time that Dinah rides 
is when she has a fuck.  
Dinah, Dinah, show us your legs,
show us your legs, show us your legs. 
Dinah, Dinah, show us your legs 
a yard above your knee.   

A rich girl has a ring of gold,
a poor girl one of brass;
but the only ring that Dinah has
is the one around her arse.
Dinah, Dinah …
A rich girl uses vaseline,
a poor girl uses lard;
but Dinah uses axle grease
because her cunt's so hard.
Dinah, Dinah …
A rich girl uses sanitary towels
a poor girl uses sheets;
but Dinah uses fuck all - see 
the trail along the streets.
Dinah, Dinah …''',
        about: '',
      ),
      Song(
        title: 'Bastuvisan',
        author: '',
        melody: 'Melodi: Vårat gäng ',
        lyrics: '''Här i våran bastu känns
torra värmen, som ej bränns,
som en smekning, ljuv och skön.
Bed din bastubön.
Gno med skrubben. - Raka stubben
av din haka. - Sen skall smaka
när du beger - dig tillbaka
in i stugan till din tjej.

Ger hon rakpussen till dej.
Kläd dig och res därpå hem
ren och blank, och lagom slank
och kom snart igen.''',
        about: '',
      ),
      Song(
        title: 'Mossbelupen',
        author: '',
        melody: 'Melodi: Imbelupet',
        lyrics: '''Mossbelupen fitta under skrynklig buk.
Den ser ut att rymma minst en tolvtumskuk.
I dess kanter hänga slamsor, gonorré och annan skit,
och i raggen kilar baggen hit och dit.

Kuken sprutar, Ida kvider när det går.
Satsen rinner nerför Idas feta lår.
Men därinne på en pinne, hänger Idas mödom kvar,
den ska hänga där på tork i fjorton dar.''',
        about: '',
      ),
      Song(
        title: 'Bamse',
        author: '',
        melody: '',
        lyrics: '''Bamse knullar lille Skutt i baken
Svansen kittlar skönt när man är naken.
Skalman runkar, Farmor kokar honung,
så att Bamse kan få stånd igen.

Gangbang uti alla hål,
är mer än Mickelina tål,
men det är svårt att säga stopp
med munnen full av snopp.

Krösus köper kärleken på gatan.
Sedan får han ont av bara satan.
Går till doktorn, doktorn bara skrattar:
”Du kan aldrig mer få stånd igen.”

För om man inte kan få stånd
Så får man ej en enda gång
Få pippa nå’n med kuken lång
och det som är så skönt

Skalman, Skalman, homosexualman
Bamse, tramse knullar med sin fru.
Lille skutt har fullt upp i sin farmor.
Sjörövarna bögar på sitt skepp.''',
        about: '',
      ),
      Song(
        title: 'Blottarkärlek',
        author: '',
        melody: 'Melodi: Flottarkärlek',
        lyrics: '''Jag var ung en gång för länge se’n
en blottare på stan
och dessutom var jag traktens nymfoman.
Varje flicka varje pojke 
var för mig ett sexobjekt.
Även hästar, kor och grisar jag betäckt.
Haderian hadera, doppa löken varje da’.
Om man dricker råa ägg så går det bra.

Jag ska gnida på min pillesnopp
så länge jag förmår.
Jag ska gnida fram och åter tills det går.
Och när sädesvätskan sprutar
sjunger jag en liten sång
och jag drömmer om en flicka het och trång.
Haderian haderej, sätta på varenda tjej.
Om du ringer mig så sätter jag på dig.''',
        about: '',
      ),
      Song(
        title: 'Åh Carola',
        author: '',
        melody: 'Melodi: Någonstans i Sverige ',
        lyrics: '''Hennes ben är för korta, 
hennes kjol är för lång.
Hennes bröst är för stora, 
hennes blus är för trång.
Men det gör detsamma, 
för hon är vår idol. 
Åh, Carola Häggkvist.''',
        about: '',
      ),
      Song(
        title: 'Bluff och spark',
        author: '',
        melody: 'Melodi: Lingonben',
        lyrics: '''Bluff och Spark och Tork och Kvark
voro sex små dvärgar.
En var ful och en var kåt
och en han hade herpes.
"Hej!", sa Tork till lille Kvark,
"Känner du hur jag kör i dig?"
Han som har varit i Patpong.
Ja, det gjorde Sixten.
Ser du på hans lilla sak,
där han pippar på sitt tak.
Tripp och trapp och drypan.
Se hans feta faster.

Tomtefar med årets rus,
sitter som ett päron.
Han har ingen egen mus
allt i sitt stora harem.
Söt och blöt är skogens fé,
trollen är bjudna dit för kel.
Det lilla trollet pax för det.
Nu ska mormor runka.
Bryna och nuppa natten lång,
prinsen är här med jättefjong!
Hipp och hopp och just det.
Hästen går på valium.


Stora slottet Irumpandipp,
ligger Bortom Farsta.
Di får ingen komma in,
som inte använt vaselin.
Försupet troll och sockersnopp,
nu ska vi pulla häxan våt.
Vill du mig ta, så ta mig då,
i mitt lilla tryne.
Kungen är full av konkelbär.
Silvia sitter här och svär.
Viktoria är full av sperma.
Hur ska Lillan orka?''',
        about: '',
      ),
      Song(
        title: 'Bondvisa',
        author: '',
        melody: 'Melodi: När månen vandrar ',
        lyrics: '''Och drängen han satt i vån,
i kammaren, i kammaren.
Han banka kuken sin gul och blå.
Med hammaren, med hammaren.
Jag ska lära dig att bli lång,
först med hammare och sen med tång.
Din djävel, Din djävel.

Och pigan hon satt i vån,
vid väven, vid väven.
Hon banka fittan sin gul och blå,
med näven, med näven.
Jag ska lära dig sluka ballen,
först med hammare och sen med pallen,
din djävel, din djävel.''',
        about: '',
      ),
      Song(
        title: 'Allmänna obdusången',
        author: '',
        melody: 'Melodi: Askungens klänning',
        lyrics: '''Nekrofiler är vi båda och vi sitter här och knådar.
Vi tar ju dem i häcken och slänger den i bäcken.
Vi styckar alla liken och slänger dem i diken.
Att allmänpraktisera och att liken obducera
får oss båda att spontant ejakulera.

Vi är båda pederaster men vi har nog inga laster.
Vi vill inte klappa slinkor, blott skära barnaskinkor.
Vi är ej i grottekvarnen men väl i gossebarnen.
Vi lockar dem med snask och sen så tar vi fram vår task
och särar de ej upp sig får de dask.

Vi har inga perversioner. Vi gör det helt normalt.
Enligt gamla traditioner. Så tar vi dem analt.
Tänk om den blir en pumpa långt upp uti ett gossebarn.
Då jävlar blir det trångt, ja då har det gått för långt,
å ungjäveln sprängs sedan mitt itu.

Vi pippar gärna rådjur och ett och annat smådjur.
Vi tejpar de små liven och smörjer med saliven.
En boa sitter gott om man har smort honom med flott,
med olja, smör och ister men inte med nått klister
undviker man att alla hinnor brister.''',
        about: '',
      ),
      Song(
        title: 'Calypso pervers',
        author: '',
        melody: 'Melodi: En glad calypso om våren',
        lyrics: '''Ack den som vore i dina kläder.
Jag blir så vansinnigt kåt på läder.
För att ej tala om gummi se’n
som slinker följsamt längs bara ben.
Jag vill bli inlåst med dubbla reglar.
I mörkret sitter jag sen och dreglar.
Och väntar på en stöddig vakt
med piskan lär mig vem som har makt.
Tralalalalalala, tralalalalalala...

Jag drömmer om piskor, tömmar.
Och vispad grädde i strida strömmar
som smetas in på min bara kropp
när grisar rider mig i galopp.
Min döda amma ifrån Castilien
har plötsligt fått mig att bli nekrofil igen.
Men allra bäst är en kärleksstund
framför brasan med mormors hund!
Tralalalalalala, tralalalalalala...''',
        about: '',
      ),
      Song(
        title: 'Sillesalteriet',
        author: '',
        melody: 'Melodi: Skörda linet idag ',
        lyrics: '''Förr jobba´ vi i sillesalteri
men va finge vi för detta?
Jo, trasiga böxer, loppbetna lår
å inte ett strå på fetta.''',
        about: '',
      ),
      Song(
        title: 'Det var en gång en flicka',
        author: '',
        melody: 'Melodi: Jag gick mig ut en afton',
        lyrics: '''Det var en gång en flicka som red uppå ett svin
och flickan hon var naken men glad var hennes min.
Den borsten, den borsten
den river gott som brännevin.
Den borsten, den borsten
på ryggen på ett svin.

Det var en gång en flicka som satt uppå en katt
och flickan hon var naken och glatt var hennes skratt.
Den svansen, den svansen
den visste var den satt, satt, satt.
Den svansen, den svansen
i ändan på en katt.

Det var en gång en pojke som red på en spargris
och pojken han var naken på alla sätt och vis.
Den grisen, den grisen
den blir då aldrig full, full, full.
Den grisen, den grisen den blir då aldrig full.

Det var en gång en flicka som red på en kastrull
och flickan hon var naken och tjockt var hennes hull.
Kastrullen, kastrullen
den känns ju som ett knull, knull, knull.
Kastrullen, kastrullen den känns ju som ett knull.


Det var en gång en pojke som tände på en tjej
och tjejen hon var villig så han tog fram sin grej.
Han fumla, han fumla men hitta aldrig in, in, in.
Han fumla, han fumla men hitta aldrig in.

Det var en gång en flicka som gled uppå en ål
och flickan hon var naken och glatt var hennes vrål.
Den ålen, den ålen
den känns ju som en stång av stål.
Den ålen, den ålen
den känns ju som en... skål.

Det var en gång en flicka som red uppå en älg.
Svälj!''',
        about: '',
      ),
      Song(
        title: 'Fido',
        author: '',
        melody: 'Melodi: Flottarkärlek ',
        lyrics: '''Har du sett en? Har du sett den?
Har du haft den i din mun?
Har du sett den? Har du haft den i din mun?
Har du kallat den för Fido?
Har du haft den i din mun?
Har du sett den? Har du haft den i din mun? 

Jag har sett den. Jag har sett den.
Jag har haft den i min mun.
Jag har sett den. Jag har haft den i min mun.
Jag har kallat den för Fido.
Jag har haft den i min mun.
Jag har sett den. Jag har haft den i min mun.''',
        about: '',
      ),
      Song(
        title: 'En flicka ung och fager',
        author: '',
        melody: 'Melodi: Gällivarevisa',
        lyrics: '''En flicka ung och fager, en gosse stor och stark
omfamnade varandra uti en lummig park.
Men bäst de båda njöto, så kom där en polis,
han vakna ur sin slummer utav en jubelfis.

Han störta in i snåret, får fatt i gossens ben,
drar honom ut ur hålet och för till finkan sen.
Där fick han sova av sig sitt sköna kärleksrus,
men kanske flickan sitter ännu på Tavasthus.

Men gossen svor att hämnas, han tänkte ut en plan.
Som skulle drabba alla, båd’ hög och låg i stan.
Han kokade en soppa på kuttan av ett bi
och lade femton tuppkukar och stånkanpulver i.

I stadens alla brunnar han hällde sin mixtur,
och snart så märktes verkan på människor och djur.
På varje gammal kärring, på varje gammal märr,
stod kuttan våt och slaskig och alltid uppå spärr.

Det knullades på gator, det knullades i hus,
och horor blevo rika och priset steg på ljus.
Prostinnan satt i trappan ihop med sin adjunkt,
och prosten stod på torget och tog en stilla runk.

På rådhusporten spikades en kutta och en kuk,
som stodo mot betalning till allmänhetens bruk.
De unga och de gamla, de ställde sig i kö,
de voro fast beslutna att knulla eller dö.''',
        about: '',
      ),
      Song(
        title: 'Hon var så ensam',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Flickorna: 
Hon var så liten.
Hon var så frusen.
Hon hade istappar under musen.
(flickorna står upp och skakar på ändan)
TINGE LINGE LING

Pojkarna: 
Det var en stor en.
Det var en kall en.
Han hade istappar under ballen.
(pojkarna står upp och skakar på ändan)
DONG DONGE DONG''',
        about: '',
      ),
      Song(
        title: 'Äldre män',
        author: '',
        melody: 'Melodi: I Appladalen i Värnamo',
        lyrics: '''Äldre män ska man ej förakta.
De gör det noga, de gör det sakta.
Yngre män däremot är skit,
det är ju knappt att de hinner dit!''',
        about: '',
      ),
      Song(
        title: 'Gamle Niklas',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Åh gamle Niklas tog fram kodongen.
Ja den han använt för sjunde gången.
Han sa till Hulda "Jag har dig kär,
säg får jag knulla dig med den här?".

Han knulla luder och religiösa,
och med baptister och barnalösa.
Och bögars kukar han sög ibland
uppå ett pisshål i Mälarstrand.

Hon var tju’sju år och hette Britta.
Hon hade Kungsholmens största fitta.
Hon hade bröst utav marsipan,
hon var ju hora den lilla fan.

Och så en vecka efter leken,
det börja djävlas så smått i veken.
Först blev den lila, sen gredelin,
och måste smörjas med vaselin.

Så gamle Niklas for till kliniken,
och drämde kuken i skrivbordsteaken.
Och syster rodna’, och doktorn sa:
"Den lilla jäveln måst’ kortas av".

Och medan doktorn tog fram skalpellen
så sade systern som hette Ellen:
"Det var ju synd på en prima kuk.
Den skulle passat uti min buk".

Och gamle Niklas han miste pålen,
och måste hålla i själva strålen.
Och det som skiljer han från en tjej,
det är att blygläppar har han ej.''',
        about: '',
      ),
      Song(
        title: 'Brittas fitta',
        author: '',
        melody: '',
        lyrics: '''Ett, ett, kuken som ett spett
upp i Brittas fitta, kom får ni titta!
Två, två, kuken börjar stå, upp i…
Tre, tre, kuken står på sne’, upp i…
Fyra, fyra, kuken slår en lyra, upp i…
Fem, fem, kuken hittar hem, upp i…
Sex, sex, kuken käkar kex, upp i…
Sju, sju, kuken kommer nu, upp i…
Åtta, åtta, kuken börjar spotta, upp i…
Nio, nio, kuken går på bio, upp i…
Tio, tio, kuken far till Rio, upp i…
Elva, elva, kuken börjar skälva, upp i…
Tolv, tolv, kuken som en kolv, upp i…
Hundra, hundra, kuken börjar undra, upp i…
Tusen, tusen, kuken går i musen, 
upp i Brittas fitta, kom får ni titta!''',
        about: '',
      ),
      Song(
        title: 'Horhuset',
        author: 'Text: Roger Melander',
        melody: 'Melodi: Du käre lille snickebo',
        lyrics: '''Till bygdens horhus ränner jag när frugan min ej vill.
För kärringfan där hemma hon vill bara ligga still.
Flickorna ska hoppa omkring 
och rida på min pille ville ving.
Då mår jag bra, hoppfallera.
Ja lyckos mig, hopp fallerej.

På bygdens krog där ränner jag då törsten faller på.
Där hemma kan jag inget ha för hon slår ut det då.
Brännvin vill jag dricka min vän
och öl och vin och brännvin om igen.
Då mår jag bra, hoppfallera
Ja lyckos mig, hopp fallerej.''',
        about: '',
      ),
      Song(
        title: 'Horan och Idioten',
        author: '',
        melody: 'Melodi: Amanda Lundblom',
        lyrics: '''Det satt en hora på himmelsberge’,
Bom-fadderi fadderullan-berge’.
Och visa fittan för hela Sverige,
Bom-fadderi fadderullan-lej.
Men breve' satt en idiot,
Bom-fadderi fadderullan-lej,
Hugg i!
Och gnodde kuken med pepparrot,
Bom-fadderi fadderullan-lej.
''',
        about: '',
      ),
      Song(
        title: 'Gorkaleken',
        author: '',
        melody: 'Melodi: Om man inte har för stora pretentioner',
        lyrics: '''Nu jag sjunga vill en sång, om när jag var ung en gång
och besökte finska mässan uti Purkka.
Uti glada vänners lag, lekte vi en lek ett slag,
och den lekte vi med hjälp utav en gorka.

Den gick till på detta vis: Först så skaffa vi ett pris,
en liter brännvin skulle vinnaren få dricka.
Sen så tog vi alla tre, och skaffade en gorka med,
och så tog vi hjälp utav en konstig schlicka.

Uti hennes viitto vi, stoppa hela gorkan i
så att den for ut då vi slog hon på magen.
Den som sen fick gorkan mest, 
ut på golvet han var bäst,
vi var tre grabbar som tävla hela dagen. 

Pekka var en starker man, 
han vann brännvinsflaskan han
och som pris så fick han sätta sig att dricka.
Osquar kom på andra plats, ut i denna hårda match,
och som pris så fick han schnulla våran schlicka. 

Men se jag var också med, jag var sämst av alla tre
uti denna hårda match jag inte orka'.
Jag var alldeles för svag, ut i detta starka lag,
och som tröstpris fick jag äta våran gorka.
(…och den som hade legat på golvet!)''',
        about: '',
      ),
      Song(
        title: 'Inlandsbanan',
        author: '',
        melody: 'Melodi: Amanda Lundbom ',
        lyrics: '''När dom byggde inlandsbanan,
Bom-fadderi fadderallan-banan,
då blev alla flickor galna.
Bom-fadderi fadderallan-lej.
Skaffa sig en fästeman. 
Bom-fadderi fadderallan-lej.
Hugg i!
Å pippa gjorde dom minsann.
Hej bom-fadderi fadderallan-lej.

När dom sen på morron vakna, Bom... 
börja dom sin mödom sakna, Bom... 
gick så hem till mor och far, Bom... 
Hugg i!
O mor, o mor, jag är med barn. Hej bom...  

Mor, o mor, jag är en hora, Bom... 
Mor, jag räknas till dom stora, Bom... 
15 år och gängad mus, Bom... 
Hugg i!
När dom andra kör med ljus. Hej bom...  

Barn, o barn, du skall ej gråta, Bom... 
Ännu finns det karlar kåta, Bom... 
Barnet ditt, det tager jag, Bom... 
Hugg i! Å dra!
Så pippa du, så vaggar jag. Hej bom...  ''',
        about: '',
      ),
      Song(
        title: 'Sven Ludvig Task',
        author: '',
        melody: 'Melodi: Kovan kommer',
        lyrics: '''Känner du Sven Ludvig Task?
Sven Ludvig Task, Sven Ludvig Task.
Kuken hans är som en mask.
Som en mask, som en mask.
Han kan hamra, han kan snickra.
Och visst kan han flickor smickra.
Men när han ska till att gör’t,
blir det oftast knut på snör’t.''',
        about: '',
      ),
      Song(
        title: 'Louisa Rask',
        author: '',
        melody: 'Melodi: Kovan kommer',
        lyrics: '''Har du sett Louisa Rask,
Louisa Rask, Louisa Rask.
Hon har fittan full med mask, 
full med mask, full med mask.
Hon kan både sy och väva, 
runka kuk med bägge näva'.
Sist hon gjorde fittan ren, 
hitta hon en tegelsten.
Har du vart i Louisas säng, 
Louisas säng, Louisas säng.
Det har varje karl med lem, 
karl med lem, karl med lem.
Dit är inte svårt att hitta, 
hela huset stinker fitta.
Även när hon har sin mens, 
slukar hon den största fläns.''',
        about: '',
      ),
      Song(
        title: 'Märta',
        author: '',
        melody: 'Melodi: I Apladalen i Värnamo',
        lyrics: '''Hon var min fröjd och hon var min smärta
hon bar det klingande namnet Märta.
Vi bruka träffas nå’n gång ibland,
sen hon mitt hjärta satt i brand.
Vi satt i parken och konversera
då sade Märta ”Ska vi spatsera?
Vi går på staden en liten stund
sen får du följa mig på mitt rum.”
På ett bananskal som låg på vägen
där halka Märta och blev förlägen.
Ty kan ni gissa vad jag fick se?
Jo, Märta hade ett ben av trä.
Och när vi sedan kom fram till porten
var hon en flicka av rätta sorten.
Hon lyfte kjortelen upp en flik
där hängde portnyckeln på en spik.
Vi låg i sängen utan att somna
jag hörde sakta hur Märta domna
och till musiken av hennes snark
jag rista namnet i hennes bark.
Uppå en båttur det hemska hände
att båten sig upp och ner den vände
och stackars Märta hon finns ej mer
hon flöt för länge med huvet ner.

Med denna visa vill jag påvisa
att kvinns med träben bör man avvisa.
Jag plockat stickor i fjorton dar
och har väl ändå minst hälften kvar.''',
        about: '',
      ),
      Song(
        title: 'I ett fönster',
        author: '',
        melody: 'Melodi: Säj inte nej säj kanske, kanske',
        lyrics: '''I ett fönster satt en flicka
Och onanerade så glatt
Hon hade uppkört en vibrerande
Massagestav i sin tratt

Utanför stod en pojke
Och hans drule stod rakt ut
Han förhuden drog tillbaka
Och ur röret kom ett sprut

Säj inte nej, säj pulla pulla pulla mig
Så ska jag knulla dig
Jag är så kåti-kåti-kåti-kåti-kåt
Säj inte nej, säj pulla, pulla, pulla mig.
Så ska jag knulla dig jag är så kåt …''',
        about: '',
      ),
      Song(
        title: 'Sir Charlie',
        author: '',
        melody: 'Melodi: Glory Glory',
        lyrics: '''||: Oh, Sir Charlie do not touch me :||
Said the girl in the bed with nothing on at all.''',
        about: '',
      ),
      Song(
        title: 'In kommer far',
        author: '',
        melody: 'Melodi: Å jänta å jag',
        lyrics: '''In kommer far, full som han var.
Drämde sin task i bordet.
Efter kommer mor, gorma och svor,
undra vad fan han gjorde.
Ska du förstöra pillevicken din
som du skall köra upp i kuttan min.
Barnen de skrek, katten han sket, 
och farfar han stod och runka.''',
        about: '',
      ),
      Song(
        title: 'Bjällerklang',
        author: '',
        melody: '',
        lyrics: '''Full och glad kommer jag
storstadsgatan fram.
Får ett snabbt ögonkast  
från en fin Madam. 
Våt och varm, arm i arm 
går vi till ett hus. 
I en säng tar jag en sväng 
i hennes sköna mus. 

Efter nån halv minut 
tar all sperma slut. 
Då vill hon ha bra betalt 
men i pungen är det skralt. 
Stor och ful stöddig man 
ur garderoben fram. 
Tittar ut med glättig min 
och luktar brännevin.''',
        about: '',
      ),
      Song(
        title: 'Pisksnärtar friska',
        author: '',
        melody: 'Melodi: Vårvindar friska',
        lyrics: '''Pisksnärtar friska
vina och smiska,
sprider behag i hela min kropp.
Klatshigt det smäller,
brunstigt jag gnäller,
härligt, jag tror att jag kastar opp.
Bojorna kring min hals de dras åt.
Gud, jag tror nästan att jag blir kåt.
Risa mig duktigt,
ögat blir fuktigt,
jag gråter glädjens tår.

Slagen blir värre
var nu min herre,
piska mig med din strumpebandsstropp.
Taggtråd kring magen
ökar behagen
uti min fordom välskapta kropp.
Blodet som strömmar ur öppna sår
klibbar så sakta fast i mitt hår.
Varbölder spricka,
O vilken flicka,
säkert blir du min död.''',
        about: '',
      ),
      Song(
        title: 'Sadistaria',
        author: '',
        melody: 'Melodi: Chaplins manschettvisa',
        lyrics: '''Jag föddes av min faster,
båd’ far och mor pedraster.
Jag levt mitt liv i laster.
Je suis Marquis de Sade.

Min uppväxt på bordellen
tog slut med stora skrällen.
Värdinnan blev på smällen.
Je suis Marquis de Sade.

När jag på flicka tänder,
får hon av piskan stora ränder.
Båd’ på mage rygg och länder.
Je suis Marquis de Sade.

Jag älskar i naturen,
får umgås fritt med djuren.
Europa, hon med tjuren,
älskas av Marquis de Sade.

Jag eggas ej av rosor,
av snus i gyllne dosor.
Blott när jag ett par trosor
får sätta på Marquis de Sade.

Med blonda och brunetter
och nå’n gång med svarta getter.
Spenderas mina nätter.
Je suis Marquis de Sade.

När jag kommit rätt i tagen
går jag ut i gröna hagen,
och tar en ko på magen.
Je suis Marquis de Sade

När jag går på toiletten
har jag smärgel i boetten.
Det river gott i stjärten.
Je suis Marquis de Sade.

Går jag sen upp mitt i natten
kissar jag en skvätt i hatten.
Se’n rinner det på kravatten.
Je suis Marquis de Sade.

Mina vänner masochister,
nekrofiler och sadister.
Var blotterska min syster.
Je suis Marquis de Sade.

Nu kan jag inte mera,
skall ut och masturbera.
Kom med så blir vi flera.
Je suis Marquis de Sade.''',
        about: '',
      ),
      Song(
        title: 'Samborombon',
        author: '',
        melody: 'Melodi: Fritiof och Carmensita',
        lyrics: '''Samborombon, en liten by förutan gata.
Har ändå flickor som med dig ej blott vill prata.
Nästan i kanten av den blåa Atlanten,
och med Pampas bakom sig
många hundra gröna mil.
Dit kom jag ridande en afton i april,
för jag ville rida ranka.

Skratt, skrik och vällustiga stön 
hördes från huset och från många kåta kön.
Jag steg in, löste biljetten
och styrde stegen mot en säng
med den florerande lilla Carmensita.
Mamman den horan satt i vrån.
Hon gav mig ett ridspö, en pistong och en kondom.
Jag bjöd upp och Carmensita sa:
Si gracias, senór, Vámos á bailár rida ranka!

Carmencita lilla vän, 
har du ej slutat fnaska än?
Får jag tala med din mamma och din hallick,
jag vill ha dig för mig själv Carmencita!
Nej, Don Fritiof Andersson,
kom ej till Samborombon
om ni hyser andra planer när det gäller mig,
än att rida ranka.

Ack Carmencita gör mig inte så besviken.
Jag hade tänkt ägna mig helt åt erotiken,
sköta staken noga, spara safter och knoga.
Inte spela och dricka utan bara knoppa dig.
Säg Carmencita det är väl ändå blott med mig,
säg som ni vill rida ranka. 

Nej, Fritiof ni kan erotik,
men jag tror hellre jag vill ligga i butik.
Och förresten sa min mamma just idag
att hon visste vem som snart skulle
knoppa hennes dotter.
En som har tjugotusen kor,
och som är underbar på att bedriva hor.
Han har prisbelönta tjurar.
Han har oxar, får och svin.
Och han rider underbar ranka. 

Carmencita lilla vän,
akta dig för rik mans lem!
Lyckan den bor ej i statskontrollerad hor
och den kan heller inte köpas i sängar. (Jodå!)
Men min brandslang gör dig stinn
sprutar ända in i gommen din!
Och om det går galet, kåta ungar ska vi få
som kan rida ranka.''',
        about: '',
      ),
      Song(
        title: 'Snorkråkan',
        author: '',
        melody: 'Melodi: Vi på saltkråkan  ',
        lyrics: '''Vad det är skönt att stå här ner vid sjön och dra kuk.
Melker står och runkar. 
Båtsman, Båtsman har en djävla jätttekuk!

Malin äter flänsost varje dag, tralala.
Ollonet det blänker.
Peter njuter när hon tar hans kuk i mun.  

Å kåta Malin hon fick gonorré nu i kväll.
Nu har hela ön det.
Kåta Malin hon fick gonorré i kväll.

Lilla Stina vet knappt hur en kuk skall se ut.
Hon har inget könshår.
Men hon, men hon leker med sin säl var dag.

Tjorven pullar kuttan gul å blå varje dag.
Melkers stora balle.
Båtsman, Båtsman har en djävla jättekuk!

Å feta Tjorven hon vill ha en tjej nu i kväll.
Malin satte på´na.
Feta Tjorven spräckt utav en kvinnohand.

Teddie Freddie leker med varann´ mest var dag.
I en 69:a.
Incest, incest på deras familjefest.

Lilla Pelle kelar med sin vita kanin.
Räddad utav el-tejp.
Annars hade den nog spruckit mitt itu.

Farbror Melker är vår pedofil här på ön.
Stina är besudlad.
Melkers lem är färgad röd av hennes blod.

Österman han njuter med en ål i sitt hål.
Han känner hur den krälar.
Skiten sprutar när den åker in och ut.''',
        about: '',
      ),
      Song(
        title: 'Än en gång därin',
        author: '',
        melody: 'Melodi: Än en gång däran',
        lyrics: '''Än en gång därin, bröder, än en gång därin.
Följom den urgamla säden!
Intill sista tum, bröder, intill sista tum,
spräcker vi mödis på pläden.
Blankare ollon sågs aldrig i en här
än dessa kukar. Kamrater, i gevär!
Än en gång därin, bröder, än en gång därin!
Svenska fittors djup, här är din kuk!''',
        about: '',
      ),
      Song(
        title: 'Far och mor ',
        author: '',
        melody: 'Melodi: Hallå du gamle indian',
        lyrics: '''Har du sett min far,
en så’n kuk han har.
Han kör posten i klippiga bergen.
Har du sett min mor,
med en fitta så stor.
Den är slemmig och lila till färgen.''',
        about: '',
      ),
      Song(
        title: 'Scoutledar-Frasse',
        author: '',
        melody: '',
        lyrics: '''Vem knackar på min dörr, vem knackar på min dörr, vem knackar på min dörr, sa den väna jungfrun.
Det är jag med patrull som är här för ett knull,
sa Scoutledar-Frasse
Du får stanna här i natt...
En timme får det ta, det är fler som ska ha...
Det kostar tio spänn...
Jag skiter i tian, vi kör sextinian...
Du får sova på min arm...
Jag skiter i armen, kör upp den i tarmen...
Ni får tvätta er vid källan…
Vi skiter i brunnen, ta den i munnen 
Du får tala med min mor...
Din mor hon får duga, hon är bra på att suga...
Får jag bjuda på champagne...
Jag skiter i skumpan, kör rätt upp i rumpan...
Ni får sova ibland fåren…
Vi skiter i fåren, kör rätt mellan låren
Du får viska vackra ord...
Jag skiter i tugget, kör rätt upp i hugget...
Men tänk på infektion...
Jag skiter i smittan, kör upp den i fittan...

Du får tala med min bror Herman...
Jag skiter i Herman, för nu kommer sperman...
Du får torka upp sperman...
Jag skiter i sperman, för nu tar jag Herman...''',
        about: '',
      ),
      Song(
        title: 'Dra ollon',
        author: '',
        melody: 'Melodi: Frukostklubben ',
        lyrics: '''Innan vi går ut i stadens jäkt och jobb 
så sjunger vi en enkel sång 
i våran runkarklubb: 
Dra ollon, dra ollon 
här är vår runkarklubb, 
dra ollon, dra ollon i kör! 

Innan vi går ut i stadens jäkt och rus 
så kör vi upp en gurka stor 
i våran lilla mus: 
Dra gurka, dra gurka 
i våran gurkaklubb, 
dra gurka, dra gurka i kör! 

Jag är en liten ekorre 
som handlar i affär. 
och när jag släpar hem min mat
så sjunger jag så här: 
Dra ollon, dra ollon,
fyll hela kylskåpet,
dra ollon, dra ollon, hej då!''',
        about: '',
      ),
      Song(
        title: 'The engineer song ',
        author: '',
        melody: 'Melodi: Ghost rider',
        lyrics: '''An engineer told me before he died, 
Ah hum, titty bum, titty bum, titty bum
An engineer told me before he died, 
Ah-hum, ah-hum!
An engineer told me before he died, 
and I've no reason to think he lied.
Ah hum, titty bum, titty bum, titty bum

He had a wife with a cunt so wide.
That she could never be satisfied.  

So he built a fucking great wheel.
With two Brass balls and a prick of steel.

The balls of Brass he filled with cream.
And the whole bloody thing was powered by steam. 

He tied her down onto the bed.
And lashed her arms above her head.

There she lay demanding a fuck.
He shook her hand and he wished her luck. 

Round and round went the fucking great wheel.
In and out went the prick of steel. 


Up and up went the level of steam.
Down and down went the level of cream. 

Till at last the maiden cried.
Enough, enough, I'm satisfied. 

Now we've come to the tragic bit.
There was no way of stopping it.

She was split from arse to tit.
And the whole bloody room was covered in shit.

It jumped off her and it jumped on him.
And then it went after his next of kin.

It jumped onto a cross town bus.
It's coming to fuck the rest of us! 

The moral of this story is clearly seen.
Never trust a fucking machine. ''',
        about: '',
      ),
      Song(
        title: 'Kyrkvisa',
        author: '',
        melody: 'Melodi: Tryggare kan ingen vara ',
        lyrics: '''Han som samla upp kollekten 
gick åstad och sket i fläkten. 
De som hade bra placering, 
de fick gratis sprutlackering.''',
        about: '',
      ),
      Song(
        title: 'The ball of Killiemuir ',
        author: '',
        melody: '',
        lyrics: '''The Ball, the Ball, the Ball of Killiemuir.
Where your wife and my wife were doing it on the floor.

Four and twenty virgins came down from Inverness.
When the ball was over there were four and twenty less.

Swing your balls against your partner, and your ass against the wall.
If you never get laid on a Saturday night, you'll never get laid at all.

Four and twenty whores, came up from Glockamore,
Only one went home that night and she was double bore.

Farmer Giles he was there, a sickle in his hand.
Every time he swung around he circumcised the band.

The village Magician he was there, performing his favourite trick.
By pulling the foreskin over his head, and vanishing up his prick.

The magician's Assistant she was there, in her favourite role.
She put her head between her legs and vanished up her hole.

The village Vicar he was there, and in a corner sat.
Amusing himself by abusing himself and catching it in his hat.

The Vicars Daughter she was there, performing a stumbling stunt. 
Hanging from the ceiling by the suction of her cunt.

The village Cripple he was there, he wasn’t up to much.
He lined them up against the wall and fucked them with his crutch.

The village Smithy, he was there, his prick was ironware.
When the first begun to rust, he swapped it for a spare.

The village Postman he was there, he had a case of pox.
He couldn't fuck the ladies so he fucked the letterbox.

They where fucking in the kitchen, they where fucking in the halls.
You couldn’t here the music for the clinging of the balls.

First lady forward, second lady back.
Third lady's finger up the fourth lady's crack.

The Bride was in the parlour explaining to the Groom.
The vagina, not the rectum is the entrance to the womb.

The Groom was in the bedroom explaining to the Bride
The Penis not the scrotum is the part that goes inside.

Little Tommy he was there, but he was only eight.
Too young for the ladies so he had to masturbate.

The village Shepard he was there, and he began to weep.
All these willing ladies and not a single sheep!

Sergeant O’Malley he was there, the pride of all the force.
They caught him in the stable, wanking off his horse!

Mrs. O'Malley she was there, swinging from the chandelier,
Spilling her menstrual juices into everybody's ear.

The village Whore she was there, she kept the crowd in fits.
Sliding down the banister and bouncing on her tits.

The village Pervert he was there, scratching at his crotch,
But no one minded him he was only there to watch!

The village Madam she was there, a-lying on the floor.
Every time she spread her legs the suction slammed the door.

The Blacksmith's brother he was there, a mighty stud was he.
Lined 'em up against the wall and fucked 'em three-by-three.

The village Baker he was there and looking pretty mean.
A-shouting that the girls were tarts, and pumping them full of cream!

The village Dwarf was also there, that randy little runt.
He'd dive upon a lassie, headfirst in her cunt!

The village Doctor he was there, he had his bag of tricks
And in between the dances he was sterilizing pricks!

The village Plumber he was there, he felt an awful fool;
He'd come eleven leagues or more and forgot to bring his tool!

The deaf mute lad was also there, and didn't have much to say.
Waitin' for the lasses to faint, and doin' 'em where they lay.

The village idiot he was there, sitting on a pole.
Pulled his foreskin over his head and whistled though the hole.

The village virgin she was there, all dressed in frilly pink.
She took the boys behind the fence and made their fingers stink.

The village veteran he was there, his balls were made of brass.
And when he blew a fart, my lads, the sparks flew out his ass.

The village leper he was there, sitting on a log.
Peeling foreskin off his cock and feeding it to his dog.

The village cook he was there, the bastard was quite crude.
They caught him in the kitchen masturbating in the food.

The Chimney Sweeper he was there, but he soon got the boot. 
For every time he farted he filled the room with soot.

I put my head upon her lap, and she put hers in mine.
We sucked a bit and blew a bit and that's called sixty-nine.

First they did it simple, then tried it he's and she's.
But before the ball was over, they went at it fives and threes!

They were fucking in the barley. They were fucking in the oats.
Some were fucking sheep but most were fucking goats.

There was fucking in the barns, and fucking on the ricks.
You couldn't hear the music for the swishing of the pricks.

There was fucking in the parlour. There was fucking in the stairs.
You couldn't see the carpet for the mass of pubic hairs.

There was fucking in the grass. There was fucking on the stones.
You couldn’t here the music for the joyful screams and moans.

And when the ball was over, they all had to confess.
Although they liked the music, the fucking was the best!''',
        about: '',
      ),
      Song(
        title: 'När gräset gror',
        author: '',
        melody: 'Melodi: När gäddorna leker',
        lyrics: '''När gräset gror på ängarna
går pigorna till drängarna. 
Ja då är det vår, 
och helan går.

När pigorna går där med hängiga bröst 
och drängarna inte längre har lust, 
ja då är det höst, 
men brännvin ger tröst.''',
        about: '',
      ),
      Song(
        title: '69:an',
        author: '',
        melody: 'Melodi: 34:an',
        lyrics: '''Denna ställning har vi prövat uti många herrans år.
Denna ställning har vi kört å den är inte särskilt svår.
Men så plötsligt häromdan bak i en bil så sa det knäck.
Å nu ligger vi då här som två tomater i en säck.

||: Så nu är det slut på sex och lekar.
Ja, nu är det färdigt inom kort.
Vi sitter fast uti varandra
å vi kan ej komma loss.
Å du tar farväl med vänster stortå fast uti min mun.
Vi sitter fast uti varandra
vi går i 69:an i himlen in. :||''',
        about: '',
      ),
      Song(
        title: 'Välkomstvisan',
        author: '',
        melody: 'Melodi: Räven raskar över isen',
        lyrics: '''Sperman rinner genom strupen.
Sperman rinner genom strupen.
Samlar sig, samlar sig
i små klumpar i djupen.
Flickan gapar med mun och hål.
Och du ska ge henne vad hon tål.
Å får jag se’n, å får jag se’n,
så vill jag knulla dig i röven.''',
        about: '',
      ),
      Song(
        title: 'Satsen kommer',
        author: '',
        melody: 'Melodi: Glada änkan',
        lyrics: '''Satsen kommer, satsen kommer
god och varm.
Kvinnor kvider när jag gnider
deras barm.
När min kuk den vuxit.
Ja, när den vecklats ut.
Kommer alla flickor hit
för att få ett skjut.''',
        about: '',
      ),
      Song(
        title: 'Katten den har fyra ben ',
        author: '',
        melody: 'Melodi: Mitt lilla face och jag',
        lyrics: '''Katten den har fyra ben.
Tuppen den har två
Snoppen den har inga alls,
men den kan stå ändå!''',
        about: '',
      ),
      Song(
        title: 'En liten marsipanvisa',
        author: '',
        melody: 'Melodi: Vi sätter oss i ringen.',
        lyrics: '''Vi sätter oss i ringen
och tar nånting i hand.
Vi är en massa syskon
som sätter på varann.
Men vi har inga gummin
det blir en massa barn.
Och de blir alla fina
de smakar marsipan. ''',
        about: '',
      ),
      Song(
        title: 'Int\' för jag har',
        author: '',
        melody: 'Melodi: Å jänta å ja ',
        lyrics: '''Int’ för jag har så stor pitt som far,
men jag drar på med stumpen jag har.
Hej hopp i tak, stor mus har jag,
och fem ballar går det i ’na''',
        about: '',
      ),
      Song(
        title: 'Aj Aj Aj',
        author: '',
        melody: '',
        lyrics: '''Aj, aj, aj,  
det svider när jag kissar.  
Aj, aj, aj,  
sen jag gängade dig.  
Aj, aj, aj,  
jag nu stolen missar,  
aj, aj, aj,
sen jag gängade dig.  ''',
        about: '',
      ),
      Song(
        title: 'Prostata',
        author: '',
        melody: 'Melodi: Ratata',
        lyrics: '''En afton uppå Stureplan 
gick Agda av och an.
Med purpurblod på läpparna, 
från Kungsgatan kom han. 
En blink, en blick, en nick, 
ett napp och så var saken klar. 
Fidelirum skål uti galet hål, 
och så var staken klar.  

Prostata han blåste uti tuban. 
Prostata från Mons till Vulva ljöd. 
Prostata, prostata, blixt och dunder här är jag.
Men det blev hans bleka död.  

De vandrade en gata fram 
som fått namn av Birger Jarl. 
Som krigade och älskade 
och söp uti sin sal. 
En mullig mö, ett krus med öl, 
och så var saken klar. 
Fidelurum skål uti galet hål 
och så var staken klar.  

Prostata...

En port slås strax igen 
bakom de våra unga tu. 
De traskade sig trötta 
uppför dryga trappor sju. 
Hon var så trött, så trött, så trött, 
när han slog upp sin dörr. 
Han var andfådd han, hon var ganska van, 
hon hade gått där förr.  

Prostata...
  
Men allt rann ut i sängen, 
av hans fina helkvällsplan. 
Från Borlänge han kommit  
för att roa sig i stan. 
Dock lyckades han pressa fram 
när ögonen han slöt. 
Fidelurum skål uti galet hål 
en sista tapper stöt.  ''',
        about: '',
      ),
      Song(
        title: 'Ekorren satt i tallen',
        author: '',
        melody: 'Melodi: Ekorren satt i granen',
        lyrics: '''Ekorrn satt i granen
bryggde lite planksaft.
Därav blev han knall, men
överfylld av man-kraft.
Hoppa han till stugan så,
våldtog katten och gick på
med den långa ludna svansen.''',
        about: '',
      ),
      Song(
        title: 'Den är för liten',
        author: '',
        melody: 'Melodi: Någonstans i Sverige ',
        lyrics: '''Hans axlar är för smala
Och hans stjärt är för stor.
Hans ben är rätt skrala,
han kan ej bedriva hor.
Men det gör detsamma för det går ju ändå,
för jag har en annan.

Hans kropp är rätt sliten
och hans kulor är för små.
Hans kuk den är för liten
och den vill inte stå.
Men det gör detsamma för det går ju ändå,
för jag har en annan.''',
        about: '',
      ),
      Song(
        title: 'Lilla Lisa',
        author: '',
        melody: 'Melodi: Där som sädesfälten',
        lyrics: '''När som sädesvätskan rinner ner för magen, 
lilla Lisa hon var bara fjorton år.
Jag kan se att hon är ganska så betagen
när jag trycker upp min kuk mot hennes lår. 
Hennes ögon dom var fyllda utav smärta.
Hennes sköte det var fyllt av hennes blod.
Och då tänker jag på gamla horan Berta
i vars fitta man får in ett matsalsbord.

… med kandelabrarna på!''',
        about: '',
      ),
      Song(
        title: 'Ovan där',
        author: '',
        melody: 'Melodi: Ovan där',
        lyrics: '''Frestelser man stöter på, när på gatorna man går, 
för där möter man ju flickor, som utan BH går. 
När en flick är så bar, är det svårt att vara karl, 
särskilt när man är så ovan vid sån't där.  
Ovan där, under klänningen, 
se på jumpern, erfar spänningen. 
Nog kan jag väl gissa vad som buktar där, 
men jag är så alld'les ovan där.

Jag har läst FIB-Aktuellt och sett flickorna som snällt 
viker ut sig, och de jobbar säkert rent och ideellt, 
men vad hjälper det väl mig, jag får aldrig någon tjej, 
för jag är så rent förbannat ovan där.  
Ovan där, vid all nakenhet, 
och min flicka sa "Du är för het". 
När jag börja kladda blev hon plötsligt tvär, 
och hon klagade "Du är för ovan där".  

När jag var uppå galej träffa jag en raggartjej, 
och jag tände till tusen, men då nobbade hon mig. 
Inför trycket av min hand blev hon som en konfirmand, 
och hon stönade "Han är för grov, han där."  
Grov, han där, han är fräck i mun. 
Jag gick miste om min kärleksstund, 
Att ragga flickor leder bara till besvär, 
särskilt om man är så ovan vid sånt där. ''',
        about: '',
      ),
      Song(
        title: 'Lilla vackra Anna',
        author: '',
        melody: 'Melodi: Lilla vackra Anna ',
        lyrics: '''Lilla vackra Anna om du vill 
släppa hela stora fittan till. 
Så ska vi försöka 
att vår släkt föröka. 
Lilla vackra Anna om du vill. 

Lilla vackra Anna om du vill 
vända också andra sidan till. 
Du är öm i blicken, 
jag är styv i picken. 
Lilla vackra Anna om du vill.''',
        about: '',
      ),
      Song(
        title: 'Ponny',
        author: '',
        melody: 'Melodi: Min kära lilla ponny',
        lyrics: '''Vad du är åh! Min kära lilla ponny.
Vad du är åh! Min kära lilla häst.
Du kommer aldrig först, min kära lilla ponny,
och du är den som gör det bäst.

Vad den är åh! Min kära lilla ponny.
Den är så åh! Min kära lilla häst.
Jag gränslar dig med tvång min kära lilla ponny.
Allt med en säker invand gest.''',
        about: '',
      ),
      Song(
        title: 'Amanda',
        author: '',
        melody: 'Melodi: I apladalen i Värnamo',
        lyrics: '''Amanda gångar sig ut i lunden
där får hon se att en ko står bunden.
Amanda gångar sig hem igen
slår upp en nubbe och sveper den.

Amanda gångar sig ned till stranden 
å sätter röva sin ner i sanden. 
Där kom en bergsman och spotta snus. 
han spottar rakt i Amandas mus.

Amanda har nu fått en dotter 
som säljer musa sin på lotter. 
Där kom en bergsman och drog en nit. 
Han blev förbannad och slog en skit. 

Amanda har nu blitt till åren 
och plockar flatlöss emellan låren. 
Ju mer hon plocka, desto mer hon fann. 
En gång hon plocka tills tårar rann.''',
        about: '',
      ),
      Song(
        title: 'Balladen om Theobald Thor',
        author: '',
        melody: '',
        lyrics: '''En man som hette Theobald Thor
han var en skicklig tamburmajor.
Succén han gjorde var alltid stor
när han snurra och svängde sin kuk.

För det var en stor kuk.
Lång och kraftig och tung.
Från dess topp till dess rot
var den tre, fyra fot,
och en medelstor ryggsäck till pung, pung, pung.

En dag gick Theobald ut en stund
att gå för sig själv i en lummig lund.
Han mötte en söt liten dam med en hund
som fick se honom svänga sin kuk.

Och Theobald pröva han ett trick han lärt.
Han släppte sin lem med en kraftig snärt
i huvudet på hunden som avled tvärt
när han snurra och svängde sin kuk.

Men damen hon blev bestört
hon svor och skrek nå´t oerhört
så det var ingen lyckad flirt
att snurra och svänga sin kuk.

Till följd av damens arga gnäll.
Han anhölls redan samma kväll
och sattes i en ensam cell
att snurra och svänga sin kuk.

När målet kom i rätten opp,
sa åklagarn´, ”Det får bli stopp
man får ej vifta med sin snopp
och snurra och svänga sin kuk”.

Men domarn´ han var tolerant.
Han sa, ”Själv gör jag likadant
jag tycker det är intressant
att snurra och svänga min kuk”.

Så Theobald han släpptes fri
och liksom domarn tycker vi 
att damer dom ska skita i
om man snurrar och svänger sin kuk ''',
        about: '',
      ),
      Song(
        title: 'I röva',
        author: '',
        melody: 'Melodi: Viggen',
        lyrics: '''I röva på en gris,
där växer lingonris,
i röva på en gammal tant
där växer likadant.
I röva på en häst,
där växer allra bäst,
i röva på min onkel Per,
där växa kånkelbär.''',
        about: '',
      ),
      Song(
        title: 'Jannes snuskvisa',
        author: 'Text: Janne Weijnitz, Djurmästeriet, DISK KM',
        melody: 'Melodi: My bonnie',
        lyrics: '''Pojke: Min förhud är röd och den svider.
Flicka: Min framstjärt är öm och gör ont.
Båda:   Vi har ju haft kul hela natten,
             och knullat runt mest hela da´n.
Flicka: Samlag, samlag, jag tror att jag vill bli 
            med barn, med barn.
Pojke:  Samlag, samlag, då kör jag dig med
            en banan, fy fan!''',
        about: '',
      ),
      Song(
        title: 'Intellektuell visa',
        author: '',
        melody: 'Melodi: Räven raska över isen',
        lyrics: '''Räven raska röva riset.
Riset raska renar räven.
Å röva ris, å röva rös.
Å riva räven i röven.
Finne finna femton flaskor
Flickan finna finnen fyller
Å finnen fes, å flickan fås.
Å riva flickan å flaskan
Lisa längtar leva loppan.
Ludvig längtar Lisa lära.
Å Lisa låg och läxan lär.
Å leva loppan i ladan ''',
        about: '',
      ),
      Song(
        title: 'Jul på Saltkråkan',
        author: '',
        melody: 'Melodi: Vi på Saltkråkan',
        lyrics: '''Det är så vackert när det ligger snö på vår sjö.
Melkers står och metar.
Båtsman, Båtsman han har is uti sin päls.

Söta Malin äter på en pepparskaksdeg.
Julestjärnan blänker.
Pelle njuter när det nu är jul igen.

Å söta Malin hon vill fira jul nu ikväll.
Nu gör hela ön det.
Söta Malin hon fick klappar nu ikväll.

Lilla Stina hon vet ej att Tomten inte finns.
Hon har ingen aning.
Hon har önskat sig en säl varenda dag.

Å käcka Tjorven hon vill se på TV ikväll.
Malin satte på den.
Käcka Tjorven ser på Kalle Anka nu.

Österman han leker med sin nya present
En doktors gummihandske.
Skummet sprutar när den in i disken far.''',
        about: '',
      ),
      Song(
        title: 'Trasig marskalk',
        author: '',
        melody: 'Melodi: Jag är fattig bonddräng',
        lyrics: '''Jag är trasig marskalk men jag lever ändå.
Pubar går och kommer medan jag knogar på.
Svabbar, går och tömmer, sköljer, torkar och bär.
Står med Falcon tappen häller öl till vår här.

Jag är trasig marskalk och har capsat i grus.
Uti vida världen har jag skaffat ett rus.
Hånglat, grovat, horat har jag också förstås.
Bytt en massa märken så har jag festat loss.

Så gått alla pubar, fester, roligt och kul.
Med de alla arren och med andra haft strul.
Meister, Spritis, Klubba, ja terminerna ut.
Åren som en marskalk de har nu tagit slut.

Men då säger Razor ”Trasig marskalk kom hit!
Jag har sett din strävan och ditt eviga slit.
Därför trasig marskalk är du välkommen här.
Därför trasig marskalk skall du vara mig när.”

Och jag trasig marskalk står så still inför Gud.
Iklädd svart och guld i våran heliga skrud.
”Nu du”, säger Razor ,”är ditt arbete slut.
Nu du trasig marskalk, nu får du vila ut.”''',
        about: '',
      ),
      Song(
        title: 'Horungen',
        author: 'Text: Åhlen & Brumma',
        melody: 'Melodi: Muslåten i askungen',
        lyrics: '''Förteater:
'Horungen, horungen!!'

'Ja, ja, jag kommer!'
        
mus1:
'Stackars horungen'
'Knappt har hon en man att knulla'
'Ropar de vi vill pulla'
'Kom genast hit, Kom genast hit'

'HORUNGEN!'

Vi ska suga vi ska slicka
på varenda kuk å fitta
spruta skumpan upp i rumpan
vi nu varandra humpar
vi spyr och söker hitta
varenda pung och klitta
med kådisar i rad
vi suger av ett hundratal
och dricker upp all sperma som vi nu kan hitta

mus1:
'Ja, knulla på ni'
'Vet ni vad?'
'Horungen får nog inte analt'

andramöss:
'Va? Inte det?'
'Vad var det du sa?'
        
mus1:
'Ni ska få se'
'Hon är inte blekt'
'Bara smisk, smisk, smisk'
'Hon får aldrig en riktig karl'

mus2:
'Öh, öh jag kommer nu'
        
andramöss:     
'Nej, vi ska pippa'

Vi ska nuppa vi ska pippa
Allas könshår ska vi klippa
För den stora horarkvällen
Ska hon bli porrmodellen
Vi piercar hennes tuttar
och rakar hennes mutta
och horungen på bal
bland penisar i hundratal
hon suger kuken och blir knullad upp i pruttan

En mus ger kuken ståfräs
Den blir stadig då
la la lalalala la
och anuset bleks av en sol''',
        about: 'Trivia: Styrelsespex 2008',
      ),
      Song(
        title: 'Tidelag',
        author: 'Text: Åhlen',
        melody: 'Melodi: Djingis Khan med gruppen Djingis Khan',
        lyrics: '''Den stackars lille mården är den siste kvar... av sitt slag HA HU HA!
Den enda jungfru här på gården han väntar på... tidelag HA HU

HA!
Måsen har blitt påsatt
giraffen han med
De stora starka djuren stod alla på led
När bonden kom där med sin stora feta HU HA HU!

Tid-tid-tidelag
han bräker, hon bräker vi bräker alla bräker
tid-tid-tidelag
Den råmar ni råmar jag råmar alla råmar
Stackars lilla geten HAHAHAHA!
Fick smaka på en fet en HOHOHOHO!
När bonden kom där med sin långa lena

Tid-tid-tidelag
han bräker, hon bräker vi bräker alla bräker
tid-tid-tidelag
Den råmar ni råmar jag råmar alla råmar
Räven den kanaljen HAHAHAHA!
Fick smeka han på ballen HOHOHOHO!
När bonden kom där med sin fina heta

Den stackars store bonden har haft allting han, på sin gård HA HU HA
Från stora feta oxar till det sista djur, en feg mård HA HU HA
Nu är han trött på zoofasoner
ja riktigt utled
och alla kåta djuren står ännu på led
Men bonden får ej upp sin stora feta HU HA HU!

Refr: Tid-tid-tidelag...''',
        about: 'Trivia: Dammiddag 2009',
      ),
      Song(
        title: 'Jag vill ha samlag',
        author: 'Text: Åhlen',
        melody: 'Melodi: Man ska ha husvagn',
        lyrics: '''Jag har knullat nästan allt som finns att sätta på
känt mig rätt så tuff och liksom bara festat å
men nu känns det som något saknas i mitt hem
nu vill jag ha barn som kommit ur min egna lem

Jag vill ha samlag
men inte ha någon kondom
Jag vill ha samlag
det finns nog risk för kondylom
Jag vill ha samlag
för det är så små barn blir till
Jag vill ha samlag
hoppas att du vill

I många år så var jag inte överdrivet mogen
jag rulla gärna runt med alla jäntorna i logen
men så en dag sa jag till frugan vänligt men bestämt
nu särar du på benen för nu ska vi två bli fem

Vi ska ha samlag
nu är det dags att bli gravid
Vi ska ha samlag
nu gör vi sex med all vår tid (??) (“nu har vi sex mest hela ti¨n”?)
Vi ska ha samlag
nu ska du få min barnajuice
Vi ska ha samlag
dags för dagens dos

5 minuter vaginalt och 5 minuter runka
5 minuter med oralt och 5 minuter plunka
5 minuter i anal och 5 minuter hem
5 minuter till så ska jag spruta med min lem

Jag vill ha samlag
men inte ha någon kondom
Jag vill ha samlag
det finns nog risk för kondylom
Jag vill ha samlag
för det är så små barn blir till
Jag vill ha samlag
hoppas att du vill''',
        about: '',
      ),
      Song(
        title: 'Saltkodarn',
        author: 'Text: Åhlen',
        melody: 'Melodi: Saltkråkan',
        lyrics: '''Jag skulle koda mig en liten app häromdan
Jag skulle koda mig en liten app häromdan
i Cobol, C och Fortran
Cobol, C och Fortran
språken som är äldre än vad farsan är

Jag skulle hitta mig en liten bugg häromdan
Jag skulle hitta mig en liten bugg häromdan
input kom i output
input kom i output
minnesläcka och jag fick ett segment fault

Jag skulle bygga på ett riktigt saftigt system
Jag skulle bygga på ett riktigt saftigt system
Känn den kompilera
känn den kompilera
datorn brölar, GCC är jävligt kåt   <3

Oh, java java, java java java java
Java java, java java java java
C++ är python
C++ är python
ruby, den kan, kyssa min kanelrubin

å se på perl hon är en liten hora, javisst
se på perl hon är en liten hora, javisst
tar den upp i snigeln
tar den upp i snigeln
viker ut sig, överallt på internet''',
        about: '',
      ),
    ],
  ),
];