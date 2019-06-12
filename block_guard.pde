PImage mine;//画像
int difficult;//モード内難易度

int gamemode=1;
Block_way block_way;
ArrayList<blockblue> Blocksblue;//青ブロック
ArrayList<blockred> Blocksred;//赤ブロック
ArrayList<blockyellow> Blocksyellow;//黄ブロック
int grodiffi;//全体難易度

int time=120;//時間
int life=1;//ライフ

void setup(){ //<>//
  time=120;//初期値
  life=1;
  size(700,700);
  background(255);
  mine=loadImage("EDGE2.png");//自機画像
  block_way=new Block_way();//ブロック方向
  Blocksblue=new ArrayList<blockblue>();//ブロック動作
  Blocksred=new ArrayList<blockred>();
  Blocksyellow=new ArrayList<blockyellow>();
  frameRate(30);
  smooth();//気持ちだけ
}

void draw(){
    background(255);
    image(mine,337,337);
    switch(gamemode){//変数
      case 1://開始画面
      gamestart();
      break;
      
      case 2://難易度選択
      gameset();
      break;
      
      case 3://ゲーム本体
      gameplay();
      break;
  }
}


void gamestart(){
  PFont font=createFont("MS Gothic",48,true);
  textFont(font);//文字出力
  textSize(30);
  fill(0);
  text("normal block",300,70);//ブロックの種類提示
  text("opposite block",300,140);
  text("bad block",300,210);
  
  rect(330,305,40,7);//前操作
  text("W",345,295);
  
  rect(300,330,7,40);//左操作
  text("A",275,360);
  
  rect(390,330,7,40);//右操作
  text("D",410,360);
  
  rect(330,385,40,7);//後操作
  text("S",345,430);
  
  fill(0,0,255);//青ブロック
  rect(200,30,75,50);

  fill(255,255,0);//黄ブロック
  rect(200,100,75,50);

  fill(255,0,0);//赤ブロック
  rect(200,170,75,50);
  
  textSize(50);
  fill(0);
  text("Press to the 'R' key",100,500);
  if(keyPressed==true && key=='r'){
    gamemode++;
    //ゲーム開始
  }
}

void gameset(){//難易度選択
  for(int i=0;i<3;i++){//難易度表示時の簡略表示
    fill(255);
    rect(25+i*225,200,200,300);//枠
    fill(0,0,255);
    rect(45+i*225,280,90,40);//blue
    fill(255,0,0);
    rect(45+i*225,330,90,40);//red
    fill(220,220,0);
    rect(45+i*225,380,90,40);//yellow
    fill(0);
    textSize(30);
    text("Time:120",65+i*225,455);//時間
  }
  fill(255);
  rect(80,520,550,140);//デモ枠
  fill(0);
  textSize(70);
  text("Demo Mode",190,600);
  textSize(30);
  text("difficult:normal Time:60 Press 'X'",105,650);
  
  fill(0);
  textSize(83);
  text("Serect difficult",20,150);
  
  textSize(80);//難易度表示
  text("easy",45,270);
  text("hard",495,270);
  textSize(65);
  text("normal",260,270);
  
  textSize(30);//キー表示
  text("press 'A'",65,490);
  text("press 'S'",290,490);
  text("press 'D'",515,490);
  
  text("52%",160,310);//青比率
  text("56%",385,310);
  text("64%",610,310);
  
  text("40%",160,360);//赤比率
  text("28%",385,360);
  text("12%",610,360);
  
  text("8%",160,410);//黄比率
  text("16%",385,410);
  text("24%",610,410);
  
  if(keyPressed==true && key=='a'){//easy
    grodiffi=1;
    time=120;
    gamemode++;
    //ゲーム開始easy
  }
  if(keyPressed==true && key=='s'){//normal
    grodiffi=2;
    time=120;
    gamemode++;
    //ゲーム開始normal
  }
  if(keyPressed==true && key=='d'){//hard
    grodiffi=3;
    time=120;
    gamemode++;
    //ゲーム開始hard
  }
  if(keyPressed==true && key=='x'){//demo
    grodiffi=4;
    time=60;
    gamemode++;
    //ゲーム開始demo
  }
}

