#include "datacharts.h"
#include <QtCharts/QXYSeries>
#include <QtCharts/QValueAxis>
#include <QtCharts/QAreaSeries>
#include <QtQuick/QQuickView>
#include <QtQuick/QQuickItem>
#include <QtCore/QDebug>
#include <QtCore/QtMath>

QT_CHARTS_USE_NAMESPACE

Q_DECLARE_METATYPE(QAbstractSeries *)
Q_DECLARE_METATYPE(QAbstractAxis *)

DataCharts::DataCharts(QQmlApplicationEngine *appViewer, QObject *parent) :
    QObject(parent),
    m_appViewer(appViewer),
    m_index(-1)
{
    qRegisterMetaType<QAbstractSeries*>();
    qRegisterMetaType<QAbstractAxis*>();
}

void DataCharts::update(QAbstractSeries *series,QAbstractAxis *axisX,QAbstractAxis *axisY)
{
    if (series) {
        QXYSeries *xySeries = static_cast<QXYSeries *>(series);
        QValueAxis *X = static_cast<QValueAxis *>(axisX);
        QValueAxis *Y = static_cast<QValueAxis *>(axisY);
        qreal x_max,y_max,x,y;
        x_max = X->max();
        y_max = Y->max();
        if (count_x == x_max)
        {
            count_x = 0;
            xySeries->clear();
        }
        x = count_x;
        y = 2 * x + 1;
        xySeries->insert(count_x,QPointF(x, y));
        count_x ++;
    }
}

void DataCharts::getData(QAbstractSeries* series)
{
    QXYSeries *xySeries = static_cast<QXYSeries *>(series);

    // Remove previous data
    qreal x,y;

    // Append the new data depending on the type
    for (int i(0); i < count_x; i++) {
                x = i;
                y = 2 * x + 1;
            xySeries->insert(i,QPointF(x, y));
        }

}




