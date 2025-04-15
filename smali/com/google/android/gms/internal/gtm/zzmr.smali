.class public final Lcom/google/android/gms/internal/gtm/zzmr;
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
    .locals 10

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

    if-ne v1, v0, :cond_1

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 5
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 6
    :cond_1
    aget-object v5, p2, v0

    invoke-static {v5}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    if-ge v1, v2, :cond_2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzrd;->zze:Lcom/google/android/gms/internal/gtm/zzrd;

    goto :goto_1

    .line 7
    :cond_2
    aget-object p2, p2, v6

    .line 8
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 9
    invoke-direct {p1, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_3
    instance-of v7, p2, Lcom/google/android/gms/internal/gtm/zzrc;

    if-eqz v7, :cond_4

    .line 11
    check-cast p2, Lcom/google/android/gms/internal/gtm/zzrc;

    .line 12
    invoke-virtual {p2}, Lcom/google/android/gms/internal/gtm/zzrc;->zzi()Lcom/google/android/gms/internal/gtm/zzjw;

    move-result-object p2

    new-array v2, v2, [Lcom/google/android/gms/internal/gtm/zzqz;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {v7, v5}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    aput-object v7, v2, v3

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzrb;

    int-to-double v8, v1

    .line 13
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    aput-object v7, v2, v0

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    aput-object v0, v2, v6

    .line 14
    invoke-interface {p2, p1, v2}, Lcom/google/android/gms/internal/gtm/zzjw;->zzd(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;

    move-result-object p2

    .line 15
    :cond_4
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/gtm/zzrk;

    .line 16
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzrk;-><init>(Ljava/lang/String;)V

    return-object p2
.end method
