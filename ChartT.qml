import QtQuick 2.0
import QtCharts 2.0

ChartView {
         id: chartView
         title: "Line"
         anchors.fill: parent
         antialiasing: true

         ValueAxis {
                 id: axisY
                 min: -1
                 max: 200
             }

             ValueAxis {
                 id: axisX
                 min: 0
                 max: 20
             }
             LineSeries {
                    id: series1
                    axisX: axisX
                    axisY: axisY

                }

             Timer {
                 id: refreshTimer
                 interval: 1 / 60 * 1000 // 60 Hz
                 running: true
                 repeat: true
                 onTriggered: {
                     dataSource.update(chartView.series(1),chartView.axisX(),axi);
                 }
             }
                Component.onCompleted: {
                   dataChart.getData(series1);
                }
}

