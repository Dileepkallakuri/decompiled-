.class public final Lcom/google/android/gms/internal/gtm/zzjq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/common/stats/ConnectionTracker;

.field private volatile zzc:Z

.field private volatile zzd:Z

.field private zze:Lcom/google/android/gms/internal/gtm/zzhm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/stats/ConnectionTracker;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/common/stats/ConnectionTracker;

    return-void
.end method

.method private static final zzf(Lcom/google/android/gms/internal/gtm/zzhj;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-interface {p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzhj;->zze(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "Error - local callback should not throw RemoteException"

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzho;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 4
    monitor-enter p0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string p1, "com.google.android.gms.tagmanager.internal.ITagManagerService"

    .line 1
    invoke-interface {p2, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/android/gms/internal/gtm/zzhm;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzhm;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzhk;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzhk;-><init>(Landroid/os/IBinder;)V

    .line 4
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zza()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjq;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzhm;->zze()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error calling service to dispatch pending events"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzb(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjq;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    .line 2
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzhm;->zzf(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error calling service to emit event"

    .line 3
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjq;->zzd()Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    const/4 v0, 0x0

    .line 2
    invoke-interface {p3, p1, p2, v0, p4}, Lcom/google/android/gms/internal/gtm/zzhm;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "Error calling service to load container"

    .line 3
    invoke-static {p3, p2}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/gtm/zzjq;->zzf(Lcom/google/android/gms/internal/gtm/zzhj;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    invoke-static {p4, p1}, Lcom/google/android/gms/internal/gtm/zzjq;->zzf(Lcom/google/android/gms/internal/gtm/zzhj;Ljava/lang/String;)V

    return-void
.end method

.method public final zzd()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v3, "ignored"

    .line 2
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.google.android.gms.tagmanager.TagManagerService"

    .line 5
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzb:Lcom/google/android/gms/common/stats/ConnectionTracker;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zza:Landroid/content/Context;

    .line 6
    invoke-virtual {v3, v4, v0, p0, v1}, Lcom/google/android/gms/common/stats/ConnectionTracker;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 7
    monitor-exit p0

    return v2

    :cond_3
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    .line 1
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 8
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Error connecting to TagManagerService"

    .line 9
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v2, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzd:Z

    goto :goto_0

    .line 8
    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zzc:Z

    .line 10
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 11
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zze()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzjq;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjq;->zze:Lcom/google/android/gms/internal/gtm/zzhm;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzhm;->zzi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "Error in resetting service"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzf(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
