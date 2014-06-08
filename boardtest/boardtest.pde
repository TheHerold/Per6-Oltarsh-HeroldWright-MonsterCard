Deck data;
Hand playerH,compH;

void setup ()
{
  background (255);
  size (500,500);
  board();
}

void cell (int x , int y , int s )
{
  rect (x,y,s,s);
}

void triple (int x , int y , int s )
{
  for (int i = 0 ; i < 3 ; i ++)
  {
    cell ( x,y,s);
    x += s;
  }
}

void block (int x , int y , int s )
{
  for (int i = 0 ; i < 3 ; i ++)
  {
    triple ( x , y , s);
    y += s;
  }
}

void row (int x , int y , int s )
{
  for ( int i = 0 ; i < 4 ; i ++)
  {
    block ( x , y , s);
    x += (s*2);
  }
}

void cellArray ( int x , int y , int s)
{
  for (int i = 0 ; i < 3 ; i ++)
  {
    row ( x , y , s);
    y += (s*1);

  }
}

void darwLines ( int x , int y , int s)
{
 

  strokeWeight (1);
}

void board ()
{
  cellArray (0,0,100);
  darwLines (0,0,30);
}

void draw ()
{
   int [][] fixedArray = new int [4][4];
   fill (0);
   textSize(28);
 
  if (mousePressed)
  {
    mouseClicked ();
  }
}
/*------------------------------------------------------------------------------------------*/
void mouseClicked ()
{
  int s = 100 ; 
  int cellX = mouseX / s;
  int cellY = mouseY / s;


  int [][] userInputArray = new int [4][4];



  for (int m = 0 ; m < 4 ; m ++)
  {
    for (int n = 0 ; n < 4 ; n ++)
    {

      switch (key)
     {
        case '1':

         /* if (mouseX > userInputArray [0][0] -s && mouseX < userInputArray [0][0]+s && mouseY > userInputArray [0][0] -s && mouseY < userInputArray [0][0] +s )
          {
            fill (0,0,255);
            text (key , 10,25);

          }

          else  if (mouseX > userInputArray [1][2] -30 && mouseX < userInputArray [1][2]+30 && mouseY > userInputArray [1][2] -30 && mouseY < userInputArray [1][2] +30)
            */ {
               fill (0,0,255);
               textSize(100);
               text ('1' , 65,58);
             }




          /*else  if (mouseX > userInputArray [2][3] -30 && mouseX < userInputArray [2][3]+30 && mouseY > userInputArray [2][3] -30 && mouseY < userInputArray [2][3] +30)
            {
              fill (0,0,255);
              text('1' ,95,88);
            }



         else   if (mouseX > userInputArray [3][1] -30 && mouseX < userInputArray [3][1]+30 && mouseY > userInputArray [3][1] -30 && mouseY < userInputArray [3][1] +30)
            {
              fill (0,0,255);
              text('1' ,35,117);
            }*/

          break ; 


          case '2':

            /*if (mouseX > userInputArray [0][1] -(s-s) && mouseX < userInputArray [0][1]+(s*2) && mouseY > userInputArray [0][1] -s && mouseY < userInputArray [0][1] +s )
            */{
              fill (0,0,255);
               textSize(100);
              text(key ,35,25);
            }
           /*else  if (mouseX > userInputArray [1][3] - (s-s) && mouseX < userInputArray [1][3] +(s*2) && mouseY > userInputArray [1][3] -(s*2) && mouseY < userInputArray [1][3] +(s*2))
            {
              fill(0,0,255);
              text(key,95,58);
            }
           else  if (mouseX > userInputArray [2][0] -(s-s) && mouseX < userInputArray [2][0] +(s*2) && mouseY > userInputArray [2][0] -(s*2) && mouseY < userInputArray [2][0] +(s*2))
            {
              fill(0,0,255);
              text(key,10,88);
            }
            else if (mouseX > userInputArray [3][2] -(s-s) && mouseX < userInputArray [3][2] +(s*2) && mouseY > userInputArray [3][2] -(s*2) && mouseY < userInputArray [3][2] +(s*2))
            {
              fill(0,0,255);
              text(key,65,117);
            }
*/
          break;

          case '3':

            /*if ( mouseX > userInputArray [1][0] -s && mouseX < userInputArray [1][0]+s && mouseY > userInputArray [1][0] -(s-s) && mouseY < userInputArray [1][0] +(s*2))
            */{
              fill(0,0,255);
               textSize(100);
              text(key,10,58);
            }
            /*else if (mouseX > userInputArray [2][1] -s && mouseX < userInputArray [2][1]+s && mouseY > userInputArray [2][1] -(s-s) && mouseY < userInputArray [2][1] +(s*2))
            {
              fill(0,0,255);
              text(key,35,88);
            }
*/
          break ;

          case '4':

            /*if (mouseX > userInputArray [0][3] +60 && mouseX < userInputArray [0][3]+120 && mouseY > userInputArray [0][3] -30 && mouseY < userInputArray [0][3] +30 )
           */ {
              fill(0,0,255);
               textSize(100);
              text(key,95,25);
            }
/*
           else if (mouseX > userInputArray [3][0] +60 && mouseX < userInputArray [3][0]+120 && mouseY > userInputArray [3][0] -30 && mouseY < userInputArray [3][0] +30 )
            {
              fill(0,0,255);
              text(key,10,117);
            }*/
          break;

          default :
          {
            fill (255);
            rect ((cellX * s),(cellY*s),s,s);
          }
      }//end of switch.

    }//end of the inner loop.
  }//end of the outter for loop.
}
