#!/bin/python

import sys
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import Slot, QUrl
from PySide2.QtQuick import QQuickView

profile = QUrl.fromLocalFile("/home/blue/sources/python-qt/playground/img/profile.jpg")
username = "blue"
pseudo = "@NoBrainSkull"

@Slot()
def say_hello():
        print("Button clicked, Hello!")

app = QApplication([])
view = QQuickView()
url = QUrl("components/view.qml")
button = QPushButton("click me")
button.clicked.connect(say_hello)

view.setResizeMode(QQuickView.SizeRootObjectToView)
view.setSource(url)

user = view.rootObject()
user.setProperty('username', username)
user.setProperty('pseudo', pseudo)
user.setProperty('picture', profile)
view.show()

app.exec_()
