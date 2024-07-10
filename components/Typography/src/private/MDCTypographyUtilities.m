// Copyright 2019-present the Material Components for iOS authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

#import "MDCTypographyUtilities.h"
#import <UIKit/UIKit.h>

#import "MaterialApplication.h"

/**
 @return Device's current UIContentSizeCategory or UIContentSizeCategoryLarge
 if we are unable to query the device due to being in an extension.
 */
UIContentSizeCategory GetCurrentSizeCategory(void) {
#if defined(TARGET_OS_VISION) && TARGET_OS_VISION
  // For code review, use the review queue listed in go/material-visionos-review.
  return UITraitCollection.currentTraitCollection.preferredContentSizeCategory;
#else
  return UIScreen.mainScreen.traitCollection.preferredContentSizeCategory;
#endif
}
