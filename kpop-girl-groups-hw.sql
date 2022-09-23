-- kpop terms
-- 아이돌 (idol): a type of celebrity working in the field of k-pop in fandom culture in South Korea, either as a member of a group or as a solo act.
-- 팬덤 (fandom): every k-pop group has a fan club with a special name by which fans refer to themselves. stans in fandoms can be casual listeners or pay a membership to receive goodies and special member-only content on social media.
-- nugu (누구) refers to k-pop idols/groups who are considered unknown/not famous/who hasn't had their first win on music shows yet, usually sell less than 100k albums
-- comeback: new release of a song/mini album. kpop groups typically comeback every 3-6 months and promote their songs on music shows and variety shows.


/* -------------------------------- CREATE RELATIONAL DB OF YOUR CHOICE MINIMUM OF 5 TABLES ------------------------------------------ */
/* -------------------------------- SET PRIMARY AND KEY AND FOREIGN KEY CONSTRAINTS TO CREATE RELATIONS BETWEEN THE TABLES ------------------------------------------ */


create database female_kpop_idols;

-- TABLE 1: popular k-pop girlgroups that have debuted since 1997 --

use female_kpop_idols;

create table kpop_girlgroups
(idol_id int primary key auto_increment not null, 
eng_name varchar(50) not null, 
short_name varchar(50), 
kor_name nvarchar(50) not null, -- stores everything in a 2-byte unicode for japanese kanji or korean hangul characters --
debut date not null,
disbandment_date date,
company varchar(50) not null, 
members int not null, -- number of members as of june 2022. many kpop idols leave their groups for mental health issues or scandals that have essentially forcefully kicked them out.
orig_members int not null, -- original number of members as of the time of the debut. --
fandom varchar(50), 
active boolean); -- in this case, active refers to whether the group is making regular comebacks, disbanded completely or an indefinite hiatus --

