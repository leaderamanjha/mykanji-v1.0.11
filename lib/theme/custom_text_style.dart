import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeBlack900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeCabinBlack900 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 18.fSize,
      );
  static get bodyLargeCabinBlack900_1 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeCabinGray900 => theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeCabinGray90003 =>
      theme.textTheme.bodyLarge!.cabin.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeGray800 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeGray80002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyLargeGray900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeGray90003 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeInterBluegray500 =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.25),
      );
  static get bodyLargePrimaryContainer_1 => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyLargeRed900 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.red900,
      );
  static get bodyLargeRobotoGray80001 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyLargeRobotoGray900 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray900,
      );
  static get bodyLargeRobotoGray90003 =>
      theme.textTheme.bodyLarge!.roboto.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyLargeSFProBlack900 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.black900,
      );
  static get bodyLargeSFProGray800 => theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray800,
      );
  static get bodyLargeSFProGray80002 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray80002,
      );
  static get bodyLargeSFProGray90005 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: appTheme.gray90005,
      );
  static get bodyLargeSFProPrimaryContainer =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer.withOpacity(0.25),
      );
  static get bodyLargeSFProPrimaryContainer_1 =>
      theme.textTheme.bodyLarge!.sFPro.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBluegray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  static get bodyMediumCabinBlack900 =>
      theme.textTheme.bodyMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get bodyMediumCenturyGothicBlack900 =>
      theme.textTheme.bodyMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray80001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumGray90003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray90003,
      );
  static get bodyMediumGray900_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumRoboto => theme.textTheme.bodyMedium!.roboto;
  static get bodyMediumRobotoGray700 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumRobotoGray80001 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray80001,
      );
  static get bodyMediumSFProBlue300 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blue300,
        fontSize: 13.fSize,
      );
  static get bodyMediumSFProBluegray80001 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 15.fSize,
      );
  static get bodyMediumSFProGray80002 =>
      theme.textTheme.bodyMedium!.sFPro.copyWith(
        color: appTheme.gray80002,
        fontSize: 13.fSize,
      );
  static get bodyMedium_1 => theme.textTheme.bodyMedium!;
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineMediumCenturyGothicOnErrorContainer =>
      theme.textTheme.headlineMedium!.centuryGothic.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargeRobotoOnPrimary =>
      theme.textTheme.labelLarge!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeGray90005 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90005,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeGray9000520 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray90005,
        fontSize: 20.fSize,
      );
  static get titleLargeGreen900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.green900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRed900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.red900,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeRobotoGray50 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray50,
      );
  static get titleLargeRobotoGray90003 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.gray90003,
      );
  static get titleLargeSFPro => theme.textTheme.titleLarge!.sFPro;
  static get titleLargeSFProGray90005 =>
      theme.textTheme.titleLarge!.sFPro.copyWith(
        color: appTheme.gray90005,
        fontSize: 20.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleLargeSFProGray9000520 =>
      theme.textTheme.titleLarge!.sFPro.copyWith(
        color: appTheme.gray90005,
        fontSize: 20.fSize,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlue300 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blue300,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray700,
        fontSize: 16.fSize,
      );
  static get titleMediumBluegray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray80001,
      );
  static get titleMediumCabinBlack900 =>
      theme.textTheme.titleMedium!.cabin.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCabinGray900 =>
      theme.textTheme.titleMedium!.cabin.copyWith(
        color: appTheme.gray900,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCenturyGothic =>
      theme.textTheme.titleMedium!.centuryGothic.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumCenturyGothicBlack900 =>
      theme.textTheme.titleMedium!.centuryGothic.copyWith(
        color: appTheme.black900,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80002Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80002,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get titleMediumGray90005 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90005,
        fontSize: 16.fSize,
      );
  static get titleMediumSFProBlue300 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.blue300,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProBluegray700 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProBluegray80001 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.blueGray80001,
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProGray80002 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProGray80002Medium =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.gray80002,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumSFProGray90005 =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: appTheme.gray90005,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProOnErrorContainer =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumSFProOnErrorContainerSemiBold =>
      theme.textTheme.titleMedium!.sFPro.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
      );
  static get titleSmallCabinBlack900 =>
      theme.textTheme.titleSmall!.cabin.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCabinGray900 =>
      theme.textTheme.titleSmall!.cabin.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallCabinGray90003 =>
      theme.textTheme.titleSmall!.cabin.copyWith(
        color: appTheme.gray90003,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallDeeppurple500 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.deepPurple500,
      );
  static get titleSmallGray80001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleSmallGray90001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleSmallGray90003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90003,
      );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get titleSmallRoboto => theme.textTheme.titleSmall!.roboto.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoBlack900 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoDeeppurple500 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.deepPurple500,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray50 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray50,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray80001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoGray90001 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.gray90001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnErrorContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRobotoOnPrimary =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProOnErrorContainer =>
      theme.textTheme.titleSmall!.sFPro.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 15.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get sFPro {
    return copyWith(
      fontFamily: 'SF Pro',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  TextStyle get centuryGothic {
    return copyWith(
      fontFamily: 'Century Gothic',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}
