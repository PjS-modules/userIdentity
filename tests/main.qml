/*
 * Main gui test app.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick.Controls


ApplicationWindow {

    id: app

    visible: true

    width: 500
    height: 700

    AuthorizationPage {
        anchors.fill: parent

        clip: true
    }
}
