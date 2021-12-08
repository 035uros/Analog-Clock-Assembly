cseg segment 'CODE'
	assume cs: cseg, ss:sseg
	
init:	
	mov ah, 00
	mov al, 02
	int 10h
	call main

main proc

	
	;zvonca
	mov ah, 06 		
	mov al, 3		
	mov bh, 11110000b	
	mov ch, 0			
	mov cl, 15			
	mov dh, 40		
	mov dl, 23			
	int 10h
	
	mov ah, 06 		
	mov al, 3		
	mov bh, 11110000b	
	mov ch, 0			
	mov cl, 27			
	mov dh, 40		
	mov dl, 35			
	int 10h
	
	;okvir
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 20		; visina objekta, broj linija na gore
	mov bh, 01110000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 0			; gornji granica, koordinata gore levo
	mov cl, 10			; koordinata levo, odakle krecu kolone
	mov dh, 40		; donji red
	mov dl, 40			; desna koorinata
	int 10h
	
	

	;unutrasnja pozadina
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 18		; visina objekta, broj linija na gore
	mov bh, 10000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 6			; gornji granica, koordinata gore levo
	mov cl, 12			; koordinata levo, odakle krecu kolone
	mov dh, 0	; donji red
	mov dl, 38			; desna koorinata
	int 10h
	

	
	;obelezja vremena (kvadratici)
	;12 sati
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 2		; visina objekta, broj linija na gore
	mov bh, 11000000b	;boja objekta 
	mov ch, 5			; gornji granica, koordinata gore levo 	
	mov cl, 24			; koordinata levo, odakle krecu kolone		
	mov dh, 6	; donji red											
	mov dl, 26			; desna koorinata				
	int 10h
	
	;6 sati
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 2		; visina objekta, broj linija na gore
	mov bh, 11000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 23			; gornji granica, koordinata gore levo 		
	mov cl, 24			; koordinata levo, odakle krecu kolone		
	mov dh, 6	; donji red											
	mov dl, 26			; desna koorinata							
	int 10h
	
	;3 sati
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 2		; visina objekta, broj linija na gore
	mov bh, 11000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 14			; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 38			; koordinata levo, odakle krecu kolone								, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 40			; desna koorinata							 objekat se prostire do ove koordinate u odnosu na desni stranu prozora
	int 10h
	
	;9 sati
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 2		; visina objekta, broj linija na gore
	mov bh, 11000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 14			; gornji granica, koordinata gore levo 		
	mov cl, 10			; koordinata levo, odakle krecu kolone					, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 12			; desna koorinata							, objekat se prostire do ove koordinate u odnosu na desni stranu prozora
	int 10h
	
	
	;sati
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 1	; visina objekta, broj linija na gore
	mov bh, 00010000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 14			; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 23			; koordinata levo, odakle krecu kolone							, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora ili DL
	mov dh, 6	; donji red											
	mov dl, 26			; desna koorinata							, objekat se prostire od ove koordinate u odnosu na desni stranu prozora
	int 10h
	

	mov ah, 2ch		; u ah stavljamo 2ch i time dobijamo sistemsko vreme
	int 21h			; DOS prekid za gore napomenutu komandu
	mov bl, ch
	
	
	cmp bl, 1
	jne sati
	jmp sat1
sati:	
	cmp bl, 2
	jne sati1
	jmp sat2
sati1:	
	cmp bl, 3
	jne sati2
	jmp sat3
sati2:	
	cmp bl, 4
	jne sati3
	jmp sat4
sati3:	
	cmp bl, 5
	jne sati4
	jmp sat5
sati4:	
	cmp bl, 6
	jne sati5
	jmp sat6
sati5:				
	cmp bl, 7
	jne sati6
	jmp sat7
sati6:	
	cmp bl, 8
	jne sati7
	jmp sat8
sati7:	
	cmp bl, 9
	jne sati8
	jmp sat9
sati8:	
	cmp bl, 10
	jne sati9
	jmp sat10
sati9:	
	cmp bl, 11
	jne sati10
	jmp sat11
sati10:	
	cmp bl, 12
	jne sati11
	jmp sat12
sati11:	
	cmp bl, 13
	jne sati12
	jmp sat1
sati12:	
	cmp bl, 14
	jne sati13
	jmp sat2
sati13:	
	cmp bl, 15
	jne sati14
	jmp sat3
