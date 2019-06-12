class Block_way{
  PVector blockplace;
  int dire;
  
  Block_way(){
    blockplace=new PVector(0,0);
    
  }

  void update(){
  if(block_kind==1 || block_kind==5 || block_kind==9){//上
    blockplace= new PVector(347,0);
    dire=1;
  }else if(block_kind==2 || block_kind==6 || block_kind==10){//右
    blockplace= new PVector(700,347);
    dire=2;
  }else if(block_kind==3 || block_kind==7 || block_kind==11){//左
    blockplace= new PVector(0,347);
    dire=3;
  }else if(block_kind==4 || block_kind==8 || block_kind==12){//下
    blockplace= new PVector(347,700);
    dire=4;
  }else {//なし
    blockplace= new PVector(100,0);
    dire=0;
  }
  if(block_kind==1 || block_kind==2 ||  block_kind==3 ||  block_kind==4 ){
    Blocksblue.add(new blockblue());
    //新青ブロック生成
  }
  if(block_kind==5 || block_kind==6 || block_kind==7 || block_kind==8 ){
    Blocksred.add(new blockred());
    //新赤ブロック生成
  }
  if(block_kind==9 || block_kind==10 || block_kind==11 || block_kind==12){
    Blocksyellow.add(new blockyellow());
  }
}
}
