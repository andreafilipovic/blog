-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2020 at 12:26 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `action`
--

CREATE TABLE `action` (
  `id_action` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `action`
--

INSERT INTO `action` (`id_action`, `id_user`, `action`, `date`) VALUES
(1, 1, 'Log in', '2020-03-22 17:31:33.498800'),
(2, 1, 'Log out', '2020-03-23 17:34:43.492114'),
(3, 1, 'Log in', '2020-03-23 17:49:33.610466'),
(4, 1, 'Log out', '2020-03-23 17:49:58.751069'),
(17, 9, 'Log in', '2020-03-24 19:18:43.650840'),
(18, 9, 'Edit Post', '2020-03-24 19:19:27.625957'),
(22, 1, 'Log out', '2020-03-25 11:58:21.438612'),
(23, 12, 'Registration', '2020-03-25 12:54:28.846879'),
(24, 12, 'Log in', '2020-03-25 12:54:29.178993'),
(63, 12, 'Comment Post', '2020-03-25 22:00:48.287114'),
(85, 1, 'Log out', '2020-03-26 12:38:07.942509'),
(87, 1, 'Comment Post', '2020-03-26 12:47:06.297459');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(100) NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `updated_at` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Food', '2020-02-11 15:55:47.941537', '2020-03-11 15:55:47.941537'),
(2, 'Travel', '2020-03-12 15:55:47.941537', '2020-03-12 15:55:47.941537'),
(3, 'Health', '2020-03-11 15:55:47.941537', '2020-03-17 15:55:47.941537'),
(4, 'Tech', '2020-03-12 15:55:47.941537', '2020-03-12 15:55:47.941537'),
(5, 'Science', '2020-03-11 15:55:47.941537', '2020-03-26 15:01:13.000000');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(255) NOT NULL,
  `id_user` int(255) NOT NULL,
  `id_post` int(255) NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id_comment`, `id_user`, `id_post`, `comment`, `date`) VALUES
(18, 1, 2, 'sdasdasd', '2020-03-18 22:41:45.780090'),
(26, 12, 1, 'dsfsdfsd', '2020-03-26 22:33:50.053048'),
(27, 9, 17, 'Looks great!!!', '2020-03-26 22:57:28.804675');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id_message` int(255) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `mark_as_read` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id_message`, `email`, `subject`, `message`, `date`, `mark_as_read`) VALUES
(11, 'nick@gmail.com', 'Pitanje za admina', 'sdasdasdasda', '2020-03-27 01:32:44.071326', 1),
(12, 'aki1998@live.com', 'saasdasd', 'asdasdas', '2020-03-27 01:32:50.572651', 1);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(255) NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `view` int(255) NOT NULL DEFAULT '0',
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `id_user` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id_post`, `title`, `description`, `content`, `view`, `photo`, `created_at`, `updated_at`, `id_user`) VALUES
(1, '5 Scientific Facts That Prove Travel Is Good For Your Health', 'When you return from a vacation feeling relaxed and refreshed, that’s not just an emotional response to time away from work and daily worries: you’re experiencing some of the nourishing effects of traveling. It turns out that jetting off to relax on the beach in Turks and Caicos or to explore ruins in Tulum isn’t an indulgence — research says that vacationing is actually good for your health.', '<div><strong>1. Travel exposes you to different environments, which create stronger antibodies and boost your immune system significantly.<br></strong><br></div><div>Antibodies are the little proteins that protect your immune system from harmful pathogens. In fact, <a href=\"https://experiencelife.com/article/dirt-germs-and-other-friendly-filth/\">research</a> shows exposure to some dirt and minor illnesses actually keeps your body and gut stronger. This isn’t to say that you shouldn’t practice basic hygiene on the road — you should still wash your hands or use a little hand sanitizer here and there — but having some new bacteria in your life isn’t a bad thing. One <a href=\"http://www.hobotraveler.com/alternative-health-and-medicines/i-drunk-the-water-in-100-countries-and-it-did-not-kill-me.php#ixzz3rFAkVwEZ\">blogger</a> even suggests that after 17 years on the road, travel has been his best probiotic. When you travel from place to place, your body adapts to thousands of new bacteria, which it turn makes it much stronger.<br><br></div><div><strong>2. Travel lowers stress levels.<br></strong><br></div><div>Like <em>a lot</em>, a lot. This one might not come as a big surprise to you, but it’s been scientifically proven that travel will increase your happiness, decrease your depression, and chill you the F out. A <a href=\"http://stress.about.com/od/workplacestress/a/vacations.htm\">study</a> found that three days after vacation, travelers felt well-rested, less anxious, and in a better mood. And these improvements didn’t disappear when they returned home, they lasted for weeks afterward.<br><br></div><div><strong>3. Travel improves your brain health.<br></strong><br></div><div>Travel expands your mind. You meet new people. You adapt to new situations. You become more globally and culturally aware. This is all good for your health because new experiences increase cognitive flexibility, keeping your mind sharp. <a href=\"http://www.theatlantic.com/health/archive/2015/03/for-a-more-creative-brain-travel/388135/\">Studies</a> have shown a connection between travel and an increase in creativity, a deeper sense of cultural awareness and personal growth. And according to the <a href=\"http://www.apa.org/pubs/journals/psp/\">Journal of Personality and Social Psychology</a>, those who travel and study abroad tend to be more open and emotionally stable.<br><br></div><div><strong>4. Travel will decrease your risk of heart disease.<br></strong><br></div><div>That’s because people who wander away from their homes for a little vacation are generally less stressed and anxious — or at least they’re willing to take a break from their stressors. Because of this, the long-running Framingham Heart <a href=\"http://www.marketwatch.com/story/travel-that-keeps-the-heart-and-brain-healthy-2014-01-15\">Study</a> found that men and women who traveled annually were less likely to suffer a heart attack or develop heart disease.<br><br></div><div><strong>5. Travel keeps you fit.<br></strong><br></div><div>Okay so travel often means sitting for hours on end in a series of moving vehicles, but it also means lots of opportunities to force yourself to be active. When we travel, we want to try new things and see all there is to see — we spent money to get there, after all — so we’re more likely to attempt an extreme sport, walk the city streets much more than we would back home, or hike to get the best views of our surroundings. Even if you plan to stay all day at the beach, walking on sand will force your muscles to work twice as hard.<br><br></div>', 126, 'blog-post-3.jpeg', '2020-02-28 07:22:00', '2020-03-25 19:21:23', 1),
(2, 'Quinoa Cauliflower Patties', 'I made these patties with some items I had in the fridge. They are simple and intentionally simple-flavored as to be an addition anywhere you wish. I wanted these as a car snack, so I have a tupperware full with one little dish of this cilantro pesto and another of hummus for dipping. I like them on a pile of dark leafy greens or Hugh stuffed a couple in a pita for a handheld situation. I\'ll be trying one under a poached egg with hot sauce and avocado. You get the idea.', '<div><strong><em>QUINOA CAULIFLOWER PATTIES </em></strong><em>// Makes 12</em><br><br></div><div>Barely adapted from <a href=\"http://www.amazon.com/gp/product/0847839605/ref=as_li_ss_tl?ie=UTF8&amp;camp=1789&amp;creative=390957&amp;creativeASIN=0847839605&amp;linkCode=as2&amp;tag=sproukitch-20\">Vegetarian Everyday<br></a><br></div><div>I try to make a dressing or two on days I\'m cooking so I just have them on hand when I need a quick meal. I don\'t really have a recipe for the one pictured here, but it was a quick whiz in the food processor of garlic, tahini, lemon, chives, cilantro, olive oil and a teeny splash of white wine vinegar.<br><br></div><ul><li>1 cup quinoa</li><li>1 1/2 cups cauliflower florets</li><li>4 eggs</li><li>6 scallions, white and green parts</li><li>3/4 cup rolled oats</li><li>sea salt and pepper</li><li>1 1/3 cup sheeps milk feta</li><li>zest of one large or two small lemons</li><li>1/2 cup roughly chopped flat leaf parsley</li><li>ghee, for cooking</li></ul><div><br>Rinse the quinoa. Put the quinoa and 2 cups water in a medium pot. Bring it up to a boil, add a pinch of salt and pepper, turn it down to a simmer and cover and cook for 15 minutes. Fluff with a fork, turn off the heat, set the lid ajar to rest.<br><br></div><div>In a food processor, pulse the cauliflower until it resembles cous cous. About 10-15 times.<br><br></div><div>In a large bowl, whisk the 4 eggs together well. Add the cauli cous cous to the eggs. Back to the processor (it\'s fine if it still has cauli crumbles, leave them), add the scallions and oats and pulse a few times to roughly chop. Add this to the egg bowl along with the cooked quinoa. Add a generous pinch of salt and pepper, the crumbled feta, lemon zest, chopped parsley and stir to mix well. Let the mixture rest in the fridge for 30 minutes.<br><br></div><div>Warm a nub of ghee in a heavy bottomed skillet over medium high heat. Form the quinoa mixture into patties about 4\'\' wide and 1\'\' thick. Cook them for about 4 minutes on each side until just crisped, covering them after the flip to completely warm though. The patties will keep covered in the fridge for 3-4 days.</div>', 14, '1585166029_qui.jpg', '2020-02-28 06:23:00', '2020-03-25 18:54:46', 2),
(3, 'The Most Beautiful Bali Waterfall Tour (Route)', 'The waterfalls of Bali are some of the most incredible ones in Asia. The relatively small island owns over fifty waterfalls (and counting) coming in all kinds of different shapes and sizes. Visit a selection of the best waterfalls the island has to offer and get to know the price for the tour in this uniquely created Salt in our Hair two-day Bali waterfall tour.', '<div><strong>Bali Waterfall Tour: Day 1</strong></div><div><br></div><div>Wake up early for the start of your packed two-day Bali waterfall tour. One will be harder to reach than the other, for that reason, the hardest hikes are planned in the early morning. Wear good shoes and your swimsuit and finally bring a towel and drinking water in a reusable bottle. <br><strong><br></strong><strong><em>Nungnung Waterfall</em></strong><strong><br></strong><br></div><div>First up, Nungnung Waterfall, An extremely powerful waterfall about 45 minutes north from Ubud. The 509-steps walk down is a tough one to do back up, therefore, arrive around 8 AM so you can chill, have a swim in the pool of the waterfall and hike back up slowly. The stairs are well maintained and a straight forward path.<br>The entrance ticket costs 10,000 IDR (~ 0.8 USD). <br><strong>Good to know:</strong> During the rainy season, do not shower under the waterfall as natural waste like rocks and tree branches might fall down the stream.<br><strong><br></strong><strong><em>Leke Leke Waterfall</em></strong><strong><br></strong><br></div><div>The relatively unknown Leke Leke Waterfall is a 30-minute drive from Nung Nung. It is an easy and beautiful 15-minute walk down through the Bali jungle crossing rivers by bamboo bridge towards a secluded waterfall.<br>The relatively small waterfall is surrounded by a huge amount of colorful flowers and plants which gives this waterfall in Bali its own unique look. A ticket to Leke Leke costs 30,000 IDR which is used for maintenance of the area.&nbsp;<br><br></div><div><strong>Bali Waterfall Tour: Day 2<br></strong><br></div><div>Another early wake-up on the second day of your Bali Waterfall Tour but we saved the best for last! Get a good breakfast and refill your water bottles and make your way to the Sekumpul Waterfall.<br><strong><em><br>Sekumpul Waterfall – Best of Bali Waterfall Tour</em></strong><strong><br></strong><br></div><div>Arguably the most incredible waterfall Bali has to offer: Sekumpul Waterfall. Water dropping from a height of 80 meters down into the refreshing natural pool. The relatively long but easy walking trail through the forest takes you to a jaw-dropping panoramic viewpoint. Finally, a 15-minute walk down brings you to the foot of the most epic location of the Bali waterfall tour.<br><strong><br></strong><strong><em>Aling Aling Waterfall</em></strong><strong><br></strong><br></div><div>Aling Aling is different from all the other waterfalls in the Bali waterfall tour as it has natural water slides and jumping points. Aling Aling itself is sacred water and is not allowed to swim in but there are loads of other waterfalls down the trail where you can but a guide is allowed to do so. Sekumpul to Aling Aling is a 45-minute drive.<br><br></div><div><strong><em>Git Git Waterfall</em></strong><strong><br></strong><br></div><div>Let’s hope you still have some energy left for the last waterfall of the tour. Git Git is a popular waterfall and easy to reach due to its location next to the road. It is possible to swim in the pools in front or get a refreshing shower under it. Aling Aling to Git Git is a short 35-minute drive. The entrance fee to this waterfall is 20,000 IDR.&nbsp;</div>', 57, '1585166999_bali.jpg', '2020-03-06 06:53:07', '2020-03-25 19:09:59', 2),
(4, 'How AI Is Poised to Transform Every Element of the End-to-End Supply Chain', 'IT professionals involved in shaping, implementing, and managing their organization’s supply chain operations are counting on artificial intelligence (AI) to help make those operations more efficient and effective. Just how much they’re expecting from AI became evident in a recent IDG survey of 150 IT professionals across the U.S.', '<div>AI clearly topped all emerging technologies: <em>57%</em> of the respondents said AI would have the greatest impact on their supply chain in the coming two years. That put AI well ahead of data analytics and visualization tools <em>(47%)</em> and Internet of Things (IoT) sensors <em>(46%)</em>.<br><br></div><div>In practice, of course, AI technologies such as machine learning, natural language processing, and pattern recognition will often work hand-in-hand with data analytics, IoT, and other technologies. For example, AI is already helping data analytics systems identify trends and other valuable information—information that often is buried in massive volumes of data that comes from many diverse sources, IoT sensors included.<br><br></div><div>The intersection of AI and the supply chain will be multifaceted and wide-ranging. AI will help manufacturers automate their factories and warehouses by powering robots, managing inventories, and identifying process inefficiencies. It will transform logistics and transportation operations by guiding self-driving vehicles and mapping the least congested, most direct routes. And it will provide critical insights to aid in everything from product demand forecasting to supplier relationship management.<br><br></div>', 64, '1585168054_it.jpg', '2020-03-06 09:10:37', '2020-03-26 14:24:32', 1),
(5, 'How To Make Delicious Wine Out Of Oak Leaves', 'Unlike lots of other wines, Oak leaf wine doesn’t need a fermentation time of longer that 16 days, making this a very quick process in wine terms! Preparation time and bottling will only take a mere 40 minutes or so and standing time can be as little as 90 days.', '<h1>Preparation: What Do I Need To Make Oak Leaf Wine?</h1><div><br></div><div>To create a crate of 6 bottles of wine, you will need:<br><br></div><div>2 x brown paper bags of cleaned, washed oak leaves that have been gathered from the tree.<br><br></div><div>1 x&nbsp; regular sized piece of fresh ginger<br><br></div><div>2kg x of white sugar (or 1.5kg) if you prefer your wine more dry<br><br></div><div>500g x chopped raisins<br><br></div><div>15g x yeast<br><br></div><h1>Method: Delicious Oak Leaf Wine</h1><div><br></div><ol><li>Firstly, grab your cleaned oak leaves in a ovenware dish that is big enough for one whole bag.</li><li>Once the leaves are inside, boil some water and pour over the top. Make sure there’s enough water to full submerge all the leafs.</li><li>Soak the leaves inside the water for 5 days, then strain off the liquid through a muslin cloth or sieve.</li><li>Once the liquid is separated from the leaves, reheat and boil the liquid, adding in your ginger root and desired sugar amount.</li><li>After 30 minutes of boiling, remove from heat and add your chopped raisins and yeast.</li><li>Completely cover the liquid and allow to ferment for 16 days.</li><li>Once fermented, strain the liquid from the raisins and ginger and bottle.</li></ol><div>When serving, add a slice of lemon and dried oak leaf to season. In the baking hot sun it becomes a smooth refreshing drink. In the winter, you can heat and boil your oak leaf wine for a more seasonal treat. Yum!<br><br></div><h1>How Long Does It Need To Be Bottled?</h1><div><br></div><div>The wine can then sit in a cool, dry place for 3 months or so, but the longer you ‘leaf’ your wine bottled, the better the taste… or so my grandmother thought!</div>', 12, '1585163449_ginger.jpg', '2020-03-10 19:56:48', '2020-03-26 13:25:08', 1),
(11, 'How to visit Egypt on a Buget', 'One of the countries high up on my “must visit” list is Egypt. As a lover of history, I long to release my inner archaeologist and explore the many ruins of the country. While it might be a long time before I get there, my friend Jeremy Scott Foster from TravelFreak has visited a couple of times. In this guest post, he’ll give you his best tips for saving money on your next visit to Egypt!', '<div>I’ve been to <strong>Egypt</strong> twice. On my first trip four years ago, I solo traveled the Sinai Peninsula along the Gulf of Aqaba, stayed in shared hostels for $5 USD per night and took overnight buses that cost just as little. On my most recent trip last year, I traveled from the very north of Egypt in Alexandria south to Cairo, and then further south along the Nile River to the border with Sudan.<br><br>And, throughout it all, I fall deeply in love with this country where foreign perception of violence keeps so many at arm’s length.<br>But what most visitors miss is what you can gain — free of crowds and for little money too.<br><br></div><div>From the chaos of Cairo to the more laid-back vibe of Luxor, Egypt is an ideal destination for budget travelers.<br><br></div><ul><li><strong>How to Save Money on Accommodation</strong></li></ul><div><br></div><div><strong>Stay in hostels instead of hotels –</strong> Typically, you can expect to find a bed in a shared dorm room (with 4+ beds) for between $5-8 USD per night, or a comfortable private single room for about $15 USD per night. You will likely have to share a bathroom, but at least you have your privacy.<br><br>Use Hostelworld to look for the best prices. I recommend Dahab Hostel in Cairo and Al Salam Camp in Luxor.<br><br><strong>Use Booking.com to compare prices for hotels –</strong> If you’re looking for cheap hotels or guesthouses in Egypt, I recommend checking Booking.com. A private room in a guesthouse or hotel goes for about $40 USD per night.<br><br></div><div>Prices are generally listed per room, not per person. So, if you are traveling with a friend, you can save even more money by splitting the cost.<br><br></div><ul><li><strong>How to Save Money on Food</strong></li></ul><div><br></div><div><strong>Stick to the local eats and street food – </strong>If you want to save money on food while traveling in Egypt, do yourself a favor and steer clear of the Western chain food joints. While a cheeseburger is about half the price of what you pay at home, it’s still more expensive, less tasty, and far less adventurous than experiencing the local cuisine.<br><br>Navigate the narrow alleyways of any bustling Cairo market (like Khan El Khalili or Mohammed Ali Street) to seek out the best shawarma ($2 USD). Or grab a stuffed falafel sandwich from a street vendor on your way from one ancient relic to another ($2 USD). You can literally find Arabic bread for 5 cents. It’s all cheap and very filling.<br><br></div><div>And, the hummus. It’s so. Darn. Good.<br><br><strong>Eat at a kosheri – </strong>A kosheri is a small, local restaurant that serves up generous portions of pasta, chickpeas, lentils, etc. often for less than $1 USD! There’s no menu, you just select the size of your portion and then you’re served this mishmash of deliciousness.<br><br></div><ul><li><strong>How to Save Money on Transportation</strong></li></ul><div><br></div><div><strong>Bargain with your taxi driver – </strong>In most Egyptian cities, taxis are an inexpensive and convenient way to get around.<br><strong>Take the local train – </strong>Taking the train between Alexandria, Cairo, Luxor, and Aswan is the most popular mode of transport for this route.</div><div><br></div><div><br></div>', 19, '1585163018_egypt.jpg', '2020-03-18 16:21:57', '2020-03-25 18:03:38', 1),
(12, '5 Cool things to do in South Africa', 'South Africa is famous for its stunning landscapes, incredible wildlife, award-winning wineries, beautiful beaches, and its lively and cosmopolitan cities. I’ve been to the country twice and always leave wanting more. There’s something deeply special about this place.', '<div>Though there are hundreds of things to see and do in<strong> South Africa</strong>, here’s a list of what I think are the must-see and must-do activities while you’re here:<br><br></div><ol><li><strong>Go on a safari</strong><br><em>Most people come to South Africa to go on a safari — and for good reason. It’s home to some of the best game drives in the world and you’ll want to spend at least a couple of nights in one of the hundreds of national parks. There’s truly nothing like it.<br><br>The most well-known safari destination is Kruger National Park, which has incredible diversity and tons of amazing wildlife, including the “Big Five” (lions, leopards, elephants, rhinoceroses, and Cape buffalo).</em></li><li><strong>Visit Cape Town</strong><br><em>Cape Town is the most popular destination in South Africa — and for good reason. It’s a vibrant, multicultural city with lively bars, delicious food, great weather, lots of nature and hiking nearby. In addition to the city’s amazing beaches, the waterfront is bursting with things to do as well.</em></li><li>&nbsp;Go Surfing<br><em>Both the Atlantic Ocean and the Indian Ocean coasts of South Africa offer world-class surfing. Jeffrey’s Bay on the south coast near Port Elizabeth is the most famous surfing destination in South Africa and offers big waves and multiple breaks.<br><br>There are also a number of good surfing locations near Cape Town, including Dungeons in Hout Bay and a number of others further south on the Western Cape, such as Long Beach.<br><br>If you’re a beginner, Durban is a great option for surfing lessons because of the reliable waves and warm water of the Indian Ocean. Expect to pay around 500 ZAR per person for a 2-3 hour lesson.</em></li><li><strong>See African Penguins</strong><br><br><em>Part of the Table Mountain National Park and a short drive from Cape Town, the Boulders Penguin Colony is home to several thousand African penguins. (Fun fact: they’re also known as jackass penguins, because the noises they make sound like a donkey braying.)<br><br>Unfortunately, they’re an endangered species as a result of human impacts like pollution, oil spills, and habitat destruction. For that reason, you aren’t allowed to walk on the beach where the penguins breed but you can watch them from the nearby viewing platforms. There is also a raised boardwalk that starts at the Boulders Visitor Centre which will let you get up close to the penguins. Just keep in mind that they are wild animals and the beach is their home, not yours. Be sure to keep your distance and don’t try to feed them or pet them. As cute as they are, they’re still wild animals.</em><br><br></li><li>&nbsp;<strong>Go Wine Tasting</strong><br><em>South Africa’s climate is perfect for grape growing and the country produces award-winning white, red, and sparkling wines. The wine industry here dates back to the seventeenth century and there are hundreds of wineries to be found (and sampled of course).<br><br>In the Cape Winelands region not far from Cape Town, Stellenbosch has over 150 wineries in a very small area while a bit further away, Franschhoek not only has over 50 vineyards but also some of South Africa’s best restaurants. You can do a wine tour that will take you to several different or you can stay in one for a night or two (many have guest accommodations).<br><br><br>If you don’t have a vehicle and want to take a tour, expect to pay at around 1,000 ZAR per person for a half-day tour of the region and its wineries. Many hostels run their own tours to the region or have partnerships with local tour guides who can take you as well. Be sure to shop around for the best deal!<br></em><br></li></ol><div><br><br></div><div><br></div><div><br></div>', 16, '1585162339_southafrica5.jpg', '2020-03-25 17:15:32', '2020-03-25 17:52:34', 1),
(13, 'Let’s Aim for Physical Rather Than Social Distancing', 'Amid all the calls in nearly every country for social distancing, the most powerful tool we have to slow the spread of the novel coronavirus, one important fact gets lost: We are fundamentally social beings, and social distancing can carry a heavy psychological price tag. This is particularly true for people who live on their own, but we can all struggle with the emotional impact of isolation and its first cousin, loneliness.', '<div>Although there’s been no time to study the effects of social distancing related specifically to the novel coronavirus, we know a great deal about the impact of social isolation on mental and physical health. It’s often experienced as highly stressful, and the stress can become toxic. Isolation, particularly when it causes loneliness, increases the risk of anxiety and depression. Social isolation has the equivalent adverse impact on physical health to smoking 15 cigarettes a day. It’s a greater threat to health than obesity, and is linked to an increased risk of a wide variety of health problems. In a <a href=\"https://psycnet.apa.org/doiLanding?doi=10.1037/0278-6133.24.3.297\">study</a> highly relevant to our current situation, students who reported higher levels of loneliness responded less powerfully to flu vaccinations.<br><br><strong><em>Just remember: We keep ourselves virus-free not just to protect ourselves, but to slow the spread of the virus among everyone.<br><br></em></strong>Once we distinguish between physical and social distancing, we can refocus on the power of staying socially connected while maintaining a safe physical distance. We can easily get creative in finding ways of building in social time for ourselves, and for those we care about who might be feeling isolated. None of it is rocket science, but small steps can lead to big effects.<br><br></div><ul><li>If you live in a place where you’re allowed to go outside, invite friends for walks, meet up for a run, just spend time together. It doesn’t matter where you walk: Wander through a park, stroll along city streets, jog on a country road. Just remember to keep about two meters (six feet) between each other, avoid shaking hands, all the usual precautions.</li><li>Video calls are wonderful, and phone calls, too. If you have elderly relatives or friends who have smartphones or computers but don’t know how to use them for video calls, this is a great time to introduce them to Skype, WhatsApp, Facetime, etc. I live in Amsterdam, and just got off of a video chat with my 80-year-old mother in New York, who just learned that she has FaceTime on her iPad. We chatted for about an hour, and it was almost like we were sitting together in person.</li><li>If you are working from home, create an online working group. Meet for a video lunch: Just turn on the camera and microphone and eat “together.”</li><li>Text messages are quick and easy ways to stay connected, even to say, “I’m thinking of you.” My research team in Lebanon is on pause due to the country’s lockdown, but we chat throughout the day using WhatsApp, and the contact really makes a difference.</li></ul><div><br><em>Kenneth E. Miller is a psychologist and writer and currently a researcher at War Child Holland, where he develops and evaluates mental health interventions for conflict-affected children and families. He is the author of </em>War Torn: Stories of Courage, Love, and Resilience<em> (Larson Publications, 2016) and has worked with refugees and other war-affected populations since 1991, as a researcher, clinician, consultant, and filmmaker.</em></div>', 5, '1585164261_distanc.png', '2020-03-25 19:24:21', '2020-03-25 19:24:21', 3),
(14, '5  Technologies for modern forensic Sciences', 'Technology is quickly taking over every aspect of our lives, including solving crimes. The rapid improvements in technology have meant that solving crimes almost takes on a futuristic factor, like something from a work of fiction.', '<div>There are many different technologies used in the forensic sciences that most people don’t know exist. Some of these technologies include:<br><br><br><strong>1. PHENOM DESKTOP SEM</strong><br><br></div><div>The Phenom SEM is the best tool for forensic scientists as it offers a very simple to use, fast and high-quality imaging tool with the added capability of determining elemental composition. This assists scientists in analysing evidence quickly and reliably to help solve criminal cases. Specifically, the Phenom GSR Desktop SEM allows crime labs to search for gunshot residue particles. It’s automated, and the software and hardware are fully integrated, so it’s very user-friendly.<br><br></div><div>The Phenom GSR Desktop SEM also uses a <a href=\"https://blog.phenom-world.com/gsr-gunshot-residue-analysis\">unique system</a> that combines automated GSR analysis and classification software with element identification and the easy-to-use Phenom XL desktop SEM. There are lots of software parameters, which can be adjusted to individual needs. For example, you can optimise it for sensitivity or speed.<br><br></div><div><br><strong>2. ALTERNATIVE LIGHT PHOTOGRAPHY</strong><br><br></div><div><a href=\"https://www.sciencedirect.com/science/article/abs/pii/S0031302516302288\">Alternative light photography</a> is one of the quickest ways to detect whether damage has been done to a body before it even surfaces on the skin. Used by forensic nurses, alternative light photography can sometimes mean the difference between life and death.<br><br></div><div>The camera uses blue light and orange filters to see whether bruising has occurred below the skin’s surface, and ultraviolet light to enhance bruises, bite marks and search for trace evidence. Infrared photography is used to enhance blood that’s difficult to see on dark and patterned clothing and tattoos due to decomposition, lividity and burning.<br><br></div><div><br><strong>3. DIGITAL SURVEILLANCE FOR GAMING EQUIPMENT</strong><br><br></div><div>Criminals sometimes hide illicit data on an Xbox in the hope that a gaming console won’t be seen as a likely evidence target. With an <a href=\"https://www.sciencedaily.com/releases/2009/04/090430101445.htm\">XFT Device</a>, once the Xbox file system is mounted, an analyst can browse the directory tree, list its contents, open and view files, and expand subdirectories and files. The XFT Device will give authorities access to hidden files on Xbox hard drives, and can also record access sessions to be used as evidence in court.<br><br></div><div><br><strong>4. FACIAL RECONSTRUCTION</strong><br><br></div><div>Facial reconstruction is a method used in the forensic field when a crime involves unidentified remains. The process recreates the face of an individual from their skeletal remains through an combination of artistry, anthropology, osteology and anatomy. There are three main types of facial reconstruction: two-dimensional (photographic prints or drawing), three-dimensional (sculpture or high-res 3D computer image) and superimposition.<br><br></div><div>Whilst not always the most reliable technology, facial reconstruction is used by many forensic labs to determine the appearance of victims who are too damaged, or whose bodies are decomposing, to make a visual identification. The user inputs data into the software and a possible physical appearance is deduced.<br><br></div><div><br><strong>5. DNA SEQUENCING</strong><br><br></div><div>DNA is used to identify both criminals and victims by using trace evidence, such as hair or skin. DNA sequencing determines the order of the four chemical blocks (called “bases”) that make up the DNA molecule. Although DNA evidence alone isn’t enough to secure a conviction today, DNA profiling has become the gold standard in forensic science since the first case more than 30 years ago.<br><br></div><div><a href=\"https://cen.acs.org/articles/95/i37/Thirty-years-DNA-forensics-DNA.html\">DNA sequencing</a> allows forensic scientists to sequence STR (short tandem repeat) markers, potentially resulting in an increased ability to differentiate between individuals in complex DNA mixtures. Additionally, alternate marker types such as SNPs (single nucleotide polymorphisms) can be more easily integrated into casework laboratories, resulting in new capabilities, such as ancestry or phenotype prediction in unsolved cases.<br><br></div>', 3, '1585164950_science.jpg', '2020-03-25 19:35:50', '2020-03-25 19:35:50', 3),
(15, 'Scientists Discover 139 New “Minor Planets” in Our Solar System', 'The search for Planet Nine just got a lot more interesting.\r\nWhile the coronavirus outbreak is dominating the global news cycle, a team of astronomers at the University of Pennsylvania have discovered 139 minor planets — too small to be a proper a planet, but not a comet or space rock either — orbiting the Sun beyond Neptune, as detailed in a paper published in the Astrophysical Journal last week.', '<div>The so-called “trans-Neptunian Objects” (TNOs), the most famous of which is Pluto, orbit celestial bodies in the Kuiper belt, a region in our Solar System that stretches beyond our system’s eight major planets. Extending outward by some 50 astronomical units — that’s 50 times the distance between the Earth and the Sun — the Kuiper belt is far larger than the asteroid belt.</div><div>The discoveries could uncover new ways to search for the mysterious Planet Nine, a hypothetical ninth planet in our Solar System that some suspect to be causing strange gravitational effects on a cluster of trans-Neptunian objects beyond Neptune’s orbit.</div><div>“There are lots of ideas about giant planets that used to be in the solar system and aren’t there anymore, or planets that are far away and massive but too faint for us to have noticed yet,” co-lead and UPenn professor Gary Bernstein said in <a href=\"https://penntoday.upenn.edu/news/new-minor-planets-beyond-neptune\">a statement</a>.</div><div>The team used data collected by the <a href=\"https://www.darkenergysurvey.org/the-des-project/overview/\">Dark Energy Survey</a> (DES), an international collaborative effort, launched in 2013, to map hundreds of millions of galaxies. In January, the project completed six years of data collection.</div><div><br></div><div>DES wasn’t explicitly set up to search for TNOs, but rather to study galaxies and supernovas — so its researchers had to improvise.</div><div>“Dedicated TNO surveys have a way of seeing the object move, and it’s easy to track them down,” lead author and graduate student Pedro Bernardinelli said in the statement. “One of the key things we did in this paper was figure out a way to recover those movements.”</div><div>The team started with a dataset of seven billion possible objects detected by DES software, which they first cut down to 22 million “transient” objects, meaning they only appear for a limited period of time.</div><div>They then filtered those down to 400 candidates that were observed over at least six nights of observation. By stacking multiple images, they were able to verify the existence of 316 TNOs, including 245 existing discoveries and 139 new objects.</div><div><br></div><div>They’re hoping their new way of finding TNOs could be used to find more of them using other astronomy surveys, such as the Vera C. Rubin Observatory, currently under construction in Chile, that will be able to look even further than DES.</div><div>“Many of the programs we’ve developed can be easily applied to any other large datasets, such as what the Rubin Observatory will produce,” said Bernardinelli.</div>', 3, '1585229491_sun.png', '2020-03-25 19:45:37', '2020-03-26 12:31:31', 3),
(16, 'How To Make Kale And Brussels Slaw With Quinoa', 'This salad is great for the slow, lingering meal that is Thanksgiving because it can sit and stay crunchy for some time unlike other tender greens. It is even still good the next day!', '<div><strong>INGREDIENTS<br></strong><br></div><ul><li>for the slaw:</li><li>3/4 cup hazelnuts, roughly chopped</li><li>3 tablespoons cane sugar</li><li>pinch of cayenne</li><li>2 small bunches or 1 large bunch lacinato or tuscan kale</li><li>1/2 pound brussels sprouts</li><li>3/4 cup cooked and cooled quinoa</li><li>2/3 cup pomegranate seeds</li><li>3 green onions, thinly sliced</li><li>2/3 cup shaved parmesan cheese, plus more for garnish</li></ul><div><br><strong>FOR DRESSING</strong><br><br></div><ul><li>2 tablespoons chopped shallots</li><li>1/4 cup apple cider vinegar</li><li>2 tablespoons fresh lemon juice</li><li>1 teaspoon maple syrup</li><li>1/2 cup extra virgin olive oil</li><li>1/2 teaspoon sea salt</li><li>1/2 teaspoon fresh ground pepper</li></ul><div><strong><br>DIRECTIONS<br></strong><br></div><div><strong>STEP 1<br></strong><br></div><div>Line a small baking sheet with Reynolds Wrap® Aluminum Foil. Set aside.</div><div><strong>STEP 2<br></strong><br></div><div>In a food processor, combine the shallots, vinegar, lemon juice, maple syrup, olive oil, salt and pepper and blend until smooth. Set aside.</div><div><strong>STEP 3<br></strong><br></div><div>In a non-stick pan over medium heat, combine the hazelnuts, sugar and cayenne. Stir with a silicone spatula until the sugar has melted and sticks to the nuts, about 5 minutes; turn down the heat to prevent burning if needed. Spread the sticky nuts out on the foil-lined sheet to cool. When the nuts are cool enough to handle, break them up by hand.</div><div><strong>STEP 4<br></strong><br></div><div>Stem the kale and chop well. Using a mandolin, shred the Brussels sprouts, discarding the tough ends. Combine both in a large salad bowl. Add the hazelnuts, quinoa, pomegranate seeds, green onions and cheese. Dress to your liking and serve immediately.</div>', 6, '1585168818_SALAD.jpeg', '2020-03-25 20:40:18', '2020-03-25 19:40:38', 12),
(17, 'How To Do Slow Cooked Eggs', 'It is always a bit intimidating to cook for a group of people whose tastes are so different, but eggs seemed a pleasing choice. This particular instance, I paired them with some thin, roasted asparagus, a bit of feta cheese, herbs, and a slice of fresh whole grain bread. It tasted light, and was nutritiously sound- that combination makes me a happy lady.', '<div><strong>Slow Cooked Eggs</strong> <em>// Serves 2</em><br><br></div><ul><li>8 Eggs (4 Whole Eggs, 4 Eggs Whites)</li><li>2 tbsp. Whole Milk</li><li>1 bunch Thin, Green Asparagus</li><li>1 tbsp. Olive Oil</li><li>Sprinkle Garlic Salt</li><li>2 tsp. Lemon Pepper</li><li>Zest of one lemon</li><li>1/3 Cup Scallion, Thinly Sliced</li><li>½ Cup Sheep’s Feta Cheese</li><li>Fresh Chopped Parsley and Basil</li></ul><div><br></div><div>2 Thick Slices Fresh Whole Grain Bread (no packaged sliced stuff- blah)</div><div>Preheat toaster oven to 400.<br><br></div><div>1. Crack all eggs and egg whites in a large bowl, add the milk, garlic salt, and 1 tsp. lemon pepper. Whisk until well incorporated.<br><br></div><div>2. In a nonstick pan, on low heat, add the eggs and scallions. While they warm up, clip the ends of the asparagus generously (about 2 inches off, only want the tender parts). Toss the asparagus’ with the olive oil, garlic salt, lemon zest and the remaining tsp. of lemon pepper. Put on a baking tray and roast in the oven for about 15 minutes, depending on oven size. Toaster oven quicker.<br><br></div><div>3. Start to stir the eggs, firmly bringing in the eggs cooking on the bottom of the pan. Continue to stir on low heat. This process should take around 15-20 minutes. You want them to look like curdles. Cook the eggs until they are softly cooked, a bit runny is good. Pull them to a different burner, they will continue to cook with residual heat. Toast the bread.<br><br></div><div>4. On each plate, put the toasted bread, divide the roasted asparagus on top and divide the eggs over that. Sprinkle the feta cheese, fresh chopped parsley and basil. Serve with a few slices of fresh fruit.<br><br></div><div>** Sheep’s milk feta cheese has a specific flavor that you don’t get in that grocery store square. Trader Joe’s has one in a yellow pack.</div>', 2, '1585169313_eggs.jpg', '2020-03-25 20:48:33', '2020-03-25 20:48:33', 12),
(18, '5 Ways In Which Technology Has Changed The Way We Travel', 'The world is on the move. People are travelling more than ever and according to a report by World Tourism Organization, it is estimated that by 2030 a global population of 8.5 billion people will take approximately 2 billion international trips. Travel has progressed by leaps and bounds and so have travellers. Thus, the industry ought to constantly transform and enhance itself in numerous ways from technology to sustainability.', '<div><strong>Here are some of the most significant technological changes that have affected the way we travel:<br><br>1. Technology made travelling more environmentally friendly and less time-consuming<br></strong>If you choose to, with the precious help of technology, travel can become a lot eco-friendlier. <strong>Gone are the days where there was a need to print the airline ticket, boarding pass or hotel reservation. </strong>Thanks to online reservations, mobile check-ins and e-tickets we can save large amounts of paper and not worry about carrying numerous documents around. <strong>This is a win-win situation</strong>. Furthermore, <strong>online reservations and bookings are time-savers</strong>, as there is no need to stay in line to get a ticket.<br><br><strong>2. Technology changed our packing routines and saved us a lot of space!<br></strong>Nowadays<strong>, technology is all about trying to squeeze the most functions and roles into one tiny gadget.</strong> We no longer need an iPod to listen to music, all we need to have is a <strong>Spotify or iTunes account and we are able to stream music on the go</strong>. The same thing goes for books, it is the end of worrying where to fit them inside our suitcases. <strong>Amazon Kindles or Kobo (e-readers) save a ton of space</strong> in our bags.<br><br><strong>3. Technology helped us surpass language barriers<br></strong>Not so long ago, there was the need to carry a phrasebook in the language of the place we were going to travel. Today, all that is needed is a smartphone and <strong>with the support of apps like Google Translate or iTranslate, the times of struggle when interacting with locals have come to an end</strong>. Google’s Translate app even lets you use your smartphone camera to translate signs or menus in real time. In addition, <strong>apps like Duolingo allow you to learn a new language or improve the one you are already familiar with</strong>, all this without spending money on classes.<br><br><strong>4. Electronic Payments made travelling safer and easier<br></strong>Apple Pay, Samsung Pay or Google Wallet — <strong>everything is so much easier with electronic payments</strong>. Among the advantages of going cashless it is worth to highlight two of them<strong>: the convenience</strong> — there is no longer the need to carry a lot of cash, a couple of credit cards or even stay in the queue for ATM withdrawals. <strong>And lower risk </strong>— especially true while travelling abroad, where the loss of cash can cause a great inconvenience<strong>. Once fully integrated one does not have to worry about credit card fraud or changing cards.<br><br>5. Technology allowed us to have more personalised and unique experiences<br>The buzzword for the travel industry is personalisation</strong>. Indeed, modern travellers, particularly Millennials, are on the lookout for customised and unique experiences and with the help of technological advancements they can find them. <strong>Chatbots, niche websites, blogs, apps and services have created a space where one can let imaginations run wild and end up finding a real-life version of the “dream trip”.</strong></div>', 9, '1585170378_t.jpg', '2020-03-25 21:00:11', '2020-03-25 20:06:18', 12),
(19, 'You don’t have to pay for movies: Crackle is a great free streaming service', 'New TV and movie streaming services are cropping up every day. Yet, free and legal streaming is still a rarity – so much so that it seems too good to be true. But Crackle is a reality. This ad-supported streaming service is available completely free of charge in the US. A subscription based ad-free version is also available in many Latin American countries', '<div>One of the great things about Crackle is that you can stream movies and shows on a huge variety of devices. You can access it on your PC through the service’s website and on your tablet or smartphone via its <a href=\"https://play.google.com/store/apps/details?id=com.gotv.crackle.handset\">Android</a> or <a href=\"https://itunes.apple.com/us/app/sony-crackle/id377951542\">iOS app</a>. It’s even available on a variety of smart TVs and game consoles, including PlayStation 3 and 4, Xbox 360 and Xbox One, Amazon Fire TV, and more.<br><br></div><div>The interface is minimalist and easy to use. On the front page of the website and mobile app you will find featured films and shows, but you can also sort by recently added, most popular, as well by genre or alphabetically. Among the movies and TV series you will also find trailers and clips.<br><br>If everything so far sounds good, you might be asking yourself if the content on the platform is great too. While by no means rivaling the vast libraries of the likes of Netflix and Hulu, Crackle does have some surprisingly good content. The streaming service has around 150 feature-length movies and 75 series you can choose from.<br><br>Of course, Crackle’s business model also means that you cannot download movies or shows for later offline viewing. While that might be disappointing to some, it’s understandable considering the service relies on ads for its revenue and currently has no premium, ad-free version in the US.<br><br>At the end of the day the commercials are worth sitting through – Crackle is a convenient streaming service, which might not replace Netflix and Hulu for you, but it can definitely fill some gaps and provide you with hours of entertainment.</div>', 4, '1585171164_movie.jpg', '2020-03-25 21:19:24', '2020-03-25 21:19:24', 12),
(20, 'Healthy Eating', 'Confused by all the conflicting nutrition advice out there? These simple tips can show you how to plan, enjoy, and stick to a healthy diet.', '<div><strong>What is a healthy diet?</strong><br><br></div><div>Eating a healthy diet is not about strict limitations, staying unrealistically thin, or depriving yourself of the foods you love. Rather, it’s about feeling great, having more energy, improving your health, and boosting your mood.<br><br></div><div>Healthy eating doesn’t have to be overly complicated. If you feel overwhelmed by all the conflicting nutrition and diet advice out there, you’re not alone. It seems that for every expert who tells you a certain food is good for you, you’ll find another saying exactly the opposite. The truth is that while some specific foods or nutrients have been shown to have a beneficial effect on mood, it’s your overall dietary pattern that is most important. The cornerstone of a healthy diet should be to replace processed food with real food whenever possible. Eating food that is as close as possible to the way nature made it can make a huge difference to the way you think, look, and feel.<br><br><strong>The fundamentals of healthy eating</strong><br><strong>Protein</strong> gives you the energy to get up and go—and keep going—while also supporting mood and cognitive function. Too much protein can be harmful to people with kidney disease, but the latest research suggests that many of us need more high-quality protein, especially as we age. <br><strong>Fiber</strong>. Eating foods high in dietary fiber (grains, fruit, vegetables, nuts, and beans) can help you stay regular and lower your risk for heart disease, stroke, and diabetes. It can also improve your skin and even help you to lose weight.<br><strong>Calcium</strong>. As well as leading to osteoporosis, not getting enough calcium in your diet can also contribute to anxiety, depression, and sleep difficulties.<br><strong>Carbohydrates</strong> are one of your body’s main sources of energy. But most should come from complex, unrefined carbs (vegetables, whole grains, fruit) rather than sugars and refined carbs. Cutting back on white bread, pastries, starches, and sugar can prevent rapid spikes in blood sugar, fluctuations in mood and energy, and a build-up of fat, especially around your waistline.&nbsp;<br><br></div>', 10, '1585172247_healthy.jpg', '2020-03-25 21:37:27', '2020-03-25 21:37:27', 12);