sati14:	
	cmp bl, 16
	jne sati15
	jmp sat4
sati15:				
	cmp bl, 17
	jne sati16
	jmp sat5
sati16:	
	cmp bl, 18
	jne sati17
	jmp sat6
sati17:	
	cmp bl, 19
	jne sati18
	jmp sat7
sati18:	
	cmp bl, 20
	jne sati19
	jmp sat8
sati19:	
	cmp bl, 21
	jne sati20
	jmp sat9
sati20:	
	cmp bl, 22
	jne sati21
	jmp sat10
sati21:	
	cmp bl, 23
	jne sati22
	jmp sat11
sati22:	
	jmp sat12
	
	;minuti
minuti:
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 1	; visina objekta, broj linija na gore
	mov bh, 10010000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 15	; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 25			; koordinata levo, odakle krecu kolone							, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 26			; desna koorinata							  , objekat se prostire do ove koordinate u odnosu na desni stranu prozora
	int 10h
	
	mov ah, 2ch		; u ah stavljamo 2ch i time dobijamo sistemsko vreme
	int 21h			; DOS prekid za gore napomenutu komandu
	mov bl, cl
	
	
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 1	; visina objekta, broj linija na gore
	mov bh, 10010000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 15	; gornji granica, koordinata gore levo 		, u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 25			; koordinata levo, odakle krecu kolone								, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 26			; desna koorinata							  , objekat se prostire do ove koordinate u odnosu na desni stranu prozora
	


	cmp bl, 1
	jne ml
	jmp min1
ml:	
	cmp bl, 2
	jne ml1
	jmp min2
ml1:	
	cmp bl, 3
	jne ml2
	jmp min3
ml2:	
	cmp bl, 4
	jne ml3
	jmp min4
ml3:	
	cmp bl, 5
	jne ml4
	jmp min5
ml4:	
	cmp bl, 6
	jne ml5
	jmp min6
ml5:	
	cmp bl, 7
	jne ml6
	jmp min7
ml6:	
	cmp bl, 8
	jne ml7
	jmp min8
ml7:	
	cmp bl, 9
	jne ml8
	jmp min9
ml8:	
	cmp bl, 10
	jne ml9
	jmp min10
ml9:	
	cmp bl, 11
	jne ml10
	jmp min11
ml10:	
	cmp bl, 12
	jne ml11
	jmp min12
ml11:	
	cmp bl, 13
	jne ml12
	jmp min13
ml12:	
	cmp bl, 14
	jne ml13
	jmp min14
ml13:	
	cmp bl, 15
	jne ml14
	jmp min15
ml14:	
	cmp bl, 16
	jne ml15
	jmp min16
ml15:	
	cmp bl, 17
	jne ml16
	jmp min17
ml16:	
	cmp bl, 18
	jne ml17
	jmp min18
ml17:	
	cmp bl, 19
	jne ml18
	jmp min19
ml18:	
	cmp bl, 20
	jne ml19
	jmp min20
ml19:	
	cmp bl, 21
	jne ml20
	jmp min21
ml20:	
	cmp bl, 22
	jne ml21
	jmp min22
ml21:	
	cmp bl, 23
	jne ml22
	jmp min23
ml22:	
	cmp bl, 24
	jne ml23
	jmp min24
ml23:	
	cmp bl, 25
	jne ml24
	jmp min25
ml24:	
	cmp bl, 26
	jne ml25
	jmp min26
ml25:	
	cmp bl, 27
	jne ml26
	jmp min27
ml26:	
	cmp bl, 28
	jne ml27
	jmp min28
ml27:	
	cmp bl, 29
	jne ml28
	jmp min29
ml28:	
	cmp bl, 30
	jne ml29
	jmp min30
ml29:	
	cmp bl, 31
	jne ml30
	jmp min31
ml30:	
	cmp bl, 32
	jne ml31
	jmp min32
ml31:	
	cmp bl, 33
	jne ml32
	jmp min33
ml32:	
	cmp bl, 34
	jne ml33
	jmp min34
ml33:	
	cmp bl, 35
	jne ml34
	jmp min35
ml34:	
	cmp bl, 36
	jne ml35
	jmp min36
ml35:	
	cmp bl, 37
	jne ml36
	jmp min37
ml36:	
	cmp bl, 38
	jne ml37
	jmp min38
ml37:	
	cmp bl, 39
	jne ml38
	jmp min39
