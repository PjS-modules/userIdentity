/*
 * This file is part of PjS Project.
 * All rights reserved , distributed under GPLv3+ ,
 * if not explicitly stated otherwise (see www.gnu.org for details).
 */


#include <iostream>

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "tests.h"


using std::cout;
using std::endl;

const auto ERROR__UNHANDLED_EXCEPTION {"Caught unhandled exception:\n"};
const auto ERROR__UNKNOWN_EXCEPTION {"Caught unknown exception\n"};
const auto APP_NAME {"Passport"};


int protected_main(int argc, char *argv[]){

    cout << "Testing Authorization" << endl;

    test();

    /* variables */
    const QUrl qmlPath("qrc:/main.qml");

    /* objects */
    //AccountRegister* accountRegister = new AccountRegister();
    //Agent* agent = new Agent();
    //AppsList* appslist = new AppsList();

    /* Configure gui */
    QGuiApplication app(argc, argv);


    /* Configure qml */
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("AccountRegister", accountRegister);
    //engine.rootContext()->setContextProperty("AppsList", appslist);

    engine.addImportPath(QStringLiteral("qrc:/../src/qml/"));

    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [qmlPath](QObject* obj, const QUrl& objUrl) {
                        if (not obj and qmlPath == objUrl){
                            QCoreApplication::exit(-1);}},
                     Qt::QueuedConnection);

    engine.load(qmlPath);

    return app.exec();
}

//
int main(int argc, char** argv){
    try {
        return protected_main(argc, argv);}
    catch (const std::exception &e) {
        std::cerr << ERROR__UNHANDLED_EXCEPTION;
        std::cerr << " - what(): " << e.what() << '\n';}
    catch (...) {
        std::cerr << ERROR__UNKNOWN_EXCEPTION;}
    return EXIT_FAILURE;
}
