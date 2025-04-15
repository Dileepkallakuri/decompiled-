.class public Lcom/google/android/gms/internal/gtm/zzbfa;
.super Lcom/google/android/gms/internal/gtm/zzbez;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/gtm/zzbfb;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbez;-><init>(Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zzB()Lcom/google/android/gms/internal/gtm/zzbff;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbfa;->zzH()Lcom/google/android/gms/internal/gtm/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzD()Lcom/google/android/gms/internal/gtm/zzbgs;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzbfa;->zzH()Lcom/google/android/gms/internal/gtm/zzbfb;

    move-result-object v0

    return-object v0
.end method

.method protected final zzF()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzF()V

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfa;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbfb;

    iget-object v1, v0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzd()Lcom/google/android/gms/internal/gtm/zzbeu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    return-void
.end method

.method public final zzH()Lcom/google/android/gms/internal/gtm/zzbfb;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbfa;->zzb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfa;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbfb;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbfa;->zza:Lcom/google/android/gms/internal/gtm/zzbff;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbfb;

    iget-object v0, v0, Lcom/google/android/gms/internal/gtm/zzbfb;->zzb:Lcom/google/android/gms/internal/gtm/zzbeu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbeu;->zzi()V

    .line 3
    invoke-super {p0}, Lcom/google/android/gms/internal/gtm/zzbez;->zzB()Lcom/google/android/gms/internal/gtm/zzbff;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzbfb;

    return-object v0
.end method
