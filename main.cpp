#include <QApplication>
//#include <QtWidgets/QApplication>
#include <QtQml/QQmlContext>
//#include <QtQuick/QQuickView>
#include <QQmlApplicationEngine>
#include <QtCore/QDir>
#include "datacharts.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine viewer;
    viewer.load(QUrl("qrc:/main.qml"));
    DataCharts dataChart(&viewer);
    viewer.rootContext()->setContextProperty("dataChart", &dataChart);
    return app.exec();
}
