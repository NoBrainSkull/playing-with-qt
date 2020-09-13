import QtQuick 2.0


Rectangle {
  id: "window"
  color: "#263238"

  property alias entries: list.entries

  List {
    id: "list"
  }
}
