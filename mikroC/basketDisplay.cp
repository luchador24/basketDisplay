#line 1 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/basketDisplay/mikroC/basketDisplay.c"

int x, cont=0;
const char num[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() {
ANSEL=0;
ANSELH=0;
TRISC=0;
TRISB=1;
while(1){
#line 16 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/basketDisplay/mikroC/basketDisplay.c"
 PORTC =num[cont];
PORTB=0b00000000;
 switch(PORTB){
 case(0b00000010):
 cont=cont+2;
 if(cont==10){
 cont=0;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else if(cont==11){
 cont=1;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else{
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }


 case(0b00000100):
 cont=cont+3;
 if(cont==10){
 cont=0;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else if(cont==11){
 cont=1;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else if(cont==12){
 cont=2;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else{
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }

 case(0b00001000):
 cont=cont+1;
 if(cont==10){
 cont=0;
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }else{
  PORTC =num[cont];
 Delay_ms(300);
 break;
 }
 };
#line 83 "C:/Users/rherr/Downloads/Ken/septimoSemestre/arquitecturaDeComputadoras/Tareas/basketDisplay/mikroC/basketDisplay.c"
};
}
