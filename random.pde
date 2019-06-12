int block_kind;
int n;
void randomway(){
  if(grodiffi==1){//easy
    if(time>120 && time<=100){
    difficult=60;//level1
   }else if(time<=100 && time>80){
    difficult=50;//level2
   }else if(time<=80 && time>60){
    difficult=40;//level3
   }else if(time<=60 && time>40){
    difficult=30;//level4
   }else if(time<=40 && time>20){
    difficult=25;//level5
   }else if(time<=20 && time>0){
    difficult=20;//level6
   }else{
    difficult=60;
    //難易度設定
   }
  if(frameCount%difficult==0){
   n=int(random(1,101));
   if(n>=1 && n<=13){//青上
     block_kind=1;
   }else if(n>13 && n<=26){//青右
     block_kind=2;
   }else if(n>26 && n<=39){//青左
     block_kind=3;
   }else if(n>39 && n<=52){//青下
     block_kind=4;
   }else if(n>52 && n<=62){//赤上
     block_kind=5;
   }else if(n>62 && n<=72){//赤右
     block_kind=6;
   }else if(n>72 && n<=82){//赤左
     block_kind=7;
   }else if(n>82 && n<=92){//赤下
     block_kind=8;
   }else if(n>92 && n<=94){//黄上
     block_kind=9;
   }else if(n>94 && n<=96){//黄右
     block_kind=10;
   }else if(n>96 && n<=98){//黄左
     block_kind=11;
   }else if(n>98 && n<=100){//黄下
     block_kind=12;
   }//ブロック方向、色のランダム
  }
  }else if(grodiffi==2){//normal
    if(time>120 && time<=100){
    difficult=50;//level1
   }else if(time<=100 && time>80){
    difficult=40;//level2
   }else if(time<=80 && time>60){
    difficult=30;//level3
   }else if(time<=60 && time>40){
    difficult=25;//level4
   }else if(time<=40 && time>20){
    difficult=20;//level5
   }else if(time<=20 && time>0){
    difficult=15;//level6
   }else{
    difficult=60;
    //難易度設定
   }
  if(frameCount%difficult==0){
   n=int(random(1,101));
   if(n>=1 && n<=14){//青上
     block_kind=1;
   }else if(n>14 && n<=28){//青右
     block_kind=2;
   }else if(n>28 && n<=42){//青左
     block_kind=3;
   }else if(n>42 && n<=56){//青下
     block_kind=4;
   }else if(n>56 && n<=63){//赤上
     block_kind=5;
   }else if(n>63 && n<=70){//赤右
     block_kind=6;
   }else if(n>70 && n<=77){//赤左
     block_kind=7;
   }else if(n>77 && n<=84){//赤下
     block_kind=8;
   }else if(n>84 && n<=88){//黄上
     block_kind=9;
   }else if(n>88 && n<=92){//黄右
     block_kind=10;
   }else if(n>92 && n<=96){//黄左
     block_kind=11;
   }else if(n>96 && n<=100){//黄下
     block_kind=12;
   }//ブロック方向、色のランダム
  }
  }else if(grodiffi==3){//hard
    if(time>120 && time<=100){
    difficult=50;//level1
   }else if(time<=100 && time>80){
    difficult=40;//level2
   }else if(time<=80 && time>60){
    difficult=30;//level3
   }else if(time<=60 && time>40){
    difficult=20;//level4
   }else if(time<=40 && time>20){
    difficult=15;//level5
   }else if(time<=20 && time>0){
    difficult=10;//level6
   }else{
    difficult=60;
    //難易度設定
   }
  if(frameCount%difficult==0){
   n=int(random(1,101));
   if(n>=1 && n<=16){//青上
     block_kind=1;
   }else if(n>16 && n<=32){//青右
     block_kind=2;
   }else if(n>32 && n<=48){//青左
     block_kind=3;
   }else if(n>48 && n<=64){//青下
     block_kind=4;
   }else if(n>64 && n<=67){//赤上
     block_kind=5;
   }else if(n>67 && n<=70){//赤右
     block_kind=6;
   }else if(n>70 && n<=73){//赤左
     block_kind=7;
   }else if(n>73 && n<=76){//赤下
     block_kind=8;
   }else if(n>76 && n<=82){//黄上
     block_kind=9;
   }else if(n>82 && n<=88){//黄右
     block_kind=10;
   }else if(n>88 && n<=94){//黄左
     block_kind=11;
   }else if(n>94 && n<=100){//黄下
     block_kind=12;
   }//ブロック方向、色のランダム
  }
  }
  else if(grodiffi==4){//demo
    if(time>=60 && time<50){
    difficult=50;//level1
   }else if(time<=50 && time>40){
    difficult=40;//level2
   }else if(time<=40 && time>30){
    difficult=30;//level3
   }else if(time<=30 && time>20){
    difficult=25;//level4
   }else if(time<=20 && time>10){
    difficult=20;//level5
   }else if(time<=10 && time>0){
    difficult=15;//level6
   }else{
    difficult=60;
    //難易度設定
   }
  if(frameCount%difficult==0){
   n=int(random(1,101));
   if(n>=1 && n<=14){//青上
     block_kind=1;
   }else if(n>14 && n<=28){//青右
     block_kind=2;
   }else if(n>28 && n<=42){//青左
     block_kind=3;
   }else if(n>42 && n<=56){//青下
     block_kind=4;
   }else if(n>56 && n<=63){//赤上
     block_kind=5;
   }else if(n>63 && n<=70){//赤右
     block_kind=6;
   }else if(n>70 && n<=77){//赤左
     block_kind=7;
   }else if(n>77 && n<=84){//赤下
     block_kind=8;
   }else if(n>84 && n<=88){//黄上
     block_kind=9;
   }else if(n>88 && n<=92){//黄右
     block_kind=10;
   }else if(n>92 && n<=96){//黄左
     block_kind=11;
   }else if(n>96 && n<=100){//黄下
     block_kind=12;
   }//ブロック方向、色のランダム
  }
  }
}
