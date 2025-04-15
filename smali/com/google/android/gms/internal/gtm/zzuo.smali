.class public final Lcom/google/android/gms/internal/gtm/zzuo;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzuo;


# instance fields
.field private zzb:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzuq;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzuq;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbnj;

.field private zzm:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzuo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzuo;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzuo;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzm:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzuo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzuo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzm:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuh;

    .line 5
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzuh;-><init>(Lcom/google/android/gms/internal/gtm/zzug;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzuo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzuo;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzuk;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzun;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzuo;->zza:Lcom/google/android/gms/internal/gtm/zzuo;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\t\u0007\u0000\u0000\u0001\u0001\u1008\u0000\u0002\u1009\u0001\u0003\u1009\u0002\u0004\u100c\u0004\u0005\u100c\u0005\u0006\u1008\u0003\t\u1409\u0006"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzuo;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzuo;->zzm:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
