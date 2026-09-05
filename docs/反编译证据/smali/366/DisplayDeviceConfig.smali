.class public Lcom/android/server/display/DisplayDeviceConfig;
.super Ljava/lang/Object;
.source "DisplayDeviceConfig.java"


# static fields
.field static final BRIGHTNESS_DEFAULT:F = 0.5f

.field public static final DEBUG:Z

.field public static final DEFAULT_BRIGHTNESS_THRESHOLDS:[F

.field static final HDR_PERCENT_OF_SCREEN_REQUIRED_DEFAULT:F = 0.5f


# instance fields
.field public mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mAmbientHorizonLong:I

.field public mAmbientHorizonShort:I

.field public mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

.field public mAutoBrightnessAvailable:Z

.field public mAutoBrightnessBrighteningLightDebounce:J

.field public mAutoBrightnessBrighteningLightDebounceIdle:J

.field public mAutoBrightnessDarkeningLightDebounce:J

.field public mAutoBrightnessDarkeningLightDebounceIdle:J

.field public mBacklight:[F

.field public mBacklightMaximum:F

.field public mBacklightMinimum:F

.field public mBacklightToBrightnessSpline:Landroid/util/Spline;

.field public mBacklightToNitsSpline:Landroid/util/Spline;

.field public mBrightness:[F

.field public mBrightnessCapForWearBedtimeMode:F

.field public mBrightnessDefault:F

.field public mBrightnessDim:F

.field public mBrightnessRampDecreaseMaxIdleMillis:J

.field public mBrightnessRampDecreaseMaxMillis:J

.field public mBrightnessRampFastDecrease:F

.field public mBrightnessRampFastIncrease:F

.field public mBrightnessRampIncreaseMaxIdleMillis:J

.field public mBrightnessRampIncreaseMaxMillis:J

.field public mBrightnessRampSlowDecrease:F

.field public mBrightnessRampSlowDecreaseIdle:F

.field public mBrightnessRampSlowIncrease:F

.field public mBrightnessRampSlowIncreaseIdle:F

.field public mBrightnessToBacklightSpline:Landroid/util/Spline;

.field public final mContext:Landroid/content/Context;

.field public mDdcAutoBrightnessAvailable:Z

.field public mDefaultDozeBrightness:F

.field public mDefaultHighBlockingZoneRefreshRate:I

.field public mDefaultLowBlockingZoneRefreshRate:I

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

.field public mDozeBrightnessSensorValueToBrightness:[F

.field public mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighBlockingZoneThermalMapId:Ljava/lang/String;

.field public mHighDisplayBrightnessThresholds:[F

.field public mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field public mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

.field public mIdleStylusTimeoutMillis:I

.field public mInterpolationType:I

.field public mLoadedFrom:Ljava/lang/String;

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowBlockingZoneThermalMapId:Ljava/lang/String;

.field public mLowDisplayBrightnessThresholds:[F

.field public final mLuxThrottlingData:Ljava/util/Map;

.field public mName:Ljava/lang/String;

.field public mNits:[F

.field public mNitsToBacklightSpline:Landroid/util/Spline;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public final mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mProximitySensor:Lcom/android/server/display/config/SensorData;

.field public mQuirks:Ljava/util/List;

.field public mRawBacklight:[F

.field public mRawNits:[F

.field public mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

.field public final mRefreshRateLimitations:Ljava/util/List;

.field public final mRefreshRateThrottlingMap:Ljava/util/Map;

.field public final mRefreshRateZoneProfiles:Ljava/util/Map;

.field public mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

.field public mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

.field public mScreenOffBrightnessSensorValueToLux:[I

.field public mTempSensor:Lcom/android/server/display/config/SensorData;

.field public final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mVrrSupportEnabled:Z


# direct methods
.method public static synthetic $r8$lambda$kvaggoREB46PbgPpqpZy8K1UmjQ(Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$odDVxxg1hvKAhG4EWEAwvMj5Ud0(Lcom/android/server/display/DisplayDeviceConfig;Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .registers 2

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->lambda$zuiLoadHighBrightnessModeData$1(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 669
    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    const/4 v0, 0x0

    .line 696
    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 7

    .line 937
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/4 v0, 0x0

    .line 766
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 769
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 770
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 771
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 772
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 773
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 774
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 775
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 776
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 777
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 778
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v1, 0x0

    .line 779
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 780
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 781
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 782
    iput-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    const/16 v1, 0x2710

    .line 783
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    const/16 v1, 0x7d0

    .line 784
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    const/4 v1, 0x0

    .line 788
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 790
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 792
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 794
    invoke-static {v1, v1}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 810
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 813
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 817
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 821
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 825
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 829
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    const/4 v2, 0x1

    .line 831
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 837
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    const/16 v0, 0x3c

    .line 843
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 846
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 863
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 864
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 882
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 883
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 888
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 889
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 891
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 894
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 897
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 900
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 906
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 921
    sget-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 938
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 939
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2885
    :cond_4
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    .line 2901
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Thermal Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DisplayDeviceConfig"

    invoke-static {v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_26
    const/4 p0, 0x6

    return p0

    :pswitch_28
    const/4 p0, 0x5

    return p0

    :pswitch_2a
    const/4 p0, 0x4

    return p0

    :pswitch_2c
    const/4 p0, 0x3

    return p0

    :pswitch_2e
    const/4 p0, 0x2

    return p0

    :pswitch_30
    const/4 p0, 0x1

    return p0

    :pswitch_32
    return v0

    nop

    :pswitch_data_34
    .packed-switch 0x1
        :pswitch_32
        :pswitch_30
        :pswitch_2e
        :pswitch_2c
        :pswitch_2a
        :pswitch_28
        :pswitch_26
    .end packed-switch
.end method

.method public static create(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 5

    .line 956
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 959
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-object p1
.end method

.method public static create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    if-eqz p1, :cond_7

    .line 976
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0

    .line 978
    :cond_7
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 6

    .line 987
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 993
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    .line 1002
    :cond_16
    invoke-static {p0, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 1825
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1826
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 1832
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1833
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method public static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 7

    .line 1812
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1813
    const-string p3, "display_%s.xml"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1814
    const-string p3, "etc"

    const-string p4, "displayconfig"

    filled-new-array {p3, p4, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1816
    new-instance p2, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {p2, p0, p5}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1817
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayDeviceConfig;->initFromFile(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_30

    return-object p2

    :cond_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;
    .registers 3

    .line 1046
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 1047
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFloatArray(Landroid/content/res/TypedArray;F)[F
    .registers 6

    .line 3015
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 3016
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    .line 3018
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 3020
    :cond_12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .registers 4

    .line 3031
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 3032
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_12

    add-int/lit8 v2, v1, 0x1

    .line 3033
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_6

    :cond_12
    return-object v0
.end method

.method public static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 11

    .line 1058
    const-string v2, "id_%d"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    move-wide p1, v3

    if-eqz p0, :cond_e

    return-object p0

    :cond_e
    const-wide p3, -0x4000000000000001L    # -1.9999999999999998

    and-long v3, p1, p3

    .line 1066
    const-string v2, "%d"

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    if-eqz p0, :cond_1e

    return-object p0

    .line 1074
    :cond_1e
    invoke-static {p1, p2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p0

    .line 1075
    invoke-virtual {p0}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p0

    .line 1076
    const-string/jumbo v2, "port_%d"

    int-to-long v3, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 8

    .line 1006
    const-string v0, "DisplayDeviceConfig"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1007
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "etc"

    const-string v4, "displayconfig"

    const-string v5, "default.xml"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1009
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1013
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10e0074

    .line 1014
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 1015
    invoke-static {p0}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 1017
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v6, "default_%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 1019
    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 1017
    invoke-static {v2, p0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1021
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1024
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_6c

    return-object v1

    .line 1032
    :cond_6c
    :try_start_6c
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_76} :catch_88
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6c .. :try_end_76} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_76} :catch_88

    .line 1033
    :try_start_76
    invoke-static {v2}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-nez v1, :cond_84

    .line 1035
    const-string v3, "Default DisplayDeviceConfig file is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_82

    goto :goto_84

    :catchall_82
    move-exception v3

    goto :goto_8a

    .line 1037
    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_87} :catch_88

    return-object v1

    :catch_88
    move-exception v2

    goto :goto_93

    .line 1032
    :goto_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8d
    .catchall {:try_start_8a .. :try_end_8d} :catchall_8e

    goto :goto_92

    :catchall_8e
    move-exception v2

    :try_start_8f
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_92
    throw v3
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_93} :catch_88
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8f .. :try_end_93} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8f .. :try_end_93} :catch_88

    .line 1038
    :goto_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method


# virtual methods
.method public final constrainNitsAndBacklightArrays()V
    .registers 12

    .line 2617
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    if-gtz v2, :cond_88

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_88

    cmpl-float v2, v3, v5

    if-gtz v2, :cond_88

    .line 2627
    array-length v2, v0

    new-array v2, v2, [F

    .line 2628
    array-length v0, v0

    new-array v0, v0, [F

    move v3, v1

    .line 2632
    :goto_21
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_34

    add-int/lit8 v6, v3, 0x1

    .line 2633
    aget v5, v5, v6

    iget v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_32

    goto :goto_35

    :cond_32
    move v3, v6

    goto :goto_21

    :cond_34
    move v3, v1

    :goto_35
    move v6, v1

    move v7, v6

    move v5, v3

    .line 2641
    :goto_38
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v5, v9, :cond_77

    if-nez v6, :cond_77

    sub-int v7, v5, v3

    .line 2645
    aget v6, v8, v5

    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v10, v6, v9

    if-gez v10, :cond_50

    array-length v8, v8

    sub-int/2addr v8, v4

    if-lt v5, v8, :cond_4e

    goto :goto_50

    :cond_4e
    move v8, v1

    goto :goto_51

    :cond_50
    :goto_50
    move v8, v4

    :goto_51
    if-nez v7, :cond_5e

    .line 2649
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 2650
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    :cond_5e
    if-eqz v8, :cond_6b

    .line 2652
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-int/lit8 v9, v5, -0x1

    .line 2653
    invoke-virtual {p0, v9, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    .line 2656
    :cond_6b
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v5

    .line 2658
    :goto_6f
    aput v6, v0, v7

    .line 2659
    aput v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_38

    :cond_77
    add-int/2addr v7, v4

    .line 2661
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2662
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2663
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    .line 2620
    :cond_88
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min or max values are invalid; raw min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; raw max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v3, v1

    sub-int/2addr v3, v4

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight min="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; backlight max="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final convertInterpolationType(Ljava/lang/String;)I
    .registers 4

    .line 2907
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 2911
    :cond_8
    const-string/jumbo p0, "linear"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    .line 2915
    :cond_13
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected Interpolation Type: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DisplayDeviceConfig"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_a

    .line 2016
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_a

    .line 2017
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_a
    :goto_a
    return-void
.end method

.method public final createBacklightConversionSplines()V
    .registers 9

    .line 2682
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    move v1, v0

    .line 2683
    :goto_9
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_25

    .line 2684
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    aget v5, v3, v0

    array-length v6, v3

    sub-int/2addr v6, v4

    aget v4, v3, v6

    const/high16 v6, 0x3f800000    # 1.0f

    aget v3, v3, v1

    const/4 v7, 0x0

    invoke-static {v5, v4, v7, v6, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 2688
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_30

    .line 2689
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_36

    .line 2690
    :cond_30
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_36
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2691
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_45

    .line 2692
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4d

    .line 2693
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4d
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2694
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_5c

    .line 2695
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_64

    .line 2696
    :cond_5c
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_64
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 2697
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_73

    .line 2698
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_7b

    .line 2699
    :cond_73
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_7b
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-void
.end method

.method public getAmbientBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1374
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1378
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientHorizonLong()I
    .registers 1

    .line 1366
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return p0
.end method

.method public getAmbientHorizonShort()I
    .registers 1

    .line 1370
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return p0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1390
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevels(II)[F
    .registers 3

    .line 1542
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1545
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getBrightnessArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsLux(II)[F
    .registers 3

    .line 1518
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1521
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getLuxArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsNits()[F
    .registers 1

    .line 1528
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1531
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getNitsArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLightDebounce()J
    .registers 3

    .line 1492
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessBrighteningLightDebounceIdle()J
    .registers 3

    .line 1506
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounce()J
    .registers 3

    .line 1485
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounceIdle()J
    .registers 3

    .line 1499
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-wide v0
.end method

.method public getBacklight()[F
    .registers 2

    .line 1108
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1109
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlight:[F

    return-object p0

    .line 1111
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object p0
.end method

.method public getBacklightFromBrightness(F)F
    .registers 3

    .line 1122
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1123
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1125
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBacklightFromNits(F)F
    .registers 3

    .line 1180
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1181
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1183
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getBacklightToBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 1146
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1147
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    return-object p0

    .line 1149
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getBrightness()[F
    .registers 2

    .line 1283
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1284
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->brightness:[F

    return-object p0

    .line 1286
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object p0
.end method

.method public getBrightnessCapForWearBedtimeMode()F
    .registers 1

    .line 1678
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return p0
.end method

.method public getBrightnessDefault()F
    .registers 1

    .line 1313
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return p0
.end method

.method public getBrightnessDim()F
    .registers 1

    .line 1322
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return p0
.end method

.method public getBrightnessFromBacklight(F)F
    .registers 3

    .line 1135
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1136
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToBrightness:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1138
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessMaximum()F
    .registers 2

    .line 1304
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessMinimum()F
    .registers 2

    .line 1295
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessRampDecreaseMaxIdleMillis()J
    .registers 3

    .line 1358
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .registers 3

    .line 1350
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .registers 1

    .line 1326
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return p0
.end method

.method public getBrightnessRampFastIncrease()F
    .registers 1

    .line 1330
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return p0
.end method

.method public getBrightnessRampIncreaseMaxIdleMillis()J
    .registers 3

    .line 1362
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .registers 3

    .line 1354
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .registers 1

    .line 1334
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return p0
.end method

.method public getBrightnessRampSlowDecreaseIdle()F
    .registers 1

    .line 1342
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    return p0
.end method

.method public getBrightnessRampSlowIncrease()F
    .registers 1

    .line 1338
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return p0
.end method

.method public getBrightnessRampSlowIncreaseIdle()F
    .registers 1

    .line 1346
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    return p0
.end method

.method public getDefaultDozeBrightness()F
    .registers 1

    .line 1703
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    return p0
.end method

.method public getDefaultHighBlockingZoneRefreshRate()I
    .registers 1

    .line 1556
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDefaultLowBlockingZoneRefreshRate()I
    .registers 1

    .line 1563
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .registers 1

    .line 1451
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object p0
.end method

.method public getDozeBrightnessSensorValueToBrightness()[F
    .registers 1

    .line 1695
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    return-object p0
.end method

.method public getEvenDimmerTransitionPoint()F
    .registers 1

    .line 1210
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1213
    :cond_6
    iget p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->transitionPoint:F

    return p0
.end method

.method public getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;
    .registers 1

    .line 1571
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    return-object p0
.end method

.method public getHdrBrightnessFromSdr(FF)F
    .registers 4

    .line 1230
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    .line 1231
    :goto_8
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F

    move-result p0

    return p0
.end method

.method public getHdrBrightnessFromSdr(FFLandroid/util/Spline;)F
    .registers 9

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p3, :cond_5

    return v0

    .line 1247
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v1

    .line 1248
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    cmpl-float v3, v2, v0

    if-nez v3, :cond_12

    return v0

    .line 1253
    :cond_12
    invoke-virtual {p3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result p3

    invoke-static {p3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float p3, v2, p2

    .line 1255
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsToBacklightSpline()Landroid/util/Spline;

    move-result-object v3

    if-nez v3, :cond_23

    return v0

    .line 1259
    :cond_23
    invoke-virtual {p0, p3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v0

    .line 1260
    iget v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 1261
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    .line 1263
    sget-boolean v3, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    if-eqz v3, :cond_81

    .line 1264
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHdrBrightnessFromSdr: sdr brightness "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " backlight "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " nits "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ratio "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrNits "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBacklight "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBrightness "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayDeviceConfig"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .registers 1

    .line 1639
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getHighBlockingZoneThermalMap()Landroid/util/SparseArray;
    .registers 2

    .line 1646
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/config/HighBrightnessModeData;
    .registers 2

    .line 1426
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz p0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-nez v0, :cond_9

    goto :goto_a

    :cond_9
    return-object p0

    :cond_a
    :goto_a
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .registers 1

    .line 1628
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .registers 1

    .line 1663
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-object p0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;
    .registers 1

    .line 3005
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    return-object p0
.end method

.method public getIdleStylusTimeoutMillis()I
    .registers 1

    .line 2504
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    return p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .registers 1

    .line 1610
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getLowBlockingZoneThermalMap()Landroid/util/SparseArray;
    .registers 2

    .line 1617
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .registers 1

    .line 1599
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getLuxThrottlingData()Ljava/util/Map;
    .registers 1

    .line 1443
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    return-object p0
.end method

.method public getMinNitsFromLux(F)F
    .registers 2

    .line 1199
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1202
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->minLuxToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1086
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNits()[F
    .registers 2

    .line 1095
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1096
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nits:[F

    return-object p0

    .line 1098
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object p0
.end method

.method public getNitsFromBacklight(F)F
    .registers 4

    .line 1159
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1a

    .line 1160
    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    if-nez v0, :cond_b

    return v1

    .line 1163
    :cond_b
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1164
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->backlightToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1167
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_1f

    return v1

    .line 1170
    :cond_1f
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1171
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getNitsToBacklightSpline()Landroid/util/Spline;
    .registers 2

    .line 1187
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1188
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->nitsToBacklight:Landroid/util/Spline;

    return-object p0

    .line 1190
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    .registers 1

    .line 1438
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-object p0
.end method

.method public getPowerThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .registers 1

    .line 1478
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getProximitySensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1399
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 3

    .line 1579
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1582
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object p0
.end method

.method public getRefreshRangeProfiles()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$RefreshRateRange;",
            ">;"
        }
    .end annotation

    .line 1588
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;
    .registers 1

    .line 1549
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    return-object p0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .registers 1

    .line 1447
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object p0
.end method

.method public getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1382
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1386
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1394
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getScreenOffBrightnessSensorValueToLux()[I
    .registers 1

    .line 1654
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    return-object p0
.end method

.method public getTempSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1406
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .registers 1

    .line 1459
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 2

    if-nez p1, :cond_4

    .line 1469
    const-string p1, "default"

    .line 1470
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .registers 2

    .line 1419
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public hasSdrToHdrRatioSpline()Z
    .registers 1

    .line 1220
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    if-eqz p0, :cond_a

    iget-object p0, p0, Lcom/android/server/display/config/HighBrightnessModeData;->sdrToHdrRatioSpline:Landroid/util/Spline;

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final initFromDefaultValues()V
    .registers 3

    .line 1989
    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1990
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1991
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1992
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 1993
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    .line 1994
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1995
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1996
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1997
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1998
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 1999
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v0, 0x0

    .line 2000
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 2001
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2002
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 2003
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 2004
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 2005
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 2006
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 2007
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 2008
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    return-void
.end method

.method public initFromFile(Ljava/io/File;)Z
    .registers 10

    .line 1839
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1844
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_2a

    .line 1845
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Display configuration is not a file: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", skipping"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2a
    const/4 v0, 0x1

    .line 1849
    :try_start_2b
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_35} :catch_fa
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2b .. :try_end_35} :catch_fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_35} :catch_fa

    .line 1850
    :try_start_35
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v3

    if-eqz v3, :cond_f1

    .line 1852
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadName(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1853
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1854
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1855
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1856
    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v4}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v4

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11101af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1858
    invoke-static {v3}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    goto :goto_68

    :catchall_65
    move-exception v3

    goto/16 :goto_fc

    .line 1860
    :cond_68
    :goto_68
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1861
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1862
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1864
    new-instance v4, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 1873
    invoke-static {v3, v4}, Lcom/android/server/display/config/HighBrightnessModeData;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HighBrightnessModeData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    .line 1875
    iget-boolean v6, v5, Lcom/android/server/display/config/HighBrightnessModeData;->isHighBrightnessModeEnabled:Z

    if-eqz v6, :cond_92

    iget-object v5, v5, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v5, :cond_92

    .line 1877
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v6, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    iget-object v7, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    iget-object v7, v7, Lcom/android/server/display/config/HighBrightnessModeData;->refreshRateLimit:Landroid/view/SurfaceControl$RefreshRateRange;

    invoke-direct {v6, v0, v7}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(ILandroid/view/SurfaceControl$RefreshRateRange;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1882
    :cond_92
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1883
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1884
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1885
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1886
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1885
    invoke-static {v3, v5}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1887
    invoke-static {v3}, Lcom/android/server/display/config/SensorData;->loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 1888
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1889
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v5, v3}, Lcom/android/server/display/config/SensorData;->loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1890
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1891
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1892
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1893
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1894
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1895
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1896
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1897
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1898
    invoke-static {v3, v4}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1899
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1900
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1901
    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayConfiguration;->getSupportsVrr()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    .line 1902
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_f6

    .line 1904
    :cond_f1
    const-string v3, "DisplayDeviceConfig file is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catchall {:try_start_35 .. :try_end_f6} :catchall_65

    .line 1906
    :goto_f6
    :try_start_f6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fa
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_f6 .. :try_end_f9} :catch_fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f6 .. :try_end_f9} :catch_fa

    goto :goto_119

    :catch_fa
    move-exception v1

    goto :goto_105

    .line 1849
    :goto_fc
    :try_start_fc
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_ff
    .catchall {:try_start_fc .. :try_end_ff} :catchall_100

    goto :goto_104

    :catchall_100
    move-exception v1

    :try_start_101
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_104
    throw v3
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_101 .. :try_end_105} :catch_fa
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_101 .. :try_end_105} :catch_fa
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_101 .. :try_end_105} :catch_fa

    .line 1907
    :goto_105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1910
    :goto_119
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return v0
.end method

.method public final initFromGlobalXml()V
    .registers 3

    .line 1916
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 1917
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1918
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 1919
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1920
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1921
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1922
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1923
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1924
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1925
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholdsFromXml()V

    .line 1926
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigsFromConfigXml()V

    .line 1927
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 1930
    const-string v0, "ZuiAutoBrightness"

    invoke-static {v0}, Lcom/lgsi/config/LgsiFeatures;->enabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 1932
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 1933
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 1937
    :cond_48
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    .line 1939
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1941
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->zuiLoadHighBrightnessModeData()V

    .line 1943
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1944
    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return-void
.end method

.method public isAutoBrightnessAvailable()Z
    .registers 1

    .line 1410
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return p0
.end method

.method public isEvenDimmerAvailable()Z
    .registers 1

    .line 1671
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public isVrrSupportEnabled()Z
    .registers 1

    .line 1685
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    return p0
.end method

.method public final synthetic lambda$initFromFile$0(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .registers 5

    .line 1865
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 1866
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    .line 1871
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1867
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HBM transition point invalid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not less than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final synthetic lambda$zuiLoadHighBrightnessModeData$1(Lcom/android/server/display/config/HighBrightnessMode;)Ljava/lang/Float;
    .registers 5

    .line 1963
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 1964
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v0, p1, v0

    if-gez v0, :cond_17

    .line 1969
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1965
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HBM transition point invalid. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " is not less than "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 2920
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2922
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 2924
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2926
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    :cond_18
    return-void
.end method

.method public final loadAutoBrightnessAvailableFromConfigXml()V
    .registers 3

    .line 2569
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2513
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2518
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-void

    .line 2514
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0022

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2545
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2549
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-void

    .line 2546
    :cond_15
    :goto_15
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-void
.end method

.method public final loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 2487
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;

    move-result-object p1

    .line 2488
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2489
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2491
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2492
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2493
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2494
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 2495
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2496
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    return-void
.end method

.method public final loadAutoBrightnessConfigsFromConfigXml()V
    .registers 6

    .line 2841
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    const/4 v3, 0x0

    .line 2842
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2528
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2533
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-void

    .line 2529
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0023

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2560
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2564
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-void

    .line 2561
    :cond_15
    :goto_15
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    if-eqz p1, :cond_12

    .line 3086
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3088
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return-void

    .line 3090
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    :cond_12
    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeModeFromConfigXml()V
    .registers 3

    .line 3096
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 3097
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3096
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return-void
.end method

.method public final loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2850
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2852
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2854
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2856
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2858
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-void
.end method

.method public final loadBrightnessChangeThresholdsFromXml()V
    .registers 2

    const/4 v0, 0x0

    .line 2846
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .registers 5

    .line 2076
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 2078
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050115

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2a

    cmpl-float v3, v1, v2

    if-nez v3, :cond_25

    goto :goto_2a

    .line 2088
    :cond_25
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2089
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_50

    .line 2081
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2082
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2081
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 2084
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2085
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e014a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2084
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 2091
    :goto_50
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    cmpl-float v1, v0, v2

    if-nez v1, :cond_75

    .line 2094
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2095
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0147

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2094
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return-void

    .line 2098
    :cond_75
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .registers 3

    .line 2063
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050114

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_27

    .line 2066
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2067
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0149

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2066
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void

    .line 2070
    :cond_27
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void
.end method

.method public final loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    if-eqz p1, :cond_12

    .line 2051
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2053
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return-void

    .line 2055
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_12
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 10

    .line 2103
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p1

    if-nez p1, :cond_a

    .line 2106
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    .line 2111
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v0

    .line 2112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2114
    new-array v2, v1, [F

    .line 2115
    new-array v1, v1, [F

    .line 2117
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 2119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/Point;

    .line 2120
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, v0

    .line 2121
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v0

    if-lez v0, :cond_9b

    .line 2123
    aget v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const-string v6, " < "

    const-string v7, "DisplayDeviceConfig"

    if-gez v4, :cond_75

    .line 2124
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Nits: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v2, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2129
    :cond_75
    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9b

    .line 2130
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "screenBrightnessMap must be non-decreasing, ignoring rest  of configuration. Value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, v1, v5

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 2138
    :cond_9e
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2139
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2140
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .registers 7

    .line 2575
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070120

    .line 2576
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x107011f

    .line 2578
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2580
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    .line 2582
    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_2a

    .line 2583
    aget v5, v0, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2a
    if-eqz v2, :cond_38

    .line 2589
    array-length v0, v1

    if-nez v0, :cond_30

    goto :goto_38

    .line 2594
    :cond_30
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2595
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2596
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    .line 2590
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 2758
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2759
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .registers 3

    .line 2830
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2831
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2830
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2832
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2833
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2832
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 2836
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2837
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method public final loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2798
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2799
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 2802
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2803
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    goto :goto_2c

    :cond_19
    if-nez v0, :cond_1d

    if-eqz v1, :cond_24

    .line 2806
    :cond_1d
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display idle brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2811
    :cond_24
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2812
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 2815
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2817
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    goto :goto_3e

    .line 2819
    :cond_3a
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 2821
    :goto_3e
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 2823
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-void

    .line 2825
    :cond_4c
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-void
.end method

.method public final loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 2765
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2766
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2767
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2768
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eqz v3, :cond_31

    .line 2772
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2773
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2774
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2775
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_43

    :cond_31
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v2, :cond_39

    if-eqz v3, :cond_40

    .line 2779
    :cond_39
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 2785
    :goto_43
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2787
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2789
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 2791
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    :cond_5d
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 8

    .line 2026
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 2030
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object p1

    .line 2033
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    .line 2034
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 2035
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/Density;

    .line 2036
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 2037
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 2038
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 2039
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 2041
    :cond_44
    invoke-static {v0}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-void
.end method

.method public final loadDozeBrightness(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 7

    .line 2941
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_47

    if-eqz p1, :cond_47

    .line 2942
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 2943
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDozeBrightnessSensorValueToBrightness()Lcom/android/server/display/config/FloatArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/config/FloatArray;->getItem()Ljava/util/List;

    move-result-object v0

    .line 2944
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    const/4 v1, 0x0

    .line 2945
    :goto_21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_47

    .line 2946
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_40

    .line 2948
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 2949
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    goto :goto_44

    .line 2951
    :cond_40
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    aput v3, v2, v1

    :goto_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 2956
    :cond_47
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDozeBrightnessFloatEnabled()Z

    move-result v0

    if-eqz v0, :cond_66

    if-eqz p1, :cond_66

    .line 2957
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object v0

    if-eqz v0, :cond_66

    .line 2958
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDefaultDozeBrightness()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    .line 2959
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    return-void

    .line 2961
    :cond_66
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1050112

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    const/high16 v0, -0x40000000    # -2.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_8e

    .line 2964
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2965
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0148

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2964
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    :cond_8e
    return-void
.end method

.method public final loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    const/4 v0, 0x1

    .line 3052
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_b

    .line 3054
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 3057
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1110042

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-nez p1, :cond_12

    .line 2362
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00ad

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return-void

    .line 2366
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return-void
.end method

.method public final loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 6

    if-nez p1, :cond_58

    .line 2442
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700a9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2444
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_31

    if-eqz v0, :cond_31

    .line 2446
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_31

    .line 2459
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2461
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-void

    .line 2450
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display high brightness threshold array and ambient brightness threshold array have different length: highDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2453
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", highAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2455
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2464
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2465
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2466
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2467
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_6d
    if-ge v1, v0, :cond_a8

    .line 2470
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_87

    .line 2473
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_93

    .line 2475
    :cond_87
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2476
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2477
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2480
    :goto_93
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2481
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_a8
    return-void
.end method

.method public final loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 2349
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2351
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2352
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 2931
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenRefreshRateTimeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2934
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    .line 2933
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    .line 2936
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    :cond_25
    return-void
.end method

.method public final loadIdleStylusTimeoutMillis(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 2

    if-nez p1, :cond_3

    goto :goto_f

    .line 3042
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getIdleStylusTimeoutMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 3044
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    :cond_f
    :goto_f
    return-void
.end method

.method public final loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-nez p1, :cond_12

    .line 2377
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0072

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return-void

    .line 2381
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return-void
.end method

.method public final loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 6

    if-nez p1, :cond_58

    .line 2391
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070034

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2393
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_31

    if-eqz v0, :cond_31

    .line 2395
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_31

    .line 2408
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2410
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-void

    .line 2399
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display low brightness threshold array and ambient brightness threshold array have different length: lowDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2402
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lowAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2404
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2413
    :cond_58
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2414
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2415
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2416
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_6d
    if-ge v1, v0, :cond_a8

    .line 2419
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_87

    .line 2422
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_93

    .line 2424
    :cond_87
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2425
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2426
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2429
    :goto_93
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2430
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_a8
    return-void
.end method

.method public final loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 2337
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2339
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2340
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 13

    .line 2710
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 2712
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2713
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    goto :goto_17

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2715
    :goto_17
    invoke-virtual {v0}, Lcom/android/server/display/config/LuxThrottling;->getBrightnessLimitMap()Ljava/util/List;

    move-result-object v0

    .line 2716
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_101

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/BrightnessLimitMap;

    .line 2717
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getType()Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v2

    .line 2718
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->-$$Nest$smconvert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v3

    .line 2719
    const-string v4, "DisplayDeviceConfig"

    if-nez v3, :cond_4c

    .line 2720
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NBM config: unsupported map type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2723
    :cond_4c
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 2724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NBM config: duplicate map type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2727
    :cond_69
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2729
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 2730
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 2731
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 2732
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    cmpl-float v8, v6, p1

    .line 2733
    const-string v9, "; lux="

    if-lez v8, :cond_bf

    .line 2734
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid NBM config: maxBacklight is greater than hbm.transitionPoint. type="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "; maxBacklight="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 2741
    :cond_bf
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 2742
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid NBM config: duplicate lux key. type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 2747
    :cond_e4
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 2749
    :cond_f4
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2750
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :cond_101
    return-void
.end method

.method public final loadName(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 2022
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-void
.end method

.method public final loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 2282
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_d

    .line 2286
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return-void

    .line 2289
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getBrightnessLowestCapAllowed()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2290
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getCustomAnimationRate()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    .line 2291
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMaxMillis()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    .line 2292
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMinMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 2293
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;-><init>(FFII)V

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-void
.end method

.method public final loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z
    .registers 8

    .line 2243
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPowerThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 2244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_98

    .line 2249
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/PowerThrottlingMap;

    .line 2250
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getPowerThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2252
    new-instance v2, Ljava/util/ArrayList;

    .line 2253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2256
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 2257
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2258
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_12

    .line 2263
    :cond_46
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 2264
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    .line 2265
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getPowerQuotaMilliWatts()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2263
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 2269
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    const-string v0, "default"

    goto :goto_68

    :cond_64
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2270
    :goto_68
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2274
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2275
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v2

    .line 2274
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2271
    :cond_7a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power throttling data with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    const/4 p0, 0x1

    return p0

    .line 2245
    :cond_98
    :goto_98
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No power throttling map found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 2703
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2705
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayQuirks;->getQuirk()Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    :cond_11
    return-void
.end method

.method public final loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_5

    move-object p1, v0

    goto :goto_9

    .line 2301
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object p1

    :goto_9
    if-nez p1, :cond_d

    move-object v1, v0

    goto :goto_11

    .line 2304
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    :goto_11
    if-nez p1, :cond_14

    goto :goto_18

    .line 2307
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v0

    .line 2308
    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2309
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2310
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V

    return-void
.end method

.method public final loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .registers 7

    if-eqz p1, :cond_44

    .line 2318
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 2322
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateZoneProfiles;->getRefreshRateZoneProfile()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/RefreshRateZone;

    .line 2323
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 2324
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 2325
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2327
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2324
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_44
    :goto_44
    return-void
.end method

.method public final loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 5

    .line 3063
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_2b

    .line 3068
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object p1

    .line 3069
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    const/4 v0, 0x0

    .line 3070
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 3071
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 8

    .line 2154
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 2155
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_97

    .line 2160
    :cond_e
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_96

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/BrightnessThrottlingMap;

    .line 2161
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2163
    new-instance v2, Ljava/util/ArrayList;

    .line 2164
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 2168
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2169
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_12

    .line 2174
    :cond_46
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 2175
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2174
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 2179
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    const-string v0, "default"

    goto :goto_68

    .line 2180
    :cond_64
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2181
    :goto_68
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2185
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2186
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v2

    .line 2185
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2182
    :cond_7a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness throttling data with ID "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " already exists"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    return-void

    .line 2156
    :cond_97
    :goto_97
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No brightness throttling map found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 10

    .line 2192
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getRefreshRateThrottlingMap()Ljava/util/List;

    move-result-object p1

    .line 2193
    const-string v0, "DisplayDeviceConfig"

    if-eqz p1, :cond_11f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_11f

    .line 2198
    :cond_10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/config/RefreshRateThrottlingMap;

    .line 2199
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getRefreshRateThrottlingPoint()Ljava/util/List;

    move-result-object v2

    .line 2200
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2d

    const-string v1, "default"

    goto :goto_31

    :cond_2d
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_31
    if-eqz v2, :cond_108

    .line 2202
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto/16 :goto_108

    .line 2207
    :cond_3b
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: map already exists, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2212
    :cond_58
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 2214
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 2215
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 2216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: Invalid thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2216
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2221
    :cond_98
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v6

    .line 2222
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 2223
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is already in the map, mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2228
    :cond_c3
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2229
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    .line 2230
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-direct {v5, v7, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2228
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_61

    .line 2233
    :cond_e5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_101

    .line 2234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2238
    :cond_101
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 2204
    :cond_108
    :goto_108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: points not found for mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_11e
    return-void

    .line 2194
    :cond_11f
    :goto_11f
    const-string p0, "RefreshRateThrottling: map not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 2144
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object p1

    if-nez p1, :cond_e

    .line 2146
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No thermal throttling config found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2149
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2150
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V

    return-void
.end method

.method public final loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 3076
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getUsiVersion()Lcom/android/server/display/config/UsiVersion;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 3078
    new-instance v0, Landroid/hardware/input/HostUsiVersion;

    .line 3079
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMajorVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 3080
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMinorVersion()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 3081
    :goto_1d
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-void
.end method

.method public final rawBacklightToNits(IF)F
    .registers 6

    .line 2667
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    aget v1, v0, p1

    add-int/lit8 v2, p1, 0x1

    aget v0, v0, v2

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget p1, p0, p1

    aget p0, p0, v2

    invoke-static {v1, v0, p1, p0, p2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result p0

    return p0
.end method

.method public final setSimpleMappingStrategyValues()V
    .registers 3

    const/4 v0, 0x0

    .line 2603
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2604
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    .line 2605
    new-array v0, v0, [F

    fill-array-data v0, :array_18

    .line 2606
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2608
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-void

    :array_18
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 2866
    :cond_4
    sget-object v0, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_12

    return p0

    :pswitch_10
    const/4 p0, 0x1

    return p0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1711
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1712
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1713
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1714
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterpolationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    .line 1716
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightToBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNitsToBacklightSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBacklightMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDim:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLuxThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/config/HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mThermalBrightnessThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n, mPowerThrottlingDataMapByThrottlingId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessRampFastDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampFastIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncrease="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowDecreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampSlowIncreaseIdle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampDecreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mBrightnessRampIncreaseMaxIdleMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientHorizonLong="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mAmbientHorizonShort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenBrightnessIdleHysteresis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmAmbientLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOffBrightnessSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mTempSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateLimitations= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    .line 1761
    invoke-interface {v1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDensityMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounce= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessBrighteningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessDarkeningLightDebounceIdle= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayBrightnessMapping= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDdcAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoBrightnessAvailable= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIdleStylusTimeoutMillis= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleStylusTimeoutMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultLowBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultHighBlockingZoneRefreshRate= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateZoneProfiles= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRefreshRateThrottlingMap= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighBlockingZoneThermalMapId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmLowDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 1785
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 1787
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 1789
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 1791
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenOffBrightnessSensorValueToLux= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 1793
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmUsiVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmHdrBrightnessData= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBrightnessCapForWearBedtimeMode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nmEvenDimmerBrightnessData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1800
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v1, :cond_2c4

    .line 1801
    invoke-virtual {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c7

    :cond_2c4
    const-string/jumbo v1, "null"

    :goto_2c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmVrrSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmDozeBrightnessSensorValueToBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDozeBrightnessSensorValueToBrightness:[F

    .line 1805
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmDefaultDozeBrightness= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultDozeBrightness:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .registers 4

    .line 2974
    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 2980
    invoke-virtual {p0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;->getPoint()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, -0x1

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 2981
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_39

    .line 2987
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    if-ltz p1, :cond_31

    move p1, v1

    goto :goto_f

    .line 2989
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The timeout value cannot be negative in idle screen refresh rate timeout config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2983
    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Lux values should be in ascending order in the idle screen refresh rate timeout config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    return-void
.end method

.method public final zuiLoadHighBrightnessModeData()V
    .registers 6

    .line 1949
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system/etc/display_hdr.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ", skipping"

    const-string v3, "Display configuration is not a file: "

    const-string v4, "DisplayDeviceConfig"

    if-nez v1, :cond_2a

    .line 1952
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1956
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_46

    .line 1957
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1960
    :cond_46
    :try_start_46
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_84
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_46 .. :try_end_50} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_50} :catch_84

    .line 1961
    :try_start_50
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v2

    .line 1962
    new-instance v3, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayDeviceConfig$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    if-eqz v2, :cond_7b

    .line 1974
    invoke-static {v2, v3}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;Ljava/util/function/Function;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1975
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "zuiLoadHighBrightnessModeData:mHdrBrightnessData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_80

    :catchall_79
    move-exception p0

    goto :goto_86

    .line 1977
    :cond_7b
    const-string p0, "DisplayDeviceConfig file is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catchall {:try_start_50 .. :try_end_80} :catchall_79

    .line 1979
    :goto_80
    :try_start_80
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_80 .. :try_end_83} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_80 .. :try_end_83} :catch_84

    return-void

    :catch_84
    move-exception p0

    goto :goto_8f

    .line 1960
    :goto_86
    :try_start_86
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v1

    :try_start_8b
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8e
    throw p0
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8f} :catch_84
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_8b .. :try_end_8f} :catch_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8b .. :try_end_8f} :catch_84

    .line 1980
    :goto_8f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
