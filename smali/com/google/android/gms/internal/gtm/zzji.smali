.class final Lcom/google/android/gms/internal/gtm/zzji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Ljava/lang/String;

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Ljava/lang/String;

.field final synthetic zzd:Lcom/google/android/gms/internal/gtm/zzhj;

.field final synthetic zze:Lcom/google/android/gms/internal/gtm/zzjl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzhj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzji;->zza:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzb:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzc:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzd:Lcom/google/android/gms/internal/gtm/zzhj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjl;->zzj(Lcom/google/android/gms/internal/gtm/zzjl;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzji;->zza:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjl;->zzd(Lcom/google/android/gms/internal/gtm/zzjl;)Lcom/google/android/gms/internal/gtm/zzgt;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzji;->zza:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzb:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzc:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v2, v3, v4}, Lcom/google/android/gms/internal/gtm/zzgt;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzgs;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjl;->zzj(Lcom/google/android/gms/internal/gtm/zzjl;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/gtm/zzji;->zza:Ljava/lang/String;

    .line 3
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjl;->zzc(Lcom/google/android/gms/internal/gtm/zzjl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Fail to load container: "

    .line 4
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzji;->zzd:Lcom/google/android/gms/internal/gtm/zzhj;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzji;->zza:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzhj;->zze(ZLjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 4
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzji;->zze:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjl;->zzc(Lcom/google/android/gms/internal/gtm/zzjl;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error relaying callback: "

    .line 6
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void
.end method
