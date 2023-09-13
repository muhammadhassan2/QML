


import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
   Image{
       id:image
       source: "https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Qt_logo_neon_2022.svg/800px-Qt_logo_neon_2022.svg.png"
       anchors.fill:parent
       opacity: 0
       SequentialAnimation{
           loops: Animation.Infinite
           running: true
       OpacityAnimator{
           target: image
           from: 0
           to:1
           duration: 1000
           running: true
       }
       OpacityAnimator{
           target: image
           from: 1
           to:0
           duration: 1000
           running: true
       }
       }
   }
}

