.class public final Lcom/google/android/gms/internal/gtm/zzgg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Lcom/google/android/gms/internal/gtm/zzgg;


# instance fields
.field private volatile zzc:J

.field private volatile zzd:J

.field private volatile zze:Z

.field private volatile zzf:Z

.field private volatile zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

.field private volatile zzh:J

.field private volatile zzi:J

.field private final zzj:Landroid/content/Context;

.field private final zzk:Lcom/google/android/gms/common/util/Clock;

.field private final zzl:Ljava/lang/Thread;

.field private final zzm:Ljava/lang/Object;

.field private final zzn:Lcom/google/android/gms/internal/gtm/zzgf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzgg;->zza:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzgf;Lcom/google/android/gms/common/util/Clock;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzc:J

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzd:J

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zze:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzf:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzm:Ljava/lang/Object;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzgd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzgd;-><init>(Lcom/google/android/gms/internal/gtm/zzgg;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzn:Lcom/google/android/gms/internal/gtm/zzgf;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzk:Lcom/google/android/gms/common/util/Clock;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzj:Landroid/content/Context;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzj:Landroid/content/Context;

    .line 2
    :goto_0
    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzh:J

    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzge;

    .line 3
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/gtm/zzge;-><init>(Lcom/google/android/gms/internal/gtm/zzgg;)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzl:Ljava/lang/Thread;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/gtm/zzgg;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzj:Landroid/content/Context;

    return-object p0
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzgg;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzgg;->zzb:Lcom/google/android/gms/internal/gtm/zzgg;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzgg;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzgg;->zzb:Lcom/google/android/gms/internal/gtm/zzgg;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzgg;

    invoke-static {}, Lcom/google/android/gms/common/util/DefaultClock;->getInstance()Lcom/google/android/gms/common/util/Clock;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/google/android/gms/internal/gtm/zzgg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzgf;Lcom/google/android/gms/common/util/Clock;)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzgg;->zzb:Lcom/google/android/gms/internal/gtm/zzgg;

    iget-object p0, v1, Lcom/google/android/gms/internal/gtm/zzgg;->zzl:Ljava/lang/Thread;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 3
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
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzb:Lcom/google/android/gms/internal/gtm/zzgg;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzgg;Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zze:Z

    return-void
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/gtm/zzgg;)V
    .locals 4

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzf:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzn:Lcom/google/android/gms/internal/gtm/zzgf;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzgf;->zza()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzk:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzi:J

    const-string v0, "Obtained fresh AdvertisingId info from GmsCore."

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    :cond_1
    monitor-enter p0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzm:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzm:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzc:J

    .line 7
    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 8
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const-string v0, "sleep interrupted in AdvertiserDataPoller thread; continuing"

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private final zzg()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzk:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzi:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    :cond_0
    return-void
.end method

.method private final zzh()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzk:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzh:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzd:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzm:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzm:Ljava/lang/Object;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzk:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzh:J

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    return-void
.end method

.method private final zzi()V
    .locals 2

    .line 1
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzh()V

    const-wide/16 v0, 0x1f4

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 3
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzi()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzh()V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzi()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzh()V

    .line 3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzgg;->zzg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgg;->zzg:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    return v0
.end method