insert into kpop_girlgroups 
(idol_id, eng_name, short_name, kor_name, debut, disbandment_date, company, members, orig_members, fandom, active)
values
(1, 'Baby V.O.X', null, '베이비복스', '1997-07-05', '2006-03-31', 'DR Music', 5, 5, null, false), 
(2, 'S.E.S', null, '에스.이.에스', '1997-11-01', '2002-12-31', 'SM', 3, 3, null, false),
(3, 'Fin.K.L', null, '핑클', '1998-05-22', '2005-10-26', 'DSP', 4, 4, null, false),
(4, 'Brown Eyed Girls', 'B.E.G', '브라운 아이드 걸스	', '2006-03-02', null, 'Mystic', 4, 4, 'Everlasting', true),
(5, 'Wonder Girls', 'WG', '원더걸스', '2007-02-13', '2017-01-26', 'JYP', 4, 5, 'Wonderful', false),
(6, 'Kara', null, '카라', '2007-03-29', '2016-01-15', 'DSP', 4, 5, 'Kamilia', false),
(7, 'Girls\' Generation', '소녀시대', 'SNSD', '2007-08-05', null, 'SM', 5, 9, 'SONE', true),
(8, 'After School', null, '애프터스쿨', '2009-01-15', null, 'Pledis', 6, 5, 'Playgirlz', true), -- hiatus
(9, '2NE1', null, '투애니원', '2009-05-06', '2016-11-25', 'YG', 3, 4, 'Blackjack', false),
(10, '4Minute', null, '포미닛', '2009-06-15', '2016-06-15', 'Cube', 5, 5, '4nia', false), 
(11, 'T-ara', null, '티아라', '2009-07-29', null,  'MBK', 4, 6, 'Queen\'s', true), -- hiatus --
(12, 'f(x)', null, '에프엑스', '2009-08-24', null, 'SM', 4, 5, 'MeU', true), -- hiatus
(13, 'Sistar', null, '씨스타', '2010-03-06', '2017-06-04', 'Starship', 4, 4, 'STAR1', false),  
(14, 'missA', null, '미쓰에이', '2010-07-01', '2017-12-27', 'JYP', 3, 4, 'Say A', false), 
(15, 'Girl\'s Day', 'GsD', '걸스데이', '2010-07-09', null, 'DreamT', 4, 5, 'Dai5y', true), -- hiatus
(16, 'Dal Shabet', null, '달샤벳', '2011-01-03', null,  'Happy Face', 4, 6, 'Darling', true), -- hiatus --
(17, 'Rania', null, '라니아', '2011-04-06', '2020-06-26', 'DR Music', 5, 8, null, false),
(18, 'Brave Girls', null, '브레이브걸스', '2011-04-08', null, 'Brave', 4, 5, null, true),
(19, 'SPICA', null, '스피카', '2012-02-07', '2017-02-06', 'CJ E&M', 5, 5, 'Mercury', false), 
(20, 'Apink', null, '에이핑크', '2011-04-19', null, 'Plan A', 6, 7, 'Pink Panda', true),
(21, 'EXID', null, '이엑스아이디', '2012-02-16', null, 'Yedang', 5, 6, 'LEGO', true),
(22, 'AOA', null, '에이오에이', '2012-07-30', null,  'FNC', 4, 8, 'ELVIS', true),
(23, 'Hello Venus', 'HV', '헬로비너스', '2012-05-09', '2019-05-08', 'Fantiago', 6, 6, 'Hello Cupid', false),  -- hiatus --
(24, 'Mamamoo', null, '마마무', '2014-06-18', null, 'RBW', 4, 4, 'Moomoo', true), 
(25, 'Red Velvet', 'RV', '레드벨벳', '2014-08-01', null, 'SM', 5, 4, 'Reveluv', true), 
(26, 'Minx', null, '밍스', '2014-09-18', '2016-11-29', 'Happy Face', 5, 5, null, false),
(27, 'Laboum', null, '라붐', '2014-08-27', null, 'NH', 4, 6, 'Latte', true), 
(28, 'Sonamoo', null, '소나무', '2014-12-29', '2021-12-30', 'TS', 5, 7, 'Solbang', false),
(29, 'Gfriend', null, '여자친구', '2015-01-15', '2021-05-22', 'Source', 6, 6, 'Buddy', false),
(30, 'CLC', null, '씨엘씨', '2015-03-19', '2022-05-20', 'Cube', 7, 5, 'Cheshire', false), 
(31, 'The Ark', null, '디아크', '2015-04-12', '2016-03-30', 'Music K', 5, 5, null, false),
(32, 'Oh My Girl', 'OHMG', '오마이걸', '2015-04-21', null, 'WM', 6, 8, 'Miracle', true),
(33, 'DIA', null, '다이아', '2015-07-14', null, 'MBK', 7, 7, 'AID', true), 
(34, 'April', null, '에이프릴', '2015-08-24', '2022-01-28', 'DSP', 6, 6, 'Fineapple', false), 
(35, 'TWICE', null, '트와이스', '2015-10-20', null, 'JYP', 9, 9, 'ONCE', true), 
(36, 'WJSN', '우주소녀', 'Cosmic Girls', '2016-02-25', null, 'Starship', 13, 12, 'Ujung', true), 
(37, 'IOI', 'I.O.I', '아이오아이', '2016-05-04', '2017-01-29', 'YMC', 11, 11, null, false),
(38, 'BLACKPINK', null, '블랙핑크', '2016-08-08', null, 'YG', 4, 4, 'BLINK', true), 
(39, 'Momoland', null, '모모랜드', '2016-11-09', null, 'Duble Kick', 9, 6, 'Merry-Go-Round', true), 
(40, 'DreamCatcher', null, '드림캐쳐', '2017-01-13', null, 'Happy Face', 7, 7, 'InSomnia', true), 
(41, 'Pristin', null, '프리스틴', '2017-03-21', '2019-05-24', 'Pledis', 10, 10, 'HIgh', false),
(42, 'fromis_9', null, '프로미스나인', '2018-01-24', null, 'Pledis', 9, 9, 'Flover', true), 
(43, '(G)I-DLE', null, '(여자)아이들', '2018-05-02', null,  'Cube', 5, 6, 'Neverland', true), 
(44, 'Uni.T', null, '유니티', '2018-05-18', '2018-10-12', 'Unit Culture', 8, 9, null, false), 
(45, 'KHAN', null, '칸', '2018-05-23', '2020-03-31', 'Maroo', 2, 2, null, false), 
(46, 'Loona', 'LOOΠΔ', '이달의 소녀', '2018-08-20', null, 'Blockberry', 12, 12, 'Orbit', true), 
(47, 'IZ*ONE', null, '아이즈원', '2018-10-29', '2021-04-29', 'Off The Record', 12, 12, 'WIZ*ONE', false),
(48, 'Cherry Bullet', null, '체리블렛', '2019-01-21', null, 'FNC', 7, 10, 'Lullet', true), 
(49, 'ITZY', null, '있지', '2019-02-12', null, 'JYP', 5, 5, 'MIDZY', true), 
(50, 'Everglow', null, '에버글로우	', '2019-03-18', null, 'Yuehua', 6, 6, 'Forever', true), 
(51, 'Rocket Punch', null, '로켓펀치', '2019-08-07', null, 'Woollim', 6, 6, 'Ketchy', true), 
(52, 'Hinapia', null, '희나피아', '2019-11-03', '2020-08-21', 'Alseubit', 5, 5, 'UBY', false), -- disband --
(53, 'BlackSwan', null, '블랙스완', '2020-10-16', null, 'DR Music', 6, 5, 'Lumina', true), 
(54, 'STAYC', null, '스테이씨', '2020-11-12', null, 'Hi-Up', 6, 6, 'SWITH', true),
(55, 'aespa', 'æspa', '에스파', '2020-11-17', null, 'SM', 4, 4, 'My', true),
(56, 'Purple Kiss', null, '퍼플키스', '2021-03-15', null, 'RBW', 7, 7, 'PLORY', true), 
(57, 'LIGHTSUM', null, '라잇썸', '2021-06-10', null, 'Cube', 8, 8, 'SUMIT', true),
(58, 'Billlie', null, '빌리', '2021-11-10', null, 'MYSTIC', 7, 6, 'Belllie\'ve', true),
(59, 'IVE', null, '아이브', '2021-12-01', null, 'Starship', 6, 6, 'DIVE', true), 
(60, 'VIVIZ', null, '비비지', '2022-02-09', null, 'Big Planet Made', 3, 3, 'Na.V', true), 
(61, 'NMIXX', null, '엔믹스', '2022-02-22', null, 'JYP', 7, 7, 'NSWER', true),
(62, 'Kep1er', null, '케플러', '2022-03-01', null, 'WakeOne', 9, 9, 'Kep1ian', true),
(63, 'LE SSERAFIM', null, '르세라핌', '2022-05-02', null, 'HYBE', 6, 6, null, true),
(64, 'CLASS:Y', null, '클래씨', '2022-05-05', null, 'Universal', 7, 7, null, true),
(65, 'Gugudan', null, '구구단', '2016-06-28', '2020-12-31', 'Jellyfish', 8, 8, 'Danjjak', false),
(66, 'Weki Meki', 'WeMe', '위키미키', '2017-08-08', null, 'Fantagio', 8, 8, 'Ki-Ling', true);

