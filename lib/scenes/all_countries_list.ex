defmodule Countries do
  def all do
    %{all:
      Enum.shuffle( 
        [
          Aghanistan: "Kabul",
          Albania: "Tirana",
          Algeria: "Algiers",
          Andorra: "Andorra la Vella",
          Angola: "Luanda",
          Antigua_and_Barbuda: "Saint John's",
          Argentina: "Buenos Aires",
          Armenia: "Yerevan",
          Australia: "Canberra",
          Austria: "Vienna",
          Azerbaijan: "Baku",
          The_Bahamas: "Nassau",
          Bahrain: "Manama",
          Bangladesh: "Dhaka",
          Barbados: "Bridgetown",
          Belarus: "Minsk",
          Belgium: "Brussels",
          Belize: "Belmopan",
          Benin: "Porto-Novo",
          Bhutan: "Thimphu",
          Bolivia: "La Paz and Sucre",
          Bosnia_and_Herzegovina: "Sarajevo",
          Botswana: "Gaborone",
          Brazil: "Brasilia",
          Brunei: "Bandar Seri Begawan",
          Bulgaria: "Sofia",
          Burkina_Faso: "Ouagadougou",
          Burundi: "Bujumbura",
          Cambodia: "Phnom Penh",
          Cameroon: "Yaounde",
          Canada: "Ottawa",
          Cape_Verde: "Praia",
          Central_African_Republic: "Bangui",
          Chad: "N'Djamena",
          Chile: "Santiago",
          China: "Beijing",
          Colombia: "Bogota",
          Comoros: "Moroni",
          Republic_of_the_Congo: "Brazzaville",
          Democratic_Republic_of_the_Congo: "Kinshasa",
          Costa_Rica: "San Jose",
          Cote_d_Ivoire: "Yamoussoukro and Abidjan",
          Croatia: "Zagreb",
          Cuba: "Havana",
          Cyprus: "Nicosia",
          Czech_Republic: "Prague",
          Denmark: "Copenhagen",
          Djibouti: "Djibouti",
          Dominica: "Roseau",
          Dominican_Republic: "Santo Domingo",
          East_Timor: "Dili",
          Ecuador: "Quito",
          Egypt: "Cairo",
          El_Salvador: "San Salvador",
          Equatorial_Guinea: "Malabo",
          Eritrea: "Asmara",
          Estonia: "Tallinn",
          Ethiopia: "Addis Ababa",
          Fiji: "Suva",
          Finland: "Helsinki",
          France: "Paris",
          Gabon: "Libreville",
          The_Gambia: "Banjul",
          Georgia: "Tbilisi",
          Germany: "Berlin",
          Ghana: "Accra",
          Greece: "Athens",
          Grenada: "Saint George's",
          Guatemala: "Guatemala City",
          Guinea: "Conakry",
          Guinea_Bissau: "Bissau",
          Guyana: "Georgetown",
          Haiti: "Port-au-Prince",
          Honduras: "Tegucigalpa",
          Hungary: "Budapest",
          Iceland: "Reykjavik",
          India: "New Delhi",
          Indonesia: "Jakarta",
          Iran: "Tehran",
          Iraq: "Baghdad",
          Ireland: "Dublin",
          Israel: "Jerusalem",
          Italy: "Rome",
          Jamaica: "Kingston",
          Japan: "Tokyo",
          Jordan: "Amman",
          Kazakhstan: "Astana",
          Kenya: "Nairobi",
          Kiribati: "Tarawa Atoll",
          North_Korea: "Pyongyang",
          South_Korea: "Seoul",
          Kosovo: "Pristina",
          Kuwait: "Kuwait City",
          Kyrgyzstan: "Bishkek",
          Laos: "Vientiane",
          Latvia: "Riga",
          Lebanon: "Beirut",
          Lesotho: "Maseru",
          Liberia: "Monrovia",
          Libya: "Tripoli",
          Liechtenstein: "Vaduz",
          Lithuania: "Vilnius",
          Luxembourg: "Luxembourg",
          Macedonia: "Skopje",
          Madagascar: "Antananarivo",
          Malawi: "Lilongwe",
          Malaysia: "Kuala Lumpur",
          Maldives: "Male",
          Mali: "Bamako",
          Malta: "Valletta",
          Marshall_Islands: "Majuro",
          Mauritania: "Nouakchott",
          Mauritius: "Port Louis",
          Mexico: "Mexico City",
          Federated_States_of_Micronesia: "Palikir",
          Moldova: "Chisinau",
          Monaco: "Monaco",
          Mongolia: "Ulaanbaatar",
          Montenegro: "Podgorica",
          Morocco: "Rabat",
          Mozambique: "Maputo",
          Myanmar: "Rangoon Naypyidaw or Nay Pyi Taw",
          Namibia: "Windhoek",
          Nauru: "Yaren District",
          Nepal: "Kathmandu",
          Netherlands: "Amsterdam",
          New_Zealand: "Wellington",
          Nicaragua: "Managua",
          Niger: "Niamey",
          Nigeria: "Abuja",
          Norway: "Oslo",
          Oman: "Muscat",
          Pakistan: "Islamabad",
          Palau: "Melekeok",
          Panama: "Panama City",
          Papua_New_Guinea: "Port Moresby",
          Paraguay: "Asuncion",
          Peru: "Lima",
          Philippines: "Manila",
          Poland: "Warsaw",
          Portugal: "Lisbon",
          Qatar: "Doha",
          Romania: "Bucharest",
          Russia: "Moscow",
          Rwanda: "Kigali",
          Saint_Kitts_and_Nevis: "Basseterre",
          Saint_Lucia: "Castries",
          Saint_Vincent_and_the_Grenadines: "Kingstown",
          Samoa: "Apia",
          San_Marino: "San Marino",
          Sao_Tome_and_Principe: "Sao Tome",
          Saudi_Arabia: "Riyadh",
          Senegal: "Dakar",
          Serbia: "Belgrade",
          Seychelles: "Victoria",
          Sierra_Leone: "Freetown",
          Singapore: "Singapore",
          Slovakia: "Bratislava",
          Slovenia: "Ljubljana",
          Solomon_Islands: "Honiara",
          Somalia: "Mogadishu",
          South_Africa: "Cape Town",
          South_Sudan: "Juba",
          Spain: "Madrid",
          Sri_Lanka: "Colombo and Sri Jayewardenepura Kotte",
          Sudan: "Khartoum",
          Suriname: "Paramaribo",
          Swaziland: "Mbabane",
          Sweden: "Stockholm",
          Switzerland: "Bern",
          Syria: "Damascus",
          Taiwan: "Taipei",
          Tajikistan: "Dushanbe",
          Tanzania: "Dar es Salaam",
          Thailand: "Bangkok",
          Togo: "Lome",
          Tonga: "Nuku'alofa",
          Trinidad_and_Tobago: "Port-of-Spain",
          Tunisia: "Tunis",
          Turkey: "Ankara",
          Turkmenistan: "Ashgabat",
          Tuvalu: "Vaiaku village, Funafuti province",
          Uganda: "Kampala",
          Ukraine: "Kyiv",
          United_Arab_Emirates: "Abu Dhabi",
          United_Kingdom: "London",
          United_States_of_America: "Washington, D.C.",
          Uruguay: "Montevideo",
          Uzbekistan: "Tashkent",
          Vanuatu: "Port-Vila",
          Vatican_City: "Vatican City",
          Venezuela: "Caracas",
          Vietnam: "Hanoi",
          Yemen: "Sanaa",
          Zambia: "Lusaka",
          Zimbabwe: "Harare"
        ]
      )
    }
  end
end