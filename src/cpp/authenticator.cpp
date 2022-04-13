/*
 * Authenticator.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#include "authenticator.h"


Authenticator::Authenticator(){

}


ID_TOKEN Authenticator::authenticate(ROSTRING login, ROSTRING pass){
    // TO-DO: code
    return login.size() + pass.size();
}