-- TABLE 2: first EP (extended play), mini album or studio album that has 3 or more songs, not including stand-alone singles. --

use female_kpop_idols;

create table first_album
(album_id int primary key auto_increment not null,
idol_id int not null,
album_name varchar(50),
title_track varchar(50),
release_date date,
first_album_sales_id int,
foreign key (idol_id) references kpop_girlgroups(idol_id),
foreign key (first_album_sales_id) references first_album_sales(first_album_sales_id));

insert into first_album
(album_id, idol_id, album_name, title_track, release_date, first_album_sales_id)
values
(1, 64, 'Class Is Over', 'Shut Down', '2022-05-05', 1),
(2, 45, null, null, null, 2),
(3, 50, 'Reminiscence', 'Dun Dun', '2020-02-03', 3),
(4, 32, 'Oh My Girl', 'Cupid', '2015-04-20', 4),
(5, 43, 'I Am', 'Latata', '2018-05-02', 5),
(6, 5, 'The Wonder Years', 'Tell Me', '2007-09-13', 6),
(7, 36, 'Would You Like?', 'Catch Me', '2016-02-25', 7),
(8, 27, 'Petit Macaron', 'Pit-A-Pat', '2014-08-28', 8),
(9, 40, 'Nightmare', 'Chase Me', '2017-01-13', 9),
(10, 1, 'Baby Vox II', 'Hey, Hey, Hey', '1998-09-15', 10), 
(11, 38, 'Square Up', 'DDU-DU DDU-DU', '2018-06-15', 11), 
(12, 9, '2NE1', 'Lollipop', '2009-07-08', 12),
(13, 23, 'Venus', 'Venus', '2012-05-09', 13),
(14, 13, 'So Cool', 'Push Push', '2011-08-09', 14),
(15, 47, 'Color*Iz', 'La Vie En Rose', '2018-10-29', 15),
(16, 19, 'Russian Roulette', 'Doggedly', '2012-03-29', 16),
(17, 34, 'Dreaming', 'Dream Candy', '2015-08-24', 17),
(18, 61, 'Ad Mare', 'O.O', '2022-02-22', 18),
(19, 21, 'Hippity Hop', 'I Feel Good', '2012-08-13', 19),
(20, 3, 'Blue Rain', 'Blue Rain', '1998-05-25', 20), 
(21, 49, 'It\'z Icy', 'Icy', '2019-07-29', 21),
(22, 11, 'Absolute First Album', 'Bo Peep Bo Peep', '2009-11-27', 22),
(23, 55, 'Savage', 'Savage', '2021-10-05', 23),
(24, 46, '[+ +]', 'Hi High', '2018-08-20', 24),
(25, 6, 'The First Bloooooming', 'Break It', '2007-03-29', 25),
(26, 22, 'Short Hair', 'Short Hair', '2014-06-19', 26),
(27, 14, 'A Class', 'Goodbye Baby', '2011-07-18', 27),
(28, 2, 'I\'m Your Girl', 'I\'m Your Girl', '1997-11-01', 28), 
(29, 44, 'Line', 'No More', '2018-05-18', 29),
(30, 12, 'Nu ABO', 'Nu ABO', '2010-05-04', 30),
(31, 48, 'Cherry Rush', 'Love So Sweet', '2021-01-20', 31),
(32, 10, 'For Muzik', 'Muzik', '2009-08-28', 32),
(33, 63, 'Fearless', 'Fearless', '2022-05-02', 33),
(34, 25, 'Ice Cream Cake', 'Ice Cream Cake', '2015-03-18', 34),
(35, 4, 'Your Story', 'Dagawaseo', '2006-03-02', 35),
(36, 59, 'Eleven', 'Eleven', '2021-12-01', 36),
(37, 18, 'Back to da Future', 'Easily', '2011-07-29', 37),
(38, 62, 'First Impact', 'Wa Da Da', '2022-03-01', 38),
(39, 7, 'Girl\s Generation', 'Baby Baby', '2007-11-01', 39),
(40, 60, 'Beam of Prism', 'Bop Bop!', '2022-02-09', 40),
(41, 42, 'To. Heart', 'To Heart', '2018-01-24', 41), 
(42, 57, 'Into The Light', 'Alive', '2022-05-24', 42),
(43, 56, 'Into Violet', 'Ponzona', '2021-03-15', 43),
(44, 8, 'Virgin', 'Shampoo', '2011-04-29', 44),
(45, 52, null, null, null, 45),
(46, 35, 'The Story Begins', 'Like Ooh-Ahh', '2015-03-20', 46),
(47, 29, 'Season of Glass', 'Glass Bead', '2015-01-15', 47),
(48, 37, 'Chrysalis', 'Dream Girls', '2016-05-04', 48),
(49, 54, 'Stereotype', 'Stereotype', '2021-09-06', 49),
(50, 30, 'First Love', 'Pepe', '2015-03-19', 50),
(51, 24, 'Hello', 'Mr.Ambiguous', '2014-06-18', 51),
(52, 51, 'Pink Punch', 'Bim Bam Bum', '2019-08-07', 52),
(53, 33, 'Do It Amazing', 'Somehow', '2015-09-14', 53),
(54, 17, 'Teddy Riley, the First Expansion In Asia', 'Dr. Feel Good', '2011-04-06', 54),
(55, 28, 'Deja Vu', 'Déjà Vu', '2014-12-29', 55),
(56, 31, null, null, null, 56),
(57, 41, 'Hi! Pristin', 'Wee Woo', '2017-03-21', 57),
(58, 39, 'Welcome to Momoland', 'Jjan! Koong! Kwang!', '2016-11-10', 58),
(59, 15, 'Everyday', 'Hug Me Once', '2011-07-07', 59), 
(60, 53, 'Goodbye RANIA', 'Tonight', '2020-10-16', 60),
(61, 26, 'Love Shake', 'Love Shake', '2015-07-02', 61),
(62, 16, 'Supa Dupa Diva', 'Supa Dupa Diva', '2011-03-01', 62),
(63, 20, 'Seven Springs of Apink', 'I Don\'t Know', '2011-04-19', 63),
(64, 58, 'The Billage of Perception: Chapter One', 'Ring X Ring', '2021-11-10', 64),
(65, 65, 'Act.1 The Little Mermaid', 'Wonderland', '2016-06-28', 65),
(66, 66, 'Weme', 'I Don\t Like Your Girlfriend', '2017-08-08', 66);

