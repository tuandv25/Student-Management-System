-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time:
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE
= "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT
= 0;
START TRANSACTION;
SET time_zone
= "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `collagedata`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin`
(
  `collagename` VARCHAR(50) DEFAULT NULL,
  `address` VARCHAR(100) DEFAULT NULL,
  `emailid` VARCHAR(50) DEFAULT NULL,
  `contactnumber` VARCHAR(40) DEFAULT NULL,
  `website` VARCHAR(30) DEFAULT NULL,
  `lastlogin` VARCHAR(40) DEFAULT NULL,
  `password` VARCHAR(30) DEFAULT NULL,
  `facebook` VARCHAR(100) DEFAULT NULL,
  `instagram` VARCHAR(100) DEFAULT NULL,
  `twitter` VARCHAR(100) DEFAULT NULL,
  `linkedin` VARCHAR(100) DEFAULT NULL,
  `logo` longblob DEFAULT NULL,
  `activestatus` tinyint(4) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `admin` VALUES
  ('Hanoi University of Science and Technology', '1 Dai Co Viet Street, Bach Khoa Block, Hai Ba Trung District, Ha Noi', 'ccpr@hust.edu.vn', '+84 (0)2436231732', 'http://www.hust.edu.vn', '04-Aug-2022 12:13:36 PM', 'admin', 'https://www.facebook.com/dhbkhanoi', 'https://www.instagram.com/hust_dhbkhanoi', 'https://twitter.com/DHBKHN_HUST', 'https://www.linkedin.com/school/dhbkhn', 0xffd8ffe000104a46494600010200000100010000ffdb004300080606070605080707070909080a0c140d0c0b0b0c1912130f141d1a1f1e1d1a1c1c20242e2720222c231c1c2837292c30313434341f27393d38323c2e333432ffdb0043010909090c0b0c180d0d1832211c213232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232323232ffc0001108010e00fa03012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f7fa28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801bc6296a262075207d6b2b5fd41f4ed1a7ba830d22212bdc66a652514dbe85420e72515bb355686f4af2cb73ac0b26d5e0d63cd910079610c49519ee3a7e18a477d46facdb56bcd5fecdbcb0863de54395ec003f85717d73fbafbf4d8eff00a86bf1ab6db3dfb58f57e29add3a5733e13d565bcd185c5fc80346594bb71b80ee6b5ad358b0be9da2b6ba8a4907508e09aeb8558ca2a5dce3a94270938b57b6e6ad14515a19051451400514514005145140051451400514514005145140051451400514514005145140051451400514514011f6e9513b6c52d595e21d7a2d12c44a577cce76c7183f78ff0085734354f18ca8658eda1d98dc22dbf363e99ae7a9888c1f2d9b7e47550c24aac79ae92f376b905c0b9f16ea97bbae9a1d3ed73f7791c77c7ad53d2e48acf51b7b286ecde69d7a363230231938e54f43577c1534664d474cbb1b1ee39d8dc13c608ad6d3bc2da668177f6d9ae8b6cff57e69002ff89ae2519545192defabbedaedf71df5650a6e507b24b9525be9bdfd4c5d47ec5a24f71a5691692cf733a01292c5b60ea00fcf3f8d67e9cf6f6c63d3f5db39040097859810509c647d381d2b52fe2d4edbc4971aae936e9791dc2800ae0ed3803079f6ad3f18849bc2c935ca2a5ca94207a31ea3f9fe5438bf7a4b4e5be96d2dff0004b8cd2e4a6f5e6b5ddf54ff004b1cfe175b6919dfec5a1d99da028e0f381c0ea4d5bd6fc3f63a76949ab6953ba326d747f309c827a8f7ad7f0ee9f06a1e0a164d81e7212f8eb9cf07f4158b3787ae6d2dd23d5f5611e9909f9547523d00edfad524f9399abdd6fd9fe8911cebdab8a765176b6f75fab659d43c557b73a769d6f6584bbba8d5d9bd33e955ac3c47aa69f2c32dd4e97762f27945d3276b77e4f3fe353ea10691adc30be957696f35a47b578e882b9b0e3ec1f60b2496e57cef3a69026031030028ec302b39549c65cdcde967fa7e668a853953b72db5d535aabf99ec30bacb1ab8390c320fa8a9f35cc786fc496ba92a58f96f05cc280794fe8063835d38af4e9d48ce374cf1aad274e6e2d598fa28a2b4330a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2800a28a2801b4527b562f8875b5d134e33eddf231da8bea6a273508b93d9154e12a92508ad5981e3b89e2bad2f50642f04121120f4c9523f91acb8b557bff18d9cfa6cb3ba4985923604285efc7a62a5babaf139b5379776d0cb6cc37340caa7e5f71d6a2b5d76691c8f0f68f144426e9595475f4ff3cd7995269cb9b55769dadae9d8f6e8d2946972d94ac9abdd595fb9a7e33d3dad5e0d72c9764f0b0f308efcf04d64788efe2d46fb4f9ee8caba6cb0ac8020f5e4fe35af36bffdb7e0cd4da588473c7132baf6dd8e31593a778b60d3f4486c9ad8cf2c60fde0368e78f7a75254dc9d9da3249fcd3ec4d185450578de516d6fd1aefe5d09ac17fe11ff00135a4169348f677918708fd81cf6f5e299aacf378a75f92ca197cab0b6c9673f7463ab1f7ea07d2a2d16ed354d5e5d4afaea313a2110c39c738e31daadf84ed7ed965acc0ac16e24c2e7fefafeb9a887be9463f0b6ddbd16c6b38fb36e73f8a292bf9b7bf9d9152ef4d6d0ac63d5f46d4dee204701be6057ae3b70464feb563c437697ba9e91737c1bfb3dd039c74ebcd50962d5a0d28e893dac56d019773ccce141e47393d7a03c735bd73ae787934586c2765b930a00a8232791e848c5545c5c5af8569a3daff3336e4a5195b99ddabadecd68eeb4b981acc7a6df5cdb49a4828b33981d402067d71f4aded5e66f0c4165a6e8e8ab3ce399580ebea49f5359fe1fd39b5bd5a2b94b516d616c73126dc063fd4fa9adcf19c9a2b410c17f2b473f2d118c65947afd29c22f9253564decf6f5b7a855a8bdac293bb4af75bfa5fbd8c5bb474f17e97297437b20fde88fa13cf3c7b67f2af4704127d6bcd34dbbd0fc3fb3515b996fe790108a1305077eb5db68baf59eb9017b62432fdf8dbaad6d859c754dabbd6c7363e13b45a8be58ab5ed6ebdbb1b745145779e605145140051451400514514005145140051451400514514005145140051451400cdb5cb78cf4c9750d3a192df1e75bc9bc213f7bfce2ba8cd703e339e79b5bb4d3bed0d6d6cebb9a40db46492393f80fceb9f10d2a6d357b9d1848c9d68b8bb5b529dbc7aceada90bab8b57b6822b6689c16f95ce0f6fa9fd29de19d33fb4bc3d7b6b6f73f66b9f3f2cea32700f1f875aa7733df5b083428b5412b4b29dd286394538c2e7afa9fca96d748b88757b8b4d1f51916ee11fbc0e3686f5c763d7bd79c9fbeb46f74f55bb5d0f66517ecdae651d9ad1dac9eec76a9a4c9a5a5ae890cde64f792079df181d7038f41d6b6278b44874163a6bc32bd9bac8fce59b079cfad645e586aba25f5b6b37d27da8abfef7073b47a67b5436d15aea3accafa4c0f1daac0de6e738e9ef4e2f964fddb37a59ee9791128de316e774b56d6cddf54fe5b1d75f784b4cd4a3f3628fc8988cac91f1f98ae5747d3b5bd27c472d95b3209248f2f2b72bb33c3e3d7af15dee88e6e344b199bef3c08c7f15154bfe67c7c7fcf92ff00e846bae7421271947477e87153c54e2a706f9959efaec491685676b1b5cde16bb9c02cd2cc73d3d07415c4de69fa75c6852de2488ba8aaf9d22038f949e98aef3c412bc7a06a122fde581f6fd769ae7f51f08da5c4497b2debdac6215f3b0401803af35388a57f76314f4fcfa860711caf9a526aeff2e96f331b4cbdd5fc3d696d7c3f7fa6caa094fee67b7b7d6b42f5f4ad6b538758fed28e38a250b2c322e4f19e31f8d6c5adce8da968571a6d848248a18766d3d400383ffd7af39d3d6de17867bfb6335abe570188f980f51f87e75cb51fb2518a7cd17f835fa1e8d18aaf29d469c66b4d12bb4fc9f53534e5297b7faa58e9fe7dbc4c0451b0e002793ef8c7fe3d5bde0eb7b9975abad4fecc6dada54dab19e99241e3f23f9d6659b6b97312c9657105843213e4dbfca37fd33c9fa9aea7c2baccfa82cf6778a16f2d8e1b031b87aff9f5aba118f3c6f75d76d1b31c5ce6a94ac93d93d5b6979f4dceae8a28af58f0c28a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a0028a28a008faf18ac3f1169363a8d8192ffe558016120382a2b74fd6b235fb09751d12eada16c4922617eb59d5578356bf91ad0938d58b4edaefd8e02c6cf45d59bec562f35bde2b6f8e794e43e3b71d3d692f637d0ad26ba5d4c5c6a531f259a27dc635ea4fae78c7e355aea6bfb3d2d207d385b3c20c6d718f988249c568cba67878e932246ecf7b1c1e733a9e4f1fe35e64573269249dbd3f0efe67b8f469c9b716f6d1fdefa27d8b1a6786b53d3f53b39a16335accbbae1891b707a823bd6cebbad69ba1446ce08835c480811440719f5ae52c6f35e6b5b7b78efe3822978844cf8623db83fad49e1f8ee16e751bf4845e5edb9d881f9cb773442af2c79229abf7d6da7426a50726e72927cbd1697d74bf41f63e27d7346b486396c58db46a157cc88a600f7c54e3c45711df3eb3f626f2dadd62cef5c6edc4fae7bf4eb5a29e29b7bcf0f5d49a85b059a1631345d99bb63d3bfe55cddaf87359bdb1cc51a476aee6448a4908e4fa71e949caa2b2a7272d2fe828c2949ca53828bbd9eba3f4350ea9e23f115abc56d68ab68e30c703047b138cfe145fea7aa5d59dc6837f6de5dd140d115c7ce179c71c72054d06b37d6d1c9a16a708b59a48cc76f320c28246067fc6abdb695a968f2aea7aa6d68ace33e5a87c973d867d3343726b46ddfe2f2efa0d28c5eb18ab6b1b6edf469f5f32adaeb71db696da769da63a6a32c62395c2f27dfd7f3ab1ac68634af095a49301e7f9c19fd8b751f9003f0ab3a4ebf7e755b46bdb280417a7f74d1a61803d0e6a5f1f5fab0b5d3e2f99c1f31d4761dbfad6968f239b77b2b2d2c65cd3f6b1a7156bbbb77bdfe7e451d52c6f6df52b1d4e0b17b881204088b9c2b01dc0e7bd6ef84f4fbc4bbbed53508bc99ae8fcb1f703b9fd0572d3eb93eeb4bbb2d4c96511a7d900e411d7f03c7e75ea1033bc11bb70cca091e87157868c673724f6d7cb5231952a53a4a124b5d2fadec9dedff04bb451457a279014514500145145001451450014514500145645cebb696f74d6c825b89d465d2142db7ea7a0a8e1f11e9b73770da248e2e6462be53c65594804f391ed401b745625cf8ab48b398c37370f1483b342e3fa53d3c4da6496ad72924cd02f59040f8fe5401b14560c3e2fd16e2558e1ba791dba2ac2e49fd2afde6a36fa7dafda2e0bac5c722366c7d401c5005fa2b022f1768b70e2386e5e473d1521724fe00569dd5f43696fe7cbe66cff00663663f9019a00b94562c5e28d2e6b76b88a599e15eaeb6ee47f2a893c63a1cae123bb6763d1561724fe9401a179636f7f6cf6f731abc6e3041ef581ff00084e9b6f6d3476eacaf2c6630ecc4edeff00cc0abb2f8ab48b6204f712c44f4124122e7f31562f75cd3f4f8e392ea5748e400abf94c579f702b39d284dddad4d69d7a94d5a2da47123c2baedd3dad95cc71adbdbb6167046427a0abf73a1eb5a3ea335c68db648ae092e871f293edf5ade8fc57a4cfbbc89e5936f2765bc8d8fc855cd3b57d3f5107ec9769211d57a1fc8f3582c2412d1bbf7ea74bc7d56f54addada3bea79fea3e1dbdd33455bbbbfde4ad73e74cabce01c75fc73f9d5ef10ebf69a858582e9572eb74255c47192b8e3a1c7be2bbe91164428e032918208eb58575a7787b42cea525b430b2f2a42f39ff00647ad672a0e17e4764d6b7f2ea5d3c52aad73c5b926ed6d9dfa58c7f1d228d02ca5938b90ea07ae769c8ff003e95d04d63fda9e1f16d392ad24014b7a1c75ae6ace0baf196b097f711b45a6db366246fe33fe7ad77a8a02803a55d18a9394eda3d3d7cc9c44dd384217f7a2db7e57e879f4367e2ad2e34b38ada19d23f96290a82547b1ed5a9a0785a782ea4d4756712ddc808da7e60a0f5aeae4748632d23aa228c9627005650f11e9d3ef4b5335d6c38630c4cc07e38c55430d18b4db6edb5c5531d525171514afbb4b56450785f47b6bafb545649e6e720924807d813815d00185e056569fae69fa84ad15bce3ce5e0c4e0ab0fc0d6bd74461187c2ac71cea4e6ef26dfa8b45519b54b68353b7d3e47c4f3a9641f4abd54485158b77e26d2b4fb8305d4ef1483b342fcfd0e39a9ac75ab1d4a2925b49249238c64b794c01fa6473f85006a515823c59a399bece2794cd9c797f679377e58cd6cc6e248d5c670c3232307f2a00968a28a002ab5e33c7673bc632eb1b15fae2acd452c89144f248404504b13e9401e75e0bf115bd94d716fa836c92e24f33ce6fef7706babbbd1e1bbd674ed5adcc7be173e6303f7d4a91f9e48ac2d6fc129a8b7f6869322af9c37f94df75b3ce41ed58fe1cd4eff0042d7e3d3aeb788a47113c4c7ee927008fc6981a1f12147daac9b033b1b9fc6ba8d0d17fe10eb21b460d9a9231d7e5ae63e24ff00c7c58ffb8dfcebaad0ff00e44fb1ff00af35ff00d06901c2fc3c5075ec9009101c7e95e9d2469344d1c8a19181041ee2bccbe1dffc878ffd703fd2bd44900124e00a181e4f69bbc33e36547ff56b2ec24ff71b8cfe19fd2bd0f5dbd6b4d16678799e51e5c23d5db81fa9ae4bc7f651dc436babdb90d1b662765efe87f423f1abda25fb788a7d2d1ce459279b3fbc8385ff001fc2981d1d9e9f169ba3a59c606c8e2da4e3ef1c7535e6fe0903fe12a846060237f4af559bfd449fee9fe55e49e14b6fb5f88921f3648b28df34670474a00efb54b7b5f1045a869bb10c9022ed933d1ce703f41f9d33c53098fc133c6e0168e38c1fa86514cf0ce9afa4ea3ab5b3cad2e5924577392c0eeebf91a97c5b2c73784af9a37570368241cf3bd690193f0e141b1be2403fbc51fa573d74c6d3c7127f66707ed18013a139e47d339a76871ea83c39a95c69b772466361e644aa0ee5c72738c838f4ad0f00c96125f4ab3c40dffde8e5624923bf5ef4c0eee5912085e590e1114927d8579c99975ebdb9d635390a69b6cd88a21fc67b01fccfd6bb7f10079343be11e77794718ae1a4b77b8f04e9d2dbc665104c5e745efc9e4fe181f8d706264dcb97a257f53d0c2422a0e77b36d2bf656fd4d383c662dbcbdda4cb158f45901e83e98feb5da59ddc37d6d1dc5bb878a4195615ce699a85a6bfe1f981b60b02a98d91c71d3b547f0fe573a45c464feee39885fc6aa8cdc6718b774d69f20af4a12a729c559c5a4f5bdeff00a943e206af29ba8f4b85caa050d281dc9e82babf0ed847a7685690a280c630ee7d588c9fe75c0f8e6368fc5323b03b5d108fc0015e9b60c1ec2d9d4e4344a47e42bb4f3ce0bc776bfd9fab59ea36a7ca964072cbc7ccb8e7f5fd2bb2d0751fed4d1adeedb8765c38f715cc7c4a61e569c9fc459cff00e835269172da57c3ff003f38925cac58eb963b463f9fe1401cef88f53b93e255d4e305511ffd1cf66087ad7a858ddc77d650dd447292a071f8d703e233a7dc7872da1b549bceb40305a22323bf3fad697c3dd4fceb0974e76cb407727fba7ffaf4015fe2481b34e3819cb8cfe55a1a4ea09a7785f4e8a1557bc9d4ac31671b9b2793ec2a87c4aff57a77fbcffd2b06f749bcb5d0f4cd6e09e460170dcffaa3b8e31ed401e85a468a96064bab8db35fce774d363bfa0f415b3585e19d723d6f4d0e481711e1655f7f5fc6b7690051451400552d4d4be9774aa0b13130000ce78abb50cc6410b9880326d3b41e99ed401c9f87f58bad374c86cf58b2ba8d91079722c4ce197b03b7383501b09fc41e2bb7d43ecb25bd8db60ef9576b4841c8e0f3d71fad5e173e31239b2b0ffbecff00852fda7c61ff003e761ff7d9ff000a606378d21bed66f611696170d1c2a54b95c64e7b56d6997d716be178ade4d3ae7ed10c022d9b7ef103190693ed3e30ff009f3b0ffbecff00851f69f187fcf9d87fdf67fc280399f0bda6a5a1ea62e27d32e5e331943b00c8ae8b5dd6753bab17b5d374bba59251b4cae000a0fa73d6a4fb4f8c3fe7cec3fefb3fe147da7c61ff003e761ff7d9ff000a00d0b9d256efc3274e61f3180019ece0647eb543c11a53e9fa33493465269df710c30401d293ed3e30ff009f3b0ffbecff00851f69f187fcf9d87fdf67fc2901bba95d1b5b376582599d948548c64938af37f0f58ea9a46b51de4da5dc3a00410a0679aeafed3e30ff009f3b0ffbecff00852fda7c63ff003e761ff7d9ff000a6026abaeea4d6cd1e9ba4dd899c63cd75002fd39eb54f50b7ba83c131e951da4d35dcca19caaf00ee0c493577ed3e31ff9f3b0ff00becff851f68f187fcf9d87fdf67fc29019de0a8ef34bf3ed6f2c27413ba957dbc0edcd65eafe1bd4749d7c5ce9303bc5bbcc8ca0fb9fecd749f69f187fcf9d87fdf67fc28fb4f8c3fe7cec3fefb3fe14c0d3b395f50d395ee2dde179170f13f507a1fc2b8f36dab784af273656c6e74f91b784519dbf80e73ffd6adcf3fc5fd7ec761ff7f0ff0085279fe2dff9f2b0ff00bf87fc2b0ab47da59a766ba9bd0aee95d35cd17ba6614faceb7e2089b4fb0d39eda393e591dd4af07af26baed0b498f44d2e3b44f9987ccedfde63d6b384be2c07e5b1d3c7fc0cff00851e678b8e4fd8ec39ff00a687fc2953a1cb2e693bb2ab62bda47d9c23cb1dedddf9b27f14f8686bd6c9244c12ea207613d187a1aafa26a973a6e9c961ab59dd472db8d88e911903a8e9cae7b71527da3c61ff003e761ff7d9ff000a4fb4f8c3fe7cec3fefb3fe15b9cc645fe95a8f8b35b49a5b792d74e886d532f0c477c0eb935a376f22eb3a7db2e9b71fd9b624b6e54c866da4038f419a9bed3e30ff009f3b0ffbecff00851f69f187fcf9d87fdf67fc2981bb7ad17d86432c2f246ebb4a2ae49078c62bcdb42b2d6346d623bb5d3ae1a31f2bae392a6badfb4f8c3fe7cec3fefb3fe149f69f187fcf9d87fdf67fc28032fc6897bacbda4769a7dc32c40b3315c7271c7e95b1e1ff009fc3234fbfb2990c519591197ef024f4a8fed3e30ff9f3b0ff00becff851f69f187fcf9d87fdf67fc2901cae9d67ac687ad9bab1b1b87b70c57695c6f4f4ff003e95e996b3fda6da398c6f19619d8e3047d6b9dfb4f8c3fe7cec3fefb3fe15bf62d74d65135ea225c95fde2a1c807da802dd1451400535812a40383eb4ea43d0d0072fa5deea17f75a844f70145b4db14aa8e4633cf15ab642e95241772238de761518cafbfbd60e896a2e757d6819e64c5c01fbb90aff000fb53f59dda6f873eccb705c24b124ce4f223690673f51915cd4e4d479a5d2fd7cceaab04e5cb1b2bdba7745bbad55d75cb0b78258da0959d64518272149fe95b62e612acde62ed538273d2b9dd4a38535ed0d91541f9d411e9b0d476a13ed1e2107681e6e483fee0a15469bbf7fd2e39518b516b4d3f5b1d3f989b3cc0c36633bb3c62923b88a6526275703ba9cd72367711c763e1d8256c412c60393d0b051b41fd6afdfdb699656da95cc8ccbe7c6a26547e48e8303b139c568aadd5ffadae66e824ecdbbbdb4f3b1bc9710cc58472ab63aed39c556b3d52d6f8ceb6f2ab1898ae73deb02d7cc1e25b005446ad6ae02039f9415c6ef7a9343b74927d691d5594dcc8b823b7a547b4726ade7f916f0ea29b6fa27f8d8deb16963d3e2fb5ce924d8f9e4418526a786e229c663915c772a735c55848dff0008de830b93e44b22ac9e847607d8d6b5fc7f67f12d93db0c35c46e92a8e8ca31827e9934d55bc53b76fc497452934debafa686f35dc09c34ca096da327bfa54d9e38ae056ca25f0f6b8e2240d1dc3ec38fbb80a463f1aecac189b2b762724c6a49fc2aa9d47276688a94d53574efad88df54b54d496c3cd5f3caee2b9e82ad4d730c2409645527a02719ac27894f8de225467ecac7a77dc2934955bf7d605c28793ed0f1b061d107dd1f4c62a54ddede6cb9528d93e964dfcd9d1fde39ed581afdfdd58cd62b6d20513ce2260ca0e01c9c8fcaa6f0b492be8aa2566611cb2c685ba9457217f402aa78abfe3eb49ffafc5fe46aa726e175a134e0954e57adae6f79f1c4312ccbf2ae4962071eb4f13c7e4f9bbd76633bb3c62b9a96ce17f19b86890e6ccb1c8ea77019ac99e256f035eab0056199c460ff00080dc62b3f6cd5f4daff00816a84656d77b7e2772b71148ed1a48acebd403c8a57b8822654791559ba027935ce35bc76be27b016c8a85ede40db463763a6699a4225fe8ba835d00d2bcf2894b75055885fc805ab555bd2da89e1d24a57d34f5d5b5fa1d399e28d951a4504f404f268f3e33214dc37a8c95cf22b8f682e2e3c3763a9382f7566de6ab1eaca1883f9af357a4b8b59b44d4353b86616f3c3b032f04a631c7b9271f850aa7e57f9132a2975beb6f99d0c5710cc488e4572bd70738aa367a9db6a0f731dbc8ac616d9b81e09c7f4ac383cc4f12d86e5588340e360393b7b64fad3f46b7579b5c56552bf6991718ed8a4aa36d25fd697357878c536df44d7df63a1d3bcd4b18fed33a4b28cee914601e4d4b1dcc52ffab915c670769cd71766e53c39a344dc5bc970565f4c6e6c03ed9ad5bf8cc1e27d35e00034eb247328fe2400104fd09fd69aa9a276edf899ba36934df7fc0dd6ba850fcd2a825b6f27bfa55a1d2b816b284681afc9e4a6e8e57d871f7700118fc6bb2b224d8c2c4e498c64fe1442a393b342a949415d3beb6fc117a8a28ad8c429a464119233e94ea2803220d06cada59648bcc4798ee9087fbc7d6a55d1ec8433c2d16f49ff00d60739dd57e93150a9c56c8a7524f76cca4f0ee9c8f0486367780e632ce4eda59b40d3e7b86b878cef7186c3101bea2b568a3d9c6d6b0fdacef7bb323fb134f360ba7f903ecca3e55c9e3dc1a48f42b04b49ad3cadd14df7f73125bd39ad9a3b53e48f60f693fe67bdf7ea63c3e1dd3e19619511fcc886158b9271e86a68f48b48659a68c32b4c497c37193d4d68d18f6149538ad903ab37bb66645a2d945a78b011036c38084f4fa54b0584504a65cb3c9b7687639207a0ad0a4a6a115d04ea49deef731c68564219edb6b79570dbe45ddf78f73fcab4a0856de148933b546067d2a51f5a5a1452d9039c9eeee509f4cb6b8bc8aee453e7440aab038e0f63449a55bbced360a3b8dae50e370f7ad0a28e55d814e4ba90430c76f0ac51205451800761552ff4ab6d41e27b8058c4db939c6d3eb5a340a6e29ab3146528be64f528ff00655b8bf37bf379e53cbdd9fe1f4aaa741b1365259143e448e59973d4f5ad7c518a9e48be8529cd6cca4da55bb5dc574db8cb12ed462dd0534e916ad2c9200ca65ff5814e03fd4569514f963d85cf2ee40208843e508c08f6eddbdb1e9504da6dacf64d66f129b765da53b62ae52d3693dc4a4d6a998d1f8774f865865546f321e118b9271e95347a45a4534f322b2bcfcc986e09f5ad1a31ec2a5538ad914eacdeed9990e8d650e9c2c4459b7072109ce39cf1f8d4d069f1412f9bcbc817607639217d055fa4a6a315b2139c9deef732868767f67b9836b795724995777de27ad5f8205b785624ced518193daa7a28514b6427393d1b168a28aa105145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451400514514005145140051451401ffd9, 0);

--
-- Dumping data for table `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `Room`
--
create table `Room`
(
    `roomID` Varchar(10),
    `building` Varchar(20),
    `roomNumber` int,
    `capacity` int,
    PRIMARY KEY (`roomID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `Room` VALUES
  ('001', 'D9', '101', '150'),
  ('002', 'D9', '102', '50'),
  ('003', 'D9', '103', '50'),
  ('004', 'D9', '104', '50'),
  ('005', 'D9', '105', '50'),
  ('006', 'D9', '106', '50'),
  ('007', 'D9', '107', '50'),
  ('008', 'D9', '201', '150'),
  ('009', 'D9', '202', '50'),
  ('010', 'D9', '203', '50'),
  ('011', 'D9', '204', '50'),
  ('012', 'D9', '205', '50'),
  ('013', 'D9', '206', '50'),
  ('014', 'D9', '207', '50'),
  ('015', 'D9', '301', '150'),
  ('016', 'D9', '302', '50'),
  ('017', 'D9', '303', '50'),
  ('018', 'D9', '304', '50'),
  ('019', 'D9', '305', '50'),
  ('020', 'D9', '306', '50'),
  ('021', 'D9', '307', '50'),
  ('022', 'D9', '401', '150'),
  ('023', 'D9', '402', '50'),
  ('024', 'D9', '403', '50'),
  ('025', 'D9', '404', '50'),
  ('026', 'D9', '405', '50'),
  ('027', 'D9', '406', '50'),
  ('028', 'D9', '407', '50'),
  ('029', 'D9', '501', '180'),
  ('030', 'D9', '502', '50'),
  ('031', 'D9', '503', '50'),
  ('032', 'D9', '504', '50'),
  ('033', 'D9', '505', '50'),
  ('034', 'D9', '506', '50'),
  ('035', 'D9', '507', '50'),



  ('036', 'B1', '201', '40'),
  ('037', 'B1', '202', '40'),
  ('038', 'B1', '203', '40'),
  ('039', 'B1', '204', '40'),
  ('040', 'B1', '301', '40'),
  ('041', 'B1', '302', '40'),
  ('042', 'B1', '303', '40'),
  ('043', 'B1', '304', '40'),
  ('044', 'B1', '401', '40'),
  ('045', 'B1', '402', '40'),
  ('046', 'B1', '403', '40'),
  ('047', 'B1', '404', '40'),
  ('048', 'B1', '501', '30'),
  ('049', 'B1', '502', '30'),
  ('050', 'B1', '503', '30'),
  ('051', 'B1', '504', '30'),


  ('052', 'D5', '101', '60'),
  ('053', 'D5', '102', '60'),
  ('054', 'D5', '103', '60'),
  ('055', 'D5', '104', '60'),
  ('056', 'D5', '105', '60'),
  ('057', 'D5', '106', '60'),
  ('058', 'D5', '201', '60'),
  ('059', 'D5', '202', '60'),
  ('060', 'D5', '203', '60'),
  ('061', 'D5', '204', '60'),
  ('062', 'D5', '205', '60'),
  ('063', 'D5', '206', '60'),
  ('064', 'D5', '301', '60'),
  ('065', 'D5', '302', '60'),
  ('066', 'D5', '303', '60'),
  ('067', 'D5', '304', '60'),
  ('068', 'D5', '305', '60'),
  ('069', 'D5', '306', '60'),
  ('070', 'D5', '401', '60'),
  ('071', 'D5', '402', '60'),
  ('072', 'D5', '403', '60'),
  ('073', 'D5', '404', '60'),
  ('074', 'D5', '405', '60'),
  ('075', 'D5', '406', '60'),
  ('076', 'D5', '501', '60'),
  ('077', 'D5', '502', '60'),
  ('078', 'D5', '503', '60'),
  ('079', 'D5', '504', '60'),
  ('080', 'D5', '505', '60'),
  ('081', 'D5', '506', '60'),


  ('082', 'D3', '101', '120'),
  ('083', 'D3', '102', '120'),
  ('084', 'D3', '103', '120'),
  ('085', 'D3', '104', '120'),
  ('086', 'D3', '105', '120'),
  ('087', 'D3', '106', '120'),
  ('088', 'D3', '201', '120'),
  ('089', 'D3', '202', '120'),
  ('090', 'D3', '203', '120'),
  ('091', 'D3', '204', '120'),
  ('092', 'D3', '205', '120'),
  ('093', 'D3', '206', '120'),
  ('094', 'D3', '301', '120'),
  ('095', 'D3', '302', '120'),
  ('096', 'D3', '303', '120'),
  ('097', 'D3', '304', '120'),
  ('098', 'D3', '305', '120'),
  ('099', 'D3', '306', '120'),
  ('100', 'D3', '401', '120'),
  ('101', 'D3', '402', '120'),
  ('102', 'D3', '403', '120'),
  ('103', 'D3', '404', '120'),
  ('104', 'D3', '405', '120'),
  ('105', 'D3', '406', '120'),
  ('106', 'D3', '501', '120'),
  ('107', 'D3', '502', '120'),
  ('108', 'D3', '503', '120'),
  ('109', 'D3', '504', '120'),
  ('110', 'D3', '505', '120'),
  ('111', 'D3', '506', '120'),

  ('112', 'D4', '101', '45'),
  ('113', 'D4', '102', '45'),
  ('114', 'D4', '103', '45'),
  ('115', 'D4', '104', '45'),
  ('116', 'D4', '201', '45'),
  ('117', 'D4', '202', '45'),
  ('118', 'D4', '203', '45'),
  ('119', 'D4', '204', '45'),
  ('120', 'D4', '301', '45'),
  ('121', 'D4', '302', '45'),
  ('122', 'D4', '303', '45'),
  ('123', 'D4', '304', '45');



-- --------------------------------------------------------
--
-- Table structure for table `Timeslot`
--
create table `Timeslot`
(
  `timeslotID` Varchar(10) PRIMARY KEY,
  `day` Varchar(10),
  `start_hour` INTEGER,
  `start_minute` INTEGER,
  `end_hour` INTEGER,
  `end_minute` INTEGER
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO `Timeslot` VALUES
  ('000', 'MONDAY', 6, 45, 7, 45),
  ('001', 'MONDAY', 6, 45, 8, 15),
  ('002', 'MONDAY', 6, 45, 9, 10),
  ('003', 'MONDAY', 6, 45, 9, 15),
  ('004', 'MONDAY', 6, 45, 10, 5),
  ('005', 'MONDAY', 6, 45, 11, 0),
  ('006', 'MONDAY', 6, 45, 11, 45),
  ('007', 'MONDAY', 6, 45, 17, 30),
  ('008', 'MONDAY', 7, 0, 9, 10),
  ('009', 'MONDAY', 7, 0, 9, 15),
  ('010', 'MONDAY', 7, 30, 9, 10),
  ('011', 'MONDAY', 7, 30, 9, 30),
  ('012', 'MONDAY', 7, 30, 10, 5),
  ('013', 'MONDAY', 7, 30, 11, 0),
  ('014', 'MONDAY', 7, 30, 11, 30),
  ('015', 'MONDAY', 7, 30, 11, 45),
  ('016', 'MONDAY', 7, 30, 12, 0),
  ('017', 'MONDAY', 8, 0, 9, 0),
  ('018', 'MONDAY', 8, 0, 11, 0),
  ('019', 'MONDAY', 8, 0, 11, 30),
  ('020', 'MONDAY', 8, 15, 11, 15),
  ('021', 'MONDAY', 8, 25, 9, 10),
  ('022', 'MONDAY', 8, 25, 10, 5),
  ('023', 'MONDAY', 8, 25, 11, 45),
  ('024', 'MONDAY', 8, 30, 11, 30),
  ('025', 'MONDAY', 8, 30, 11, 50),
  ('026', 'MONDAY', 9, 15, 10, 15),
  ('027', 'MONDAY', 9, 15, 11, 45),
  ('028', 'MONDAY', 9, 20, 11, 0),
  ('029', 'MONDAY', 9, 20, 11, 45),
  ('030', 'MONDAY', 9, 20, 11, 50),
  ('031', 'MONDAY', 9, 30, 11, 30),
  ('032', 'MONDAY', 10, 15, 11, 45),
  ('033', 'MONDAY', 12, 30, 11, 45),
  ('034', 'MONDAY', 12, 30, 14, 0),
  ('035', 'MONDAY', 12, 30, 14, 45),
  ('036', 'MONDAY', 12, 30, 14, 55),
  ('037', 'MONDAY', 12, 30, 15, 0),
  ('038', 'MONDAY', 12, 30, 15, 50),
  ('039', 'MONDAY', 12, 30, 16, 45),
  ('040', 'MONDAY', 12, 30, 17, 30),
  ('041', 'MONDAY', 12, 45, 15, 0),
  ('042', 'MONDAY', 13, 0, 15, 0),
  ('043', 'MONDAY', 13, 0, 16, 30),
  ('044', 'MONDAY', 13, 0, 17, 0),
  ('045', 'MONDAY', 13, 0, 17, 30),
  ('046', 'MONDAY', 13, 15, 14, 0),
  ('047', 'MONDAY', 13, 15, 14, 55),
  ('048', 'MONDAY', 13, 15, 16, 15),
  ('049', 'MONDAY', 13, 15, 16, 45),
  ('050', 'MONDAY', 13, 15, 17, 30),
  ('051', 'MONDAY', 13, 30, 17, 0),
  ('052', 'MONDAY', 14, 0, 15, 0),
  ('053', 'MONDAY', 14, 0, 17, 0),
  ('054', 'MONDAY', 14, 10, 15, 50),
  ('055', 'MONDAY', 14, 10, 17, 30),
  ('056', 'MONDAY', 14, 15, 17, 35),
  ('057', 'MONDAY', 15, 0, 17, 0),
  ('058', 'MONDAY', 15, 0, 17, 20),
  ('059', 'MONDAY', 15, 0, 17, 30),
  ('060', 'MONDAY', 15, 5, 16, 45),
  ('061', 'MONDAY', 15, 5, 17, 30),
  ('062', 'MONDAY', 15, 5, 17, 35),
  ('063', 'MONDAY', 15, 30, 16, 30),
  ('064', 'MONDAY', 16, 0, 17, 30),
  ('065', 'MONDAY', 17, 45, 20, 10),
  ('066', 'MONDAY', 18, 0, 20, 30),
  ('067', 'TUESDAY', 6, 45, 7, 45),
  ('068', 'TUESDAY', 6, 45, 8, 15),
  ('069', 'TUESDAY', 6, 45, 9, 10),
  ('070', 'TUESDAY', 6, 45, 9, 15),
  ('071', 'TUESDAY', 6, 45, 10, 5),
  ('072', 'TUESDAY', 6, 45, 11, 0),
  ('073', 'TUESDAY', 6, 45, 11, 45),
  ('074', 'TUESDAY', 6, 45, 17, 30),
  ('075', 'TUESDAY', 7, 0, 9, 10),
  ('076', 'TUESDAY', 7, 0, 9, 15),
  ('077', 'TUESDAY', 7, 30, 9, 10),
  ('078', 'TUESDAY', 7, 30, 9, 30),
  ('079', 'TUESDAY', 7, 30, 10, 5),
  ('080', 'TUESDAY', 7, 30, 11, 0),
  ('081', 'TUESDAY', 7, 30, 11, 30),
  ('082', 'TUESDAY', 7, 30, 11, 45),
  ('083', 'TUESDAY', 7, 30, 12, 0),
  ('084', 'TUESDAY', 8, 0, 9, 0),
  ('085', 'TUESDAY', 8, 0, 11, 0),
  ('086', 'TUESDAY', 8, 0, 11, 30),
  ('087', 'TUESDAY', 8, 15, 11, 15),
  ('088', 'TUESDAY', 8, 25, 9, 10),
  ('089', 'TUESDAY', 8, 25, 10, 5),
  ('090', 'TUESDAY', 8, 25, 11, 45),
  ('091', 'TUESDAY', 8, 30, 11, 30),
  ('092', 'TUESDAY', 8, 30, 11, 50),
  ('093', 'TUESDAY', 9, 15, 10, 15),
  ('094', 'TUESDAY', 9, 15, 11, 45),
  ('095', 'TUESDAY', 9, 20, 11, 0),
  ('096', 'TUESDAY', 9, 20, 11, 45),
  ('097', 'TUESDAY', 9, 20, 11, 50),
  ('098', 'TUESDAY', 9, 30, 11, 30),
  ('099', 'TUESDAY', 10, 15, 11, 45),
  ('100', 'TUESDAY', 12, 30, 11, 45),
  ('101', 'TUESDAY', 12, 30, 14, 0),
  ('102', 'TUESDAY', 12, 30, 14, 45),
  ('103', 'TUESDAY', 12, 30, 14, 55),
  ('104', 'TUESDAY', 12, 30, 15, 0),
  ('105', 'TUESDAY', 12, 30, 15, 50),
  ('106', 'TUESDAY', 12, 30, 16, 45),
  ('107', 'TUESDAY', 12, 30, 17, 30),
  ('108', 'TUESDAY', 12, 45, 15, 0),
  ('109', 'TUESDAY', 13, 0, 15, 0),
  ('110', 'TUESDAY', 13, 0, 16, 30),
  ('111', 'TUESDAY', 13, 0, 17, 0),
  ('112', 'TUESDAY', 13, 0, 17, 30),
  ('113', 'TUESDAY', 13, 15, 14, 0),
  ('114', 'TUESDAY', 13, 15, 14, 55),
  ('115', 'TUESDAY', 13, 15, 16, 15),
  ('116', 'TUESDAY', 13, 15, 16, 45),
  ('117', 'TUESDAY', 13, 15, 17, 30),
  ('118', 'TUESDAY', 13, 30, 17, 0),
  ('119', 'TUESDAY', 14, 0, 15, 0),
  ('120', 'TUESDAY', 14, 0, 17, 0),
  ('121', 'TUESDAY', 14, 10, 15, 50),
  ('122', 'TUESDAY', 14, 10, 17, 30),
  ('123', 'TUESDAY', 14, 15, 17, 35),
  ('124', 'TUESDAY', 15, 0, 17, 0),
  ('125', 'TUESDAY', 15, 0, 17, 20),
  ('126', 'TUESDAY', 15, 0, 17, 30),
  ('127', 'TUESDAY', 15, 5, 16, 45),
  ('128', 'TUESDAY', 15, 5, 17, 30),
  ('129', 'TUESDAY', 15, 5, 17, 35),
  ('130', 'TUESDAY', 15, 30, 16, 30),
  ('131', 'TUESDAY', 16, 0, 17, 30),
  ('132', 'TUESDAY', 17, 45, 20, 10),
  ('133', 'TUESDAY', 18, 0, 20, 30),
  ('134', 'WEDNESDAY', 6, 45, 7, 45),
  ('135', 'WEDNESDAY', 6, 45, 8, 15),
  ('136', 'WEDNESDAY', 6, 45, 9, 10),
  ('137', 'WEDNESDAY', 6, 45, 9, 15),
  ('138', 'WEDNESDAY', 6, 45, 10, 5),
  ('139', 'WEDNESDAY', 6, 45, 11, 0),
  ('140', 'WEDNESDAY', 6, 45, 11, 45),
  ('141', 'WEDNESDAY', 6, 45, 17, 30),
  ('142', 'WEDNESDAY', 7, 0, 9, 10),
  ('143', 'WEDNESDAY', 7, 0, 9, 15),
  ('144', 'WEDNESDAY', 7, 30, 9, 10),
  ('145', 'WEDNESDAY', 7, 30, 9, 30),
  ('146', 'WEDNESDAY', 7, 30, 10, 5),
  ('147', 'WEDNESDAY', 7, 30, 11, 0),
  ('148', 'WEDNESDAY', 7, 30, 11, 30),
  ('149', 'WEDNESDAY', 7, 30, 11, 45),
  ('150', 'WEDNESDAY', 7, 30, 12, 0),
  ('151', 'WEDNESDAY', 8, 0, 9, 0),
  ('152', 'WEDNESDAY', 8, 0, 11, 0),
  ('153', 'WEDNESDAY', 8, 0, 11, 30),
  ('154', 'WEDNESDAY', 8, 15, 11, 15),
  ('155', 'WEDNESDAY', 8, 25, 9, 10),
  ('156', 'WEDNESDAY', 8, 25, 10, 5),
  ('157', 'WEDNESDAY', 8, 25, 11, 45),
  ('158', 'WEDNESDAY', 8, 30, 11, 30),
  ('159', 'WEDNESDAY', 8, 30, 11, 50),
  ('160', 'WEDNESDAY', 9, 15, 10, 15),
  ('161', 'WEDNESDAY', 9, 15, 11, 45),
  ('162', 'WEDNESDAY', 9, 20, 11, 0),
  ('163', 'WEDNESDAY', 9, 20, 11, 45),
  ('164', 'WEDNESDAY', 9, 20, 11, 50),
  ('165', 'WEDNESDAY', 9, 30, 11, 30),
  ('166', 'WEDNESDAY', 10, 15, 11, 45),
  ('167', 'WEDNESDAY', 12, 30, 11, 45),
  ('168', 'WEDNESDAY', 12, 30, 14, 0),
  ('169', 'WEDNESDAY', 12, 30, 14, 45),
  ('170', 'WEDNESDAY', 12, 30, 14, 55),
  ('171', 'WEDNESDAY', 12, 30, 15, 0),
  ('172', 'WEDNESDAY', 12, 30, 15, 50),
  ('173', 'WEDNESDAY', 12, 30, 16, 45),
  ('174', 'WEDNESDAY', 12, 30, 17, 30),
  ('175', 'WEDNESDAY', 12, 45, 15, 0),
  ('176', 'WEDNESDAY', 13, 0, 15, 0),
  ('177', 'WEDNESDAY', 13, 0, 16, 30),
  ('178', 'WEDNESDAY', 13, 0, 17, 0),
  ('179', 'WEDNESDAY', 13, 0, 17, 30),
  ('180', 'WEDNESDAY', 13, 15, 14, 0),
  ('181', 'WEDNESDAY', 13, 15, 14, 55),
  ('182', 'WEDNESDAY', 13, 15, 16, 15),
  ('183', 'WEDNESDAY', 13, 15, 16, 45),
  ('184', 'WEDNESDAY', 13, 15, 17, 30),
  ('185', 'WEDNESDAY', 13, 30, 17, 0),
  ('186', 'WEDNESDAY', 14, 0, 15, 0),
  ('187', 'WEDNESDAY', 14, 0, 17, 0),
  ('188', 'WEDNESDAY', 14, 10, 15, 50),
  ('189', 'WEDNESDAY', 14, 10, 17, 30),
  ('190', 'WEDNESDAY', 14, 15, 17, 35),
  ('191', 'WEDNESDAY', 15, 0, 17, 0),
  ('192', 'WEDNESDAY', 15, 0, 17, 20),
  ('193', 'WEDNESDAY', 15, 0, 17, 30),
  ('194', 'WEDNESDAY', 15, 5, 16, 45),
  ('195', 'WEDNESDAY', 15, 5, 17, 30),
  ('196', 'WEDNESDAY', 15, 5, 17, 35),
  ('197', 'WEDNESDAY', 15, 30, 16, 30),
  ('198', 'WEDNESDAY', 16, 0, 17, 30),
  ('199', 'WEDNESDAY', 17, 45, 20, 10),
  ('200', 'WEDNESDAY', 18, 0, 20, 30),
  ('201', 'THURSDAY', 6, 45, 7, 45),
  ('202', 'THURSDAY', 6, 45, 8, 15),
  ('203', 'THURSDAY', 6, 45, 9, 10),
  ('204', 'THURSDAY', 6, 45, 9, 15),
  ('205', 'THURSDAY', 6, 45, 10, 5),
  ('206', 'THURSDAY', 6, 45, 11, 0),
  ('207', 'THURSDAY', 6, 45, 11, 45),
  ('208', 'THURSDAY', 6, 45, 17, 30),
  ('209', 'THURSDAY', 7, 0, 9, 10),
  ('210', 'THURSDAY', 7, 0, 9, 15),
  ('211', 'THURSDAY', 7, 30, 9, 10),
  ('212', 'THURSDAY', 7, 30, 9, 30),
  ('213', 'THURSDAY', 7, 30, 10, 5),
  ('214', 'THURSDAY', 7, 30, 11, 0),
  ('215', 'THURSDAY', 7, 30, 11, 30),
  ('216', 'THURSDAY', 7, 30, 11, 45),
  ('217', 'THURSDAY', 7, 30, 12, 0),
  ('218', 'THURSDAY', 8, 0, 9, 0),
  ('219', 'THURSDAY', 8, 0, 11, 0),
  ('220', 'THURSDAY', 8, 0, 11, 30),
  ('221', 'THURSDAY', 8, 15, 11, 15),
  ('222', 'THURSDAY', 8, 25, 9, 10),
  ('223', 'THURSDAY', 8, 25, 10, 5),
  ('224', 'THURSDAY', 8, 25, 11, 45),
  ('225', 'THURSDAY', 8, 30, 11, 30),
  ('226', 'THURSDAY', 8, 30, 11, 50),
  ('227', 'THURSDAY', 9, 15, 10, 15),
  ('228', 'THURSDAY', 9, 15, 11, 45),
  ('229', 'THURSDAY', 9, 20, 11, 0),
  ('230', 'THURSDAY', 9, 20, 11, 45),
  ('231', 'THURSDAY', 9, 20, 11, 50),
  ('232', 'THURSDAY', 9, 30, 11, 30),
  ('233', 'THURSDAY', 10, 15, 11, 45),
  ('234', 'THURSDAY', 12, 30, 11, 45),
  ('235', 'THURSDAY', 12, 30, 14, 0),
  ('236', 'THURSDAY', 12, 30, 14, 45),
  ('237', 'THURSDAY', 12, 30, 14, 55),
  ('238', 'THURSDAY', 12, 30, 15, 0),
  ('239', 'THURSDAY', 12, 30, 15, 50),
  ('240', 'THURSDAY', 12, 30, 16, 45),
  ('241', 'THURSDAY', 12, 30, 17, 30),
  ('242', 'THURSDAY', 12, 45, 15, 0),
  ('243', 'THURSDAY', 13, 0, 15, 0),
  ('244', 'THURSDAY', 13, 0, 16, 30),
  ('245', 'THURSDAY', 13, 0, 17, 0),
  ('246', 'THURSDAY', 13, 0, 17, 30),
  ('247', 'THURSDAY', 13, 15, 14, 0),
  ('248', 'THURSDAY', 13, 15, 14, 55),
  ('249', 'THURSDAY', 13, 15, 16, 15),
  ('250', 'THURSDAY', 13, 15, 16, 45),
  ('251', 'THURSDAY', 13, 15, 17, 30),
  ('252', 'THURSDAY', 13, 30, 17, 0),
  ('253', 'THURSDAY', 14, 0, 15, 0),
  ('254', 'THURSDAY', 14, 0, 17, 0),
  ('255', 'THURSDAY', 14, 10, 15, 50),
  ('256', 'THURSDAY', 14, 10, 17, 30),
  ('257', 'THURSDAY', 14, 15, 17, 35),
  ('258', 'THURSDAY', 15, 0, 17, 0),
  ('259', 'THURSDAY', 15, 0, 17, 20),
  ('260', 'THURSDAY', 15, 0, 17, 30),
  ('261', 'THURSDAY', 15, 5, 16, 45),
  ('262', 'THURSDAY', 15, 5, 17, 30),
  ('263', 'THURSDAY', 15, 5, 17, 35),
  ('264', 'THURSDAY', 15, 30, 16, 30),
  ('265', 'THURSDAY', 16, 0, 17, 30),
  ('266', 'THURSDAY', 17, 45, 20, 10),
  ('267', 'THURSDAY', 18, 0, 20, 30),
  ('268', 'FRIDAY', 6, 45, 7, 45),
  ('269', 'FRIDAY', 6, 45, 8, 15),
  ('270', 'FRIDAY', 6, 45, 9, 10),
  ('271', 'FRIDAY', 6, 45, 9, 15),
  ('272', 'FRIDAY', 6, 45, 10, 5),
  ('273', 'FRIDAY', 6, 45, 11, 0),
  ('274', 'FRIDAY', 6, 45, 11, 45),
  ('275', 'FRIDAY', 6, 45, 17, 30),
  ('276', 'FRIDAY', 7, 0, 9, 10),
  ('277', 'FRIDAY', 7, 0, 9, 15),
  ('278', 'FRIDAY', 7, 30, 9, 10),
  ('279', 'FRIDAY', 7, 30, 9, 30),
  ('280', 'FRIDAY', 7, 30, 10, 5),
  ('281', 'FRIDAY', 7, 30, 11, 0),
  ('282', 'FRIDAY', 7, 30, 11, 30),
  ('283', 'FRIDAY', 7, 30, 11, 45),
  ('284', 'FRIDAY', 7, 30, 12, 0),
  ('285', 'FRIDAY', 8, 0, 9, 0),
  ('286', 'FRIDAY', 8, 0, 11, 0),
  ('287', 'FRIDAY', 8, 0, 11, 30),
  ('288', 'FRIDAY', 8, 15, 11, 15),
  ('289', 'FRIDAY', 8, 25, 9, 10),
  ('290', 'FRIDAY', 8, 25, 10, 5),
  ('291', 'FRIDAY', 8, 25, 11, 45),
  ('292', 'FRIDAY', 8, 30, 11, 30),
  ('293', 'FRIDAY', 8, 30, 11, 50),
  ('294', 'FRIDAY', 9, 15, 10, 15),
  ('295', 'FRIDAY', 9, 15, 11, 45),
  ('296', 'FRIDAY', 9, 20, 11, 0),
  ('297', 'FRIDAY', 9, 20, 11, 45),
  ('298', 'FRIDAY', 9, 20, 11, 50),
  ('299', 'FRIDAY', 9, 30, 11, 30),
  ('300', 'FRIDAY', 10, 15, 11, 45),
  ('301', 'FRIDAY', 12, 30, 11, 45),
  ('302', 'FRIDAY', 12, 30, 14, 0),
  ('303', 'FRIDAY', 12, 30, 14, 45),
  ('304', 'FRIDAY', 12, 30, 14, 55),
  ('305', 'FRIDAY', 12, 30, 15, 0),
  ('306', 'FRIDAY', 12, 30, 15, 50),
  ('307', 'FRIDAY', 12, 30, 16, 45),
  ('308', 'FRIDAY', 12, 30, 17, 30),
  ('309', 'FRIDAY', 12, 45, 15, 0),
  ('310', 'FRIDAY', 13, 0, 15, 0),
  ('311', 'FRIDAY', 13, 0, 16, 30),
  ('312', 'FRIDAY', 13, 0, 17, 0),
  ('313', 'FRIDAY', 13, 0, 17, 30),
  ('314', 'FRIDAY', 13, 15, 14, 0),
  ('315', 'FRIDAY', 13, 15, 14, 55),
  ('316', 'FRIDAY', 13, 15, 16, 15),
  ('317', 'FRIDAY', 13, 15, 16, 45),
  ('318', 'FRIDAY', 13, 15, 17, 30),
  ('319', 'FRIDAY', 13, 30, 17, 0),
  ('320', 'FRIDAY', 14, 0, 15, 0),
  ('321', 'FRIDAY', 14, 0, 17, 0),
  ('322', 'FRIDAY', 14, 10, 15, 50),
  ('323', 'FRIDAY', 14, 10, 17, 30),
  ('324', 'FRIDAY', 14, 15, 17, 35),
  ('325', 'FRIDAY', 15, 0, 17, 0),
  ('326', 'FRIDAY', 15, 0, 17, 20),
  ('327', 'FRIDAY', 15, 0, 17, 30),
  ('328', 'FRIDAY', 15, 5, 16, 45),
  ('329', 'FRIDAY', 15, 5, 17, 30),
  ('330', 'FRIDAY', 15, 5, 17, 35),
  ('331', 'FRIDAY', 15, 30, 16, 30),
  ('332', 'FRIDAY', 16, 0, 17, 30),
  ('333', 'FRIDAY', 17, 45, 20, 10),
  ('334', 'FRIDAY', 18, 0, 20, 30);

--
-- Table structure for table `Department`
--

CREATE TABLE `Department`
(
  `dept_ID` VARCHAR(10) NOT NULL,
  `dept_Name` VARCHAR(30) NOT NULL,
  `building` VARCHAR(5) NOT NULL,
  `phoneNumber` VARCHAR(12) NOT NULL,
PRIMARY KEY(`dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `Department` VALUES
  ('01', 'Information Technology', 'B1', '0243869246'),
  ('02', 'Mathematics and Informatics', 'D3', '0367979463'),
  ('03', 'Political theory', 'D3', '02438684401'),
  ('04', 'Faculty of Physical Education', 'Stadium', '0248684922'),
  ('05', 'Foreign Languages', 'D4', '038692201'),
  ('06', 'Physics Engineering', 'C11', '028693350'),
  ('07', 'Electric Engineering', 'C5', '03498659689'),
  ('08', 'Chemical Engineering', 'C4', '0248680070'),
  ('09', 'Mechanical Engineering', 'C10', '02438696165'),
  ('10', 'Economics and Management', 'C5', '0386923041');

-- --------------------------------------------------------

--
-- Table structure for table `Lecturer`
--

CREATE TABLE `Lecturer`
(
  `lecturerID` VARCHAR(10) NOT NULL,
  `lecturerName` VARCHAR(30) DEFAULT NULL,
  `dept_ID` VARCHAR(10) DEFAULT NULL,
  `city` VARCHAR(20) DEFAULT NULL,
  `email` VARCHAR(50) DEFAULT NULL,
  `phoneNumber` VARCHAR(12) DEFAULT NULL,
  PRIMARY KEY(`lecturerID`),
  FOREIGN KEY(`dept_ID`) REFERENCES `Department`(`dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `Lecturer` VALUES
  ('1001', 'Ta Hai Tung', '01', 'Hanoi', 'tungth@soict.hust.edu.vn', '0348575875'),
  ('1002', 'Le Tan Hung', '01', 'Hanoi', 'hunglt@soict.hust.edu.vn', '0356347787'),
  ('1003', 'Pham Van Hai', '01', 'Hanoi', 'haipv@soict.hust.edu.vn', '0357979768'),
  ('1004', 'Vu Tuyet Trinh', '01', 'Hanoi', 'trinhvt@soict.hust.edu.vn', '0367587787'),
  ('1005', 'Huynh Thi Thanh Binh', '01', 'Hung Yen', 'binhht@soict.hust.edu.vn', '0947679788'),
  ('1006', 'Tran Quang Duc', '01', 'Hung Yen', 'duc.tranquang@hust.edu.vn', '094867867'),
  ('1007', 'Ngo Lam Trung', '01', 'Bac Ninh', 'trungnl@soict.hust.edu.vn;', '0967787645'),
  ('1008', 'Pham Quang Dung', '01', 'Hanoi', 'dungpq@soict.hust.edu.vn', '0969875797'),
  ('1009', 'Dang Tuan Linh', '01', 'Hanoi', 'linhdt@soict.hust.edu.vn', '0767787843'),
  ('1010', 'Tran Nhat Hoa', '01', 'Hanoi', 'hoatn@soict.hust.edu.vn', '098887769'),
  ('1011', 'Nguyen Khanh Phuong', '01', 'Hanoi', 'phuongnk@soict.hust.edu.vn', '034857878'),
  ('1012', 'Nguyen Hong Phuong', '01', 'Hanoi', 'phuongnh@soict.hust.edu.vn', '045687878'),
  ('1013', 'Bui Thi Mai Anh', '01', 'Bac Ninh', 'anhbtm@soict.hust.edu.vn', '037787987'),
  ('1014', 'Pham Huy Hoang', '01', 'Hanoi', 'hoang.phamhuy@hust.edu.vn', '0366788985'),
  ('1015', 'Truong Dieu Linh', '01', 'Hanoi', ' linhtd@soict.hust.edu.vn', '0947587577'),
  ('1016', 'Michel Toulouse', '01', 'Torato', 'michel.toulouse@soict.hust.edu.vn', '098758768'),
  ('1017', 'Nguyen Phi Le', '01', 'Hanoi', 'lenp@soict.hust.edu.vn', '0328878767'),
  ('1018', 'Do Cong Thuan', '01', 'Hanoi', 'thuandc@soict.hust.edu.vn', '0357877676'),

  ('2001', 'Bui Xuan Dieu', '02', 'Hanoi', 'dieu.buixuan@hust.edu.vn', '0377577795'),
  ('2002', 'Nguyen Canh Nam', '02', 'Hanoi', 'nam.nc@hust.edu.vn', '0388757575'),
  ('2003', 'Nguyen Thu Huong', '02', 'Hanoi', 'huong.nt@hust.edu.vn', '075898989'),
  ('2004', 'Nguyen Canh Luong', '02', 'Hanoi', 'luong.nc@hust.edu.vn', '038656856'),
  ('2005', 'Dao Tuan Anh', '02', 'Hanoi', 'tanh.dt@hust.edu.vn', '03567876975'),
  ('2006', 'Nguyen Xuan Thao', '02', 'Hanoi', 'thao.nguyenxuan@hust.edu.vn', '0378787874'),
  ('2007', 'Pham Viet Hai', '02', 'Hanoi', 'hai.pv@hust.edu.vn', '0349879879'),
  ('2008', 'Doan Cong Dinh', '02', 'Hanoi', 'dinh.dc@hust.edu.vn', '0797796775'),
  ('2009', 'Phan Xuan Thanh', '02', 'Hanoi', 'thanh.px@hust.edu.vn', '09759437957'),
  ('2010', 'Nguyen Thieu Huy', '02', 'Hanoi', 'huy.nt@hust.edu.vn', '0327975759'),
  ('2011', 'Tran Quoc Binh', '02', 'Hanoi', 'binh.tq@hust.edu.vn', '0375976997'),
  ('2012', 'Do Trong Hoang', '02', 'Hanoi', 'hoang.dt@hust.edu.vn', '0317877676'),
  ('2013', 'Nguyen Cong Minh', '02', 'Hanoi', 'minh.nc@hust.edu.vn', '0727877676'),
  ('2014', 'Nguyen Hai Son', '02', 'Hanoi', 'son.nh@hust.edu.vn', '0757877676'),
  ('2015', 'Nguyen Thi Toan', '02', 'Hanoi', 'toan.nt@hust.edu.vn', '0965477676'),

  ('3001', 'Ngo Que Lan', '03', 'Hanoi', 'lan.ngoque@hust.edu.vn', '085876856'),
  ('3002', 'Hoang Thu Huong', '03', 'Hanoi', 'huong.ht@hust.edu.vn', '075876856'),
  ('3003', 'Hoang Thi Hanh', '03', 'Hanoi', 'Hanh.ht@hust.edu.vn', '0747986976'),
  ('3004', 'Hoang Anh Dong', '03', 'Hanoi', 'dong.hoanganh@hust.edu.vn', '084876856'),
  ('3005', 'Nguyen Quoc Doan', '03', 'Hanoi', 'doan.nq@hust.edu.vn', '034777685'),
  ('3006', 'Ha Dang Huong', '03', 'Hanoi', 'huong.hadang@hust.edu.vn', '0867756796'),
  ('3007', 'Le Tien Dung', '03', 'Hanoi', 'dung.lt@hust.edu.vn', '075976856'),
  ('3008', 'Hoang Thi Lan', '03', 'Hanoi', 'lan.hoangthi@hust.edu.vn', '074873856'),
  ('3009', 'Pham Mai Duyen', '03', 'Hanoi', 'duyen.phammai@hust.edu.vn', '029876456'),
  ('3010', 'Nguyen Thu Ha', '03', 'Hanoi', 'ha.nt@hust.edu.vn', '068876956'),

  ('4001', 'Nguyen Viet Trung', '04', 'Hanoi', 'trung.nguyenviet@hust.edu.vn', '098876956'),
  ('4002', 'Dao Tien Dan', '04', 'Hanoi', 'dan.daotien@hust.edu.vn', '098476956'),
  ('4003', 'Doan Chien Vinh', '04', 'Hanoi', 'vinh.doanchien@hust.edu.vn', '098876957'),
  ('4004', 'Nguyen Long Giang', '04', 'Hanoi', 'giang.nguyenlong@hust.edu.vn', '098876958'),
  ('4005', 'Nguyen Tien Dat', '04', 'Hanoi', 'dat.nguyentien@hust.edu.vn', '098876959'),
  ('4006', 'Nguyen Ngoc Anh', '04', 'Hanoi', 'anh.nguyenngoc@hust.edu.vn', '098876961'),
  ('4007', 'Le Thanh Tung', '04', 'Hanoi', 'tung.lethanh@hust.edu.vn', '098876962'),
  ('4008', 'Nguyen Truong Giang', '04', 'Hanoi', 'giang.nguyentruong@hust.edu.vn', '098876963'),
  ('4009', 'Tran Huy Quang', '04', 'Hanoi', 'quang.tranhuy@hust.edu.vn', '098876964'),
  ('4010', 'Pham Thuy Trang', '04', 'Hanoi', 'trang.thuypham@hust.edu.vn', '098876965'),
  ('4011', 'Nguyen Minh Ngoc', '04', 'Hanoi', 'ngoc.nguyenminh@hust.edu.vn', '098876966'),

  ('5001', 'Tran Hong Thuy', '05', 'Hanoi', 'thuy.tranhong@hust.edu.vn', '098876966'),
  ('5002', 'Ta Le My Hanh', '05', 'Hanoi', 'hanh.talemy@hust.edu.vn', '098876966'),
  ('5003', 'Tran Thi Hue', '05', 'Hanoi', 'hue.tranthi@hust.edu.vn', '098876966'),
  ('5004', 'Nguyen Thi Bac', '05', 'Hanoi', 'bac.nguyenthi@hust.edu.vn', '098876966'),
  ('5005', 'Nguyen Thanh Huyen', '05', 'Hanoi', 'huyen.nguyenthanh@hust.edu.vn', '098876966'),
  ('5006', 'Tran Huong Giang', '05', 'Hanoi', 'giang.tranhuong@hust.edu.vn', '098876966'),
  ('5007', 'Luong Thanh Mai', '05', 'Hanoi', 'mai.luongthanh@hust.edu.vn', '098876966'),
  ('5008', 'Nguyen Thi Thuy', '05', 'Hanoi', 'thuy.nguyenthi@hust.edu.vn', '098876966'),
  ('5009', 'Nguyen Hanh Dao', '05', 'Hanoi', 'dao.nguyenhanh@hust.edu.vn', '098876966'),
  ('5010', 'Nguyen Bich Ngoc', '05', 'Hanoi', 'ngoc.nguyenbich@hust.edu.vn', '098876966'),

  ('6001', 'Le Tuan', '06', 'Hanoi', 'tuan.le@hust.edu.vn', '098876966'),
  ('6002', 'Nguyen Hoang Thoan', '06', 'Hanoi', 'thoan.nguyenhoang@hust.edu.vn', '098876966'),
  ('6003', 'Nguyen Cong Tu', '06', 'Hanoi', 'tu.nguyencong@hust.edu.vn', '098876966'),
  ('6004', 'Dang Duc Dung', '06', 'Hanoi', 'dung.dangduc@hust.edu.vn', '098876966'),
  ('6005', 'Ngo duc Quan', '06', 'Hanoi', 'quan.ngoduc@hust.edu.vn', '098876966');

-- --------------------------------------------------------
--
-- Table structure for table `Student`
--

CREATE TABLE `Student`
(
  `studentID` VARCHAR(10) NOT NULL,
  `dept_ID` VARCHAR(10) NOT NULL,
  `studentName` VARCHAR(30) NOT NULL,
  `DOB` VARCHAR(12) NOT NULL,
  `gender` VARCHAR(10) NOT NULL,
  `CPA` FLOAT NOT NULL,
  `total_cred` INTEGER NOT NULL,
  PRIMARY KEY(`studentID`),
  FOREIGN KEY(`dept_ID`) REFERENCES `Department`(`dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `Student` VALUES
  ('20194735', '01', 'Dinh Huu Dai', '02-03-2001', 'Male', 0, 0),
  ('20194788', '01', 'Tran Tung Lam', '01-01-2001', 'Male', 0, 0),
  ('20194874', '01', 'Do Van Tuan', '06-08-2001', 'Male', 0, 0),
  ('20194878', '01', 'Vu Anh Tuan', '31-12-2001', 'Male', 0, 0),
  ('20183091', '02', 'Le Hoang Thai', '12-04-2000', 'Male', 0, 0),
  ('20183643', '02', 'Luu Dai Trung', '10-08-2000', 'Male', 0, 0),
  ('20195119', '03', 'Nguyen Thien An', '18-01-2001', 'Female', 0, 0),
  ('20201295', '03', 'Luong Duc Binh', '28-02-2002', 'Male', 0, 0),
  ('20202277', '04', 'Nguyen Trong Chien', '09-08-2002', 'Male', 0, 0),
  ('20191312', '05', 'Pham Thi Lien','19-07-2001', 'Female', 0, 0),
  ('20193099', '05', 'Nguyen Thuy Linh','08-07-2001', 'Female', 0, 0),
  ('20192222', '05', 'Hoang Ngoc Huyen', '21-08-2001','Female', 0, 0),
  ('20204092', '06', 'Chu Van Khai', '22-02-2002','Male', 0, 0),
  ('20205874', '07', 'Nguyen Ngoc Trang','10-06-2002', 'Female', 0, 0),
  ('20184239', '07', 'Pham Duc Huy','23-03-2000', 'Male', 0, 0),
  ('20193345', '08', 'Dang Van Dat', '19-01-2001','Male', 0, 0),
  ('20193978', '09', 'Duong Van Hung','05-02-2001', 'Male', 0, 0),
  ('20201982', '10', 'Vu Thuy Trang', '19-12-2002','Female', 0, 0),
  ('20193290', '10', 'Nguyen Ngoc Mai','09-12-2001', 'Female', 0, 0);

-- --------------------------------------------------------
--
-- Table structure for table `Course`
--

create table `Subject`
(
    `subjectID` Varchar(10)  PRIMARY KEY,
    `dept_ID` Varchar(10),
    `subjectName` Varchar(30),
    `factor`  FLOAT,
    `credits` int,
    FOREIGN KEY(`dept_ID`) REFERENCES `Department`(`dept_ID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `Subject` VALUES
  ('IT2688', '01', 'Computer Ethics', '0.7', '2'),
  ('IT2120', '01', 'Computer Literacy', '0.7', '2'),
  ('IT3030', '01', 'Computer Architectures', '0.7', '2'),
  ('IT3011', '01', 'Data Structures and Algorithms', '0.7', '2'),
  ('IT3020', '01', 'Discrete Mathematics', '0.7', '2'),
  ('IT3070', '01', 'Operating Systems', '0.7', '3'),
  ('IT3080', '01', 'Computer Networks', '0.7', '2'),
  ('IT3090', '01', 'Database', '0.6', '2'),
  ('IT3100', '01', 'Object-Oriented Programming', '0.7', '2'),
  ('IT3160', '01', 'Artificial Intelligence', '0.7', '3'),
  ('IT3180E', '01', 'Software Engineering', '0.5', '3'),
  ('IT3210', '01', 'C Programming Language', '0.7', '2'),
  ('IT3280', '01', 'Computer Architecture Lab', '0.5', '2'),
  ('IT3290', '01', 'Database Lab', '0.7', '2'),
  ('IT3322', '01', 'Compiler Construction', '0.4', '2'),
  ('IT3402E', '01', 'Web Information System', '0.7', '2'),
  ('IT4015', '01', 'Information security', '0.7', '2'),
  ('IT4062E', '01', 'Network Programming', '0.7', '2'),

  ('MI1024', '02', 'Math II', '0.7', '3'),
  ('MI1026', '02', 'Calculus II', '0.7', '3'),
  ('MI1143', '02', 'Algebra', '0.7', '3'),
  ('MI1134E', '02', 'Derivative equations', '0.7', '3'),
  ('MI2010', '02', 'Numerical Methods', '0.7', '3'),
  ('MI2020', '02', 'Probability and Statistics', '0.7', '2'),
  ('MI3050', '02', 'Optimization Methods', '0.7', '2'),

  ('SSH1050', '03', 'Ho Chi Minh Ideology', '0.5', '3'),
  ('SSH1111', '03', 'Philosophy of Marxism and Leninism', '0.5', '2'),
  ('SSH1121', '03', 'Political Economics', '0.5', '2'),
  ('SSH1131', '03', 'Scientific Socialism', '0.5', '2'),
  ('SSH1141', '03', 'History of Vietnamese Communist Party', '0.5', '2'),

  ('PE1014', '04', 'Sports theory', '0.5', '2'),
  ('PE1024', '04', 'Swimming', '0.5', '2'),
  ('PE2102', '04', 'Volleyball', '0.5', '2'),
  ('PE2151', '04', 'Aerobics', '0.5', '2'),
  ('PE2201', '04', 'Football I', '0.5', '2'),
  ('PE2251', '04', 'Taekwondo I', '0.5', '2'),
  ('PE2301', '04', 'Basketball I', '0.5', '2'),
  ('PE2401', '04', 'Table tennis I', '0.5', '2'),
  ('PE2501', '04', 'Badminton I', '0.5', '2'),
  ('PE2601', '04', 'Running', '0.5', '2'),
  ('PE2701', '04', 'High jumping', '0.5', '2'),

  ('FL1120', '05', 'IELTS Listening 1', '0.6', '2'),
  ('FL1121', '05', 'IELTS Speaking 1', '0.6', '2'),
  ('FL1122', '05', 'IELTS Reading 1', '0.6', '2'),
  ('FL1123', '05', 'IELTS Writing 1', '0.6', '2'),
  ('FL1432', '05', 'Japanese II', '0.6', '2'),
  ('FL3012', '05', 'Speaking Skills II', '0.6', '2'),
  ('FL3022', '05', 'Listening Skills II', '0.6', '2'),
  ('FL3032', '05', 'Reading Skills II', '0.6', '2'),
  ('FL3042', '05', 'Writing Skills II', '0.6', '2'),

  ('PH1014', '06', 'Physics I', '0.7', '3'),
  ('PH1120', '06', 'Physics II', '0.7', '3'),
  ('PH1130', '06', 'Physics III', '0.7', '3'),
  ('PH2014', '06', 'Wave Physics', '0.7', '3');

-- --------------------------------------------------------

--
-- Table structure for table `Class`
--

create table `Class`
(
    `classID` Varchar(10) PRIMARY KEY,
    `subjectID` Varchar(10),
    `lecturerID` Varchar(10),
    `roomID` Varchar(10),
    `timeslotID` Varchar(10),
    `semester` INTEGER,
    FOREIGN KEY(`lecturerID`) REFERENCES `Lecturer`(`lecturerID`),
    FOREIGN KEY(`subjectID`) REFERENCES `Subject`(`subjectID`),
    FOREIGN KEY(`roomID`) REFERENCES  `Room`(`roomID`),
    FOREIGN KEY(`timeslotID`) REFERENCES `Timeslot`(`timeslotID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `Class` VALUES
('01','IT3160','1001','012','120','20212'),
('02','IT3210','1002','022','113','20212'),
('03','IT3011','1003','023','287','20212'),
('04','IT3090','1010','033','203','20212'),
('05','IT3090','1009','095','178','20212'),
('06','IT4015','1005','091','115','20212'),
('07','IT3280','1007','056','062','20212'),
('08','PH1014','6005','095','216','20212'),
('09','PH1014','6004','093','220','20212'),
('10','PH1120','6003','093','056','20212'),
('11','PH1120','6002','094','037','20212'),
('12','PH1130','6001','092','022','20212'),
('13','PH1130','6001','085','311','20212'),
('14','MI1024','2005','051','021','20212'),
('15','MI1024','2004','054','056','20212'),
('16','MI1024','2001','056','064','20212'),
('17','IT3020','2009','052','072','20212'),
('18','IT2120','2008','022','134','20212'),
('19','IT3020','2008','041','232','20212'),
('20','IT4015','1009','091','232','20212'),
('21','IT3020','2006','050','301','20212'),
('22','IT2120','2004','055','122','20212'),
('23','IT3020','2001','059','261','20212'),
('24','IT3020','2005','063','064','20212'),
('25','SSH1050','3001','032','064','20212'),
('26','SSH1141','3005','087','026','20212'),
('27','SSH1050','3002','034','038','20212'),
('28','SSH1111','3001','033','164','20212'),
('29','SSH1111','3005','022','134','20212'),
('30','SSH1111','3002','024','124','20212'),
('31','SSH1121','3004','098','112','20212'),
('32','SSH1121','3007','099','172','20212'),
('33','SSH1121','3008','100','286','20212'),
('34','SSH1131','3009','102','214','20212'),
('35','SSH1141','3010','105','304','20212'),
('36','SSH1131','3001','111','294','20212');

-- --------------------------------------------------------

--
-- Table structure for table `Manage Student`
--

create table `ManageStudent`
(
    `studentID` Varchar(10) NOT NULL,
    `classID` Varchar(10) NOT NULL,
    `grade` Varchar(3),
    `mark` FLOAT,
    FOREIGN KEY(`studentID`) REFERENCES `Student`(`studentID`),
    FOREIGN KEY(`classID`) REFERENCES `Class`(`classID`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
