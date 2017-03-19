# Copyright 2017 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := userlib

MODULE_SRCS += \
    $(LOCAL_DIR)/client.c \

MODULE_STATIC_LIBS := \
    ulib/fs \
    ulib/sync \

MODULE_LIBS := \
    ulib/c \
    ulib/magenta \
    ulib/mxio \

MODULE_HEADER_DEPS := ulib/ddk

include make/module.mk