.class public final Lcom/google/android/gms/internal/gtm/zzaj;
.super Lcom/google/android/gms/internal/gtm/zzbez;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zze()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/gtm/zzbez;-><init>(Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/gtm/zzn;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzak;->zze()Lcom/google/android/gms/internal/gtm/zzak;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbez;-><init>(Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/gtm/zzaj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaj;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzak;->zzj(Lcom/google/android/gms/internal/gtm/zzak;)V

    return-object p0
.end method

.method public final zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzaj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaj;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzak;->zzl(Lcom/google/android/gms/internal/gtm/zzak;Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/gtm/zzac;)Lcom/google/android/gms/internal/gtm/zzaj;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzF()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbez;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaj;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzak;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzak;->zzk(Lcom/google/android/gms/internal/gtm/zzak;Lcom/google/android/gms/internal/gtm/zzac;)V

    return-object p0
.end method
