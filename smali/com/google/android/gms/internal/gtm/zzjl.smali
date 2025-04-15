.class public final Lcom/google/android/gms/internal/gtm/zzjl;
.super Lcom/google/android/gms/internal/gtm/zzhl;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Ljava/util/concurrent/ExecutorService;

.field private final zzc:Lcom/google/android/gms/internal/gtm/zzgt;

.field private final zzd:Lcom/google/android/gms/tagmanager/zzco;

.field private final zze:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzgt;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzgt;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzco;Lcom/google/android/gms/tagmanager/zzcf;)V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjn;->zza(Landroid/content/Context;)Ljava/util/concurrent/ExecutorService;

    move-result-object p3

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzhl;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x1

    .line 4
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zza:Ljava/util/Map;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzd:Lcom/google/android/gms/tagmanager/zzco;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzc:Lcom/google/android/gms/internal/gtm/zzgt;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zze:Landroid/content/Context;

    return-void
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/gtm/zzjl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zze:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/gtm/zzjl;)Lcom/google/android/gms/internal/gtm/zzgt;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzc:Lcom/google/android/gms/internal/gtm/zzgt;

    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/gtm/zzjl;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zza:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final zze()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzjk;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/gtm/zzjk;-><init>(Lcom/google/android/gms/internal/gtm/zzjl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;JZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/gtm/zzgz;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p4, p5}, Ljava/util/Date;-><init>(J)V

    iget-object v6, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzd:Lcom/google/android/gms/tagmanager/zzco;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p6

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzgz;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzco;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzjj;

    invoke-direct {p2, p0, v7}, Lcom/google/android/gms/internal/gtm/zzjj;-><init>(Lcom/google/android/gms/internal/gtm/zzjl;Lcom/google/android/gms/internal/gtm/zzgz;)V

    .line 2
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/android/gms/internal/gtm/zzjl;->zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V

    return-void
.end method

.method public final zzh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zzb:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzji;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/gtm/zzji;-><init>(Lcom/google/android/gms/internal/gtm/zzjl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzi()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjl;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
