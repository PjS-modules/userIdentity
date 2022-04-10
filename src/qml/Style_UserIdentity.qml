/*
 * Style variables.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


pragma Singleton

import QtQuick


QtObject {

    property int appWidth: appMinWidth;
    property int appMinWidth: 500
    property int appMaxWidth: appMinWidth * 2

    property int appHeight: appMinHeight;
    property int appMinHeight: 700
    property int appMaxHeight: appMinHeight * 1.3

    property QtObject mainBlock: QtObject {
        property int minimalWidth: 400
        property int optimalWidth: 500
        property int maximumWidth: 800
        property int maximumOptimalWidth: 900

    }

    property QtObject welcomePage: QtObject {
        property int time: 800
        property color background: 'steelblue'
    }

    property QtObject loginPage: QtObject {

    }

    property QtObject registerPage: QtObject {

    }

    property int optimum_MainBlockWidth: 500
    property int smallMainBlockWidth: 300
    property int minimumDescriptionBlock: 300
    property int bigAppWidth: appMinWidth * 1.3


    property QtObject toolBar: QtObject {
        property int height: 64
        property int buttonWidth: 64
        property int maxWidth:300

        property string backgroundColor: "steelblue"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int nameFontSize: Qt.application.font.pixelSize * 2
    }

}
    /*
    property QtObject headerBlock: QtObject {
        property string backgroundColor: "steelblue"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int fontSize: Qt.application.font.pixelSize * 2
    }

    property QtObject buttonsBlock: QtObject {
        property string backgroundColor: "grey"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int fontSize: Qt.application.font.pixelSize * 2
    }

    property QtObject tabsBlock: QtObject {
        property string backgroundColor: "steelblue"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int fontSize: Qt.application.font.pixelSize * 2
    }

    property QtObject pageApps: QtObject {
        property string backgroundColor: "darkgrey"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int labelFontSize: 28
        property int fontSize: Qt.application.font.pixelSize * 2
    }

    property QtObject configureBlock: QtObject {
        property string backgroundColor: "orange"
        property string borderColor: "grey"
        property int borderWidth: 1

        property int fontSize: Qt.application.font.pixelSize * 2
    }
    */