-- TABLE 3: first album sales only from Korea from HANTEO and GAON official records --

create table first_album_sales
(first_album_sales_id int primary key auto_increment,
f_kor_sales mediumint
);

insert into first_album_sales
(first_album_sales_id, f_kor_sales)
values
(1, 28777),
(2, null),
(3, 31188),
(4, 14974),
(5, 51831),
(6, 73914),
(7, 13787),
(8, 1885),
(9, 3576),
(10, 76417),
(11, 460538),
(12, 225301),
(13, null),
(14, 27765),
(15, 282816),
(16, 2326),
(17, 2542),
(18, 476772),
(19, 1554),
(20, 291905),
(21, 190253),
(22, 10811),
(23, 602348),
(24, 68316),
(25, 22724),
(26, 196783),
(27, 36441),
(28, 650000),
(29, 15861), 
(30, 54179),
(31, 14922),
(32, 2540),
(33, 412696),
(34, 90970),
(35, 19015),
(36, 362840),
(37, 3484),
(38, 389542),
(39, 276579),
(40, 50000),
(41, 22279),
(42, 17902),
(43, 29985),
(44, 31804),
(45, null),
(46, 239375),
(47, 21930),
(48, 87026),
(49, 197149),
(50, 5277),
(51, 12900),
(52, 18561),
(53, 2412),
(54, null),
(55, 4260),
(56, null),
(57, 43300),
(58, 1915),
(59, 10437),
(60, 671),
(61, 1813),
(62, 4132),
(63, 25745),
(64, 24698),
(65, 22217),
(66, 49476);