ml38:	
	cmp bl, 40
	jne ml39
	jmp min40
ml39:	
	cmp bl, 41
	jne ml40
	jmp min41
ml40:	
	cmp bl, 42
	jne ml41
	jmp min42
ml41:	
	cmp bl, 43
	jne ml42
	jmp min43
ml42:	
	cmp bl, 44
	jne ml43
	jmp min44
ml43:	
	cmp bl, 45
	jne ml44
	jmp min45
ml44:	
	cmp bl, 46
	jne ml45
	jmp min44
ml45:	
	cmp bl, 47
	jne ml46
	jmp min47
ml46:	
	cmp bl, 48
	jne ml47
	jmp min48
ml47:	
	cmp bl, 49
	jne ml48
	jmp min49
ml48:	
	cmp bl, 50
	jne ml49
	jmp min50
ml49:	
	cmp bl, 51
	jne ml50
	jmp min51
ml50:	
	cmp bl, 52
	jne ml51
	jmp min52
ml51:	
	cmp bl, 53
	jne ml52
	jmp min53
ml52:	
	cmp bl, 54
	jne ml53
	jmp min54
ml53:	
	cmp bl, 55
	jne ml54
	jmp min55
ml54:	
	cmp bl, 56
	jne ml55
	jmp min56
ml55:	
	cmp bl, 57
	jne ml56
	jmp min57
ml56:	
	cmp bl, 58
	jne ml57
	jmp min58
ml57:	
	cmp bl, 59
	jne ml58
	jmp min59
ml58:
	jmp min0
	
	;sekundara
sekunde:
	mov ah, 6 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 1	; visina objekta, broj linija na gore
	mov bh, 01000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 15			; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 25			; koordinata levo, odakle krecu kolone							, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 25			; desna koorinata							  , objekat se prostire do ove koordinate u odnosu na desni stranu prozora
	int 10h
	

	mov ah, 2ch		; u ah stavljamo 2ch i time dobijamo sistemsko vreme
	int 21h			; DOS prekid za gore napomenutu komandu
	mov bl, dh
	
	
	mov ah, 6 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 1	; visina objekta, broj linija na gore
	mov bh, 01000000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 15			; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 25			; koordinata levo, odakle krecu kolone							, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora
	mov dh, 6	; donji red											
	mov dl, 25			; desna koorinata
	
	
	cmp bl, 1
	jne sl
	jmp sek1
sl:	
	cmp bl, 2
	jne sl1
	jmp sek2
sl1:	
	cmp bl, 3
	jne sl2
	jmp sek3
sl2:	
	cmp bl, 4
	jne sl3
	jmp sek4
sl3:	
	cmp bl, 5
	jne sl4
	jmp sek5
sl4:	
	cmp bl, 6
	jne sl5
	jmp sek6
sl5:	
	cmp bl, 7
	jne sl6
	jmp sek7
sl6:	
	cmp bl, 8
	jne sl7
	jmp sek8
sl7:	
	cmp bl, 9
	jne sl8
	jmp sek9
sl8:	
	cmp bl, 10
	jne sl9
	jmp sek10
sl9:	
	cmp bl, 11
	jne sl10
	jmp sek11
sl10:	
	cmp bl, 12
	jne sl11
	jmp sek12
sl11:	
	cmp bl, 13
	jne sl12
	jmp sek13
sl12:	
	cmp bl, 14
	jne sl13
	jmp sek14
sl13:	
	cmp bl, 15
	jne sl14
	jmp sek15
sl14:	
	cmp bl, 16
	jne sl15
	jmp sek16
sl15:	
	cmp bl, 17
	jne sl16
	jmp sek17
sl16:	
	cmp bl, 18
	jne sl17
	jmp sek18
sl17:	
	cmp bl, 19
	jne sl18
	jmp sek19
sl18:	
	cmp bl, 20
	jne sl19
	jmp sek20
sl19:	
	cmp bl, 21
	jne sl20
	jmp sek21
sl20:	
	cmp bl, 22
	jne sl21
	jmp sek22
sl21:	
	cmp bl, 23
	jne sl22
	jmp sek23
sl22:	
	cmp bl, 24
	jne sl23
	jmp sek24
sl23:	
	cmp bl, 25
	jne sl24
	jmp sek25
sl24:	
	cmp bl, 26
	jne sl25
	jmp sek26
