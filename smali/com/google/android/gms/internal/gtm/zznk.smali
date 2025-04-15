.class public final Lcom/google/android/gms/internal/gtm/zznk;
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

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v0, p2, v1

    instance-of v0, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 4
    aget-object v0, p2, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v0

    .line 5
    aget-object v3, p2, v1

    check-cast v3, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x65

    const/4 v6, 0x3

    if-eq v4, v5, :cond_4

    const/16 v5, 0x69

    if-eq v4, v5, :cond_3

    const/16 v5, 0x76

    if-eq v4, v5, :cond_2

    const/16 v5, 0x77

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "w"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v6

    goto :goto_2

    :cond_2
    const-string v4, "v"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_3
    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, p1

    goto :goto_2

    :cond_4
    const-string v4, "e"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v3, -0x1

    :goto_2
    if-eqz v3, :cond_9

    if-eq v3, p1, :cond_8

    if-eq v3, v2, :cond_7

    if-ne v3, v6, :cond_6

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zze(Ljava/lang/String;)V

    goto :goto_3

    .line 5
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    aget-object p2, p2, v1

    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 11
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "Invalid logging level: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_7
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzd(Ljava/lang/String;)V

    goto :goto_3

    .line 8
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zzc(Ljava/lang/String;)V

    goto :goto_3

    .line 9
    :cond_9
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzho;->zza(Ljava/lang/String;)V

    .line 6
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    return-object p1
.end method
