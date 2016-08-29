#include "multipicdialog.h"
#include "ui_multipicdialog.h"
#include <QDebug>


#include "transformimage.h"


MultiPicDialog::MultiPicDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::MultiPicDialog)
{
    ui->setupUi(this);
}

MultiPicDialog::~MultiPicDialog()
{
    delete ui;
}

void MultiPicDialog::on_pushButton_clicked()
{

    fileNames = QFileDialog::getOpenFileNames(
                    this, "6 Pictures most",
                    "../Plantform/",
                    "Image files (*.bmp *.jpg *.pbm *.pgm *.png *.ppm *.xbm *.xpm);;All files (*.*)");

    if(fileNames.empty())
        return;
    else
    {
        if(natives.empty() == false)
        {
            natives.clear();
        }
        qDebug()<<"opened";

        for(int i = 0; i!=fileNames.size(); i++)
        {
//            images[i] = new QImage();
//            images[i]->load(fileNames.at(i));
            images[i] = new QImage(fileNames.at(i));    //与上2行代码作用相同
            images[i] = new QImage(images[i]->scaled(ui->Pic_1->width(),ui->Pic_1->height(),Qt::KeepAspectRatio));

            //Opencv Mat类读取相应图片
            natives.push_back(cv::imread(fileNames.at(i).toStdString()));
            qDebug()<<fileNames.at(i)<<"读取成功";
        }
        qDebug()<<"容器存图片数量为"<<natives.size();


        if(images[0])
            ui->Pic_1->setPixmap(QPixmap::fromImage(*images[0]));
        if(images[1])
            ui->Pic_2->setPixmap(QPixmap::fromImage(*images[1]));
        if(images[2])
            ui->Pic_3->setPixmap(QPixmap::fromImage(*images[2]));
        if(images[3])
            ui->Pic_4->setPixmap(QPixmap::fromImage(*images[3]));
        if(images[4])
            ui->Pic_5->setPixmap(QPixmap::fromImage(*images[4]));
        if(images[5])
            ui->Pic_6->setPixmap(QPixmap::fromImage(*images[5]));


    }
}


void MultiPicDialog::on_pushButton_2_clicked()
{
    cv::Stitcher stitcher = cv::Stitcher::createDefault(false);
    cv::Stitcher::Status status = stitcher.stitch(natives, result);
    if (status != cv::Stitcher::OK)
    {
            qDebug()<< "Can't stitch images, error code = " << status << endl;
            return;
    }



    process = new QImage();
    *process = cvMat2QImage(result);//将Mat类图像转换为QImage类
    process = new QImage(process->scaled(ui->Result->width(), ui->Result->height(), Qt::KeepAspectRatio));
    ui->Result->setPixmap(QPixmap::fromImage(*process));
}
