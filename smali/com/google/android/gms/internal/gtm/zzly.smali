.class public final Lcom/google/android/gms/internal/gtm/zzly;
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

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    move v5, v0

    move v1, v3

    goto :goto_0

    :cond_0
    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v0

    .line 2
    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v5, p2, v0

    instance-of v5, v5, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    if-ne v1, v3, :cond_2

    .line 4
    aget-object v3, p2, v4

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 6
    aget-object v2, p2, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzg(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 7
    aget-object p2, p2, v0

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v3

    goto :goto_1

    :cond_3
    if-le v1, v4, :cond_4

    .line 8
    aget-object p2, p2, v4

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v3

    .line 9
    :cond_4
    :goto_1
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/gtm/zzrl;->zzf(Lcom/google/android/gms/internal/gtm/zzie;Ljava/util/List;)Lcom/google/android/gms/internal/gtm/zzrd;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p2

    if-eqz p2, :cond_5

    return-object p1

    :cond_5
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
