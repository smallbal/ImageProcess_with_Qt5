#ifndef TRANSFORMIMAGE_H
#define TRANSFORMIMAGE_H


#include <QImage>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/imgproc/imgproc.hpp>


QImage cvMat2QImage(const cv::Mat& mat);
cv::Mat QImage2cvMat(QImage image);


#endif // TRANSFORMIMAGE_H

