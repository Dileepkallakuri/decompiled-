.class public final Lcom/google/android/gms/internal/gtm/zzmt;
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
    .locals 11

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_0

    if-gt v0, v1, :cond_0

    move v3, p1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v3, p2, v2

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    if-ge v0, v4, :cond_1

    move-wide v7, v5

    goto :goto_1

    .line 5
    :cond_1
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v7

    .line 6
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double v9, p1

    if-ne v0, v1, :cond_2

    .line 7
    aget-object p1, p2, v4

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, p2, :cond_2

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v9

    :cond_2
    cmpg-double p1, v7, v5

    if-gez p1, :cond_3

    .line 9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    add-double/2addr p1, v7

    invoke-static {p1, p2, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    int-to-double p1, p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    :goto_2
    double-to-int p1, p1

    cmpg-double p2, v9, v5

    if-gez p2, :cond_4

    .line 11
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v0, p2

    add-double/2addr v0, v9

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    goto :goto_3

    .line 12
    :cond_4
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    :goto_3
    double-to-int p2, v0

    sub-int/2addr p2, p1

    .line 13
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    add-int/2addr p2, p1

    .line 14
    invoke-virtual {v3, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
