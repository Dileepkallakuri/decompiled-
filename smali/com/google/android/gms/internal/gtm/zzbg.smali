.class public final Lcom/google/android/gms/internal/gtm/zzbg;
.super Lcom/google/android/gms/analytics/zzj;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Ljava/lang/String;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzj;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "hitType"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "clientId"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "userId"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "androidAdId"

    iget-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    .line 5
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zze:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "AdTargetingEnabled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sessionControl"

    const/4 v2, 0x0

    .line 7
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzf:Z

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "nonInteraction"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "sampleRate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbg;->zza(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/analytics/zzj;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbg;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    iput-object v0, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zze:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iput-boolean v1, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zze:Z

    :cond_4
    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzf:Z

    if-eqz v0, :cond_5

    iput-boolean v1, p1, Lcom/google/android/gms/internal/gtm/zzbg;->zzf:Z

    :cond_5
    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    return-object v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zze:Z

    return-void
.end method

.method public final zzi(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzd:Ljava/lang/String;

    return-void
.end method

.method public final zzj(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzb:Ljava/lang/String;

    return-void
.end method

.method public final zzk(Ljava/lang/String;)V
    .locals 0

    const-string p1, "data"

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zza:Ljava/lang/String;

    return-void
.end method

.method public final zzl(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzf:Z

    return-void
.end method

.method public final zzm(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzc:Ljava/lang/String;

    return-void
.end method

.method public final zzn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zze:Z

    return v0
.end method

.method public final zzo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbg;->zzf:Z

    return v0
.end method
