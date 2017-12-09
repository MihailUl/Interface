#ifndef DATACHARTS_H
#define DATACHARTS_H
#include <QtCore/QObject>
#include <QtCharts/QAbstractSeries>
#include <QQmlApplicationEngine>
class QQuickView;

QT_CHARTS_USE_NAMESPACE

class DataCharts : public QObject
{
    Q_OBJECT
public:
    explicit DataCharts(QQmlApplicationEngine *appViewer, QObject *parent = 0);

Q_SIGNALS:

public slots:
    void getData(QAbstractSeries *series);
    void update(QAbstractSeries *series);

private:
    QQmlApplicationEngine *m_appViewer;
    QList<QVector<QPointF> > m_data;
    int m_index;
};
#endif // DATACHARTS_H
