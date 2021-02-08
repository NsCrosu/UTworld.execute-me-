if xt=1{
  if set=0{
    i=0
    repeat(11){
      i+=1
      yp[i]=random_range(174-60,254-60)
    }
    set=1
    mk=instance_create(240,yp[1],objDraw1)
    mk.xt=2
    dir=random(360)
    j=0
    repeat(8){
      j+=1
      mk=instance_create(240,yp[1],butBall)
      mk.direction=j*45+dir
      mk.speed=15
      mk.run=7
    }
  }
  if len<1 len+=(1.1-len)/10
  if len>1 len=1
  draw_set_color(make_color_rgb(255,128,128))
  i=0
  repeat(10){
    i+=1
    if i-1<len*10 && i>len*10{
      draw_line_width(320+(i-6)*32,yp[i],320+(i-5)*32*(len*10-i+1)+(i-6)*32*(i-len*10),yp[i+1]*(len*10-i+1)+yp[i]*(i-len*10),6)
    }
    if i<=len*10{
      len2[i]+=(1-len2[i])/10
      draw_line_width(320+(i-6)*32,yp[i],320+(i-5)*32,yp[i+1],6-len2[i]*6)
      if set2[i]=0{
        set2[i]=1
        mk=instance_create(320+(i-5)*32,yp[i+1],objDraw1)
        mk.xt=2
        dir=random(360)
        j=0
        repeat(8){
          j+=1
          mk=instance_create(320+(i-5)*32,yp[i+1],butBall)
          mk.direction=j*45+dir
          mk.speed=15
          mk.run=7
        }
      }
    }
  }
}
if xt=2{
  if de=1{
    if len3<1 len3+=(1.01-len3)/10
    if len3>1 len3=1
  }
  len+=(1-len)/10
  if len>0.99 && set4=0{
    set4=1
    len=1
    depth=-50
  }
  if ded=1{
    len4+=(1-len4)/10
    if len4>0.99 instance_destroy()
  }
  if set4=0{
    draw_set_color(merge_color(make_color_rgb(255,128,128),make_color_rgb(192,192,192),len))
    draw_circle(x,y,len*15,0)
  }
  draw_set_color(make_color_rgb(255,128+len3*127,128))
  draw_circle(x,y+yto*len3,len*5-len4*5,0)
  if next=1 && len3<1{
    if set=0{
      yto=(214-60+(x-320)*tan(degtorad(dir))-y)
      set=1
    }
    len4+=(1-len4)/10
    draw_line_width(x,y+len3*yto,x,y+len4*yto,5)
  }
  if cir=1{
    if set8=0{
      set8=1
      line=point_distance(320,214-60,x,214-60+(x-320)*tan(degtorad(dir)))*sign(x-320)
    }
    dird+=(180-dird)/10
    draw_set_color(make_color_rgb(255,255,128))
    draw_primitive_begin(pr_trianglestrip)
    i=0
    repeat(61){
      draw_vertex(320+lengthdir_x(line+1-len4,-dir+i*dird/60),214-60+lengthdir_y(line+1-len4,-dir+i*dird/60))
      draw_vertex(320+lengthdir_x(line-1+len4,-dir+i*dird/60),214-60+lengthdir_y(line-1+len4,-dir+i*dird/60))
      i+=1
    }
    draw_primitive_end()
  }
}
if xt=3{
  if set=0{
    set=1
    depth=-250
  }
  if de=0{
    len+=(1-len)/10
    y1=214-60-170*tan(degtorad(dir))
    y2=214-60+170*tan(degtorad(dir))
    draw_set_color(make_color_rgb(255,128,128))
    draw_line_width(236,y1,236+len*328,y2*len+y1*(1-len),5)
    while(len>num){
      mk=instance_create(236+num*328,y2*num+y1*(1-num),butBall)
      mk.direction=270+random_range(-15,15)
      mk.speed=15
      mk.run=7
      num+=0.0625
    }
  }
  if cir=1{
    if set2=0{
      set2=1
      line=point_distance(0,0,170,170*tan(degtorad(dir)))
    }
    if de=1{
      len18+=(1-len18)/10
      if len18>=0.99 instance_destroy()
    }
    dird+=(180-dird)/10
    draw_set_color(make_color_rgb(255,128,128))
    i=0
    repeat(2){
      i+=1
      draw_primitive_begin(pr_trianglestrip)
      j=0
      repeat(61){
        draw_vertex(320+lengthdir_x(line,-dir+j*dird/60+i*180),214-60+lengthdir_y(line,-dir+j*dird/60+i*180))
        draw_vertex(320+lengthdir_x(line*len18,-dir+j*dird/60+i*180),214-60+lengthdir_y(line*len18,-dir+j*dird/60+i*180))
        j+=1
        if len18<0.95{
          if collision_line(320+lengthdir_x(line*len18,-dir+j*dird/60+i*180),214-60+lengthdir_y(line*len18,-dir+j*dird/60+i*180),320+lengthdir_x(line,-dir+j*dird/60+i*180),214-60+lengthdir_y(line,-dir+j*dird/60+i*180),objPlayer,1,1)>0{
            with(parPlayerHurt){event_perform(ev_collision,objPlayer)}
          }
        }
      }
      draw_primitive_end()
    }
  }
}
