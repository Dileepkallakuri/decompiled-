.class public final Lcom/google/android/gms/internal/gtm/zzmj;
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
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    if-nez v2, :cond_7

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 7
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_6

    const-wide/16 v5, 0x0

    cmpl-double v2, p1, v5

    if-nez v2, :cond_2

    goto :goto_2

    .line 9
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    :cond_4
    :goto_1
    cmpl-double v3, v0, v5

    if-nez v3, :cond_5

    if-eqz v2, :cond_5

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 11
    :cond_5
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzrb;

    rem-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object v2

    .line 8
    :cond_6
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1

    .line 6
    :cond_7
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
