.class public final Lcom/google/android/gms/internal/gtm/zzkf;
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

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lez p1, :cond_0

    if-gt p1, v1, :cond_0

    move v3, v0

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
    aget-object v2, p2, v2

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrg;

    const/4 v3, 0x2

    if-ge p1, v3, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_1

    .line 5
    :cond_1
    aget-object v0, p2, v0

    .line 6
    :goto_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v4

    .line 7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    if-ne p1, v1, :cond_3

    .line 8
    aget-object p1, p2, v3

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    double-to-int p1, p1

    if-gez p1, :cond_2

    .line 9
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int v6, v5, p1

    goto :goto_2

    .line 10
    :cond_2
    invoke-static {p1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    :cond_3
    :goto_2
    if-ltz v6, :cond_5

    .line 11
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/gtm/zzrg;->zzn(I)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 12
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzh(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_5
    const/4 v6, -0x1

    .line 13
    :goto_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v0, v6

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
