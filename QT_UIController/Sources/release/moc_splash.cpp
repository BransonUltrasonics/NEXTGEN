/****************************************************************************
** Meta object code from reading C++ file 'splash.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.9.1)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../Header/splash.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'splash.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.9.1. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_Splash_t {
    QByteArrayData data[6];
    char stringdata0[78];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Splash_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Splash_t qt_meta_stringdata_Splash = {
    {
QT_MOC_LITERAL(0, 0, 6), // "Splash"
QT_MOC_LITERAL(1, 7, 24), // "systemReadyStatusChanged"
QT_MOC_LITERAL(2, 32, 0), // ""
QT_MOC_LITERAL(3, 33, 11), // "a_ReqBuffer"
QT_MOC_LITERAL(4, 45, 20), // "getSystemReadyStatus"
QT_MOC_LITERAL(5, 66, 11) // "getSCStatus"

    },
    "Splash\0systemReadyStatusChanged\0\0"
    "a_ReqBuffer\0getSystemReadyStatus\0"
    "getSCStatus"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Splash[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    1,   29,    2, 0x0a /* Public */,

 // methods: name, argc, parameters, tag, flags
       4,    0,   32,    2, 0x02 /* Public */,
       5,    0,   33,    2, 0x02 /* Public */,

 // slots: parameters
    QMetaType::Void, QMetaType::QString,    3,

 // methods: parameters
    QMetaType::Int,
    QMetaType::Int,

       0        // eod
};

void Splash::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Splash *_t = static_cast<Splash *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->systemReadyStatusChanged((*reinterpret_cast< QString(*)>(_a[1]))); break;
        case 1: { int _r = _t->getSystemReadyStatus();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        case 2: { int _r = _t->getSCStatus();
            if (_a[0]) *reinterpret_cast< int*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject Splash::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Splash.data,
      qt_meta_data_Splash,  qt_static_metacall, nullptr, nullptr}
};


const QMetaObject *Splash::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Splash::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_Splash.stringdata0))
        return static_cast<void*>(const_cast< Splash*>(this));
    return QObject::qt_metacast(_clname);
}

int Splash::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
