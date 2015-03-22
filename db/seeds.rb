# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

capitals_with_country = [
    %w(	Afghanistan 	Kabul	),
    %w(	Albania 	Tirana	),
    %w(	Algeria 	Algiers	),
    %w(	Andorra 	Andorra\ la\ Vella	),
    %w(	Angola 	Luanda	),
    %w(	Antigua\ and\ Barbuda 	Saint\ John's	),
    %w(	Argentina 	Buenos\ Aires	),
    %w(	Armenia 	Yerevan	),
    %w(	Australia 	Canberra	),
    %w(	Austria 	Vienna	),
    %w(	Azerbaijan 	Baku	),
    %w(	The\ Bahamas 	Nassau	),
    %w(	Bahrain 	Manama	),
    %w(	Bangladesh 	Dhaka	),
    %w(	Barbados 	Bridgetown	),
    %w(	Belarus 	Minsk	),
    %w(	Belgium 	Brussels	),
    %w(	Belize 	Belmopan	),
    %w(	Benin 	Porto\ Novo	),
    %w(	Bhutan 	Thimphu	),
    %w(	Bolivia 	La\ Paz	),
    %w(	Bolivia 	Sucre	),
    %w(	Bosnia\ and\ Herzegovina 	Sarajevo	),
    %w(	Botswana 	Gaborone	),
    %w(	Brazil 	Brasilia	),
    %w(	Brunei 	Bandar\ Seri\ Begawan	),
    %w(	Bulgaria 	Sofia	),
    %w(	Burkina\ Faso 	Ouagadougou	),
    %w(	Burundi 	Bujumbura	),
    %w(	Cambodia 	Phnom\ Penh	),
    %w(	Cameroon 	Yaounde	),
    %w(	Canada 	Ottawa	),
    %w(	Cape\ Verde 	Praia	),
    %w(	Central\ African\ Republic 	Bangui	),
    %w(	Chad 	N'Djamena	),
    %w(	Chile 	Santiago	),
    %w(	China 	Beijing	),
    %w(	Colombia 	Bogota	),
    %w(	Comoros 	Moroni	),
    %w(	Costa\ Rica 	San\ Jose	),
    %w(	Cote\ d'Ivoire 	Yamoussoukro	),
    %w(	Cote\ d'Ivoire 	Abidjan	),
    %w(	Croatia 	Zagreb	),
    %w(	Cuba 	Havana	),
    %w(	Cyprus 	Nicosia	),
    %w(	Czech\ Republic 	Prague	),
    %w(	Democratic\ Republic\ of\ the\ Congo 	Kinshasa	),
    %w(	Denmark 	Copenhagen	),
    %w(	Djibouti 	Djibouti	),
    %w(	Dominica 	Roseau	),
    %w(	Dominican\ Republic 	Santo\ Domingo	),
    %w(	East\ Timor 	Dili	),
    %w(	Ecuador 	Quito	),
    %w(	Egypt 	Cairo	),
    %w(	El\ Salvador 	San\ Salvador	),
    %w(	Equatorial\ Guinea 	Malabo	),
    %w(	Eritrea 	Asmara	),
    %w(	Estonia 	Tallinn	),
    %w(	Ethiopia 	Addis\ Ababa	),
    %w(	Federated\ States\ of\ Micronesia 	Palikir	),
    %w(	Fiji 	Suva	),
    %w(	Finland 	Helsinki	),
    %w(	France 	Paris	),
    %w(	Gabon 	Libreville	),
    %w(	The\ Gambia 	Banjul	),
    %w(	Georgia 	Tbilisi	),
    %w(	Germany 	Berlin	),
    %w(	Ghana 	Accra	),
    %w(	Greece 	Athens	),
    %w(	Grenada 	Saint\ George's	),
    %w(	Guatemala 	Guatemala\ City	),
    %w(	Guinea 	Conakry	),
    %w(	Guinea-Bissau	Bissau	),
    %w(	Guyana 	Georgetown	),
    %w(	Haiti 	Port-au-Prince	),
    %w(	Honduras 	Tegucigalpa	),
    %w(	Hungary 	Budapest	),
    %w(	Iceland 	Reykjavik	),
    %w(	India 	New\ Delhi	),
    %w(	Indonesia 	Jakarta	),
    %w(	Iran 	Tehran	),
    %w(	Iraq 	Baghdad	),
    %w(	Ireland 	Dublin	),
    %w(	Israel 	Jerusalem	),
    %w(	Italy 	Rome	),
    %w(	Jamaica 	Kingston	),
    %w(	Japan 	Tokyo	),
    %w(	Jordan 	Amman	),
    %w(	Kazakhstan 	Astana	),
    %w(	Kenya 	Nairobi	),
    %w(	Kiribati 	Tarawa	),
    %w(	Kosovo 	Pristina	),
    %w(	Kuwait 	Kuwait\ City	),
    %w(	Kyrgyzstan 	Bishkek	),
    %w(	Laos 	Vientiane	),
    %w(	Latvia 	Riga	),
    %w(	Lebanon 	Beirut	),
    %w(	Lesotho 	Maseru	),
    %w(	Liberia 	Monrovia	),
    %w(	Libya 	Tripoli	),
    %w(	Liechtenstein 	Vaduz	),
    %w(	Lithuania 	Vilnius	),
    %w(	Luxembourg 	Luxembourg	),
    %w(	Macedonia 	Skopje	),
    %w(	Madagascar 	Antananarivo	),
    %w(	Malawi 	Lilongwe	),
    %w(	Malaysia 	Kuala\ Lumpur	),
    %w(	Maldives 	Male	),
    %w(	Mali 	Bamako	),
    %w(	Malta 	Valletta	),
    %w(	Marshall\ Islands 	Majuro	),
    %w(	Mauritania 	Nouakchott	),
    %w(	Mauritius 	Port\ Louis	),
    %w(	Mexico 	Mexico\ City	),
    %w(	Moldova 	Chisinau	),
    %w(	Monaco 	Monaco	),
    %w(	Mongolia 	Ulaanbaatar	),
    %w(	Montenegro 	Podgorica	),
    %w(	Morocco 	Rabat	),
    %w(	Mozambique 	Maputo	),
    %w(	Myanmar 	Rangoon	),
    %w(	Myanmar 	Naypyidaw	),
    %w(	Namibia 	Windhoek	),
    %w(	Nauru 	Yaren	),
    %w(	Nepal 	Kathmandu	),
    %w(	Netherlands 	Amsterdam	),
    %w(	Netherlands 	The\ Hague	),
    %w(	New\ Zealand 	Wellington	),
    %w(	Nicaragua 	Managua	),
    %w(	Niger 	Niamey	),
    %w(	Nigeria 	Abuja	),
    %w(	North\ Korea 	Pyongyang	),
    %w(	Norway 	Oslo	),
    %w(	Oman 	Muscat	),
    %w(	Pakistan 	Islamabad	),
    %w(	Palau 	Melekeok	),
    %w(	Panama 	Panama\ City	),
    %w(	Papua\ New\ Guinea 	Port\ Moresby	),
    %w(	Paraguay 	Asuncion	),
    %w(	Peru 	Lima	),
    %w(	Philippines 	Manila	),
    %w(	Poland 	Warsaw	),
    %w(	Portugal 	Lisbon	),
    %w(	Qatar 	Doha	),
    %w(	Republic\ of\ the\ Congo 	Brazzaville	),
    %w(	Romania 	Bucharest	),
    %w(	Russia 	Moscow	),
    %w(	Rwanda 	Kigali	),
    %w(	Saint\ Kitts\ and\ Nevis 	Basseterre	),
    %w(	Saint\ Lucia 	Castries	),
    %w(	Saint\ Vincent\ and\ the\ Grenadines 	Kingstown	),
    %w(	Samoa 	Apia	),
    %w(	San\ Marino 	San\ Marino	),
    %w(	Sao\ Tome\ and\ Principe 	Sao\ Tome	),
    %w(	Saudi\ Arabia 	Riyadh	),
    %w(	Senegal 	Dakar	),
    %w(	Serbia 	Belgrade	),
    %w(	Seychelles 	Victoria	),
    %w(	Sierra\ Leone 	Freetown	),
    %w(	Singapore 	Singapore	),
    %w(	Slovakia 	Bratislava	),
    %w(	Slovenia 	Ljubljana	),
    %w(	Solomon\ Islands 	Honiara	),
    %w(	Somalia 	Mogadishu	),
    %w(	South\ Africa 	Pretoria	),
    %w(	South\ Africa 	Cape\ Town	),
    %w(	South\ Africa 	Bloemfontein	),
    %w(	South\ Korea 	Seoul	),
    %w(	South\ Sudan 	Juba	),
    %w(	South\ Sudan 	Ramciel	),
    %w(	Spain 	Madrid	),
    %w(	Sri\ Lanka 	Colombo	),
    %w(	Sri\ Lanka 	Sri\ Jayewardenepura\ Kotte	),
    %w(	Sudan 	Khartoum	),
    %w(	Suriname 	Paramaribo	),
    %w(	Swaziland 	Mbabane	),
    %w(	Sweden 	Stockholm	),
    %w(	Switzerland 	Bern	),
    %w(	Syria 	Damascus	),
    %w(	Taiwan 	Taipei	),
    %w(	Tajikistan 	Dushanbe	),
    %w(	Tanzania 	Dar\ es\ Salaam	),
    %w(	Tanzania 	Dodoma	),
    %w(	Thailand 	Bangkok	),
    %w(	Togo 	Lome	),
    %w(	Tonga 	Nuku'alofa	),
    %w(	Trinidad\ and\ Tobago 	Port-of-Spain	),
    %w(	Tunisia 	Tunis	),
    %w(	Turkey 	Ankara	),
    %w(	Turkmenistan 	Ashgabat	),
    %w(	Tuvalu 	Funafuti	),
    %w(	Uganda 	Kampala	),
    %w(	Ukraine 	Kiev	),
    %w(	United\ Arab\ Emirates 	Abu\ Dhabi	),
    %w(	United\ Kingdom 	London	),
    %w(	United\ States\ of\ America 	Washington\ D.C.	),
    %w(	Uruguay 	Montevideo	),
    %w(	Uzbekistan 	Tashkent	),
    %w(	Vanuatu 	Port-Vila	),
    %w(	Vatican\ City 	Vatican\ City	),
    %w(	Venezuela 	Caracas	),
    %w(	Vietnam 	Hanoi	),
    %w(	Yemen 	Sanaa	),
    %w(	Zambia 	Lusaka	),
    %w(	Zimbabwe 	Harare	)
]

capitals_with_country.each do |c|
  country = Country.find_or_create_by!(name: c[0])
  Capital.find_or_create_by!(name: c[1], country: country)
end

states = [
    %w(	Alabama	Montgomery AL	),
    %w(	Alaska	Juneau	AK),
    %w(	Arizona	Phoenix	AZ),
    %w(	Arkansas	Little\ Rock AR	),
    %w(	California	Sacramento CA	),
    %w(	Colorado	Denver CO	),
    %w(	Connecticut	Hartford CT	),
    %w(	Delaware	Dover DE	),
    %w(	Florida	Tallahassee FL	),
    %w(	Georgia	Atlanta GA	),
    %w(	Hawaii	Honolulu HI	),
    %w(	Idaho	Boise ID	),
    %w(	Illinois	Springfield IL	),
    %w(	Indiana	Indianapolis IN	),
    %w(	Iowa	Des\ Moines IA	),
    %w(	Kansas	Topeka KS	),
    %w(	Kentucky	Frankfort KY	),
    %w(	Louisiana	Baton\ Rouge LA	),
    %w(	Maine	Augusta ME	),
    %w(	Maryland	Annapolis MD	),
    %w(	Massachusetts	Boston MA	),
    %w(	Michigan	Lansing MI	),
    %w(	Minnesota	St.\ Paul MN	),
    %w(	Mississippi	Jackson MS	),
    %w(	Missouri	Jefferson\ City MO	),
    %w(	Montana	Helena MT	),
    %w(	Nebraska	Lincoln NE	),
    %w(	Nevada	Carson\ City NV	),
    %w(	New\ Hampshire	Concord NH	),
    %w(	New\ Jersey	Trenton NJ	),
    %w(	New\ Mexico	Santa\ Fe NM	),
    %w(	New\ York	Albany NY	),
    %w(	North\ Carolina	Raleigh NC	),
    %w(	North\ Dakota	Bismarck ND	),
    %w(	Ohio	Columbus OH	),
    %w(	Oklahoma	Oklahoma\ City OK	),
    %w(	Oregon	Salem OR	),
    %w(	Pennsylvania	Harrisburg PA	),
    %w(	Rhode\ Island	Providence RI	),
    %w(	South\ Carolina	Columbia SC	),
    %w(	South\ Dakota	Pierre SD	),
    %w(	Tennessee	Nashville TN	),
    %w(	Texas	Austin TX	),
    %w(	Utah	Salt\ Lake\ City UT	),
    %w(	Vermont	Montpelier VT	),
    %w(	Virginia	Richmond VA	),
    %w(	Washington	Olympia WA	),
    %w(	West\ Virginia	Charleston WV	),
    %w(	Wisconsin	Madison WI	),
    %w(	Wyoming	Cheyenne WY	)
]

states.each do |s|
  State.find_or_create_by!(name: s[0], capital: s[1], abbreviation: s[2])
end

presidents = [
    %w(	George	Washington		),
    %w(	John	Adams		),
    %w(	Thomas	Jefferson		),
    %w(	James	Madison		),
    %w(	James	Monroe		),
    %w(	John	Adams	Quincy	),
    %w(	Andrew	Jackson		),
    %w(	Martin	Van\ Buren		),
    %w(	William	Harrison	Henry	),
    %w(	John	Tyler		),
    %w(	James	Polk	K.	),
    %w(	Zachary	Taylor		),
    %w(	Millard	Fillmore		),
    %w(	Franklin	Pierce		),
    %w(	James	Buchanan		),
    %w(	Abraham	Lincoln		),
    %w(	Andrew	Johnson		),
    %w(	Ulysses	Grant	S.	),
    %w(	Rutherford	Hayes	B.	),
    %w(	James	Garfield	A.	),
    %w(	Chester	Arthur		),
    %w(	Grover	Cleveland		),
    %w(	Benjamin	Harrison		),
    %w(	Grover	Cleveland		),
    %w(	William	McKinley		),
    %w(	Theodore	Roosevelt		),
    %w(	William	Taft	Howard	),
    %w(	Woodrow	Wilson		),
    %w(	Warren	Harding	G.	),
    %w(	Calvin	Coolidge		),
    %w(	Herbert	Hoover		),
    %w(	Franklin	Roosevelt	D.	),
    %w(	Harry	Truman	S	),
    %w(	Dwight	Eisenhower	D.	),
    %w(	John	Kennedy	F.	),
    %w(	Lyndon	Johnson	B.	),
    %w(	Richard	Nixon		),
    %w(	Gerald	Ford		),
    %w(	Jimmy	Carter		),
    %w(	Ronald	Reagan		),
    %w(	George	Bush		),
    %w(	Bill	Clinton		),
    %w(	George	Bush	W.	),
    %w(	Barack	Obama		)
]

presidents.each do |p|
  President.find_or_create_by!(first_name: p[0], middle_name: p[2], last_name: p[1])
end

animals = %w(
  alligator
  alpaca
  ant
  antelope
  ape
  armadillo
  ass
  baboon
  badger
  bat
  bear
  beaver
  bee
  beetle
  buffalo
  burro
  butterfly
  camel
  caribou
  cat
  cattle
  cheetah
  chimpanzee
  chinchilla
  cicada
  clam
  cockroach
  cod
  coyote
  crab
  cricket
  crocodile
  crow
  deer
  dinosaur
  dog
  dolphin
  donkey
  duck
  eel
  elephant
  elk
  ferret
  fish
  fly
  fox
  frog
  gerbil
  giraffe
  gnat
  gnu
  goat
  goldfish
  gorilla
  grasshopper
  guinea\ pig
  hamster
  hare
  hedgehog
  herring
  hippopotamus
  hog
  hornet
  horse
  hound
  hyena
  impala
  insect
  jackal
  jellyfish
  kangaroo
  leopard
  lion
  lizard
  llama
  locust
  louse
  mallard
  mammoth
  manatee
  marten
  mink
  minnow
  mole
  monkey
  moose
  mosquito
  mouse
  mule
  muskrat
  otter
  ox
  oyster
  panda
  pig
  platypus
  porcupine
  porpoise
  prairie\ dog
  pug
  rabbit
  raccoon
  rat
  raven
  reindeer
  rhinoceros
  salmon
  sardine
  scorpion
  sea\ lion
  seal
  serval
  shark
  sheep
  skunk
  snail
  snake
  spider
  squirrel
  swine
  termite
  tiger
  toad
  tortoise
  trout
  turtle
  wallaby
  walrus
  wasp
  water\ buffalo
  weasel
  whale
  wildebeest
  wolf
  wombat
  woodchuck
  worm
  yak
  yellow\ jacket
  zebra
)

animals.each do |a|
  Animal.find_or_create_by!(name: a)
end
