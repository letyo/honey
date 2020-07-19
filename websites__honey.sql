-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Gép: localhost
-- Létrehozás ideje: 2017. Júl 19. 12:30
-- Kiszolgáló verziója: 5.7.18
-- PHP verzió: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `websites__honey`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ingredients`
--

CREATE TABLE `ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i1` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i2` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i3` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i4` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i5` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i6` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i7` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i8` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i9` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i10` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i11` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i12` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i13` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i14` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i15` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i16` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i17` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i18` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i19` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i20` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i21` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i22` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i23` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i24` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i25` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i26` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i27` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i28` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `i29` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `ingredients`
--

INSERT INTO `ingredients` (`id`, `name`, `i1`, `i2`, `i3`, `i4`, `i5`, `i6`, `i7`, `i8`, `i9`, `i10`, `i11`, `i12`, `i13`, `i14`, `i15`, `i16`, `i17`, `i18`, `i19`, `i20`, `i21`, `i22`, `i23`, `i24`, `i25`, `i26`, `i27`, `i28`, `i29`) VALUES
(1, 'Sweet Spicy Salmon with Honeyed Mango Salsa', '1 large - ripe mango, peeled and chopped', '1/4 cup - red bell pepper, finely chopped', '1/4 cup - red onion, finely chopped', '2 Tbsp. - fresh cilantro, chopped', '2 Tbsp. - fresh lime juice, divided', '1 Tbsp. - honey ', '1 small - jalapeno pepper, seeded and minced', '1/3 cup - honey ', '2 Tbsp. - Mexican hot sauce ', '4 (4 to 6-oz.) - salmon fillets ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(2, 'Honey Baked Chicken', '3lbs - skin-on, bone-in chicken drumsticks ', '1 cup - all-purpose flour ', '2 - large eggs ', '1 1/2 cups - panko breadcrumbs ', '1 1/2 cups - plain breadcrumbs', '1/4 cup - avocado oil ', 'salt and black pepper ', '1 cup - honey ', '3/4 cup - orange juice ', '1/4 cup - soy sauce ', '2 - garlic cloves, finely minced', '2 teaspoons - hot sauce ', '1 teaspoon - black pepper ', '1/2 teaspoon - kosher salt ', 'Parsley for garnish ', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(0, 'How to Make Jam With Honey', 'Fruit', 'Powdered or liquid pectin', 'Medium saucepan', 'Wooden spoon', 'Ladle', 'Canning jars or freezer containers', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, 'Honeyed Frozen Yogurt Pie', '1 1/2 cups - graham cracker crumbs ', '6 tablespoons - unsalted butter, melted', '1/4 cup - honey ', '1/2 cup - heavy cream ', '1/2 cup - full fat Greek yogurt ', '2 tablespoons - honey', '1/2 teaspoon - vanilla bean paste or extract ', 'Fresh fruit (optional)', 'Honey for drizzling ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `name` varchar(40) COLLATE utf8_hungarian_ci NOT NULL,
  `type` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`name`, `type`) VALUES
('Lavender Honey', 'honey'),
('Chestnut Honey', 'honey'),
('Wildflower Honey', 'honey'),
('Honey with Propolis', 'other'),
('Strawberry Jam with Honey', 'jam'),
('Acacia Honey', 'honey'),
('Peach Jam with Honey', 'jam'),
('Onion Jam with Honey', 'jam'),
('Pine Honey', 'honey');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `recipes`
--

