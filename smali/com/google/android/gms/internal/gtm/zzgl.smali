.class final Lcom/google/android/gms/internal/gtm/zzgl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/gtm/zzgs;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzgs;Lcom/google/android/gms/internal/gtm/zzgk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzq(Lcom/google/android/gms/internal/gtm/zzgs;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzi(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Container "

    .line 2
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loading failed."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzgs;->zzl(Lcom/google/android/gms/internal/gtm/zzgs;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzgz;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzf()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzd(Lcom/google/android/gms/internal/gtm/zzgs;)Lcom/google/android/gms/tagmanager/zzco;

    move-result-object v3

    const-string v4, "app"

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zza()Landroid/os/Bundle;

    move-result-object v6

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->currentTimeMillis()J

    move-result-wide v7

    .line 8
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/tagmanager/zzco;->zzc(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logged event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to Firebase (marked as passthrough)."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzgs;->zzb(Lcom/google/android/gms/internal/gtm/zzgs;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Error logging event with measurement proxy:"

    .line 11
    invoke-static {v3, v1, v2}, Lcom/google/android/gms/internal/gtm/zzgv;->zzb(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzgz;->zzb()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Discarded event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (marked as non-passthrough)."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgl;->zza:Lcom/google/android/gms/internal/gtm/zzgs;

    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/gtm/zzgs;->zzo(Lcom/google/android/gms/internal/gtm/zzgs;Ljava/util/List;)V

    :cond_2
    return-void
.end method
