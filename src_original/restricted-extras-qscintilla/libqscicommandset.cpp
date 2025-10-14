#include <QList>
#include <QSettings>
#include <qscicommandset.h>
#include "libqscicommandset.h"
#include "libqscicommandset.hxx"

bool QsciCommandSet_ReadSettings(QsciCommandSet* self, QSettings* qs) {
    return self->readSettings(*qs);
}

bool QsciCommandSet_WriteSettings(QsciCommandSet* self, QSettings* qs) {
    return self->writeSettings(*qs);
}

libqt_list /* of QsciCommand* */ QsciCommandSet_Commands(QsciCommandSet* self) {
    QList<QsciCommand*>& _ret = self->commands();
    // Convert QList<> from C++ memory to manually-managed C memory
    QsciCommand** _arr = static_cast<QsciCommand**>(malloc(sizeof(QsciCommand*) * (_ret.size() + 1)));
    for (qsizetype i = 0; i < _ret.size(); ++i) {
        _arr[i] = _ret[i];
    }
    libqt_list _out;
    _out.len = _ret.size();
    _out.data = static_cast<void*>(_arr);
    return _out;
}

void QsciCommandSet_ClearKeys(QsciCommandSet* self) {
    self->clearKeys();
}

void QsciCommandSet_ClearAlternateKeys(QsciCommandSet* self) {
    self->clearAlternateKeys();
}

QsciCommand* QsciCommandSet_BoundTo(const QsciCommandSet* self, int key) {
    return self->boundTo(static_cast<int>(key));
}

QsciCommand* QsciCommandSet_Find(const QsciCommandSet* self, int command) {
    return self->find(static_cast<QsciCommand::Command>(command));
}

bool QsciCommandSet_ReadSettings2(QsciCommandSet* self, QSettings* qs, const char* prefix) {
    return self->readSettings(*qs, prefix);
}

bool QsciCommandSet_WriteSettings2(QsciCommandSet* self, QSettings* qs, const char* prefix) {
    return self->writeSettings(*qs, prefix);
}
