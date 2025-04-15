.class public final Lcom/google/android/gms/internal/gtm/zzgz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/common/util/Clock;


# instance fields
.field private final zza:Landroid/os/Bundle;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/util/Date;

.field private final zzd:Ljava/lang/String;

.field private zze:Ljava/util/Map;

.field private zzf:Z

.field private final zzg:Lcom/google/android/gms/tagmanager/zzco;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;ZLcom/google/android/gms/tagmanager/zzco;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzb:Ljava/lang/String;

    if-nez p2, :cond_0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p2, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zza:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzc:Ljava/util/Date;

    iput-object p3, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzd:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzf:Z

    iput-object p6, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzg:Lcom/google/android/gms/tagmanager/zzco;

    return-void
.end method


# virtual methods
.method public final currentThreadTimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final currentTimeMillis()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzc:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final nanoTime()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zza:Landroid/os/Bundle;

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd()Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zze:Ljava/util/Map;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzg:Lcom/google/android/gms/tagmanager/zzco;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzco;->zzb()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zze:Ljava/util/Map;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error calling measurement proxy:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zze:Ljava/util/Map;

    return-object v0
.end method

.method public final zze(Z)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzf:Z

    return-void
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzgz;->zzf:Z

    return v0
.end method
