.class public final Lcom/google/android/gms/internal/gtm/zzkd;
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

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-gt p1, v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v3, p2, v2

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzrg;

    const/4 v4, 0x2

    if-ge p1, v4, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_1

    .line 5
    :cond_1
    aget-object v1, p2, v1

    :goto_1
    if-ge p1, v0, :cond_2

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_2

    .line 6
    :cond_2
    aget-object p1, p2, v4

    .line 7
    :goto_2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sget-object v4, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, v4, :cond_4

    .line 9
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v4

    double-to-int p1, v4

    if-gez p1, :cond_3

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int p1, v0, p1

    .line 11
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, p1

    :cond_4
    :goto_3
    if-ge v2, v0, :cond_6

    .line 12
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzn(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 13
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzh(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, -0x1

    .line 14
    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
