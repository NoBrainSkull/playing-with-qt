#!/bin/python

import sys
from OutWritter import OutWritter
from file import read_file
from PySide2.QtWidgets import QApplication
from PySide2.QtQuick import QQuickView
from PySide2.QtCore import QUrl, QTimer

app = QApplication([])
writter = OutWritter()
view = QQuickView()
url = QUrl("components/list_view.qml")

view.setResizeMode(QQuickView.SizeRootObjectToView)
view.setSource(url)

timer = QTimer()
timer.timeout.connect(lambda: None)
timer.start(100)

list = view.rootObject()
list.setProperty('entries', read_file("./config/bookmarks"))

context = view.rootContext()
context.setContextProperty("out", writter)

view.show()

sys.exit(app.exec_())
