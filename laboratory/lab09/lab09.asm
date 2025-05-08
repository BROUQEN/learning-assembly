.nolist 				// komentarz - wylacza podglad tego co sie dzieje dalej
						// Wstrzymuje listowanie programu Ÿród³owego.
						// Równowa¿na dyrektywie .XLIST.

.include "m16def.inc" 	; komentarz - dolacz biblioteke - jest nolist aby go nie
						; ogladac za kazdym razem

.list					/* Powoduje rozpoczêcie tworzenia zbioru z listingiem
						asemblacji. Ustawienie standardowe.
						przywracamy mozliwosc podgladania tego co jest dalej */

.listmac				// wyswietlenie na ekranie makrodefinicji
.device ATmega16		// informuje srodowisko z jakim procesorem mamy do czynienia
	
/* w ten sposób
mo¿na
zakomentowaæ d³u¿szy fragment */

/*
	ten procesor ma 3 rodzaje pamieci
	code memory			.cseg
	data memory SRAM	.dseg
	EEPROM				.eseg
*/

.cseg
.org 0x0000 	// rozpoczynajac prace zagladamy do pierwszej komorki

ldi r16, 10		/* load immediate - Loads an 8 bit constant directly to 
				register 16 to 31. 

				instrukcja zaladowania bezposrednio do jednego z rejestrow
				do rejestru 16 wpisujemy wartosc 10	*/

ldi r17, 20		// do rejestru 17 wpisujemy wartosc 20

add r16, r17	// dodajemy zawartosc rejestru 16 do zawartosci rejestru 17
				// wynik bedzie na r16

nop				// no operation - zajmuje jeden cykl zegara (same zera)
				// mozna wstawic jako niewielkie opoznienia dzialania programu

//jmp 0x0003		// instrukcja skoku (skaczemy do TEJ komorki w nieskonosc)
jmp PC
				
