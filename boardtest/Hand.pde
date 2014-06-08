public class Hand{
 private Card[] data;
 private Deck source;

  public Hand(Deck source){
   data = new Card[5];
   this.source = source;
  } 
  
  public void draw(){
    for(int i = 0;i<data.length;i++){
       if(data[i] == null){
        data[i] = source.getTopCard();
        return;
       } 
    }
  }
  
  public Card play(int i){
    Card output = data[i];
    data[i] = null;
    return output;
  }
}
