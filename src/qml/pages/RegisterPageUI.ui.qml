/*
 * Register page ui.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import "../"


Item {

    property alias registerNameInput : registerNameInput
    property alias registerPassInput : registerPassInput

    property alias registerAccountButton : registerAccountButton
    property alias cancelRegisterButton : cancelRegisterButton

    clip: true

    ColumnLayout {

        anchors.centerIn: parent

        RowLayout {
            TextField {
                id: registerNameInput

                width: 80
                height: 20

                placeholderText: Texts_UserIdentity.registerPage.registerNameInput
            }
        }

        RowLayout {
            TextField {
                id: registerPassInput

                width: 80
                height: 20

                placeholderText: Texts_UserIdentity.registerPage.registerPassInput
            }
        }

        RowLayout {
            id: rowLayout

            width: 100
            height: 100

            Button {
                id: registerAccountButton
                text: Texts_UserIdentity.registerPage.registerAccountButton
            }

            Button {
                id: cancelRegisterButton
                text: Texts_UserIdentity.registerPage.cancelRegisterButton
            }

        }
    }
}
