#ifndef MULTIPICDIALOG_H
#define MULTIPICDIALOG_H

#include <QDialog>
#include <QString>
#include <QFileDialog>

#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/stitching/stitcher.hpp>


namespace Ui {
class MultiPicDialog;
}

class MultiPicDialog : public QDialog
{
    Q_OBJECT

public:
    explicit MultiPicDialog(QWidget *parent = 0);
    ~MultiPicDialog();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::MultiPicDialog *ui;
    QStringList fileNames;
    QImage * images[6] = {NULL};
    QImage * process;
//    cv::Mat native[6];
    cv::vector<cv::Mat> natives;
    cv::Mat result;

};

#endif // MULTIPICDIALOG_H
