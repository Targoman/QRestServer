#/*******************************************************************************
# * QRESTServer a lean and mean Qt/C++ based REST server                        *
# *                                                                             *
# * Copyright 2018 by Targoman Intelligent Processing Co Pjc.<http://tip.co.ir> *
# *                                                                             *
# *                                                                             *
# * QRESTServer is free software: you can redistribute it and/or modify         *
# * it under the terms of the GNU AFFERO GENERAL PUBLIC LICENSE as published by *
# * the Free Software Foundation, either version 3 of the License, or           *
# * (at your option) any later version.                                         *
# *                                                                             *
# * QRESTServer is distributed in the hope that it will be useful,              *
# * but WITHOUT ANY WARRANTY; without even the implied warranty of              *
# * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the               *
# * GNU AFFERO GENERAL PUBLIC LICENSE for more details.                         *
# * You should have received a copy of the GNU AFFERO GENERAL PUBLIC LICENSE    *
# * along with QRESTServer. If not, see <http://www.gnu.org/licenses/>.         *
# *                                                                             *
# *******************************************************************************/
################################################################################
#                       DO NOT CHANGE ANYTHING BELOW                           #
################################################################################
PRJDIR=.
ConfigFile = qmake/configs.pri
!exists($$ConfigFile){
error("**** libsrc: Unable to find Configuration file $$ConfigFile ****")
}
include ($$ConfigFile)

TEMPLATE = subdirs
CONFIG += ordered
# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-#
SUBDIRS += libsrc
SUBDIRS += example
SUBDIRS += unitTest


libsrc.depends = Dependencies
example.depends = libsrc
unitTest.depends = libsrc

# +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-#
OTHER_FILES += \
    README.md \
    INSTALL \
    buildDependencies.sh

