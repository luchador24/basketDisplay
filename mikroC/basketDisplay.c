#define nameDisplay PORTC
int x, cont=0;
const char num[10]={0x3F,0x06,0x5B,0x4F,0x66,0x6D,0x7D,0x07,0x7F,0x6F};
void main() {
ANSEL=0;
ANSELH=0;
TRISC=0;
TRISB=1;
while(1){
        /*for(x=0;x<=9;x++){
        nameDisplay=num[x];
        Delay_ms(500);
      }     */


nameDisplay=num[cont];
PORTB=0b00000000;
  switch(PORTB){
                case(0b00000010):
                cont=cont+2;
                if(cont==10){
                  cont=0;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else if(cont==11){
                  cont=1;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else{
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }


                case(0b00000100):
                cont=cont+3;
                if(cont==10){
                  cont=0;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else if(cont==11){
                  cont=1;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else if(cont==12){
                  cont=2;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else{
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }

                case(0b00001000):
                cont=cont+1;
                if(cont==10){
                  cont=0;
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }else{
                  nameDisplay=num[cont];
                  Delay_ms(300);
                  break;
                }
  };


        /*marcador=3;
         switch(marcador){
                       case(3):
                       nameDisplay=num[3];            //ROJO
                       Delay_ms(300);
                       break;
         };*/
};
}