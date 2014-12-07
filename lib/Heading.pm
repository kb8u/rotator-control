package Heading;
use strict;
use warnings;
use Data::Dumper;
use Ham::Locator;
use Geo::Calc;
use Exporter 'import';

our @ISA = qw(Exporter);
our @EXPORT_OK = ('%prefix','heading_to');

our %prefix;
$prefix{'1A'}= { lat => 42, lon => 13 };
$prefix{'1S'}= { lat => 9, lon => 112 };
$prefix{'9M0'}= { lat => 9, lon => 112 };
$prefix{'XV9'}= { lat => 9, lon => 112 };
$prefix{'3A'}= { lat => 44, lon => 8 };
$prefix{'3B6'}= { lat => -10, lon => 57 };
$prefix{'3B7'}= { lat => -10, lon => 57 };
$prefix{'3B8'}= { lat => -20, lon => 58 };
$prefix{'3B9'}= { lat => -20, lon => 63 };
$prefix{'3C'}= { lat => 4, lon => 9 };
$prefix{'3C0'}= { lat => -1, lon => 6 };
$prefix{'3D2'}= { lat => -22, lon => 175 };
$prefix{'3D2'}= { lat => -18, lon => 178 };
$prefix{'3D2'}= { lat => -13, lon => 177 };
$prefix{'3DA'}= { lat => -26, lon => 31 };
$prefix{'3D6'}= { lat => -26, lon => 31 };
$prefix{'3V'}= { lat => 37, lon => 10 };
$prefix{'3W'}= { lat => 11, lon => 107 };
$prefix{'3X'}= { lat => 10, lon => -14 };
$prefix{'3Y'}= { lat => -54, lon => 3 };
$prefix{'3Y'}= { lat => -69, lon => -91 };
$prefix{'4J'}= { lat => 40, lon => 50 };
$prefix{'UD'}= { lat => 40, lon => 50 };
$prefix{'4L'}= { lat => 42, lon => 45 };
$prefix{'UF'}= { lat => 42, lon => 45 };
$prefix{'4O'}= { lat => 42, lon => 19 };
$prefix{'YU3'}= { lat => 42, lon => 19 };
$prefix{'YU6'}= { lat => 42, lon => 19 };
$prefix{'..'}= { lat => 42, lon => 19 };
$prefix{'4S'}= { lat => 7, lon => 80 };
$prefix{'4U'}= { lat => 46, lon => 6 };
$prefix{'4U'}= { lat => 41, lon => -74 };
$prefix{'4W'}= { lat => -9, lon => 126 };
$prefix{'4X'}= { lat => 32, lon => 35 };
$prefix{'5A'}= { lat => 33, lon => 13 };
$prefix{'5B'}= { lat => 35, lon => 33 };
$prefix{'5H'}= { lat => -7, lon => 39 };
$prefix{'5N'}= { lat => 6, lon => 3 };
$prefix{'5R'}= { lat => -19, lon => 48 };
$prefix{'5T'}= { lat => 18, lon => -16 };
$prefix{'5U'}= { lat => 14, lon => -2 };
$prefix{'5V'}= { lat => 6, lon => 1 };
$prefix{'5W'}= { lat => -14, lon => -172 };
$prefix{'5X'}= { lat => 0, lon => 33 };
$prefix{'5Z'}= { lat => -2, lon => 37 };
$prefix{'6W'}= { lat => 15, lon => -18 };
$prefix{'6Y'}= { lat => 18, lon => -77 };
$prefix{'7O'}= { lat => 13, lon => 45 };
$prefix{'7P'}= { lat => -29, lon => 27 };
$prefix{'7Q'}= { lat => -14, lon => 34 };
$prefix{'7X'}= { lat => 37, lon => 3 };
$prefix{'8P'}= { lat => 13, lon => -60 };
$prefix{'8Q'}= { lat => 4, lon => 73 };
$prefix{'8R'}= { lat => 6, lon => -58 };
$prefix{'9A'}= { lat => 46, lon => 16 };
$prefix{'9G'}= { lat => 5, lon => 0 };
$prefix{'9H'}= { lat => 36, lon => 15 };
$prefix{'9J'}= { lat => -15, lon => 28 };
$prefix{'9K'}= { lat => 29, lon => 48 };
$prefix{'9L'}= { lat => 9, lon => -13 };
$prefix{'9M2'}= { lat => 3, lon => 102 };
$prefix{'9M4'}= { lat => 3, lon => 102 };
$prefix{'9M6'}= { lat => 2, lon => 110 };
$prefix{'9M8'}= { lat => 2, lon => 110 };
$prefix{'9N'}= { lat => 28, lon => 85 };
$prefix{'9Q'}= { lat => -4, lon => 15 };
$prefix{'9U'}= { lat => -3, lon => 29 };
$prefix{'9V'}= { lat => 1, lon => 104 };
$prefix{'9X'}= { lat => -2, lon => 30 };
$prefix{'9Y'}= { lat => 11, lon => -62 };
$prefix{'A2'}= { lat => -25, lon => 26 };
$prefix{'A3'}= { lat => -21, lon => -175 };
$prefix{'A4'}= { lat => 24, lon => 59 };
$prefix{'A5'}= { lat => 28, lon => 90 };
$prefix{'A6'}= { lat => 24, lon => 54 };
$prefix{'A7'}= { lat => 25, lon => 52 };
$prefix{'A9'}= { lat => 26, lon => 51 };
$prefix{'AP'}= { lat => 34, lon => 73 };
$prefix{'BS7'}= { lat => 15, lon => 118 };
$prefix{'BV'}= { lat => 25, lon => 122 };
$prefix{'BM-BQ'}= { lat => 25, lon => 122 };
$prefix{'BU'}= { lat => 25, lon => 122 };
$prefix{'BW'}= { lat => 25, lon => 122 };
$prefix{'BX'}= { lat => 25, lon => 122 };
$prefix{'BV9'}= { lat => 21, lon => 116 };
$prefix{'BQ9'}= { lat => 21, lon => 116 };
$prefix{'BY'}= { lat => 40, lon => 116 };
$prefix{'C2'}= { lat => -1, lon => 167 };
$prefix{'C3'}= { lat => 43, lon => 2 };
$prefix{'C5'}= { lat => 13, lon => -17 };
$prefix{'C6'}= { lat => 25, lon => -77 };
$prefix{'C9'}= { lat => -26, lon => 33 };
$prefix{'CE'}= { lat => -33, lon => -71 };
$prefix{'CE0X'}= { lat => -26, lon => -80 };
$prefix{'CE0Y'}= { lat => -27, lon => -109 };
$prefix{'CE0Z'}= { lat => -34, lon => -79 };
$prefix{'CE9'}= { lat => -90, lon => 0 };
$prefix{'3Y'}= { lat => -90, lon => 0 };
$prefix{'4K1'}= { lat => -90, lon => 0 };
$prefix{'8J1'}= { lat => -90, lon => 0 };
$prefix{'AT0'}= { lat => -90, lon => 0 };
$prefix{'DP0'}= { lat => -90, lon => 0 };
$prefix{'FT0Y'}= { lat => -90, lon => 0 };
$prefix{'FT1Y'}= { lat => -90, lon => 0 };
$prefix{'FT2Y'}= { lat => -90, lon => 0 };
$prefix{'FT3Y'}= { lat => -90, lon => 0 };
$prefix{'FT4Y'}= { lat => -90, lon => 0 };
$prefix{'FT5Y'}= { lat => -90, lon => 0 };
$prefix{'FT6Y'}= { lat => -90, lon => 0 };
$prefix{'FT7Y'}= { lat => -90, lon => 0 };
$prefix{'FT8Y'}= { lat => -90, lon => 0 };
$prefix{'FT9Y'}= { lat => -90, lon => 0 };
$prefix{'KC4'}= { lat => -90, lon => 0 };
$prefix{'LU0Z'}= { lat => -90, lon => 0 };
$prefix{'LU1Z'}= { lat => -90, lon => 0 };
$prefix{'LU2Z'}= { lat => -90, lon => 0 };
$prefix{'LU3Z'}= { lat => -90, lon => 0 };
$prefix{'LU4Z'}= { lat => -90, lon => 0 };
$prefix{'LU5Z'}= { lat => -90, lon => 0 };
$prefix{'LU6Z'}= { lat => -90, lon => 0 };
$prefix{'LU7Z'}= { lat => -90, lon => 0 };
$prefix{'LU8Z'}= { lat => -90, lon => 0 };
$prefix{'LU9Z'}= { lat => -90, lon => 0 };
$prefix{'OR4'}= { lat => -90, lon => 0 };
$prefix{'R1AN'}= { lat => -90, lon => 0 };
$prefix{'VK0'}= { lat => -90, lon => 0 };
$prefix{'VP8'}= { lat => -90, lon => 0 };
$prefix{'ZL5'}= { lat => -90, lon => 0 };
$prefix{'ZS7'}= { lat => -90, lon => 0 };
$prefix{'ZX0'}= { lat => -90, lon => 0 };
$prefix{'CN'}= { lat => 34, lon => -7 };
$prefix{'CO'}= { lat => 23, lon => -82 };
$prefix{'CP'}= { lat => -17, lon => -68 };
$prefix{'CT'}= { lat => 39, lon => -9 };
$prefix{'CT3'}= { lat => 33, lon => -17 };
$prefix{'CU'}= { lat => 38, lon => -26 };
$prefix{'CX'}= { lat => -35, lon => -56 };
$prefix{'CY0'}= { lat => 44, lon => -60 };
$prefix{'CY9'}= { lat => 47, lon => -60 };
$prefix{'D2'}= { lat => -9, lon => 13 };
$prefix{'D4'}= { lat => 15, lon => -23 };
$prefix{'D6'}= { lat => -12, lon => 43 };
$prefix{'DL'}= { lat => 53, lon => 13 };
$prefix{'DU'}= { lat => 15, lon => 121 };
$prefix{'E3'}= { lat => 15, lon => 39 };
$prefix{'ET2'}= { lat => 15, lon => 39 };
$prefix{'E4'}= { lat => 32, lon => 34 };
$prefix{'E5'}= { lat => -10, lon => -161 };
$prefix{'ZK1'}= { lat => -10, lon => -161 };
$prefix{'E5'}= { lat => -22, lon => -158 };
$prefix{'ZK1'}= { lat => -22, lon => -158 };
$prefix{'E6'}= { lat => -19, lon => -170 };
$prefix{'E7'}= { lat => 44, lon => 18 };
$prefix{'T9'}= { lat => 44, lon => 18 };
$prefix{'EA'}= { lat => 40, lon => -4 };
$prefix{'EA6'}= { lat => 38, lon => 3 };
$prefix{'EA8'}= { lat => 28, lon => -15 };
$prefix{'EA9'}= { lat => 36, lon => -5 };
$prefix{'EI'}= { lat => 53, lon => -6 };
$prefix{'EK'}= { lat => 40, lon => 45 };
$prefix{'UG'}= { lat => 40, lon => 45 };
$prefix{'EL'}= { lat => 6, lon => -11 };
$prefix{'EP'}= { lat => 36, lon => 51 };
$prefix{'ER'}= { lat => 47, lon => 29 };
$prefix{'UO'}= { lat => 47, lon => 29 };
$prefix{'ES'}= { lat => 59, lon => 25 };
$prefix{'UR'}= { lat => 59, lon => 25 };
$prefix{'ET'}= { lat => 9, lon => 39 };
$prefix{'EV'}= { lat => 54, lon => 28 };
$prefix{'UC'}= { lat => 54, lon => 28 };
$prefix{'EX'}= { lat => 43, lon => 75 };
$prefix{'UM'}= { lat => 43, lon => 75 };
$prefix{'EY'}= { lat => 39, lon => 69 };
$prefix{'UJ'}= { lat => 39, lon => 69 };
$prefix{'EZ'}= { lat => 38, lon => 58 };
$prefix{'UH'}= { lat => 38, lon => 58 };
$prefix{'F'}= { lat => 49, lon => 2 };
$prefix{'FG'}= { lat => 16, lon => -62 };
$prefix{'TO'}= { lat => 16, lon => -62 };
$prefix{'FH'}= { lat => -13, lon => 45 };
$prefix{'FJ'}= { lat => 18, lon => -63 };
$prefix{'TO'}= { lat => 18, lon => -63 };
$prefix{'FK'}= { lat => -20, lon => 158 };
$prefix{'FK'}= { lat => -22, lon => 167 };
$prefix{'FM'}= { lat => 15, lon => -61 };
$prefix{'TO'}= { lat => 15, lon => -61 };
$prefix{'FO'}= { lat => -18, lon => -150 };
$prefix{'FO0'}= { lat => -23, lon => -149 };
$prefix{'FO0'}= { lat => 10, lon => -109 };
$prefix{'FO0'}= { lat => -9, lon => -140 };
$prefix{'FP'}= { lat => 47, lon => -56 };
$prefix{'FR'}= { lat => -21, lon => 55 };
$prefix{'TO'}= { lat => -21, lon => 55 };
$prefix{'FS'}= { lat => 18, lon => -63 };
$prefix{'TO'}= { lat => 18, lon => -63 };
$prefix{'FT0G'}= { lat => -12, lon => 47 };
$prefix{'FT1G'}= { lat => -12, lon => 47 };
$prefix{'FT2G'}= { lat => -12, lon => 47 };
$prefix{'FT3G'}= { lat => -12, lon => 47 };
$prefix{'FT4G'}= { lat => -12, lon => 47 };
$prefix{'FT5G'}= { lat => -12, lon => 47 };
$prefix{'FT6G'}= { lat => -12, lon => 47 };
$prefix{'FT7G'}= { lat => -12, lon => 47 };
$prefix{'FT8G'}= { lat => -12, lon => 47 };
$prefix{'FT9G'}= { lat => -12, lon => 47 };
$prefix{'FR/G'}= { lat => -12, lon => 47 };
$prefix{'TO'}= { lat => -12, lon => 47 };
$prefix{'FT0J'}= { lat => -17, lon => 43 };
$prefix{'FT1J'}= { lat => -17, lon => 43 };
$prefix{'FT2J'}= { lat => -17, lon => 43 };
$prefix{'FT3J'}= { lat => -17, lon => 43 };
$prefix{'FT4J'}= { lat => -17, lon => 43 };
$prefix{'FT5J'}= { lat => -17, lon => 43 };
$prefix{'FT6J'}= { lat => -17, lon => 43 };
$prefix{'FT7J'}= { lat => -17, lon => 43 };
$prefix{'FT8J'}= { lat => -17, lon => 43 };
$prefix{'FT9J'}= { lat => -17, lon => 43 };
$prefix{'FT0E'}= { lat => -17, lon => 43 };
$prefix{'FT1E'}= { lat => -17, lon => 43 };
$prefix{'FT2E'}= { lat => -17, lon => 43 };
$prefix{'FT3E'}= { lat => -17, lon => 43 };
$prefix{'FT4E'}= { lat => -17, lon => 43 };
$prefix{'FT5E'}= { lat => -17, lon => 43 };
$prefix{'FT6E'}= { lat => -17, lon => 43 };
$prefix{'FT7E'}= { lat => -17, lon => 43 };
$prefix{'FT8E'}= { lat => -17, lon => 43 };
$prefix{'FT9E'}= { lat => -17, lon => 43 };
$prefix{'FR/J'}= { lat => -17, lon => 43 };
$prefix{'TO'}= { lat => -17, lon => 43 };
$prefix{'FT0T'}= { lat => -16, lon => 54 };
$prefix{'FT1T'}= { lat => -16, lon => 54 };
$prefix{'FT2T'}= { lat => -16, lon => 54 };
$prefix{'FT3T'}= { lat => -16, lon => 54 };
$prefix{'FT4T'}= { lat => -16, lon => 54 };
$prefix{'FT5T'}= { lat => -16, lon => 54 };
$prefix{'FT6T'}= { lat => -16, lon => 54 };
$prefix{'FT7T'}= { lat => -16, lon => 54 };
$prefix{'FT8T'}= { lat => -16, lon => 54 };
$prefix{'FT9T'}= { lat => -16, lon => 54 };
$prefix{'FR/T'}= { lat => -16, lon => 54 };
$prefix{'TO'}= { lat => -16, lon => 54 };
$prefix{'FT0W'}= { lat => -46, lon => 52 };
$prefix{'FT1W'}= { lat => -46, lon => 52 };
$prefix{'FT2W'}= { lat => -46, lon => 52 };
$prefix{'FT3W'}= { lat => -46, lon => 52 };
$prefix{'FT4W'}= { lat => -46, lon => 52 };
$prefix{'FT5W'}= { lat => -46, lon => 52 };
$prefix{'FT6W'}= { lat => -46, lon => 52 };
$prefix{'FT7W'}= { lat => -46, lon => 52 };
$prefix{'FT8W'}= { lat => -46, lon => 52 };
$prefix{'FT9W'}= { lat => -46, lon => 52 };
$prefix{'FT0X'}= { lat => -50, lon => 70 };
$prefix{'FT1X'}= { lat => -50, lon => 70 };
$prefix{'FT2X'}= { lat => -50, lon => 70 };
$prefix{'FT3X'}= { lat => -50, lon => 70 };
$prefix{'FT4X'}= { lat => -50, lon => 70 };
$prefix{'FT5X'}= { lat => -50, lon => 70 };
$prefix{'FT6X'}= { lat => -50, lon => 70 };
$prefix{'FT7X'}= { lat => -50, lon => 70 };
$prefix{'FT8X'}= { lat => -50, lon => 70 };
$prefix{'FT9X'}= { lat => -50, lon => 70 };
$prefix{'FT0Z'}= { lat => -38, lon => 78 };
$prefix{'FT1Z'}= { lat => -38, lon => 78 };
$prefix{'FT2Z'}= { lat => -38, lon => 78 };
$prefix{'FT3Z'}= { lat => -38, lon => 78 };
$prefix{'FT4Z'}= { lat => -38, lon => 78 };
$prefix{'FT5Z'}= { lat => -38, lon => 78 };
$prefix{'FT6Z'}= { lat => -38, lon => 78 };
$prefix{'FT7Z'}= { lat => -38, lon => 78 };
$prefix{'FT8Z'}= { lat => -38, lon => 78 };
$prefix{'FT9Z'}= { lat => -38, lon => 78 };
$prefix{'FW'}= { lat => -14, lon => -172 };
$prefix{'FY'}= { lat => 5, lon => -52 };
$prefix{'TO'}= { lat => 5, lon => -52 };
$prefix{'G'}= { lat => 52, lon => 0 };
$prefix{'2E'}= { lat => 52, lon => 0 };
$prefix{'GX'}= { lat => 52, lon => 0 };
$prefix{'M'}= { lat => 52, lon => 0 };
$prefix{'MX'}= { lat => 52, lon => 0 };
$prefix{'GD'}= { lat => 54, lon => -4 };
$prefix{'2D'}= { lat => 54, lon => -4 };
$prefix{'GT'}= { lat => 54, lon => -4 };
$prefix{'MD'}= { lat => 54, lon => -4 };
$prefix{'MT'}= { lat => 54, lon => -4 };
$prefix{'GI'}= { lat => 55, lon => -6 };
$prefix{'2I'}= { lat => 55, lon => -6 };
$prefix{'GN'}= { lat => 55, lon => -6 };
$prefix{'MI'}= { lat => 55, lon => -6 };
$prefix{'MN'}= { lat => 55, lon => -6 };
$prefix{'GJ'}= { lat => 49, lon => -2 };
$prefix{'2J'}= { lat => 49, lon => -2 };
$prefix{'GH'}= { lat => 49, lon => -2 };
$prefix{'MJ'}= { lat => 49, lon => -2 };
$prefix{'MH'}= { lat => 49, lon => -2 };
$prefix{'GM'}= { lat => 57, lon => -2 };
$prefix{'2M'}= { lat => 57, lon => -2 };
$prefix{'GS'}= { lat => 57, lon => -2 };
$prefix{'GZ'}= { lat => 57, lon => -2 };
$prefix{'MM'}= { lat => 57, lon => -2 };
$prefix{'MS'}= { lat => 57, lon => -2 };
$prefix{'MZ'}= { lat => 57, lon => -2 };
$prefix{'GU'}= { lat => 49, lon => -3 };
$prefix{'2U'}= { lat => 49, lon => -3 };
$prefix{'GP'}= { lat => 49, lon => -3 };
$prefix{'MU'}= { lat => 49, lon => -3 };
$prefix{'MP'}= { lat => 49, lon => -3 };
$prefix{'GW'}= { lat => 52, lon => -3 };
$prefix{'2W'}= { lat => 52, lon => -3 };
$prefix{'GC'}= { lat => 52, lon => -3 };
$prefix{'MW'}= { lat => 52, lon => -3 };
$prefix{'MC'}= { lat => 52, lon => -3 };
$prefix{'H4'}= { lat => -9, lon => 160 };
$prefix{'H40'}= { lat => -11, lon => 166 };
$prefix{'HA'}= { lat => 48, lon => 19 };
$prefix{'HB'}= { lat => 47, lon => 7 };
$prefix{'HB0'}= { lat => 47, lon => 10 };
$prefix{'HC'}= { lat => 0, lon => -79 };
$prefix{'HC8'}= { lat => -1, lon => -90 };
$prefix{'HH'}= { lat => 19, lon => -72 };
$prefix{'HI'}= { lat => 18, lon => -70 };
$prefix{'HK'}= { lat => 5, lon => -74 };
$prefix{'HK0'}= { lat => 4, lon => -82 };
$prefix{'HK0'}= { lat => 13, lon => -82 };
$prefix{'HL'}= { lat => 38, lon => 127 };
$prefix{'HP'}= { lat => 9, lon => -80 };
$prefix{'HR'}= { lat => 14, lon => -87 };
$prefix{'HS'}= { lat => 14, lon => 101 };
$prefix{'HV'}= { lat => 42, lon => 13 };
$prefix{'HZ'}= { lat => 25, lon => 47 };
$prefix{'I'}= { lat => 42, lon => 12 };
$prefix{'IS'}= { lat => 39, lon => 9 };
$prefix{'J2'}= { lat => 12, lon => 43 };
$prefix{'J3'}= { lat => 12, lon => -62 };
$prefix{'J5'}= { lat => 12, lon => -16 };
$prefix{'J6'}= { lat => 14, lon => -61 };
$prefix{'J7'}= { lat => 15, lon => -61 };
$prefix{'J8'}= { lat => 13, lon => -61 };
$prefix{'JA'}= { lat => 36, lon => 140 };
$prefix{'JD'}= { lat => 24, lon => 154 };
$prefix{'JD'}= { lat => 28, lon => 142 };
$prefix{'JT'}= { lat => 48, lon => 107 };
$prefix{'JW'}= { lat => 78, lon => 16 };
$prefix{'JX'}= { lat => 71, lon => -9 };
$prefix{'JY'}= { lat => 32, lon => 36 };
$prefix{'K'}= { lat => 39, lon => -77 };
$prefix{'KG4'}= { lat => 20, lon => -75 };
$prefix{'KH0'}= { lat => 15, lon => 146 };
$prefix{'AH0'}= { lat => 15, lon => 146 };
$prefix{'NH0'}= { lat => 15, lon => 146 };
$prefix{'WH0'}= { lat => 15, lon => 146 };
$prefix{'KH1'}= { lat => 0, lon => -176 };
$prefix{'AH1'}= { lat => 0, lon => -176 };
$prefix{'NH1'}= { lat => 0, lon => -176 };
$prefix{'WH1'}= { lat => 0, lon => -176 };
$prefix{'KH2'}= { lat => 13, lon => 145 };
$prefix{'AH2'}= { lat => 13, lon => 145 };
$prefix{'NH2'}= { lat => 13, lon => 145 };
$prefix{'WH2'}= { lat => 13, lon => 145 };
$prefix{'KH3'}= { lat => 17, lon => -170 };
$prefix{'AH3'}= { lat => 17, lon => -170 };
$prefix{'NH3'}= { lat => 17, lon => -170 };
$prefix{'WH3'}= { lat => 17, lon => -170 };
$prefix{'KH4'}= { lat => 28, lon => -177 };
$prefix{'AH4'}= { lat => 28, lon => -177 };
$prefix{'NH4'}= { lat => 28, lon => -177 };
$prefix{'WH4'}= { lat => 28, lon => -177 };
$prefix{'KH5'}= { lat => 6, lon => -162 };
$prefix{'AH5'}= { lat => 6, lon => -162 };
$prefix{'NH5'}= { lat => 6, lon => -162 };
$prefix{'WH5'}= { lat => 6, lon => -162 };
$prefix{'KH5K'}= { lat => 6, lon => -162 };
$prefix{'AH5K'}= { lat => 6, lon => -162 };
$prefix{'NH5K'}= { lat => 6, lon => -162 };
$prefix{'WH5K'}= { lat => 6, lon => -162 };
$prefix{'KH6'}= { lat => 21, lon => -158 };
$prefix{'AH6'}= { lat => 21, lon => -158 };
$prefix{'NH6'}= { lat => 21, lon => -158 };
$prefix{'WH6'}= { lat => 21, lon => -158 };
$prefix{'AH7'}= { lat => 21, lon => -158 };
$prefix{'KH7'}= { lat => 21, lon => -158 };
$prefix{'NH7'}= { lat => 21, lon => -158 };
$prefix{'WH7'}= { lat => 21, lon => -158 };
$prefix{'KH7K'}= { lat => 29, lon => -178 };
$prefix{'AH7K'}= { lat => 29, lon => -178 };
$prefix{'NH7K'}= { lat => 29, lon => -178 };
$prefix{'WH7K'}= { lat => 29, lon => -178 };
$prefix{'KH8'}= { lat => -14, lon => -171 };
$prefix{'AH8'}= { lat => -14, lon => -171 };
$prefix{'NH8'}= { lat => -14, lon => -171 };
$prefix{'WH8'}= { lat => -14, lon => -171 };
$prefix{'KH8S'}= { lat => -11, lon => -171 };
$prefix{'AH8S'}= { lat => -11, lon => -171 };
$prefix{'NH8S'}= { lat => -11, lon => -171 };
$prefix{'WH8S'}= { lat => -11, lon => -171 };
$prefix{'KH9'}= { lat => 19, lon => 167 };
$prefix{'AH9'}= { lat => 19, lon => 167 };
$prefix{'NH9'}= { lat => 19, lon => 167 };
$prefix{'WH9'}= { lat => 19, lon => 167 };
$prefix{'KL0'}= { lat => 58, lon => -134 };
$prefix{'KL1'}= { lat => 58, lon => -134 };
$prefix{'KL2'}= { lat => 58, lon => -134 };
$prefix{'KL3'}= { lat => 58, lon => -134 };
$prefix{'KL4'}= { lat => 58, lon => -134 };
$prefix{'KL5'}= { lat => 58, lon => -134 };
$prefix{'KL6'}= { lat => 58, lon => -134 };
$prefix{'KL7'}= { lat => 58, lon => -134 };
$prefix{'KL8'}= { lat => 58, lon => -134 };
$prefix{'KL9'}= { lat => 58, lon => -134 };
$prefix{'AL0'}= { lat => 58, lon => -134 };
$prefix{'AL1'}= { lat => 58, lon => -134 };
$prefix{'AL2'}= { lat => 58, lon => -134 };
$prefix{'AL3'}= { lat => 58, lon => -134 };
$prefix{'AL4'}= { lat => 58, lon => -134 };
$prefix{'AL5'}= { lat => 58, lon => -134 };
$prefix{'AL6'}= { lat => 58, lon => -134 };
$prefix{'AL7'}= { lat => 58, lon => -134 };
$prefix{'AL8'}= { lat => 58, lon => -134 };
$prefix{'AL9'}= { lat => 58, lon => -134 };
$prefix{'NL0'}= { lat => 58, lon => -134 };
$prefix{'NL1'}= { lat => 58, lon => -134 };
$prefix{'NL2'}= { lat => 58, lon => -134 };
$prefix{'NL3'}= { lat => 58, lon => -134 };
$prefix{'NL4'}= { lat => 58, lon => -134 };
$prefix{'NL5'}= { lat => 58, lon => -134 };
$prefix{'NL6'}= { lat => 58, lon => -134 };
$prefix{'NL7'}= { lat => 58, lon => -134 };
$prefix{'NL8'}= { lat => 58, lon => -134 };
$prefix{'NL9'}= { lat => 58, lon => -134 };
$prefix{'WL0'}= { lat => 58, lon => -134 };
$prefix{'WL1'}= { lat => 58, lon => -134 };
$prefix{'WL2'}= { lat => 58, lon => -134 };
$prefix{'WL3'}= { lat => 58, lon => -134 };
$prefix{'WL4'}= { lat => 58, lon => -134 };
$prefix{'WL5'}= { lat => 58, lon => -134 };
$prefix{'WL6'}= { lat => 58, lon => -134 };
$prefix{'WL7'}= { lat => 58, lon => -134 };
$prefix{'WL8'}= { lat => 58, lon => -134 };
$prefix{'WL9'}= { lat => 58, lon => -134 };
$prefix{'KP1'}= { lat => 18, lon => -75 };
$prefix{'NP1'}= { lat => 18, lon => -75 };
$prefix{'WP1'}= { lat => 18, lon => -75 };
$prefix{'KP2'}= { lat => 18, lon => -65 };
$prefix{'NP2'}= { lat => 18, lon => -65 };
$prefix{'WP2'}= { lat => 18, lon => -65 };
$prefix{'KP4'}= { lat => 18, lon => -66 };
$prefix{'KP3'}= { lat => 18, lon => -66 };
$prefix{'NP3'}= { lat => 18, lon => -66 };
$prefix{'WP3'}= { lat => 18, lon => -66 };
$prefix{'NP4'}= { lat => 18, lon => -66 };
$prefix{'WP4'}= { lat => 18, lon => -66 };
$prefix{'KP5'}= { lat => 18, lon => -68 };
$prefix{'NP5'}= { lat => 18, lon => -68 };
$prefix{'WP5'}= { lat => 18, lon => -68 };
$prefix{'LA'}= { lat => 60, lon => 11 };
$prefix{'LU'}= { lat => -35, lon => -58 };
$prefix{'LX'}= { lat => 50, lon => 6 };
$prefix{'LY'}= { lat => 55, lon => 25 };
$prefix{'UP'}= { lat => 55, lon => 25 };
$prefix{'LZ'}= { lat => 43, lon => 23 };
$prefix{'OA'}= { lat => -12, lon => -78 };
$prefix{'OD'}= { lat => 34, lon => 36 };
$prefix{'OE'}= { lat => 48, lon => 16 };
$prefix{'OH'}= { lat => 60, lon => 25 };
$prefix{'OH0'}= { lat => 60, lon => 20 };
$prefix{'OJ0'}= { lat => 60, lon => 19 };
$prefix{'OK'}= { lat => 50, lon => 15 };
$prefix{'OM'}= { lat => 48, lon => 17 };
$prefix{'ON'}= { lat => 51, lon => 4 };
$prefix{'OX'}= { lat => 64, lon => -52 };
$prefix{'XP'}= { lat => 64, lon => -52 };
$prefix{'OY'}= { lat => 62, lon => -7 };
$prefix{'OW'}= { lat => 62, lon => -7 };
$prefix{'OZ'}= { lat => 56, lon => 13 };
$prefix{'P2'}= { lat => -10, lon => 147 };
$prefix{'P4'}= { lat => 13, lon => -70 };
$prefix{'P5'}= { lat => 39, lon => 126 };
$prefix{'PA'}= { lat => 52, lon => 5 };
$prefix{'PJ2'}= { lat => 12, lon => -69 };
$prefix{'PJ4'}= { lat => 12, lon => -68 };
$prefix{'PJ5'}= { lat => 18, lon => -63 };
$prefix{'PJ6'}= { lat => 18, lon => -63 };
$prefix{'PJ7'}= { lat => 18, lon => -63 };
$prefix{'PY'}= { lat => -16, lon => -48 };
$prefix{'PY0F'}= { lat => -4, lon => -32 };
$prefix{'PY0ZF'}= { lat => -4, lon => -32 };
$prefix{'PY0P'}= { lat => 1, lon => -29 };
$prefix{'PY0ZP'}= { lat => 1, lon => -29 };
$prefix{'PY0T'}= { lat => -21, lon => -29 };
$prefix{'PY0ZT'}= { lat => -21, lon => -29 };
$prefix{'PZ'}= { lat => 6, lon => -55 };
$prefix{'R1FJ'}= { lat => 81, lon => 48 };
$prefix{'4K2'}= { lat => 81, lon => 48 };
$prefix{'R1MV'}= { lat => 61, lon => 29 };
$prefix{'4J1'}= { lat => 61, lon => 29 };
$prefix{'S0'}= { lat => 27, lon => -13 };
$prefix{'S2'}= { lat => 24, lon => 90 };
$prefix{'S5'}= { lat => 46, lon => 15 };
$prefix{'S7'}= { lat => -5, lon => 55 };
$prefix{'S9'}= { lat => 0, lon => 7 };
$prefix{'SM'}= { lat => 59, lon => 18 };
$prefix{'SP'}= { lat => 52, lon => 21 };
$prefix{'ST'}= { lat => 16, lon => 33 };
$prefix{'SU'}= { lat => 31, lon => 31 };
$prefix{'SV'}= { lat => 38, lon => 24 };
$prefix{'SV1/A'}= { lat => 40, lon => 24 };
$prefix{'SY2'}= { lat => 40, lon => 24 };
$prefix{'SV5'}= { lat => 36, lon => 28 };
$prefix{'SV9'}= { lat => 36, lon => 24 };
$prefix{'T2'}= { lat => -9, lon => 179 };
$prefix{'T30'}= { lat => -1, lon => 173 };
$prefix{'T31'}= { lat => -4, lon => -171 };
$prefix{'T32'}= { lat => 2, lon => -158 };
$prefix{'T33'}= { lat => -1, lon => 170 };
$prefix{'T5'}= { lat => 2, lon => 46 };
$prefix{'T6'}= { lat => 35, lon => 69 };
$prefix{'T7'}= { lat => 44, lon => 12 };
$prefix{'T8'}= { lat => 7, lon => 134 };
$prefix{'KC6'}= { lat => 7, lon => 134 };
$prefix{'TA'}= { lat => 40, lon => 33 };
$prefix{'TF'}= { lat => 64, lon => -22 };
$prefix{'TG'}= { lat => 16, lon => -92 };
$prefix{'TI'}= { lat => 10, lon => -84 };
$prefix{'TI9'}= { lat => 6, lon => -87 };
$prefix{'TJ'}= { lat => 4, lon => 12 };
$prefix{'TK'}= { lat => 42, lon => 9 };
$prefix{'TL'}= { lat => 5, lon => 19 };
$prefix{'TN'}= { lat => -4, lon => 15 };
$prefix{'TR'}= { lat => 1, lon => 10 };
$prefix{'TT'}= { lat => 12, lon => 15 };
$prefix{'TU'}= { lat => 7, lon => -5 };
$prefix{'TY'}= { lat => 6, lon => 3 };
$prefix{'TZ'}= { lat => 13, lon => -8 };
$prefix{'UA'}= { lat => 56, lon => 37 };
$prefix{'U'}= { lat => 56, lon => 37 };
$prefix{'UA2'}= { lat => 55, lon => 21 };
$prefix{'UA9'}= { lat => 52, lon => 104 };
$prefix{'UA0'}= { lat => 52, lon => 104 };
$prefix{'UK'}= { lat => 41, lon => 69 };
$prefix{'UI'}= { lat => 41, lon => 69 };
$prefix{'UN'}= { lat => 43, lon => 77 };
$prefix{'UL'}= { lat => 43, lon => 77 };
$prefix{'UR'}= { lat => 50, lon => 30 };
$prefix{'UB'}= { lat => 50, lon => 30 };
$prefix{'V2'}= { lat => 17, lon => -62 };
$prefix{'V3'}= { lat => 17, lon => -89 };
$prefix{'V4'}= { lat => 17, lon => -63 };
$prefix{'V5'}= { lat => -22, lon => 17 };
$prefix{'V6'}= { lat => 7, lon => 158 };
$prefix{'KC6'}= { lat => 7, lon => 158 };
$prefix{'V7'}= { lat => 7, lon => 171 };
$prefix{'KX6'}= { lat => 7, lon => 171 };
$prefix{'V8'}= { lat => 5, lon => 115 };
$prefix{'VE'}= { lat => 45, lon => -76 };
$prefix{'VA'}= { lat => 45, lon => -76 };
$prefix{'VO'}= { lat => 45, lon => -76 };
$prefix{'VY'}= { lat => 45, lon => -76 };
$prefix{'VK'}= { lat => -35, lon => 149 };
$prefix{'VK0'}= { lat => -53, lon => 73 };
$prefix{'VK0'}= { lat => -54, lon => 159 };
$prefix{'VK9C'}= { lat => -12, lon => 97 };
$prefix{'VK9Y'}= { lat => -12, lon => 97 };
$prefix{'VK9L'}= { lat => -31, lon => 159 };
$prefix{'VK9M'}= { lat => -17, lon => 156 };
$prefix{'VK9Z'}= { lat => -17, lon => 156 };
$prefix{'VK9N'}= { lat => -29, lon => 168 };
$prefix{'VK9W'}= { lat => -16, lon => 150 };
$prefix{'VK9Z'}= { lat => -16, lon => 150 };
$prefix{'VK9X'}= { lat => -10, lon => 106 };
$prefix{'VP2E'}= { lat => 18, lon => -63 };
$prefix{'VP2M'}= { lat => 17, lon => -62 };
$prefix{'VP2V'}= { lat => 18, lon => -65 };
$prefix{'VP5'}= { lat => 22, lon => -71 };
$prefix{'VP6'}= { lat => -25, lon => -128 };
$prefix{'VR6'}= { lat => -25, lon => -128 };
$prefix{'VP6'}= { lat => -25, lon => -125 };
$prefix{'VP8'}= { lat => -52, lon => -58 };
$prefix{'VP8'}= { lat => -54, lon => -37 };
$prefix{'LU0Z'}= { lat => -54, lon => -37 };
$prefix{'LU1Z'}= { lat => -54, lon => -37 };
$prefix{'LU2Z'}= { lat => -54, lon => -37 };
$prefix{'LU3Z'}= { lat => -54, lon => -37 };
$prefix{'LU4Z'}= { lat => -54, lon => -37 };
$prefix{'LU5Z'}= { lat => -54, lon => -37 };
$prefix{'LU6Z'}= { lat => -54, lon => -37 };
$prefix{'LU7Z'}= { lat => -54, lon => -37 };
$prefix{'LU8Z'}= { lat => -54, lon => -37 };
$prefix{'LU9Z'}= { lat => -54, lon => -37 };
$prefix{'VP8'}= { lat => -61, lon => -45 };
$prefix{'LU0Z'}= { lat => -61, lon => -45 };
$prefix{'LU1Z'}= { lat => -61, lon => -45 };
$prefix{'LU2Z'}= { lat => -61, lon => -45 };
$prefix{'LU3Z'}= { lat => -61, lon => -45 };
$prefix{'LU4Z'}= { lat => -61, lon => -45 };
$prefix{'LU5Z'}= { lat => -61, lon => -45 };
$prefix{'LU6Z'}= { lat => -61, lon => -45 };
$prefix{'LU7Z'}= { lat => -61, lon => -45 };
$prefix{'LU8Z'}= { lat => -61, lon => -45 };
$prefix{'LU9Z'}= { lat => -61, lon => -45 };
$prefix{'VP8'}= { lat => -59, lon => -27 };
$prefix{'LU0Z'}= { lat => -59, lon => -27 };
$prefix{'LU1Z'}= { lat => -59, lon => -27 };
$prefix{'LU2Z'}= { lat => -59, lon => -27 };
$prefix{'LU3Z'}= { lat => -59, lon => -27 };
$prefix{'LU4Z'}= { lat => -59, lon => -27 };
$prefix{'LU5Z'}= { lat => -59, lon => -27 };
$prefix{'LU6Z'}= { lat => -59, lon => -27 };
$prefix{'LU7Z'}= { lat => -59, lon => -27 };
$prefix{'LU8Z'}= { lat => -59, lon => -27 };
$prefix{'LU9Z'}= { lat => -59, lon => -27 };
$prefix{'VP8'}= { lat => -62, lon => -58 };
$prefix{'LU0Z'}= { lat => -62, lon => -58 };
$prefix{'LU1Z'}= { lat => -62, lon => -58 };
$prefix{'LU2Z'}= { lat => -62, lon => -58 };
$prefix{'LU3Z'}= { lat => -62, lon => -58 };
$prefix{'LU4Z'}= { lat => -62, lon => -58 };
$prefix{'LU5Z'}= { lat => -62, lon => -58 };
$prefix{'LU6Z'}= { lat => -62, lon => -58 };
$prefix{'LU7Z'}= { lat => -62, lon => -58 };
$prefix{'LU8Z'}= { lat => -62, lon => -58 };
$prefix{'LU9Z'}= { lat => -62, lon => -58 };
$prefix{'CE9'}= { lat => -62, lon => -58 };
$prefix{'HF0'}= { lat => -62, lon => -58 };
$prefix{'R1AN'}= { lat => -62, lon => -58 };
$prefix{'4K1'}= { lat => -62, lon => -58 };
$prefix{'VP9'}= { lat => 32, lon => -65 };
$prefix{'VQ9'}= { lat => -7, lon => 72 };
$prefix{'VR2'}= { lat => 22, lon => 114 };
$prefix{'VS6'}= { lat => 22, lon => 114 };
$prefix{'VU'}= { lat => 29, lon => 77 };
$prefix{'VU4'}= { lat => 12, lon => 93 };
$prefix{'VU7'}= { lat => 11, lon => 73 };
$prefix{'XE'}= { lat => 20, lon => -99 };
$prefix{'XF4'}= { lat => 18, lon => -113 };
$prefix{'XT'}= { lat => 12, lon => -2 };
$prefix{'XU'}= { lat => 12, lon => 105 };
$prefix{'XW'}= { lat => 20, lon => 102 };
$prefix{'XX9'}= { lat => 22, lon => 114 };
$prefix{'XZ'}= { lat => 17, lon => 96 };
$prefix{'YB'}= { lat => -6, lon => 107 };
$prefix{'YI'}= { lat => 32, lon => 45 };
$prefix{'YJ'}= { lat => -18, lon => 168 };
$prefix{'YK'}= { lat => 34, lon => 36 };
$prefix{'YL'}= { lat => 57, lon => 24 };
$prefix{'UQ'}= { lat => 57, lon => 24 };
$prefix{'YN'}= { lat => 12, lon => -87 };
$prefix{'YO'}= { lat => 45, lon => 26 };
$prefix{'YS'}= { lat => 14, lon => -89 };
$prefix{'YU'}= { lat => 45, lon => 21 };
$prefix{'YV'}= { lat => 10, lon => -67 };
$prefix{'YV0'}= { lat => 16, lon => -64 };
$prefix{'Z2'}= { lat => -18, lon => 31 };
$prefix{'Z3'}= { lat => 42, lon => 22 };
$prefix{'4N5'}= { lat => 42, lon => 22 };
$prefix{'Z8'}= { lat => 4, lon => 32 };
$prefix{'ZA'}= { lat => 41, lon => 20 };
$prefix{'ZB'}= { lat => 37, lon => -5 };
$prefix{'ZC'}= { lat => 35, lon => 33 };
$prefix{'ZD7'}= { lat => -16, lon => -6 };
$prefix{'ZD8'}= { lat => -8, lon => -14 };
$prefix{'ZD9'}= { lat => -37, lon => -12 };
$prefix{'ZF'}= { lat => 19, lon => -81 };
$prefix{'ZK3'}= { lat => -9, lon => -171 };
$prefix{'ZL'}= { lat => -41, lon => 175 };
$prefix{'ZL7'}= { lat => -44, lon => -177 };
$prefix{'ZL8'}= { lat => -29, lon => -178 };
$prefix{'ZL9'}= { lat => -51, lon => 166 };
$prefix{'ZP'}= { lat => -26, lon => -57 };
$prefix{'ZS'}= { lat => -26, lon => 28 };
$prefix{'ZS8'}= { lat => -47, lon => 38 };
$prefix{'AK'} = { lat => 61.38, lon => -152.26 };
$prefix{'AL'} = { lat => 32.79, lon => -86.8 };
$prefix{'AR'} = { lat => 34.95, lon => -92.38 };
$prefix{'AS'} = { lat => 14.24, lon => -170.71 };
$prefix{'AZ'} = { lat => 33.77, lon => -111.38 };
$prefix{'CA'} = { lat => 36.17, lon => -119.74 };
$prefix{'DC'} = { lat => 38.89, lon => -77.02 };
$prefix{'DE'} = { lat => 39.34, lon => -75.51 };
$prefix{'FL'} = { lat => 27.83, lon => -81.71 };
$prefix{'GA'} = { lat => 32.98, lon => -83.64 };
$prefix{'IA'} = { lat => 42, lon => -93.21 };
$prefix{'ID'} = { lat => 44.23, lon => -114.51 };
$prefix{'IL'} = { lat => 40.33, lon => -89 };
$prefix{'IN'} = { lat => 39.86, lon => -86.26 };
$prefix{'KS'} = { lat => 38.51, lon => -96.8 };
$prefix{'KY'} = { lat => 37.66, lon => -84.65 };
$prefix{'MA'} = { lat => 42.23, lon => -71.53 };
$prefix{'ME'} = { lat => 44.6, lon => -69.39 };
$prefix{'MO'} = { lat => 38.46, lon => -92.3 };
$prefix{'NC'} = { lat => 35.64, lon => -79.84 };
$prefix{'ND'} = { lat => 47.53, lon => -99.79 };
$prefix{'NE'} = { lat => 41.12, lon => -98.28 };
$prefix{'NH'} = { lat => 43.41, lon => -71.56 };
$prefix{'NJ'} = { lat => 40.31, lon => -74.5 };
$prefix{'NM'} = { lat => 34.83, lon => -106.23 };
$prefix{'NV'} = { lat => 38.41, lon => -117.12 };
$prefix{'NY'} = { lat => 42.14, lon => -74.93 };
$prefix{'OR'} = { lat => 44.56, lon => -122.12 };
$prefix{'PR'} = { lat => 18.27, lon => -66.33 };
$prefix{'RI'} = { lat => 41.67, lon => -71.51 };
$prefix{'SC'} = { lat => 33.81, lon => -80.9 };
$prefix{'SD'} = { lat => 44.28, lon => -99.46 };
$prefix{'TN'} = { lat => 35.74, lon => -86.74 };
$prefix{'TX'} = { lat => 31.1, lon => -97.64 };
$prefix{'UT'} = { lat => 40.11, lon => -111.85 };
$prefix{'VI'} = { lat => 18, lon => -64.81 };
$prefix{'VT'} = { lat => 44.04, lon => -72.7 };
$prefix{'WA'} = { lat => 47.39, lon => -121.57 };
$prefix{'WI'} = { lat => 44.25, lon => -89.63 };
$prefix{'WV'} = { lat => 38.46, lon => -80.96 };
$prefix{'WY'} = { lat => 42.74, lon => -107.2 };


sub heading_to {
  my ($from_grid,$to_grid,$call_prefix) = @_;

  return undef if (! defined $from_grid);
  my $loc_ins = new Ham::Locator;
  $loc_ins->set_loc($from_grid);
  my ($from_lat,$from_lon) = $loc_ins->loc2latlng();

  my ($to_lat,$to_lon);
  if (defined $to_grid) {
    $loc_ins->set_loc($to_grid);
    ($to_lat,$to_lon) = $loc_ins->loc2latlng;
  }
  if (defined $call_prefix) {
    $call_prefix =~ s/\s+//g;
    $call_prefix = uc $call_prefix;
    return undef unless (exists $prefix{$call_prefix});

    $to_lat = $prefix{$call_prefix}->{lat};
    $to_lon = $prefix{$call_prefix}->{lon};
  }

  my $gc = Geo::Calc->new(lat => $from_lat, lon => $from_lon);
  return $gc->bearing_to({lat => $to_lat, lon => $to_lon });
}


1;
