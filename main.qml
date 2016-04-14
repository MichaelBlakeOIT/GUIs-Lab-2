/****************
* Name: Michael Blake
* Lab: Lab 2 - Splash Screen
* Project Name: Lab2_Michael_Blake
*****************/

import QtQuick 2.4
import QtQuick.Window 2.2

Window {
    color: "#3f3f3f";
    width: 1000;
    height: 600;
    visible: true
    Dialog
    {
        width: parent.width * .2;
        height: width * .5;
        x: (parent.width / 2) - (width / 2);
        y: (parent.height / 2) - (height / 2);
        fontColor: "Black";
        backgroundColor: "blue";
        text: "Hello from Michael";
        TextButton
        {
            height: parent.height * .3;
            width: parent.width * .5;
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.verticalCenter: parent.verticalCenter;
            buttonText: "Goodbye!"
            onClicked:
            {
                Qt.quit();
            }
        }
    }
    Dialog
    {
        width: parent.width * .3;
        height: width * .5;
        x: (parent.width / 2) - (width / 2);
        y: (parent.height / 2) - (height / 2);
        fontColor: "Black";
        backgroundColor: "#d3d3d3";
        text: "Hello. Welcome to my example application showing that I know how to do stuff with QML.\
 I don't plan on using splash screen for my actual application, but might end up using\
 some of these components. I'm still figuring out what I want my actual application to look like.";
        TextButton
        {
            id: textButton;
            height: parent.height * .3;
            width: parent.width * .5;
            anchors.horizontalCenter: parent.horizontalCenter;
            anchors.bottom: parent.bottom;
            buttonText: "You can click me"
            onClicked:
            {
                buttonText = "Thanks for looking!"
            }
        }
    }
}
