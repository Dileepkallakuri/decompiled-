.class public final Lcom/google/android/gms/internal/gtm/zzka;
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
    .locals 12

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v2

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrg;

    .line 6
    aget-object p2, p2, v2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v7, v1

    move v6, v2

    :goto_1
    if-eqz v6, :cond_2

    if-ge v7, v5, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 10
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/gtm/zzrg;->zzn(I)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/google/android/gms/internal/gtm/zzqz;

    .line 12
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/gtm/zzqz;

    aput-object v9, v8, v1

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    aput-object v9, v8, v2

    aput-object v0, v8, v3

    invoke-interface {v6, p1, v8}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v6

    .line 13
    invoke-static {v6}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v6

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