-- TABLE 4: groups that have redebuted in new groups with two or more members from the previous group --

use female_kpop_idols; 

create table redebuted_groups
(redebut_id int not null, -- did not make this column a primary key as there is a need for duplicated data --
idol_id int not null,
name varchar(50),
redebuted_members int not null,
redebut_date date not null,
foreign key (idol_id) references kpop_girlgroups(idol_id));

insert into redebuted_groups
(redebut_id, idol_id, name, redebuted_members, redebut_date)
values
(26, 40, 'DreamCatcher', 5, '2017-01-13'),
(29, 60, 'Viviz', 3, '2022-02-09'),
(31, 45, 'KHAN', 2, '2018-05-23'),
(37, 65, 'Gugudan', 2, '2016-06-28'),
(37, 66, 'Weki Meki', 2, '2017-08-08'),
(41, 52, 'Hinapia', 4, '2019-11-03'),
(47, 59, 'IVE', 2, '2021-12-01'),
(47, 63, 'LE SSERAFIM', 2, '2022-05-02');

-- TABLE 5: most recent EP (extended play), mini album or studio album that has 3 or more songs

create table recent_album
(album_id int primary key auto_increment not null,
idol_id int not null,
album_name varchar(50),
title_track varchar(50),
release_date date,
recent_album_sales_id int,
foreign key (idol_id) references kpop_girlgroups(idol_id),
foreign key (recent_album_sales_id) references recent_album_sales(recent_album_sales_id));

