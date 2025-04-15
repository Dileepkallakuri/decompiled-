.class public final Lcom/google/android/gms/internal/gtm/zzbs;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/gtm/zzcm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzby;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzcm;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzcm;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;Lcom/google/android/gms/internal/gtm/zzby;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/gtm/zzbs;)Lcom/google/android/gms/internal/gtm/zzcm;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/gtm/zzbz;)J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzb(Lcom/google/android/gms/internal/gtm/zzbz;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzcm;->zzk(Lcom/google/android/gms/internal/gtm/zzbz;)V

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public final zzc()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzo()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfk;->zza(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzfp;->zzh(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 5
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    .line 6
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbs;->zze(Lcom/google/android/gms/internal/gtm/zzdb;)V

    return-void
.end method

.method protected final zzd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzW()V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/gtm/zzdb;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbq;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;Lcom/google/android/gms/internal/gtm/zzdb;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbm;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/gtm/zzbm;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzw()Lcom/google/android/gms/internal/gtm/zzcv;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbp;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbp;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/gtm/zzez;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    const-string v0, "Hit delivery requested"

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbo;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;Lcom/google/android/gms/internal/gtm/zzez;)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method final zzi()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzl()V

    return-void
.end method

.method final zzj()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzm()V

    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    .line 3
    invoke-static {}, Lcom/google/android/gms/analytics/zzr;->zzh()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    const-string v1, "Service disconnected"

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    return-void
.end method

.method public final zzl(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzF(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzbn;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;I)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzi(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbs;->zza:Lcom/google/android/gms/internal/gtm/zzcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcm;->zzZ()V

    return-void
.end method

.method public final zzn()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbr;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzbr;-><init>(Lcom/google/android/gms/internal/gtm/zzbs;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzr;->zzg(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    .line 4
    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "syncDispatchLocalHits timed out"

    .line 5
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception v0

    const-string v2, "syncDispatchLocalHits failed"

    .line 6
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzJ(Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :catch_2
    move-exception v0

    const-string v2, "syncDispatchLocalHits interrupted"

    .line 7
    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzR(Ljava/lang/String;Ljava/lang/Object;)V

    return v1
.end method
