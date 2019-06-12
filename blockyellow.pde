class blockyellow { //<>//
  int block_dx=0, block_dy=0;
  int block_width=6, block_height=18;
  PVector blockplace;
  boolean blocklife;
  boolean blockside;

  blockyellow() {
    //ブロックのベクトル
    blockplace= new PVector(block_way.blockplace.x, block_way.blockplace.y);
    if (block_kind==9) {//上
      block_dx=0;
      block_dy=6;
      blockside=false;
    } else if (block_kind==10) {//右
      block_dx=-6;
      block_dy=0;
      blockside=true;
    } else if (block_kind==11) {//左
      block_dx=6;
      block_dy=0;
      blockside=true;
    } else if (block_kind==12) {//下
      block_dx=0;
      block_dy=-6;
      blockside=false;
    }
  }

  void display() {
    fill(220, 220, 0);//ブロックの色
    yellownum();
    if (blockplace.y>=150 && blockplace.y<=550 && blockplace.x>=150 && blockplace.x<=550) {
      if (yellowjodge[0] && block_dy==6) {//上を通ったらdyを逆に
        blockplace.y=700-blockplace.y;
        block_dy=-6;
      } else
        if (yellowjodge[1] && block_dx==-6) {//右を通ったらdxを逆に
          blockplace.x=700-blockplace.x;
          block_dx=6;
        } else
          if (yellowjodge[2] && block_dx==6) {//左を通ったらdxを逆に
            blockplace.x=700-blockplace.x;
            block_dx=-6;
          } else
            if (yellowjodge[3] && block_dy==-6) {//下を通ったらdyを逆に
              blockplace.y=700-blockplace.y;
              block_dy=6;
            }
    }
    if (blockside) {//ブロックの向き
      rect(blockplace.x, blockplace.y, block_height, block_width);//横長
    } else {
      rect(blockplace.x, blockplace.y, block_width, block_height);//縦長
    }
  }

  void update() {
    colornum();//ラケットの色判定
    yellownum();//黄色の通過判定
    if (blockplace.y>=150 && blockplace.y<=550 && blockplace.x>=150 && blockplace.x<=550) {
      if (yellowjodge[0] && block_dy==6) {
        blockplace.y=700-blockplace.y;//上を通った時座標を反対側に
        block_dy=-6;
        yellowjodge[0]=false;
        println("上2");
      } else
        if (yellowjodge[1] && block_dx==-6) {//右を通った時座標を反対側に
          blockplace.x=700-blockplace.x;
          block_dx=6;
          yellowjodge[1]=false;
          println("右2");
        } else
          if (yellowjodge[2] && block_dx==6) {//左を通った時座標を反対側に
            blockplace.x=700-blockplace.x;
            block_dx=-6;
            yellowjodge[2]=false;
            println("左2");
          } else
            if (yellowjodge[3] && block_dy==-6) {//下を通った時座標を反対側に
              blockplace.y=700-blockplace.y;
              block_dy=6;
              yellowjodge[3]=false;
              println("下2");
            }
    }
    blockplace.x += block_dx;//ブロックの移動
    blockplace.y += block_dy;
    if (blockplace.x<0 || blockplace.y<0 || blockplace.x>width || blockplace.y>height) {
      blocklife=true;//ウィンドウの外縁判定
    }
    if (life>0) {
      if (blockjodge==3) {
        switch(bar_pass) {
        case 1://上黄
          if (blockplace.y<305+7 && blockplace.y+18>305) {
            blocklife=true;
            yellowjodge[0]=false;
          }
          break;
        case 2://右黄
          if (blockplace.x<390+7 && blockplace.x+18>390) {
            blocklife=true;
            yellowjodge[1]=false;
          }
          break;
        case 3://左黄
          if (blockplace.x<300+7 && blockplace.x+18>300) {
            blocklife=true;
            yellowjodge[2]=false;
          }
          break;
        case 4://下黄
          if (blockplace.y<385+7 && blockplace.y+18>385) {
            blocklife=true;
            yellowjodge[3]=false;
          } 
          break;
        }
        if (blockplace.x+18>337 && blockplace.x<362 && blockplace.y+18>337 && blockplace.y<362) {
          blocklife=true;//ブロックの自機判定
          life--;
        }
      }
    }
  }
}
