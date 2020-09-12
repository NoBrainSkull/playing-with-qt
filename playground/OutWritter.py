import sys
from PySide2.QtCore import QObject, Slot

class OutWritter(QObject):

    @Slot(str, result=str)
    def write(self, output):
        sys.stdout.write(output)
        sys.stdout.flush()