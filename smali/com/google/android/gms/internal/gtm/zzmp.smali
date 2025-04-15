.class public final Lcom/google/android/gms/internal/gtm/zzmp;
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
    .locals 8

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    move v4, p1

    move v0, v2

    goto :goto_0

    :cond_0
    move v4, v1

    goto :goto_0

    :cond_1
    move v4, p1

    .line 2
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v4, p2, v1

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v1, p2, v1

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 5
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v4, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-ne v0, v2, :cond_2

    .line 6
    aget-object v0, p2, v3

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    aget-object p2, p2, v3

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v4

    :cond_2
    const-wide/16 v2, 0x0

    .line 8
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p2

    int-to-double v4, p2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 9
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrb;

    double-to-int v0, v2

    invoke-virtual {v1, p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p1

    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p2
.end method
