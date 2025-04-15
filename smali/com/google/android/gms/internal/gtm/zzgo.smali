.class final Lcom/google/android/gms/internal/gtm/zzgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;

.field private final zzb:Lcom/google/android/gms/internal/gtm/zzgz;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const-string v0, "Logged passthrough event "

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Evaluating tags for event "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzf(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/internal/gtm/zzic;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gtm/zzic;->zzf(Lcom/google/android/gms/internal/gtm/zzgz;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added event "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to pending queue."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zza(Lcom/google/android/gms/internal/gtm/zzgs;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to evaluate tags for event "

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (container failed to load)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzf()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzd(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/tagmanager/zzco;

    move-result-object v3

    const-string v4, "app"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zza()Landroid/os/Bundle;

    move-result-object v6

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->currentTimeMillis()J

    move-result-wide v7

    .line 11
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzco;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zzb:Lcom/google/android/gms/internal/gtm/zzgz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to Firebase."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzgo;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzb(Lcom/google/android/gms/internal/gtm/zzgs;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "Error logging event with measurement proxy:"

    .line 13
    invoke-static {v2, v0, v1}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    return-void

    .line 12
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Discarded non-passthrough event "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
