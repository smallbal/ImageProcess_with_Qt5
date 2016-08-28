#ifndef ONEPICDIALOG_H
#define ONEPICDIALOG_H

#include <QDialog>
#include <QImage>
#include <QGraphicsView>
#include <QGraphicsScene>
#include <QFileDialog>

#include <opencv2/core/core.hpp>
//#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
namespace Ui {
class OnePicDialog;
}

class OnePicDialog : public QDialog
{
    Q_OBJECT

public:
    explicit OnePicDialog(QWidget *parent = 0);
    ~OnePicDialog();

private slots:
    void on_OpenButton_clicked();
    void on_ProcessButton_clicked();

private:
    Ui::OnePicDialog *ui;
    QString fileName;
    QImage *image;
    QImage *Process;
    cv::Mat native;
    cv::Mat result;

    double Canny_threshold1 = 50;
    double Canny_threshold2 = 120;
    double Threshold_thresh = 150;
    double Threshold_maxval = 200;
    int HoughLinesP_threshold = 20;
    double HoughLinesP_minLineLength = 10;
    double HoughLinesP_maxLineGap = 10;

    void drawDetectLines(cv::Mat& image,const cv::vector<cv::Vec4i>& lines,cv::Scalar  color);
};

#endif // ONEPICDIALOG_H
