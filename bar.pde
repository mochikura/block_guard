boolean keyflont=false;
boolean keyright=false;
boolean keyleft=false;
boolean keyback=false;

void keyPressed(){//キーの押し判定
  if(key=='w'){//上
    keyflont=true;
  }if(key=='d'){//右
    keyright=true;
  }if(key=='a'){//左
    keyleft=true;
  }if(key=='s'){//下
    keyback=true;
  }
}

void keyReleased(){//キーの離し判定
  if(key=='w'){//上
    keyflont=false;
  }if(key=='d'){//右
    keyright=false;
  }if(key=='a'){//左
    keyleft=false;
  }if(key=='s'){//下
    keyback=false;
  }
}

int bar_x, bar_y, bar_width, bar_height;
int bar_pass;

void bar(){//ラケット判定
  if(keyflont){//上
    bar_x=330;
    bar_y=305;
    bar_width=40;
    bar_height=7;

    bar_pass=1;
  }
  if(keyright){//右
    bar_x=390;
    bar_y=330;
    bar_width=7;
    bar_height=40;

    bar_pass=2;  
  }
  if(keyleft){//左
    bar_x=300;
    bar_y=330;
    bar_width=7;
    bar_height=40;

    bar_pass=3;  
  }
  if(keyback){//下
    bar_x=330;
    bar_y=385;
    bar_width=40;
    bar_height=7;

    bar_pass=4;  
  }
    fill(0);
    rect(bar_x,bar_y,bar_width,bar_height);
}
