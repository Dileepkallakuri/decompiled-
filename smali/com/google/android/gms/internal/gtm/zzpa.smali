.class public abstract Lcom/google/android/gms/internal/gtm/zzpa;
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
    .locals 4

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    :try_start_0
    aget-object v0, p2, v2

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    .line 4
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/google/android/gms/internal/gtm/zzpa;->zzb(DD)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object v2

    .line 7
    :cond_2
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 5
    :catch_0
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method

.method protected abstract zzb(DD)Z
.end method
