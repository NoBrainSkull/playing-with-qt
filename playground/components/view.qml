import QtQuick 2.0

// QML Types : https://doc.qt.io/qt-5/qtquick-qmlmodule.html
// QML Components : https://doc.qt.io/qt-5/qtqml-documents-definetypes.html

Rectangle {
    property alias username: user.name
    property alias pseudo: user.pseudo
    property alias picture: user.picture

    width: 200
    height: 200
    color: "#263238"

    User {
        id: "user"
        anchors.centerIn: parent
        name: "username"
        pseudo: "@pseudo"
    }

    //Gauge {
        //fillColor: "#00004F"
    //}
}
