.class public final Lcom/google/android/gms/internal/gtm/zzoo;
.super Lcom/google/android/gms/internal/gtm/zzjy;
.source "com.google.android.gms:play-services-tagmanager@@18.0.2"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzrb;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzrb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzoo;->zza:Lcom/google/android/gms/internal/gtm/zzrb;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzrb;

    const-wide v1, 0x41dfffffffc00000L    # 2.147483647E9

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzoo;->zzb:Lcom/google/android/gms/internal/gtm/zzrb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzjy;-><init>()V

    return-void
.end method

.method private static final zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/gtm/zzrb;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final varargs zza(Lcom/google/android/gms/internal/gtm/zzie;[Lcom/google/android/gms/internal/gtm/zzqz;)Lcom/google/android/gms/internal/gtm/zzqz;
    .locals 6

    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    aget-object v1, p2, v1

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/gtm/zzoo;->zza:Lcom/google/android/gms/internal/gtm/zzrb;

    :goto_0
    if-le v0, p1, :cond_1

    .line 3
    aget-object p1, p2, p1

    goto :goto_1

    .line 9
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzoo;->zzb:Lcom/google/android/gms/internal/gtm/zzrb;

    .line 4
    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/internal/gtm/zzoo;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p2

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_2

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/gtm/zzoo;->zzb(Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 6
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/gtm/zzjx;->zzf(Lcom/google/android/gms/internal/gtm/zzqz;Lcom/google/android/gms/internal/gtm/zzqz;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    .line 8
    check-cast p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzrb;->zzi()Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 9
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzrb;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzrb;-><init>(Ljava/lang/Double;)V

    return-object p1
.end method
