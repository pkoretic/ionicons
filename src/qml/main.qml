import QtQuick 2.7
import QtQuick.Window 2.2

import "ionicons.js" as Ionicons

Window {
    id: window

    width: 1920
    height: 1080

    visible: true
    visibility: Window.Maximized

    title: qsTr("Hello Ionicons")

    // load font file
    FontLoader { id: ioniconsFont; source: "ionicons.ttf" }

    // create model data
    Component.onCompleted: {
        for(var i in Ionicons.icon) {
            icons.append({ code: Ionicons.icon[i], name: i })
        }
    }

    // draw icons in a grid
    GridView {
        id: grid
        anchors.fill: parent

        cellWidth: 300
        cellHeight: 200

        model: ListModel { id: icons }
        delegate: Item {
            width: grid.cellWidth
            height: grid.cellHeight
            Column {
                anchors.fill: parent

                // this draws our icon
                // 'code' can be set directly as Ionicons.icon.alert
                // 'family' can be set directly as 'Ionicons'

                Text { text: code; font.family: ioniconsFont.name; anchors.horizontalCenter: parent.horizontalCenter; font.pointSize: 50; color: "#aaaaaa"; style: Text.Outline; styleColor: "#666666" }

                Text { text: name; anchors.horizontalCenter: parent.horizontalCenter }
            }
        }
    }
}
