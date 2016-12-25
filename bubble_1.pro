TEMPLATE = app

QT += qml quick widgets

CONFIG += c++11 debug console
QMAKE_CXXFLAGS_DEBUG += "-gstabs+"
QMAKE_CFLAGS_DEBUG += "-gstabs+"
SOURCES += main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    qmldir \
    components/qmldir