-- --------------------------------------------------------

--
-- Table structure for table `post_cat`
--

CREATE TABLE `post_cat` (
  `id_post_cat` int(255) NOT NULL,
  `id_post` int(255) NOT NULL,
  `id_category` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_cat`
--

INSERT INTO `post_cat` (`id_post_cat`, `id_post`, `id_category`) VALUES
(71, 12, 2),
(72, 12, 3),
(73, 11, 1),
(74, 11, 2),
(76, 13, 3),
(77, 13, 5),
(78, 14, 3),
(79, 14, 4),
(80, 14, 5),
(85, 2, 1),
(86, 2, 3),
(87, 3, 2),
(88, 1, 2),
(89, 1, 3),
(90, 1, 5),
(95, 16, 1),
(96, 17, 1),
(101, 18, 2),
(102, 18, 4),
(103, 19, 4),
(104, 20, 1),
(105, 20, 3),
(108, 15, 4),
(109, 15, 5),
(110, 5, 1),
(114, 4, 3),
(115, 4, 4),
(116, 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(100) NOT NULL,
  `role` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `role`) VALUES
(1, 'admin'),
(2, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `full_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `id_role` int(100) NOT NULL DEFAULT '2',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `registrated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `full_name`, `email`, `password`, `id_role`, `active`, `registrated_at`) VALUES
(1, 'John Doe', 'john@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 2, 0, '2020-02-28 21:23:26'),
(2, 'Mike Hook', 'mike@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 2, 0, '2020-02-28 21:22:29'),
(3, 'Anna Piters', 'anna@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 2, 0, '2020-03-07 18:32:27'),
(5, 'Hanna John', 'hanna@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 2, 0, '2020-03-07 18:38:57'),
(9, 'Nick Brown', 'nick@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 1, 1, '2020-03-17 17:27:37'),
(12, 'Bella Doltton', 'bella@gmail.com', 'd0aeeef9a9aeddbaa999b7b65101b3a1', 2, 0, '2020-03-25 12:54:28');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `action`
--
ALTER TABLE `action`
  ADD PRIMARY KEY (`id_action`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_post` (`id_post`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id_post`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `post_cat`
--
ALTER TABLE `post_cat`
  ADD PRIMARY KEY (`id_post_cat`),
  ADD KEY `id_post` (`id_post`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_role` (`id_role`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `action`
--
ALTER TABLE `action`
  MODIFY `id_action` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id_message` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id_post` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `post_cat`
--
ALTER TABLE `post_cat`
  MODIFY `id_post_cat` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `action`
--
ALTER TABLE `action`
  ADD CONSTRAINT `action_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`);

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `post_cat`
--
ALTER TABLE `post_cat`
  ADD CONSTRAINT `post_cat_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `post_cat_ibfk_2` FOREIGN KEY (`id_post`) REFERENCES `post` (`id_post`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
