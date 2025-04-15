.class public final Lcom/google/android/gms/internal/gtm/zzmu;
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
    .locals 5

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-eq v0, p1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v2, p1

    .line 2
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v2, p2, v1

    instance-of v2, v2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    new-instance v2, Ljava/util/ArrayList;

    .line 4
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-ne v0, p1, :cond_2

    .line 5
    aget-object p1, p2, v1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 6
    :cond_2
    aget-object v0, p2, v1

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v0

    .line 7
    aget-object p2, p2, p1

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eq p1, v3, :cond_3

    const/4 v4, -0x1

    goto :goto_2

    :cond_3
    move v4, v1

    .line 9
    :goto_2
    invoke-virtual {v0, p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    if-eqz v3, :cond_4

    .line 10
    array-length v0, p2

    if-lez v0, :cond_4

    aget-object v0, p2, v1

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move p1, v1

    .line 12
    :goto_3
    array-length v0, p2

    if-ge p1, v0, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 13
    aget-object v1, p2, p1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 14
    :cond_5
    :goto_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/gtm/zzrg;-><init>(Ljava/util/List;)V

    return-object p1
.end method