sl25:	
	cmp bl, 27
	jne sl26
	jmp sek27
sl26:	
	cmp bl, 28
	jne sl27
	jmp sek28
sl27:	
	cmp bl, 29
	jne sl28
	jmp sek29
sl28:	
	cmp bl, 30
	jne sl29
	jmp sek30
sl29:	
	cmp bl, 31
	jne sl30
	jmp sek31
sl30:	
	cmp bl, 32
	jne sl31
	jmp sek32
sl31:	
	cmp bl, 33
	jne sl32
	jmp sek33
sl32:	
	cmp bl, 34
	jne sl33
	jmp sek34
sl33:	
	cmp bl, 35
	jne sl34
	jmp sek35
sl34:	
	cmp bl, 36
	jne sl35
	jmp sek36
sl35:	
	cmp bl, 37
	jne sl36
	jmp sek37
sl36:	
	cmp bl, 38
	jne sl37
	jmp sek38
sl37:	
	cmp bl, 39
	jne sl38
	jmp sek39
sl38:	
	cmp bl, 40
	jne sl39
	jmp sek40
sl39:	
	cmp bl, 41
	jne sl40
	jmp sek41
sl40:	
	cmp bl, 42
	jne sl41
	jmp sek42
sl41:	
	cmp bl, 43
	jne sl42
	jmp sek43
sl42:	
	cmp bl, 44
	jne sl43
	jmp sek44
sl43:	
	cmp bl, 45
	jne sl44
	jmp sek45
sl44:	
	cmp bl, 46
	jne sl45
	jmp sek44
sl45:	
	cmp bl, 47
	jne sl46
	jmp sek47
sl46:	
	cmp bl, 48
	jne sl47
	jmp sek48
sl47:	
	cmp bl, 49
	jne sl48
	jmp sek49
sl48:	
	cmp bl, 50
	jne sl49
	jmp sek50
sl49:	
	cmp bl, 51
	jne sl50
	jmp sek51
sl50:	
	cmp bl, 52
	jne sl51
	jmp sek52
sl51:	
	cmp bl, 53
	jne sl52
	jmp sek53
sl52:	
	cmp bl, 54
	jne sl53
	jmp sek54
sl53:	
	cmp bl, 55
	jne sl54
	jmp sek55
sl54:	
	cmp bl, 56
	jne sl55
	jmp sek56
sl55:	
	cmp bl, 57
	jne sl56
	jmp sek57
sl56:	
	cmp bl, 58
	jne sl57
	jmp sek58
sl57:	
	cmp bl, 59
	jne sek0
	jmp sek59
	
	
sek0:
	mov si, 8
crtaj0:
	dec ch
	int 10h
	dec si
	jnz crtaj0
	jmp kraj
sek1:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp kraj
sek2:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp kraj
sek3:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	jmp kraj
sek4:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek5:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek6:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek7:
	mov si, 9
crtaj1:
	dec ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj1
	jmp kraj
sek8:
	mov si, 6
	inc cl
	inc dl
	int 10h
crtaj2:
	dec ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj2
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek9:
	mov si, 6
crtaj3:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj3
	jmp kraj
sek10:
	mov si, 6
	inc ch
crtaj4:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj4
	jmp kraj
sek11:
	mov si, 5
	inc ch
crtaj5:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj5
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek12:
	mov si, 4
	inc ch
crtaj6:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj6
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek13:
	mov si, 3
	inc ch
crtaj7:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj7
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek14:
	mov si, 2
	inc ch
crtaj8:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj8
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek15:
	mov si, 13
crtaj9:
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj9
	jmp kraj
sek45:
	mov si, 13
crtaj10:
	dec cl
	int 10h
	dec si
	jnz crtaj10
	jmp kraj
sek30:
	mov si, 8
crtaj11:
	inc ch
	int 10h
	dec si
	jnz crtaj11
	jmp kraj
sek59:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp kraj
sek58:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp kraj
sek57:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	jmp kraj
sek56:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek55:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek54:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek53:
	mov si, 9
crtaj12:
	dec ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj12
	
	
	
	jmp kraj
sek52:
	mov si, 6
	dec cl
	dec dl
	int 10h
crtaj19:
	dec ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj19
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek51:
	mov si, 6
crtaj18:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj18
	
	jmp kraj
sek50:
	mov si, 6
	inc ch
