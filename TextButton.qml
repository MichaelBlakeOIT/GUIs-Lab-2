import QtQuick 2.0

Rectangle
{
    id: textButton;
    visible: true;
    property alias buttonText: textItem.text
    property alias fontColor: textItem.color;
    property alias backgroundColor: textButton.color;
    signal clicked;
    signal hoverStarted;
    signal hoverFinished;
    border.color: "black";
    border.width: 2;
    Text
    {
        id: textItem;
        font.family: "Helvetica";
        font.pointSize: 12;
        anchors.centerIn: parent;
    }
    MouseArea
    {
        id: mouseArea;
        anchors.fill: parent;
        hoverEnabled: true;
        onClicked:
        {
            textButton.clicked();
        }
        onEntered:
        {
            textButton.hoverStarted();
        }
        onExited:
        {
            textButton.hoverFinished();
        }
    }
}
