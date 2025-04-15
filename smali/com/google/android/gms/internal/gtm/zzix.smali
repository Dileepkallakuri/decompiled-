.class final Lcom/google/android/gms/internal/gtm/zzix;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zziy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zziy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzix;->zza:Lcom/google/android/gms/internal/gtm/zziy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzix;->zza:Lcom/google/android/gms/internal/gtm/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zziy;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V

    const-string v0, "Container load timed out after 5000ms."

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzix;->zza:Lcom/google/android/gms/internal/gtm/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zziy;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzix;->zza:Lcom/google/android/gms/internal/gtm/zziy;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zziy;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
