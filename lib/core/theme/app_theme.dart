import 'package:flutter/material.dart';
import 'package:torfin/core/theme/tools.dart';

import 'app_colors.dart';

sealed class AppTheme {
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    extensions: [AppColorTheme.light],
    scaffoldBackgroundColor: AppColorTheme.light.background,
  );
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    extensions: [AppColorTheme.dark],
    scaffoldBackgroundColor: AppColorTheme.dark.background,
  );
}

class AppColorTheme extends ThemeExtension<AppColorTheme> {
  // Background
  final Color background;
  final Color backgroundInverse;
  final Color backgroundBrand;
  final Color backgroundActive;
  final Color backgroundHover;
  final Color backgroundInverseHover;
  final Color backgroundSelected;
  final Color backgroundSelectedHover;

  // Layer
  // layer-01
  final Color layer01;
  final Color layerActive01;
  final Color layerBackground01;
  final Color layerHover01;
  final Color layerSelected01;
  final Color layerSelectedHover01;

  // layer-02
  final Color layer02;
  final Color layerActive02;
  final Color layerBackground02;
  final Color layerHover02;
  final Color layerSelected02;
  final Color layerSelectedHover02;

  // layer-03
  final Color layer03;
  final Color layerActive03;
  final Color layerBackground03;
  final Color layerHover03;
  final Color layerSelected03;
  final Color layerSelectedHover03;

  // layer
  final Color layerSelectedInverse;
  final Color layerSelectedDisabled;

  // layer-accent
  final Color layerAccent01;
  final Color layerAccentActive01;
  final Color layerAccentHover01;
  final Color layerAccent02;
  final Color layerAccentActive02;
  final Color layerAccentHover02;
  final Color layerAccent03;
  final Color layerAccentActive03;
  final Color layerAccentHover03;

  // Field
  final Color field01;
  final Color fieldHover01;
  final Color field02;
  final Color fieldHover02;
  final Color field03;
  final Color fieldHover03;

  // Border
  final Color borderSubtle00;
  final Color borderSubtle01;
  final Color borderSubtleSelected01;
  final Color borderSubtle02;
  final Color borderSubtleSelected02;
  final Color borderSubtle03;
  final Color borderSubtleSelected03;
  final Color borderStrong01;
  final Color borderStrong02;
  final Color borderStrong03;
  final Color borderTile01;
  final Color borderTile02;
  final Color borderTile03;
  final Color borderInverse;
  final Color borderInteractive;
  final Color borderDisabled;

  // Text
  final Color textPrimary;
  final Color textSecondary;
  final Color textPlaceholder;
  final Color textHelper;
  final Color textError;
  final Color textInverse;
  final Color textOnColor;
  final Color textOnColorDisabled;
  final Color textDisabled;

  // Link
  final Color linkPrimary;
  final Color linkPrimaryHover;
  final Color linkSecondary;
  final Color linkInverse;
  final Color linkVisited;
  final Color linkInverseVisited;
  final Color linkInverseActive;
  final Color linkInverseHover;

  // Icon
  final Color iconPrimary;
  final Color iconSecondary;
  final Color iconInverse;
  final Color iconOnColor;
  final Color iconOnColorDisabled;
  final Color iconDisabled;
  final Color iconInteractive;

  // Support
  final Color supportError;
  final Color supportSuccess;
  final Color supportWarning;
  final Color supportInfo;
  final Color supportErrorInverse;
  final Color supportSuccessInverse;
  final Color supportWarningInverse;
  final Color supportInfoInverse;
  final Color supportCautionMinor;
  final Color supportCautionMajor;
  final Color supportCautionUndefined;

  // Focus
  final Color focus;
  final Color focusInset;
  final Color focusInverse;

  // Skeleton
  final Color skeletonBackground;
  final Color skeletonElement;

  // Misc
  final Color interactive;
  final Color highlight;
  final Color overlay;
  final Color toggleOff;
  final Color shadow;

  // AI - Experimental
  final Color aiInnerShadow;
  final Color aiAuraStartSm;
  final Color aiAuraStart;
  final Color aiAuraEnd;
  final Color aiBorderStrong;
  final Color aiBorderStart;
  final Color aiBorderEnd;
  final Color aiDropShadow;
  final Color aiAuraHoverBackground;
  final Color aiAuraHoverStart;
  final Color aiAuraHoverEnd;
  final Color aiPopoverBackground;
  final Color aiPopoverShadowOuter01;
  final Color aiPopoverShadowOuter02;
  final Color aiSkeletonBackground;
  final Color aiSkeletonElementBackground;
  final Color aiOverlay;
  final Color aiPopoverCaretCenter;
  final Color aiPopoverCaretBottom;
  final Color aiPopoverCaretBottomBackgroundActions;
  final Color aiPopoverCaretBottomBackground;

  // Chat
  final Color chatPromptBackground;
  final Color chatPromptBorderStart;
  final Color chatPromptBorderEnd;
  final Color chatBubbleUser;
  final Color chatBubbleAgent;
  final Color chatBubbleBorder;
  final Color chatAvatarBot;
  final Color chatAvatarAgent;
  final Color chatAvatarUser;
  final Color chatShellBackground;
  final Color chatHeaderBackground;
  final Color chatButton;
  final Color chatButtonHover;
  final Color chatButtonTextHover;
  final Color chatButtonActive;
  final Color chatButtonSelected;
  final Color chatButtonTextSelected;

  const AppColorTheme._({
    required this.background,
    required this.backgroundInverse,
    required this.backgroundBrand,
    required this.backgroundActive,
    required this.backgroundHover,
    required this.backgroundInverseHover,
    required this.backgroundSelected,
    required this.backgroundSelectedHover,
    required this.layer01,
    required this.layerActive01,
    required this.layerBackground01,
    required this.layerHover01,
    required this.layerSelected01,
    required this.layerSelectedHover01,
    required this.layer02,
    required this.layerActive02,
    required this.layerBackground02,
    required this.layerHover02,
    required this.layerSelected02,
    required this.layerSelectedHover02,
    required this.layer03,
    required this.layerActive03,
    required this.layerBackground03,
    required this.layerHover03,
    required this.layerSelected03,
    required this.layerSelectedHover03,
    required this.layerSelectedInverse,
    required this.layerSelectedDisabled,
    required this.layerAccent01,
    required this.layerAccentActive01,
    required this.layerAccentHover01,
    required this.layerAccent02,
    required this.layerAccentActive02,
    required this.layerAccentHover02,
    required this.layerAccent03,
    required this.layerAccentActive03,
    required this.layerAccentHover03,
    required this.field01,
    required this.fieldHover01,
    required this.field02,
    required this.fieldHover02,
    required this.field03,
    required this.fieldHover03,
    required this.borderSubtle00,
    required this.borderSubtle01,
    required this.borderSubtleSelected01,
    required this.borderSubtle02,
    required this.borderSubtleSelected02,
    required this.borderSubtle03,
    required this.borderSubtleSelected03,
    required this.borderStrong01,
    required this.borderStrong02,
    required this.borderStrong03,
    required this.borderTile01,
    required this.borderTile02,
    required this.borderTile03,
    required this.borderInverse,
    required this.borderInteractive,
    required this.borderDisabled,
    required this.textPrimary,
    required this.textSecondary,
    required this.textPlaceholder,
    required this.textHelper,
    required this.textError,
    required this.textInverse,
    required this.textOnColor,
    required this.textOnColorDisabled,
    required this.textDisabled,
    required this.linkPrimary,
    required this.linkPrimaryHover,
    required this.linkSecondary,
    required this.linkInverse,
    required this.linkVisited,
    required this.linkInverseVisited,
    required this.linkInverseActive,
    required this.linkInverseHover,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.iconInverse,
    required this.iconOnColor,
    required this.iconOnColorDisabled,
    required this.iconDisabled,
    required this.iconInteractive,
    required this.supportError,
    required this.supportSuccess,
    required this.supportWarning,
    required this.supportInfo,
    required this.supportErrorInverse,
    required this.supportSuccessInverse,
    required this.supportWarningInverse,
    required this.supportInfoInverse,
    required this.supportCautionMinor,
    required this.supportCautionMajor,
    required this.supportCautionUndefined,
    required this.focus,
    required this.focusInset,
    required this.focusInverse,
    required this.skeletonBackground,
    required this.skeletonElement,
    required this.interactive,
    required this.highlight,
    required this.overlay,
    required this.toggleOff,
    required this.shadow,
    required this.aiInnerShadow,
    required this.aiAuraStartSm,
    required this.aiAuraStart,
    required this.aiAuraEnd,
    required this.aiBorderStrong,
    required this.aiBorderStart,
    required this.aiBorderEnd,
    required this.aiDropShadow,
    required this.aiAuraHoverBackground,
    required this.aiAuraHoverStart,
    required this.aiAuraHoverEnd,
    required this.aiPopoverBackground,
    required this.aiPopoverShadowOuter01,
    required this.aiPopoverShadowOuter02,
    required this.aiSkeletonBackground,
    required this.aiSkeletonElementBackground,
    required this.aiOverlay,
    required this.aiPopoverCaretCenter,
    required this.aiPopoverCaretBottom,
    required this.aiPopoverCaretBottomBackgroundActions,
    required this.aiPopoverCaretBottomBackground,
    required this.chatPromptBackground,
    required this.chatPromptBorderStart,
    required this.chatPromptBorderEnd,
    required this.chatBubbleUser,
    required this.chatBubbleAgent,
    required this.chatBubbleBorder,
    required this.chatAvatarBot,
    required this.chatAvatarAgent,
    required this.chatAvatarUser,
    required this.chatShellBackground,
    required this.chatHeaderBackground,
    required this.chatButton,
    required this.chatButtonHover,
    required this.chatButtonTextHover,
    required this.chatButtonActive,
    required this.chatButtonSelected,
    required this.chatButtonTextSelected,
  });

