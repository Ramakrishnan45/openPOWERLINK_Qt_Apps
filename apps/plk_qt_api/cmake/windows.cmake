################################################################################
#
# Windows definitions for openPOWERLINK API QT wrapper library
#
# Copyright (c) 2014, Kalycito Infotech Pvt. Ltd.,
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#     * Redistributions of source code must retain the above copyright
#       notice, this list of conditions and the following disclaimer.
#     * Redistributions in binary form must reproduce the above copyright
#       notice, this list of conditions and the following disclaimer in the
#       documentation and/or other materials provided with the distribution.
#     * Neither the name of the copyright holders nor the
#       names of its contributors may be used to endorse or promote products
#       derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
# ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
# DISCLAIMED. IN NO EVENT SHALL COPYRIGHT HOLDERS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
################################################################################

################################################################################
# Set architecture specific installation files
IF(CONFIG_OPLK_QT_WRAP_WINDOWS_DLL)

    IF(NOT (${OPLKDLL_RELEASE} STREQUAL "OPLKDLL_RELEASE-NOTFOUND"))
        INSTALL(FILES ${OPLKDLL_RELEASE}
                DESTINATION ${CMAKE_PROJECT_NAME}
                CONFIGURATIONS "Release"
               )
    ENDIF()

    IF(NOT (${OPLKDLL_DEBUG} STREQUAL "OPLKDLL_DEBUG-NOTFOUND"))
        INSTALL(FILES ${OPLKDLL_DEBUG}
                DESTINATION ${CMAKE_PROJECT_NAME}
                CONFIGURATIONS "Debug"
               )
    ENDIF()

    get_target_property(QtCore_location_Release Qt5::Core LOCATION_Release)
    get_filename_component(QT_DLL_DIR ${QtCore_location_Release} PATH)

    INSTALL(FILES
            ${QT_DLL_DIR}/Qt5Xml.dll
            ${QT_DLL_DIR}/Qt5Core.dll
            ${QT_DLL_DIR}/icuin51.dll
            ${QT_DLL_DIR}/icuuc51.dll
            DESTINATION ${CMAKE_PROJECT_NAME}
            CONFIGURATIONS "Release"
           )
    INSTALL(FILES
            ${QT_DLL_DIR}/Qt5Xmld.dll
            ${QT_DLL_DIR}/Qt5Cored.dll
            ${QT_DLL_DIR}/icuin51.dll
            ${QT_DLL_DIR}/icuuc51.dll
            DESTINATION ${CMAKE_PROJECT_NAME}
            CONFIGURATIONS "Debug"
        )

ENDIF(CONFIG_OPLK_QT_WRAP_WINDOWS_DLL)
