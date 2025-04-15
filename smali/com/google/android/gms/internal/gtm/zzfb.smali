.class public final Lcom/google/android/gms/internal/gtm/zzfb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private zza:D

.field private zzb:J

.field private final zzc:Ljava/lang/Object;

.field private final zzd:Ljava/lang/String;

.field private final zze:Lcom/google/android/gms/common/util/Clock;


# direct methods
.method public constructor <init>(IJLjava/lang/String;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzc:Ljava/lang/Object;

    const-wide/high16 p1, 0x404e000000000000L    # 60.0

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zza:D

    const-string p1, "tracking"

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zze:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 12

    const-string v0, "Excessive "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzc:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zze:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zza:D

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    cmpg-double v8, v4, v6

    if-gez v8, :cond_0

    iget-wide v8, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzb:J

    sub-long v8, v2, v8

    long-to-double v8, v8

    const-wide v10, 0x409f400000000000L    # 2000.0

    div-double/2addr v8, v10

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-lez v10, :cond_0

    add-double/2addr v4, v8

    .line 2
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zza:D

    :cond_0
    iput-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzb:J

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v4, v2

    if-ltz v2, :cond_1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zza:D

    .line 3
    monitor-exit v1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzfb;->zzd:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    .line 4
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " detected; call ignored."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfc;->zze(Ljava/lang/String;)V

    .line 5
    monitor-exit v1

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
