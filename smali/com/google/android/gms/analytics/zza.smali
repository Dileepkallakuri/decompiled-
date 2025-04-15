.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzk;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/gtm/zzbx;

.field private zzc:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/gtm/zzbx;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzd()Lcom/google/android/gms/analytics/zzr;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbx;->zzr()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzk;-><init>(Lcom/google/android/gms/analytics/zzr;Lcom/google/android/gms/common/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/analytics/zzh;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    new-instance v1, Lcom/google/android/gms/analytics/zzh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/analytics/zzh;-><init>(Lcom/google/android/gms/analytics/zzh;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzh()Lcom/google/android/gms/internal/gtm/zzch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzch;->zza()Lcom/google/android/gms/internal/gtm/zzax;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/zzh;->zzg(Lcom/google/android/gms/analytics/zzj;)V

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzk()Lcom/google/android/gms/internal/gtm/zzcz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcz;->zza()Lcom/google/android/gms/internal/gtm/zzbc;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/zzh;->zzg(Lcom/google/android/gms/analytics/zzj;)V

    .line 4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/analytics/zzk;->zzn(Lcom/google/android/gms/analytics/zzh;)V

    return-object v1
.end method

.method final zzb()Lcom/google/android/gms/internal/gtm/zzbx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    return-object v0
.end method

.method public final zzc(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/zzh;->zzf()Ljava/util/List;

    move-result-object v1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/zzt;

    invoke-interface {v2}, Lcom/google/android/gms/analytics/zzt;->zzb()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/analytics/zzk;->zza:Lcom/google/android/gms/analytics/zzh;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzf()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 9
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/gtm/zzbx;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzc:Z

    return-void
.end method

.method protected final zze(Lcom/google/android/gms/analytics/zzh;)V
    .locals 2

    .line 1
    const-class v0, Lcom/google/android/gms/internal/gtm/zzbg;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zzh;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzj;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzbg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbg;->zze()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zzi()Lcom/google/android/gms/internal/gtm/zzcp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzcp;->zzb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbg;->zzj(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/analytics/zza;->zzc:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzbg;->zzd()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzb:Lcom/google/android/gms/internal/gtm/zzbx;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbx;->zze()Lcom/google/android/gms/internal/gtm/zzbk;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzbg;->zzi(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbk;->zzb()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbg;->zzh(Z)V

    :cond_1
    return-void
.end method
