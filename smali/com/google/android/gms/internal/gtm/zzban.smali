.class public final Lcom/google/android/gms/internal/gtm/zzban;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzban;


# instance fields
.field private zzf:I

.field private zzg:D

.field private zzh:F

.field private zzi:J

.field private zzj:J

.field private zzk:I

.field private zzl:J

.field private zzm:I

.field private zzn:Z

.field private zzo:Ljava/lang/String;

.field private zzp:Lcom/google/android/gms/internal/gtm/zzbbw;

.field private zzq:I

.field private zzr:I

.field private zzs:J

.field private zzt:I

.field private zzu:J

.field private zzv:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzban;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzban;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzban;->zza:Lcom/google/android/gms/internal/gtm/zzban;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzban;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzban;->zzv:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzban;->zzo:Ljava/lang/String;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbbw;->zzb:Lcom/google/android/gms/internal/gtm/zzbbw;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzban;->zzp:Lcom/google/android/gms/internal/gtm/zzbbw;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzban;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzban;->zza:Lcom/google/android/gms/internal/gtm/zzban;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzban;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzban;->zza:Lcom/google/android/gms/internal/gtm/zzban;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzban;->zzv:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzban;->zza:Lcom/google/android/gms/internal/gtm/zzban;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbam;

    .line 3
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbam;-><init>(Lcom/google/android/gms/internal/gtm/zzbaj;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzban;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzban;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x10

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzh"

    aput-object p2, p1, v4

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzu"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzban;->zza:Lcom/google/android/gms/internal/gtm/zzban;

    const-string p3, "\u0001\u000f\u0000\u0001\u0001\u0012\u000f\u0000\u0000\u0000\u0001\u1000\u0000\u0002\u1001\u0001\u0003\u1002\u0002\u0004\u1003\u0003\u0005\u1004\u0004\u0006\u1005\u0005\u0007\u1006\u0006\u0008\u1007\u0007\t\u1008\u0008\u000c\u100a\t\r\u100b\n\u000f\u100d\u000b\u0010\u100e\u000c\u0011\u100f\r\u0012\u1010\u000e"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzban;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzban;->zzv:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