  static final light = AppColorTheme._(
    // Background
    background: WhiteTheme.background,
    backgroundInverse: WhiteTheme.backgroundInverse,
    backgroundBrand: WhiteTheme.backgroundBrand,
    backgroundActive: WhiteTheme.backgroundActive,
    backgroundHover: WhiteTheme.backgroundHover,
    backgroundInverseHover: WhiteTheme.backgroundInverseHover,
    backgroundSelected: WhiteTheme.backgroundSelected,
    backgroundSelectedHover: WhiteTheme.backgroundSelectedHover,

    // Layer
    // layer-01
    layer01: WhiteTheme.layer01,
    layerActive01: WhiteTheme.layerActive01,
    layerBackground01: WhiteTheme.layerBackground01,
    layerHover01: WhiteTheme.layerHover01,
    layerSelected01: WhiteTheme.layerSelected01,
    layerSelectedHover01: WhiteTheme.layerSelectedHover01,

    // layer-02
    layer02: WhiteTheme.layer02,
    layerActive02: WhiteTheme.layerActive02,
    layerBackground02: WhiteTheme.layerBackground02,
    layerHover02: WhiteTheme.layerHover02,
    layerSelected02: WhiteTheme.layerSelected02,
    layerSelectedHover02: WhiteTheme.layerSelectedHover02,

    // layer-03
    layer03: WhiteTheme.layer03,
    layerActive03: WhiteTheme.layerActive03,
    layerBackground03: WhiteTheme.layerBackground03,
    layerHover03: WhiteTheme.layerHover03,
    layerSelected03: WhiteTheme.layerSelected03,
    layerSelectedHover03: WhiteTheme.layerSelectedHover03,

    // layer
    layerSelectedInverse: WhiteTheme.layerSelectedInverse,
    layerSelectedDisabled: WhiteTheme.layerSelectedDisabled,

    // layer-accent
    layerAccent01: WhiteTheme.layerAccent01,
    layerAccentActive01: WhiteTheme.layerAccentActive01,
    layerAccentHover01: WhiteTheme.layerAccentHover01,
    layerAccent02: WhiteTheme.layerAccent02,
    layerAccentActive02: WhiteTheme.layerAccentActive02,
    layerAccentHover02: WhiteTheme.layerAccentHover02,
    layerAccent03: WhiteTheme.layerAccent03,
    layerAccentActive03: WhiteTheme.layerAccentActive03,
    layerAccentHover03: WhiteTheme.layerAccentHover03,

    // Field
    field01: WhiteTheme.field01,
    fieldHover01: WhiteTheme.fieldHover01,
    field02: WhiteTheme.field02,
    fieldHover02: WhiteTheme.fieldHover02,
    field03: WhiteTheme.field03,
    fieldHover03: WhiteTheme.fieldHover03,

    // Border
    borderSubtle00: WhiteTheme.borderSubtle00,
    borderSubtle01: WhiteTheme.borderSubtle01,
    borderSubtleSelected01: WhiteTheme.borderSubtleSelected01,
    borderSubtle02: WhiteTheme.borderSubtle02,
    borderSubtleSelected02: WhiteTheme.borderSubtleSelected02,
    borderSubtle03: WhiteTheme.borderSubtle03,
    borderSubtleSelected03: WhiteTheme.borderSubtleSelected03,
    borderStrong01: WhiteTheme.borderStrong01,
    borderStrong02: WhiteTheme.borderStrong02,
    borderStrong03: WhiteTheme.borderStrong03,
    borderTile01: WhiteTheme.borderTile01,
    borderTile02: WhiteTheme.borderTile02,
    borderTile03: WhiteTheme.borderTile03,
    borderInverse: WhiteTheme.borderInverse,
    borderInteractive: WhiteTheme.borderInteractive,
    borderDisabled: WhiteTheme.borderDisabled,

    // Text
    textPrimary: WhiteTheme.textPrimary,
    textSecondary: WhiteTheme.textSecondary,
    textPlaceholder: WhiteTheme.textPlaceholder,
    textHelper: WhiteTheme.textHelper,
    textError: WhiteTheme.textError,
    textInverse: WhiteTheme.textInverse,
    textOnColor: WhiteTheme.textOnColor,
    textOnColorDisabled: WhiteTheme.textOnColorDisabled,
    textDisabled: WhiteTheme.textDisabled,

    // Link
    linkPrimary: WhiteTheme.linkPrimary,
    linkPrimaryHover: WhiteTheme.linkPrimaryHover,
    linkSecondary: WhiteTheme.linkSecondary,
    linkInverse: WhiteTheme.linkInverse,
    linkVisited: WhiteTheme.linkVisited,
    linkInverseVisited: WhiteTheme.linkInverseVisited,
    linkInverseActive: WhiteTheme.linkInverseActive,
    linkInverseHover: WhiteTheme.linkInverseHover,

    // Icon
    iconPrimary: WhiteTheme.iconPrimary,
    iconSecondary: WhiteTheme.iconSecondary,
    iconInverse: WhiteTheme.iconInverse,
    iconOnColor: WhiteTheme.iconOnColor,
    iconOnColorDisabled: WhiteTheme.iconOnColorDisabled,
    iconDisabled: WhiteTheme.iconDisabled,
    iconInteractive: WhiteTheme.iconInteractive,

    // Support
    supportError: WhiteTheme.supportError,
    supportSuccess: WhiteTheme.supportSuccess,
    supportWarning: WhiteTheme.supportWarning,
    supportInfo: WhiteTheme.supportInfo,
    supportErrorInverse: WhiteTheme.supportErrorInverse,
    supportSuccessInverse: WhiteTheme.supportSuccessInverse,
    supportWarningInverse: WhiteTheme.supportWarningInverse,
    supportInfoInverse: WhiteTheme.supportInfoInverse,
    supportCautionMinor: WhiteTheme.supportCautionMinor,
    supportCautionMajor: WhiteTheme.supportCautionMajor,
    supportCautionUndefined: WhiteTheme.supportCautionUndefined,

    // Focus
    focus: WhiteTheme.focus,
    focusInset: WhiteTheme.focusInset,
    focusInverse: WhiteTheme.focusInverse,

    // Skeleton
    skeletonBackground: WhiteTheme.skeletonBackground,
    skeletonElement: WhiteTheme.skeletonElement,

    // Misc
    interactive: WhiteTheme.interactive,
    highlight: WhiteTheme.highlight,
    overlay: WhiteTheme.overlay,
    toggleOff: WhiteTheme.toggleOff,
    shadow: WhiteTheme.shadow,

    // AI - Experimental
    aiInnerShadow: WhiteTheme.aiInnerShadow,
    aiAuraStartSm: WhiteTheme.aiAuraStartSm,
    aiAuraStart: WhiteTheme.aiAuraStart,
    aiAuraEnd: WhiteTheme.aiAuraEnd,
    aiBorderStrong: WhiteTheme.aiBorderStrong,
    aiBorderStart: WhiteTheme.aiBorderStart,
    aiBorderEnd: WhiteTheme.aiBorderEnd,
    aiDropShadow: WhiteTheme.aiDropShadow,
    aiAuraHoverBackground: WhiteTheme.aiAuraHoverBackground,
    aiAuraHoverStart: WhiteTheme.aiAuraHoverStart,
    aiAuraHoverEnd: WhiteTheme.aiAuraHoverEnd,
    aiPopoverBackground: WhiteTheme.aiPopoverBackground,
    aiPopoverShadowOuter01: WhiteTheme.aiPopoverShadowOuter01,
    aiPopoverShadowOuter02: WhiteTheme.aiPopoverShadowOuter02,
    aiSkeletonBackground: WhiteTheme.aiSkeletonBackground,
    aiSkeletonElementBackground: WhiteTheme.aiSkeletonElementBackground,
    aiOverlay: WhiteTheme.aiOverlay,
    aiPopoverCaretCenter: WhiteTheme.aiPopoverCaretCenter,
    aiPopoverCaretBottom: WhiteTheme.aiPopoverCaretBottom,
    aiPopoverCaretBottomBackgroundActions:
        WhiteTheme.aiPopoverCaretBottomBackgroundActions,
    aiPopoverCaretBottomBackground: WhiteTheme.aiPopoverCaretBottomBackground,

    // Chat
    chatPromptBackground: WhiteTheme.chatPromptBackground,
    chatPromptBorderStart: WhiteTheme.chatPromptBorderStart,
    chatPromptBorderEnd: WhiteTheme.chatPromptBorderEnd,
    chatBubbleUser: WhiteTheme.chatBubbleUser,
    chatBubbleAgent: WhiteTheme.chatBubbleAgent,
    chatBubbleBorder: WhiteTheme.chatBubbleBorder,
    chatAvatarBot: WhiteTheme.chatAvatarBot,
    chatAvatarAgent: WhiteTheme.chatAvatarAgent,
    chatAvatarUser: WhiteTheme.chatAvatarUser,
    chatShellBackground: WhiteTheme.chatShellBackground,
    chatHeaderBackground: WhiteTheme.chatHeaderBackground,
    chatButton: WhiteTheme.chatButton,
    chatButtonHover: WhiteTheme.chatButtonHover,
    chatButtonTextHover: WhiteTheme.chatButtonTextHover,
    chatButtonActive: WhiteTheme.chatButtonActive,
    chatButtonSelected: WhiteTheme.chatButtonSelected,
    chatButtonTextSelected: WhiteTheme.chatButtonTextSelected,
  );

