.class public final Lcom/google/android/gms/internal/gtm/zzbx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static volatile zza:Lcom/google/android/gms/internal/gtm/zzbx;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/common/util/Clock;

.field private final zze:Lcom/google/android/gms/internal/gtm/zzcv;

.field private final zzf:Lcom/google/android/gms/internal/gtm/zzfd;

.field private final zzg:Lcom/google/android/gms/analytics/zzr;

.field private final zzh:Lcom/google/android/gms/internal/gtm/zzbs;

.field private final zzi:Lcom/google/android/gms/internal/gtm/zzda;

.field private final zzj:Lcom/google/android/gms/internal/gtm/zzfv;

.field private final zzk:Lcom/google/android/gms/internal/gtm/zzfj;

.field private final zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzm:Lcom/google/android/gms/internal/gtm/zzcp;

.field private final zzn:Lcom/google/android/gms/internal/gtm/zzbk;

.field private final zzo:Lcom/google/android/gms/internal/gtm/zzch;

.field private final zzp:Lcom/google/android/gms/internal/gtm/zzcz;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzby;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzby;->zza()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzby;->zzb()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzb:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzc:Landroid/content/Context;

    .line 3
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzd:Lcom/google/android/gms/common/util/Clock;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzcv;

    .line 4
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzcv;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zze:Lcom/google/android/gms/internal/gtm/zzcv;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfd;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzfd;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzf:Lcom/google/android/gms/internal/gtm/zzfd;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzbv;->zza:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Google Analytics "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzL(Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfj;

    .line 9
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzfj;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzk:Lcom/google/android/gms/internal/gtm/zzfj;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfv;

    .line 11
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzfv;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzj:Lcom/google/android/gms/internal/gtm/zzfv;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbs;

    .line 13
    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbs;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzby;)V

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzcp;

    .line 14
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzcp;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbk;

    .line 15
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/gtm/zzbk;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzch;

    .line 16
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/gtm/zzch;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzcz;

    .line 17
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzcz;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/analytics/zzr;->zzb(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbw;

    invoke-direct {v5, p0}, Lcom/google/android/gms/internal/gtm/zzbw;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 19
    invoke-virtual {v0, v5}, Lcom/google/android/gms/analytics/zzr;->zzj(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzg:Lcom/google/android/gms/analytics/zzr;

    .line 20
    new-instance v0, Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzm:Lcom/google/android/gms/internal/gtm/zzcp;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzn:Lcom/google/android/gms/internal/gtm/zzbk;

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v3, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzo:Lcom/google/android/gms/internal/gtm/zzch;

    .line 24
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v4, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzp:Lcom/google/android/gms/internal/gtm/zzcz;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzda;

    .line 25
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/gtm/zzda;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzi:Lcom/google/android/gms/internal/gtm/zzda;

    .line 27
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzh:Lcom/google/android/gms/internal/gtm/zzbs;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzg()V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zzm()V

    return-void
.end method

.method public static zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbx;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbx;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzbx;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzby;

    .line 4
    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/gtm/zzby;-><init>(Landroid/content/Context;)V

    new-instance p0, Lcom/google/android/gms/internal/gtm/zzbx;

    .line 5
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/gtm/zzbx;-><init>(Lcom/google/android/gms/internal/gtm/zzby;)V

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzbx;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 6
    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzf()V

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzew;->zzQ:Lcom/google/android/gms/internal/gtm/zzev;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzev;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, v4, v1

    if-lez v3, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object p0

    const-string v3, "Slow initialization (ms)"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v3, v4, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzS(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbx;->zza:Lcom/google/android/gms/internal/gtm/zzbx;

    return-object p0
.end method

.method private static final zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V
    .locals 1

    const-string v0, "Analytics service not created/initialized"

    .line 1
    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzX()Z

    move-result p0

    const-string v0, "Analytics service not initialized"

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzb()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzc:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzj()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzl:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/analytics/zzr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzg:Lcom/google/android/gms/analytics/zzr;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzg:Lcom/google/android/gms/analytics/zzr;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/gtm/zzbk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzn:Lcom/google/android/gms/internal/gtm/zzbk;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzn:Lcom/google/android/gms/internal/gtm/zzbk;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/gtm/zzbs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzh:Lcom/google/android/gms/internal/gtm/zzbs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzh:Lcom/google/android/gms/internal/gtm/zzbs;

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/gtm/zzch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzo:Lcom/google/android/gms/internal/gtm/zzch;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzo:Lcom/google/android/gms/internal/gtm/zzch;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/gtm/zzcp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzm:Lcom/google/android/gms/internal/gtm/zzcp;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzm:Lcom/google/android/gms/internal/gtm/zzcp;

    return-object v0
.end method

.method public final zzj()Lcom/google/android/gms/internal/gtm/zzcv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zze:Lcom/google/android/gms/internal/gtm/zzcv;

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/gtm/zzcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzp:Lcom/google/android/gms/internal/gtm/zzcz;

    return-object v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/gtm/zzda;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzi:Lcom/google/android/gms/internal/gtm/zzda;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzi:Lcom/google/android/gms/internal/gtm/zzda;

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/gtm/zzfd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzf:Lcom/google/android/gms/internal/gtm/zzfd;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzf:Lcom/google/android/gms/internal/gtm/zzfd;

    return-object v0
.end method

.method public final zzn()Lcom/google/android/gms/internal/gtm/zzfd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzf:Lcom/google/android/gms/internal/gtm/zzfd;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/gtm/zzfj;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzk:Lcom/google/android/gms/internal/gtm/zzfj;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzk:Lcom/google/android/gms/internal/gtm/zzfj;

    return-object v0
.end method

.method public final zzp()Lcom/google/android/gms/internal/gtm/zzfj;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzk:Lcom/google/android/gms/internal/gtm/zzfj;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzX()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/gtm/zzfv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzj:Lcom/google/android/gms/internal/gtm/zzfv;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzs(Lcom/google/android/gms/internal/gtm/zzbu;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzj:Lcom/google/android/gms/internal/gtm/zzfv;

    return-object v0
.end method

.method public final zzr()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbx;->zzd:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method
