QT += core
QT -= gui

CONFIG += c++11

TARGET = MyYolo
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp\
         data.h\
         data.c\
         activations.h\          # all kinds of none-linearity functions (forward activation & backward gradients compute)
         activations.c\
         activation_layer.h\     # layer (all neurons) forward and backward
         activation_layer.c\
         avgpool_layer.h\        # forward & backward avg_pool
         avgpool_layer.c\
         connected_layer.h\      # forward & backward fully-connected layer
         connected_layer.c\
         convolutional_layer.h\  # forward & backward & other ops convolutinoal layer
         convolutional_layer.c\
         dropout_layer.h\        # forward & backward dropout layer
         dropout_layer.c\
         im2col.h\               # convert sliding window convolutional ops to matrix multiple
         im2col.c\
         col2im.h\               # convert matrix multiple result back to image
         col2im.c\
         layer.h\                # important!!! define data structure layer!
         layer.c\
         maxpool_layer.h\        # forward & backward avg_pool
         maxpool_layer.c\
         network.h\              # important!!! define data structure network!
         network.c\
         softmax_layer.h\        # forward & backward softmax layer
         softmax_layer.c\
         cuda.h\                 # CUDA head file
         cuda.c\
         utils.h\                # util function
         utils.c\
         deconvolutional_layer.h\# forward & backward deconvolutional_layer
         deconvolutional_layer.c\
         gemm.h\                 # matrix multiple ops
         gemm.c\
         image.h\                # many ops on image
         image.c\
         batchnorm_layer.h\      # forward & backward batchnorm_layer
         batchnorm_layer.c\
         normalization_layer.h\  # forward & backward normalization_layer
         normalization_layer.c\
         parser.h\               # parse network cfg & load save weights
         parser.c\
         darknet.c\              # define top module darknet
         blas.h\                 # define some linear algebra
         blas.c\
         box.h\                  # define data structure box & ops on box(iou ,non max supression etc.)
         box.c\
         cost_layer.h\           # forward & backward cost_layer
         cost_layer.c\
         crop_layer.h\           # forward crop_layer
         crop_layer.c\
         local_layer.h\          # forward & backward local_layer
         local_layer.c\
         reorg_layer.h\          # forward & backward reorg_layer
         reorg_layer.c\
         shortcut_layer.h\       # forward & backward shortcut_layer
         shortcut_layer.c\
         detection_layer.h\      # forward & backward detection_layer
         detection_layer.c\
         region_layer.h\         # forward & backward region_layer
         region_layer.c\
         route_layer.h\          # forward & backward route_layer
         route_layer.c\
         yolo.c\                 # YOLO projects
         tree.h\                 # define tree data structure and its ops
         tree.c\
         list.h\                 # define list data structure and its ops
         list.c\
         option_list.h\          # define option_list(key value?) data structure and its ops
         option_list.c\
         matrix.h\               # define matrix data structure and its ops
         matrix.c\
         stb_image.h\            # image file read write
         stb_image_write.h\
         demo.h\                 # a demo for what??? mutli thread???
         demo.c



# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0
