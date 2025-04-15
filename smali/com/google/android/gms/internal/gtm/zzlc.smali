.class public final Lcom/google/android/gms/internal/gtm/zzlc;
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

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v2

    .line 4
    aget-object p2, p2, p1

    .line 5
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez v1, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v1, :cond_2

    .line 6
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 7
    :cond_2
    instance-of v1, p2, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v1, :cond_4

    .line 8
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object p2, v1

    .line 9
    :cond_4
    instance-of v1, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v1, :cond_5

    instance-of v1, p2, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez v1, :cond_6

    .line 10
    :cond_5
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_7

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p2

    xor-int/lit8 v2, p2, 0x1

    .line 13
    :cond_7
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1
.end method