CREATE TABLE `recipes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `directions` varchar(5000) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL,
  `image` varchar(30) CHARACTER SET utf8 COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `recipes`
--

INSERT INTO `recipes` (`id`, `name`, `directions`, `image`) VALUES
(1, 'Sweet Spicy Salmon with Honeyed Mango Salsa', 'To prepare the salsa, combine the mango, bell pepper, red onion, cilantro, 1 tablespoon of lime juice, 1 tablespoon honey and jalapeno in a medium bowl. Stir well and refrigerate until ready to use. Whisk together the honey, hot sauce and remaining lime juice in a small bowl. Rinse salmon and pat dry; brush liberally with honey mixture. Place skin side up on a well oiled grill over medium coals; cook for 2 to 3 minutes until lightly charred. Turn and cook for 8 to 10 minutes more, basting liberally with sauce during cooking. Remove from grill and transfer to a serving platter. Top with mango salsa.', 'Sweet_Spicy_Salmon'),
(2, 'Honey Baked Chicken', ' Heat your oven to 400 degrees F. and have a large baking pan (9x13) nearby.\r\n\r\nSet up a breading station with 3 shallow bowls, filling one with the flour, one with the eggs and the last with the panko, plain breadcrumbs and avocado oil. Season each with salt and pepper. Mixing together to combine. The texture of the breadcrumbs should feel and look like wet sand.\r\n\r\nRinse and pat dry the chicken, season generously on both sides with salt and pepper. Starting with the flour, dredge on both sides, move on to the egg to coat even and then cover with breadcrumbs. Transfer to the baking pan. Repeat with remaining pieces of chicken.\r\n\r\nBake the chicken for 25 minutes.\r\n\r\nWhile the chicken is baking, in a medium saucepan combine the honey, orange juice, soy sauce, minced garlic, hot sauce, pepper and salt. Bring to a boil and reduce down slightly.\r\n\r\nAfter 25 minutes, remove the chicken from the oven, using tongs turn oven and lower the temperature to 350 degrees. Pour over the glaze, leaving about 1/4 in the saucepan.\r\n\r\nReturn the chicken to the oven and continue to bake for another 10 minutes.\r\n\r\nPlace the saucepan with the remaining glaze back on the burner, bring to a boil and continue to reduce until it is a nice thick syrup.\r\n\r\nOnce the chicken has finished cooking, transfer to a serving platter and pour the cooked down glaze over the top. Sprinkle chopped parsley over the top and serve.', 'Honey_Baked_Chicken'),
(0, 'How to Make Jam With Honey', 'The key to making jam with honey is finding the right amount of honey to use. If you substitute too much honey for the sugar, it may overpower the fruit\'s flavor. Use any jam recipe you want when using honey instead of sugar. Just follow the basic guidelines for how much honey to use. It may take some experimentation to figure out exactly how much to use. Once you determine the amount that gives you the sweetness and texture you are looking for, you can make honey-sweetened jam perfectly every time.\r\nStep 1\r\n\r\nPlace all of the ingredients for the recipe -- except the liquid pectin if you are using it -- into the saucepan. Powdered pectin is mixed in with all of the ingredients before boiling the mixture. Most recipes call for a couple of pounds of chopped fruit and sugar. Substitute 7/8 cup of honey for every cup of sugar called for in the recipe. Some resources suggest using half the amount of honey as sugar. Experiment with the amount of sugar that tastes best to you.\r\nStep 2\r\n\r\nStir the ingredients in the saucepan with a wooden spoon.\r\n\r\nStep 3\r\n\r\nSet the saucepan on a stove-top burner set to medium to high heat.\r\nStep 4\r\n\r\nBring the ingredients to a rolling boil while stirring them continuously. Boil the mixture for about five minutes or until the mixture thickens to your liking. Using honey increases the moisture content so you may need to cook the mixture longer to thicken it properly.\r\nStep 5\r\n\r\nRemove the saucepan from the burner and immediately pour in the liquid pectin if you are using it.\r\nStep 6\r\n\r\nStir the pectin into the mixture to combine it completely.\r\nStep 7\r\n\r\nLadle the hot jam into sterilized jars for canning or allow it to cool and pour it into freezer-safe containers for freezing.', 'Jam_With_Honey'),
(3, 'Honeyed Frozen Yogurt Pie', 'Make the Crust: Preheat oven to 350 degrees F. In medium bowl, stir together graham cracker crumbs, butter and honey until well combined. Firmly press the mixture into the bottom of a 9-inch pie pan. Transfer to oven and bake 14 to 16 minutes or until dark golden brown. Transfer to cooling rack to cool completely before filling.\r\n\r\nMake the Filling: Place cream in mixing bowl and mix on medium-high speed until soft peaks form. Add yogurt, honey and vanilla bean paste and beat until well combined. Evenly spread mixture in prepared pie crust. Cover and transfer to freezer for at least 4 hours or up to 3 days.\r\n\r\nTo serve, let pie stand at room temperature for 20 minutes to soften slightly. While pie is softening, garnish with fruit, if desired. Cut pie and serve drizzled with honey.', 'Honeyed_Frozen_Yogurt_Pie');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ingredients`
--
ALTER TABLE `ingredients`
  ADD PRIMARY KEY (`name`);

--
-- A tábla indexei `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
