import QtQuick 2.0
import QtCharts 2.0

ChartView {
         id: chartView
         title: "Line"
         anchors.fill: parent
         antialiasing: true

         ValueAxis {
                 id: axisY1
                 min: -1
                 max: 4
             }

             ValueAxis {
                 id: axisY2
                 min: -10
                 max: 5
             }

             ValueAxis {
                 id: axisX
                 min: 0
                 max: 10
             }
             LineSeries {
                    id: series1
                    axisX: axisX
                    axisY: axisY
                }


                Component.onCompleted: {
                   dataChart.getData(series1);
                }
}

