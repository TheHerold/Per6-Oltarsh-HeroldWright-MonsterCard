public class Card{
 private PImage img;
 private int attack,defense;
 
 public Card(String src){
    img = loadImage(src);
 }
 
 public Card(String src, int a, int d){
    this(src);
    attack = a;
    defense = d;
 } 
 
 public void setAttack(int a){
   attack = a;
 }
 
 public void setDefense(int d){
  defense = d;
 }
  
 public int getAttack(){
   return attack;
 }

  public int getDefense(){
    return defense;
  }
  
 public boolean doAttack(Card c){
   if(getAttack()>c.getDefense()){
     return true;
   }else{
     return false;
   }
  
 }
 
}
