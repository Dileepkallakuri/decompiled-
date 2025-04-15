.class public final Lcom/google/android/gms/internal/gtm/zzmv;
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
    .locals 8

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lez v1, :cond_0

    if-gt v1, v2, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2
    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v4, p2, v3

    instance-of v4, v4, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v4, p2, v3

    check-cast v4, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_1

    .line 5
    :cond_1
    aget-object v0, p2, v0

    .line 6
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v6

    double-to-int v0, v6

    .line 7
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v2, :cond_2

    .line 8
    aget-object p2, p2, v5

    sget-object v1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p2, v1, :cond_2

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzc(Lcom/google/android/gms/internal/gtm/zzie;Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zza(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide p1

    double-to-int v6, p1

    .line 10
    :cond_2
    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 11
    invoke-static {v6, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 12
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v4, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
