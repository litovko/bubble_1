import QtQuick 2.0

Item {
    id: bublik
    property real dx: 0.0
    property real dy: 0.0
    property real dz: 0.0
    Rectangle {
        id: rec
        height: parent.height
        width: parent.width
        color: "#10023c"
        radius: parent.width/2
        border.color: "lightgreen"
        border.width: 2
        opacity: 0.8
        gradient: Gradient {
            GradientStop {
                position: 0.21;
                color: "#10023c";
            }
            GradientStop {
                position: 0.83;
                color: "#090666";
            }
        }
    }
    Rectangle {
        id: bubble
        property real bsize : 0.2
        width: rec.width*bsize
        height: rec.height*bsize
        radius: width/2
        color: "lightgreen"
        border.width: 1
        border.color: "black"
        x: rec.width/2+0.0+bublik.dx-bubble.width/2
        y: rec.height/2+bublik.dy-bubble.height/2
        Path {
            startX: 50; startY: 50
            PathSvg { path: "L 150 50 L 100 150 z" }
        }
    }
    Rectangle {
        id: horizontal
        width: rec.width
        height: rec.height/50
        opacity: 0.8
        color: "grey"
        anchors.centerIn: rec

    }
}