crtaj17:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj17
	jmp kraj
sek49:
	mov si, 5
	inc ch
crtaj16:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj16
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek48:
	mov si, 4
	inc ch
crtaj15:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj15
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek47:
	mov si, 3
	inc ch
crtaj14:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj14
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek46:
	mov si, 2
	inc ch
crtaj13:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj13
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek29:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp kraj
sek28:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp kraj
sek27:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	jmp kraj
sek26:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek25:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek24:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek23:
	mov si, 9
crtaj27:
	inc ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj27
	jmp kraj
sek22:
	mov si, 6
	inc cl
	inc dl
	int 10h
crtaj26:
	inc ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj26
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp kraj
sek21:
	mov si, 6
crtaj25:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj25
	jmp kraj
sek20:
	mov si, 6
	dec ch
crtaj24:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj24
	jmp kraj
sek19:
	mov si, 5
	dec ch
crtaj23:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj23
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek18:
	mov si, 4
	dec ch
crtaj22:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj22
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek17:
	mov si, 3
	dec ch
crtaj21:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj21
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek16:
	mov si, 3
	inc ch
crtaj20:
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz crtaj20
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp kraj
sek31:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp kraj
sek32:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp kraj
sek33:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	jmp kraj
sek34:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek35:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek36:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp kraj
sek37:
	mov si, 9
crtaj35:
	inc ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj35
	jmp kraj
	
	
sek38:
	mov si, 6
	dec cl
	dec dl
	int 10h
crtaj34:
	inc ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj34
	inc ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp kraj
	

sek39:
	mov si, 6
crtaj33:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj33
	jmp kraj
	
sek40:
	mov si, 6
	inc ch
crtaj32:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj32
	jmp kraj
sek41:
	mov si, 5
	dec ch
crtaj31:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj31
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek42:
	mov si, 4
	dec ch
crtaj30:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj30
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek43:
	mov si, 3
	dec ch
crtaj29:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj29
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
sek44:
	mov si, 3
	inc ch
crtaj28:
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz crtaj28
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp kraj
	
min0:
	mov si, 8
crtaj36:
	dec ch
	int 10h
	dec si
	jnz crtaj36
	jmp sekunde
min1:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp sekunde
min2:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp sekunde
min3:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	jmp sekunde
min4:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min5:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min6:
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min7:
	mov si, 9
vuci1:
	dec ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci1
	jmp sekunde
min8:
	mov si, 6
	inc cl
	inc dl
	int 10h
vuci2:
	dec ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci2
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min9:
	mov si, 6
vuci3:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci3
	jmp sekunde
min10:
	mov si, 6
	inc ch
vuci4:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci4
	jmp sekunde
min11:
	mov si, 5
	inc ch
vuci5:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci5
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min12:
	mov si, 4
	inc ch
vuci6:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci6
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min13:
	mov si, 3
	inc ch
vuci7:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci7
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min14:
	mov si, 2
	inc ch
vuci8:
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci8
	inc ch
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min15:
	mov si, 13
vuci9:
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci9
	jmp sekunde
min45:
	mov si, 13
vuci10:
	dec cl
	int 10h
	dec si
	jnz vuci10
	jmp sekunde
min30:
	mov si, 8
vuci11:
	inc ch
	int 10h
	dec si
	jnz vuci11
	jmp sekunde
min59:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp sekunde
min58:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	dec ch
	int 10h
	jmp sekunde
min57:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	jmp sekunde
min56:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min55:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min54:
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min53:
	mov si, 9
vuci12:
	dec ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci12
	
	
	
	jmp sekunde
min52:
	mov si, 6
	dec cl
	dec dl
	int 10h
vuci19:
	dec ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci19
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min51:
	mov si, 6
vuci18:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci18
	
	jmp sekunde
min50:
	mov si, 6
	inc ch
vuci17:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci17
	jmp sekunde
min49:
	mov si, 5
	inc ch
vuci16:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci16
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min48:
	mov si, 4
	inc ch
vuci15:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci15
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min47:
	mov si, 3
	inc ch
vuci14:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci14
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min46:
	mov si, 2
	inc ch
vuci13:
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci13
	inc ch
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min29:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp sekunde
min28:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp sekunde
min27:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	jmp sekunde
min26:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min25:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min24:
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min23:
	mov si, 9
