-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-07-2017 a las 13:22:42
-- Versión del servidor: 5.7.18-0ubuntu0.16.04.1
-- Versión de PHP: 5.6.30-12~ubuntu16.04.1+deb.sury.org+1
CREATE database reporteria;
USE reporteria;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reporteria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) UNSIGNED NOT NULL,
  `nombre_cliente` varchar(20) DEFAULT NULL,
  `ruta_logo` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre_cliente`, `ruta_logo`, `estado`) VALUES
(394, 'WALMART', '../css/images/walmart.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `locales`
--

CREATE TABLE `locales` (
  `id_local` int(10) UNSIGNED NOT NULL,
  `nombre_local` varchar(255) NOT NULL,
  `id_cliente` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `locales`
--

INSERT INTO `locales` (`id_local`, `nombre_local`, `id_cliente`) VALUES
(12415, 'WM ACUENTA - LOCAL 007 SANTIAGO\r\n', 394),
(12416, 'WM ACUENTA - LOCAL 012 TALCA\r\n', 394),
(12417, 'WM ACUENTA - LOCAL 013 TEMUCO\r\n', 394),
(12418, 'WM ACUENTA - LOCAL 154 OVALLE\r\n', 394),
(12419, 'WM ACUENTA - LOCAL 155 TALCA\r\n', 394),
(12420, 'WM ACUENTA - LOCAL 156 TALCA\r\n', 394),
(12421, 'WM ACUENTA - LOCAL 160 VI?A DEL MAR\r\n', 394),
(12422, 'WM ACUENTA - LOCAL 161 SANTIAGO\r\n', 394),
(12423, 'WM ACUENTA - LOCAL 162 TEMUCO\r\n', 394),
(12424, 'WM ACUENTA - LOCAL 167\r\n', 394),
(12425, 'WM ACUENTA - LOCAL 168 CONCEPCION\r\n', 394),
(12426, 'WM ACUENTA - LOCAL 169 LOS ANGELES\r\n', 394),
(12427, 'WM ACUENTA - LOCAL 171\r\n', 394),
(12428, 'WM ACUENTA - LOCAL 184 SANTIAGO\r\n', 394),
(12429, 'WM ACUENTA - LOCAL 193 SANTIAGO\r\n', 394),
(12430, 'WM ACUENTA - LOCAL 194 PUERTO MONTT\r\n', 394),
(12431, 'WM ACUENTA - LOCAL 195 PUERTO MONTT\r\n', 394),
(12432, 'WM ACUENTA - LOCAL 439 VI\r\n', 394),
(12433, 'WM ACUENTA - LOCAL 440 CONCEPCION\r\n', 394),
(12434, 'WM ACUENTA - LOCAL 454 TEMUCO\r\n', 394),
(12435, 'WM ACUENTA - LOCAL 467 OVALLE\r\n', 394),
(12436, 'WM ACUENTA - LOCAL 478 CONCEPCION\r\n', 394),
(12438, 'WM ACUENTA - LOCAL 483 SANTIAGO\r\n', 394),
(12439, 'WM ACUENTA - LOCAL 490 SANTIAGO\r\n', 394),
(12440, 'WM ACUENTA - LOCAL 500 VI\r\n', 394),
(12441, 'WM ACUENTA - LOCAL 501 TEMUCO\r\n', 394),
(12442, 'WM ACUENTA - LOCAL 502 TALCA\r\n', 394),
(12443, 'WM ACUENTA - LOCAL 503 SANTIAGO\r\n', 394),
(12444, 'WM ACUENTA - LOCAL 504 SANTIAGO\r\n', 394),
(12445, 'WM ACUENTA - LOCAL 505 CONCEPCION\r\n', 394),
(12446, 'WM ACUENTA - LOCAL 506 VIÑA DEL MAR\r\n', 394),
(12447, 'WM ACUENTA - LOCAL 507 SANTIAGO\r\n', 394),
(12448, 'WM ACUENTA - LOCAL 508 TALCA\r\n', 394),
(12449, 'WM ACUENTA - LOCAL 509 SANTIAGO\r\n', 394),
(12450, 'WM ACUENTA - LOCAL 510 SANTIAGO\r\n', 394),
(12451, 'WM ACUENTA - LOCAL 511 SANTIAGO\r\n', 394),
(12452, 'WM ACUENTA - LOCAL 512 SANTIAGO\r\n', 394),
(12453, 'WM ACUENTA - LOCAL 526 CHILLAN\r\n', 394),
(12454, 'WM ACUENTA - LOCAL 527 CURICO\r\n', 394),
(12455, 'WM ACUENTA - LOCAL 528 CURICO\r\n', 394),
(12456, 'WM ACUENTA - LOCAL 529 SANTIAGO\r\n', 394),
(12457, 'WM ACUENTA - LOCAL 530 SANTIAGO\r\n', 394),
(12458, 'WM ACUENTA - LOCAL 531 CONCEPCION\r\n', 394),
(12459, 'WM ACUENTA - LOCAL 532 SANTIAGO\r\n', 394),
(12460, 'WM ACUENTA - LOCAL 533 SANTIAGO\r\n', 394),
(12461, 'WM ACUENTA - LOCAL 534 PUERTO MONTT\r\n', 394),
(12462, 'WM ACUENTA - LOCAL 535 SANTIAGO\r\n', 394),
(12463, 'WM ACUENTA - LOCAL 537 OSORNO\r\n', 394),
(12464, 'WM ACUENTA - LOCAL 538 SANTIAGO\r\n', 394),
(12465, 'WM ACUENTA - LOCAL 539 SANTIAGO\r\n', 394),
(12466, 'WM ACUENTA - LOCAL 540 SANTIAGO\r\n', 394),
(12467, 'WM ACUENTA - LOCAL 541 SANTIAGO\r\n', 394),
(12468, 'WM ACUENTA - LOCAL 543 SANTIAGO\r\n', 394),
(12469, 'WM ACUENTA - LOCAL 544 VI?A DEL MAR\r\n', 394),
(12470, 'WM ACUENTA - LOCAL 545 PUERTO MONTT\r\n', 394),
(12471, 'WM ACUENTA - LOCAL 551 CONCEPCION\r\n', 394),
(12472, 'WM ACUENTA - LOCAL 553 SANTIAGO\r\n', 394),
(12473, 'WM ACUENTA - LOCAL 554 CONCEPCION\r\n', 394),
(12474, 'WM ACUENTA - LOCAL 556 VI\r\n', 394),
(12475, 'WM ACUENTA - LOCAL 557 RANCAGUA\r\n', 394),
(12476, 'WM ACUENTA - LOCAL 558 VALDIVIA\r\n', 394),
(12477, 'WM ACUENTA - LOCAL 559 VALDIVIA\r\n', 394),
(12478, 'WM ACUENTA - LOCAL 560 VILLARRICA\r\n', 394),
(12479, 'WM ACUENTA - LOCAL 561 VI\r\n', 394),
(12480, 'WM ACUENTA - LOCAL 562 SAN FERNANDO\r\n', 394),
(12481, 'WM ACUENTA - LOCAL 565 LOS ANGELES\r\n', 394),
(12482, 'WM ACUENTA - LOCAL 566 CHILLAN\r\n', 394),
(12483, 'WM ACUENTA - LOCAL 567 IQUIQUE\r\n', 394),
(12484, 'WM ACUENTA - LOCAL 568 CURICO\r\n', 394),
(12485, 'WM ACUENTA - LOCAL 569 TALCA\r\n', 394),
(12486, 'WM ACUENTA - LOCAL 570 CHILLAN\r\n', 394),
(12487, 'WM ACUENTA - LOCAL 571 SANTIAGO\r\n', 394),
(12488, 'WM ACUENTA - LOCAL 572 IQUIQUE\r\n', 394),
(12489, 'WM ACUENTA - LOCAL 573 CONCEPCION\r\n', 394),
(12490, 'WM ACUENTA - LOCAL 574 TEMUCO\r\n', 394),
(12491, 'WM ACUENTA - LOCAL 575 LA SERENA\r\n', 394),
(12492, 'WM ACUENTA - LOCAL 577 RENGO\r\n', 394),
(12493, 'WM ACUENTA - LOCAL 578 VIÑA DEL MAR\r\n', 394),
(12494, 'WM ACUENTA - LOCAL 579 SANTIAGO\r\n', 394),
(12495, 'WM ACUENTA - LOCAL 580 SANTIAGO\r\n', 394),
(12496, 'WM ACUENTA - LOCAL 581 LA SERENA\r\n', 394),
(12497, 'WM ACUENTA - LOCAL 582 CHILLAN\r\n', 394),
(12498, 'WM ACUENTA - LOCAL 583 TALCA\r\n', 394),
(12499, 'WM ACUENTA - LOCAL 585 VIÑA DEL MAR\r\n', 394),
(12500, 'WM ACUENTA - LOCAL 586 CONCEPCION\r\n', 394),
(12501, 'WM ACUENTA - LOCAL 587 CONCEPCION\r\n', 394),
(12502, 'WM ACUENTA - LOCAL 588 LOS ANGELES\r\n', 394),
(12503, 'WM ACUENTA - LOCAL 589 VI\r\n', 394),
(12504, 'WM ACUENTA - LOCAL 590 CONCEPCION\r\n', 394),
(12505, 'WM ACUENTA - LOCAL 591 LOS ANGELES\r\n', 394),
(12506, 'WM ACUENTA - LOCAL 592 TALCA\r\n', 394),
(12507, 'WM ACUENTA - LOCAL 593 TALCA\r\n', 394),
(12508, 'WM ACUENTA - LOCAL 594 OSORNO\r\n', 394),
(12509, 'WM ACUENTA - LOCAL 595 LA SERENA\r\n', 394),
(12510, 'WM ACUENTA - LOCAL 598 RANCAGUA\r\n', 394),
(12511, 'WM ACUENTA - LOCAL 648 ILLAPEL\r\n', 394),
(12512, 'WM ACUENTA - LOCAL 170\r\n', 394),
(12513, 'WM ACUENTA - LOCAL 727 PICHILEMU\r\n', 394),
(12514, 'WM ACUENTA - LOCAL 767 VI\r\n', 394),
(12515, 'WM EKONO - LOCAL 201 SANTIAGO\r\n', 394),
(12516, 'WM EKONO - LOCAL 202 SANTIAGO\r\n', 394),
(12517, 'WM EKONO - LOCAL 203 SANTIAGO\r\n', 394),
(12518, 'WM EKONO - LOCAL 204 SANTIAGO\r\n', 394),
(12519, 'WM EKONO - LOCAL 205 SANTIAGO\r\n', 394),
(12520, 'WM EKONO - LOCAL 206 SANTIAGO\r\n', 394),
(12521, 'WM EKONO - LOCAL 207 SANTIAGO\r\n', 394),
(12522, 'WM EKONO - LOCAL 208 SANTIAGO\r\n', 394),
(12523, 'WM EKONO - LOCAL 209 SANTIAGO\r\n', 394),
(12524, 'WM EKONO - LOCAL 210 SANTIAGO\r\n', 394),
(12525, 'WM EKONO - LOCAL 211 SANTIAGO\r\n', 394),
(12526, 'WM EKONO - LOCAL 212 SANTIAGO\r\n', 394),
(12527, 'WM EKONO - LOCAL 213 SANTIAGO\r\n', 394),
(12528, 'WM EKONO - LOCAL 214 SANTIAGO\r\n', 394),
(12529, 'WM EKONO - LOCAL 215 SANTIAGO\r\n', 394),
(12530, 'WM EKONO - LOCAL 216 SANTIAGO\r\n', 394),
(12531, 'WM EKONO - LOCAL 217 SANTIAGO\r\n', 394),
(12532, 'WM EKONO - LOCAL 218 SANTIAGO\r\n', 394),
(12533, 'WM EKONO - LOCAL 219 SANTIAGO\r\n', 394),
(12534, 'WM EKONO - LOCAL 220 SANTIAGO\r\n', 394),
(12535, 'WM EKONO - LOCAL 221 SANTIAGO\r\n', 394),
(12536, 'WM EKONO - LOCAL 222 SANTIAGO\r\n', 394),
(12537, 'WM EKONO - LOCAL 223 SANTIAGO\r\n', 394),
(12538, 'WM EKONO - LOCAL 226 SANTIAGO\r\n', 394),
(12539, 'WM EKONO - LOCAL 227 SANTIAGO\r\n', 394),
(12540, 'WM EKONO - LOCAL 228 SANTIAGO\r\n', 394),
(12541, 'WM EKONO - LOCAL 229 SANTIAGO\r\n', 394),
(12542, 'WM EKONO - LOCAL 230 SANTIAGO\r\n', 394),
(12543, 'WM EKONO - LOCAL 231 SANTIAGO\r\n', 394),
(12544, 'WM EKONO - LOCAL 232 SANTIAGO\r\n', 394),
(12545, 'WM EKONO - LOCAL 233 SANTIAGO\r\n', 394),
(12546, 'WM EKONO - LOCAL 234 SANTIAGO\r\n', 394),
(12547, 'WM EKONO - LOCAL 235 SANTIAGO\r\n', 394),
(12548, 'WM EKONO - LOCAL 236 SANTIAGO\r\n', 394),
(12549, 'WM EKONO - LOCAL 237 SANTIAGO\r\n', 394),
(12550, 'WM EKONO - LOCAL 238 SANTIAGO\r\n', 394),
(12551, 'WM EKONO - LOCAL 239 SANTIAGO\r\n', 394),
(12552, 'WM EKONO - LOCAL 240 SANTIAGO\r\n', 394),
(12553, 'WM EKONO - LOCAL 241 SANTIAGO\r\n', 394),
(12554, 'WM EKONO - LOCAL 242 SANTIAGO\r\n', 394),
(12555, 'WM EKONO - LOCAL 243 SANTIAGO\r\n', 394),
(12556, 'WM EKONO - LOCAL 244 SANTIAGO\r\n', 394),
(12557, 'WM EKONO - LOCAL 246 SANTIAGO\r\n', 394),
(12558, 'WM EKONO - LOCAL 246 SANTIAGO\r\n', 394),
(12559, 'WM EKONO - LOCAL 247 SANTIAGO\r\n', 394),
(12560, 'WM EKONO - LOCAL 250 SANTIAGO\r\n\r\n', 394),
(12561, 'WM EKONO - LOCAL 254 SANTIAGO\r\n', 394),
(12562, 'WM EKONO - LOCAL 256 SANTIAGO\r\n', 394),
(12563, 'WM EKONO - LOCAL 257 SANTIAGO\r\n', 394),
(12564, 'WM EKONO - LOCAL 258 SANTIAGO\r\n', 394),
(12565, 'WM EKONO - LOCAL 259 VI\r\n', 394),
(12566, 'WM EKONO - LOCAL 261 SANTIAGO\r\n', 394),
(12567, 'WM EKONO - LOCAL 262 SANTIAGO\r\n', 394),
(12568, 'WM EKONO - LOCAL 264 SANTIAGO\r\n', 394),
(12569, 'WM EKONO - LOCAL 266 SANTIAGO\r\n', 394),
(12570, 'WM EKONO - LOCAL 267 SANTIAGO\r\n', 394),
(12571, 'WM EKONO - LOCAL 268 SANTIAGO\r\n', 394),
(12572, 'WM EKONO - LOCAL 269 SANTIAGO\r\n', 394),
(12573, 'WM EKONO - LOCAL 271 SANTIAGO\r\n', 394),
(12574, 'WM EKONO - LOCAL 273 SANTIAGO\r\n', 394),
(12575, 'WM EKONO - LOCAL 274 SANTIAGO\r\n', 394),
(12576, 'WM EKONO - LOCAL 275 SANTIAGO\r\n', 394),
(12577, 'WM EKONO - LOCAL 277 SANTIAGO\r\n', 394),
(12578, 'WM EKONO - LOCAL 280 SANTIAGO\r\n', 394),
(12579, 'WM EKONO - LOCAL 281 SANTIAGO\r\n', 394),
(12580, 'WM EKONO - LOCAL 284 SANTIAGO\r\n', 394),
(12581, 'WM EKONO - LOCAL 285 SANTIAGO\r\n', 394),
(12582, 'WM EKONO - LOCAL 287 SANTIAGO\r\n', 394),
(12583, 'WM EKONO - LOCAL 288 SANTIAGO\r\n\r\n', 394),
(12584, 'WM EKONO - LOCAL 291 VI\r\n', 394),
(12585, 'WM EKONO - LOCAL 293 SANTIAGO\r\n', 394),
(12586, 'WM EKONO - LOCAL 294 SANTIAGO\r\n', 394),
(12587, 'WM EKONO - LOCAL 295 SANTIAGO\r\n', 394),
(12588, 'WM EKONO - LOCAL 298 SANTIAGO\r\n', 394),
(12589, 'WM EKONO - LOCAL 299 SANTIAGO\r\n', 394),
(12590, 'WM EKONO - LOCAL 414 SANTIAGO\r\n', 394),
(12591, 'WM EKONO - LOCAL 415 SANTIAGO\r\n', 394),
(12592, 'WM EKONO - LOCAL 416 SANTIAGO\r\n', 394),
(12593, 'WM EKONO - LOCAL 419 SANTIAGO\r\n', 394),
(12594, 'WM EKONO - LOCAL 420 SANTIAGO\r\n', 394),
(12595, 'WM EKONO - LOCAL 421 SANTIAGO\r\n', 394),
(12596, 'WM EKONO - LOCAL 422 SANTIAGO\r\n', 394),
(12597, 'WM EKONO - LOCAL 423 SANTIAGO\r\n', 394),
(12598, 'WM EKONO - LOCAL 427 SANTIAGO\r\n', 394),
(12599, 'WM EKONO - LOCAL 428 SANTIAGO\r\n', 394),
(12600, 'WM EKONO - LOCAL 429 SANTIAGO\r\n', 394),
(12601, 'WM EKONO - LOCAL 430 SANTIAGO\r\n', 394),
(12602, 'WM EKONO - LOCAL 431 SANTIAGO\r\n', 394),
(12603, 'WM EKONO - LOCAL 435 SANTIAGO\r\n', 394),
(12604, 'WM EKONO - LOCAL 436 SANTIAGO\r\n', 394),
(12605, 'WM EKONO - LOCAL 437 SANTIAGO\r\n', 394),
(12606, 'WM EKONO - LOCAL 438 SANTIAGO\r\n', 394),
(12607, 'WM EKONO - LOCAL 441 SANTIAGO\r\n', 394),
(12608, 'WM EKONO - LOCAL 442 SANTIAGO\r\n', 394),
(12609, 'WM EKONO - LOCAL 443 SANTIAGO\r\n', 394),
(12610, 'WM EKONO - LOCAL 445 SANTIAGO\r\n', 394),
(12611, 'WM EKONO - LOCAL 446 SANTIAGO\r\n', 394),
(12612, 'WM EKONO - LOCAL 448 SANTIAGO\r\n', 394),
(12613, 'WM EKONO - LOCAL 452 SANTIAGO\r\n', 394),
(12614, 'WM EKONO - LOCAL 458 SANTIAGO\r\n', 394),
(12615, 'WM EKONO - LOCAL 460 VIÑA DEL MAR\r\n', 394),
(12616, 'WM EKONO - LOCAL 461 SANTIAGO\r\n', 394),
(12617, 'WM EKONO - LOCAL 462 VI\r\n', 394),
(12618, 'WM EKONO - LOCAL 464 SAN FERNANDO\r\n', 394),
(12619, 'WM EKONO - LOCAL 465 VI\r\n', 394),
(12620, 'WM EKONO - LOCAL 466 RANCAGUA\r\n', 394),
(12621, 'WM EKONO - LOCAL 469 SANTIAGO\r\n', 394),
(12622, 'WM EKONO - LOCAL 470 SANTIAGO\r\n', 394),
(12623, 'WM EKONO - LOCAL 471 VI\r\n', 394),
(12624, 'WM EKONO - LOCAL 472 SANTIAGO\r\n', 394),
(12625, 'WM EKONO - LOCAL 473 SANTIAGO\r\n', 394),
(12626, 'WM EKONO - LOCAL 474 SANTIAGO\r\n', 394),
(12627, 'WM EKONO - LOCAL 475 SANTIAGO\r\n', 394),
(12628, 'WM EKONO - LOCAL 476 SANTIAGO\r\n', 394),
(12629, 'WM EKONO - LOCAL 477 RANCAGUA\r\n', 394),
(12630, 'WM EKONO - LOCAL 480 SANTIAGO\r\n', 394),
(12631, 'WM EKONO - LOCAL 481 VI\r\n', 394),
(12632, 'WM EKONO - LOCAL 482 VIÑA DEL MAR\r\n', 394),
(12633, 'WM EKONO - LOCAL 484 SANTIAGO\r\n', 394),
(12634, 'WM EKONO - LOCAL 486 VIÑA DEL MAR\r\n', 394),
(12635, 'WM EKONO - LOCAL 488 VI?A DEL MAR\r\n', 394),
(12636, 'WM EKONO - LOCAL 496 SANTIAGO\r\n', 394),
(12637, 'WM EKONO - LOCAL 497 SAN FERNANDO\r\n', 394),
(12638, 'WM EKONO - LOCAL 498 SANTIAGO\r\n', 394),
(12639, 'WM EKONO - LOCAL 902 SANTIAGO\r\n', 394),
(12640, 'WM EXPRESS - LOCAL 001 SANTIAGO\r\n', 394),
(12641, 'WM EXPRESS - LOCAL 123 ARICA\r\n', 394),
(12642, 'WM EXPRESS - LOCAL 124 SANTIAGO\r\n', 394),
(12643, 'WM EXPRESS - LOCAL 129 PUERTO MONTT\r\n', 394),
(12644, 'WM EXPRESS - LOCAL 130 PUNTA ARENAS\r\n', 394),
(12645, 'WM EXPRESS - LOCAL 134 LOS ANGELES\r\n', 394),
(12646, 'WM EXPRESS - LOCAL 139 SANTIAGO\r\n', 394),
(12647, 'WM EXPRESS - LOCAL 140 SANTIAGO\r\n', 394),
(12648, 'WM EXPRESS - LOCAL 142 TALCA\r\n', 394),
(12649, 'WM EXPRESS - LOCAL 144 TALCA\r\n', 394),
(12650, 'WM EXPRESS - LOCAL 146 TALCA\r\n', 394),
(12651, 'WM EXPRESS - LOCAL 149 SANTIAGO\r\n', 394),
(12652, 'WM EXPRESS - LOCAL 015 SANTIAGO\r\n', 394),
(12653, 'WM EXPRESS - LOCAL 016 SANTIAGO\r\n', 394),
(12654, 'WM EXPRESS - LOCAL 163 VIÑA DEL MAR\r\n', 394),
(12655, 'WM EXPRESS - LOCAL 164 VIÑA DEL MAR\r\n', 394),
(12656, 'WM EXPRESS - LOCAL 018 SANTIAGO\r\n', 394),
(12657, 'WM EXPRESS - LOCAL 002 SANTIAGO\r\n', 394),
(12658, 'WM EXPRESS - LOCAL 034 VI\r\n', 394),
(12659, 'WM EXPRESS - LOCAL 004 SANTIAGO\r\n', 394),
(12660, 'WM EXPRESS - LOCAL 040 VIÑA DEL MAR\r\n', 394),
(12661, 'WM EXPRESS - LOCAL 043 TALCA\r\n', 394),
(12662, 'WM EXPRESS - LOCAL 463 VI?A DEL MAR\r\n', 394),
(12663, 'WM EXPRESS - LOCAL 051 SANTIAGO\r\n', 394),
(12664, 'WM EXPRESS - LOCAL 514 RANCAGUA\r\n', 394),
(12665, 'WM EXPRESS - LOCAL 052 SANTIAGO\r\n', 394),
(12666, 'WM EXPRESS - LOCAL 523 LOS ANGELES\r\n', 394),
(12667, 'WM EXPRESS - LOCAL 524 OSORNO\r\n', 394),
(12668, 'WM EXPRESS - LOCAL 056 SANTIAGO\r\n', 394),
(12669, 'WM EXPRESS - LOCAL 060 SANTIAGO\r\n', 394),
(12670, 'WM EXPRESS - LOCAL 600 VI\r\n', 394),
(12671, 'WM EXPRESS - LOCAL 601 VI\r\n', 394),
(12672, 'WM EXPRESS - LOCAL 603 SANTIAGO\r\n\r\n', 394),
(12673, 'WM EXPRESS - LOCAL 605 LA SERENA\r\n', 394),
(12674, 'WM EXPRESS - LOCAL 609 SANTIAGO\r\n', 394),
(12675, 'WM EXPRESS - LOCAL 061 SANTIAGO\r\n', 394),
(12676, 'WM EXPRESS - LOCAL 610 SANTIAGO\r\n', 394),
(12677, 'WM EXPRESS - LOCAL 611 SANTIAGO\r\n', 394),
(12678, 'WM EXPRESS - LOCAL 612 CHILLAN\r\n', 394),
(12679, 'WM EXPRESS - LOCAL 613 SANTIAGO\r\n', 394),
(12680, 'WM EXPRESS - LOCAL 615 VI\r\n', 394),
(12681, 'WM EXPRESS - LOCAL 619 PUERTO MONTT\r\n', 394),
(12682, 'WM EXPRESS - LOCAL 621 SANTIAGO\r\n', 394),
(12683, 'WM EXPRESS - LOCAL 624 SANTIAGO\r\n', 394),
(12684, 'WM EXPRESS - LOCAL 625 VI\r\n', 394),
(12685, 'WM EXPRESS - LOCAL 627 RANCAGUA\r\n', 394),
(12686, 'WM EXPRESS - LOCAL 064 SANTIAGO\r\n', 394),
(12687, 'WM EXPRESS - LOCAL 640 SANTIAGO\r\n', 394),
(12688, 'WM EXPRESS - LOCAL 643 SANTIAGO\r\n', 394),
(12689, 'WM EXPRESS - LOCAL 644 VI\r\n', 394),
(12690, 'WM EXPRESS - LOCAL 645 RANCAGUA\r\n', 394),
(12691, 'WM EXPRESS - LOCAL 646 CONCEPCION\r\n', 394),
(12692, 'WM EXPRESS - LOCAL 647 VI\r\n', 394),
(12693, 'WM EXPRESS - LOCAL 065 SANTIAGO\r\n', 394),
(12694, 'WM EXPRESS - LOCAL 650 VI\r\n', 394),
(12695, 'WM EXPRESS - LOCAL 652 TEMUCO\r\n', 394),
(12696, 'WM EXPRESS - LOCAL 653 CURICO\r\n', 394),
(12697, 'WM EXPRESS - LOCAL 668 VI\r\n', 394),
(12698, 'WM EXPRESS - LOCAL 674 SANTIAGO\r\n', 394),
(12699, 'WM EXPRESS - LOCAL 676 SANTIAGO\r\n', 394),
(12700, 'WM EXPRESS - LOCAL 677 SANTIAGO\r\n', 394),
(12701, 'WM EXPRESS - LOCAL 678 VI\r\n', 394),
(12702, 'WM EXPRESS - LOCAL 068 VI\r\n', 394),
(12703, 'WM EXPRESS - LOCAL 680 VILLARRICA\r\n', 394),
(12704, 'WM EXPRESS - LOCAL 681 VILLARRICA\r\n', 394),
(12705, 'WM EXPRESS - LOCAL 683 VALDIVIA\r\n', 394),
(12706, 'WM EXPRESS - LOCAL 685 SANTIAGO\r\n', 394),
(12707, 'WM EXPRESS - LOCAL 687 TEMUCO\r\n', 394),
(12708, 'WM EXPRESS - LOCAL 689 SANTIAGO\r\n', 394),
(12709, 'WM EXPRESS - LOCAL 695 RANCAGUA\r\n', 394),
(12710, 'WM EXPRESS - LOCAL 699 SANTIAGO\r\n', 394),
(12711, 'WM EXPRESS - LOCAL 74 SANTIAGO\r\n', 394),
(12712, 'WM EXPRESS - LOCAL 744 SANTIAGO\r\n', 394),
(12713, 'WM EXPRESS - LOCAL 008 SANTIAGO\r\n', 394),
(12714, 'WM GR - LOCAL 301 SANTIAGO\r\n', 394),
(12715, 'WM GR - LOCAL 302 SANTIAGO\r\n', 394),
(12716, 'WM GR - LOCAL 313 PUNTA ARENAS\r\n', 394),
(12717, 'WM GR - LOCAL 315 SANTIAGO\r\n', 394),
(12718, 'WM GR - LOCAL 317 CONCEPCION\r\n', 394),
(12719, 'WM GR - LOCAL 319 CHILLAN\r\n', 394),
(12720, 'WM GR - LOCAL 320 PUERTO MONTT\r\n', 394),
(12721, 'WM GR - LOCAL 322 OSORNO\r\n', 394),
(12722, 'WM GR - LOCAL 357 PUNTA ARENAS\r\n', 394),
(12723, 'WM GR - LOCAL 359 SANTIAGO\r\n', 394),
(12724, 'WM GR - LOCAL 363 SANTIAGO\r\n', 394),
(12725, 'WM GR - LOCAL 364 CONCEPCION\r\n', 394),
(12726, 'WM GR - LOCAL 365 RANCAGUA\r\n', 394),
(12727, 'WM GR - LOCAL 366 RANCAGUA\r\n', 394),
(12728, 'WM GR - LOCAL 368 COPIAPO\r\n', 394),
(12729, 'WM GR - LOCAL 369 OVALLE\r\n', 394),
(12730, 'WM GR - LOCAL 370 TALCA\r\n', 394),
(12731, 'WM GR - LOCAL 371 CURICO\r\n', 394),
(12732, 'WM GR - LOCAL 372 SANTIAGO\r\n', 394),
(12733, 'WM GR - LOCAL 374 SANTIAGO\r\n', 394),
(12734, 'WM GR - LOCAL 375 SANTIAGO\r\n', 394),
(12735, 'WM GR - LOCAL 376 SANTIAGO\r\n', 394),
(12736, 'WM GR - LOCAL 378 SANTIAGO\r\n', 394),
(12737, 'WM GR - LOCAL 381 SANTIAGO\r\n', 394),
(12738, 'WM GR - LOCAL 386 LOS ANGELES\r\n', 394),
(12739, 'WM GR - LOCAL 393 IQUIQUE\r\n', 394),
(12740, 'WM GR - LOCAL 397 SANTIAGO\r\n', 394),
(12741, 'WM GR - LOCAL 399 VALDIVIA\r\n', 394),
(12742, 'WM HIPER - LOCAL 003 SANTIAGO\r\n', 394),
(12743, 'WM HIPER - LOCAL 425 COPIAPO\r\n', 394),
(12744, 'WM HIPER - LOCAL 426 LOS ANGELES\r\n', 394),
(12745, 'WM LIDER - LOCAL 032 SANTIAGO\r\n', 394),
(12746, 'WM LIDER - LOCAL 033 CALAMA\r\n', 394),
(12747, 'WM LIDER - LOCAL 035 RANCAGUA\r\n', 394),
(12748, 'WM LIDER - LOCAL 036 LOS ANGELES\r\n', 394),
(12749, 'WM LIDER - LOCAL 037 SANTIAGO\r\n', 394),
(12750, 'WM LIDER - LOCAL 038 RANCAGUA\r\n', 394),
(12751, 'WM LIDER - LOCAL 039 RANCAGUA\r\n', 394),
(12752, 'WM LIDER - LOCAL 041 SANTIAGO\r\n', 394),
(12753, 'WM LIDER - LOCAL 042 CURICO\r\n', 394),
(12754, 'WM LIDER - LOCAL 044 SANTIAGO\r\n', 394),
(12755, 'WM LIDER - LOCAL 045 SANTIAGO\r\n', 394),
(12756, 'WM LIDER - LOCAL 046 SANTIAGO\r\n', 394),
(12757, 'WM LIDER - LOCAL 048 SANTIAGO\r\n', 394),
(12758, 'WM LIDER - LOCAL 049 SANTIAGO\r\n', 394),
(12759, 'WM LIDER - LOCAL 050 SANTIAGO\r\n', 394),
(12760, 'WM LIDER - LOCAL 053 LA SERENA\r\n', 394),
(12761, 'WM LIDER - LOCAL 054 SANTIAGO\r\n', 394),
(12762, 'WM LIDER - LOCAL 055 SANTIAGO\r\n', 394),
(12763, 'WM LIDER - LOCAL 057 SANTIAGO\r\n', 394),
(12764, 'WM LIDER - LOCAL 058 VI\r\n', 394),
(12765, 'WM LIDER - LOCAL 062 SANTIAGO\r\n', 394),
(12766, 'WM LIDER - LOCAL 066 SANTIAGO\r\n', 394),
(12767, 'WM LIDER - LOCAL 071 SANTIAGO\r\n', 394),
(12768, 'WM LIDER - LOCAL 072 SANTIAGO\r\n', 394),
(12769, 'WM LIDER - LOCAL 073 SANTIAGO\r\n', 394),
(12770, 'WM LIDER - LOCAL 075 SANTIAGO\r\n', 394),
(12771, 'WM LIDER - LOCAL 076 SANTIAGO\r\n', 394),
(12772, 'WM LIDER - LOCAL 077 SANTIAGO\r\n', 394),
(12773, 'WM LIDER - LOCAL 078 IQUIQUE\r\n', 394),
(12774, 'WM LIDER - LOCAL 079 TALCA\r\n', 394),
(12775, 'WM LIDER - LOCAL 080 SANTIAGO\r\n', 394),
(12776, 'WM LIDER - LOCAL 081 ARICA\r\n', 394),
(12777, 'WM LIDER - LOCAL 082 SANTIAGO\r\n', 394),
(12778, 'WM LIDER - LOCAL 083 SANTIAGO\r\n', 394),
(12779, 'WM LIDER - LOCAL 084 VI\r\n', 394),
(12780, 'WM LIDER - LOCAL 085 SANTIAGO\r\n', 394),
(12781, 'WM LIDER - LOCAL 086 SANTIAGO\r\n', 394),
(12782, 'WM LIDER - LOCAL 087 SANTIAGO\r\n', 394),
(12783, 'WM LIDER - LOCAL 088 SANTIAGO\r\n', 394),
(12784, 'WM LIDER - LOCAL 089 CONCEPCION\r\n', 394),
(12785, 'WM LIDER - LOCAL 091 ANTOFAGASTA\r\n', 394),
(12786, 'WM LIDER - LOCAL 092 LA SERENA\r\n', 394),
(12787, 'WM LIDER - LOCAL 093 OSORNO\r\n', 394),
(12788, 'WM LIDER - LOCAL 094 VALDIVIA\r\n', 394),
(12789, 'WM LIDER - LOCAL 095 SANTIAGO\r\n', 394),
(12790, 'WM LIDER - LOCAL 096 TEMUCO\r\n', 394),
(12791, 'WM LIDER - LOCAL 097 SANTIAGO\r\n', 394),
(12792, 'WM LIDER - LOCAL 098 CONCEPCION\r\n', 394),
(12793, 'WM LIDER - LOCAL 099 PUERTO MONTT\r\n', 394),
(12794, 'WM LIDER - LOCAL 120 TEMUCO\r\n', 394),
(12795, 'WM LIDER - LOCAL 121 PUNTA ARENAS\r\n', 394),
(12796, 'WM LIDER - LOCAL 122 VI\r\n', 394),
(12797, 'WM LIDER - LOCAL 125 OVALLE\r\n', 394),
(12798, 'WM LIDER - LOCAL 126 COPIAPO\r\n', 394),
(12799, 'WM LIDER - LOCAL 127 TALCA\r\n', 394),
(12800, 'WM LIDER - LOCAL 137 SANTIAGO\r\n', 394),
(12801, 'WM LIDER - LOCAL 143 TALCA\r\n', 394),
(12802, 'WM LIDER - LOCAL 459\r\n', 394),
(12803, 'WM LIDER - LOCAL 602 VI\r\n', 394),
(12804, 'WM LIDER - LOCAL 606 CONCEPCION\r\n', 394),
(12805, 'WM LIDER - LOCAL 607 SANTIAGO\r\n', 394),
(12806, 'WM LIDER - LOCAL 608 CHILLAN\r\n', 394),
(12807, 'WM LIDER - LOCAL 616 SANTIAGO\r\n', 394),
(12808, 'WM LIDER - LOCAL 618 OSORNO\r\n', 394),
(12809, 'WM LIDER - LOCAL 620 SANTIAGO\r\n', 394),
(12810, 'WM LIDER - LOCAL 626 SANTIAGO\r\n', 394),
(12811, 'WM LIDER - LOCAL 628 SANTA CRUZ\r\n', 394),
(12812, 'WM LIDER - LOCAL 631 CONCEPCION\r\n', 394),
(12813, 'WM LIDER - LOCAL 632 VI\r\n', 394),
(12814, 'WM LIDER - LOCAL 654 VI\r\n', 394),
(12815, 'WM LIDER - LOCAL 655 ANTOFAGASTA\r\n', 394),
(12816, 'WM LIDER - LOCAL 682 SANTIAGO\r\n', 394),
(12817, 'WM LIDER - LOCAL 684 LA SERENA\r\n', 394),
(12818, 'WM LIDER - LOCAL 686 LA SERENA\r\n', 394),
(12819, 'WM LIDER - LOCAL 693 SANTIAGO\r\n', 394),
(12820, 'WM LIDER - LOCAL 697 SAN FERNANDO\r\n', 394),
(12821, 'WM MAYORISTA - LOCAL 011 SANTIAGO\r\n', 394),
(12822, 'WM MAYORISTA - LOCAL 453 SANTIAGO\r\n', 394),
(12823, 'WM MAYORISTA - LOCAL 513 TALCA\r\n', 394),
(12824, 'WP HIPER - LOCAL 456 TEMUCO\r\n', 394),
(12825, 'WP SBA - LOCAL 198 SANTIAGO\r\n', 394),
(12826, 'WM EXPRESS - LOCAL 180 SANTIAGO\r\n', 394),
(12827, 'WP SBA - LOCAL 191 SANTIAGO\r\n', 394),
(12828, 'WM 0179\r\n', 394),
(12829, 'WM 0067\r\n', 394),
(12830, 'WM - 622 - SBA\r\n', 394),
(12831, 'WM 0186 SBA LO MARTINEZ\r\n', 394),
(12832, 'WM EKONO - LOCAL 1610 GALILEO\r\n', 394),
(12833, 'WM - 0541 - SBA\r\n', 394),
(12834, 'WM EXPRESS 0728\r\n', 394),
(12835, 'WM EXPRESS 0174\r\n', 394),
(12836, 'WM EXPRESS 0178\r\n', 394),
(12837, 'WM EXPRESS 0525\r\n', 394),
(12838, 'WM EXPRESS 0189\r\n', 394),
(12839, 'WM EKONO 0270\r\n', 394),
(13024, 'LIDER EXPRESS\r\n', 394),
(13025, 'HIPER LIDER\r\n', 394),
(13032, 'HIPER LIDER - 671\r\n', 394),
(13033, 'LIDER EXPRESS - 165\r\n', 394),
(13035, 'CENTRAL MAYORISTA - 159\r\n', 394),
(13046, 'WALMART VITACURA\r\n', 394),
(13047, 'VITACURA SUCURSAL..\r\n', 394),
(13067, 'EKONO - 548\r\n', 394);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_acciones`
--