  static final dark = AppColorTheme._(
    // Background
    background: G100Theme.background,
    backgroundInverse: G100Theme.backgroundInverse,
    backgroundBrand: G100Theme.backgroundBrand,
    backgroundActive: G100Theme.backgroundActive,
    backgroundHover: G100Theme.backgroundHover,
    backgroundInverseHover: G100Theme.backgroundInverseHover,
    backgroundSelected: G100Theme.backgroundSelected,
    backgroundSelectedHover: G100Theme.backgroundSelectedHover,

    // Layer
    // layer-01
    layer01: G100Theme.layer01,
    layerActive01: G100Theme.layerActive01,
    layerBackground01: G100Theme.layerBackground01,
    layerHover01: G100Theme.layerHover01,
    layerSelected01: G100Theme.layerSelected01,
    layerSelectedHover01: G100Theme.layerSelectedHover01,

    // layer-02
    layer02: G100Theme.layer02,
    layerActive02: G100Theme.layerActive02,
    layerBackground02: G100Theme.layerBackground02,
    layerHover02: G100Theme.layerHover02,
    layerSelected02: G100Theme.layerSelected02,
    layerSelectedHover02: G100Theme.layerSelectedHover02,

    // layer-03
    layer03: G100Theme.layer03,
    layerActive03: G100Theme.layerActive03,
    layerBackground03: G100Theme.layerBackground03,
    layerHover03: G100Theme.layerHover03,
    layerSelected03: G100Theme.layerSelected03,
    layerSelectedHover03: G100Theme.layerSelectedHover03,

    // layer
    layerSelectedInverse: G100Theme.layerSelectedInverse,
    layerSelectedDisabled: G100Theme.layerSelectedDisabled,

    // layer-accent
    layerAccent01: G100Theme.layerAccent01,
    layerAccentActive01: G100Theme.layerAccentActive01,
    layerAccentHover01: G100Theme.layerAccentHover01,
    layerAccent02: G100Theme.layerAccent02,
    layerAccentActive02: G100Theme.layerAccentActive02,
    layerAccentHover02: G100Theme.layerAccentHover02,
    layerAccent03: G100Theme.layerAccent03,
    layerAccentActive03: G100Theme.layerAccentActive03,
    layerAccentHover03: G100Theme.layerAccentHover03,

    // Field
    field01: G100Theme.field01,
    fieldHover01: G100Theme.fieldHover01,
    field02: G100Theme.field02,
    fieldHover02: G100Theme.fieldHover02,
    field03: G100Theme.field03,
    fieldHover03: G100Theme.fieldHover03,

    // Border
    borderSubtle00: G100Theme.borderSubtle00,
    borderSubtle01: G100Theme.borderSubtle01,
    borderSubtleSelected01: G100Theme.borderSubtleSelected01,
    borderSubtle02: G100Theme.borderSubtle02,
    borderSubtleSelected02: G100Theme.borderSubtleSelected02,
    borderSubtle03: G100Theme.borderSubtle03,
    borderSubtleSelected03: G100Theme.borderSubtleSelected03,
    borderStrong01: G100Theme.borderStrong01,
    borderStrong02: G100Theme.borderStrong02,
    borderStrong03: G100Theme.borderStrong03,
    borderTile01: G100Theme.borderTile01,
    borderTile02: G100Theme.borderTile02,
    borderTile03: G100Theme.borderTile03,
    borderInverse: G100Theme.borderInverse,
    borderInteractive: G100Theme.borderInteractive,
    borderDisabled: G100Theme.borderDisabled,

    // Text
    textPrimary: G100Theme.textPrimary,
    textSecondary: G100Theme.textSecondary,
    textPlaceholder: G100Theme.textPlaceholder,
    textHelper: G100Theme.textHelper,
    textError: G100Theme.textError,
    textInverse: G100Theme.textInverse,
    textOnColor: G100Theme.textOnColor,
    textOnColorDisabled: G100Theme.textOnColorDisabled,
    textDisabled: G100Theme.textDisabled,

    // Link
    linkPrimary: G100Theme.linkPrimary,
    linkPrimaryHover: G100Theme.linkPrimaryHover,
    linkSecondary: G100Theme.linkSecondary,
    linkInverse: G100Theme.linkInverse,
    linkVisited: G100Theme.linkVisited,
    linkInverseVisited: G100Theme.linkInverseVisited,
    linkInverseActive: G100Theme.linkInverseActive,
    linkInverseHover: G100Theme.linkInverseHover,

    // Icon
    iconPrimary: G100Theme.iconPrimary,
    iconSecondary: G100Theme.iconSecondary,
    iconInverse: G100Theme.iconInverse,
    iconOnColor: G100Theme.iconOnColor,
    iconOnColorDisabled: G100Theme.iconOnColorDisabled,
    iconDisabled: G100Theme.iconDisabled,
    iconInteractive: G100Theme.iconInteractive,

    // Support
    supportError: G100Theme.supportError,
    supportSuccess: G100Theme.supportSuccess,
    supportWarning: G100Theme.supportWarning,
    supportInfo: G100Theme.supportInfo,
    supportErrorInverse: G100Theme.supportErrorInverse,
    supportSuccessInverse: G100Theme.supportSuccessInverse,
    supportWarningInverse: G100Theme.supportWarningInverse,
    supportInfoInverse: G100Theme.supportInfoInverse,
    supportCautionMinor: G100Theme.supportCautionMinor,
    supportCautionMajor: G100Theme.supportCautionMajor,
    supportCautionUndefined: G100Theme.supportCautionUndefined,

    // Focus
    focus: G100Theme.focus,
    focusInset: G100Theme.focusInset,
    focusInverse: G100Theme.focusInverse,

    // Skeleton
    skeletonBackground: G100Theme.skeletonBackground,
    skeletonElement: G100Theme.skeletonElement,

    // Misc
    interactive: G100Theme.interactive,
    highlight: G100Theme.highlight,
    overlay: G100Theme.overlay,
    toggleOff: G100Theme.toggleOff,
    shadow: G100Theme.shadow,

    // AI - Experimental
    aiInnerShadow: G100Theme.aiInnerShadow,
    aiAuraStartSm: G100Theme.aiAuraStartSm,
    aiAuraStart: G100Theme.aiAuraStart,
    aiAuraEnd: G100Theme.aiAuraEnd,
    aiBorderStrong: G100Theme.aiBorderStrong,
    aiBorderStart: G100Theme.aiBorderStart,
    aiBorderEnd: G100Theme.aiBorderEnd,
    aiDropShadow: G100Theme.aiDropShadow,
    aiAuraHoverBackground: G100Theme.aiAuraHoverBackground,
    aiAuraHoverStart: G100Theme.aiAuraHoverStart,
    aiAuraHoverEnd: G100Theme.aiAuraHoverEnd,
    aiPopoverBackground: G100Theme.aiPopoverBackground,
    aiPopoverShadowOuter01: G100Theme.aiPopoverShadowOuter01,
    aiPopoverShadowOuter02: G100Theme.aiPopoverShadowOuter02,
    aiSkeletonBackground: G100Theme.aiSkeletonBackground,
    aiSkeletonElementBackground: G100Theme.aiSkeletonElementBackground,
    aiOverlay: G100Theme.aiOverlay,
    aiPopoverCaretCenter: G100Theme.aiPopoverCaretCenter,
    aiPopoverCaretBottom: G100Theme.aiPopoverCaretBottom,
    aiPopoverCaretBottomBackgroundActions:
        G100Theme.aiPopoverCaretBottomBackgroundActions,
    aiPopoverCaretBottomBackground: G100Theme.aiPopoverCaretBottomBackground,

    // Chat
    chatPromptBackground: G100Theme.chatPromptBackground,
    chatPromptBorderStart: G100Theme.chatPromptBorderStart,
    chatPromptBorderEnd: G100Theme.chatPromptBorderEnd,
    chatBubbleUser: G100Theme.chatBubbleUser,
    chatBubbleAgent: G100Theme.chatBubbleAgent,
    chatBubbleBorder: G100Theme.chatBubbleBorder,
    chatAvatarBot: G100Theme.chatAvatarBot,
    chatAvatarAgent: G100Theme.chatAvatarAgent,
    chatAvatarUser: G100Theme.chatAvatarUser,
    chatShellBackground: G100Theme.chatShellBackground,
    chatHeaderBackground: G100Theme.chatHeaderBackground,
    chatButton: G100Theme.chatButton,
    chatButtonHover: G100Theme.chatButtonHover,
    chatButtonTextHover: G100Theme.chatButtonTextHover,
    chatButtonActive: G100Theme.chatButtonActive,
    chatButtonSelected: G100Theme.chatButtonSelected,
    chatButtonTextSelected: G100Theme.chatButtonTextSelected,
  );

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? background,
    Color? backgroundInverse,
    Color? backgroundBrand,
    Color? backgroundActive,
    Color? backgroundHover,
    Color? backgroundInverseHover,
    Color? backgroundSelected,
    Color? backgroundSelectedHover,
    Color? layer01,
    Color? layerActive01,
    Color? layerBackground01,
    Color? layerHover01,
    Color? layerSelected01,
    Color? layerSelectedHover01,
    Color? layer02,
    Color? layerActive02,
    Color? layerBackground02,
    Color? layerHover02,
    Color? layerSelected02,
    Color? layerSelectedHover02,
    Color? layer03,
    Color? layerActive03,
    Color? layerBackground03,
    Color? layerHover03,
    Color? layerSelected03,
    Color? layerSelectedHover03,
    Color? layerSelectedInverse,
    Color? layerSelectedDisabled,
    Color? layerAccent01,
    Color? layerAccentActive01,
    Color? layerAccentHover01,
    Color? layerAccent02,
    Color? layerAccentActive02,
    Color? layerAccentHover02,
    Color? layerAccent03,
    Color? layerAccentActive03,
    Color? layerAccentHover03,
    Color? field01,
    Color? fieldHover01,
    Color? field02,
    Color? fieldHover02,
    Color? field03,
    Color? fieldHover03,
    Color? borderSubtle00,
    Color? borderSubtle01,
    Color? borderSubtleSelected01,
    Color? borderSubtle02,
    Color? borderSubtleSelected02,
    Color? borderSubtle03,
    Color? borderSubtleSelected03,
    Color? borderStrong01,
    Color? borderStrong02,
    Color? borderStrong03,
    Color? borderTile01,
    Color? borderTile02,
    Color? borderTile03,
    Color? borderInverse,
    Color? borderInteractive,
    Color? borderDisabled,
    Color? textPrimary,
    Color? textSecondary,
    Color? textPlaceholder,
    Color? textHelper,
    Color? textError,
    Color? textInverse,
    Color? textOnColor,
    Color? textOnColorDisabled,
    Color? textDisabled,
    Color? linkPrimary,
    Color? linkPrimaryHover,
    Color? linkSecondary,
    Color? linkInverse,
    Color? linkVisited,
    Color? linkInverseVisited,
    Color? linkInverseActive,
    Color? linkInverseHover,
    Color? iconPrimary,
    Color? iconSecondary,
    Color? iconInverse,
    Color? iconOnColor,
    Color? iconOnColorDisabled,
    Color? iconDisabled,
    Color? iconInteractive,
    Color? supportError,
    Color? supportSuccess,
    Color? supportWarning,
    Color? supportInfo,
    Color? supportErrorInverse,
    Color? supportSuccessInverse,
    Color? supportWarningInverse,
    Color? supportInfoInverse,
    Color? supportCautionMinor,
    Color? supportCautionMajor,
    Color? supportCautionUndefined,
    Color? focus,
    Color? focusInset,
    Color? focusInverse,
    Color? skeletonBackground,
    Color? skeletonElement,
    Color? interactive,
    Color? highlight,
    Color? overlay,
    Color? toggleOff,
    Color? shadow,
    Color? aiInnerShadow,
    Color? aiAuraStartSm,
    Color? aiAuraStart,
    Color? aiAuraEnd,
    Color? aiBorderStrong,
    Color? aiBorderStart,
    Color? aiBorderEnd,
    Color? aiDropShadow,
    Color? aiAuraHoverBackground,
    Color? aiAuraHoverStart,
    Color? aiAuraHoverEnd,
    Color? aiPopoverBackground,
    Color? aiPopoverShadowOuter01,
    Color? aiPopoverShadowOuter02,
    Color? aiSkeletonBackground,
    Color? aiSkeletonElementBackground,
    Color? aiOverlay,
    Color? aiPopoverCaretCenter,
    Color? aiPopoverCaretBottom,
    Color? aiPopoverCaretBottomBackgroundActions,
    Color? aiPopoverCaretBottomBackground,
    Color? chatPromptBackground,
    Color? chatPromptBorderStart,
    Color? chatPromptBorderEnd,
    Color? chatBubbleUser,
    Color? chatBubbleAgent,
    Color? chatBubbleBorder,
    Color? chatAvatarBot,
    Color? chatAvatarAgent,
    Color? chatAvatarUser,
    Color? chatShellBackground,
    Color? chatHeaderBackground,
    Color? chatButton,
    Color? chatButtonHover,
    Color? chatButtonTextHover,
    Color? chatButtonActive,
    Color? chatButtonSelected,
    Color? chatButtonTextSelected,
  }) {
    return AppColorTheme._(
      background: background ?? this.background,
      backgroundInverse: backgroundInverse ?? this.backgroundInverse,
      backgroundBrand: backgroundBrand ?? this.backgroundBrand,
      backgroundActive: backgroundActive ?? this.backgroundActive,
      backgroundHover: backgroundHover ?? this.backgroundHover,
      backgroundInverseHover:
          backgroundInverseHover ?? this.backgroundInverseHover,
      backgroundSelected: backgroundSelected ?? this.backgroundSelected,
      backgroundSelectedHover:
          backgroundSelectedHover ?? this.backgroundSelectedHover,
      layer01: layer01 ?? this.layer01,
      layerActive01: layerActive01 ?? this.layerActive01,
      layerBackground01: layerBackground01 ?? this.layerBackground01,
      layerHover01: layerHover01 ?? this.layerHover01,
      layerSelected01: layerSelected01 ?? this.layerSelected01,
      layerSelectedHover01: layerSelectedHover01 ?? this.layerSelectedHover01,
      layer02: layer02 ?? this.layer02,
      layerActive02: layerActive02 ?? this.layerActive02,
      layerBackground02: layerBackground02 ?? this.layerBackground02,
      layerHover02: layerHover02 ?? this.layerHover02,
      layerSelected02: layerSelected02 ?? this.layerSelected02,
      layerSelectedHover02: layerSelectedHover02 ?? this.layerSelectedHover02,
      layer03: layer03 ?? this.layer03,
      layerActive03: layerActive03 ?? this.layerActive03,
      layerBackground03: layerBackground03 ?? this.layerBackground03,
      layerHover03: layerHover03 ?? this.layerHover03,
      layerSelected03: layerSelected03 ?? this.layerSelected03,
      layerSelectedHover03: layerSelectedHover03 ?? this.layerSelectedHover03,
      layerSelectedInverse: layerSelectedInverse ?? this.layerSelectedInverse,
      layerSelectedDisabled:
          layerSelectedDisabled ?? this.layerSelectedDisabled,
      layerAccent01: layerAccent01 ?? this.layerAccent01,
      layerAccentActive01: layerAccentActive01 ?? this.layerAccentActive01,
      layerAccentHover01: layerAccentHover01 ?? this.layerAccentHover01,
      layerAccent02: layerAccent02 ?? this.layerAccent02,
      layerAccentActive02: layerAccentActive02 ?? this.layerAccentActive02,
      layerAccentHover02: layerAccentHover02 ?? this.layerAccentHover02,
      layerAccent03: layerAccent03 ?? this.layerAccent03,
      layerAccentActive03: layerAccentActive03 ?? this.layerAccentActive03,
      layerAccentHover03: layerAccentHover03 ?? this.layerAccentHover03,
      field01: field01 ?? this.field01,
      fieldHover01: fieldHover01 ?? this.fieldHover01,
      field02: field02 ?? this.field02,
      fieldHover02: fieldHover02 ?? this.fieldHover02,
      field03: field03 ?? this.field03,
      fieldHover03: fieldHover03 ?? this.fieldHover03,
      borderSubtle00: borderSubtle00 ?? this.borderSubtle00,
      borderSubtle01: borderSubtle01 ?? this.borderSubtle01,
      borderSubtleSelected01:
          borderSubtleSelected01 ?? this.borderSubtleSelected01,
      borderSubtle02: borderSubtle02 ?? this.borderSubtle02,
      borderSubtleSelected02:
          borderSubtleSelected02 ?? this.borderSubtleSelected02,
      borderSubtle03: borderSubtle03 ?? this.borderSubtle03,
      borderSubtleSelected03:
          borderSubtleSelected03 ?? this.borderSubtleSelected03,
      borderStrong01: borderStrong01 ?? this.borderStrong01,
      borderStrong02: borderStrong02 ?? this.borderStrong02,
      borderStrong03: borderStrong03 ?? this.borderStrong03,
      borderTile01: borderTile01 ?? this.borderTile01,
      borderTile02: borderTile02 ?? this.borderTile02,
      borderTile03: borderTile03 ?? this.borderTile03,
      borderInverse: borderInverse ?? this.borderInverse,
      borderInteractive: borderInteractive ?? this.borderInteractive,
      borderDisabled: borderDisabled ?? this.borderDisabled,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textPlaceholder: textPlaceholder ?? this.textPlaceholder,
      textHelper: textHelper ?? this.textHelper,
      textError: textError ?? this.textError,
      textInverse: textInverse ?? this.textInverse,
      textOnColor: textOnColor ?? this.textOnColor,
      textOnColorDisabled: textOnColorDisabled ?? this.textOnColorDisabled,
      textDisabled: textDisabled ?? this.textDisabled,
      linkPrimary: linkPrimary ?? this.linkPrimary,
      linkPrimaryHover: linkPrimaryHover ?? this.linkPrimaryHover,
      linkSecondary: linkSecondary ?? this.linkSecondary,
      linkInverse: linkInverse ?? this.linkInverse,
      linkVisited: linkVisited ?? this.linkVisited,
      linkInverseVisited: linkInverseVisited ?? this.linkInverseVisited,
      linkInverseActive: linkInverseActive ?? this.linkInverseActive,
      linkInverseHover: linkInverseHover ?? this.linkInverseHover,
      iconPrimary: iconPrimary ?? this.iconPrimary,
      iconSecondary: iconSecondary ?? this.iconSecondary,
      iconInverse: iconInverse ?? this.iconInverse,
      iconOnColor: iconOnColor ?? this.iconOnColor,
      iconOnColorDisabled: iconOnColorDisabled ?? this.iconOnColorDisabled,
      iconDisabled: iconDisabled ?? this.iconDisabled,
      iconInteractive: iconInteractive ?? this.iconInteractive,
      supportError: supportError ?? this.supportError,
      supportSuccess: supportSuccess ?? this.supportSuccess,
      supportWarning: supportWarning ?? this.supportWarning,
      supportInfo: supportInfo ?? this.supportInfo,
      supportErrorInverse: supportErrorInverse ?? this.supportErrorInverse,
      supportSuccessInverse:
          supportSuccessInverse ?? this.supportSuccessInverse,
      supportWarningInverse:
          supportWarningInverse ?? this.supportWarningInverse,
      supportInfoInverse: supportInfoInverse ?? this.supportInfoInverse,
      supportCautionMinor: supportCautionMinor ?? this.supportCautionMinor,
      supportCautionMajor: supportCautionMajor ?? this.supportCautionMajor,
      supportCautionUndefined:
          supportCautionUndefined ?? this.supportCautionUndefined,
      focus: focus ?? this.focus,
      focusInset: focusInset ?? this.focusInset,
      focusInverse: focusInverse ?? this.focusInverse,
      skeletonBackground: skeletonBackground ?? this.skeletonBackground,
      skeletonElement: skeletonElement ?? this.skeletonElement,
      interactive: interactive ?? this.interactive,
      highlight: highlight ?? this.highlight,
      overlay: overlay ?? this.overlay,
      toggleOff: toggleOff ?? this.toggleOff,
      shadow: shadow ?? this.shadow,
      aiInnerShadow: aiInnerShadow ?? this.aiInnerShadow,
      aiAuraStartSm: aiAuraStartSm ?? this.aiAuraStartSm,
      aiAuraStart: aiAuraStart ?? this.aiAuraStart,
      aiAuraEnd: aiAuraEnd ?? this.aiAuraEnd,
      aiBorderStrong: aiBorderStrong ?? this.aiBorderStrong,
      aiBorderStart: aiBorderStart ?? this.aiBorderStart,
      aiBorderEnd: aiBorderEnd ?? this.aiBorderEnd,
      aiDropShadow: aiDropShadow ?? this.aiDropShadow,
      aiAuraHoverBackground:
          aiAuraHoverBackground ?? this.aiAuraHoverBackground,
      aiAuraHoverStart: aiAuraHoverStart ?? this.aiAuraHoverStart,
      aiAuraHoverEnd: aiAuraHoverEnd ?? this.aiAuraHoverEnd,
      aiPopoverBackground: aiPopoverBackground ?? this.aiPopoverBackground,
      aiPopoverShadowOuter01:
          aiPopoverShadowOuter01 ?? this.aiPopoverShadowOuter01,
      aiPopoverShadowOuter02:
          aiPopoverShadowOuter02 ?? this.aiPopoverShadowOuter02,
      aiSkeletonBackground: aiSkeletonBackground ?? this.aiSkeletonBackground,
      aiSkeletonElementBackground:
          aiSkeletonElementBackground ?? this.aiSkeletonElementBackground,
      aiOverlay: aiOverlay ?? this.aiOverlay,
      aiPopoverCaretCenter: aiPopoverCaretCenter ?? this.aiPopoverCaretCenter,
      aiPopoverCaretBottom: aiPopoverCaretBottom ?? this.aiPopoverCaretBottom,
      aiPopoverCaretBottomBackgroundActions:
          aiPopoverCaretBottomBackgroundActions ??
          this.aiPopoverCaretBottomBackgroundActions,
      aiPopoverCaretBottomBackground:
          aiPopoverCaretBottomBackground ?? this.aiPopoverCaretBottomBackground,
      chatPromptBackground: chatPromptBackground ?? this.chatPromptBackground,
      chatPromptBorderStart:
          chatPromptBorderStart ?? this.chatPromptBorderStart,
      chatPromptBorderEnd: chatPromptBorderEnd ?? this.chatPromptBorderEnd,
      chatBubbleUser: chatBubbleUser ?? this.chatBubbleUser,
      chatBubbleAgent: chatBubbleAgent ?? this.chatBubbleAgent,
      chatBubbleBorder: chatBubbleBorder ?? this.chatBubbleBorder,
      chatAvatarBot: chatAvatarBot ?? this.chatAvatarBot,
      chatAvatarAgent: chatAvatarAgent ?? this.chatAvatarAgent,
      chatAvatarUser: chatAvatarUser ?? this.chatAvatarUser,
      chatShellBackground: chatShellBackground ?? this.chatShellBackground,
      chatHeaderBackground: chatHeaderBackground ?? this.chatHeaderBackground,
      chatButton: chatButton ?? this.chatButton,
      chatButtonHover: chatButtonHover ?? this.chatButtonHover,
      chatButtonTextHover: chatButtonTextHover ?? this.chatButtonTextHover,
      chatButtonActive: chatButtonActive ?? this.chatButtonActive,
      chatButtonSelected: chatButtonSelected ?? this.chatButtonSelected,
      chatButtonTextSelected:
          chatButtonTextSelected ?? this.chatButtonTextSelected,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    covariant ThemeExtension<AppColorTheme>? other,
    double t,
  ) {
    if (other is! AppColorTheme) {
      return this;
    }

    return AppColorTheme._(
      background: Color.lerp(background, other.background, t)!,
      backgroundInverse: Color.lerp(
        backgroundInverse,
        other.backgroundInverse,
        t,
      )!,
      backgroundBrand: Color.lerp(backgroundBrand, other.backgroundBrand, t)!,
      backgroundActive: Color.lerp(
        backgroundActive,
        other.backgroundActive,
        t,
      )!,
      backgroundHover: Color.lerp(backgroundHover, other.backgroundHover, t)!,
      backgroundInverseHover: Color.lerp(
        backgroundInverseHover,
        other.backgroundInverseHover,
        t,
      )!,
      backgroundSelected: Color.lerp(
        backgroundSelected,
        other.backgroundSelected,
        t,
      )!,
      backgroundSelectedHover: Color.lerp(
        backgroundSelectedHover,
        other.backgroundSelectedHover,
        t,
      )!,
      layer01: Color.lerp(layer01, other.layer01, t)!,
      layerActive01: Color.lerp(layerActive01, other.layerActive01, t)!,
      layerBackground01: Color.lerp(
        layerBackground01,
        other.layerBackground01,
        t,
      )!,
      layerHover01: Color.lerp(layerHover01, other.layerHover01, t)!,
      layerSelected01: Color.lerp(layerSelected01, other.layerSelected01, t)!,
      layerSelectedHover01: Color.lerp(
        layerSelectedHover01,
        other.layerSelectedHover01,
        t,
      )!,
      layer02: Color.lerp(layer02, other.layer02, t)!,
      layerActive02: Color.lerp(layerActive02, other.layerActive02, t)!,
      layerBackground02: Color.lerp(
        layerBackground02,
        other.layerBackground02,
        t,
      )!,
      layerHover02: Color.lerp(layerHover02, other.layerHover02, t)!,
      layerSelected02: Color.lerp(layerSelected02, other.layerSelected02, t)!,
      layerSelectedHover02: Color.lerp(
        layerSelectedHover02,
        other.layerSelectedHover02,
        t,
      )!,
      layer03: Color.lerp(layer03, other.layer03, t)!,
      layerActive03: Color.lerp(layerActive03, other.layerActive03, t)!,
      layerBackground03: Color.lerp(
        layerBackground03,
        other.layerBackground03,
        t,
      )!,
      layerHover03: Color.lerp(layerHover03, other.layerHover03, t)!,
      layerSelected03: Color.lerp(layerSelected03, other.layerSelected03, t)!,
      layerSelectedHover03: Color.lerp(
        layerSelectedHover03,
        other.layerSelectedHover03,
        t,
      )!,
      layerSelectedInverse: Color.lerp(
        layerSelectedInverse,
        other.layerSelectedInverse,
        t,
      )!,
      layerSelectedDisabled: Color.lerp(
        layerSelectedDisabled,
        other.layerSelectedDisabled,
        t,
      )!,
      layerAccent01: Color.lerp(layerAccent01, other.layerAccent01, t)!,
      layerAccentActive01: Color.lerp(
        layerAccentActive01,
        other.layerAccentActive01,
        t,
      )!,
      layerAccentHover01: Color.lerp(
        layerAccentHover01,
        other.layerAccentHover01,
        t,
      )!,
      layerAccent02: Color.lerp(layerAccent02, other.layerAccent02, t)!,
      layerAccentActive02: Color.lerp(
        layerAccentActive02,
        other.layerAccentActive02,
        t,
      )!,
      layerAccentHover02: Color.lerp(
        layerAccentHover02,
        other.layerAccentHover02,
        t,
      )!,
      layerAccent03: Color.lerp(layerAccent03, other.layerAccent03, t)!,
      layerAccentActive03: Color.lerp(
        layerAccentActive03,
        other.layerAccentActive03,
        t,
      )!,
      layerAccentHover03: Color.lerp(
        layerAccentHover03,
        other.layerAccentHover03,
        t,
      )!,
      field01: Color.lerp(field01, other.field01, t)!,
      fieldHover01: Color.lerp(fieldHover01, other.fieldHover01, t)!,
      field02: Color.lerp(field02, other.field02, t)!,
      fieldHover02: Color.lerp(fieldHover02, other.fieldHover02, t)!,
      field03: Color.lerp(field03, other.field03, t)!,
      fieldHover03: Color.lerp(fieldHover03, other.fieldHover03, t)!,
      borderSubtle00: Color.lerp(borderSubtle00, other.borderSubtle00, t)!,
      borderSubtle01: Color.lerp(borderSubtle01, other.borderSubtle01, t)!,
      borderSubtleSelected01: Color.lerp(
        borderSubtleSelected01,
        other.borderSubtleSelected01,
        t,
      )!,
      borderSubtle02: Color.lerp(borderSubtle02, other.borderSubtle02, t)!,
      borderSubtleSelected02: Color.lerp(
        borderSubtleSelected02,
        other.borderSubtleSelected02,
        t,
      )!,
      borderSubtle03: Color.lerp(borderSubtle03, other.borderSubtle03, t)!,
      borderSubtleSelected03: Color.lerp(
        borderSubtleSelected03,
        other.borderSubtleSelected03,
        t,
      )!,
      borderStrong01: Color.lerp(borderStrong01, other.borderStrong01, t)!,
      borderStrong02: Color.lerp(borderStrong02, other.borderStrong02, t)!,
      borderStrong03: Color.lerp(borderStrong03, other.borderStrong03, t)!,
      borderTile01: Color.lerp(borderTile01, other.borderTile01, t)!,
      borderTile02: Color.lerp(borderTile02, other.borderTile02, t)!,
      borderTile03: Color.lerp(borderTile03, other.borderTile03, t)!,
      borderInverse: Color.lerp(borderInverse, other.borderInverse, t)!,
      borderInteractive: Color.lerp(
        borderInteractive,
        other.borderInteractive,
        t,
      )!,
      borderDisabled: Color.lerp(borderDisabled, other.borderDisabled, t)!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(textSecondary, other.textSecondary, t)!,
      textPlaceholder: Color.lerp(textPlaceholder, other.textPlaceholder, t)!,
      textHelper: Color.lerp(textHelper, other.textHelper, t)!,
      textError: Color.lerp(textError, other.textError, t)!,
      textInverse: Color.lerp(textInverse, other.textInverse, t)!,
      textOnColor: Color.lerp(textOnColor, other.textOnColor, t)!,
      textOnColorDisabled: Color.lerp(
        textOnColorDisabled,
        other.textOnColorDisabled,
        t,
      )!,
      textDisabled: Color.lerp(textDisabled, other.textDisabled, t)!,
      linkPrimary: Color.lerp(linkPrimary, other.linkPrimary, t)!,
      linkPrimaryHover: Color.lerp(
        linkPrimaryHover,
        other.linkPrimaryHover,
        t,
      )!,
      linkSecondary: Color.lerp(linkSecondary, other.linkSecondary, t)!,
      linkInverse: Color.lerp(linkInverse, other.linkInverse, t)!,
      linkVisited: Color.lerp(linkVisited, other.linkVisited, t)!,
      linkInverseVisited: Color.lerp(
        linkInverseVisited,
        other.linkInverseVisited,
        t,
      )!,
      linkInverseActive: Color.lerp(
        linkInverseActive,
        other.linkInverseActive,
        t,
      )!,
      linkInverseHover: Color.lerp(
        linkInverseHover,
        other.linkInverseHover,
        t,
      )!,
      iconPrimary: Color.lerp(iconPrimary, other.iconPrimary, t)!,
      iconSecondary: Color.lerp(iconSecondary, other.iconSecondary, t)!,
      iconInverse: Color.lerp(iconInverse, other.iconInverse, t)!,
      iconOnColor: Color.lerp(iconOnColor, other.iconOnColor, t)!,
      iconOnColorDisabled: Color.lerp(
        iconOnColorDisabled,
        other.iconOnColorDisabled,
        t,
      )!,
      iconDisabled: Color.lerp(iconDisabled, other.iconDisabled, t)!,
      iconInteractive: Color.lerp(iconInteractive, other.iconInteractive, t)!,
      supportError: Color.lerp(supportError, other.supportError, t)!,
      supportSuccess: Color.lerp(supportSuccess, other.supportSuccess, t)!,
      supportWarning: Color.lerp(supportWarning, other.supportWarning, t)!,
      supportInfo: Color.lerp(supportInfo, other.supportInfo, t)!,
      supportErrorInverse: Color.lerp(
        supportErrorInverse,
        other.supportErrorInverse,
        t,
      )!,
      supportSuccessInverse: Color.lerp(
        supportSuccessInverse,
        other.supportSuccessInverse,
        t,
      )!,
      supportWarningInverse: Color.lerp(
        supportWarningInverse,
        other.supportWarningInverse,
        t,
      )!,
      supportInfoInverse: Color.lerp(
        supportInfoInverse,
        other.supportInfoInverse,
        t,
      )!,
      supportCautionMinor: Color.lerp(
        supportCautionMinor,
        other.supportCautionMinor,
        t,
      )!,
      supportCautionMajor: Color.lerp(
        supportCautionMajor,
        other.supportCautionMajor,
        t,
      )!,
      supportCautionUndefined: Color.lerp(
        supportCautionUndefined,
        other.supportCautionUndefined,
        t,
      )!,
      focus: Color.lerp(focus, other.focus, t)!,
      focusInset: Color.lerp(focusInset, other.focusInset, t)!,
      focusInverse: Color.lerp(focusInverse, other.focusInverse, t)!,
      skeletonBackground: Color.lerp(
        skeletonBackground,
        other.skeletonBackground,
        t,
      )!,
      skeletonElement: Color.lerp(skeletonElement, other.skeletonElement, t)!,
      interactive: Color.lerp(interactive, other.interactive, t)!,
      highlight: Color.lerp(highlight, other.highlight, t)!,
      overlay: Color.lerp(overlay, other.overlay, t)!,
      toggleOff: Color.lerp(toggleOff, other.toggleOff, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      aiInnerShadow: Color.lerp(aiInnerShadow, other.aiInnerShadow, t)!,
      aiAuraStartSm: Color.lerp(aiAuraStartSm, other.aiAuraStartSm, t)!,
      aiAuraStart: Color.lerp(aiAuraStart, other.aiAuraStart, t)!,
      aiAuraEnd: Color.lerp(aiAuraEnd, other.aiAuraEnd, t)!,
      aiBorderStrong: Color.lerp(aiBorderStrong, other.aiBorderStrong, t)!,
      aiBorderStart: Color.lerp(aiBorderStart, other.aiBorderStart, t)!,
      aiBorderEnd: Color.lerp(aiBorderEnd, other.aiBorderEnd, t)!,
      aiDropShadow: Color.lerp(aiDropShadow, other.aiDropShadow, t)!,
      aiAuraHoverBackground: Color.lerp(
        aiAuraHoverBackground,
        other.aiAuraHoverBackground,
        t,
      )!,
      aiAuraHoverStart: Color.lerp(
        aiAuraHoverStart,
        other.aiAuraHoverStart,
        t,
      )!,
      aiAuraHoverEnd: Color.lerp(aiAuraHoverEnd, other.aiAuraHoverEnd, t)!,
      aiPopoverBackground: Color.lerp(
        aiPopoverBackground,
        other.aiPopoverBackground,
        t,
      )!,
      aiPopoverShadowOuter01: Color.lerp(
        aiPopoverShadowOuter01,
        other.aiPopoverShadowOuter01,
        t,
      )!,
      aiPopoverShadowOuter02: Color.lerp(
        aiPopoverShadowOuter02,
        other.aiPopoverShadowOuter02,
        t,
      )!,
      aiSkeletonBackground: Color.lerp(
        aiSkeletonBackground,
        other.aiSkeletonBackground,
        t,
      )!,
      aiSkeletonElementBackground: Color.lerp(
        aiSkeletonElementBackground,
        other.aiSkeletonElementBackground,
        t,
      )!,
      aiOverlay: Color.lerp(aiOverlay, other.aiOverlay, t)!,
      aiPopoverCaretCenter: Color.lerp(
        aiPopoverCaretCenter,
        other.aiPopoverCaretCenter,
        t,
      )!,
      aiPopoverCaretBottom: Color.lerp(
        aiPopoverCaretBottom,
        other.aiPopoverCaretBottom,
        t,
      )!,
      aiPopoverCaretBottomBackgroundActions: Color.lerp(
        aiPopoverCaretBottomBackgroundActions,
        other.aiPopoverCaretBottomBackgroundActions,
        t,
      )!,
      aiPopoverCaretBottomBackground: Color.lerp(
        aiPopoverCaretBottomBackground,
        other.aiPopoverCaretBottomBackground,
        t,
      )!,
      chatPromptBackground: Color.lerp(
        chatPromptBackground,
        other.chatPromptBackground,
        t,
      )!,
      chatPromptBorderStart: Color.lerp(
        chatPromptBorderStart,
        other.chatPromptBorderStart,
        t,
      )!,
      chatPromptBorderEnd: Color.lerp(
        chatPromptBorderEnd,
        other.chatPromptBorderEnd,
        t,
      )!,
      chatBubbleUser: Color.lerp(chatBubbleUser, other.chatBubbleUser, t)!,
      chatBubbleAgent: Color.lerp(chatBubbleAgent, other.chatBubbleAgent, t)!,
      chatBubbleBorder: Color.lerp(
        chatBubbleBorder,
        other.chatBubbleBorder,
        t,
      )!,
      chatAvatarBot: Color.lerp(chatAvatarBot, other.chatAvatarBot, t)!,
      chatAvatarAgent: Color.lerp(chatAvatarAgent, other.chatAvatarAgent, t)!,
      chatAvatarUser: Color.lerp(chatAvatarUser, other.chatAvatarUser, t)!,
      chatShellBackground: Color.lerp(
        chatShellBackground,
        other.chatShellBackground,
        t,
      )!,
      chatHeaderBackground: Color.lerp(
        chatHeaderBackground,
        other.chatHeaderBackground,
        t,
      )!,
      chatButton: Color.lerp(chatButton, other.chatButton, t)!,
      chatButtonHover: Color.lerp(chatButtonHover, other.chatButtonHover, t)!,
      chatButtonTextHover: Color.lerp(
        chatButtonTextHover,
        other.chatButtonTextHover,
        t,
      )!,
      chatButtonActive: Color.lerp(
        chatButtonActive,
        other.chatButtonActive,
        t,
      )!,
      chatButtonSelected: Color.lerp(
        chatButtonSelected,
        other.chatButtonSelected,
        t,
      )!,
      chatButtonTextSelected: Color.lerp(
        chatButtonTextSelected,
        other.chatButtonTextSelected,
        t,
      )!,
    );
  }
}

sealed class WhiteTheme {
  // Background
  static const Color background = IBMColors.white;
  static const Color backgroundInverse = IBMColors.gray80;
  static const Color backgroundBrand = IBMColors.blue60;
  static final Color backgroundActive = IBMColors.gray50.withValues(alpha: 0.5);
  static final Color backgroundHover = IBMColors.gray50.withValues(alpha: 0.12);
  static const Color backgroundInverseHover = IBMColors.gray80Hover;
  static final Color backgroundSelected = IBMColors.gray50.withValues(
    alpha: 0.2,
  );
  static final Color backgroundSelectedHover = IBMColors.gray50.withValues(
    alpha: 0.32,
  );

  // Layer
  // layer-01
  static const Color layer01 = IBMColors.gray10;
  static const Color layerActive01 = IBMColors.gray30;
  static const Color layerBackground01 = IBMColors.white;
  static const Color layerHover01 = IBMColors.gray10Hover;
  static const Color layerSelected01 = IBMColors.gray20;
  static const Color layerSelectedHover01 = IBMColors.gray20Hover;

  // layer-02
  static const Color layer02 = IBMColors.white;
  static const Color layerActive02 = IBMColors.gray30;
  static const Color layerBackground02 = IBMColors.gray10;
  static const Color layerHover02 = IBMColors.whiteHover;
  static const Color layerSelected02 = IBMColors.gray20;
  static const Color layerSelectedHover02 = IBMColors.gray20Hover;

  // layer-03
  static const Color layer03 = IBMColors.gray10;
  static const Color layerActive03 = IBMColors.gray30;
  static const Color layerBackground03 = IBMColors.white;
  static const Color layerHover03 = IBMColors.gray10Hover;
  static const Color layerSelected03 = IBMColors.gray20;
  static const Color layerSelectedHover03 = IBMColors.gray20Hover;

  // layer
  static const Color layerSelectedInverse = IBMColors.gray100;
  static const Color layerSelectedDisabled = IBMColors.gray50;

  // layer-accent
  static const Color layerAccent01 = IBMColors.gray20;
  static const Color layerAccentActive01 = IBMColors.gray40;
  static const Color layerAccentHover01 = IBMColors.gray20Hover;
  static const Color layerAccent02 = IBMColors.gray20;
  static const Color layerAccentActive02 = IBMColors.gray40;
  static const Color layerAccentHover02 = IBMColors.gray20Hover;
  static const Color layerAccent03 = IBMColors.gray20;
  static const Color layerAccentActive03 = IBMColors.gray40;
  static const Color layerAccentHover03 = IBMColors.gray20Hover;

  // Field
  static const Color field01 = IBMColors.gray10;
  static const Color fieldHover01 = IBMColors.gray10Hover;
  static const Color field02 = IBMColors.white;
  static const Color fieldHover02 = IBMColors.whiteHover;
  static const Color field03 = IBMColors.gray10;
  static const Color fieldHover03 = IBMColors.gray10Hover;

  // Border
  static const Color borderSubtle00 = IBMColors.gray20;
  static const Color borderSubtle01 = IBMColors.gray30;
  static const Color borderSubtleSelected01 = IBMColors.gray30;
  static const Color borderSubtle02 = IBMColors.gray20;
  static const Color borderSubtleSelected02 = IBMColors.gray30;
  static const Color borderSubtle03 = IBMColors.gray30;
  static const Color borderSubtleSelected03 = IBMColors.gray30;
  static const Color borderStrong01 = IBMColors.gray50;
  static const Color borderStrong02 = IBMColors.gray50;
  static const Color borderStrong03 = IBMColors.gray50;
  static const Color borderTile01 = IBMColors.gray30;
  static const Color borderTile02 = IBMColors.gray40;
  static const Color borderTile03 = IBMColors.gray30;
  static const Color borderInverse = IBMColors.gray100;
  static const Color borderInteractive = IBMColors.blue60;
  static const Color borderDisabled = IBMColors.gray30;

  // Text
  static const Color textPrimary = IBMColors.gray100;
  static const Color textSecondary = IBMColors.gray70;
  static final Color textPlaceholder = textPrimary.withValues(alpha: 0.4);
  static const Color textHelper = IBMColors.gray60;
  static const Color textError = IBMColors.red60;
  static const Color textInverse = IBMColors.white;
  static const Color textOnColor = IBMColors.white;
  static const Color textOnColorDisabled = IBMColors.gray50;
  static final Color textDisabled = textPrimary.withValues(alpha: 0.25);

  // Link
  static const Color linkPrimary = IBMColors.blue60;
  static const Color linkPrimaryHover = IBMColors.blue70;
  static const Color linkSecondary = IBMColors.blue70;
  static const Color linkInverse = IBMColors.blue40;
  static const Color linkVisited = IBMColors.purple60;
  static const Color linkInverseVisited = IBMColors.purple40;
  static const Color linkInverseActive = IBMColors.gray10;
  static const Color linkInverseHover = IBMColors.blue30;

  // Icon
  static const Color iconPrimary = IBMColors.gray100;
  static const Color iconSecondary = IBMColors.gray70;
  static const Color iconInverse = IBMColors.white;
  static const Color iconOnColor = IBMColors.white;
  static const Color iconOnColorDisabled = IBMColors.gray50;
  static final Color iconDisabled = iconPrimary.withValues(alpha: 0.25);
  static const Color iconInteractive = IBMColors.blue60;

  // Support
  static const Color supportError = IBMColors.red60;
  static const Color supportSuccess = IBMColors.green50;
  static const Color supportWarning = IBMColors.yellow30;
  static const Color supportInfo = IBMColors.blue70;
  static const Color supportErrorInverse = IBMColors.red50;
  static const Color supportSuccessInverse = IBMColors.green40;
  static const Color supportWarningInverse = IBMColors.yellow30;
  static const Color supportInfoInverse = IBMColors.blue50;
  static const Color supportCautionMinor = IBMColors.yellow30;
  static const Color supportCautionMajor = IBMColors.orange40;
  static const Color supportCautionUndefined = IBMColors.purple60;

  // Focus
  static const Color focus = IBMColors.blue60;
  static const Color focusInset = IBMColors.white;
  static const Color focusInverse = IBMColors.white;

  // Skeleton
  static const Color skeletonBackground = IBMColors.whiteHover;
  static const Color skeletonElement = IBMColors.gray30;

  // Misc
  static const Color interactive = IBMColors.blue60;
  static const Color highlight = IBMColors.blue20;
  static const Color overlay = Color.fromRGBO(22, 22, 22, 0.5);
  static const Color toggleOff = IBMColors.gray50;
  static const Color shadow = Color.fromRGBO(0, 0, 0, 0.3);

  // AI - Experimental
  static final Color aiInnerShadow = IBMColors.blue50.withValues(alpha: 0.1);
  static final Color aiAuraStartSm = IBMColors.blue50.withValues(alpha: 0.16);
  static final Color aiAuraStart = IBMColors.blue50.withValues(alpha: 0.1);
  static const Color aiAuraEnd = Color.fromRGBO(255, 255, 255, 0);
  static const Color aiBorderStrong = IBMColors.blue50;
  static final Color aiBorderStart = IBMColors.blue30.withValues(alpha: 0.64);
  static const Color aiBorderEnd = IBMColors.blue40;
  static final Color aiDropShadow = IBMColors.blue60.withValues(alpha: 0.1);
  static const Color aiAuraHoverBackground = IBMColors.blue10;
  static final Color aiAuraHoverStart = IBMColors.blue50.withValues(
    alpha: 0.32,
  );
  static const Color aiAuraHoverEnd = Color.fromRGBO(255, 255, 255, 0);
  static const Color aiPopoverBackground = IBMColors.white;
  static final Color aiPopoverShadowOuter01 = IBMColors.blue70.withValues(
    alpha: 0.06,
  );
  static const Color aiPopoverShadowOuter02 = Color.fromRGBO(0, 0, 0, 0.04);
  static const Color aiSkeletonBackground = IBMColors.blue20;
  static const Color aiSkeletonElementBackground = IBMColors.blue50;
  static final Color aiOverlay = IBMColors.blue100.withValues(alpha: 0.5);
  static const Color aiPopoverCaretCenter = Color(0xFFA0C3FF);
  static const Color aiPopoverCaretBottom = IBMColors.blue40;
  static const Color aiPopoverCaretBottomBackgroundActions = Color(0xFFE9EFFA);
  static const Color aiPopoverCaretBottomBackground = Color(0xFFEAF1FF);

  // Chat
  static const Color chatPromptBackground = IBMColors.white;
  static const Color chatPromptBorderStart = IBMColors.gray10;
  static final Color chatPromptBorderEnd = IBMColors.gray10.withValues(
    alpha: 0,
  );
  static const Color chatBubbleUser = IBMColors.gray20;
  static const Color chatBubbleAgent = IBMColors.white;
  static const Color chatBubbleBorder = IBMColors.gray20;
  static const Color chatAvatarBot = IBMColors.gray60;
  static const Color chatAvatarAgent = IBMColors.gray80;
  static const Color chatAvatarUser = IBMColors.blue60;
  static const Color chatShellBackground = IBMColors.white;
  static const Color chatHeaderBackground = IBMColors.white;
  static const Color chatButton = linkPrimary;
  static final Color chatButtonHover = backgroundHover;
  static const Color chatButtonTextHover = linkPrimaryHover;
  static final Color chatButtonActive = backgroundActive;
  static final Color chatButtonSelected = backgroundSelected;
  static const Color chatButtonTextSelected = textSecondary;
}

class G100Theme {
  // Background
  static const Color background = IBMColors.gray100;
  static const Color backgroundInverse = IBMColors.gray10;
  static const Color backgroundBrand = IBMColors.blue60;
  static final Color backgroundActive = IBMColors.gray50.withValues(alpha: 0.4);
  static final Color backgroundHover = IBMColors.gray50.withValues(alpha: 0.16);
  static const Color backgroundInverseHover = IBMColors.gray10Hover;
  static final Color backgroundSelected = IBMColors.gray50.withValues(
    alpha: 0.24,
  );
  static final Color backgroundSelectedHover = IBMColors.gray50.withValues(
    alpha: 0.32,
  );

  // Layer
  // layer-01
  static const Color layer01 = IBMColors.gray90;
  static const Color layerActive01 = IBMColors.gray70;
  static const Color layerBackground01 = IBMColors.gray100;
  static const Color layerHover01 = IBMColors.gray90Hover;
  static const Color layerSelected01 = IBMColors.gray80;
  static const Color layerSelectedHover01 = IBMColors.gray80Hover;

  // layer-02
  static const Color layer02 = IBMColors.gray80;
  static const Color layerActive02 = IBMColors.gray60;
  static const Color layerBackground02 = IBMColors.gray90;
  static const Color layerHover02 = IBMColors.gray80Hover;
  static const Color layerSelected02 = IBMColors.gray70;
  static const Color layerSelectedHover02 = IBMColors.gray70Hover;

  // layer-03
  static const Color layer03 = IBMColors.gray70;
  static const Color layerActive03 = IBMColors.gray50;
  static const Color layerBackground03 = IBMColors.gray80;
  static const Color layerHover03 = IBMColors.gray70Hover;
  static const Color layerSelected03 = IBMColors.gray60;
  static const Color layerSelectedHover03 = IBMColors.gray60Hover;

  // layer
  static const Color layerSelectedInverse = IBMColors.gray10;
  static const Color layerSelectedDisabled = IBMColors.gray40;

  // layer-accent
  static const Color layerAccent01 = IBMColors.gray80;
  static const Color layerAccentActive01 = IBMColors.gray60;
  static const Color layerAccentHover01 = IBMColors.gray80Hover;
  static const Color layerAccent02 = IBMColors.gray70;
  static const Color layerAccentActive02 = IBMColors.gray50;
  static const Color layerAccentHover02 = IBMColors.gray70Hover;
  static const Color layerAccent03 = IBMColors.gray60;
  static const Color layerAccentActive03 = IBMColors.gray80;
  static const Color layerAccentHover03 = IBMColors.gray60Hover;

  // Field
  static const Color field01 = IBMColors.gray90;
  static const Color fieldHover01 = IBMColors.gray90Hover;
  static const Color field02 = IBMColors.gray80;
  static const Color fieldHover02 = IBMColors.gray80Hover;
  static const Color field03 = IBMColors.gray70;
  static const Color fieldHover03 = IBMColors.gray70Hover;

  // Border
  static const Color borderSubtle00 = IBMColors.gray80;
  static const Color borderSubtle01 = IBMColors.gray70;
  static const Color borderSubtleSelected01 = IBMColors.gray60;
  static const Color borderSubtle02 = IBMColors.gray60;
  static const Color borderSubtleSelected02 = IBMColors.gray50;
  static const Color borderSubtle03 = IBMColors.gray60;
  static const Color borderSubtleSelected03 = IBMColors.gray50;
  static const Color borderStrong01 = IBMColors.gray60;
  static const Color borderStrong02 = IBMColors.gray50;
  static const Color borderStrong03 = IBMColors.gray40;
  static const Color borderTile01 = IBMColors.gray70;
  static const Color borderTile02 = IBMColors.gray60;
  static const Color borderTile03 = IBMColors.gray50;
  static const Color borderInverse = IBMColors.gray10;
  static const Color borderInteractive = IBMColors.blue50;
  static final Color borderDisabled = IBMColors.gray50.withValues(alpha: 0.5);

  // Text
  static const Color textPrimary = IBMColors.gray10;
  static const Color textSecondary = IBMColors.gray30;
  static final Color textPlaceholder = textPrimary.withValues(alpha: 0.4);
  static const Color textHelper = IBMColors.gray40;
  static const Color textError = IBMColors.red40;
  static const Color textInverse = IBMColors.gray100;
  static const Color textOnColor = IBMColors.white;
  static final Color textOnColorDisabled = textOnColor.withValues(alpha: 0.25);
  static final Color textDisabled = textPrimary.withValues(alpha: 0.25);

  // Link
  static const Color linkPrimary = IBMColors.blue40;
  static const Color linkPrimaryHover = IBMColors.blue30;
  static const Color linkSecondary = IBMColors.blue30;
  static const Color linkInverse = IBMColors.blue60;
  static const Color linkVisited = IBMColors.purple40;
  static const Color linkInverseVisited = IBMColors.purple60;
  static const Color linkInverseActive = IBMColors.gray100;
  static const Color linkInverseHover = IBMColors.blue70;

  // Icon
  static const Color iconPrimary = IBMColors.gray10;
  static const Color iconSecondary = IBMColors.gray30;
  static const Color iconInverse = IBMColors.gray100;
  static const Color iconOnColor = IBMColors.white;
  static final Color iconOnColorDisabled = iconOnColor.withValues(alpha: 0.25);
  static final Color iconDisabled = iconPrimary.withValues(alpha: 0.25);
  static const Color iconInteractive = IBMColors.white;

  // Support
  static const Color supportError = IBMColors.red50;
  static const Color supportSuccess = IBMColors.green40;
  static const Color supportWarning = IBMColors.yellow30;
  static const Color supportInfo = IBMColors.blue50;
  static const Color supportErrorInverse = IBMColors.red60;
  static const Color supportSuccessInverse = IBMColors.green50;
  static const Color supportWarningInverse = IBMColors.yellow30;
  static const Color supportInfoInverse = IBMColors.blue70;
  static const Color supportCautionMinor = IBMColors.yellow30;
  static const Color supportCautionMajor = IBMColors.orange40;
  static const Color supportCautionUndefined = IBMColors.purple50;

  // Focus
  static const Color focus = IBMColors.white;
  static const Color focusInset = IBMColors.gray100;
  static const Color focusInverse = IBMColors.blue60;

  // Skeleton
  static final Color skeletonBackground = adjustLightness(background, 7);
  static const Color skeletonElement = IBMColors.gray80;

  // Misc
  static const Color interactive = IBMColors.blue50;
  static const Color highlight = IBMColors.blue90;
  static const Color overlay = Color.fromRGBO(0, 0, 0, 0.65);
  static const Color toggleOff = IBMColors.gray60;
  static const Color shadow = Color.fromRGBO(0, 0, 0, 0.8);

  // AI - Experimental
  static final Color aiInnerShadow = IBMColors.blue50.withValues(alpha: 0.16);
  static final Color aiAuraStartSm = IBMColors.blue50.withValues(alpha: 0.16);
  static final Color aiAuraStart = IBMColors.blue50.withValues(alpha: 0.1);
  static const Color aiAuraEnd = Color.fromRGBO(0, 0, 0, 0);
  static const Color aiBorderStrong = IBMColors.blue40;
  static final Color aiBorderStart = IBMColors.blue30.withValues(alpha: 0.36);
  static const Color aiBorderEnd = IBMColors.blue50;
  static const Color aiDropShadow = Color.fromRGBO(0, 0, 0, 0.28);
  static const Color aiAuraHoverBackground = layerHover01;
  static final Color aiAuraHoverStart = IBMColors.blue50.withValues(alpha: 0.4);
  static const Color aiAuraHoverEnd = Color.fromRGBO(0, 0, 0, 0);
  static const Color aiPopoverBackground = IBMColors.gray100;
  static const Color aiPopoverShadowOuter01 = Color.fromRGBO(0, 0, 0, 0.12);
  static const Color aiPopoverShadowOuter02 = Color.fromRGBO(0, 0, 0, 0.08);
  static final Color aiSkeletonBackground = IBMColors.blue40.withValues(
    alpha: 0.5,
  );
  static final Color aiSkeletonElementBackground = IBMColors.blue40.withValues(
    alpha: 0.3,
  );
  static const Color aiOverlay = Color.fromRGBO(0, 0, 0, 0.5);
  static const Color aiPopoverCaretCenter = Color(0xFF4870B5);
  static const Color aiPopoverCaretBottom = IBMColors.blue50;
  static const Color aiPopoverCaretBottomBackgroundActions = Color(0xFF1E283A);
  static const Color aiPopoverCaretBottomBackground = Color(0xFF202D45);

  // Chat
  static const Color chatPromptBackground = IBMColors.gray100;
  static const Color chatPromptBorderStart = IBMColors.gray90;
  static final Color chatPromptBorderEnd = IBMColors.gray90.withValues(
    alpha: 0,
  );
  static const Color chatBubbleUser = IBMColors.gray80;
  static const Color chatBubbleAgent = IBMColors.gray90;
  static const Color chatBubbleBorder = IBMColors.gray70;
  static const Color chatAvatarBot = IBMColors.gray50;
  static const Color chatAvatarAgent = IBMColors.gray30;
  static const Color chatAvatarUser = IBMColors.blue50;
  static const Color chatShellBackground = IBMColors.gray90;
  static const Color chatHeaderBackground = IBMColors.gray90;
  static const Color chatButton = linkPrimary;
  static final Color chatButtonHover = backgroundHover;
  static const Color chatButtonTextHover = linkPrimaryHover;
  static final Color chatButtonActive = backgroundActive;
  static final Color chatButtonSelected = backgroundSelected;
  static const Color chatButtonTextSelected = textSecondary;
}
