/*
 * Changes from Qualcomm Technologies, Inc. are provided under the following license:
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file PoseConfigType.aidl
 * @brief Defines the different types of pose config test or real config
 *
 * This enumeration states the different types of display ports supported.
 */
package vendor.qti.hardware.display.config;

@VintfStability
/** @cond Backing specifies the storage type of an AIDL enum type */
@Backing(type="int")
/** @endcond */

/**
 * @enum PoseConfigType
 */
enum PoseConfigType {
    /**
     * @brief Test config
     */
    TEST = 0,
    /**
     * @brief Real pose config
     */
    REAL = 1,
}