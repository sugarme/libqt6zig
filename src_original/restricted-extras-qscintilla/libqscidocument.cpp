#include <qscidocument.h>
#include "libqscidocument.h"
#include "libqscidocument.hxx"

QsciDocument* QsciDocument_new() {
    return new QsciDocument();
}

QsciDocument* QsciDocument_new2(const QsciDocument* param1) {
    return new QsciDocument(*param1);
}

void QsciDocument_OperatorAssign(QsciDocument* self, const QsciDocument* param1) {
    self->operator=(*param1);
}

void QsciDocument_Delete(QsciDocument* self) {
    delete self;
}
