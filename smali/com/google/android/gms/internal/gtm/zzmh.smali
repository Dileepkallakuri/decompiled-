.class public final Lcom/google/android/gms/internal/gtm/zzmh;
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
    .locals 3

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
    aget-object p1, p2, p1

    .line 5
    instance-of p2, v0, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq v0, p2, :cond_1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne v0, p2, :cond_2

    :cond_1
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrd;

    if-eqz p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zzd:Lcom/google/android/gms/internal/gtm/zzrd;

    if-ne p1, p2, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal InternalType passed to Add."

    .line 15
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_3
    :goto_1
    instance-of p2, v0, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez p2, :cond_4

    instance-of p2, v0, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez p2, :cond_4

    instance-of p2, v0, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz p2, :cond_5

    .line 7
    :cond_4
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object v0, p2

    .line 8
    :cond_5
    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrh;

    if-nez p2, :cond_6

    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrg;

    if-nez p2, :cond_6

    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz p2, :cond_7

    .line 9
    :cond_6
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    .line 10
    :cond_7
    instance-of p2, v0, Lcom/google/android/gms/internal/gtm/zzrk;

    if-nez p2, :cond_9

    instance-of p2, p1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz p2, :cond_8

    goto :goto_2

    .line 14
    :cond_8
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzc(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p2

    .line 11
    :cond_9
    :goto_2
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
