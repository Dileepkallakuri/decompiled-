.class public final Lcom/google/android/gms/internal/gtm/zzmd;
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

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v1, p2, v0

    instance-of v1, v1, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    const/4 v1, 0x2

    .line 4
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    aget-object v2, p2, v3

    .line 6
    aget-object v4, p2, v0

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v4

    .line 7
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v5, v0

    if-gt v1, v5, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    move v1, v3

    .line 9
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_8

    if-nez v1, :cond_2

    .line 10
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v5

    .line 11
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/gtm/zzjx;->zzh(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 12
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {p1, v5}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object v5

    .line 13
    instance-of v6, v5, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz v6, :cond_6

    sget-object v6, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v5, v6, :cond_5

    .line 14
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/gtm/zzrd;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    sget-object v6, Lcom/google/android/gms/internal/gtm/zzrd;->zzb:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v5, v6, :cond_4

    goto :goto_4

    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1

    :cond_5
    :goto_3
    return-object v5

    :cond_6
    move v1, v0

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 15
    :cond_8
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzqz;

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    .line 17
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz p2, :cond_a

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zzc:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, p2, :cond_9

    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrd;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrd;->zzj()Z

    move-result p2

    if-eqz p2, :cond_a

    :cond_9
    return-object p1

    :cond_a
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
