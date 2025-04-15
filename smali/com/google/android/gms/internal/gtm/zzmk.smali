.class public final Lcom/google/android/gms/internal/gtm/zzmk;
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
    .locals 9

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

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    .line 4
    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v3

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    if-nez p2, :cond_a

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_5

    .line 7
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    const-wide/16 v7, 0x0

    if-eqz p2, :cond_2

    cmpl-double p2, v3, v7

    if-eqz p2, :cond_3

    :cond_2
    cmpl-double p2, v0, v7

    if-nez p2, :cond_4

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 8
    :cond_4
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {v3, v4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_2

    .line 11
    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    mul-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 9
    :cond_6
    :goto_2
    invoke-static {v0, v1, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result p2

    int-to-double v0, p2

    cmpg-double p2, v0, v7

    if-gez p2, :cond_7

    move p2, p1

    goto :goto_3

    :cond_7
    move p2, v2

    :goto_3
    invoke-static {v3, v4, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    int-to-double v0, v0

    cmpg-double v0, v0, v7

    if-gez v0, :cond_8

    move v2, p1

    :cond_8
    xor-int/2addr p2, v2

    if-eq p1, p2, :cond_9

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_4

    :cond_9
    const-wide/high16 p1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 10
    :goto_4
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v0

    .line 6
    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
