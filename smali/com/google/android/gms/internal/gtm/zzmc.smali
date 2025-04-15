.class public final Lcom/google/android/gms/internal/gtm/zzmc;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 7

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v2

    .line 4
    aget-object v1, p2, p1

    const/4 v3, 0x2

    .line 5
    aget-object p2, p2, v3

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, v3, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 6
    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    sget-object v3, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, v3, :cond_2

    move v3, p1

    goto :goto_2

    :cond_2
    move v3, v2

    .line 7
    :goto_2
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 10
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    xor-int/2addr v3, p1

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 11
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object p2

    .line 12
    :cond_3
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v3

    .line 13
    instance-of v4, v0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-eqz v4, :cond_5

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrh;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrh;->zzk()Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/gtm/zzqz;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    :cond_4
    return-object p2

    .line 17
    :cond_5
    instance-of v4, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-eqz v4, :cond_8

    .line 18
    move-object v4, v0

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzrg;

    const-string v5, "length"

    .line 19
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 20
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    cmpl-double v3, v0, v5

    if-nez v3, :cond_6

    goto :goto_3

    :cond_6
    move p1, v2

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    double-to-int p1, v0

    .line 22
    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzm(I)V

    return-object p2

    .line 23
    :cond_7
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    .line 24
    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_8

    const-wide/16 v5, 0x0

    cmpl-double p1, v1, v5

    if-ltz p1, :cond_8

    double-to-int p1, v1

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 27
    invoke-virtual {v4, p1, p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzl(ILcom/google/android/gms/internal/gtm/zzqz;)V

    return-object p2

    .line 26
    :cond_8
    invoke-virtual {v0, v3, p2}, Lcom/google/android/gms/internal/gtm/zzqz;->zzf(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    return-object p2
.end method
