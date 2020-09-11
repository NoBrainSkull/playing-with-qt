import sys
from PySide2.QtWidgets import QApplication, QPushButton
from PySide2.QtCore import Slot

@Slot()
def say_hello():
        print("Button clicked, Hello!")

app = QApplication([])
button = QPushButton("click me")
button.clicked.connect(say_hello)
button.show()
app.exec_()
