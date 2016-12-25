import QtQuick 2.5
import QtQuick.Window 2.1
import QtQuick.Controls 1.2
//import bubble_1.components 1.0
import "components" 2.0



Window {
    visible: true
    width: 640
    height: 640
    title: qsTr("Прибор")


    Rectangle {
        color: "black"
        opacity: 1.0
        anchors.fill: parent
        focus: true
        Keys.onPressed: {
//            console.log("x:"+bubble.dx+" y:"+bubble.dy)
//            if (event.key === Qt.Key_Down) {

//                bubble.dy=bubble.dy+1
//            }
//            if (event.key === Qt.Key_Up) {
//                bubble.dy=bubble.dy-1
//            }
//            if (event.key === Qt.Key_Left) {

//                bubble.dx=bubble.dx-1
//            }
//            if (event.key === Qt.Key_Right) {
//                bubble.dx=bubble.dx+1
//            }
        }

//        Bubble {

//            id: bubble
//            anchors.centerIn: parent
//            height:600
        //            width:600
        //            roll: Math.round(roll.value)
        //            pitch: Math.round(pitch.value)
        //        }
        MyHand {
            width: 600
            height: 600
            anchors.centerIn: parent
            l1: leng1.value
            a1: roll1.value
            a2: roll2.value
            a3: roll3.value
            a4: roll4.value
            a5: roll5.value
        }

        Slider {
            id: roll1
            x: 28
            y: 433
            maximumValue: 400
            minimumValue: -400
        }

        Slider {
            id: leng1
            x: 416
            y: 433
            maximumValue: 300
            minimumValue: 50
        }

        Slider {
            id: roll2
            x: 28
            y: 461
            maximumValue: 400
            minimumValue: -400
        }

        Slider {
            id: roll3
            x: 28
            y: 489
            maximumValue: 400
            minimumValue: -400
        }

        Slider {
            id: roll4
            x: 28
            y: 513
            maximumValue: 400
            minimumValue: -400
        }

        Slider {
            id: roll5
            x: 28
            y: 540
            maximumValue: 400
            minimumValue: -400
        }
    }


}
