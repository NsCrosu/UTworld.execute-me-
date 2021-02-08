with(objDraw1){
  if xt=2{
    cir=1
  }
}
i=0
repeat(20){
  i+=1
  mk=instance_create(232-120+i*16,464-60,butBall)
  mk.run=7
  mk.vspeed=-5
}
