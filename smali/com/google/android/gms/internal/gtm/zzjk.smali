.class final Lcom/google/android/gms/internal/gtm/zzjk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzjl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjl;->zzj(Lcom/google/android/gms/internal/gtm/zzjl;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TagManagerBackend dispatch called without loaded container."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjk;->zza:Lcom/google/android/gms/internal/gtm/zzjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjl;->zzj(Lcom/google/android/gms/internal/gtm/zzjl;)Ljava/util/Map;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzgs;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzs()V

    goto :goto_0

    :cond_1
    return-void
.end method
