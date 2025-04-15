.class public final Lcom/google/android/gms/internal/gtm/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzb:Ljava/util/concurrent/ScheduledFuture;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzgb;->zza()Lcom/google/android/gms/internal/gtm/zzfy;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzfy;->zzb(II)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzb:Ljava/util/concurrent/ScheduledFuture;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final zza(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzpt;JLcom/google/android/gms/internal/gtm/zzpk;)V
    .locals 0

    .line 1
    monitor-enter p0

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzb:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p3, :cond_0

    const/4 p4, 0x0

    invoke-interface {p3, p4}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    new-instance p3, Lcom/google/android/gms/internal/gtm/zzqf;

    .line 2
    invoke-direct {p3, p1, p2, p5}, Lcom/google/android/gms/internal/gtm/zzqf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/gtm/zzpt;Lcom/google/android/gms/internal/gtm/zzpk;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zza:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x0

    .line 3
    invoke-interface {p1, p3, p4, p5, p2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzqg;->zzb:Ljava/util/concurrent/ScheduledFuture;

    .line 4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
