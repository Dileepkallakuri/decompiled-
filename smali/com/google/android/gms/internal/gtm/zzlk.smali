.class public final Lcom/google/android/gms/internal/gtm/zzlk;
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
    .locals 2

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzri;

    xor-int/2addr v0, p1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v0

    xor-int/2addr p1, v0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 5
    aget-object p1, p2, v1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p1, p2, :cond_1

    const-string p1, "undefined"

    goto :goto_1

    .line 6
    :cond_1
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzra;

    if-eqz p2, :cond_2

    const-string p1, "boolean"

    goto :goto_1

    .line 7
    :cond_2
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz p2, :cond_3

    const-string p1, "number"

    goto :goto_1

    .line 8
    :cond_3
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz p2, :cond_4

    const-string p1, "string"

    goto :goto_1

    .line 9
    :cond_4
    instance-of p1, p1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz p1, :cond_5

    const-string p1, "function"

    goto :goto_1

    :cond_5
    const-string p1, "object"

    .line 10
    :goto_1
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
