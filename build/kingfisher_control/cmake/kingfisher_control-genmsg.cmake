# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kingfisher_control: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ikingfisher_control:/home/wnm03/kingfisher_ws/src/kingfisher_control/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kingfisher_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_custom_target(_kingfisher_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kingfisher_control" "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kingfisher_control
  "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_cpp(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kingfisher_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_cpp _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_gencpp)
add_dependencies(kingfisher_control_gencpp kingfisher_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kingfisher_control
  "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_eus(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kingfisher_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_eus _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_geneus)
add_dependencies(kingfisher_control_geneus kingfisher_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kingfisher_control
  "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_lisp(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kingfisher_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_lisp _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_genlisp)
add_dependencies(kingfisher_control_genlisp kingfisher_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kingfisher_control
  "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
)

### Generating Services

### Generating Module File
_generate_module_py(kingfisher_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kingfisher_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kingfisher_control_generate_messages kingfisher_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/wnm03/kingfisher_ws/src/kingfisher_control/msg/PidDiagnose.msg" NAME_WE)
add_dependencies(kingfisher_control_generate_messages_py _kingfisher_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kingfisher_control_genpy)
add_dependencies(kingfisher_control_genpy kingfisher_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kingfisher_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kingfisher_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kingfisher_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kingfisher_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kingfisher_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kingfisher_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kingfisher_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kingfisher_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kingfisher_control_generate_messages_py std_msgs_generate_messages_py)
endif()
