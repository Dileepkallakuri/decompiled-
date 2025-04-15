.class public final Lcom/google/android/gms/internal/gtm/zzase;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzase;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzamq;

.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:F

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbmd;

.field private zzo:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzp:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzase;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzase;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzase;->zza:Lcom/google/android/gms/internal/gtm/zzase;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzase;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzp:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzf:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzj:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzase;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzase;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzase;->zza:Lcom/google/android/gms/internal/gtm/zzase;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzp:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzase;->zza:Lcom/google/android/gms/internal/gtm/zzase;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzasa;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzasa;-><init>(Lcom/google/android/gms/internal/gtm/zzarz;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzase;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzase;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xd

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzasd;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "zzg"

    aput-object p2, p1, v3

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lcom/google/android/gms/internal/gtm/zzapo;

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzase;->zza:Lcom/google/android/gms/internal/gtm/zzase;

    const-string p3, "\u0001\n\u0000\u0001\u0001\u01f4\n\u0000\u0001\u0004\u0001\u100c\u0000\u0002\u1409\u0001\u0003\u1504\u0002\u0004\u1008\u0003\u0005\u1001\u0005\u0006\u041b\u0007\u1007\u0006\u0008\u1008\u0004\u0010\u1409\u0007\u01f4\u1009\u0008"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzase;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzase;->zzp:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
