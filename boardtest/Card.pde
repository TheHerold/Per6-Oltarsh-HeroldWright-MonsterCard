public class Card{
 PImage img;
 int attack,defense;
 
 Card(String src){
    img = loadImage(src);
 }
 
 Card(String src, int a, int d){
    this(src);
    attack = a;
    defense = d;
 } 
 
 void setAttack(int a){
   attack = a;
 }
 
 void setDefense(int d){
  defense = d;
 }
  
 int getAttack(){
   return attack;
 }

  int getDefense(){
    return defense;
  }
  
 boolean doAttack(Card c){
   if(getAttack()>c.getDefense()){
   return true;
   }else{
   return false;
   }
  
 }
 
}
