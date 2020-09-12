#!/bin/python

import sys
from OutWritter import OutWritter
from PySide2.QtWidgets import QApplication, QPushButton
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

context = view.rootContext()
context.setContextProperty("out", writter)

view.show()

sys.exit(app.exec_())
