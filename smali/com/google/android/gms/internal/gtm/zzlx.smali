.class public final Lcom/google/android/gms/internal/gtm/zzlx;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzlx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzlx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzlx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzlx;->zza:Lcom/google/android/gms/internal/gtm/zzlx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 8

    const/4 p1, 0x1

    .line 10
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v1, p2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 2
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 3
    aget-object v1, p2, v3

    .line 4
    aget-object p2, p2, p1

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    xor-int/2addr v2, p1

    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzrl;->zzi(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result v2

    xor-int/2addr p1, v2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 7
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzd(Lcom/google/android/gms/internal/gtm/zzqz;)Ljava/lang/String;

    move-result-object p1

    .line 8
    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzrg;

    const-string v4, "length"

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 11
    :cond_1
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    cmpl-double p2, v2, v4

    if-nez p2, :cond_5

    double-to-int p2, v2

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ltz p2, :cond_5

    .line 14
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/gtm/zzrg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/gtm/zzrg;->zzk()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p2, v2, :cond_5

    .line 15
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 16
    :cond_2
    instance-of v2, v1, Lcom/google/android/gms/internal/gtm/zzrk;

    if-eqz v2, :cond_5

    .line 18
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 20
    :cond_3
    invoke-static {p2}, Lcom/google/android/gms/internal/gtm/zzjx;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)D

    move-result-wide v4

    .line 21
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    cmpl-double p2, v4, v6

    if-nez p2, :cond_4

    double-to-int p2, v4

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-ltz p2, :cond_4

    .line 23
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrk;->zzk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ge p2, p1, :cond_4

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 24
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p1

    .line 17
    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/gtm/zzra;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/gtm/zzqz;->zzh(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/gtm/zzra;-><init>(Ljava/lang/Boolean;)V

    return-object p2
.end method
