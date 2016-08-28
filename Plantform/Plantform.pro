#-------------------------------------------------
#
# Project created by QtCreator 2016-08-22T15:35:30
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = Plantform
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    onepicdialog.cpp \
    multipicdialog.cpp \
    transformimage.cpp

HEADERS  += mainwindow.h \
    onepicdialog.h \
    multipicdialog.h \
    transformimage.h

FORMS    += mainwindow.ui \
    onepicdialog.ui \
    multipicdialog.ui\

CONFIG += c++11



INCLUDEPATH += F:/opencv2.4.10/OpenCVMinGW/include/opencv \
               F:/opencv2.4.10/OpenCVMinGW/include/opencv2 \
               F:/opencv2.4.10/OpenCVMinGW/include


#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libcv2.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_calib3d2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_contrib2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_nonfree2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ocl2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_gpu2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_photo2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_objdetect2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_legacy2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ml2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_video2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_features2d2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_highgui2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_imgproc2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_flann2410.dll.a
#LIBS +=F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_core2410.dll.a
#LIBS += -LF:/opencv2.4.10/OpenCVMinGW/lib/



#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libcv2.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_video2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_video_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ts2410.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ts_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_video_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_photo_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_ocl_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_objdetect_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_nonfree_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_ml_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_legacy_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_imgproc_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_highgui_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_gpu_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_flann_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_features2d_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_core_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_contrib_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_test_calib3d_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_photo2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_photo_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_video_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_photo_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_ocl_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_objdetect_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_nonfree_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_imgproc_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_highgui_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_gpu_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_features2d_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_core_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_perf_calib3d_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ocl2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ocl_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_objdetect2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_objdetect_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_nonfree2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_nonfree_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ml2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_ml_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_legacy2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_legacy_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_imgproc2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_imgproc_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_highgui2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_highgui_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_gpu2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_gpu_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_flann2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_flann_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_features2d2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_features2d_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_core2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_core_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_contrib2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_contrib_pch_dephelp.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_calib3d2410.dll.a
#LIBS+= F:/opencv2.4.10/OpenCVMinGW/lib/libopencv_calib3d_pch_dephelp.a





#INCLUDEPATH+= F:/opencv2.4.10/OpenCVMinGW_Download/include/opencv \
#            F:/opencv2.4.10/OpenCVMinGW_Download/include/opencv2
#            F:/opencv2.4.10/OpenCVMinGW_Download/include

LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_calib3d2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_calib3d2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_contrib2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_contrib2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_core2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_core2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_features2d2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_features2d2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_flann2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_flann2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_gpu2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_gpu2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_highgui2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_highgui2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_imgproc2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_imgproc2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_legacy2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_legacy2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ml2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ml2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_nonfree2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_nonfree2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_objdetect2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_objdetect2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ocl2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ocl2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_photo2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_photo2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_stitching2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_stitching2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_superres2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_superres2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ts2410.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_ts2410d.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_video2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_video2410d.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_videostab2410.dll.a
LIBS+= F:/opencv2.4.10/OpenCVMinGW_Download/x86/mingw/lib/libopencv_videostab2410d.dll.a

