.class public final Lcom/google/android/gms/internal/gtm/zzfp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static zza:Ljava/lang/Boolean;


# instance fields
.field private final zzb:Landroid/os/Handler;

.field private final zzc:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzgc;

    .line 2
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzgc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzb:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/gtm/zzfp;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzb:Landroid/os/Handler;

    return-object p0
.end method

.method public static zzh(Landroid/content/Context;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.AnalyticsService"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 4
    iget-boolean p0, p0, Landroid/content/pm/ServiceInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    .line 5
    :catch_0
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/gtm/zzfp;->zza:Ljava/lang/Boolean;

    return v1
.end method


# virtual methods
.method public final zza(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    :try_start_0
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzfk;->zza:Ljava/lang/Object;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzfk;->zzb:Lcom/google/android/gms/stats/WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/stats/WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/stats/WakeLock;->release()V

    .line 3
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v0

    const/4 v1, 0x2

    if-nez p1, :cond_1

    const-string p1, "AnalyticsService started with null intent"

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzQ(Ljava/lang/String;)V

    return v1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzbx;->zzj()Lcom/google/android/gms/internal/gtm/zzcv;

    const-string p2, "Local AnalyticsService called. startId, action"

    .line 9
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzP(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 10
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzfm;

    invoke-direct {p1, p0, p3, v0}, Lcom/google/android/gms/internal/gtm/zzfm;-><init>(Lcom/google/android/gms/internal/gtm/zzfp;ILcom/google/android/gms/internal/gtm/zzfd;)V

    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/gtm/zzfp;->zzg(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method

.method final synthetic zzc(ILcom/google/android/gms/internal/gtm/zzfd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzfo;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzfo;->callServiceStopSelfResult(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Local AnalyticsService processed last dispatch request"

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/gtm/zzfd;Landroid/app/job/JobParameters;)V
    .locals 1

    const-string v0, "AnalyticsJobService processed last dispatch request"

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzfo;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzfo;->zza(Landroid/app/job/JobParameters;Z)V

    return-void
.end method

.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzj()Lcom/google/android/gms/internal/gtm/zzcv;

    const-string v0, "Local AnalyticsService is starting up"

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    return-void
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzj()Lcom/google/android/gms/internal/gtm/zzcv;

    const-string v0, "Local AnalyticsService is shutting down"

    .line 4
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzN(Ljava/lang/String;)V

    return-void
.end method

.method public final zzg(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzf()Lcom/google/android/gms/internal/gtm/zzbs;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzfn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/gtm/zzfn;-><init>(Lcom/google/android/gms/internal/gtm/zzfp;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbs;->zze(Lcom/google/android/gms/internal/gtm/zzdb;)V

    return-void
.end method

.method public final zzi(Landroid/app/job/JobParameters;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzfp;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/gtm/zzbx;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzm()Lcom/google/android/gms/internal/gtm/zzfd;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzj()Lcom/google/android/gms/internal/gtm/zzcv;

    const-string v0, "Local AnalyticsJobService called. action"

    .line 5
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/gtm/zzbt;->zzO(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzfl;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/internal/gtm/zzfl;-><init>(Lcom/google/android/gms/internal/gtm/zzfp;Lcom/google/android/gms/internal/gtm/zzfd;Landroid/app/job/JobParameters;)V

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/gtm/zzfp;->zzg(Ljava/lang/Runnable;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
