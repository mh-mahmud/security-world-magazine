-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2016 at 12:06 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `security_world`
--

-- --------------------------------------------------------

--
-- Table structure for table `additional_data`
--

CREATE TABLE `additional_data` (
  `ADD_ID` int(11) NOT NULL,
  `TYPE` varchar(50) NOT NULL,
  `TITLE` varchar(100) NOT NULL,
  `URL` varchar(300) NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `additional_data`
--

INSERT INTO `additional_data` (`ADD_ID`, `TYPE`, `TITLE`, `URL`, `DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'contact', 'CONTACT US', '', 'We are here to answer any questions and inquiry that you may have about our company''s services. Reach out to us and we will respond as soon as we can.\r\nCan''t wait? Call us on +61 2 95675306 during our office hours (MON-FRI 9am till 5pm). We will be more than happy to answer your related question. Alternatively, Try our live chat with one of our Representative. ', 1, '2016-06-04', 0, '0000-00-00', 7),
(2, 'contact', 'HEAD OFFICE - ROCKDALE', '', 'Level 1, 105 Railway Street, Rockdale,\r\nNSW 2216, Sydney, Australia\r\nPhone: 02 9567 5306\r\nMob: 0422 977 966\r\nFax: 02 9556 1303\r\nEmail: info@stealthaccountants.com.au\r\nsharif@stealthaccountants.com.au', 1, '2016-06-04', 1, '2016-06-04', 7),
(3, 'contact', 'SECOND OFFICE - LAKEMBA', '', '21 Tailor St, Lakemba,\r\nNSW 2195, Sydney, Australia\r\nPhone: 02 8957 2838\r\nMob: 0422 977 966\r\nFax: 02 9556 1303\r\nEmail: info@stealthaccountants.com.au\r\nsharif@stealthaccountants.com.au', 1, '2016-06-04', 0, '0000-00-00', 7),
(4, 'about', 'About Us', '', 'Stealth Accountants are Public Accountants, registered tax agents, financial planners, mortgage and insurance broker in Rockdale &amp; Lakemba area in Sydney. We actively service our clients in a cost effective manner to endorse their financial growth, security. Stealth Accountants specialize in accounting, taxation, superannuation funds, business advice, management accounting, bookkeeping, payroll and a host of other services. Our Team is highly qualified and we have an extensive knowledge in taxation and business consultancy. Customer satisfaction is what we believe in foremost. That’s why our commitment is to help our clients to build up an excellent future. Our clients’ success means success for us and that is why the team at stealth accountants is dedicated to reach to your goals. We have the mission to give you peace of mind in your tax affairs.', 1, '2016-06-04', 1, '2016-06-19', 7),
(5, 'about', 'Reason to Choice Stealth', '', 'Stealth Accountants build long-lasting client relationships and look forward to providing you with exceptional accounting services. Stealth Accountants is always available to answer your questions and you can speak directly to our professional Accountant for any questions you may have. We cater to a range of clientele in all industries and have extensive knowledge of partnerships, companies, trusts and superannuation funds. Our ability to provide a quality and professional service is reflected by the high proportion of new client referrals and frequent commendations. By building strong relationships and delivering professional advice, we experience ongoing client loyalty. We are passionate about business and finance and offer tailored solutions which are adaptive to the Australian business and accounting environment. We engage innovative accounting solutions and optimize outcomes for our clients. We provide a total solution, addressing client financial needs in business. We are proud to be friendly and accessible, operate a business that continues to grow almost exclusively from client referrals. You can enjoy the business benefits and peace of mind that comes from working with a firm you can trust and rely upon.  \r\nStealth Accountants provide an assurance of both quality and price. We are renowned for our service excellence and value. We deliver optimal tax and accounting outcomes on time and at the right price.  We are committed to offering you peace of mind with fixed pricing on a great number of accounting services.', 1, '2016-06-04', 1, '2016-06-19', 7),
(6, 'tools', 'Tax Refund Calculator (Simple)', 'http://safeaccountants.com.au/calculators.html', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(7, 'tools', 'Home Office Expenses Calculator', 'http://calculators.ato.gov.au/scripts/axos/axos.asp?CONTEXT=&amp;KBS=Home_office.XR4&amp;go=ok', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(8, 'tools', 'Tax Return Progress', 'https://por.ato.gov.au/PORWeb/ProgressOfReturn/Privacy.aspx?Task=1255b2f3-0bce-416b-9f65-39286c3a119c&amp;NavGraph=Privacy&amp;View=PrivacyView&amp;pid=71', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(9, 'tools', 'Comprehensive Tax Refund Calculation', 'http://calculators.ato.gov.au/scripts/axos/axos.asp?CONTEXT=&amp;KBS=ctax2013.xr4&amp;go=ok', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(10, 'tools', 'Car Expenses Calculator', 'http://calculators.ato.gov.au/scripts/axos/axos.asp?CONTEXT=&amp;KBS=Car.xr4&amp;go=ok', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(11, 'tools', 'Key Date of ATO', 'http://www.ato.gov.au/Tax-professionals/Prepare-and-lodge/Due-dates/July-2013/', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(12, 'tools', 'Tax Withheld Calculator', 'http://www.ato.gov.au/Calculators-and-tools/Tax-withheld-calculator/Individual-Non-business-Calculator.aspx', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(13, 'tools', 'Income Tax Rate', 'http://www.ato.gov.au/Rates/Individual-income-tax-rates/', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(14, 'tools', 'Do you need tax return', 'http://calculators.ato.gov.au/scripts/axos/axos.asp?CONTEXT=&amp;KBS=Lodge13.XR4&amp;go=ok', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(15, 'tools', 'HELP REPAYMENT CALCULATOR', 'http://calculators.ato.gov.au/scripts/axos/axos.asp?CONTEXT=&amp;KBS=HECSrepay.XR4&amp;go=ok', '', 1, '2016-06-04', 0, '0000-00-00', 7),
(19, 'about', 'Mission', '', 'We do have a mission to provide the most enthusiastic, earnest and proficient services to our honorable clients, so that they can have peace of mind in their tax affairs and we take vow to help our clients in creating excellent future in taxation with loyalty.', 1, '2016-06-19', 1, '2016-06-19', 7),
(20, 'about', 'Vision', '', 'Our vision is to be the first choice of the clients, whenever they think of having taxation services and advice''s and we are on it by being most dependable, satisfactory and loyal taxation-service provider.', 1, '2016-06-19', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` int(11) NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CATEGORY_ID`, `CATEGORY_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'News', 1, '2016-10-03', 0, 0, 7),
(2, 'Management', 1, '2016-10-03', 0, 0, 7),
(3, 'Physical', 1, '2016-10-03', 0, 0, 7),
(4, 'Sector', 1, '2016-10-03', 0, 0, 7),
(5, 'Services', 1, '2016-10-03', 0, 0, 7),
(6, 'Events', 1, '2016-10-03', 0, 0, 7),
(7, 'Resources', 1, '2016-10-03', 0, 0, 7),
(8, 'Sports', 1, '2016-10-06', 0, 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `FILE_ID` int(11) NOT NULL,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `FILE_CAPTION` varchar(200) NOT NULL,
  `FILE_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `IMAGE_ID` int(11) NOT NULL,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `IMAGE_CAPTION` varchar(200) NOT NULL,
  `IMAGE_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NEWS_ID` int(11) NOT NULL,
  `CATEGORY_ID` int(11) NOT NULL,
  `SUB_CATEGORY_ID` int(11) NOT NULL,
  `NEWS_TITLE` varchar(400) NOT NULL,
  `NEWS_DESCRIPTION` text NOT NULL,
  `NEWS_BANNER_IMAGE` varchar(400) NOT NULL,
  `NEWS_SMALL_IMAGE` varchar(400) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` datetime NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NEWS_ID`, `CATEGORY_ID`, `SUB_CATEGORY_ID`, `NEWS_TITLE`, `NEWS_DESCRIPTION`, `NEWS_BANNER_IMAGE`, `NEWS_SMALL_IMAGE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(3, 7, 15, 'Guerrillas grown into global monitors', 'The first day of August in PLA Day, a holiday for the citizens of the Peoples Republic of China. Apart from ceremonial celebrations by various branches and units of the Peoples Liberation Army (PLA) at home and abroad, Chinese leaders and public figures take particular care to pay their respects to the veterans of PLA for their contributions to laying the foundations of new China. They visit the veterans in their homes, and organise recreational programmes for the veterans.\r\n\r\nThe Peoples Liberation Army is the unified organization of all Chinese land, sea, and air forces. The PLA is one of the worlds largest military forces, having both active and reserve components. Its standing units are retained within the limit of two and a half million members. It traces its origins to the August 1, 1927 Nanchang Uprising in which Kuomintang troops led by Chinese Communist Party leaders Zhu De and Zhou Enlai rebelled following the dissolution of the first Kuomintang-Chinese Communist Party united front earlier that year. The survivors of that and other abortive communist insurrections, including the Autumn Harvest Uprising led by Mao Zedong, fled to the Jinggang Mountains along the border of Hunan and Jiangxi provinces to form the nucleus of PLA.\r\n\r\nThe PLA, initially called the Chinese Workers and Peasants Red Army, grew under Mao Zedong and Zhu De from 5,000 troops in 1929 to 200,000 in 1933. Only a fraction of this force survived the Long March in retreat from the repeated Kuomintang Encirclement and Suppression Campaigns in 1930, 1931 and 1933.\r\n\r\nBut the revolutionaries gathered new strength in their march through rural villages and townships On November 16, 1934, the of the Chinese Workers and Peasants, Red Army abandoned the Hubei-Henan-Anhui Border Base Area and started the epic Long March. In March 1935, the Fourth Front Army of the Red Army launched the Jialin River Campaign and then evacuated the Sichuan-Shannxi Border Base Area to start the Long March. On September 16, 1935, the 25th Army of the Red Army ended its Long March by joining force with the Red Army troops in northwest China at the Yongping Town of Yanchuna County of northern Shaanxi Province. On October 19, 1935, the main force of the First Front Army of the Red Army led by the CPC Central Committee arrived at the Wuqi Town in northern Shaanxi Province, which was the terminal of the Long March. The Red Armys exploits during the Long March became legendary and remain a potent symbol of the spirit and prowess of the Red Army and its successor, the PLA.\r\n\r\nThe PLA continued to gather strength during the anti-Japanese war, when in December 1936, Kuomintang troops ousted from Manchuria by the Japanese invaders mutinied at Xian, and forcibly detained Chiang Kai-shek for several days until he agreed to cease hostilities against the Communist forces in northwest China and to assign Communist units combat duties in designated anti-Japanese front areas. Meanwhile, Chinese Workers and Peasants Army leaders had met in December 17 to 25, 1935, to lay down strategic guide line of their own Anti-Japanese National United Front. On February 20, 1936, all categories of anti-Japanese forces in different places in northeast China were reorganized into the Northeast Anti-Japanese United Forces. In July 1936, the 1st Route Army of the\r\n\r\nNortheast Anti-Japanese United Forces was established. In October 1936, the First, Second and the Fourth Front Armies of the Red Army jointed forces in the Shaanxi-Gansu-Ningxia Border Area.\r\n\r\nOn August 9, 1945, Mao Zedong published his statement The Last Round with the Japanese Invaders. Afterwards, Zhu De, commander-in-chief of the Eighth Route Army, issued the order to launch the counteroffensive against the Japanese aggressors. On September 2, 1945, representatives from the Empire of Japan signed the Japanese Instrument of Surrender in Tokyo Bay aboard the USS Missouri. Chinas War of Resistance against Japanese Aggression closed with a total victory.\r\n\r\nAfter the war, the Kuomintang resumed attacks on Communist strongholds to establish full control over China. In resource-rich Manchuria, where troops of Soviet Russia had moved in under the Second World War Allied offensive to defeat Japan, the control of cities, ports and railways were handed over to Kuomintang when Soviet troops withdrew, since the Chiang Kai-shek government represented China in the Allies compact. But substantial quantities of arms and ammunition left by the Japanese were quietly collected by Communist units. In a decisive move, Mao Zedong dispatched General Lin Biao with a large army to Manchuria. By early November 1948, Lin had destroyed some of Chiang Kai-sheks best armies and taken over Manchuria. Thereafter, Kuomintang divisions began to surrender to the Communists and then to reappear on the Communist side under new leadership with their modern American equipment. In January 1949, full enormity of Guomindang defeat emerged, as the Guomindang general in command of the Beijing-Tianjin region surrendered with 200,000 soldiers. In April 1949, Communist armies crossed the Chang (Yangtze) River and swept over huge areas under real or nominal Guomindang control. Chiang directed evacuation of the loyal remnants of his civil and military machines to Taiwan.\r\n\r\nAfter the proclamation of the Peoples Republic of China, and the adoption of the Organic Law for the Chinese Peoples Political Consultative Conference, for two decades the PLA was engaged in securing the territorial borders of mainland China in the process of which it met with external threats by fighting in the Korean War and a brief spell of Indias China war. Internally, the PLA subdued criminal gangs that subverted rapid industrialisation of the Chinese economy. The Navy of the PLA was established on April 23, 1949. Its primary missions are, independently or jointly with the Army and Air Force, to guard against enemy invasion from the sea, defend the states sovereignty over its territorial waters, and safeguard the states maritime rights and interests. The Air Force of the PLA was established on November 11, 1949. Its primary missions are organizing homeland air defense to protect the territorial air, and providing air security for key facilities; organizing relatively independent air offensive operations; independently or jointly with the Army, the Navy or the Second Artillery Force, engaging in joint operations against enemy invasion from the air, or in conducting air strikes against the enemy. Adopting a system of combining aviation with ground-to-air defense forces, the PLA Air Force consists of the aviation, surface-to-air missile, anti-aircraft artillery and airborne units, as well as communications, radar, ECM, chemical defense, technical reconnaissance and other specialized units.\r\n\r\nAfter the Cultural Revolution and the death of Mao Zedong, the PLA under the guidance of Deng Xiaoping began keeping a low-profile, while feverishly acquiring and developing new technologies. Its goal was to modernize and build up forces at a rapid pace without raising alarm within the international community, especially the Asia-Pacific region.  It had already acquired nuclear and space technologies. The Second Artillery (Missile) Force of the PLA was established on July 1, 1966. It is composed of the ground-to-ground strategic nuclear missile force, the conventional\r\n\r\noperational-tactical missile force, and the support units. The strategic nuclear missile force is equipped with land-based strategic nuclear missile systems. The conventional operational-tactical missile force is equipped with conventional operational and tactical missile systems.\r\n\r\nThe structure, with reserve personnel as the base and active personnel as the backbone PLAs reserve force, established in 1983, is a force with its own preset organizational. The reserve force implements orders and regulations of the PLA, and is incorporated into the PLAs order of battle. In peacetime, it is led by the provincial military districts or garrison commands.\r\n\r\nAfter the end of the Cold War, the PLA tuned itself with the new unipolar global security environment from its own pole of solid defence foundations. At the advent of the 21st century, China embarked on a decade of international security cooperation in peacekeeping missions. On Jan. 12, 2000, China sent its first batch of peacekeeping forces to East Timor. China sent over the decade 1,569 peacekeepers to carry out peacekeeping missions in Afghanistan, Bosnia and Herzegovina, Kosovo, Liberia, Sudan and Haiti. They have had no casualties (except in natural hazards like Haiti earthquakes), no discipline violations and never left in the middle of a mission.\r\n\r\nPresident Hu Jintao articulated the new bearing in Chinas defence outlook, proclaiming New Historic Missions. Chinas 2008 Defence White Paper enumerates the missions essentially as guaranteeing communist party rule, safeguarding national development, defending national interests, and protecting world peace and common development. In addition, the document makes reference to previously articulated diversified military tasks, a term meant to reconcile the new historic missions with the traditional PLA task of winning local wars under informationalized conditions. Moreover, the 2008 White Paper makes specific reference to the term military tasks other than war (MOOTW), which refers to a broad range of peacetime operations that include counterterrorism, stability maintenance, disaster relief, emergency rescue, and international peacekeeping, among others. On the domestic front, too, the PLA has been called upon to cooperate with the Peoples Armed Police (PAP) to provide MOOTW support during disaster rescue and relief operations in the snow and ice emergency of January/February 2008 and the Wenchuan earthquake of May 2008.\r\n\r\nOn the international front from December, 2008, the PLA Navy (PLAN) undertook unprecedented actions abroad during its antipiracy deployment to the Gulf of Aden. The motivations and preparations for this mission were based on Chinas assessment that there was a genuine threat to Sea Lines of Communication in the Gulf of Aden. PLAN proved its operational capability to deploy forces far from Chinese shores, to keep a ship underway for over 60 days, provide logistics support over a long distance, undertake at-sea replenishment and refueling, and participate in port visits.\r\n\r\nThe PLA has also participated in an increasingly wide variety of ground exercises with foreign forces. Since October 2002, the PLA has participated in 24 such exercises, the vast majority of which were focused on nontraditional security issues, including antiterrorist actions, disaster relief, humanitarian assistance, antidrug smuggling, border security, and emergency response.\r\n\r\nThe 2010 Defence White Paper released by Chinas State Council on March 31, 2011 recognised that the international situation had become more complex, international strategic competition had intensified, regional conflicts and flashpoints were a recurrent theme, and that world peace remained elusive. The paper makes an omnibus statement of defence developments. The emphasis is on full mechanization of the PLA and integration of all arms for joint force projection by 2020, attaining major progress in informization as a driving force. Reference to new\r\n\r\nweapons platforms being developed include the newly unveiled JF-20 Stealth fighter aircraft. Expected to be an attack aircraft, Chinese officials suggest it will primarily protect the sovereignty of Chinas airspace. China is particularly concerned over US spy planes on intelligence collection flights around Chinas airspace, and the lessons of 2001 when a Chinese air force aircraft collided with a US spy plane.\r\n\r\nChinese naval force is on the path to a major expansion, and the force is shifting quickly to aircraft carriers. The carriers are not only required for its coastal defence and recovery of Chinas historically maintained claims over maritime territories starting with Taiwan as the core, but also for overseas projections.\r\n\r\nIn the missile field, the DF-31A, an improved version of the DF-31 intercontinental ballistic missile with a range of 11,200 to 12,000 km. was first showcased during a parade marking the 60th anniversary of the Peoples Republic of China in October 2009. Of late, PLA has also tested the worlds first carrier-killer DF-21D ballistic missile.\r\n\r\nA $100 billion African fund instituted by China in 2008 was to obtain access to critical inputs of energy and raw material for Chinas economic needs. Seventy percent of Chinas oil imports come from the Gulf, West Asia and Africa. It makes a double benefit when mostly Chinese workers are employed in mines in the undeveloped parts of Asia, Africa and South America, the produce of which also comes to China. Therefore, any threat to these centres and routes of import are of Chinas concern.\r\n\r\nThus, the PLA has grown from guerilla warriors into global monitors, exercising responsibility and restraint in a much broadened area of its national security interests, as well as being willing and able to take on a larger military role in the changing global security landscape.\r\n\r\n \r\n\r\nRabb Majumder\r\n\r\nThe article was puhblished in the daily Sun on 1 Aug 2012.', 'Centenares-de-militares-ingresaron-ayer-al-Bosque-Talavera-en-busca-de-los-guerrilleros.-Atraparon-a-tres-pescadores-y-un-enfermo-mental..jpg', 'post-145409-1290546763.jpg', 1, '2016-10-06 02:27:36', 0, '0000-00-00 00:00:00', 7),
(4, 1, 1, 'Islam and Terrorism', 'As a Muslim I feel sorry to see, how the most educated , most democratic, most scientific, most adventurous and most articulate Muslim community of seventh, eighth, ninth, tenth, eleventh, twelfth, thirteenth, and even fourteenth century is now failing to coup with the rest of the world community. The main reason for such a state is lack of education. The advent of Islam in the sixth century brought in politico-socio-cultural and economic revolution in the middle east and adjacent Africa, Central Asia and Europe. People in these regions quickly converted to Islam because of its message of peace, social justice, communal harmony and development. The importance of education and pursuit of knowledge become the main and most prestigious occupation. The Royal courts and governments of this regions supported and encouraged the students in pursuit of knowledge. Cities like Mokka, Medina, Bagdad, Samrakand, Bukhara, Cario, Istambul, came to be known throughout the known world as the center of learning. The Quran, the Hadis, Mathematics, Medicine, Astrology, Agriculture, water Engineering etc. Were the main subjects of study and research. The region came to be known as the civilized word and this period is regarded as the Golden Era of Islam. However during this time most of Europe were known as barbarians devoid of education  and culture.\r\n\r\nThe  four crusades fought between Muslims  and the Christians were the turning point for all. The crusades brought the Christians in touch with the rich Muslim centers learning. This opened their eyes and they soon followed the learning process. The result of these intercourse was the Renessance and subsequently the industrial revolution in Europe, which has brought the world to its present state.\r\n\r\nIt is good to see that the Europeans  quickly understood the importance of education and knowledge and took to learning.\r\nBut at the same time it is sad to see that Muslim stopped  pursuit of education resulting in backwardness.\r\n\r\nToday `Islam and Muslim` are two very common words discussed in all the media. Everyone I, e, politicians, mullahs, clergies alike  say that Islam is a religion of peace and harmony. More and more people  all over the world reading the Quran and trying to understand it. More research is going into the Quran unearth the sea of knowledge available in it.\r\n\r\nOn the other hand, the Muslims are increasingly being branded as terrorists all over the world. Islam which is a religion of peace and harmony can not be undermined by few  so called Muslims who are  involved in terrorist acts. It is understood that many of these acts are for self defense and world leaders must find out means for peaceful and justified settlement of these disputes.\r\n\r\nAt the same time, some of this terrorist acts are also conducted wrongfully in the name of Islam. If we read the Quran carefully, we will see that in most verses the almighty Allah has asked us to solve disputes peacefully. We will see that Allah has allowed the use of force for self defense and for the preservation of Islam. Our beloved prophet Hazrat Muhammed (sm) has also shown us throughout his life the use of tolerance and peaceful negotiation to solve disputes . A critical analysis of the capture of mokka, the treaty of hudaibia , all the battles fought by prophet (sm) will shown how peacefully  yet skillfully the prophet(sm) has dealt with difficult and contagious issues and brought peace and harmony.\r\n\r\nI think, it is time the Muslims must try to yet get back to the golden Era and the only way to that is to get back to learning, acquiring  of knowledge , and research of Quran. The demeaning  process of Muslims for the last six centuries has brought us to this stage of shame, under development and backwardness. Let us not look back and go further backward. Let every Muslim family not only keep the Quran on a higher place at their home, allow the dust to grow and hope for Allahs  blessings. Let us all bring the Quran to our hands to read, understand and analyze it and implement its teachings and the teaching  of the holy prophet(sm) in our social, economic and political life. Let the Quran be our guide not Tabiz hoping a miracle to happen. A  good Muslim does not wait for miracle. He/she work Hard in the light of informed religions teachings, values and principles and make miracle  happen', 'o-TERRORISM-facebook.jpg', 'islam-terrorism-jihad-support.jpg', 1, '2016-10-06 02:39:31', 0, '0000-00-00 00:00:00', 7);
INSERT INTO `news` (`NEWS_ID`, `CATEGORY_ID`, `SUB_CATEGORY_ID`, `NEWS_TITLE`, `NEWS_DESCRIPTION`, `NEWS_BANNER_IMAGE`, `NEWS_SMALL_IMAGE`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(5, 1, 1, 'The Security Concerns of Bangladesh', 'Rich in potential human resources poverty-riddled and populous Bangladesh is a relatively recent member of the fractious sisterhood of nation States. It was born in blood and fire in 1971 at the end of an armed struggle for freedom and sovereign statehood. Like numerous other developing and less developed countries of the present day world, Bangladesh also faces varied and manifold challenges to its security.\r\nSecurity concerns of Bangladesh stem from and have to be understood in three dimensions: Global, Regional and National. Besides, in the contexts of its political and economic underdevelopment, threats to the nations security needs to be viewed and analysed not only in terms of defense against external enemies but also and more importantly, protection against the  enemies within. These are the same as the ancient enemies of humankind: poverty, hunger, malnourishment, illiteracy and superstition. Bangladesh is a veritable front-line state in humanitys continuing struggle against these formidable enemies (see Appendix- 1 for relevant statistics).    \r\nSearch for new paradigms of security and Bangladesh \r\n  As in other nations, both developed and developing, in Bangladesh also, policy and decision makers have generally tended to approach security matters from the viewpoint of political (new) realism. This approach puts the state in the central role for tackling armed onslaughts from external and internal sources. Nevertheless, in view of the emerging emphasis on the centrality of human beings in all political and social matters and in the context of the increasingly  strident claim for attention by concerns for human security (something perceived as broader and deeper than traditional state security), the security debate in Bangladesh focuses on a  paradigm-shift in this area. It is important to note the global and regional contexts and their evolution and development since the birth of Bangladesh in 1971 before determining the correct and practical approach towards security concerns of the country.\r\nThe Changing Global Context: \r\n Bangladesh emerged as a sovereign state in 1971 when the now-defunct bi-polar world order was at its final peak. The decline of that order was swift. Within approximate two decades that order, dominated by two super powers, ended with the quite collapse of the Soviet Union in the early 1990s. The unceremonious demise of that Superpower, preceded by the fall, during late 1980s, of the socialist politico-economic systems in the countries of Eastern Europe, satellites of the erstwhile socialist giant, marked the beginnings of a new and different world-order.\r\nUntil the tragic happenings of the 11th September 2001, the emerging order was featured by restless global peace. Nevertheless, many local, national and regional conflicts broke out in many areas of Asia, Africa and Europe. The list is long and frightening: Somalia, Rwanda, Sierra Leone, Congo, Angola, Ivory Coast and Liberia in Africa; Bosnia-Herzegovina, Croatia, Serbia and Chechnya in Europe and Azerbaijan, Armenia, Afghanistan, Israeli-occupied Palestine and Iraq in Asia. \r\nPeace, order and security such as existed in these countries, were secured and ensured by the solid framework of the bipolar global order. It was a working and workable arrangement of two Superpowers almost evenly matched in their nuclear and military strength. The fear of Mutually Assured Destruction (MAD) put in place a Balance of Terror which secured peaceful, orderly though not necessarily and always, free, equitable and just existence for the people of most of the nations of our world. The demise of the bipolar world broke up that framework. New sovereign entities emerged out of the womb of the dead socialist Superpower and from those of its equally dead allies.\r\nThe newly emerged countries and even the older ones, engaged in the exacting processes of recasting their hitherto unitarian political order and socialist economic system, found themselves in the iron-grip of the crises of transition.\r\nThe end of the bipolar world meant also the triumph of the Western systems of pluralist, multi-party, representative democracy in politics and open-market or market-friendly system in economy. Both the systems are exacting in their demands for discipline. These are also very costly in financial terms. It is no wonder then that most of the less-developed and many of the developing nations still remain unable to successfully meet the challenges of transition to the new politico-economic order.\r\nIn these cases, frustration and discontent with politico-economic mismanagement led to a situation where inadequate governance, deterioration of the law and order situation and mass poverty cause armed conflicts, sparked and fuelled by ethno-religious and cultural differences and antipathies. In several countries such as Somalia, Congo, Liberia, governments virtually disappeared and their people were caught in the merciless jaws of  protracted and cruel armed conflicts.\r\nThe global scenario changed for the worse after the terrorist attack on U.S.A. on the 11th September 2001 by the al-Qaeda Terrorist network of Muslim fundamentalists led by the Saudi dissident Osama bin Laden. The happenings on that tragic day once again changed the entire world and steeped it in the darkness of greater uncertainty. \r\nThe USA, the sole Superpower of the present day world, reacted with predictable anger to these first ever and hitherto unimaginable attack on its main land. Led by the USA a coalition of several European powers and several predominantly Muslim countries such as Saudi Arabia, Kuwait, Egypt and Pakistan, led by the USA mounted a massive attack on Afghanistan, ruled by fundamentalists Talibans in October 2001. The cause was the Taliban regimes sheltering Osama bin Laden and his al Qaeda associates. By December 2001 the coalition won a decisive victory over the Taliban regime. A new pro-US and pro West government was set up to preside over the destiny of a devastated, divided and impoverished Afghanistan. The situation remains uncertain as war-lords ruling the provinces continue to defy the central order in Kabul and as the remnants of the Talibans continue to mount repeated attacks on the coalition forces.\r\nEven before peace and stability were fully restored in post-Taliban Afghanistan, the USA under President George W. Bush mounted another massive attack on Iraq. Iraq, ruled by the Baath Party Socialist dictator Saddam Hussein. The US administration alleged that Iraq under Saddam Hussein had Weapons of Mass Destruction (WMD) and linkages with al-Qaeda terrorists and posed a grave security threat to the USA in particular and the world in general. By early 2003 the US put together a Coalition of the Willing, among whom Great Britain was the most prominent, to invade Iraq. This time, the United Nation and important Western allies of the USA, such as France and Germany did not participate in the war. Nevertheless, the might of the hyper power USA, supported by the coalition was more than enough to win the war that began on the 20th March 2003. Saddams forces were easily humbled and Saddam was dethroned. The US and its allies in the war, particularly Britain, succeeded in occupying Iraq by early April 2003. The situation in postwar Iraq, fraught with grave political military uncertainty, is still evolving in a context of insecurity and instability. \r\nAgain, the continuing armed struggle between the Israelis and the Palestinians whose land is occupied by Israel, add to the terrifying potential of the powder-keg of todays world that is the Middle East. In addition, terrorists continue to carry on their attacks in East Asian and South East Asian arenas such as the Philippines and Indonesia. Thus, the post Nine-Eleven World has turned into a veritable worldwide battle ground where the sanguinary   conflicts seem to be part of a long and protracted globalized war.\r\nThe Regional Context: South Asia and Bangladeshs Security: The Externals\r\nThe unprecedented changes in the global security canvas tends to impart new dimensions to the security concerns of Bangladesh. This is true in case of other developing countries of the world including those of South Asia. \r\nBangladesh as part of South Asia has been exposed to the hitherto existent and evolving political and security situations in the region. Security concerns of the countries of the sub-continent have been shaped and influenced by the regions geo-politics, geo-strategy and complex and intertwined history. The tangled wave of the political history of South Asia has turned it into a Region of mistrust. As a contemporary Indian analysts observes: ...far from facilitating regional cooperation, the overhang of history has cast a shadow upon South Asia, creating a fog of mistrust in which the problems of the centrality of India and the disparity between India and its neighbours loom even larger than life 1. \r\nThe hangover of a relatively recent past led to unhappy views of all past. These were results of contemporary compulsions. The intra-mural communal conflicts of the pre-1947 subcontinent have haunted Indo-Pakistan relations since the end of British colonial rule. These have found externalization in three sanguinary wars in the nineteen forties, sixties and early seventies. Bangladesh, Nepal and Sri Lanka have been, apprehensive of Indian designs. India despite its superiority in military, economic and political terms, has never seemed to be at ease with its immediate neighbours, relatively weak as they are.\r\nThus, India has been and still remains the dominant power and the principal source of security concerns for its South Asian neighbours including its challenger Pakistan. As an analyst observed before the attack on America on the 11th September 2001 the region remained unable to benefit from the changes following the end of the cold war,  ...changes in which negotiations rather than use of arms became the principal means of resolving disputes between adversaries. This, in turn, has led to the abatement of arms races and lowering of expenditure in military weaponry. The South Asian region has remained impervious to such change, as inter-state rivalries continue, entailing increased expenditure on defence by states. Little progress has been made by some states to settle their unresolved bilateral disputes. All these have resulted in the persistence of an atmosphere of distrust2.\r\nThe fact that both India and Pakistan became nuclear powers in 1998 before the happenings of Nine-Eleven has further complicated the security situation in the sub-continent and make the region more dangerous than it has been ever before. The changes in the global security context following Nine Eleven find both India and Pakistan avowedly committed to support the international campaign against terrorism. Both the countries support the US led globalized struggle against terrorism. Pakistan has been an important member of the US led coalition fighting  the Al-Qaeda and the Taliban in Afghanistan.\r\nAll these, however, does not seem to have significantly changed the atmosphere of  distrust in the subcontinent. Bangladesh, consequently, remains largely wedded to the traditional security approach peculiar to the countries of the South Asian region.\r\nBangladesh is surrounded from three sides by India and her only landside open is towards Myanmar. Indias influence in this region, Pakistans challenging role and other countries state of affairs and regional trends are a major concern for Bangladeshs defence effort3. \r\nA contemporary scholar aptly summes up Bangladeshs security concern vis-a-vis India : The geopolitical reality of Bangladesh, with India surrounding three sides of the country, contribute to the general perception that India constitutes the principal source of external threat to the country. The tendency of the policy makers of India to regard South Asia as an integral security unit reinforces such perception. Non-resolution of some of the outstanding problems, including those of river water, maritime and land boundary disputes between the two countries, has given rise to mutual distrust. In addition, alleged illegal immigration from Bangladesh into India, and charges that one country is aiding tribal insurgents of the other, have further embittered the relationship between the two.4\r\n\r\nThings, however, seem to have changed for the better after the installation of the Awami League government in office since January 2009. Bangladesh has been cooperating with India in containing the ethnic insurgencies in the eastern Indian states and negotiations on greater connectivity through the Asian Highway and cooperation in the energy sector are in progress although demarcation of land and maritime boarders still leave room for irritations in Indo-Bangladesh relations.  \r\nMyanmar is the other immediate neighbour of Bangladesh with which she has a relatively short land border to the South East. Relationship with Myanmar has been under grave strain on account of two major influx of Muslim Rohingya refugees from the adjoinng Rakhine State. ...The two rounds of refugee inflows in 1978 and 1991, each time involving about a quarter of a million of refugees, and the continued build-up and consolidation of Myanmarese army positions along the eastern border of Bangladesh have heightened tensions. The occasional intrusion of the land border by the Myanmarese army and border security forces, in chasing the ethnic insurgents, is a major irritant in the relationship between the two countries5.\r\nSecurity Concerns: The Internal Dimension\r\nBangladesh is located in the heartland of the locus of political underdevelopment of the present day world  the modernizing countries of Asia and Africa. She is as much a front-line state in mankinds war against political backwardness as she is in humanitys titanic struggle against hunger, poverty and economic underdevelopment. \r\nPolitical backwardness adds a disturbing dimension to the multitude of Bangladeshs internal security concerns.  Weakness of the political system coupled with weakening of administration and social institutions tend to accord the military a significant position in the polity. It also gives them primacy in security decisions: both external and internal.  \r\nThe political development of Bangladesh has moved at a slow pace and remained uneven. In the pre-liberation period (1947-1971) political development in the territories now comprising Bangladesh was hindered by the virtual internal colonialism practiced by the ruling coteries based in the then West Pakistan. It was further thwarted by the repeated direct intrusion of the military in politics, during the Pakistan period in 1958 and 1969 and after the emergence of Bangladesh in 1975 and 1982. However, it has to be noted that during 1975 military intervention followed from the transformation of the polity into a one-party-state by the ruling civilian politicians.\r\nSingle party rule was created around the charismatic and populist personal leadership of the vanguard leader of the liberation movement and founder of sovereign and independent Bangladesh, leader of Awami League Bangabandhu Sheikh Mujibur Rahman. It was also occasioned by the dominant role of one party the Awami League in the movement for liberation and the transparent weakness and fragility of the constitutional opposition forces. Pluralism and the leading role of legislature suffered as personality became more dominant than the system. Another factor that prevented the healthy growth and development of pluralistic democratic politics was the irruption of a new political elite without adequate political socialization in the initial post liberation period. \r\nObstacles to State-Building: Historiography of the Polity\r\nBangladesh has traveled far along an uneven road in its experience and experiments with pluralistic democracy since the end of the first Awami League Government. That Government was overthrown by a coup in the wake of transformation of the polity in January 1975, by parliamentary decision, into a one party system dominated by a strong executive in the form of a overwhelmingly powerful presidency. The change over of 15th August 1975 was marked by the tragic assassination of president Sheikh Mujibur Rahman and his near and dear ones and led to various significant changes in the political system.\r\nA series of coups and counter coups brought General Ziaur Rahman, a hero of the liberation war, to power. President Zia re-introduced the multi-party system and re-civilianized the polity by 1979. He made the transition to civil and constitutional rule after changing some components of the 1972 constitution. He also founded the Bangladesh Nationalist Party (BNP) with elements who were opposed to Awami League and former military and civil burucrates and professionals. Thus, another new political elite was created. President Zia himself was assassinated in 1981 in a failed coup. Constitutional rule continued until 24th March 1982 when the military again directly intruded into politics through a takeover. General H.M. Earshad who led the coup also civilianized his rule in 1986 with parliamentary elections. He also founded a new political party called Jatiyo Party which helped him stay in power under constitutional rule. Through out the period from 1972 to 1990, when president Earshads government was overthrown by civil uprising, the tradition of the strong executive continued unhindered. \r\nParliamentary democracy was resurrected in 1991 and by 2008 four largely free and fair elections were held. In the first of these (1991) the Bangladesh Nationalist Party led by Begum Khaleda Zia, wife of late President Ziaur Rahman, was voted into power. In the second national elections in 1996 the Awami League led by Sheikh Hasina, the elder daughter of Late President Bangabandhu Sheikh Mujibur Rahman, came to power. In the elections of 2001 BNP at the lead of a 4party alliance returned to power with a thumping majority under the leadership of Begum Khaleda Zia. Confrontation and violence between major political forces in late 2006 occasioned the imposition of emergency and prolong rule of the Caretaker government from January 2007 to January 2009. However, national elections in December 2008 brought the grand alliance led by Awami League under Sheikh Hasin to power following its sweeping victory in the elections.  \r\n\r\n\r\nA close look at the three parliamentary Governments that ruled Bangladesh from 1991 to 2006 shows that tradition of the strong executive dominating the scene continues unhindered. The parliament remains comparatively ineffective despite the system being parliamentary cabinet in form. Governance weakened and decayed. Institutions inherited from the past lost their strength through a process of degeneration and politicization. Violence in politics that began to spread in the 1980s increased manifold, especially since the mid-90s and corruption in all spheres of life expanded like a hydra-headed monster. \r\n\r\nWhat Almond and Verba called civic-culture appears to be in short supply in the Bangladesh society. Only lip service seems to be rendered to the essential democratic values of consensus on important national issues, by-partisanship in foreign affairs, toleration of different and divergent political ideas and views, rule of law, human rights and peaceful resolutions of political disputes. The stunting of the political opposition continued even under resurrected parliamentary democracy. Major political parties view elections as a zero sum game in which the winner takes all.\r\nBangladesh: The Significance of the Armed Forces in a Weak Civilian Political System:\r\nAll these contribute to the general weakness of the civilian political system which is inclined, time and again, to call for the militarys help when things go wrong in the polity. \r\nThus, in the immediate post-independence period (1972-1974), the Awami League under Bangabandhu Sheikh Mujibur Rahman, used the armed forces to control and contain the opposition, particularly those of the left-extreme including the pro-Maoist political parties and the Jatiya Shamajtantrik Dal (JSD- National Socialist Party) formed by young dissidents of the Awami League. Sometimes these parties resorted to violence  and the armed forces were used to quell this with a heavy hand. \r\nAgain, the Bangladesh Nationalist Party (BNP) government which came to office for the second time in 2001 called in the military in 2002 to fight the criminals in a bid to arrest the deteriorating law and order situation in the land. The armed forces mounted the Operation Clean Heart and rounded up thousands of suspected criminals. More than fifty persons were reported to have died while in custody of the security forces. There were improvements in the law and order situation but the operation was ended before the close  of the year.\r\nThe armed forces of Bangladesh have been involved in a major counter insurgency operation in the Chittagong Hill tracts (CHT) in the South East of the country. The insurgency in CHT started soon after the birth of Bangladesh as the dominant Chakma tribe (constituting approximately half of the five hundred thousand  hill people) engaged in armed insurgency to protest the failure of the government in securing their rights and mainstreaming them in national life.\r\nAs an observer aptly summes up:  The tribal peoples of the region, particularly the Chakmas, have been adversely affected by a number of initiatives over the decades. Building the Kaptai Dam, inundating their prime land and places of worship, without adequate compensatory measures in the 1960s, denial of the tribal peoples special status while framing the Bangladesh constitution in 1972, resort to a military solution for a political problem in the 1970s and 1980s and the policy of settling people from the plains in the hill districts, have all contributed to a sense of alienation in the tribal peoples minds, with thousands seeking asylum in the Indian state of Tripura and a section of them resorting to arms struggle under the banner of the Shanti Bahini6. \r\nThe conflict in the CHT took a toll of thousands of lives and displaced many more including the Chakmas and Bengali settlers. It continued until December 1997 when the 2nd Awami League Government under Prime Minister Sheikh Hasina signed a peace agreement that ended the hostilities in the area. The peace agreement, while ending overt armed conflict has not been able to fully stabilize the situation and consolidate peace in the CHT. Major political forces including the BNP have reservations about some components of the agreement. On the other hand, some of the Chakma groups are against the agreement. The principal Chakma organization which signed the agreement Parbattaya Chattagram Jano Shanghati   Samity (PCJSS) is also visibly apprehensive about the govts intentions and ability to implement the terms of the agreement. A somewhat uncertain peace continues in the CHT and the Bangladeshi security forces in the area remain alert.         \r\nPeace Keeping and Humanitarian Roles\r\n        In recent years the defence forces of Bangladesh have actively participated in UN Peace Keeping Operations. It is one of the major contributors to the process. This has earned the Bangladeshi armed forces considerable credit. They have successfully participated in UN peacekeeping operations in Kuwait, Bosnia, Sierre Leone, Rwaanda, Liberia, Mozambique, Somalia and Haiti etc.\r\nThe Bangladeshi armed forces regularly participate, on govt. order in humanitarian and disaster management operations in the country during times of natural calamities such as, floods, cyclones and draughts.\r\n\r\n\r\nThe Traditional Approach to Security and Expenditure on Defence Forces in Bangladesh:\r\n   It is in this context of external and internal security canvas that national policy has so far been tuned to the needs of creating and sustaining a well-equipped well-trained modern military force. Strategists in favour of traditional defence support increased allocations of resources to the defence forces for better compensation package, quality training and gradual and constant improvement of weaponry and equipment. \r\nThus, Bangladesh despite its meager resources and economic underdevelopment continues to give priority to defence spending. 1.3-1.8 per cent of the countrys GDP. \r\nIn 1990, Bangladesh spent some US$ 300 million ( 1.5% of its GDP) for defence. By 1996 the defence budget rose to US$ 503 million. During 1999 it ncreased to US$ 618 million (1.88% of the countrys GDP). The size of the armed forces also increased steadily since independence. While the figure of defence forces personnel stood at 20,000 in 1972, it increased to 71,000 in 1978 and 77,000 in 1982. By 1991 it grew to 103,000 and further increased during 1995-96 to 117,5007. There has been further gradual increase during the years 1996-2002. It is interesting to note that the significant rise of defence expenditure in absolute dollar terms, during the period since 1991, occurred  under civiian democratic rule of both the Bangladesh Nationalist Party and Awami League.\r\nDefence strategists argue that in terms of the global annual expenditure on defence  the expenditure of Bangladesh on defence is paltry.\r\nFurther, they point out that even in the South Asian regional context, Bangladeshs defence expenditure is one of the lowest. Thus, it is observed that during 1998 South Asia spent around 14 billion US Dollars a year on the military. India and Pakistan jointly share 93 per cent of the total defence expenditure in South Asia.8 Further, in contrast Bangladeshs annual defence spending 1.3-1.8 per cent of its GDP, India spends 3.3-3.9 per cent and Pakistan 6.6-7.1 per cent of their respective GDP for defence. Indian per capita defence expenditure is US$ 10. Pakistan spends US$ 26 per capita on defence. Bangladesh spends a much lower amount - US$ 3.2. ....Myanmars per capita annual expenditure is  40 US Dollars.9\r\nThese figures represent the situation in 1998. Since then India and Pakistan have become Nuclear Powers and it can be assumed that the expenditure on defence for these countries  have increased much more.\r\nView from the Angle of Human Security   \r\nAnalysts who advocate strengthening of human security for ensuring and enduring a comprehensive defence of Bangladesh, however, incline to view the situation of Bangladesh as unique. There arguments imply that in the context of the economic weakness and widespread poverty in Bangladesh and in the backdrop of Bangladeshs distance from Indo-Pakistan rivalry, comparison with those countries in terms of defence spending is not relevant. They concentrate on the need to lift Bangladesh out of the morass of poverty, malnutrition and illiteracy and advocate proportionate reduction in defence expenditure to utilize the savings for human development through improvement of human resources. One such analyst points out: In 1991 per capita allocation for defence accounted for $3, for education $4 and for health a meager $1. In 1990, with a per capita GNP of $184, public expenditure on a soldier was $2193 as against $26 on a student. The skewed nature of development priorities is reflected in the fact that for the total 106m  people in 1990 there were only 16,900 physicians, while 105,000 men were in uniform. It can be argued that in the absence of a clearly laid out defence policy, the scarce resources channeled into the sector have not necessarily augmented national defence, enhancing Bangladeshs security. In that context, a diversion of funds from such source would contribute immensely to human resources development efforts, which is the fundamental prerequisite for economic development, and eventually the state security of Bangladesh.10\r\nBy 2003, the countrys population increased to 138 million-plus while the armed forces strength rose to more than 120,000. The trend in favour of consistent policy and financial support to conventional defence continued despite changes of political systems from autocratic to democratic rule and governments. Advocates of human security are eloquently critical of this trend. They cite the new emerging and increasingly strident global call for a significant shift in approach to the questions of national security and defence specially in developing and less developed countries such as Bangladesh, suffering from scarcity and resources. \r\nThe concept of Human Security and Bangladesh \r\nThe new emerging concepts of development and security stress the extra-economic factors and ascribe a central role to human beings. Peoples security is emphasized and considered not only integral to but more important than state security. Thus, the UNDP Human Development Report 1994 forcefully argued: ...the concept of security has too long been interpreted narrowly...Forgotten were the legitimate concerns of ordinary people who sought security in their daily lives... Human security can be said to have two main aspects. It means, first, safety from such chronic threats as hunger, disease and repression. And second, it means protection from sudden and hurtful disruptions in the patterns of daily life  whether in homes, in jobs or in communities. The report identifies seven specific elements that comprise human security: 1) economic security, 2) food security, 3) health security, 4) environment security, 5) personal security, 6) community security, and 7) political security.\r\nThere are echoes of this approach in the concept of security put forth by Japan and Canada and supported by Norway and the Netherlands. The Canadian view, succinctly articulated by former Foreign Minister Lloyd Axworthy, defines security as freedom from pervasive threats to peoples right, their safety, or even their lives.11 Essentially this means safety from both violent and non-violent threats. This concept lays equal emphasis on individual and state security. This approach also advocates political development and promotion of norms and institutions on a global scale to ensure comprehensive and meaningful security.\r\nAgain, the Commission on Human Security attempts to link state security and human security. It says, Human security is concerned with safeguarding and expanding peoples vital freedoms. It requires both shielding people from acute threats and empowering people to take charge of their own lives.12   \r\nThe new approach to security questions emphasizing the centrality of the human element is undoubtedly attractive for countries such as Bangladesh, where existence is hostage to innumerable violent and non-violent threats to the security of the individuals. Poverty, malnutrition, illiteracy and unemployment worsened by political disputes and rivalries between major political forces, institutional degeneration and lack of good governance constitute one major dimension of the security threat to people in such countries. The other dimension comprises of both external and internal threats to the polity.\r\nAdvocates of human security approach for Bangladesh cite theorists of civilians based defence, such as Sharp and Vogele, to argue that the country s security can be ensured by less costly civilian based defence (CBD): The post-military defence strategy would also be in conformity with the social and economic needs of the country. The broader concept of security involves human development and social empowerment of the poor. Anchored in the rich experience of the war of national liberation the alternative defence strategy would primarily focus on active civilian participation in national defence. Such a formulation would, at least to an extent, deter extra-constitutional take-over, as there would no longer be one special interest group possessing a monopoly over coercive power.13\r\nConclusion: Synthesizing State and Human Security in Bangladesh       \r\nThe arguments of the advocates of human security based policies for the defence of Bangladesh are forceful and eminently attractive. Nothing could be better for a nation-state in the situation of Bangladesh to be able to concentrate on investment in human development to ensure comprehensive security for the people. The question is whether and how far such a course is realistic. As already noted, Bangladesh is fighting its war for security on two fronts: The human and the political. The countrys underdevelopment in the political spare coupled with the weakness and degeneration of its civilian institutions make it highly vulnerable to internal turmoil and external attacks, overt and covert. In such a situation a reasonably sized, modern and well-equipped defence force seems to be a necessity despite the costs involved. One has to look at some of Bangladeshs South Asian neighbours such as Sri Lanka and the Maldives to find the distressing difficulties these countries experienced in the face of internal armed upheavals and insurgencies  in the absence of strong standing armies. Sri Lanka, before it could build up its armed forces to present levels, had to take help of an 80,000 strong peace-keeping force from India to fight some 3,000 armed Tamil fighters of the LTTE. Maldives also had to rely on Indian help to thwart an attempt of violent overthrow of the government. \r\nAgain, the globalized war against terrorism has made many developing countries,  including predominantly Muslim Bangladesh, vulnerable to threats to their stability. The war against terrorism tends to disperse and scatter Muslim terrorists all over the world. The anti-terrorist coalitions massive and continuing attacks on suspected terrorists strongholds often cause collateral damage and tend to inflame the affected people and make them vulnerable to extremist thinking and action. All this makes global security relatively weak. In the politically unstable and weak states like Bangladesh the internal security situation tends to become even more fragile. Organized and well-equipped defence forces, to the extent their available, offer some measure of strength. It may not be wise at this juncture to reduce such forces in number and strength. \r\nThere is no doubt that Bangladesh needs to attend immediately and meaningfully to the requirements of its people for food, health, education, shelter and job security. But it also needs to ensure that there is internal peace and security and protection from overt or covert external attacks. The important thing is to strike the right balance. The task is not easy but it can be performed by a participatory process of formulating national policies and approaches towards the question of defence and security. This process requires a comprehensive and open debate on security policies and approaches. The parliament, professional bodies, civil society organizations, NGOs, defence and security strategists within the military and outside, all need to actively participate in the debate to determine and decide the shape and content of Bangladeshs defence and security policy and programmes.\r\n#\r\n\r\n* The author, a noted social scientist and literature of Bangladesh is the Chairman of the independent Centre for Development Research, Bangladesh (CDRB) and Editor, socio economic quarterly ASIAN AFFAIRS. He also served as a technocrat Cabinet Minister in the Government of Bangladesh during 1990 and was a former member of the erstwhile Civil Service of Pakistan (CSP) 1967 batch. Earlier, during 1964-67 he was teacher of Political Science in Dhaka University.\r\n\r\nNotes:\r\n1. Pran Chopra, India and Its Neighbours, A Region of Mistrust: An Indian Perspective, p. 18, paper presented at a seminar on Cooperation and Nation building in South Asia at Goa, India, March 1985. \r\n2. Abrar R. Chowdhury, Defence and Development in Bangladesh: the Need for Reordering of Priorities, Defence Expenditure in South Asia  Bangladesh &amp; Sri Lanka, RCSS Policy Studies No. 11, Colombo, Sri Lanka, April 2000, p. 1.\r\n3. Major General Syeed Ahmed, Defence Policy of Bangladesh, p. 4.\r\n4. Major general Abdur Rob Chowdhury, Defence and Development in Bangladesh, p. 3.\r\n5. Major general Abdur Rob Chowdhury, Defence and Development in Bangladesh, p. 4.\r\n6. Ibid, p. 4; for a comprehensive analysis of the evolution of the insurgency in the Chittagong Hill Tracts see: Mizanur Rahman Shelley (ed) The Chittaging Hill Tracts of Bangladesh: The Untold Story, Dhaka, Center for Development Research, Bangladesh (CDRB),1992.  \r\n7. For analysis and arguments in favour of adequate resources for defence and security see: Major Md. Nazrul Islam psc, AEC The Economics of Defence expenditure in Bangladesh, Mirpur Papers: Dhaka, Issue No. 5, pp. 59-71. Also Major General Syeed Ahmed BP,awc,psc, Defence policy of Bangladesh, Bangladesh Army Journal, Dhaka January 2001, pp 1-9.\r\n8. Major Nazrul Islam The Economics of Defence Expenditure in Bangladesh, p. 65.\r\n9. Ibid.\r\n10. Abrar R. Chowdhury Defence and Development in Bangladesh,  p. 1.\r\n11. Liyod Axworthy, Canada and Human Security: The Need for Leadership, International Journal,Vol.52, No. 2, l997, pp. 183-196.\r\n11. Commission on Human Security, Human Security Now, New York, 2003. The independent Commission on Human Security, an initiative of the Government of Japan launched at the 2000 UN Millennium Summit, is co-chaired by Sdako Ogata and Amartya Sen. \r\n12. Abrar R. Chowdhury, Defence and Development in Bangladesh,  p. 15.  \r\n\r\nAppenix.1 \r\nPeoples Republic of Bangladesh\r\nPopulation : 132 million (2002)\r\nPopulation growth rate (1991-2001): 1.47%\r\nPopulation density per sq. km: 892\r\nSex ratio: 103 males per 100 females.\r\nFertility rate (per woman, 2000): 2.5\r\nContraceptive prevalence rate (2000): 54%\r\nLife expectancy at birth (2000): 61.8 years\r\nInfant mortality per 1000 live births (below 1 year, 2000): 51\r\nAdult literacy rate (15+yrs,2001):65\r\nCivilian labour force (1990-2000): 62 million\r\nGDP growth rate (2001-02, at 1995-96 constant price): 4.80%\r\nPer capita GDP (2001-2002): US$ 362\r\nSavings-GDP Ratio (2001-02): 9.8%\r\nInvestment-GDP ratio (2001-02): 23.18%\r\nPopulation below poverty line (2000, daily intake below 2122 K. Cal.): 44.3%\r\nPopulation below poverty line (2000, daily intake below 1805 K. Cal.): 20.0%\r\n\r\n\r\nSources: Bangladesh Bureau of Statistics, Ministry of Finance, Bangladesh Bank (2002).', 'violence_7.jpg', 'political-violence_0.jpg', 1, '2016-10-06 02:49:20', 0, '0000-00-00 00:00:00', 7),
(6, 8, 0, 'Barcelona lose Lionel Messi to groin injury during draw with Atltico Madrid', 'Lionel Messi suffered a groin injury as Barcelona were held 1-1 by Atltico Madrid at the Camp Nou last on Wednesday night and the club said he would be out of action for at least three weeks.\r\n\r\nBarcelonas coach Luis Henrique said afterwards: To lose Messi means that football loses. With Messi we are stronger, but we will continue being strong\r\n\r\nBarcelona 1-1 Atltico Madrid: La Liga  as it happened!\r\nMinute-by-minute report: Atltico fought from a goal down to earn a point at Camp Nou in an absorbing battle between two of La Ligas heavyweights\r\n Read more\r\nIf the Argentinians early departure was not bad enough, Bara failed to make up ground on the La Liga leaders Real Madrid, whose unbeaten start had been halted earlier in the evening when they could only draw at home with Villarreal.\r\n\r\nBarcelona seemed to be on course to cut Reals lead to one point when Ivan Rakitic headed home a cross by Andres Iniesta in the 41st minute. But Diego Simeones side were dogged opponents and scored the equaliser their efforts deserved when the substitute ngel Correa got the better of Javier Mascherano to slide a precise shot past Marc-Andre Ter Stegen in the 61st minute .\r\n\r\nMessi had Barcelonas first effort in the 14th minute but it was comfortably saved Jan Oblak while for Atltico, who were content to play on the break, Yannick Ferreira Carrasco tested Ter Stegen with an angled drive after a quarter of an hour.\r\n\r\nMascherano, who had been so sloppy in the home defeat by Alaves, then produced a goal-saving tackle to deny Kevin Gameiro a tap-in.\r\n\r\nBarcelona were finding it difficult to break down Atlticos defence and when Jordi Albas low cross from the left found Luis Surez, Diego Godn was able to snuff out the danger.\r\n\r\n\r\nReal Madrids perfect La Liga start ends with draw at home to Villarreal\r\n Read more\r\nThen, after Antoine Griezmann had denied Messi after he had wriggled past three players and exchanged passes with Sergi Roberto, Barcelona made the breakthrough.\r\n\r\nIniesta received the ball on the left from a short corner before whipping in a fast right-footed cross for Rakitic to beat Oblak with a glancing header from six yards.\r\n\r\nAfter half-time, Barcelonas cause was set back when they lost Sergio Busquets to injury and Messi soon afterwards.\r\n\r\nTheir withdrawal, with Andr Gomes and Arda Ruran respectively replacing them, was compounded when Atltico equalised. A quickly taken free-kick was flicked on by Fernando Torres, also a substitute, and Correa made a clever feint that left Mascherano on the ground before firing home via a post.', '', 'NOTA-DE-MESSI-350x215.jpg', 1, '2016-10-06 04:01:37', 0, '0000-00-00 00:00:00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `PAGE_ID` int(11) NOT NULL,
  `SUB_CATEGORY_ID` int(11) NOT NULL,
  `SUB_SUB_CATEGORY_ID` int(11) NOT NULL,
  `PAGE_TITLE` varchar(500) NOT NULL,
  `PAGE_DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`PAGE_ID`, `SUB_CATEGORY_ID`, `SUB_SUB_CATEGORY_ID`, `PAGE_TITLE`, `PAGE_DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(2, 0, 2, 'Accounting & Bookkeeping', '<p style="text-align: justify;">Bookkeeping is the recording of financial transactions, and is part of the process of accounting in business. Transactions include purchases, sales, receipts and payments by an individual or organization.Bookkeeping involves the recording of financial transactions by an individual or organization. It is a legal requirement to keep records that are accurate and true for a period of at least 5 years from the date that the documents were prepared, obtained or the transaction completed, whichever occurs the latest. Being compliant on this front can be a very time consuming process and causes many headaches for small and medium business in Australia.In rapidly changing world, accurate and timely financial accounts can mean the difference between business success and failure or between a good business and a great business.</p>\r\n<p style="text-align: justify;">Let us relieve you and your staff of an enormous burden by taking care of all your accounting and bookkeeping needs. We are experts at preparing of your annual accounts and periodic management accounts for tax, business appraisal and planning purposes.</p>\r\n<p style="text-align: justify;">We also offer set up accounting software and training for client including MYOB &amp; QuickBooks.</p>\r\n<p style="text-align: justify;">We will fully discuss your requirements with you and provide you with tailored information and constructive advice on a regular basis on all accounting, bookkeeping &amp; payroll matters.</p>\r\n<p style="text-align: justify;">We empower our clients to do what they do best to run a successful business.</p>', 1, '2016-06-06', 1, '2016-06-06', 7),
(3, 0, 5, 'asdfaf', '<p>hello world</p>', 1, '2016-06-19', 1, '2016-06-21', 7),
(6, 9, 0, 'Financial Planing', '<p>This is my data bro</p>', 1, '2016-06-20', 1, '2016-06-21', 7);

-- --------------------------------------------------------

--
-- Table structure for table `permission`
--

CREATE TABLE `permission` (
  `PERMISSION_ID` int(11) NOT NULL,
  `PERMISSION_NAME` varchar(100) NOT NULL COMMENT 'example: create order, edit PI, Create User etc',
  `DETAILS` varchar(250) DEFAULT NULL,
  `GROUP_NAME` varchar(200) DEFAULT NULL,
  `MENU_NAME` varchar(50) NOT NULL,
  `ROUTE_NAME` varchar(100) NOT NULL,
  `PARENT_ID` int(11) NOT NULL,
  `STATUS` tinyint(4) NOT NULL COMMENT '1=Pending | 2=Approved | 3=Resolved | 4=Forwarded  | 5=Deployed  | 6=New  | 7=Active  | 8=Initiated  | 9=On Progress  | 10=Delivered  | -2=Declined | -3=Canceled | -5=Taking out | -6=Renewed/Replaced | -7=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permission`
--

INSERT INTO `permission` (`PERMISSION_ID`, `PERMISSION_NAME`, `DETAILS`, `GROUP_NAME`, `MENU_NAME`, `ROUTE_NAME`, `PARENT_ID`, `STATUS`) VALUES
(5, 'create_category', NULL, 'category', 'create_category', 'create_category', 0, 1),
(6, 'manage_category', NULL, 'category', 'manage_category', 'manage_category', 0, 1),
(7, 'create_sub_category', NULL, 'sub_category', 'create_sub_category', 'create_sub_category', 0, 1),
(8, 'manage_sub_category', NULL, 'sub_category', 'manage_sub_category', 'manage_sub_category', 0, 1),
(11, 'create_slider', NULL, 'slider', 'add_slider', 'create_slider', 0, 1),
(12, 'manage_slider', NULL, 'slider', 'manage_slider', 'manage_slider', 0, 1),
(15, 'add_images', NULL, 'gallery', 'add_images', 'add_images', 0, 1),
(16, 'manage_gallery', NULL, 'gallery', 'manage_gallery', 'manage_gallery', 0, 1),
(19, 'add_downloads', NULL, 'downloads', 'add_downloads', 'add_downloads', 0, 1),
(20, 'manage_downloads', NULL, 'downloads', 'manage_downloads', 'manage_downloads', 0, 1),
(21, 'add_additional_data', NULL, 'additional_data', 'add_additional_data', 'add_additional_data', 0, 1),
(22, 'manage_additional_data', NULL, 'additional_data', 'manage_additional_data', 'manage_additional_data', 0, 1),
(23, 'add_videos', NULL, 'videos', 'add_videos', 'add_videos', 0, 1),
(24, 'manage_videos', NULL, 'videos', 'manage_videos', 'manage_videos', 0, 1),
(25, 'add_person', NULL, 'Links', 'add_link', 'add_person', 0, 1),
(26, 'manage_person', NULL, 'Links', 'manage_links', 'manage_person', 0, 1),
(27, 'create_sub_sub_category', NULL, 'sub_category', 'create_sub_sub_category', 'create_sub_sub_category', 0, 1),
(28, 'manage_sub_sub_category', NULL, 'sub_category', 'manage_sub_sub_category', 'manage_sub_sub_category', 0, 1),
(29, 'create_page', NULL, 'page_management', 'create_page', 'create_page', 0, 1),
(30, 'manage_pages', NULL, 'page_management', 'manage_pages', 'manage_pages', 0, 1),
(31, 'manage_user_data', NULL, 'additional_data', 'manage_user_data', 'manage_user_data', 0, 1),
(32, 'create_faq', NULL, 'faq', 'create_faq', 'create_faq', 0, 1),
(33, 'manage_faq', NULL, 'faq', 'manage_faq', 'manage_faq', 0, 1),
(34, 'manage_online_tax_return', NULL, 'online_tax_return', 'manage_online_tax_return', 'manage_online_tax_return', 0, 1),
(35, 'create_user', NULL, 'user', 'create_user', 'create_user', 0, 1),
(36, 'manage_user', NULL, 'user', 'manage_user', 'manage_user', 0, 1),
(37, 'create_role', NULL, 'user', 'create_role', 'create_role', 0, 1),
(38, 'manage_role', NULL, 'user', 'manage_role', 'manage_role', 0, 1),
(39, 'create_news', NULL, 'news', 'create_news', 'create_news', 0, 1),
(40, 'manage_news', NULL, 'news', 'manage_news', 'manage_news', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `persons`
--

CREATE TABLE `persons` (
  `PERSON_ID` int(11) NOT NULL,
  `PERSON_TYPE` varchar(50) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `IMAGES` varchar(200) NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `persons`
--

INSERT INTO `persons` (`PERSON_ID`, `PERSON_TYPE`, `NAME`, `IMAGES`, `DETAILS`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'links', 'http://www.ato.gov.au/', 'logo1.jpg', 'Australian Taxation Office', 1, '2016-06-04', 1, '2016-06-05', 7),
(2, 'links', 'http://www.asic.gov.au/', 'logo2.jpg', 'ASIC', 1, '2016-06-04', 0, '0000-00-00', 7),
(3, 'links', 'http://abr.business.gov.au/', 'logo3.jpg', 'ABN Application', 1, '2016-06-05', 0, '0000-00-00', 7),
(4, 'links', 'http://www.humanservices.gov.au/', 'logo4.jpg', 'CENTRELINK', 1, '2016-06-05', 0, '0000-00-00', 7),
(5, 'links', '#', '', 'ABN Lookup', 1, '2016-06-05', 1, '2016-06-05', 7),
(6, 'links', '#', 'logo6.jpg', 'ASIC CONNCET', 1, '2016-06-05', 0, '0000-00-00', 7),
(7, 'links', '#', 'logo7.jpg', 'Chartered Accountants', 1, '2016-06-05', 0, '0000-00-00', 7),
(8, 'links', '#', 'logo8.jpg', 'CPA Australia', 1, '2016-06-05', 0, '0000-00-00', 7),
(9, 'links', '#', 'logo9.jpg', 'IPA', 1, '2016-06-05', 0, '0000-00-00', 7),
(10, 'links', '#', 'logo10.jpg', 'MYOB', 1, '2016-06-05', 0, '0000-00-00', 7),
(11, 'links', '#', 'logo11.jpg', 'Fair Trading', 1, '2016-06-05', 0, '0000-00-00', 7),
(12, 'links', '#', 'logo12.jpg', 'Tax Practitioners Board', 1, '2016-06-05', 0, '0000-00-00', 7),
(13, 'links', '#', 'logo13.jpg', 'MLC', 1, '2016-06-05', 0, '0000-00-00', 7),
(14, 'links', '#', 'logo14.jpg', 'AMP', 1, '2016-06-05', 0, '0000-00-00', 7),
(15, 'links', '#', 'logo15.jpg', 'TAL', 1, '2016-06-05', 0, '0000-00-00', 7),
(16, 'links', '#', 'logo16.jpg', 'Net Wealth', 1, '2016-06-05', 0, '0000-00-00', 7),
(17, 'links', '#', 'logo17.jpg', 'ZURICH', 1, '2016-06-05', 0, '0000-00-00', 7),
(18, 'links', '#', 'logo18.jpg', 'One Path', 1, '2016-06-05', 0, '0000-00-00', 7),
(19, 'links', '#', 'logo19.jpg', 'Wealth Sure', 1, '2016-06-05', 0, '0000-00-00', 7),
(20, 'links', '#', 'logo20.jpg', 'IOOF', 1, '2016-06-05', 0, '0000-00-00', 7),
(21, 'links', '#', 'logo21.jpg', 'Colonial First State', 1, '2016-06-05', 0, '0000-00-00', 7),
(22, 'links', '#', 'logo22.jpg', 'NSW', 1, '2016-06-05', 0, '0000-00-00', 7),
(23, 'links', '#', 'logo23.jpg', 'Common Wealth Bank', 1, '2016-06-05', 0, '0000-00-00', 7),
(24, 'links', '#', 'logo24.jpg', 'ANZ', 1, '2016-06-05', 0, '0000-00-00', 7),
(25, 'links', '#', 'logo25.jpg', 'AGDIBP', 1, '2016-06-05', 0, '0000-00-00', 7),
(26, 'links', '#', 'logo26.jpg', 'Money Smart', 1, '2016-06-05', 0, '0000-00-00', 7),
(27, 'links', '#', 'logo27.jpg', 'NAB', 1, '2016-06-05', 0, '0000-00-00', 7),
(28, 'links', '#', 'logo28.jpg', 'St. George', 1, '2016-06-05', 0, '0000-00-00', 7),
(29, 'links', '#', 'logo29.jpg', 'westpac', 1, '2016-06-05', 0, '0000-00-00', 7),
(30, 'links', '#', 'logo30.jpg', 'Macquarie', 1, '2016-06-05', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `ROLE_ID` int(11) NOT NULL,
  `ROLE_NAME` varchar(100) NOT NULL,
  `DETAILS` varchar(255) DEFAULT NULL,
  `PERMISSION_NAME` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` datetime NOT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`ROLE_ID`, `ROLE_NAME`, `DETAILS`, `PERMISSION_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 'Super Admin', NULL, '', 0, '2015-10-03 17:01:53', 1, '2016-06-21 02:51:14', 7);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `SLIDER_ID` int(11) NOT NULL,
  `SLIDER_NAME` varchar(50) NOT NULL,
  `SLIDER_LINK` varchar(200) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`SLIDER_ID`, `SLIDER_NAME`, `SLIDER_LINK`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(3, 'banner-3', 'banner-3.jpg', 1, '2016-06-05', 0, '0000-00-00', 7),
(6, 'new1', 'new1.jpg', 1, '2016-06-06', 0, '0000-00-00', 7),
(7, 'new2', 'new2.jpg', 1, '2016-06-06', 0, '0000-00-00', 7),
(8, 'new3', 'new4.jpg', 1, '2016-06-06', 0, '0000-00-00', 7),
(9, 'new4', 'new3.jpg', 1, '2016-06-06', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `SUB_CATEGORY_ID` int(11) NOT NULL,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CATEGORY_NAME` varchar(100) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`SUB_CATEGORY_ID`, `CAT_ID`, `SUB_CATEGORY_NAME`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 1, 'Security News', 1, '2016-10-03', 0, '0000-00-00', 7),
(2, 1, 'Security Blog', 1, '2016-10-03', 0, '0000-00-00', 7),
(3, 1, 'e-News Letter', 1, '2016-10-03', 0, '0000-00-00', 7),
(4, 1, 'Industry News', 1, '2016-10-03', 0, '0000-00-00', 7),
(5, 1, 'Defense News', 1, '2016-10-03', 0, '0000-00-00', 7),
(6, 4, 'Defense Security', 1, '2016-10-03', 0, '0000-00-00', 7),
(7, 4, 'IT Security', 1, '2016-10-03', 0, '0000-00-00', 7),
(8, 4, 'Food Security', 1, '2016-10-03', 0, '0000-00-00', 7),
(9, 4, 'Cyber Security', 1, '2016-10-03', 0, '0000-00-00', 7),
(10, 4, 'Home/Construction/Real Estate Property Management Security', 1, '2016-10-03', 1, '2016-10-03', 7),
(11, 4, 'Banking / Insurancefinance security', 1, '2016-10-03', 1, '2016-10-03', 7),
(12, 4, 'Hospitals &amp; Media Centers', 1, '2016-10-03', 0, '0000-00-00', 7),
(13, 4, 'Education', 1, '2016-10-03', 0, '0000-00-00', 7),
(14, 7, 'The Magazine', 1, '2016-10-03', 0, '0000-00-00', 7),
(15, 7, 'Blog', 1, '2016-10-03', 0, '0000-00-00', 7),
(16, 7, 'Internal News', 1, '2016-10-03', 0, '0000-00-00', 7),
(17, 7, 'External News', 1, '2016-10-03', 0, '0000-00-00', 7),
(18, 7, 'It Stablishment', 1, '2016-10-03', 0, '0000-00-00', 7),
(19, 7, 'Video', 1, '2016-10-03', 0, '0000-00-00', 7),
(20, 7, 'Gallery', 1, '2016-10-03', 0, '0000-00-00', 7),
(21, 7, 'Policy &amp; Regulation', 1, '2016-10-03', 0, '0000-00-00', 7),
(22, 7, 'Market Report', 1, '2016-10-03', 0, '0000-00-00', 7),
(23, 7, 'Job', 1, '2016-10-03', 1, '2016-10-03', 7),
(24, 7, 'Sponsor Insights', 1, '2016-10-03', 0, '0000-00-00', 7);

-- --------------------------------------------------------

--
-- Table structure for table `sub_sub_category`
--

CREATE TABLE `sub_sub_category` (
  `SUB_SUB_CATEGORY_ID` int(11) NOT NULL,
  `SUB_CATEGORY_ID` int(11) NOT NULL,
  `SUB_SUB_CATEGORY_NAME` varchar(50) NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `USER_ID` int(11) NOT NULL,
  `ROLE_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `USER_NAME` varchar(50) NOT NULL,
  `USER_EMAIL` varchar(50) NOT NULL,
  `USER_PHONE` varchar(50) NOT NULL,
  `USER_TYPE` varchar(50) NOT NULL,
  `USER_PASSWORD` varchar(50) NOT NULL,
  `USER_PASSWORD_HISTORY` varchar(250) DEFAULT NULL,
  `CREATED_BY` int(11) DEFAULT NULL,
  `CREATED_DATE` datetime DEFAULT NULL,
  `UPDATED_BY` int(11) DEFAULT NULL,
  `UPDATED_DATE` datetime DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL COMMENT '1=active | -1=inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`USER_ID`, `ROLE_ID`, `COMPANY_ID`, `USER_NAME`, `USER_EMAIL`, `USER_PHONE`, `USER_TYPE`, `USER_PASSWORD`, `USER_PASSWORD_HISTORY`, `CREATED_BY`, `CREATED_DATE`, `UPDATED_BY`, `UPDATED_DATE`, `STATUS`) VALUES
(1, 0, 0, 'admin', 'admin@base4.com', '', 'admin', 'BHJXG2x8AGi89kcjdk5_kGoKdwLRndUkx7aWlWtXupU%2C', NULL, NULL, '2015-09-16 11:12:13', 1, '2016-09-28 11:41:09', 9),
(4, 3, NULL, 'mh', 'developer.mh.me@gmail.com', '+8801722432578', '', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 'Ki6tIkfo7hfTTVmvPsu-ZWwv-qSZKw2i5OPaErEWAF0%2C', 1, '2016-06-22 05:58:45', NULL, '2016-06-22 05:59:23', 7);

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(50) NOT NULL,
  `EMAIL` varchar(50) NOT NULL,
  `MOBILE` varchar(50) NOT NULL,
  `MESSAGE` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `VIDEO_ID` int(11) NOT NULL,
  `CAT_ID` int(11) NOT NULL,
  `SUB_CAT_ID` int(11) NOT NULL,
  `CAPTION` varchar(200) NOT NULL,
  `EMBED_CODE` text NOT NULL,
  `DETAILS` text NOT NULL,
  `CREATED_BY` int(11) NOT NULL,
  `CREATED_DATE` date NOT NULL,
  `UPDATED_BY` int(11) NOT NULL,
  `UPDATED_DATE` date NOT NULL,
  `STATUS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `additional_data`
--
ALTER TABLE `additional_data`
  ADD PRIMARY KEY (`ADD_ID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CATEGORY_ID`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`FILE_ID`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`IMAGE_ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NEWS_ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`PAGE_ID`);

--
-- Indexes for table `permission`
--
ALTER TABLE `permission`
  ADD PRIMARY KEY (`PERMISSION_ID`);

--
-- Indexes for table `persons`
--
ALTER TABLE `persons`
  ADD PRIMARY KEY (`PERSON_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`ROLE_ID`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`SLIDER_ID`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`SUB_CATEGORY_ID`);

--
-- Indexes for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  ADD PRIMARY KEY (`SUB_SUB_CATEGORY_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`VIDEO_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `additional_data`
--
ALTER TABLE `additional_data`
  MODIFY `ADD_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `FILE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NEWS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `PAGE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `permission`
--
ALTER TABLE `permission`
  MODIFY `PERMISSION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `persons`
--
ALTER TABLE `persons`
  MODIFY `PERSON_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `SLIDER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `SUB_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sub_sub_category`
--
ALTER TABLE `sub_sub_category`
  MODIFY `SUB_SUB_CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `VIDEO_ID` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
