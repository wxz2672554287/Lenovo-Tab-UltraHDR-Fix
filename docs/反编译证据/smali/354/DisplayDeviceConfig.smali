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

.field public mDefaultHighBlockingZoneRefreshRate:I

.field public mDefaultLowBlockingZoneRefreshRate:I

.field public mDensityMapping:Lcom/android/server/display/DensityMapping;

.field public mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

.field public mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

.field public final mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

.field public mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

.field public mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighBlockingZoneThermalMapId:Ljava/lang/String;

.field public mHighDisplayBrightnessThresholds:[F

.field public mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

.field public mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

.field public mInterpolationType:I

.field public mIsHighBrightnessModeEnabled:Z

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

.field public mSdrToHdrRatioSpline:Landroid/util/Spline;

.field public mTempSensor:Lcom/android/server/display/config/SensorData;

.field public final mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

.field public mVrrSupportEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 620
    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0}, Lcom/android/server/display/utils/DebugUtils;->isDebuggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    const/4 v0, 0x0

    .line 643
    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .registers 7

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 684
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 711
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 712
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    .line 713
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 714
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 715
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 716
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 717
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 718
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 719
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v0, 0x0

    .line 720
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 721
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 722
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 723
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    const/16 v0, 0x2710

    .line 724
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    const/16 v0, 0x7d0

    .line 725
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    const/4 v0, 0x0

    .line 729
    invoke-static {v0, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 731
    invoke-static {v0, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 733
    invoke-static {v0, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 735
    invoke-static {v0, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    const/4 v1, 0x0

    .line 746
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 751
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 755
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    .line 759
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    .line 763
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    .line 767
    iput-wide v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    .line 771
    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    const/4 v2, 0x1

    .line 773
    iput-boolean v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 779
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    const/16 v1, 0x3c

    .line 785
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    .line 788
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 805
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig;->DEFAULT_BRIGHTNESS_THRESHOLDS:[F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 806
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 824
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 825
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 830
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 831
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 839
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    .line 842
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    .line 848
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    .line 863
    sget-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 876
    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 877
    iput-object p2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    return-void
.end method

.method public static convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 2782
    :cond_4
    sget-object v1, Lcom/android/server/display/DisplayDeviceConfig$1;->$SwitchMap$com$android$server$display$config$ThermalStatus:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_34

    .line 2798
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

    .line 894
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    .line 897
    invoke-static {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayDeviceConfig;->copyUninitializedValuesFromSecondaryConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-object p1
.end method

.method public static create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    if-eqz p1, :cond_7

    .line 914
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    goto :goto_b

    .line 916
    :cond_7
    invoke-static {p0, p2}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    :goto_b
    return-object p0
.end method

.method public static createWithoutDefaultValues(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 6

    .line 925
    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_b

    return-object v0

    .line 931
    :cond_b
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p4}, Lcom/android/server/display/DisplayDeviceConfig;->loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    if-eqz p1, :cond_16

    return-object p1

    .line 940
    :cond_16
    invoke-static {p0, p3, p4}, Lcom/android/server/display/DisplayDeviceConfig;->create(Landroid/content/Context;ZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigFromGlobalXml(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 1705
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1706
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromGlobalXml()V

    return-object v0
.end method

.method public static getConfigFromPmValues(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 3

    .line 1712
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1713
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->initFromDefaultValues()V

    return-object v0
.end method

.method public static getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 7

    .line 1692
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {v0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1693
    const-string p3, "display_%s.xml"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v0, p3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1694
    const-string p3, "etc"

    const-string p4, "displayconfig"

    filled-new-array {p3, p4, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 1696
    new-instance p2, Lcom/android/server/display/DisplayDeviceConfig;

    invoke-direct {p2, p0, p5}, Lcom/android/server/display/DisplayDeviceConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;)V

    .line 1697
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

    .line 984
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 985
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

    .line 2881
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 2882
    new-array v1, v0, [F

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_12

    .line 2884
    invoke-virtual {p0, v2, p1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2886
    :cond_12
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1
.end method

.method public static getLuxLevels([I)[F
    .registers 4

    .line 2897
    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2898
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_12

    add-int/lit8 v2, v1, 0x1

    .line 2899
    aget v1, p0, v1

    int-to-float v1, v1

    aput v1, v0, v2

    move v1, v2

    goto :goto_6

    :cond_12
    return-object v0
.end method

.method public static loadConfigFromDirectory(Landroid/content/Context;Ljava/io/File;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;
    .registers 13

    .line 996
    const-string v2, "id_%d"

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    :cond_d
    const-wide v0, -0x4000000000000001L    # -1.9999999999999998

    and-long v5, p2, v0

    .line 1004
    const-string v4, "%d"

    move-object v2, p0

    move-object v3, p1

    move-object v7, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    if-eqz v0, :cond_20

    return-object v0

    .line 1012
    :cond_20
    invoke-static {p2, p3}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object p2

    .line 1013
    invoke-virtual {p2}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p2

    .line 1014
    const-string/jumbo v2, "port_%d"

    int-to-long v3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayDeviceConfig;->getConfigFromSuffix(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;JLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p0

    return-object p0
.end method

.method public static loadDefaultConfigurationXml(Landroid/content/Context;)Lcom/android/server/display/config/DisplayConfiguration;
    .registers 8

    .line 944
    const-string v0, "DisplayDeviceConfig"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 945
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

    .line 947
    invoke-static {}, Landroid/os/Environment;->getVendorDirectory()Ljava/io/File;

    move-result-object v2

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 951
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x10e0069

    .line 952
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    .line 953
    invoke-static {p0}, Landroid/content/res/Configuration;->getUiModeTypeString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_55

    .line 955
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v2

    const-string v6, "default_%s.xml"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 957
    invoke-static {v6, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v3, v4, p0}, [Ljava/lang/String;

    move-result-object p0

    .line 955
    invoke-static {v2, p0}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 959
    :cond_55
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object p0

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-static {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getFirstExistingFile(Ljava/util/Collection;)Ljava/io/File;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_6c

    return-object v1

    .line 970
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

    .line 971
    :try_start_76
    invoke-static {v2}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-nez v1, :cond_84

    .line 973
    const-string v3, "Default DisplayDeviceConfig file is null"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_76 .. :try_end_81} :catchall_82

    goto :goto_84

    :catchall_82
    move-exception v3

    goto :goto_8a

    .line 975
    :cond_84
    :goto_84
    :try_start_84
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_84 .. :try_end_87} :catch_88
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_84 .. :try_end_87} :catch_88

    goto :goto_a7

    :catch_88
    move-exception v2

    goto :goto_93

    .line 970
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

    .line 976
    :goto_93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a7
    return-object v1
.end method


# virtual methods
.method public final constrainNitsAndBacklightArrays()V
    .registers 12

    .line 2470
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

    .line 2480
    array-length v2, v0

    new-array v2, v2, [F

    .line 2481
    array-length v0, v0

    new-array v0, v0, [F

    move v3, v1

    .line 2485
    :goto_21
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v6, v5

    sub-int/2addr v6, v4

    if-ge v3, v6, :cond_34

    add-int/lit8 v6, v3, 0x1

    .line 2486
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

    .line 2494
    :goto_38
    iget-object v8, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    array-length v9, v8

    if-ge v5, v9, :cond_77

    if-nez v6, :cond_77

    sub-int v7, v5, v3

    .line 2498
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

    .line 2502
    iget v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {v6, v9}, Landroid/util/MathUtils;->max(FF)F

    move-result v6

    .line 2503
    invoke-virtual {p0, v5, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    :cond_5e
    if-eqz v8, :cond_6b

    .line 2505
    invoke-static {v6, v9}, Landroid/util/MathUtils;->min(FF)F

    move-result v6

    add-int/lit8 v9, v5, -0x1

    .line 2506
    invoke-virtual {p0, v9, v6}, Lcom/android/server/display/DisplayDeviceConfig;->rawBacklightToNits(IF)F

    move-result v9

    goto :goto_6f

    .line 2509
    :cond_6b
    iget-object v9, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    aget v9, v9, v5

    .line 2511
    :goto_6f
    aput v6, v0, v7

    .line 2512
    aput v9, v2, v7

    add-int/lit8 v5, v5, 0x1

    move v6, v8

    goto :goto_38

    :cond_77
    add-int/2addr v7, v4

    .line 2514
    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 2515
    invoke-static {v2, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2516
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->createBacklightConversionSplines()V

    return-void

    .line 2473
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

    .line 2804
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    return v0

    .line 2808
    :cond_8
    const-string/jumbo p0, "linear"

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13

    const/4 p0, 0x1

    return p0

    .line 2812
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

    return-void

    .line 1857
    :cond_3
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    if-nez v0, :cond_a

    .line 1858
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    :cond_a
    return-void
.end method

.method public final createBacklightConversionSplines()V
    .registers 9

    .line 2535
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    array-length v0, v0

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    const/4 v0, 0x0

    move v1, v0

    .line 2536
    :goto_9
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_25

    .line 2537
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

    .line 2541
    :cond_25
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_30

    .line 2542
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_36

    .line 2543
    :cond_30
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v2, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_36
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2544
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_45

    .line 2545
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_4d

    .line 2546
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_4d
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    .line 2547
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_5c

    .line 2548
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_64

    .line 2549
    :cond_5c
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    :goto_64
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    .line 2550
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    if-ne v0, v4, :cond_73

    .line 2551
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    invoke-static {v0, v1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    goto :goto_7b

    .line 2552
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

    .line 1272
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1276
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getAmbientHorizonLong()I
    .registers 1

    .line 1264
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    return p0
.end method

.method public getAmbientHorizonShort()I
    .registers 1

    .line 1268
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    return p0
.end method

.method public getAmbientLightSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1288
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevels(II)[F
    .registers 3

    .line 1442
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1445
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getBrightnessArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsLux(II)[F
    .registers 3

    .line 1418
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1421
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getLuxArray(II)[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLevelsNits()[F
    .registers 1

    .line 1428
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 1431
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;->getNitsArray()[F

    move-result-object p0

    return-object p0
.end method

.method public getAutoBrightnessBrighteningLightDebounce()J
    .registers 3

    .line 1392
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessBrighteningLightDebounceIdle()J
    .registers 3

    .line 1406
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounce()J
    .registers 3

    .line 1385
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    return-wide v0
.end method

.method public getAutoBrightnessDarkeningLightDebounceIdle()J
    .registers 3

    .line 1399
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    return-wide v0
.end method

.method public getBacklight()[F
    .registers 2

    .line 1046
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1047
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklight:[F

    return-object p0

    .line 1049
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    return-object p0
.end method

.method public getBacklightFromBrightness(F)F
    .registers 3

    .line 1060
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1061
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightnessToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1063
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBacklightFromNits(F)F
    .registers 3

    .line 1118
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1119
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1121
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getBacklightToBrightnessSpline()Landroid/util/Spline;
    .registers 2

    .line 1084
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1085
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    return-object p0

    .line 1087
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getBrightness()[F
    .registers 2

    .line 1208
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1209
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBrightness:[F

    return-object p0

    .line 1211
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightness:[F

    return-object p0
.end method

.method public getBrightnessCapForWearBedtimeMode()F
    .registers 1

    .line 1578
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return p0
.end method

.method public getBrightnessDefault()F
    .registers 1

    .line 1220
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    return p0
.end method

.method public getBrightnessFromBacklight(F)F
    .registers 3

    .line 1073
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_b

    .line 1074
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToBrightness:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1076
    :cond_b
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessRampDecreaseMaxIdleMillis()J
    .registers 3

    .line 1256
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampDecreaseMaxMillis()J
    .registers 3

    .line 1248
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampFastDecrease()F
    .registers 1

    .line 1224
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    return p0
.end method

.method public getBrightnessRampFastIncrease()F
    .registers 1

    .line 1228
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    return p0
.end method

.method public getBrightnessRampIncreaseMaxIdleMillis()J
    .registers 3

    .line 1260
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    return-wide v0
.end method

.method public getBrightnessRampIncreaseMaxMillis()J
    .registers 3

    .line 1252
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    return-wide v0
.end method

.method public getBrightnessRampSlowDecrease()F
    .registers 1

    .line 1232
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return p0
.end method

.method public getBrightnessRampSlowDecreaseIdle()F
    .registers 1

    .line 1240
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    return p0
.end method

.method public getBrightnessRampSlowIncrease()F
    .registers 1

    .line 1236
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    return p0
.end method

.method public getBrightnessRampSlowIncreaseIdle()F
    .registers 1

    .line 1244
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    return p0
.end method

.method public getDefaultHighBlockingZoneRefreshRate()I
    .registers 1

    .line 1456
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDefaultLowBlockingZoneRefreshRate()I
    .registers 1

    .line 1463
    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    return p0
.end method

.method public getDensityMapping()Lcom/android/server/display/DensityMapping;
    .registers 1

    .line 1351
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-object p0
.end method

.method public getEvenDimmerTransitionPoint()F
    .registers 1

    .line 1148
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 1151
    :cond_6
    iget p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mTransitionPoint:F

    return p0
.end method

.method public getHdrBrightnessData()Lcom/android/server/display/config/HdrBrightnessData;
    .registers 1

    .line 1471
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    return-object p0
.end method

.method public getHdrBrightnessFromSdr(FF)F
    .registers 9

    .line 1168
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    const/high16 v1, -0x40800000    # -1.0f

    if-nez v0, :cond_7

    return v1

    .line 1172
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromBrightness(F)F

    move-result v0

    .line 1173
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsFromBacklight(F)F

    move-result v2

    cmpl-float v3, v2, v1

    if-nez v3, :cond_14

    return v1

    .line 1178
    :cond_14
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    invoke-virtual {v3, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    invoke-static {v3, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    mul-float v3, v2, p2

    .line 1180
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getNitsToBacklightSpline()Landroid/util/Spline;

    move-result-object v4

    if-nez v4, :cond_27

    return v1

    .line 1184
    :cond_27
    invoke-virtual {p0, v3}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v1

    .line 1185
    iget v4, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    iget v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-static {v5, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1186
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result p0

    .line 1188
    sget-boolean v4, Lcom/android/server/display/DisplayDeviceConfig;->DEBUG:Z

    if-eqz v4, :cond_85

    .line 1189
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHdrBrightnessFromSdr: sdr brightness "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " backlight "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " nits "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " ratio "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrNits "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBacklight "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " hdrBrightness "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DisplayDeviceConfig"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .registers 1

    .line 1539
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getHighBlockingZoneThermalMap()Landroid/util/SparseArray;
    .registers 2

    .line 1546
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getHighBrightnessModeData()Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;
    .registers 2

    .line 1324
    iget-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    if-nez v0, :cond_9

    goto :goto_14

    .line 1328
    :cond_9
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    .line 1329
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->copyTo(Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;)V

    return-object v0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .registers 1

    .line 1528
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getHostUsiVersion()Landroid/hardware/input/HostUsiVersion;
    .registers 1

    .line 1563
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-object p0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;
    .registers 1

    .line 2871
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIdleScreenRefreshRateTimeoutLuxThresholds:Ljava/util/List;

    return-object p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .registers 1

    .line 1510
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getLowBlockingZoneThermalMap()Landroid/util/SparseArray;
    .registers 2

    .line 1517
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .registers 1

    .line 1499
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getLuxThrottlingData()Ljava/util/Map;
    .registers 1

    .line 1343
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    return-object p0
.end method

.method public getMinNitsFromLux(F)F
    .registers 2

    .line 1137
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-nez p0, :cond_7

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 1140
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mMinLuxToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 1024
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNits()[F
    .registers 2

    .line 1033
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1034
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNits:[F

    return-object p0

    .line 1036
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    return-object p0
.end method

.method public getNitsFromBacklight(F)F
    .registers 4

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz v0, :cond_1a

    .line 1098
    iget-object v0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    if-nez v0, :cond_b

    return v1

    .line 1101
    :cond_b
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1102
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    iget-object p0, p0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mBacklightToNits:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0

    .line 1105
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    if-nez v0, :cond_1f

    return v1

    .line 1108
    :cond_1f
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1109
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {p0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result p0

    return p0
.end method

.method public final getNitsToBacklightSpline()Landroid/util/Spline;
    .registers 2

    .line 1125
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v0, :cond_7

    .line 1126
    iget-object p0, v0, Lcom/android/server/display/config/EvenDimmerBrightnessData;->mNitsToBacklight:Landroid/util/Spline;

    return-object p0

    .line 1128
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNitsToBacklightSpline:Landroid/util/Spline;

    return-object p0
.end method

.method public getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;
    .registers 1

    .line 1338
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-object p0
.end method

.method public getPowerThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .registers 1

    .line 1378
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getProximitySensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1297
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getRefreshRange(Ljava/lang/String;)Landroid/view/SurfaceControl$RefreshRateRange;
    .registers 3

    .line 1479
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 1482
    :cond_8
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/SurfaceControl$RefreshRateRange;

    return-object p0
.end method

.method public getRefreshRangeProfiles()Ljava/util/Map;
    .registers 1

    .line 1488
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    return-object p0
.end method

.method public getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;
    .registers 1

    .line 1449
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    return-object p0
.end method

.method public getRefreshRateLimitations()Ljava/util/List;
    .registers 1

    .line 1347
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    return-object p0
.end method

.method public getScreenBrightnessHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1280
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenBrightnessIdleHysteresis()Lcom/android/server/display/config/HysteresisLevels;
    .registers 1

    .line 1284
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-object p0
.end method

.method public getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1292
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getScreenOffBrightnessSensorValueToLux()[I
    .registers 1

    .line 1554
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    return-object p0
.end method

.method public getTempSensor()Lcom/android/server/display/config/SensorData;
    .registers 1

    .line 1304
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public getThermalBrightnessThrottlingDataMapByThrottlingId()Ljava/util/Map;
    .registers 1

    .line 1359
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    return-object p0
.end method

.method public getThermalRefreshRateThrottlingData(Ljava/lang/String;)Landroid/util/SparseArray;
    .registers 2

    if-nez p1, :cond_4

    .line 1369
    const-string p1, "default"

    .line 1370
    :cond_4
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    return-object p0
.end method

.method public hasQuirk(Ljava/lang/String;)Z
    .registers 2

    .line 1317
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    if-eqz p0, :cond_c

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public hasSdrToHdrRatioSpline()Z
    .registers 1

    .line 1158
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final initFromDefaultValues()V
    .registers 3

    .line 1831
    const-string v0, "Static values"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 v0, 0x0

    .line 1832
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1833
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 1834
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    .line 1835
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 1836
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 1837
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 1838
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 1839
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 1840
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    const-wide/16 v0, 0x0

    .line 1841
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    .line 1842
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 1843
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    .line 1844
    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    .line 1846
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1847
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1848
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1849
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    return-void
.end method

.method public initFromFile(Ljava/io/File;)Z
    .registers 7

    .line 1719
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 1724
    :cond_8
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    const-string v2, "DisplayDeviceConfig"

    if-nez v0, :cond_2a

    .line 1725
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

    .line 1729
    :cond_2a
    :try_start_2a
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_d7
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_2a .. :try_end_34} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2a .. :try_end_34} :catch_d7

    .line 1730
    :try_start_34
    invoke-static {v0}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 1732
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadName(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1733
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1734
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1735
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1736
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v3}, Lcom/android/server/display/feature/DisplayManagerFlags;->isEvenDimmerEnabled()Z

    move-result v3

    if-eqz v3, :cond_66

    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110198

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 1738
    invoke-static {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/EvenDimmerBrightnessData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    goto :goto_66

    :catchall_64
    move-exception v1

    goto :goto_d9

    .line 1740
    :cond_66
    :goto_66
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1741
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1742
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1743
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1744
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1745
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadQuirks(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1746
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1747
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1748
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1747
    invoke-static {v1, v3}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1749
    invoke-static {v1}, Lcom/android/server/display/config/SensorData;->loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensor:Lcom/android/server/display/config/SensorData;

    .line 1750
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v3, v1}, Lcom/android/server/display/config/SensorData;->loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1751
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-static {v3, v1}, Lcom/android/server/display/config/SensorData;->loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1752
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1753
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1754
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1755
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1756
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1757
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1758
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1759
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1760
    invoke-static {v1}, Lcom/android/server/display/config/HdrBrightnessData;->loadConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/HdrBrightnessData;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHdrBrightnessData:Lcom/android/server/display/config/HdrBrightnessData;

    .line 1761
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1762
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1763
    invoke-virtual {v1}, Lcom/android/server/display/config/DisplayConfiguration;->getSupportsVrr()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    goto :goto_d3

    .line 1765
    :cond_ce
    const-string v1, "DisplayDeviceConfig file is null"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d3
    .catchall {:try_start_34 .. :try_end_d3} :catchall_64

    .line 1767
    :goto_d3
    :try_start_d3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/io/IOException; {:try_start_d3 .. :try_end_d6} :catch_d7
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_d3 .. :try_end_d6} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d3 .. :try_end_d6} :catch_d7

    goto :goto_f6

    :catch_d7
    move-exception v0

    goto :goto_e2

    .line 1729
    :goto_d9
    :try_start_d9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_dd

    goto :goto_e1

    :catchall_dd
    move-exception v0

    :try_start_de
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e1
    throw v1
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e2} :catch_d7
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_de .. :try_end_e2} :catch_d7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_de .. :try_end_e2} :catch_d7

    .line 1768
    :goto_e2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1771
    :goto_f6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method

.method public final initFromGlobalXml()V
    .registers 3

    .line 1777
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    .line 1778
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessConstraintsFromConfigXml()V

    .line 1779
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    .line 1780
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 1781
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientLightSensor:Lcom/android/server/display/config/SensorData;

    .line 1782
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mProximitySensor:Lcom/android/server/display/config/SensorData;

    .line 1783
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mTempSensor:Lcom/android/server/display/config/SensorData;

    .line 1784
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1785
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateData:Lcom/android/server/display/config/RefreshRateData;

    .line 1786
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholdsFromXml()V

    .line 1787
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessConfigsFromConfigXml()V

    .line 1788
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessAvailableFromConfigXml()V

    .line 1790
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 1791
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 1793
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateSetting(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1794
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    .line 1795
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 1797
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->zuiLoadHighBrightnessModeData()V

    .line 1799
    const-string v0, "<config.xml>"

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    return-void
.end method

.method public isAutoBrightnessAvailable()Z
    .registers 1

    .line 1308
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return p0
.end method

.method public isEvenDimmerAvailable()Z
    .registers 1

    .line 1571
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isVrrSupportEnabled()Z
    .registers 1

    .line 1585
    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    return p0
.end method

.method public final loadAmbientHorizonFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 2817
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonLong()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 2819
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonLong:I

    .line 2821
    :cond_c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAmbientLightHorizonShort()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 2823
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientHorizonShort:I

    :cond_18
    return-void
.end method

.method public final loadAutoBrightnessAvailableFromConfigXml()V
    .registers 3

    .line 2422
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessAvailable:Z

    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2366
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2371
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    goto :goto_25

    .line 2367
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e001c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    :goto_25
    return-void
.end method

.method public final loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2398
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2402
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getBrighteningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    goto :goto_19

    .line 2399
    :cond_15
    :goto_15
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessBrighteningLightDebounceIdle:J

    :goto_19
    return-void
.end method

.method public final loadAutoBrightnessConfigValues(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 2349
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getAutoBrightness()Lcom/android/server/display/config/AutoBrightness;

    move-result-object p1

    .line 2350
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2351
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2353
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessBrighteningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2354
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V

    .line 2355
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    .line 2356
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v3

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    .line 2357
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V

    return-void
.end method

.method public final loadAutoBrightnessConfigsFromConfigXml()V
    .registers 6

    .line 2738
    new-instance v0, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    const/4 v3, 0x0

    .line 2739
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightToBrightnessSpline()Landroid/util/Spline;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/display/config/DisplayBrightnessMappingConfig;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/AutoBrightness;Landroid/util/Spline;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDisplayBrightnessMapping:Lcom/android/server/display/config/DisplayBrightnessMappingConfig;

    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounce(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2381
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2386
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    goto :goto_25

    .line 2382
    :cond_15
    :goto_15
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e001d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    :goto_25
    return-void
.end method

.method public final loadAutoBrightnessDarkeningLightDebounceIdle(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    if-eqz p1, :cond_15

    .line 2413
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_15

    .line 2417
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getDarkeningLightDebounceIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    goto :goto_19

    .line 2414
    :cond_15
    :goto_15
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounce:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAutoBrightnessDarkeningLightDebounceIdle:J

    :goto_19
    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeMode(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    if-eqz p1, :cond_12

    .line 2942
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessCapForWearBedtimeMode()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 2944
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    goto :goto_12

    .line 2946
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessCapForWearBedtimeModeFromConfigXml()V

    :cond_12
    :goto_12
    return-void
.end method

.method public final loadBrightnessCapForWearBedtimeModeFromConfigXml()V
    .registers 3

    .line 2952
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2953
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0129

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2952
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessCapForWearBedtimeMode:F

    return-void
.end method

.method public final loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2747
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2749
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2751
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadDisplayBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2753
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    .line 2755
    invoke-static {p1, v0}, Lcom/android/server/display/config/HysteresisLevels;->loadAmbientBrightnessIdleConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/HysteresisLevels;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mAmbientBrightnessIdleHysteresis:Lcom/android/server/display/config/HysteresisLevels;

    return-void
.end method

.method public final loadBrightnessChangeThresholdsFromXml()V
    .registers 2

    const/4 v0, 0x0

    .line 2743
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessChangeThresholds(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessConstraintsFromConfigXml()V
    .registers 5

    .line 1917
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 1919
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/high16 v2, -0x40000000    # -2.0f

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_2a

    cmpl-float v2, v1, v2

    if-nez v2, :cond_25

    goto :goto_2a

    .line 1929
    :cond_25
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 1930
    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    goto :goto_50

    .line 1922
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1923
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1922
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMinimum:F

    .line 1925
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1926
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e012e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1925
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    :goto_50
    return-void
.end method

.method public final loadBrightnessDefaultFromConfigXml()V
    .registers 3

    .line 1904
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    const/high16 v1, -0x40000000    # -2.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_27

    .line 1907
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 1908
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e012d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1907
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_29

    .line 1911
    :cond_27
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    :goto_29
    return-void
.end method

.method public final loadBrightnessDefaultFromDdcXml(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    if-eqz p1, :cond_12

    .line 1892
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessDefault()Ljava/math/BigDecimal;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 1894
    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessDefault:F

    goto :goto_12

    .line 1896
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessDefaultFromConfigXml()V

    :cond_12
    :goto_12
    return-void
.end method

.method public final loadBrightnessMap(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 10

    .line 1935
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessMap()Lcom/android/server/display/config/NitsMap;

    move-result-object p1

    if-nez p1, :cond_a

    .line 1938
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessMapFromConfigXml()V

    return-void

    .line 1943
    :cond_a
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getPoint()Ljava/util/List;

    move-result-object v0

    .line 1944
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1946
    new-array v2, v1, [F

    .line 1947
    new-array v1, v1, [F

    .line 1949
    invoke-virtual {p1}, Lcom/android/server/display/config/NitsMap;->getInterpolation()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->convertInterpolationType(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mInterpolationType:I

    .line 1951
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

    .line 1952
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v2, v0

    .line 1953
    invoke-virtual {v3}, Lcom/android/server/display/config/Point;->getValue()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v1, v0

    if-lez v0, :cond_9b

    .line 1955
    aget v4, v2, v0

    add-int/lit8 v5, v0, -0x1

    aget v6, v2, v5

    cmpg-float v4, v4, v6

    const-string v6, " < "

    const-string v7, "DisplayDeviceConfig"

    if-gez v4, :cond_75

    .line 1956
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

    .line 1961
    :cond_75
    aget v4, v1, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_9b

    .line 1962
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

    .line 1970
    :cond_9e
    iput-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1971
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1972
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void
.end method

.method public final loadBrightnessMapFromConfigXml()V
    .registers 7

    .line 2428
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107010a

    .line 2429
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v1

    const v2, 0x1070109

    .line 2431
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 2433
    array-length v2, v0

    new-array v3, v2, [F

    const/4 v4, 0x0

    .line 2435
    :goto_1c
    array-length v5, v0

    if-ge v4, v5, :cond_2a

    .line 2436
    aget v5, v0, v4

    invoke-static {v5}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v5

    aput v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_2a
    if-eqz v2, :cond_38

    .line 2442
    array-length v0, v1

    if-nez v0, :cond_30

    goto :goto_38

    .line 2447
    :cond_30
    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 2448
    iput-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 2449
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->constrainNitsAndBacklightArrays()V

    return-void

    .line 2443
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->setSimpleMappingStrategyValues()V

    return-void
.end method

.method public final loadBrightnessRamps(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 2655
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V

    .line 2656
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V

    return-void
.end method

.method public final loadBrightnessRampsFromConfigXml()V
    .registers 3

    .line 2727
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2728
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2727
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2729
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    .line 2730
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 2729
    invoke-static {v0}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessIntToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    .line 2733
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    iput v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2734
    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    return-void
.end method

.method public final loadBrightnessRampsIdle(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2695
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecreaseIdle()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2696
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncreaseIdle()Ljava/math/BigDecimal;

    move-result-object v1

    if-eqz v0, :cond_19

    if-eqz v1, :cond_19

    .line 2699
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2700
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    goto :goto_2c

    :cond_19
    if-nez v0, :cond_1d

    if-eqz v1, :cond_24

    .line 2703
    :cond_1d
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display idle brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    :cond_24
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecreaseIdle:F

    .line 2709
    iget v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncreaseIdle:F

    .line 2712
    :goto_2c
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 2714
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    goto :goto_3e

    .line 2716
    :cond_3a
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxIdleMillis:J

    .line 2718
    :goto_3e
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxIdleMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_4c

    .line 2720
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    goto :goto_50

    .line 2722
    :cond_4c
    iget-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxIdleMillis:J

    :goto_50
    return-void
.end method

.method public final loadBrightnessRampsInteractive(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 6

    .line 2662
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastDecrease()Ljava/math/BigDecimal;

    move-result-object v0

    .line 2663
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampFastIncrease()Ljava/math/BigDecimal;

    move-result-object v1

    .line 2664
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowDecrease()Ljava/math/BigDecimal;

    move-result-object v2

    .line 2665
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampSlowIncrease()Ljava/math/BigDecimal;

    move-result-object v3

    if-eqz v0, :cond_31

    if-eqz v1, :cond_31

    if-eqz v2, :cond_31

    if-eqz v3, :cond_31

    .line 2669
    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastDecrease:F

    .line 2670
    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampFastIncrease:F

    .line 2671
    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowDecrease:F

    .line 2672
    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampSlowIncrease:F

    goto :goto_43

    :cond_31
    if-nez v0, :cond_39

    if-nez v1, :cond_39

    if-nez v2, :cond_39

    if-eqz v3, :cond_40

    .line 2676
    :cond_39
    const-string v0, "DisplayDeviceConfig"

    const-string v1, "Per display brightness ramp values ignored because not all values are present in display device config"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    :cond_40
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->loadBrightnessRampsFromConfigXml()V

    .line 2682
    :goto_43
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampIncreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 2684
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampIncreaseMaxMillis:J

    .line 2686
    :cond_50
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenBrightnessRampDecreaseMaxMillis()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz p1, :cond_5d

    .line 2688
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessRampDecreaseMaxMillis:J

    :cond_5d
    return-void
.end method

.method public final loadDensityMapping(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 8

    .line 1867
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 1871
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getDensityMapping()Lcom/android/server/display/config/DensityMapping;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/DensityMapping;->getDensity()Ljava/util/List;

    move-result-object p1

    .line 1874
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/display/DensityMapping$Entry;

    const/4 v1, 0x0

    .line 1875
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_44

    .line 1876
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/Density;

    .line 1877
    new-instance v3, Lcom/android/server/display/DensityMapping$Entry;

    .line 1878
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getWidth()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    .line 1879
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getHeight()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 1880
    invoke-virtual {v2}, Lcom/android/server/display/config/Density;->getDensity()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/server/display/DensityMapping$Entry;-><init>(III)V

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1882
    :cond_44
    invoke-static {v0}, Lcom/android/server/display/DensityMapping;->createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDensityMapping:Lcom/android/server/display/DensityMapping;

    return-void
.end method

.method public final loadEnableAutoBrightness(Lcom/android/server/display/config/AutoBrightness;)V
    .registers 4

    const/4 v0, 0x1

    .line 2908
    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    if-eqz p1, :cond_b

    .line 2910
    invoke-virtual {p1}, Lcom/android/server/display/config/AutoBrightness;->getEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDdcAutoBrightnessAvailable:Z

    .line 2913
    :cond_b
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x111003f

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

.method public final loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 8

    .line 2563
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_fb

    .line 2565
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    .line 2566
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 2567
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumLux_all()Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumLux:F

    .line 2568
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2569
    iget v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    cmpl-float v1, v0, v1

    if-gez v1, :cond_d6

    .line 2574
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    .line 2575
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v0

    iput v0, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    .line 2576
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTiming_all()Lcom/android/server/display/config/HbmTiming;

    move-result-object v0

    .line 2577
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeWindowSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeWindowMillis:J

    .line 2578
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMaxSecs_all()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMaxMillis:J

    .line 2579
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Lcom/android/server/display/config/HbmTiming;->getTimeMinSecs_all()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    mul-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->timeMinMillis:J

    .line 2580
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getAllowInLowPowerMode_all()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->allowInLowPowerMode:Z

    .line 2581
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getRefreshRate_all()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v0

    if-eqz v0, :cond_89

    .line 2583
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    .line 2584
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    .line 2585
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateLimitations:Ljava/util/List;

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1, v0}, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;-><init>(IFF)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2588
    :cond_89
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getMinimumHdrPercentOfScreen_all()Ljava/math/BigDecimal;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz v0, :cond_cb

    .line 2590
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2591
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-gtz v2, :cond_a8

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_cf

    .line 2593
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid minimum HDR percent of screen: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v2, v2, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2594
    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2593
    const-string v2, "DisplayDeviceConfig"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    goto :goto_cf

    .line 2598
    :cond_cb
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iput v1, v0, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->minimumHdrPercentOfScreen:F

    .line 2601
    :cond_cf
    :goto_cf
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

    goto :goto_fb

    .line 2570
    :cond_d6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBM transition point invalid. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;->transitionPoint:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " is not less than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklightMaximum:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_fb
    :goto_fb
    return-void
.end method

.method public final loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-nez p1, :cond_12

    .line 2224
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e009e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    goto :goto_1c

    .line 2228
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultHighBlockingZoneRefreshRate:I

    :goto_1c
    return-void
.end method

.method public final loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 6

    if-nez p1, :cond_59

    .line 2304
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10700a5

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2306
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10700a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_32

    if-eqz v0, :cond_32

    .line 2308
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_32

    .line 2321
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2323
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    goto/16 :goto_a9

    .line 2312
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display high brightness threshold array and ambient brightness threshold array have different length: highDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", highAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2317
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2326
    :cond_59
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2327
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2328
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2329
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_6e
    if-ge v1, v0, :cond_a9

    .line 2332
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_88

    .line 2335
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_94

    .line 2337
    :cond_88
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2338
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 2339
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2342
    :goto_94
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 2343
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_a9
    :goto_a9
    return-void
.end method

.method public final loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 2211
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2213
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2214
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadIdleScreenRefreshRateTimeoutConfigs(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 3

    .line 2828
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mFlags:Lcom/android/server/display/feature/DisplayManagerFlags;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenRefreshRateTimeoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_25

    if-eqz p1, :cond_25

    .line 2829
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 2831
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getIdleScreenRefreshRateTimeout()Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;

    move-result-object v0

    .line 2830
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V

    .line 2833
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

.method public final loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-nez p1, :cond_12

    .line 2239
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e0067

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    goto :goto_1c

    .line 2243
    :cond_12
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mDefaultLowBlockingZoneRefreshRate:I

    :goto_1c
    return-void
.end method

.method public final loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 6

    if-nez p1, :cond_59

    .line 2253
    iget-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x1070030

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 2255
    iget-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-eqz p1, :cond_32

    if-eqz v0, :cond_32

    .line 2257
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_32

    .line 2270
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2272
    invoke-static {v0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    goto/16 :goto_a9

    .line 2261
    :cond_32
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "display low brightness threshold array and ambient brightness threshold array have different length: lowDisplayBrightnessThresholdsInt="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2264
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", lowAmbientBrightnessThresholdsInt="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2266
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2275
    :cond_59
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getBlockingZoneThreshold()Lcom/android/server/display/config/BlockingZoneThreshold;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneThreshold;->getDisplayBrightnessPoint()Ljava/util/List;

    move-result-object p1

    .line 2276
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 2277
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2278
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    const/4 v1, 0x0

    :goto_6e
    if-ge v1, v0, :cond_a9

    .line 2281
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v2}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getNits()Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_88

    .line 2284
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    aput v2, v3, v1

    goto :goto_94

    .line 2286
    :cond_88
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBacklightFromNits(F)F

    move-result v2

    .line 2287
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowDisplayBrightnessThresholds:[F

    .line 2288
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v2

    aput v2, v3, v1

    .line 2291
    :goto_94
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 2292
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/DisplayBrightnessPoint;

    invoke-virtual {v3}, Lcom/android/server/display/config/DisplayBrightnessPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_a9
    :goto_a9
    return-void
.end method

.method public final loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V
    .registers 3

    if-eqz p1, :cond_8

    .line 2199
    invoke-virtual {p1}, Lcom/android/server/display/config/BlockingZoneConfig;->getRefreshRateThermalThrottlingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowBlockingZoneThermalMapId:Ljava/lang/String;

    .line 2201
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBlockingZoneDefaultRefreshRate(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2202
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerBrightnessThresholds(Lcom/android/server/display/config/BlockingZoneConfig;)V

    return-void
.end method

.method public final loadLuxThrottling(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 13

    .line 2606
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getLuxThrottling()Lcom/android/server/display/config/LuxThrottling;

    move-result-object v0

    if-eqz v0, :cond_101

    .line 2608
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getHighBrightnessMode()Lcom/android/server/display/config/HighBrightnessMode;

    move-result-object p1

    if-eqz p1, :cond_15

    .line 2609
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getTransitionPoint_all()Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->floatValue()F

    move-result p1

    goto :goto_17

    :cond_15
    const/high16 p1, 0x3f800000    # 1.0f

    .line 2611
    :goto_17
    invoke-virtual {v0}, Lcom/android/server/display/config/LuxThrottling;->getBrightnessLimitMap()Ljava/util/List;

    move-result-object v0

    .line 2612
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

    .line 2613
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getType()Lcom/android/server/display/config/PredefinedBrightnessLimitNames;

    move-result-object v2

    .line 2614
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;->-$$Nest$smconvert(Lcom/android/server/display/config/PredefinedBrightnessLimitNames;)Lcom/android/server/display/DisplayDeviceConfig$BrightnessLimitMapType;

    move-result-object v3

    .line 2615
    const-string v4, "DisplayDeviceConfig"

    if-nez v3, :cond_4c

    .line 2616
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid NBM config: unsupported map type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2619
    :cond_4c
    iget-object v5, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 2620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid NBM config: duplicate map type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 2623
    :cond_69
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2625
    invoke-virtual {v1}, Lcom/android/server/display/config/BrightnessLimitMap;->getMap()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/config/NonNegativeFloatToFloatMap;->getPoint()Ljava/util/List;

    move-result-object v1

    .line 2626
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;

    .line 2627
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getFirst()Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    .line 2628
    invoke-virtual {v6}, Lcom/android/server/display/config/NonNegativeFloatToFloatPoint;->getSecond()Ljava/math/BigDecimal;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigDecimal;->floatValue()F

    move-result v6

    cmpl-float v8, v6, p1

    .line 2629
    const-string v9, "; lux="

    if-lez v8, :cond_bf

    .line 2630
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid NBM config: maxBrightness is greater than hbm.transitionPoint. type="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, "; maxBrightness="

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7a

    .line 2637
    :cond_bf
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e4

    .line 2638
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

    .line 2643
    :cond_e4
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    .line 2644
    invoke-virtual {p0, v6}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessFromBacklight(F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    .line 2643
    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7a

    .line 2646
    :cond_f4
    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 2647
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1f

    :cond_101
    return-void
.end method

.method public final loadName(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 1863
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mName:Ljava/lang/String;

    return-void
.end method

.method public final loadPowerThrottlingConfigData(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2148
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getPowerThrottlingConfig()Lcom/android/server/display/config/PowerThrottlingConfig;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 2152
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    .line 2155
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getBrightnessLowestCapAllowed()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    .line 2156
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPollingWindowMillis()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    .line 2157
    new-instance v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    invoke-direct {v1, v0, p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;-><init>(FI)V

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-void
.end method

.method public final loadPowerThrottlingMaps(Lcom/android/server/display/config/PowerThrottlingConfig;)Z
    .registers 8

    .line 2109
    invoke-virtual {p1}, Lcom/android/server/display/config/PowerThrottlingConfig;->getPowerThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_98

    .line 2110
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_98

    .line 2115
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

    .line 2116
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getPowerThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2118
    new-instance v2, Ljava/util/ArrayList;

    .line 2119
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/PowerThrottlingPoint;

    .line 2123
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2124
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_12

    .line 2129
    :cond_46
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 2130
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    .line 2131
    invoke-virtual {v3}, Lcom/android/server/display/config/PowerThrottlingPoint;->getPowerQuotaMilliWatts()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2129
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 2135
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    const-string v0, "default"

    goto :goto_68

    :cond_64
    invoke-virtual {v0}, Lcom/android/server/display/config/PowerThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2136
    :goto_68
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2140
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mPowerThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2141
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v2

    .line 2140
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2137
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

    .line 2111
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

    .line 2556
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getQuirks()Lcom/android/server/display/config/DisplayQuirks;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 2558
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

    .line 2163
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object p1

    :goto_9
    if-nez p1, :cond_d

    move-object v1, v0

    goto :goto_11

    .line 2166
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v1

    :goto_11
    if-nez p1, :cond_14

    goto :goto_18

    .line 2169
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getHigherBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object v0

    .line 2170
    :goto_18
    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->loadLowerRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2171
    invoke-virtual {p0, v0}, Lcom/android/server/display/DisplayDeviceConfig;->loadHigherRefreshRateBlockingZones(Lcom/android/server/display/config/BlockingZoneConfig;)V

    .line 2172
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V

    return-void
.end method

.method public final loadRefreshRateZoneProfiles(Lcom/android/server/display/config/RefreshRateConfigs;)V
    .registers 7

    if-eqz p1, :cond_44

    .line 2180
    invoke-virtual {p1}, Lcom/android/server/display/config/RefreshRateConfigs;->getRefreshRateZoneProfiles()Lcom/android/server/display/config/RefreshRateZoneProfiles;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_44

    .line 2184
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

    .line 2185
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v1

    .line 2186
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateZoneProfiles:Ljava/util/Map;

    .line 2187
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateZone;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2189
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    invoke-direct {v3, v4, v1}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2186
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_44
    :goto_44
    return-void
.end method

.method public final loadScreenOffBrightnessSensorValueToLuxFromDdc(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 5

    .line 2919
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensorValueToLux()Lcom/android/server/display/config/IntegerArray;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    .line 2924
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/display/config/IntegerArray;->getItem()Ljava/util/List;

    move-result-object p1

    .line 2925
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    const/4 v0, 0x0

    .line 2926
    :goto_14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    .line 2927
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
    return-void
.end method

.method public final loadSdrHdrRatioMap(Lcom/android/server/display/config/HighBrightnessMode;)Landroid/util/Spline;
    .registers 9

    .line 1976
    invoke-virtual {p1}, Lcom/android/server/display/config/HighBrightnessMode;->getSdrHdrRatioMap_all()Lcom/android/server/display/config/SdrHdrRatioMap;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return-object p1

    .line 1982
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/config/SdrHdrRatioMap;->getPoint()Ljava/util/List;

    move-result-object p0

    .line 1983
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    return-object p1

    .line 1988
    :cond_13
    new-array v1, v0, [F

    .line 1989
    new-array v0, v0, [F

    .line 1992
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/SdrHdrRatioPoint;

    .line 1993
    invoke-virtual {v3}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getSdrNits()Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    aput v4, v1, v2

    if-lez v2, :cond_60

    add-int/lit8 v5, v2, -0x1

    .line 1995
    aget v6, v1, v5

    cmpg-float v4, v4, v6

    if-gez v4, :cond_60

    .line 1996
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "sdrHdrRatioMap must be non-decreasing, ignoring rest  of configuration. nits: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " < "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, v1, v5

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DisplayDeviceConfig"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    .line 2002
    :cond_60
    invoke-virtual {v3}, Lcom/android/server/display/config/SdrHdrRatioPoint;->getHdrRatio()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    aput v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2006
    :cond_6d
    invoke-static {v1, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object p0

    return-object p0
.end method

.method public final loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 8

    .line 2020
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getBrightnessThrottlingMap()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_97

    .line 2021
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_97

    .line 2026
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

    .line 2027
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getBrightnessThrottlingPoint()Ljava/util/List;

    move-result-object v1

    .line 2029
    new-instance v2, Ljava/util/ArrayList;

    .line 2030
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 2033
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/config/BrightnessThrottlingPoint;

    .line 2034
    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v4

    .line 2035
    invoke-virtual {p0, v4}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_12

    .line 2040
    :cond_46
    new-instance v5, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 2041
    invoke-static {v4}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/display/config/BrightnessThrottlingPoint;->getBrightness()Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-direct {v5, v4, v3}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V

    .line 2040
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f

    .line 2045
    :cond_5b
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_64

    const-string v0, "default"

    goto :goto_68

    .line 2046
    :cond_64
    invoke-virtual {v0}, Lcom/android/server/display/config/BrightnessThrottlingMap;->getId()Ljava/lang/String;

    move-result-object v0

    .line 2047
    :goto_68
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7a

    .line 2051
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mThermalBrightnessThrottlingDataMapByThrottlingId:Ljava/util/Map;

    .line 2052
    invoke-static {v2}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->create(Ljava/util/List;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v2

    .line 2051
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 2048
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

    .line 2022
    :cond_97
    :goto_97
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No brightness throttling map found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V
    .registers 10

    .line 2058
    invoke-virtual {p1}, Lcom/android/server/display/config/ThermalThrottling;->getRefreshRateThrottlingMap()Ljava/util/List;

    move-result-object p1

    .line 2059
    const-string v0, "DisplayDeviceConfig"

    if-eqz p1, :cond_11f

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    goto/16 :goto_11f

    .line 2064
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

    .line 2065
    invoke-virtual {v1}, Lcom/android/server/display/config/RefreshRateThrottlingMap;->getRefreshRateThrottlingPoint()Ljava/util/List;

    move-result-object v2

    .line 2066
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

    .line 2068
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto/16 :goto_108

    .line 2073
    :cond_3b
    iget-object v3, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2074
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: map already exists, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .line 2078
    :cond_58
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 2079
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/config/RefreshRateThrottlingPoint;

    .line 2080
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getThermalStatus()Lcom/android/server/display/config/ThermalStatus;

    move-result-object v5

    .line 2081
    invoke-virtual {p0, v5}, Lcom/android/server/display/DisplayDeviceConfig;->thermalStatusIsValid(Lcom/android/server/display/config/ThermalStatus;)Z

    move-result v6

    if-nez v6, :cond_98

    .line 2082
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RefreshRateThrottling: Invalid thermalStatus="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2083
    invoke-virtual {v5}, Lcom/android/server/display/config/ThermalStatus;->getRawName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",mapId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2082
    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_61

    .line 2087
    :cond_98
    invoke-static {v5}, Lcom/android/server/display/DisplayDeviceConfig;->convertThermalStatus(Lcom/android/server/display/config/ThermalStatus;)I

    move-result v6

    .line 2088
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 2089
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

    .line 2094
    :cond_c3
    new-instance v5, Landroid/view/SurfaceControl$RefreshRateRange;

    .line 2095
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    .line 2096
    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateThrottlingPoint;->getRefreshRateRange()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v4

    invoke-direct {v5, v7, v4}, Landroid/view/SurfaceControl$RefreshRateRange;-><init>(FF)V

    .line 2094
    invoke-virtual {v3, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_61

    .line 2099
    :cond_e5
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_101

    .line 2100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RefreshRateThrottling: no valid throttling points found for map, mapId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 2104
    :cond_101
    iget-object v2, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRefreshRateThrottlingMap:Ljava/util/Map;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_14

    .line 2070
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

    .line 2060
    :cond_11f
    :goto_11f
    const-string p0, "RefreshRateThrottling: map not found"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final loadThermalThrottlingConfig(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 2

    .line 2010
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getThermalThrottling()Lcom/android/server/display/config/ThermalThrottling;

    move-result-object p1

    if-nez p1, :cond_e

    .line 2012
    const-string p0, "DisplayDeviceConfig"

    const-string p1, "No thermal throttling config found"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2015
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalBrightnessThrottlingMaps(Lcom/android/server/display/config/ThermalThrottling;)V

    .line 2016
    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayDeviceConfig;->loadThermalRefreshRateThrottlingMap(Lcom/android/server/display/config/ThermalThrottling;)V

    return-void
.end method

.method public final loadUsiVersion(Lcom/android/server/display/config/DisplayConfiguration;)V
    .registers 4

    .line 2932
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getUsiVersion()Lcom/android/server/display/config/UsiVersion;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 2934
    new-instance v0, Landroid/hardware/input/HostUsiVersion;

    .line 2935
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMajorVersion()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 2936
    invoke-virtual {p1}, Lcom/android/server/display/config/UsiVersion;->getMinorVersion()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/hardware/input/HostUsiVersion;-><init>(II)V

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 2937
    :goto_1d
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHostUsiVersion:Landroid/hardware/input/HostUsiVersion;

    return-void
.end method

.method public final rawBacklightToNits(IF)F
    .registers 6

    .line 2520
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

    .line 2456
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 2457
    iput-object v0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    const/4 v0, 0x2

    .line 2458
    new-array v0, v0, [F

    fill-array-data v0, :array_18

    .line 2459
    invoke-static {v0, v0}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBrightnessToBacklightSpline:Landroid/util/Spline;

    .line 2461
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

    .line 2763
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

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceConfig{mLoadedFrom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLoadedFrom:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mBacklight:[F

    .line 1593
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mNits:[F

    .line 1594
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawBacklight:[F

    .line 1595
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRawNits="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mRawNits:[F

    .line 1596
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

    .line 1598
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

    const-string v1, ", mQuirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mQuirks:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIsHighBrightnessModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mIsHighBrightnessModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmLuxThrottlingData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLuxThrottlingData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mHbmData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHbmData:Lcom/android/server/display/DisplayDeviceConfig$HighBrightnessModeData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSdrToHdrRatioSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mSdrToHdrRatioSpline:Landroid/util/Spline;

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

    .line 1644
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

    .line 1667
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mLowAmbientBrightnessThresholds:[F

    .line 1669
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighDisplayBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighDisplayBrightnessThresholds:[F

    .line 1671
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mHighAmbientBrightnessThresholds= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mHighAmbientBrightnessThresholds:[F

    .line 1673
    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmScreenOffBrightnessSensorValueToLux= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mScreenOffBrightnessSensorValueToLux:[I

    .line 1675
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

    .line 1682
    iget-object v1, p0, Lcom/android/server/display/DisplayDeviceConfig;->mEvenDimmerBrightnessData:Lcom/android/server/display/config/EvenDimmerBrightnessData;

    if-eqz v1, :cond_2c4

    .line 1683
    invoke-virtual {v1}, Lcom/android/server/display/config/EvenDimmerBrightnessData;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2c7

    :cond_2c4
    const-string/jumbo v1, "null"

    :goto_2c7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nmVrrSupported= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/display/DisplayDeviceConfig;->mVrrSupportEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "\n}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final validateIdleScreenRefreshRateTimeoutConfig(Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;)V
    .registers 4

    .line 2840
    invoke-virtual {p1}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeout;->getLuxThresholds()Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholds;

    move-result-object p0

    if-eqz p0, :cond_41

    .line 2846
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

    .line 2847
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_39

    .line 2853
    invoke-virtual {v0}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    if-ltz p1, :cond_31

    move p1, v1

    goto :goto_f

    .line 2855
    :cond_31
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "The timeout value cannot be negative in idle screen refresh rate timeout config"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 2849
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

    .line 1804
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "system/etc/display_hdr.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1805
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, ", skipping"

    const-string v3, "Display configuration is not a file: "

    const-string v4, "DisplayDeviceConfig"

    if-nez v1, :cond_2a

    .line 1807
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1811
    :cond_2a
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_46

    .line 1812
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1815
    :cond_46
    :try_start_46
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_50} :catch_65
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_46 .. :try_end_50} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_46 .. :try_end_50} :catch_65

    .line 1816
    :try_start_50
    invoke-static {v1}, Lcom/android/server/display/config/XmlParser;->read(Ljava/io/InputStream;)Lcom/android/server/display/config/DisplayConfiguration;

    move-result-object v2

    if-eqz v2, :cond_5c

    .line 1818
    invoke-virtual {p0, v2}, Lcom/android/server/display/DisplayDeviceConfig;->loadHighBrightnessModeData(Lcom/android/server/display/config/DisplayConfiguration;)V

    goto :goto_61

    :catchall_5a
    move-exception p0

    goto :goto_67

    .line 1820
    :cond_5c
    const-string p0, "DisplayDeviceConfig file is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_5a

    .line 1822
    :goto_61
    :try_start_61
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_64
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_65
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_61 .. :try_end_64} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_61 .. :try_end_64} :catch_65

    goto :goto_84

    :catch_65
    move-exception p0

    goto :goto_70

    .line 1815
    :goto_67
    :try_start_67
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_6b

    goto :goto_6f

    :catchall_6b
    move-exception v1

    :try_start_6c
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6f
    throw p0
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_70} :catch_65
    .catch Ljavax/xml/datatype/DatatypeConfigurationException; {:try_start_6c .. :try_end_70} :catch_65
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6c .. :try_end_70} :catch_65

    .line 1823
    :goto_70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered an error while reading/parsing display config file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_84
    return-void
.end method
