import QtQuick 2.0

Rectangle {
    id: "back"
    property alias fillColor: filler.color
    property alias backColor: back.color

    height: 100
    width: 20
    color: "#CCC"
    radius: back.width

    Rectangle {
        id: "filler"
        height: 30
        width: parent.width
        color: "#F00"
        radius: parent.radius

        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            height: Math.max(parent.height - 10, 1)
            width: parent.width
            color: parent.color
            radius: 0


            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}