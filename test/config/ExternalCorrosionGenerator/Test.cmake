set(CORROSION_DIR ${CMAKE_ARGV3})
set(CORROSION_INSTALL ${CMAKE_ARGV4})

if (CMAKE_VERSION VERSION_GREATER_EQUAL "3.15")
    set(CE COMMAND_ECHO STDOUT)
endif()

execute_process(
    COMMAND
        ${CMAKE_COMMAND} ${CMAKE_CURRENT_LIST_DIR}
            -DCORROSION_GENERATOR_EXECUTABLE=${CORROSION_INSTALL}/libexec/corrosion-generator
    ${CE}
    RESULT_VARIABLE SUCCESS
)

if (NOT SUCCESS EQUAL 0)
    message(FATAL_ERROR)
endif()