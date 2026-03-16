import QtQuick
import QtQuick.Effects
import QtQuick.VectorImage

Item {
    id: icon

    property string name: ""
    property color iconColor: "#000000"
    width: 20
    height: 20

    VectorImage {
        id: vectorSource
        anchors.fill: parent
        source: name ? "file:///" + applicationDirPath + "/images/icons/" + name + ".svg" : ""
        preferredRendererType: VectorImage.CurveRenderer
        visible: false
    }

    MultiEffect {
        anchors.fill: parent
        source: vectorSource
        colorization: 1.0
        colorizationColor: icon.iconColor
    }
}
