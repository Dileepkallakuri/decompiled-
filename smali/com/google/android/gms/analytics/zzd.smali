.class public final Lcom/google/android/gms/analytics/zzd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# direct methods
.method public static zza(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzb(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzc(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cd"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzd(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zze(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzf(I)Ljava/lang/String;
    .locals 1

    const-string v0, "cm"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzg(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&il"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzh(I)Ljava/lang/String;
    .locals 1

    const-string v0, "il"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzi(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pi"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzj(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&pr"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzk(I)Ljava/lang/String;
    .locals 1

    const-string v0, "pr"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzl(I)Ljava/lang/String;
    .locals 1

    const-string v0, "&promo"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static zzm(I)Ljava/lang/String;
    .locals 1

    const-string v0, "promo"

    .line 1
    invoke-static {v0, p0}, Lcom/google/android/gms/analytics/zzd;->zzn(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-gtz p1, :cond_0

    const-string p1, "index out of range for prefix"

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzfc;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, ""

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
