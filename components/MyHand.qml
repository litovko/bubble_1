import QtQuick 2.5


Item {
    property real a1: 0
    property real a2: 0
    property real a3: 0
    property real a4: 0
    property real a5: 0
    property real l1: 80
    property real l2: 80
    property real l3: 80
    property real l4: 80
    property real l5: 80
    property point p0: "0,0"
    property point p1: "0,0"
    property point p2: "0,0"
    property point p3: "0,0"
    property point p4: "0,0"
    property string c1: "yellow" //обычный
    property string c2: "red"   // выбранный
    property string c3: "gray" //каркас
    property string c4: "lightgray" //каркас выбранный
    readonly property real r: 5; //радиус точек
    readonly property real d: 3; //зазоры
    property int select: 16
    onA1Changed:   canvas.requestPaint()
    onA2Changed:   canvas.requestPaint()
    onA3Changed:   canvas.requestPaint()
    onA4Changed:   canvas.requestPaint()
    onA5Changed:   canvas.requestPaint()
    onL1Changed:   canvas.requestPaint()
    onL2Changed:   canvas.requestPaint()
    onL3Changed:   canvas.requestPaint()
    onL4Changed:   canvas.requestPaint()
    onL5Changed:   canvas.requestPaint()

    function draw1(c, p, len, angle)
    {
        angle=angle-60;

        var s6=2*r // толщина скобы
        var s1=len/6; //длина петли
        var s2=d // выступ циллиндра
        var s3=(len)*Math.sqrt(3)/2// высота циллиндра

        var s4=(len)/2/2 // ширина циллиндра
        var s7=s4+s4/2 // ширина скобы
        var s5=d // зазор


        var s8=len/8 // выступ угла скобы
        var s9=(len)/2   // смещение центра отверстия по Х -  угол наклона оси 30 градусов
        var s10=len*Math.sqrt(3)/2   // смещение центра отверстия по Y
        c.save();
        c.strokeStyle = select&1?c2:c1
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.arc(0,0, r, 0.5*Math.PI, 1.5*Math.PI);

        c.moveTo(0,r)
        c.lineTo(s1,r);
        c.lineTo(s1,-r);
        c.lineTo(0,-r);
        c.strokeRect(s1,-r-s2,s4, s3);
        //вторая деталь - скоба
        c.moveTo(s1,-r-s2-s5);
        c.lineTo(s1+s4+s5,-r-s2-s5); //скоба - верх
        c.lineTo(s1+s4+s5,-r-s2+s5+s3)
        c.lineTo(s1,-r-s2+s5+s3)
        c.lineTo(s1,-r-s2+s5+s3+s6)
        c.lineTo(s1+s7,-r-s2+s5+s3+s6) // cкоба - низ
        c.lineTo(s1+s7+s8,(s3+2*s5+2*s6)/2-r-s2-s5-s6/2)
        c.lineTo(s1+s7,-r-s2-s5-s6)
        c.lineTo(s1,-r-s2-s5-s6)
        c.lineTo(s1,-r-s2-s5)

        c.stroke();
        c.restore();

    }
    function draw2(c, p, len, angle)
    {

        var s6=2*r // толщина скобы
        var s1=len/6; //длина петли
        var s2=d // выступ циллиндра
        var s3=(len)*Math.sqrt(3)/2// высота циллиндра

        var s4=(len)/2/2 // ширина циллиндра
        var s7=s4+s4/2 // ширина скобы
        var s5=d // зазор


        var s8=len/8 // выступ угла скобы
        var s9=(len)/2   // смещение центра отверстия по Х -  угол наклона оси 30 градусов
        var s10=len*Math.sqrt(3)/2   // смещение центра отверстия по Y
        c.save();
        c.strokeStyle = select&2?c2:c1
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.arc(0,0, r, 0.5*Math.PI, 1.5*Math.PI);

        c.moveTo(0,-r)
        c.lineTo(len,-r);
        c.arc(len,0, r, 1.5*Math.PI, 0.5*Math.PI);
        c.moveTo(len,r)
        c.lineTo(len/4*3,len/8);
        c.lineTo(len/3,len/8);
        c.lineTo(0,r);


        c.stroke();
        c.restore();

    }
    function draw3(c, p, len, angle)
    {
        var s1=len*15/95
        var s2=len*10/95
        var s3=len*20/95
        var s4=len*8/95
        var s5=len*23/95
        var s6=len*16/95
        c.save();
        c.strokeStyle = select&4?c2:c1
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.arc(-s1,-s2, r, 0.5*Math.PI, 1.5*Math.PI);
        c.lineTo(s3,-s4);
        c.lineTo(len,-r);
        c.arc(len,0, r, 1.5*Math.PI, 0.5*Math.PI);
        c.moveTo(len,r)
        c.lineTo(s5,s6);
        c.lineTo(-s1,-s2+r);


        c.stroke();
        c.restore();
    }
    function draw4(c, p, len, angle)
    {
        var dd=90
        var s1=len*10/dd
        var s2=len*5/dd //смещение оси детали вниз.
        var s3=len*15/dd
        var s4=len*15/dd

        var s5=len*20/dd  //длина циллиндра
        var s6=len*30/dd  //Высота циллиндра

        var ss=s6/2+s2 //ось вращения детали
        var s7=len*25/dd //Большая Высота конуса
        var s8=len*8/dd  //Ширина конуса
        var s9=len*25/dd //Меньшая Высота конуса и сторона квадрата

        c.save();
        c.strokeStyle = select&8?c2:c1
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.arc(0,0, r, 0.4*Math.PI, 1.5*Math.PI);
        c.moveTo(s1+r, s2)
        c.arc(s1, s2, r, 0*Math.PI, 0.5*Math.PI);
        c.lineTo(0,r);
        c.moveTo(0, -r)
        c.lineTo(r,-r);
        c.lineTo(r,-s3);
        c.lineTo(s4,-s3);
        c.strokeRect(s4, -s6+s2,s5, s6);
        c.strokeRect(s4+s5+r/2, -s6+s2,s5, s6);
        c.strokeRect(s4+s5+r/2+s8+s5, s2-s9-(s6-s9)/2, s9, s9);
        c.moveTo(s4+s5+r/2+s5, -s6+s2)
        c.lineTo(s4+s5+r/2+s8+s5,s2-s9-(s6-s9)/2);
        c.moveTo(s4+s5+r/2+s5, s2)
        c.lineTo(s4+s5+r/2+s8+s5,s2-(s6-s9)/2);


        c.stroke();
        c.restore();
    }
    function draw5(c, p, len, angle, angle0)
    {
        var s1=len/4
        var s2=len/5
        var s3=len/10 //толщина губки


        c.save();
        c.strokeStyle = select&16?c2:c1
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.arc(0,0, r, 0.5*Math.PI, 1.5*Math.PI);
        c.moveTo(len, -r)
        c.arc(len, 0, r, -0.5*Math.PI, 0.5*Math.PI);
        c.moveTo(len, -r)
        c.lineTo(0,-r)
        c.moveTo(0, r)
        c.lineTo(s1,s2)
        c.lineTo(s1+s1+s1,s2)
        c.lineTo(len,r)
        c.moveTo(s1,-r-s3)
        c.strokeRect(s1,-r-s3,len-s1+r,s3);
        c.stroke()
        c.restore()

        c.save();
        c.strokeStyle = select&16?c2:c1
        c.lineWidth = 2
        c.beginPath()

        c.translate(p.x,p.y)

        c.rotate(angle0*Math.PI/180);
        c.translate(0,-2*(r+s3))
        //c.rotate((angle0)*Math.PI/180);
        c.rotate((angle0-angle)*Math.PI/180);
        c.moveTo(0,r)
        c.arc(0,0, r, 0.5*Math.PI, 1.5*Math.PI);
        c.moveTo(len, -r)
        c.arc(len, 0, r, -0.5*Math.PI, 0.5*Math.PI);
        //c.rotate(-angle*Math.PI/180);
        c.moveTo(0,r)
        c.lineTo(len,r)

        c.moveTo(0,-r)
        c.lineTo(s1,-s2)
        c.lineTo(len-s1,-s2)
        c.lineTo(len,-r)


        c.moveTo(s1,r)
        c.strokeRect(s1,r,len-s1+r,s3);

        c.stroke();
        c.restore();
    }

    function el(c, p, len, angle, draw, index, angle0)
    {
        var  s9=len
        var s10=0
        //console.log("index="+index+" angle0="+angle0+" angle="+angle)
        c.save();
        c.strokeStyle = select&index?c4:c3
        c.lineWidth = 2
        c.beginPath()
        c.translate(p.x, p.y)
        c.rotate(angle*Math.PI/180);
        c.moveTo(r/2,0);
        c.arc(0,0, r/2, 0, Math.PI*2)
        c.moveTo(s9+r/2,s10);
        c.arc(s9,s10, r/2, 0, Math.PI*2)
        c.moveTo(0,0);
        c.lineTo(s9,s10);
        c.stroke();
        c.restore();
        draw(c, p, len, angle, angle0);
        var xx=p.x+len*Math.cos((-angle)*Math.PI/180)
        var yy=p.y-len*Math.sin((-angle)*Math.PI/180)
        return xx.toString()+","+yy.toString();
    }


    function rotate(x, y, angle)
    {
        x=sin(angle);
    }

    Canvas {
        id: canvas

        width: parent.width
        height: parent.height

        onPaint: {
            var ctx = getContext('2d')
            ctx.clearRect(0, 0, width, height)
            //ctx.strokeStyle = "lightyellow"
            ctx.lineWidth =2
//            ctx.strokeStyle = "#cf0";
//            ctx.fillStyle="#cf0"
            ctx.beginPath()


            //rollline(ctx, 10)
            //el1(ctx,width/2, height/2, 40, a1)
            p0="100,300"
            p1=el(ctx,p0, l1, a1, draw1, 1)
            console.log(p1);
            p2=el(ctx, p1, 100, a1+a2, draw2, 2)
            p3=el(ctx, p2, 100, a1+a2+a3, draw3, 4 )
            p4=el(ctx, p3, 100, a1+a2+a3+a4, draw4, 8)
               el(ctx, p4, 50, a1+a2+a3+a4+a5, draw5, 16,a1+a2+a3+a4)

            //ctx.stroke()
            //ctx.closePath();
        }
    }
}
