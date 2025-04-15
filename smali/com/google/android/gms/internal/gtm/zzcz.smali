.class public final Lcom/google/android/gms/internal/gtm/zzcz;
.super Lcom/google/android/gms/internal/gtm/zzbu;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbu;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzbc;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbt;->zzq()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzr;->zzd()Lcom/google/android/gms/internal/gtm/zzbc;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbu;->zzV()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzcz;->zza()Lcom/google/android/gms/internal/gtm/zzbc;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/gtm/zzbc;->zza:I

    iget v0, v0, Lcom/google/android/gms/internal/gtm/zzbc;->zzb:I

    new-instance v2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final zzd()V
    .locals 0

    return-void
.end method
