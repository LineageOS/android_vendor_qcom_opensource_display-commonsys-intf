/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file VirtualDispType.aidl
 * @brief Defines the virtual display types
 *
 * This enumeration specifies the different types of virtual displays.
 */
package vendor.qti.hardware.display.config;

@VintfStability
/** @cond Backing specifies the storage type of an AIDL enum type */
@Backing(type="int")
/** @endcond */

/**
 * @enum VirtualDispType
 */
enum VirtualDispType {
    /**
     * @brief Standard virtual display.
     */
    DEFAULT = 0,

    /**
     * @brief Virtual display with Picture Quality (PQ) capabilities enabled.
     */
    WITH_PQ = 1,
}