void gameplay(){
  if(frameCount%30==0){
    time -= 1;
    //時間判定
  }
  block_kind=0;
  randomway();
  if(life>0){
    bar();
    //ラケット
  }
    textSize(40);
    fill(0);
    text("LEVEL",10,100);//レベル表示
    if(grodiffi<=3){//demo以外
      if(time<120 && time>=100){//level1
      textSize(60);
      fill(0,0,0);
      text("1",110,100);
    }else if(time<=100 && time>80){//level2
      textSize(60);
      fill(0,0,250);
      text("2",110,100);
    }else if(time<=80 && time>60){//level3
      textSize(60);
      fill(0,250,0);
      text("3",110,100);
    }else if(time<=60 && time>40){//level4
      textSize(60);
      fill(250,0,250);
      text("4",110,100);
    }else if(time<=40 && time>20){//level5
      textSize(60);
      fill(100,250,250);
      text("5",110,100);
    }else if(time<=20 && time>0){//level6
      textSize(60);
      fill(250,0,0);
      text("6",110,100);
    }
  }else if(grodiffi==4){//demo
  if(time<=60 && time>50){//level1
      textSize(60);
      fill(0,0,0);
      text("1",110,100);
    }else if(time<=50 && time>40){//level2
      textSize(60);
      fill(0,0,250);
      text("2",110,100);
    }else if(time<=40 && time>30){//level3
      textSize(60);
      fill(0,250,0);
      text("3",110,100);
    }else if(time<=30 && time>20){//level4
      textSize(60);
      fill(250,0,250);
      text("4",110,100);
    }else if(time<=20 && time>10){//level5
      textSize(60);
      fill(100,250,250);
      text("5",110,100);
    }else if(time<=10 && time>0){//level6
      textSize(60);
      fill(250,0,0);
      text("6",110,100);
    }
  }

  if(time>0 && life>0){
    textSize(30);
    fill(0);
    text("残り時間:",10,30);
    text(time,150,30);//残り時間表示
    image(mine,15,125);
    text("×1",50,150);//残機表示
  } else if(life==0){
    fill(255,0,0);
    textSize(55);
    text("GAME OVER",220,200);
    textSize(28);
    text("Press to serect difficult 'R' key",130,430);
    //ライフ消費でのゲームオーバー
  } else {
    fill(100,100,255);
    textSize(60);
    text("GAME CLEAR",180,230);
    textSize(28);
    text("Press to serect difficult 'R' key",150,420);
    //ゲームクリア
  }
  if(keyPressed && key=='r' &&(life==0||time<=0)){
    setup();
    gamemode=2;
    //リトライ
  }

      if (time>0) {
      for (blockblue blocksblue : Blocksblue) {
        blocksblue.display();
        //ライフ消費時の青ブロック
      }
      for (blockred blocksred : Blocksred) {
        blocksred.display();
      }//ライフ消費時の赤ブロック
      for (blockyellow blocksyellow : Blocksyellow){
        blocksyellow.display();
      }

      block_way.update();
      ArrayList<blockblue> nextBlocksblue=new ArrayList<blockblue>();
      for (blockblue blocksblue : Blocksblue) {//青ブロック出現
        blocksblue.update();
        if(!blocksblue.blocklife){
          nextBlocksblue.add(blocksblue);
          //新しいブロックの表示
        }
      }
      Blocksblue=nextBlocksblue;

      block_way.update();
      ArrayList<blockred> nextBlocksred=new ArrayList<blockred>();
      Blocksblue=nextBlocksblue;
      for (blockred blocksred : Blocksred){//赤ブロック出現
        blocksred.update();
        if(!blocksred.blocklife){
          nextBlocksred.add(blocksred);
          //新しいブロックの表示
        }
      }
      Blocksred=nextBlocksred;
      
      block_way.update();
      ArrayList<blockyellow> nextBlocksyellow=new ArrayList<blockyellow>();
      for(blockyellow blocksyellow : Blocksyellow){//黄色ブロック出現
        blocksyellow.update();
        if(!blocksyellow.blocklife){
          nextBlocksyellow.add(blocksyellow);
          //新しいブロックの表示
        }
      }
      Blocksyellow=nextBlocksyellow;
      }
}
