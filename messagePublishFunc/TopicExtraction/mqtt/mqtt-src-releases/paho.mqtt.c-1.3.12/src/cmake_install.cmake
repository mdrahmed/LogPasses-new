# Install script for directory: /home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so.1.3.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3c.so.1.3.12"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3c.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so.1.3.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3c.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3c.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so.1.3.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3a.so.1.3.12"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3a.so.1"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so.1.3.12"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so.1"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/libpaho-mqtt3a.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpaho-mqtt3a.so")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTVersion")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion"
         OLD_RPATH "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/MQTTVersion")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTAsync.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTClient.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTClientPersistence.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTProperties.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTReasonCodes.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTSubscribeOpts.h"
    "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/MQTTExportDeclarations.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake"
         "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c/eclipse-paho-mqtt-cConfig.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/CMakeFiles/Export/dd175520bdcfdcc5f75bc4f14a6d7fe8/eclipse-paho-mqtt-cConfig-noconfig.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/eclipse-paho-mqtt-c" TYPE FILE FILES "/home/u18new/LLVM_PASSES/LogPasses-new/messagePublishFunc/TopicExtraction/mqtt/mqtt-src-releases/paho.mqtt.c-1.3.12/src/eclipse-paho-mqtt-cConfigVersion.cmake")
endif()