insert into recent_album
(album_id, idol_id, album_name, title_track, release_date, recent_album_sales_id)
values
(1, 64, 'Lives Across', 'Classy', '2022-05-26', 1),
(2, 45, null, null, null, 2), 
(3, 50, 'Return of the Girl', 'Pirate', '2021-12-01', 3),
(4, 32, 'Real Love', 'Real Love', '2022-03-28', 4),
(5, 43, 'I Never Die', 'Tomboy', '2022-03-14', 5),
(6, 5, 'Reboot', 'I Feel You', '2015-08-03', 6),
(7, 36, 'Unnatural', 'Unnatural', '2021-03-31', 7),
(8, 27, 'Blossom', 'Kiss Kiss', '2021-11-03', 8),
(9, 40, 'Apocalypse: Save Us', 'Maison', '2022-04-12', 9),
(10, 1, 'Ride West', 'Xcstasy', '2004-04-16', 10), 
(11, 38, 'The Album', 'Lovesick Girls', '2020-10-02', 11),
(12, 9, 'Crush', 'Come Back Home', '2014-02-27', 12),
(13, 23, 'Mystery of Venus', 'Mysterious', '2017-11-01', 13),
(14, 13, 'Insane Love', 'I Like That', '2016-06-21', 14),
(15, 47, 'One-reeler / Act IV', 'Panorama', '2020-12-07', 15),
(16, 19, 'Lonely', 'Lonely', '2012-11-21', 16),
(17, 34, 'Da Capo', 'Lalalilala', '2020-04-22', 17),
(18, 61, null, null, null, 18), 
(19, 21, 'We', 'Me&You', '2019-05-15', 19),
(20, 3, 'Eternity', 'Eternity', '2002-03-08', 20), 
(21, 49, 'Crazy in Love', 'Loco', '2021-09-24', 21),
(22, 11, 'What\'s My Name?', 'What\'s My Name?', '2017-06-14', 22),
(23, 55, null, null, null, null), 
(24, 46, '[&]', 'PTT (Paint the Town)', '2021-06-28', 24),
(25, 6, 'In Love', 'Cupid', '2015-05-26', 25),
(26, 22, 'New Moon', 'Come See Me', '2019-11-26', 26),
(27, 14, 'Colors', 'Only You', '2015-03-30', 27),
(28, 2, 'Remember', 'Remember', '2017-01-02', 28),
(29, 44, 'Begin with the End', 'I Mean', '2018-09-18', 29),
(30, 12, '4 Walls', '4 Walls', '2015-10-27', 30),
(31, 48, 'Cherry Wish', 'Love In Space', '2022-03-02', 31),
(32, 10, 'Act.7', 'Hate', '2016-02-01', 32),
(33, 63, null, null, null, null), 
(34, 25, 'The ReVe Festival 2022 - Feel My Rhythm', 'Feel My Rhythm', '2022-03-21', 34),
(35, 4, 'Basic', 'Warm Hole', '2016-11-05', 35),
(36, 59, 'Love Dive', 'Love Dive', '2022-04-05', 36),
(37, 18, 'Thank You', 'Thank You', '2022-03-14', 37),
(38, 62, null, null, null, null),
(39, 7, 'Holiday Night', 'Holiday', '2017-08-04', 39),
(40, 60, null, null, null, null),
(41, 42, 'Midnight Guest', 'DM', '2022-01-17', 41),
(42, 57, null, null, null, null),
(43, 56, 'MemeM', 'memeM', '2022-03-29', 43),
(44, 8, null, null, null, null),
(45, 53, null, null, null, null),
(46, 35, 'Formula of Love: O+T= <3', 'Scientist', '2021-11-12', 46),
(47, 29, 'Walpurgis Night', 'Mago', '2020-11-09', 47),
(48, 37, 'Miss Me?', 'Very Very Very', '2016-10-17', 48),
(49, 54, 'Young-LUv.com', 'Run2U', '2022-02-21', 49),
(50, 30, 'No.1', 'No', '2019-01-30', 50),
(51, 24, 'Waw', 'Where Are We Now', '2021-06-02', 51),
(52, 51, 'Yellow Punch', 'Chiquita', '2022-02-22', 52),
(53, 33, 'Flower 4 Seasons', 'Hug U', '2020-06-10', 53),
(54, 17, 'Demonstrate', 'Demonstrate', '2015-11-05', 54),
(55, 28, 'I Like U Too Much', 'I Like U Too Much', '2016-06-29', 55),
(56, 31, null, null, null, 56),
(57, 41, 'Schxxl Out', 'We Like', '2017-08-23', 57),
(58, 39, 'Starry Night', 'Starry Night', '2020-06-11', 58),
(59, 15, 'Girl\'s Day Everyday #5', 'I\ll Be Yours', '2017-03-27', 59),
(60, 53, null, null, null, 60),
(61, 26, null, null, null, 61),
(62, 16, 'Fri. Sat. Sun', 'Fri. Sat. Sun', '2016-09-29', 62),
(63, 20, 'Horn', 'Dilemma', '2022-02-14', 63),
(64, 58, 'The Collective Soul and Unconscious: Chapter One', 'GingaMingaYo(The Strange World)', '2022-02-23', 64),
(65, 65, 'Act. 5 New Action', 'Not That Type', '2018-06-11', 65), 
(66, 66, 'I Am Me.', 'Siesta', '2021-11-18', 66);

