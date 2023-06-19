
_main:

;basketDisplay.c,4 :: 		void main() {
;basketDisplay.c,5 :: 		ANSEL=0;
	CLRF       ANSEL+0
;basketDisplay.c,6 :: 		ANSELH=0;
	CLRF       ANSELH+0
;basketDisplay.c,7 :: 		TRISC=0;
	CLRF       TRISC+0
;basketDisplay.c,8 :: 		TRISB=1;
	MOVLW      1
	MOVWF      TRISB+0
;basketDisplay.c,9 :: 		while(1){
L_main0:
;basketDisplay.c,16 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,17 :: 		PORTB=0b00000000;
	CLRF       PORTB+0
;basketDisplay.c,18 :: 		switch(PORTB){
	GOTO       L_main2
;basketDisplay.c,19 :: 		case(0b00000010):
L_main4:
;basketDisplay.c,20 :: 		cont=cont+2;
	MOVLW      2
	ADDWF      _cont+0, 0
	MOVWF      R1+0
	MOVF       _cont+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cont+0
	MOVF       R1+1, 0
	MOVWF      _cont+1
;basketDisplay.c,21 :: 		if(cont==10){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main29
	MOVLW      10
	XORWF      R1+0, 0
L__main29:
	BTFSS      STATUS+0, 2
	GOTO       L_main5
;basketDisplay.c,22 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,23 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,24 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;basketDisplay.c,25 :: 		break;
	GOTO       L_main3
;basketDisplay.c,26 :: 		}else if(cont==11){
L_main5:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main30
	MOVLW      11
	XORWF      _cont+0, 0
L__main30:
	BTFSS      STATUS+0, 2
	GOTO       L_main8
;basketDisplay.c,27 :: 		cont=1;
	MOVLW      1
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,28 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,29 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main9:
	DECFSZ     R13+0, 1
	GOTO       L_main9
	DECFSZ     R12+0, 1
	GOTO       L_main9
	DECFSZ     R11+0, 1
	GOTO       L_main9
;basketDisplay.c,30 :: 		break;
	GOTO       L_main3
;basketDisplay.c,31 :: 		}else{
L_main8:
;basketDisplay.c,32 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,33 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main11:
	DECFSZ     R13+0, 1
	GOTO       L_main11
	DECFSZ     R12+0, 1
	GOTO       L_main11
	DECFSZ     R11+0, 1
	GOTO       L_main11
;basketDisplay.c,34 :: 		break;
	GOTO       L_main3
;basketDisplay.c,38 :: 		case(0b00000100):
L_main12:
;basketDisplay.c,39 :: 		cont=cont+3;
	MOVLW      3
	ADDWF      _cont+0, 0
	MOVWF      R1+0
	MOVF       _cont+1, 0
	BTFSC      STATUS+0, 0
	ADDLW      1
	MOVWF      R1+1
	MOVF       R1+0, 0
	MOVWF      _cont+0
	MOVF       R1+1, 0
	MOVWF      _cont+1
;basketDisplay.c,40 :: 		if(cont==10){
	MOVLW      0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main31
	MOVLW      10
	XORWF      R1+0, 0
L__main31:
	BTFSS      STATUS+0, 2
	GOTO       L_main13
;basketDisplay.c,41 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,42 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,43 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main14:
	DECFSZ     R13+0, 1
	GOTO       L_main14
	DECFSZ     R12+0, 1
	GOTO       L_main14
	DECFSZ     R11+0, 1
	GOTO       L_main14
;basketDisplay.c,44 :: 		break;
	GOTO       L_main3
;basketDisplay.c,45 :: 		}else if(cont==11){
L_main13:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main32
	MOVLW      11
	XORWF      _cont+0, 0
L__main32:
	BTFSS      STATUS+0, 2
	GOTO       L_main16
;basketDisplay.c,46 :: 		cont=1;
	MOVLW      1
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,47 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,48 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main17:
	DECFSZ     R13+0, 1
	GOTO       L_main17
	DECFSZ     R12+0, 1
	GOTO       L_main17
	DECFSZ     R11+0, 1
	GOTO       L_main17
;basketDisplay.c,49 :: 		break;
	GOTO       L_main3
;basketDisplay.c,50 :: 		}else if(cont==12){
L_main16:
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main33
	MOVLW      12
	XORWF      _cont+0, 0
L__main33:
	BTFSS      STATUS+0, 2
	GOTO       L_main19
;basketDisplay.c,51 :: 		cont=2;
	MOVLW      2
	MOVWF      _cont+0
	MOVLW      0
	MOVWF      _cont+1
;basketDisplay.c,52 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,53 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main20:
	DECFSZ     R13+0, 1
	GOTO       L_main20
	DECFSZ     R12+0, 1
	GOTO       L_main20
	DECFSZ     R11+0, 1
	GOTO       L_main20
;basketDisplay.c,54 :: 		break;
	GOTO       L_main3
;basketDisplay.c,55 :: 		}else{
L_main19:
;basketDisplay.c,56 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,57 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	DECFSZ     R11+0, 1
	GOTO       L_main22
;basketDisplay.c,58 :: 		break;
	GOTO       L_main3
;basketDisplay.c,61 :: 		case(0b00001000):
L_main23:
;basketDisplay.c,62 :: 		cont=cont+1;
	INCF       _cont+0, 1
	BTFSC      STATUS+0, 2
	INCF       _cont+1, 1
;basketDisplay.c,63 :: 		if(cont==10){
	MOVLW      0
	XORWF      _cont+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main34
	MOVLW      10
	XORWF      _cont+0, 0
L__main34:
	BTFSS      STATUS+0, 2
	GOTO       L_main24
;basketDisplay.c,64 :: 		cont=0;
	CLRF       _cont+0
	CLRF       _cont+1
;basketDisplay.c,65 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,66 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main25:
	DECFSZ     R13+0, 1
	GOTO       L_main25
	DECFSZ     R12+0, 1
	GOTO       L_main25
	DECFSZ     R11+0, 1
	GOTO       L_main25
;basketDisplay.c,67 :: 		break;
	GOTO       L_main3
;basketDisplay.c,68 :: 		}else{
L_main24:
;basketDisplay.c,69 :: 		nameDisplay=num[cont];
	MOVF       _cont+0, 0
	ADDLW      _num+0
	MOVWF      R0+0
	MOVLW      hi_addr(_num+0)
	BTFSC      STATUS+0, 0
	ADDLW      1
	ADDWF      _cont+1, 0
	MOVWF      R0+1
	MOVF       R0+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       R0+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoICP+0
	MOVWF      PORTC+0
;basketDisplay.c,70 :: 		Delay_ms(300);
	MOVLW      2
	MOVWF      R11+0
	MOVLW      134
	MOVWF      R12+0
	MOVLW      153
	MOVWF      R13+0
L_main27:
	DECFSZ     R13+0, 1
	GOTO       L_main27
	DECFSZ     R12+0, 1
	GOTO       L_main27
	DECFSZ     R11+0, 1
	GOTO       L_main27
;basketDisplay.c,71 :: 		break;
	GOTO       L_main3
;basketDisplay.c,73 :: 		};
L_main2:
	MOVF       PORTB+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_main4
	MOVF       PORTB+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_main12
	MOVF       PORTB+0, 0
	XORLW      8
	BTFSC      STATUS+0, 2
	GOTO       L_main23
L_main3:
;basketDisplay.c,83 :: 		};
	GOTO       L_main0
;basketDisplay.c,84 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
