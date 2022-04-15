/*
 * Register page.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


import QtQuick


RegisterPageUI {

    signal returnFromRegister

    function clearValuesAndReturn(){
        registerNameInput.text = ""
        registerPassInput.text = ""
        returnFromRegister()
    }
    
    function errorHandler(){
        //
    }

    registerAccountButton.onClicked: {
        //AccountRegister.setUsername(registerNameInput.text);
        //AccountRegister.setPassword(registerPassInput.text);
        if (AccountRegister.registerAccount()){
           clearValuesAndReturn()
        }
        else {
           console.log("Cannot register: " + AccountRegister.error)
        }
    }

    cancelRegisterButton.onClicked: {
        clearValuesAndReturn()
    }

    Keys.onEscapePressed: {
        clearValuesAndReturn()
    }
}
