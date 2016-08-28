#include "mainwindow.h"
#include "ui_mainwindow.h"

#include "onepicdialog.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_OnePic_clicked()
{
    onepic = new OnePicDialog(this);
    //模态:当子窗口弹出是，焦点始终被强行集中于子窗口，只要子窗口不退出，焦点就不会被释放
    onepic->setModal(true);//true为模态，false为非模态(默认)
    onepic->show();
}

void MainWindow::on_MutiPic_clicked()
{
    multipic = new MultiPicDialog(this);
    multipic->setModal(true);
    multipic->show();
}
