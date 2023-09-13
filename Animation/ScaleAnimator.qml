 // Inherits from Animator class allows you to animate the scaling (resizing) of an item



import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    id:win
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    Rectangle {
        id: scalingBox
        width: 50
        height: 50
        color: "lightsteelblue"
//SequentialAnimation allows you to create a sequence of animations where each animation starts 
//after the previous one finishes. In this case, you have two ScaleAnimator animations
        SequentialAnimation{ 
            loops: Animation.Infinite
            running: true
        ScaleAnimator {
            target: scalingBox;
            from: 1;
            to: 0.5;
            duration: 2000
            running: true
        }
        ScaleAnimator {
               target: scalingBox;
               from: 0.5;
               to: 1;
               duration: 2000
               running: true
           }
       }
    }

