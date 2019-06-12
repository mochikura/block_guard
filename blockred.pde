class blockred {
  int block_dx=0, block_dy=0;
  int block_width=6, block_height=18;
  PVector blockplace;
  boolean blocklife;
  boolean blockside;

  blockred() {
    //ブロックのベクトル
    blockplace= new PVector(block_way.blockplace.x, block_way.blockplace.y);
    if (block_kind==5) {//上
      block_dx=0;
      block_dy=6;
      blockside=false;
    } else if (block_kind==6) {//右
      block_dx=-6;
      block_dy=0;
      blockside=true;
    } else if (block_kind==7) {//左
      block_dx=6;
      block_dy=0;
      blockside=true;
    } else if (block_kind==8) {//下
      block_dx=0;
      block_dy=-6;
      blockside=false;
    }
  }

  void display() {
      fill(255, 0, 0);//ブロックの色
    if (blockside) {//ブロックの向き
      rect(blockplace.x, blockplace.y, block_height, block_width);
    } else {
      rect(blockplace.x, blockplace.y, block_width, block_height);
    }
  }
  void update() {
    blockplace.x += block_dx;//ブロックの移動
    blockplace.y += block_dy;
    colornum();
    if (blockplace.x<0 || blockplace.y<0 || blockplace.x>width || blockplace.y>height) {
      blocklife=true;//ウィンドウの外縁判定
    }
    if (life>0) {
      if(blockjodge==2){
        switch(bar_pass) {
        case 1://上赤
          if (blockplace.y<305+7 && blockplace.y+18>305) {
            blocklife=true;
            life--;
          }
          break;
        case 2://右赤
          if (blockplace.x<390+7 && blockplace.x+18>390) {
            blocklife=true;
            life--;
          }
          break;
        case 3://左赤
          if (blockplace.x<300+7 && blockplace.x+18>300) {
            blocklife=true;
            life--;
          }
          break;
        case 4://下赤
          if (blockplace.y<385+7 && blockplace.y+18>385) {
            blocklife=true;
            life--;
          } 
          break;
        }
        if (blockplace.x+18>337 && blockplace.x<362 && blockplace.y+18>337 && blockplace.y<362) {
          blocklife=true;//ブロックの自機判定
        }
    }
    }
  }
}
