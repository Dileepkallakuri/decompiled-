.class public final Lcom/google/android/gms/internal/gtm/zzks;
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

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v4, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v3

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

    if-ne v0, v1, :cond_2

    .line 5
    aget-object v0, p2, v3

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrc;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    aget-object v0, p2, v3

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzrc;

    goto :goto_2

    .line 7
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrc;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzkr;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/google/android/gms/internal/gtm/zzkr;-><init>(Lcom/google/android/gms/internal/gtm/zzkq;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrc;-><init>(Lcom/google/android/gms/internal/gtm/zzjw;)V

    .line 8
    :goto_2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzkp;

    invoke-direct {v3, p0, v0, p1}, Lcom/google/android/gms/internal/gtm/zzkp;-><init>(Lcom/google/android/gms/internal/gtm/zzks;Lcom/google/android/gms/internal/gtm/zzrc;Lcom/google/android/gms/internal/gtm/zzie;)V

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9
    aget-object p1, p2, v2

    return-object p1
.end method
