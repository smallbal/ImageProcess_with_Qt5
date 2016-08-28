#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include "onepicdialog.h"
#include "multipicdialog.h"

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_OnePic_clicked();

    void on_MutiPic_clicked();

private:
    Ui::MainWindow *ui;
    OnePicDialog *onepic;
    MultiPicDialog *multipic;
};

#endif // MAINWINDOW_H