-- TABLE 6: most recent album sales only from Korea from HANTEO and GAON official records

create table recent_album_sales
(recent_album_sales_id int primary key auto_increment,
r_kor_sales mediumint);

insert into recent_album_sales
(recent_album_sales_id, r_kor_sales)
values
(1, 5857),
(2, null),
(3, 46015),
(4, 96880),
(5, 218727),
(6, 12789),
(7, 92645),
(8, 6292),
(9, 136239),
(10, 32863),
(11, 1511526),
(12, 75496),
(13, 3021),
(14, 10707),
(15, 464860),
(16, 2113),
(17, 12104),
(18, null),
(19, 24472),
(20, 261518),
(21, 569191),
(22, 39453),
(23, null),
(24, 135253),
(25, 13220),
(26, 15553), 
(27, 12208),
(28, 6373),
(29, 9880),
(30, 81505),
(31, 24101),
(32, 8510),
(33, null),
(34, 653610), 
(35, 4968),
(36, 653348),
(37, 28591),
(38, null),
(39, 167638),
(40, null),
(41, 147254),
(42, null),
(43, 36140),
(44, null),
(45, null), 
(46, 894481),
(47, 68714),
(48, 106439),
(49, 244465),
(50, 12302),
(51, 135200),
(52, 20665),
(53, 6280),
(54, null),
(55, 4387),
(56, null),
(57, 27276),
(58, 4817),
(59, 11301),
(60, null),
(61, null),
(62, 3610),
(63, 69670),
(64, 87642),
(65, 9813),
(66, 17366);

/* ------------------------------------------------------------  DEMONSTRATING CODE -------------------------------------------------------------------- */

-- mysql uses tinyint as boolean, the code below shows retrieving the results of whether a kpop group is actively promoting or preparing for a comeback in 'true' or 'false' literals --

select eng_name, if(active, 'true', 'false') as 'actively promoting'
from kpop_girlgroups
order by active;


-- debut album sales as of june 2022 -- 

select kgg.idol_id, eng_name, debut, company, fa.album_name, f_kor_sales as 'first album (kor sales)'
from kpop_girlgroups kgg
join first_album fa
on kgg.idol_id = fa.idol_id
left join first_album_sales fas
on fa.first_album_sales_id = fas.first_album_sales_id
order by f_kor_sales desc;

-- most recent album sales as of june 2022 --

