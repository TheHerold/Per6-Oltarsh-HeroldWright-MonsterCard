public class Card{
 PImage img;
 int attack,defense;
 
 public Card(String src){
    img = loadImage(src);
 }
 
 public Card(String src, int a, int d){
    this(src);
    attack = a;
    defense = d;
 } 
 
 public setAttack(int a){
   attack = a;
 }
 
 public setDefense(int d){
  defense = d;
 }
  
 
}