vuci27:
	inc ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci27
	jmp sekunde
min22:
	mov si, 6
	inc cl
	inc dl
	int 10h
vuci26:
	inc ch
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci26
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	jmp sekunde
min21:
	mov si, 6
vuci25:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci25
	jmp sekunde
min20:
	mov si, 6
	dec ch
vuci24:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci24
	jmp sekunde
min19:
	mov si, 5
	dec ch
vuci23:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci23
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min18:
	mov si, 4
	dec ch
vuci22:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci22
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min17:
	mov si, 3
	dec ch
vuci21:
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci21
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min16:
	mov si, 3
	inc ch
vuci20:
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec si
	jnz vuci20
	dec ch
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp sekunde
min31:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp sekunde
min32:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	inc ch
	int 10h
	jmp sekunde
min33:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	jmp sekunde
min34:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min35:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min36:
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
min37:
	mov si, 9
vuci35:
	inc ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci35
	jmp sekunde
	
	
min38:
	mov si, 6
	dec cl
	dec dl
	int 10h
vuci34:
	inc ch
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci34
	inc ch
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	jmp sekunde
	

min39:
	mov si, 6
vuci33:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci33
	jmp sekunde
	
min40:
	mov si, 6
	inc ch
vuci32:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci32
	jmp sekunde
min41:
	mov si, 5
	dec ch
vuci31:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci31
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min42:
	mov si, 4
	dec ch
vuci30:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci30
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min43:
	mov si, 3
	dec ch
vuci29:
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci29
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde
min44:
	mov si, 3
	inc ch
vuci28:
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec si
	jnz vuci28
	dec ch
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp sekunde

sat3:
	mov ah, 06 		;mod za crtanje, u ovom slucaju rutina za Scroll lines up
	mov al, 2	; visina objekta, broj linija na gore
	mov bh, 00010000b	;boja objekta se odredjuje u prva cetriri bita 0111 sivi
	mov ch, 14			; gornji granica, koordinata gore levo 		u odnosu na ovu koordinatu objekat je udaljen od vrha prozora
	mov cl, 23			; koordinata levo, odakle krecu kolone							, u odnosu na ovu korinatu objekat pocinje u odnosu na desnu stranu prozora ili DL
	mov dh, 6	; donji red											
	mov dl, 33			; desna koorinata							, objekat se prostire od ove koordinate u odnosu na desni stranu prozora
	int 10h
	jmp minuti
	
sat6:
	mov ah, 06 		
	mov al, 8	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 24			
	mov dh, 6	
	mov dl, 26			
	int 10h
	jmp minuti
	
sat12:
	mov ah, 06 		
	mov al, 8	
	mov bh, 00010000b	
	mov ch, 8			
	mov cl, 24			
	mov dh, 6	
	mov dl, 26			
	int 10h
	jmp minuti
	
sat9:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 15			
	mov dh, 6	
	mov dl, 25			
	int 10h
	jmp minuti
	
sat1:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	dec ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	dec ch
	int 10h
	jmp minuti
	
sat11:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	dec ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec ch
	int 10h
	jmp minuti
	
sat7:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	inc ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	inc ch
	int 10h
	jmp minuti
	
sat5:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	inc ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc ch
	int 10h
	jmp minuti
	
sat4:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	inc ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	inc ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp minuti
	
sat8:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	inc ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	inc ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp minuti
	
sat10:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	dec ch
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	dec ch
	dec cl
	dec dl
	dec cl
	dec dl
	int 10h
	dec cl
	dec dl
	int 10h
	jmp minuti

sat2:
	mov ah, 06 		
	mov al, 2	
	mov bh, 00010000b	
	mov ch, 14			
	mov cl, 23			
	mov dh, 6	
	mov dl, 26		
	int 10h
	dec ch
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	dec ch
	inc cl
	inc dl
	inc cl
	inc dl
	int 10h
	inc cl
	inc dl
	int 10h
	jmp minuti
	
kraj:
	mov ah, 2ch		; u ah stavljamo 2ch i time dobijamo sistemsko vreme
	int 21h			; DOS prekid za gore napomenutu komandu
	cmp bl, dh
	je kraj
	jmp init

	mov ah, 4ch
	int 21h

main endp

cseg ends

sseg segment stack 'STACK'
	dw 100 dup(?)
sseg ends

end init