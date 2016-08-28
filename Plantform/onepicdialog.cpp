#include "onepicdialog.h"
#include "ui_onepicdialog.h"

#include <QDebug>
#include "transformimage.h"


OnePicDialog::OnePicDialog(QWidget *parent) :
    QDialog(parent),
    ui(new Ui::OnePicDialog)
{
    ui->setupUi(this);
}

OnePicDialog::~OnePicDialog()
{
    delete ui;
}



void OnePicDialog::drawDetectLines(cv::Mat& image,const cv::vector<cv::Vec4i>& lines,cv::Scalar color)
{
    // 将检测到的直线在图上画出来
    cv::vector<cv::Vec4i>::const_iterator it=lines.begin();
    while(it!=lines.end())
    {
        cv::Point pt1((*it)[0],(*it)[1]);
        cv::Point pt2((*it)[2],(*it)[3]);
        cv::line(image,pt1,pt2,color,1); //  线条宽度设置为2
        ++it;
    }
}
void OnePicDialog::on_OpenButton_clicked()
{
    fileName = QFileDialog::getOpenFileName(
                    this, "选择一图片",
                    "../ImageProcess/",
                    "Image files (*.bmp *.jpg *.pbm *.pgm *.png *.ppm *.xbm *.xpm);;All files (*.*)");
    if(fileName != "")
    {
        qDebug()<<fileName;
        image = new QImage();
        if(image->load(fileName))
        {
            //QSize *ImageWindow = new QSize(ui->graphicsView->sizeHint());
            //QSize *ImageWindow = new QSize(260, 320);
//            image = new QImage(image->scaled(260, 320, Qt::KeepAspectRatio));
            image = new QImage(image->scaled(ui->graphicsView->width(),ui->graphicsView->height(), Qt::KeepAspectRatio));
            QGraphicsScene *scene = new QGraphicsScene;
            scene->addPixmap(QPixmap::fromImage(*image));
            ui->graphicsView->setScene(scene);
            ui->graphicsView->resize(image->width() + 2, image->height() + 2);
            ui->graphicsView->show();

        }
    }
}

void OnePicDialog::on_ProcessButton_clicked()
{
    //    native = cv::imread("C:\\Users\\superman\\Desktop\\timg.jpg");
    //    native = QImage2cvMat(*image).clone();
        native = cv::imread(fileName.toStdString());





        cv::cvtColor(native, result, cv::COLOR_BGR2GRAY);//将BGR图转换为灰度图
    //    cv::cvtColor(native, result, CV_BGR2GRAY);
        //cv::Canny(native, result, 50, 120, 3, false); // canny算法
        cv::Canny(native, result, Canny_threshold1, Canny_threshold2,3, false);
        //cv::Canny(InputArray image, OutputArray edges, double threshold1, double threshold2,
        //          int apertureSize=3, bool L2gradient=false);
    //    cv::Canny(native, result,50, 200, 3);//building.jpg 参数
       //cv::threshold(result, result, 150, 200, cv::THRESH_BINARY); //将灰度图转换二值化图像
        cv::threshold(result, result, Threshold_thresh, Threshold_maxval, cv::THRESH_BINARY);
        cv::vector<cv::Vec4i> *lines = new cv::vector<cv::Vec4i>;
        // 检测直线，最小投票为20，线条不短于10，间隙不小于10
        //void HoughLines(InputArray image, OutputArray lines, double rho, double theta,
        //                  int threshold, double srn=0, double stn=0 );
        //cv::HoughLinesP(result, *lines, 1, 3.1415927/180, 20, 10, 10); //直接用mat类读取timg.jpg的参数
        cv::HoughLinesP(result, *lines, 1, 3.1415927/180,
                        HoughLinesP_threshold,
                        HoughLinesP_minLineLength,
                        HoughLinesP_maxLineGap); //直接用mat类读取timg.jpg的参数
        //cv::HoughLinesP(result, *lines, 1, 3.1415927/180, 10, 10, 5);  //从QImage转成Mat类的参数
        drawDetectLines(native, *lines, cv::Scalar(0,255,0));
        qDebug()<<lines->size();
        cv::imshow("result", result);




        Process = new QImage();
        *Process = cvMat2QImage(native);//将Mat类图像转换为QImage类
    //    Process = new QImage(Process->scaled(260,320, Qt::KeepAspectRatio));
        Process = new QImage(Process->scaled(ui->resultView->width(), ui->resultView->height(), Qt::KeepAspectRatio));
        QGraphicsScene *scene2 = new QGraphicsScene;
        scene2->addPixmap(QPixmap::fromImage(*Process));
        ui->resultView->setScene(scene2);
        ui->resultView->resize(Process->width() + 2, Process->height() + 2);
        ui->resultView->show();

}