CREATE TABLE `registro_acciones` (
  `id_registro` int(10) UNSIGNED NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `string_registro` varchar(255) DEFAULT NULL,
  `fecha_registro` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_acciones`
--

INSERT INTO `registro_acciones` (`id_registro`, `id_usuario`, `string_registro`, `fecha_registro`) VALUES
(1, 12345678, 'INICIO SESION:WEB REPORTES', '2017-04-25 15:29:00'),
(2, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 15:30:41'),
(3, 12345678, 'EDITAR USUARIO: 12345678', '2017-04-25 15:31:37'),
(4, 12345678, 'NUEVO USUARIO: 16574838', '2017-04-25 15:50:10'),
(5, 12345678, 'ACTUALIZAR LOCALES USUARIO: 16574838', '2017-04-25 15:50:21'),
(6, 12345678, 'ACTUALIZAR REPORTES USUARIO: 16574838', '2017-04-25 15:50:30'),
(7, 12345678, 'EDITAR USUARIO: 16574838', '2017-04-25 15:50:38'),
(8, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 15:50:46'),
(9, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 15:51:25'),
(10, 12345678, 'EDITAR USUARIO: 16574838', '2017-04-25 15:51:31'),
(11, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 15:51:39'),
(12, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 15:55:12'),
(13, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 17:28:23'),
(14, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 20:33:53'),
(15, 12345678, 'ACTUALIZAR LOCALES USUARIO: 16574838', '2017-04-25 20:34:09'),
(16, 12345678, 'ACTUALIZAR REPORTES USUARIO: 16574838', '2017-04-25 20:34:19'),
(17, 12345678, 'ACTUALIZAR REPORTES USUARIO: 16574838', '2017-04-25 20:34:24'),
(18, 12345678, 'EDITAR USUARIO: 16574838', '2017-04-25 20:34:33'),
(19, 12345678, 'EDITAR USUARIO: 16574838', '2017-04-25 20:34:44'),
(20, 12345678, 'INICIO SESION:WEB REPORTES', '2017-04-25 20:35:04'),
(21, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 20:35:14'),
(22, 12345678, 'EDITAR USUARIO: 16574838', '2017-04-25 20:35:19'),
(23, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 20:35:30'),
(24, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 20:43:52'),
(25, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 20:44:14'),
(26, 16574838, 'INICIO SESION:WEB REPORTES', '2017-04-25 20:44:51'),
(27, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-04-25 21:46:54'),
(28, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-03 14:29:29'),
(29, 12345678, 'INICIO SESION:WEB COMERCIAL', '2017-05-08 20:37:42'),
(30, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-08 20:37:57'),
(31, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-09 22:09:15'),
(32, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-09 22:11:38'),
(33, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-09 22:13:31'),
(34, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-30 14:10:14'),
(35, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-30 16:07:58'),
(36, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-30 16:13:23'),
(37, 12345678, 'INICIO SESION:WEB REPORTES', '2017-05-30 16:23:09'),
(38, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 21:46:57'),
(39, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:09:12'),
(40, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:12:35'),
(41, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:15:59'),
(42, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:19:10'),
(43, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:21:41'),
(44, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:30:15'),
(45, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-06 22:40:30'),
(46, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 01:52:05'),
(47, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 02:04:46'),
(48, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 02:24:44'),
(49, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 03:14:12'),
(50, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 14:14:15'),
(51, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 14:18:42'),
(52, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 14:41:15'),
(53, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 15:12:17'),
(54, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 15:18:10'),
(55, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 15:19:16'),
(56, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-07 15:20:56'),
(57, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-14 15:04:17'),
(58, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-14 16:25:30'),
(59, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-22 13:38:51'),
(60, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-22 13:52:14'),
(61, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-22 14:23:42'),
(62, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-23 14:37:41'),
(63, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-23 15:02:26'),
(64, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-23 15:03:25'),
(65, 12345678, 'INICIO SESION:WEB REPORTES', '2017-06-23 15:04:24'),
(66, 12345678, 'INICIO SESION:WEB REPORTES', '2017-07-03 15:27:16'),
(67, 12345678, 'INICIO SESION:WEB REPORTES', '2017-07-03 16:56:40'),
(68, 12345678, 'INICIO SESION:WEB REPORTES', '2017-07-03 17:17:43'),
(69, 12345678, 'INICIO SESION:WEB REPORTES', '2017-07-04 13:43:44'),
(70, 12345678, 'INICIO SESION:WEB REPORTES', '2017-07-06 17:12:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_reportes`
--

CREATE TABLE `tipos_reportes` (
  `id_reporte` int(11) NOT NULL,
  `nombre_reporte` varchar(255) NOT NULL,
  `estado` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipos_reportes`
--

INSERT INTO `tipos_reportes` (`id_reporte`, `nombre_reporte`, `estado`) VALUES
(1, 'Reporte 1', 1),
(2, 'Reporte 2', 0),
(3, 'Reporte 3', 0),
(4, 'Reporte 4', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) DEFAULT NULL,
  `apellido_usuario` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pass_update` int(11) DEFAULT '0' COMMENT 'verifica si se realizo cambio de pass al entrar por primera vez',
  `admin` int(11) DEFAULT '0' COMMENT 'permite ver todos los locales del cliente asociado o no',
  `id_cliente` int(11) DEFAULT '0',
  `estado` int(11) DEFAULT '1' COMMENT 'habilitado o inhabilitado'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre_usuario`, `apellido_usuario`, `password`, `email`, `pass_update`, `admin`, `id_cliente`, `estado`) VALUES
(12345678, 'Walmart', 'Administrador', '9kkn3lbJ7XiXn9rW7ST9N4NcdLfSMIFBv9ou5nldGjg', 'admin@walmart.cl', 1, 1, 394, 1),
(16574838, 'Felipe', 'Guzman', '9kkn3lbJ7XiXn9rW7ST9N4NcdLfSMIFBv9ou5nldGjg', 'fguzman@dhemax.cl', 1, 0, 394, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_comercial`
--

CREATE TABLE `usuarios_comercial` (
  `id_usuario_comercial` int(255) NOT NULL,
  `nombre_usuario_comercial` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `estado` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_comercial`
--

INSERT INTO `usuarios_comercial` (`id_usuario_comercial`, `nombre_usuario_comercial`, `password`, `estado`) VALUES
(12345678, 'Administrador Walmart', 'walmart', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_locales`
--

CREATE TABLE `usuarios_locales` (
  `id_usuario` int(11) NOT NULL,
  `id_local` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios_locales`
--

INSERT INTO `usuarios_locales` (`id_usuario`, `id_local`) VALUES
(12345678, 12415),
(12345678, 12416),
(12345678, 12417),
(12345678, 12418),
(12345678, 12419),
(16574838, 12415),
(16574838, 12416);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_reporte`
--

CREATE TABLE `usuario_reporte` (
  `id_usuario` int(11) NOT NULL,
  `id_reporte` int(11) NOT NULL,
  `estado` int(255) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario_reporte`
--

INSERT INTO `usuario_reporte` (`id_usuario`, `id_reporte`, `estado`) VALUES
(12345678, 1, 1),
(12345678, 2, 0),
(12345678, 3, 0),
(12345678, 4, 0),
(16574838, 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `locales`
--
ALTER TABLE `locales`
  ADD PRIMARY KEY (`id_local`);

--
-- Indices de la tabla `registro_acciones`
--
ALTER TABLE `registro_acciones`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indices de la tabla `tipos_reportes`
--
ALTER TABLE `tipos_reportes`
  ADD PRIMARY KEY (`id_reporte`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Indices de la tabla `usuarios_comercial`
--
ALTER TABLE `usuarios_comercial`
  ADD PRIMARY KEY (`id_usuario_comercial`);

--
-- Indices de la tabla `usuarios_locales`
--
ALTER TABLE `usuarios_locales`
  ADD PRIMARY KEY (`id_usuario`,`id_local`);

--
-- Indices de la tabla `usuario_reporte`
--
ALTER TABLE `usuario_reporte`
  ADD PRIMARY KEY (`id_usuario`,`id_reporte`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registro_acciones`
--
ALTER TABLE `registro_acciones`
  MODIFY `id_registro` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT de la tabla `tipos_reportes`
--
ALTER TABLE `tipos_reportes`
  MODIFY `id_reporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
