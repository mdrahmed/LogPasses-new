# Install script for directory: /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/Eclipse Paho C/samples" TYPE FILE FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTAsync_publish.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTAsync_publish_time.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTAsync_subscribe.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTClient_publish.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTClient_publish_async.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/MQTTClient_subscribe.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/paho_c_pub.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/paho_c_sub.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/paho_cs_pub.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/paho_cs_sub.c"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/samples/pubsub_opts.c"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/doc/Eclipse Paho C" TYPE FILE FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/CONTRIBUTING.md"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/epl-v20"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/edl-v10"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/README.md"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/notice.html"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/cmake_install.cmake")
  include("/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
