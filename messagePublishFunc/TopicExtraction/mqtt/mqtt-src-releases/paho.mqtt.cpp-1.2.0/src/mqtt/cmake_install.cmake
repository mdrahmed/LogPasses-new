# Install script for directory: /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mqtt" TYPE FILE FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/async_client.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/buffer_ref.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/buffer_view.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/callback.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/client.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/connect_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/create_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/delivery_token.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/disconnect_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/exception.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/iaction_listener.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/iasync_client.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/iclient_persistence.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/message.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/properties.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/response_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/server_response.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/ssl_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/string_collection.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/subscribe_options.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/thread_queue.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/token.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/topic.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/types.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/will_options.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.cpp-1.2.0/src/mqtt/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
