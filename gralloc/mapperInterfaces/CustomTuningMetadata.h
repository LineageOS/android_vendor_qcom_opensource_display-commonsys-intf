// Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
// SPDX-License-Identifier: BSD-3-Clause-Clear

#ifndef __COMMON_CUSTOMTUNINGMETADATA_H__
#define __COMMON_CUSTOMTUNINGMETADATA_H__

#include <cstdint>

#define QTI_CUSTOM_TUNING_METADATA_SIZE 256

typedef enum vendor_qti_hardware_display_common_CustomTuningMetadataFlags {
  QTI_CUSTOM_TUNING_METADATA_TYPE_NONE = 0,
  QTI_CUSTOM_TUNING_METADATA_TYPE_A    = 1,
} vendor_qti_hardware_display_common_CustomTuningMetadataFlags;

typedef struct vendor_qti_hardware_display_common_CustomTuningMetadata {
  /** Payload size in bytes */
  uint32_t size;
  uint8_t payload[QTI_CUSTOM_TUNING_METADATA_SIZE];
  vendor_qti_hardware_display_common_CustomTuningMetadataFlags flag;
} vendor_qti_hardware_display_common_CustomTuningMetadata;

#endif  // __COMMON_CUSTOMTUNINGMETADATA_H__