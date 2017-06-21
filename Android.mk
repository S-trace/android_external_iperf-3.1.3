LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

iperf_SOURCES = \
    src/cjson.c \
    src/iperf_api.c \
    src/iperf_client_api.c \
    src/iperf_error.c \
    src/iperf_locale.c \
    src/iperf_sctp.c \
    src/iperf_server_api.c \
    src/iperf_tcp.c \
    src/iperf_udp.c \
    src/iperf_util.c \
    src/main.c \
    src/net.c \
    src/tcp_info.c \
    src/tcp_window_size.c \
    src/timer.c \
    src/units.c

LOCAL_SRC_FILES := $(iperf_SOURCES)

LOCAL_C_INCLUDES :=$(LOCAL_PATH)/src 

LOCAL_CFLAGS+=-O3 -g -W -Wall -Wno-unused 

LOCAL_MODULE:= iperf3

LOCAL_MODULE_TAGS := debug eng optional

# Uncomment this for static build
# LOCAL_STATIC_LIBRARIES := libc libm
# LOCAL_FORCE_STATIC_EXECUTABLE := true

include $(BUILD_EXECUTABLE)


