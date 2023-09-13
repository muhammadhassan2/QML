


import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle{
        id:shape
        width:200
        height:200
        color: "red"
        radius: parent.width
        anchors.centerIn: parent
        Text {
            id: txt
            text: Math.round(parent.rotation)
            color: "darkred"
            font.bold: true
            font.italic: true
            font.pointSize: 65
            anchors.centerIn: parent
        }
        RotationAnimation{
            id:animation
            target: shape
            loops: Animation.Infinite
            from:shape.rotation
            to:59
            direction: RotationAnimation.Clockwise
            duration:1000
            running: true

        }
        MouseArea{
            id:area
            anchors.fill: parent
            onClicked: {
                if(animation.paused){
                    animation.resume()
                }
                else animation.pause()
            }
        }

    }
}
