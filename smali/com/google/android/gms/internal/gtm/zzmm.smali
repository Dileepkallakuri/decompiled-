.class public final Lcom/google/android/gms/internal/gtm/zzmm;
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

    if-eq v0, p1, :cond_1

    if-ne v0, v1, :cond_0

    move v3, p1

    move v0, v1

    goto :goto_0

    :cond_0
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, p1

    .line 2
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v3, p2, v2

    instance-of v3, v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v3, p2, v2

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v3

    if-ne v0, v1, :cond_2

    .line 5
    aget-object p1, p2, p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    double-to-int v2, p1

    :cond_2
    if-ltz v2, :cond_4

    .line 6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result p1

    if-lt v2, p1, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_4
    :goto_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    const-string p2, ""

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
