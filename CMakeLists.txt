cmake_minimum_required(VERSION 3.13)
project(ObjectiveCPlayground)

set(CMAKE_CXX_STANDARD 14)
find_library(FOUNDATION Foundation)
find_library(CoreData CoreData)

add_executable(ObjectiveCPlayground main.cpp)

add_executable(HelloWorldObjC
        Fraction+MathOps.h Fraction+MathOps.m
        Fraction+Stuff.h Fraction+Stuff.m
        HelloWorld.m Fraction.h Fraction.m Complex.h Complex.m)
target_link_libraries(HelloWorldObjC PRIVATE ${FOUNDATION})

add_executable(Inheritance Inheritance.m XYPoint.h XYPoint.m Rectangle.h Rectangle.m)
target_link_libraries(Inheritance PRIVATE ${FOUNDATION})

add_executable(Exception ExceptionHandling.m)
target_link_libraries(Exception PRIVATE ${FOUNDATION})

add_executable(ARC ARC.m)
target_link_libraries(ARC PRIVATE ${FOUNDATION})
target_compile_options(ARC PRIVATE -fobjc-arc)

add_executable(enum enum/Enum.m)
target_link_libraries(enum PRIVATE ${FOUNDATION})
target_compile_options(enum PRIVATE -fobjc-arc)

add_executable(protocol Drawing.h Drawing.m)
target_link_libraries(protocol PRIVATE ${FOUNDATION})
target_compile_options(protocol PRIVATE -fobjc-arc)

add_executable(literal literal/main.m)
target_link_libraries(literal PRIVATE ${FOUNDATION})
target_compile_options(literal PRIVATE -fobjc-arc)

add_executable(const const/main.m const/EOCLoginManager.h const/EOCLoginManager.m)
target_link_libraries(const PRIVATE ${FOUNDATION})
target_compile_options(const PRIVATE -fobjc-arc)

add_executable(property property/main.m)
target_link_libraries(property PRIVATE ${FOUNDATION} ${CoreData})
target_compile_options(property PRIVATE -fobjc-arc)

add_executable(class_cluster class_cluster/main.m)
target_link_libraries(class_cluster PRIVATE ${FOUNDATION} ${CoreData})
target_compile_options(class_cluster PRIVATE -fobjc-arc)

add_executable(message_dispatching message_dispatching/main.m message_dispatching/EOCAutoDictionary.m)
target_link_libraries(message_dispatching PRIVATE ${FOUNDATION} ${CoreData})
target_compile_options(message_dispatching PRIVATE -fobjc-arc)

add_executable(method_switch method_switch/main.m)
target_link_libraries(method_switch PRIVATE ${FOUNDATION} ${CoreData})
target_compile_options(method_switch PRIVATE -fobjc-arc)

add_executable(default_initializer default_initializer/main.m)
target_link_libraries(default_initializer PRIVATE ${FOUNDATION} ${CoreData})
target_compile_options(default_initializer PRIVATE -fobjc-arc)

if(${APPLE})
find_library(AppKit AppKit)
endif()
