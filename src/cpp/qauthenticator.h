/*
 * Qt wrapper for Authenticator.
 *
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#ifndef QAUTHENTICATOR_H
#define QAUTHENTICATOR_H


#include <QObject>

#include "authenticator.h"


class QAuthenticator : public QObject{
    Q_OBJECT
public:

    explicit QAuthenticator(QObject *parent = nullptr);

    Q_INVOKABLE
    HASH authenticate(HASH loginPass);
signals:

};


#endif // QAUTHENTICATOR_H
