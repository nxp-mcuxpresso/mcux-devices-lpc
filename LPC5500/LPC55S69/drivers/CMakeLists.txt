# Copyright 2024 NXP
# All rights reserved.
#
# SPDX-License-Identifier: BSD-3-Clause

if (CONFIG_MCUX_COMPONENT_driver.clock)
    mcux_add_source( SOURCES fsl_clock.c fsl_clock.h )
    mcux_add_include( INCLUDES . )
endif()

if (CONFIG_MCUX_COMPONENT_driver.fro_calib)
    mcux_add_source( SOURCES fsl_fro_calib.h )
    mcux_add_library(
        LIBS ../iar/iar_lib_fro_calib_cm33_core0.a
        TOOLCHAINS iar)
    mcux_add_library(
        LIBS ../arm/keil_lib_fro_calib_cm33_core0.lib
        TOOLCHAINS mdk)
    mcux_add_library(
        LIBS ../gcc/libfro_calib_hardabi.a
        TOOLCHAINS armgcc)
    mcux_add_include( INCLUDES . )
endif()

if (CONFIG_MCUX_COMPONENT_driver.inputmux_connections)
    mcux_add_source( SOURCES fsl_inputmux_connections.h )
    mcux_add_include( INCLUDES . )
endif()

if (CONFIG_MCUX_COMPONENT_driver.power)
    mcux_add_source( SOURCES fsl_power.c fsl_power.h )
    mcux_add_include( INCLUDES . )
endif()

if (CONFIG_MCUX_COMPONENT_driver.reset)
    mcux_add_source( SOURCES fsl_reset.c fsl_reset.h )
    mcux_add_include( INCLUDES . )
endif()
