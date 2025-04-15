.class public final Lcom/google/android/gms/internal/gtm/zzlw;
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
    .locals 6

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x2

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
    aget-object p2, p2, p1

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v1, :cond_1

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzj(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v2, p1

    .line 5
    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    xor-int/2addr v2, p1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 9
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 10
    instance-of v2, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    const-string v3, "length"

    if-eqz v2, :cond_4

    .line 11
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 12
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 13
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 14
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v2

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-nez p2, :cond_7

    double-to-int p2, v2

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p2, v1, :cond_7

    return-object p2

    :cond_4
    if-eqz v1, :cond_7

    .line 19
    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 20
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 22
    :cond_5
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    cmpl-double p2, v1, v3

    if-nez p2, :cond_6

    double-to-int p2, v1

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 25
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    goto :goto_1

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    :goto_1
    return-object p1

    .line 18
    :cond_7
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    return-object p1
.end method
