.class public final Lcom/google/android/gms/internal/gtm/zzkj;
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
    .locals 13

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    .line 2
    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v5, p2, v2

    instance-of v5, v5, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v5, p2, v3

    instance-of v5, v5, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    aget-object v5, p2, v2

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 6
    aget-object v6, p2, v3

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 7
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v7

    .line 8
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v1, :cond_2

    .line 9
    aget-object p2, p2, v4

    move v9, v2

    goto :goto_6

    :cond_2
    if-lez v8, :cond_3

    move p2, v3

    goto :goto_2

    :cond_3
    move p2, v2

    .line 10
    :goto_2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    .line 11
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    move v0, v2

    :goto_3
    if-ge v0, v8, :cond_5

    .line 12
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzn(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 13
    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzi(I)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    add-int/lit8 v9, v0, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    move v9, v3

    :goto_4
    if-ge v0, v8, :cond_6

    move v0, v3

    goto :goto_5

    :cond_6
    move v0, v2

    .line 14
    :goto_5
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkState(Z)V

    :goto_6
    if-ge v9, v8, :cond_8

    .line 15
    invoke-virtual {v5}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v9, v0, :cond_8

    .line 16
    invoke-virtual {v5, v9}, Lcom/google/android/gms/internal/gtm/zzrg;->zzn(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v0

    const/4 v10, 0x4

    new-array v10, v10, [Lcom/google/android/gms/internal/gtm/zzqz;

    aput-object p2, v10, v2

    .line 18
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzqz;

    aput-object p2, v10, v3

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v11, v9

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {p2, v11}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    aput-object p2, v10, v4

    aput-object v5, v10, v1

    .line 20
    invoke-interface {v0, p1, v10}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_8
    return-object p2
.end method
