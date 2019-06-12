color blockcolor[]={0,0,0,0,0,0,0,0};
int blockjodge;

void colornum (){
 blockcolor[0] = get(350, 304);//flont上
 blockcolor[1] = get(350, 312);//flont下
 blockcolor[2] = get(398, 350);//right右
 blockcolor[3] = get(390, 350);//right左
 blockcolor[4] = get(299, 350);//left左
 blockcolor[5] = get(307, 350);//left右
 blockcolor[6] = get(350, 392);//back下
 blockcolor[7] = get(350, 390);//back上
 for(int i=0 ; i<8 ; i++){
   if(red(blockcolor[i])==0 && blue(blockcolor[i])==255){
   blockjodge=1;//青判定
 } if(red(blockcolor[i])==255 && blue(blockcolor[i])==0){
   blockjodge=2;//赤判定
 } if(red(blockcolor[i])==220 && green(blockcolor[i])==220){
   blockjodge=3;//黄判定
 }
}
}

color yellowcolor[]={0,0,0,0};
boolean yellowjodge[]={false,false,false,false};

void yellownum(){//黄色の通過判定
  yellowcolor[0] = get(350, 100);//上
  yellowcolor[1] = get(600, 350);//右
  yellowcolor[2] = get(100, 350);//左
  yellowcolor[3] = get(350, 600);//下
  for(int j=0; j<4; j++){
    if(red(yellowcolor[j])==220 && green(yellowcolor[j])==220){
      yellowjodge[j]=true;//黄色を通過したらtrueに
    }
  }
}
