.class public final Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;
.super Lcom/google/firebase/perf/config/ConfigurationFlag;
.source "ConfigurationConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/config/ConfigurationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SessionsMemoryCaptureFrequencyForegroundMs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/firebase/perf/config/ConfigurationFlag<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/google/firebase/perf/config/ConfigurationFlag;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;
    .locals 2

    const-class v0, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;

    monitor-enter v0

    .line 284
    :try_start_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;

    if-nez v1, :cond_0

    .line 285
    new-instance v1, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;

    invoke-direct {v1}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;-><init>()V

    sput-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;

    .line 287
    :cond_0
    sget-object v1, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->instance:Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method protected getDefault()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x64

    .line 294
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getDefault()Ljava/lang/Object;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/google/firebase/perf/config/ConfigurationConstants$SessionsMemoryCaptureFrequencyForegroundMs;->getDefault()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceCacheFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.perf.SessionsMemoryCaptureFrequencyForegroundMs"

    return-object v0
.end method

.method protected getMetadataFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "sessions_memory_capture_frequency_fg_ms"

    return-object v0
.end method

.method protected getRemoteConfigFlag()Ljava/lang/String;
    .locals 1

    const-string v0, "fpr_session_gauge_memory_capture_frequency_fg_ms"

    return-object v0
.end method
