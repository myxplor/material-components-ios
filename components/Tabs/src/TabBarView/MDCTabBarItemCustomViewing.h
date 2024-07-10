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

#import <Foundation/Foundation.h>

#import "MDCTabBarViewCustomViewable.h"

NS_ASSUME_NONNULL_BEGIN

/**
 Defines the necessary APIs for MDCTabBarView to use a UITabBarItem for a custom view property.

 @note Although UIKit defines such a property on @c UIBarButtonItem, no similar property is publicly
 documented on @c UITabBarItem.
 */
@protocol MDCTabBarItemCustomViewing

/** A custom view to be displayed for a tab bar item. */
@property(nullable, nonatomic, strong) UIView<MDCTabBarViewCustomViewable> *mdc_customView;

@end

NS_ASSUME_NONNULL_END
