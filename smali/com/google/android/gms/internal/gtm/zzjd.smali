.class final Lcom/google/android/gms/internal/gtm/zzjd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Ljava/lang/String;

.field final synthetic zzc:Lcom/google/android/gms/internal/gtm/zzjf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzjf;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zza:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzb:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzjf;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zza(Lcom/google/android/gms/internal/gtm/zzjh;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zza:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzb:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Container "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loaded."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzjh;->zzl(Lcom/google/android/gms/internal/gtm/zzjh;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzb:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error loading container:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzjf;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzjd;->zzc:Lcom/google/android/gms/internal/gtm/zzjf;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzjf;->zza:Lcom/google/android/gms/internal/gtm/zzjh;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzj(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjh;->zzi(Lcom/google/android/gms/internal/gtm/zzjh;)Ljava/util/Queue;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const-string v0, "Container load callback completed after timeout"

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    return-void
.end method
