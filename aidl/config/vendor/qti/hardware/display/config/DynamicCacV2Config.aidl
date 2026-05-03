/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file DynamicCacV2Config.aidl
 * @brief Struct for the Dynamic CAC configurations
 *
 * This structure holds the configuration parameters for the Dynamic CAC.
 */
package vendor.qti.hardware.display.config;

import vendor.qti.hardware.display.config.Fovea;

@VintfStability
/**
 * @struct DynamicCacV2Config
 */
parcelable DynamicCacV2Config {
    /**
     * @brief dimensions for the left eye fovea
     */
    Fovea foveaLeft;

    /**
     * @brief dimensions for the right eye fovea
     */
    Fovea foveaRight;
}
