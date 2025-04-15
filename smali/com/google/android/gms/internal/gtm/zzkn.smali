.class public final Lcom/google/android/gms/internal/gtm/zzkn;
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

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v1

    .line 2
    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v4, p2, v2

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v4, p2, v2

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 5
    aget-object v1, p2, v1

    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v5

    double-to-int v1, v5

    if-gez v1, :cond_2

    .line 6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v1

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 8
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne p1, v0, :cond_4

    .line 9
    aget-object p1, p2, v3

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    double-to-int p1, p1

    if-gez p1, :cond_3

    .line 10
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_3

    .line 11
    :cond_3
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 12
    :cond_4
    :goto_3
    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrg;

    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    return-object p2
.end method
