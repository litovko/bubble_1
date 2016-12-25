#include <QApplication>
#include <QQmlApplicationEngine>
#include <qdebug.h>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    setlocale(LC_ALL, ""); // избавляемся от кракозябров в консоли
    //engine.addImportPath("qrc:/QML/components");
    //qDebug()<<engine.importPathList();
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
