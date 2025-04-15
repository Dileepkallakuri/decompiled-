.class public final Lcom/google/android/gms/internal/gtm/zzbcz;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbcz;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Z

.field private zzi:I

.field private zzj:Z

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzo:Z

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzs:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbcz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbcz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbcz;->zza:Lcom/google/android/gms/internal/gtm/zzbcz;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbcz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzs:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhc;->zze()Lcom/google/android/gms/internal/gtm/zzbhc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzn:Lcom/google/android/gms/internal/gtm/zzbfp;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzp:Z

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhc;->zze()Lcom/google/android/gms/internal/gtm/zzbhc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbcz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbcz;->zza:Lcom/google/android/gms/internal/gtm/zzbcz;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbcz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbcz;->zza:Lcom/google/android/gms/internal/gtm/zzbcz;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzs:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbcz;->zza:Lcom/google/android/gms/internal/gtm/zzbcz;

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbcq;

    .line 5
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbcq;-><init>(Lcom/google/android/gms/internal/gtm/zzbcl;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbcz;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbcz;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x11

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbct;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzl"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbcw;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-class p3, Lcom/google/android/gms/internal/gtm/zzbcy;

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lcom/google/android/gms/internal/gtm/zzbei;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbcz;->zza:Lcom/google/android/gms/internal/gtm/zzbcz;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzbhd;

    const-string v0, "\u0001\u000c\u0000\u0001\u0001\u03e7\u000c\u0000\u0002\u0001\u0001\u100c\u0000\u0002\u1007\u0001\u0003\u1007\u0005\u0005\u1007\u0003\u0006\u100c\u0002\n\u1007\u0006\u000b\u001b\u000c\u1007\u0007\r\u1007\u0008\u000e\u1007\t\u000f\u1007\u0004\u03e7\u041b"

    .line 4
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhd;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbcz;->zzs:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
