void setup(){
  size(600, 600);
  noLoop();
}

void draw(){
  background(35, 110, 70);
  int total = 0;
  int ones = 0;
  int twos = 0;
  int threes = 0;
  int fours = 0;
  int fives = 0;
  int sixes = 0;

  for (int i = 0; i < 5; i++){
    for (int j = 0; j < 5; j++){
      Die d = new Die(20 + j * 115, 40 + i * 105);
      d.roll();
      d.show();
      total += d.number;
      if (d.number == 1){
        ones++;
      }
      else if (d.number == 2){
        twos++;
      }
      else if (d.number == 3){
        threes++;
      }
      else if (d.number == 4){
        fours++;
      }
      else if (d.number == 5){
        fives++;
      }
      else if (d.number == 6){
        sixes++;
      }
    }
  }

  fill(0);
  textSize(18);
  text("Total #: " + total, 20, 580);
  text("1's: " + ones, 145, 580);
  text("2's: " + twos, 220, 580);
  text("3's: " + threes, 295, 580);
  text("4's: " + fours, 370, 580);
  text("5's: " + fives, 445, 580);
  text("6's: " + sixes, 520, 580);
}

void mousePressed(){
  redraw();
}

class Die{
  int number;
  int x;
  int y;
  Die(int newX, int newY){
    x = newX;
    y = newY;
    number = 1;
  }

  void roll(){
    number = (int)(Math.random() * 6) + 1;
  }

  void show(){
    if (number == 1){
      fill(255, 0, 0);
    }
    else if (number == 2){
      fill(220, 20, 60);
    }
    else if (number == 3){
      fill(210, 4, 45);
    }
    else if (number == 4){
      fill(215, 0, 64);
    }
    else if (number == 5){
      fill(196, 30, 58);
    }
    else{
      fill(136, 8, 8);
    }

    stroke(0);
    strokeWeight(5);
    rect(x, y, 90, 90, 20);
    fill(10);
    noStroke();
    if (number == 2 || number == 3 || number == 4 || number == 5 || number == 6){
      ellipse(x + 27, y + 27, 15, 15);
    }
    
    if (number == 2 || number == 3 || number == 4 || number == 5 || number == 6){
      ellipse(x + 63, y + 27, 15, 15);
    }
    
    if (number == 1 || number == 3 || number == 5){
      ellipse(x + 45, y + 45, 15, 15);
    }
    
    if (number == 2 || number == 3 || number == 4 || number == 5 || number == 6){
      ellipse(x + 27, y + 63, 15, 15);
    }
    
    if (number == 2 || number == 3 || number == 4 || number == 5 || number == 6){
      ellipse(x + 63, y + 63, 15, 15);
    }
    
    if (number == 6){
      ellipse(x + 27, y + 45, 15, 15);
      ellipse(x + 63, y + 45, 15, 15);
    }
  }
}
