/*
 * Qt wrapper for Authenticator.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#include "qauthenticator.h"


QAuthenticator::QAuthenticator(QObject *parent)
    : QObject{parent}{

}


HASH QAuthenticator::authenticate(HASH loginPass){
    Authenticator temp;
    return temp.authenticate(loginPass);
}
