import QtQuick 2.0

Item {
    property alias name: title.text
    property alias pseudo: subtitle.text
    property alias picture: avatar.source

    height: 300
    width: 200
    anchors.centerIn: parent

    Avatar {
        id: "avatar"
        anchors.top: parent.top
    }

    Item {
        height: 20
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        HeroTitle { 
            id: "title"
        }
        HeroSubtitle { 
            id: "subtitle"
        }    
    }
}