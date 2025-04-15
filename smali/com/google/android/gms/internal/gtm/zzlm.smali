.class public final Lcom/google/android/gms/internal/gtm/zzlm;
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

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x2

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
    aget-object v1, p2, v3

    instance-of v1, v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v1, p2, v3

    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/gtm/zzie;->zzf(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    aget-object v2, p2, v0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/gtm/zzie;->zze(Ljava/lang/String;Lcom/google/android/gms/internal/gtm/zzqz;)V

    .line 7
    aget-object p1, p2, v0

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Attempting to assign to undefined variable "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
