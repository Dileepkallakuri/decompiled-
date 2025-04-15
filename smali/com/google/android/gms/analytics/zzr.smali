.class public final Lcom/google/android/gms/analytics/zzr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# static fields
.field private static volatile zza:Lcom/google/android/gms/analytics/zzr;


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Ljava/util/List;

.field private final zzd:Lcom/google/android/gms/analytics/zzg;

.field private final zze:Lcom/google/android/gms/analytics/zzn;

.field private volatile zzf:Lcom/google/android/gms/internal/gtm/zzax;

.field private zzg:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/analytics/zzn;

    .line 3
    invoke-direct {p1, p0}, Lcom/google/android/gms/analytics/zzn;-><init>(Lcom/google/android/gms/analytics/zzr;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzc:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/google/android/gms/analytics/zzg;

    invoke-direct {p1}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzd:Lcom/google/android/gms/analytics/zzg;

    return-void
.end method

.method public static zzb(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzr;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    if-nez v0, :cond_1

    const-class v0, Lcom/google/android/gms/analytics/zzr;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/analytics/zzr;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/android/gms/analytics/zzr;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

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
    sget-object p0, Lcom/google/android/gms/analytics/zzr;->zza:Lcom/google/android/gms/analytics/zzr;

    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/analytics/zzr;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/zzr;->zzg:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/analytics/zzr;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/analytics/zzr;->zzc:Ljava/util/List;

    return-object p0
.end method

.method public static zzh()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzq;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call expected from worker thread"

    .line 2
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final zza()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/gtm/zzax;
    .locals 7

    const-string v0, "Error retrieving package info: appName set to "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzax;

    if-nez v1, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzax;

    if-nez v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzax;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzax;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 2
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzax;->zzi(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gtm/zzax;->zzj(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :try_start_1
    iget-object v5, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    .line 5
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 6
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 7
    invoke-virtual {v2, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_0
    iget-object v4, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 14
    :catch_0
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "GAv4"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/gtm/zzax;->zzk(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/gtm/zzax;->zzl(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzax;

    .line 14
    :cond_2
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzf:Lcom/google/android/gms/internal/gtm/zzax;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/gtm/zzbc;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zzb:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/gtm/zzbc;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzfu;->zzd(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gtm/zzbc;->zze(Ljava/lang/String;)V

    .line 3
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Lcom/google/android/gms/internal/gtm/zzbc;->zza:I

    .line 4
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, v1, Lcom/google/android/gms/internal/gtm/zzbc;->zzb:I

    return-object v1
.end method

.method public final zzg(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/gms/analytics/zzq;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/FutureTask;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->run()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzn;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method

.method public final zzi(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/analytics/zzn;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final zzj(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zzg:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method final zzk(Lcom/google/android/gms/analytics/zzh;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zzl()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/analytics/zzh;->zzm()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/google/android/gms/analytics/zzh;

    .line 2
    invoke-direct {v0, p1}, Lcom/google/android/gms/analytics/zzh;-><init>(Lcom/google/android/gms/analytics/zzh;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzi()V

    iget-object p1, p0, Lcom/google/android/gms/analytics/zzr;->zze:Lcom/google/android/gms/analytics/zzn;

    new-instance v1, Lcom/google/android/gms/analytics/zzl;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/analytics/zzl;-><init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/analytics/zzh;)V

    .line 4
    invoke-virtual {p1, v1}, Lcom/google/android/gms/analytics/zzn;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement can only be submitted once"

    .line 5
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Measurement prototype can\'t be submitted"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
