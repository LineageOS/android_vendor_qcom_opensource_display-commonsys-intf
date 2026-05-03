/*
 * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
 * SPDX-License-Identifier: BSD-3-Clause-Clear
 */

/**
 * @file Fovea.aidl
 * @brief Struct for the Fovea
 *
 * This structure holds the dimensions for the fovea.
 */
package vendor.qti.hardware.display.config;

@VintfStability
/**
 * @struct Fovea
 * Fovea structure assumes GPU convention for coordinate definitions (origin at bottom-left corner)
 */
parcelable Fovea {
    /**
     * @brief fovea start horizontal (X)
     */
    int startX;

    /**
     * @brief fovea start vertical (Y)
     */
    int startY;

    /**
     * @brief fovea width
     */
    int width;

    /**
     * @brief fovea height
     */
    int height;
}