select kgg.idol_id, eng_name, debut, company, ra.album_name, r_kor_sales as 'recent album (kor sales)'
from kpop_girlgroups kgg
join recent_album ra
on kgg.idol_id = ra.idol_id
left join recent_album_sales ras
on ra.recent_album_sales_id = ras.recent_album_sales_id
order by r_kor_sales desc;

-- k-pop groups with members who have left their original group and have redebuted into a new group (only 2 or more members) --

select eng_name as 'orig_group', debut as 'orig_debut', orig_members , name as 'redebuted_group', redebuted_members, redebut_date
from kpop_girlgroups kgg
cross join redebuted_groups rg
on kgg.idol_id = rg.redebut_id
order by rg.idol_id;

/* -------------------------------- USING ANY TYPE OF THE JOIN, CREATE A VIEW THAT COMBINES MULTIPLE TABLES IN A LOGICAL WAY + CREATE A VIEW USING 3-4 BASE TABLES THAT COMBINES MULTIPLE TABLES IN A LOGICAL WAY ------------------------------------------ */

-- k-pop girlgroups who have sold more than 100k albums with their debut and recent album --

create view non_nugu_kgg as
select kgg.idol_id, eng_name, debut, company, fa.album_name as 'first_album', f_kor_sales as 'first album sales > more than 100k', ra.album_name as 'recent_album', r_kor_sales as 'recent album sales > more than 100k'
from kpop_girlgroups kgg
join recent_album ra
on kgg.idol_id = ra.idol_id
left join recent_album_sales ras
on ra.recent_album_sales_id = ras.recent_album_sales_id
join first_album fa
on kgg.idol_id = fa.idol_id
left join first_album_sales fas
on fa.first_album_sales_id = fas.first_album_sales_id
where f_kor_sales > 100000 and r_kor_sales > 100000
order by debut asc;

select *
from non_nugu_kgg;

/* -------------------------------- CREATE STORED FUNCTION THAT CAN BE APPLIED TO A QUERY ------------------------------------------ */

delimiter $$
create function certlevel (r_kor_sales mediumint)
returns varchar(50)
deterministic
begin
declare certlevel varchar(50);
if r_kor_sales >= 1000000 then
set certlevel = 'million';
elseif r_kor_sales between 250000 and 999999 then set certlevel ='platinum';
end if;
return certlevel;
end $$

-- calling stored function to display which albums received a certification from the korea music content industry association --

select eng_name, debut, company, ra.album_name, r_kor_sales as 'recent album (kor sales)', certlevel(r_kor_sales) as 'cert level (kmca)'
from kpop_girlgroups kgg
join recent_album ra
on kgg.idol_id = ra.idol_id
left join recent_album_sales ras
on ra.recent_album_sales_id = ras.recent_album_sales_id
where certlevel(r_kor_sales) is not null;

/* -------------------------------- IN YOUR DATABASE, CREATE A STORED PROCEDURE AND DEMONSTRATE HOW IT RUNS ------------------------------------------ */

-- number of years and months popular kgg were promoting for until they officially disbanded -- 

delimiter //
create procedure no_of_years()
begin
select
idol_id, 
eng_name, 
timestampdiff(year, debut, disbandment_date) as years,
timestampdiff(month, debut, disbandment_date) % 12 as months
from kpop_girlgroups
where disbandment_date is not null;
end
delimiter //

call no_of_years();

/* -------------------------------- PREPARE AN EXAMPLE QUERY WITH GROUP BY AND HAVING TO DEMONSTRATE HOW TO EXTRACT DATA FROM YOUR DB FOR ANALYSIS ------------------------------------------ */

-- lists the number of kgg in each company, sorted from high to low (only including companies with more than 2 popular kgg) --

select count(idol_id), company
from kpop_girlgroups
group by company
having count(idol_id) > 2
order by count(idol_id) desc;

/* -------------------------------- PREPARE AN EXAMPLE QUERY WITH A SUBQUERY TO DEMONSTRATE HOW TO EXTRACT DATA FROM YOUR DB FOR ANALYSIS ------------------------------------------ */


-- companies that have produced the most popular k-pop girlgroups based on their debut and most recent album sales --

select distinct company
from kpop_girlgroups
where company in (select company from non_nugu_kgg);
