.class final Lcom/google/android/gms/internal/gtm/zzjb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Landroid/net/Uri;

.field final synthetic zzb:Lcom/google/android/gms/internal/gtm/zzjh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjh;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    const-string v0, "Deferring container loading for preview uri: "

    const-string v1, "Starting to load preview container: "

    const-string v2, "Cannot preview the app with the uri: "

    const-string v3, "Preview requested to uri "

    .line 1
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v3}, Lcom/google/android/gms/internal/gtm/zzjh;->zzh(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v4}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    const/4 v5, 0x0

    .line 2
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/gtm/zzjh;->zzc(Lcom/google/android/gms/internal/gtm/zzjh;[Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v4

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v0, "Preview failed (no container found)"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 4
    monitor-exit v3

    return-void

    :cond_0
    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzjh;->zze(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzhv;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    .line 5
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/gtm/zzhv;->zzf(Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Launching current version instead."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 7
    monitor-exit v3

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    .line 8
    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjh;->zzo(Lcom/google/android/gms/internal/gtm/zzjh;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "(Tag Manager has not been initialized)."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    .line 10
    monitor-exit v3

    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zza:Landroid/net/Uri;

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzg(Lcom/google/android/gms/internal/gtm/zzjh;)Lcom/google/android/gms/internal/gtm/zzjq;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzjq;->zze()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "Failed to reset TagManager service for preview"

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    .line 14
    monitor-exit v3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    const/4 v1, 0x0

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzk(Lcom/google/android/gms/internal/gtm/zzjh;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    const/4 v1, 0x1

    .line 16
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V

    .line 17
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    .line 18
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/gtm/zzjh;->zzm([Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_1
    const-string v0, "Still initializing. Defer preview container loading."

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjb;->zzb:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 20
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 21
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
