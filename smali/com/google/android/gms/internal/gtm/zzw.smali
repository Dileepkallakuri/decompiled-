.class public final Lcom/google/android/gms/internal/gtm/zzw;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzw;


# instance fields
.field private zzb:I

.field private zzf:Ljava/lang/String;

.field private zzg:J

.field private zzh:J

.field private zzi:Z

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzw;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzf:Ljava/lang/String;

    const-wide/32 v0, 0x7fffffff

    iput-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzh:J

    return-void
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/gtm/zzw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    return-object v0
.end method


# virtual methods
.method public final zza()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzj:J

    return-wide v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzv;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzv;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzw;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzw;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzw;->zza:Lcom/google/android/gms/internal/gtm/zzw;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1007\u0003\u0005\u1002\u0004"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzw;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzh:J

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzg:J

    return-wide v0
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzi:Z

    return v0
.end method

.method public final zzh()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzw;->zzb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
