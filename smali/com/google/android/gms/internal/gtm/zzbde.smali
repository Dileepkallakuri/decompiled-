.class public final Lcom/google/android/gms/internal/gtm/zzbde;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbde;


# instance fields
.field private zzA:Z

.field private zzB:Z

.field private zzC:Z

.field private zzD:Z

.field private zzE:Z

.field private zzF:Ljava/lang/String;

.field private zzG:Ljava/lang/String;

.field private zzH:Ljava/lang/String;

.field private zzI:Ljava/lang/String;

.field private zzJ:Ljava/lang/String;

.field private zzK:Ljava/lang/String;

.field private zzL:Ljava/lang/String;

.field private zzM:Z

.field private zzN:Z

.field private zzO:Z

.field private zzP:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzQ:B

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:Z

.field private zzj:Ljava/lang/String;

.field private zzk:I

.field private zzl:Z

.field private zzm:Z

.field private zzn:Ljava/lang/String;

.field private zzo:Z

.field private zzp:Ljava/lang/String;

.field private zzq:Z

.field private zzr:Z

.field private zzs:Z

.field private zzt:Ljava/lang/String;

.field private zzu:I

.field private zzv:Ljava/lang/String;

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;

.field private zzy:I

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbde;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbde;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbde;->zza:Lcom/google/android/gms/internal/gtm/zzbde;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbde;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzQ:B

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzh:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzi:Z

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzj:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzk:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzl:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzm:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzn:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzp:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzt:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzu:I

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzv:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzw:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzx:Ljava/lang/String;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzy:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzE:Z

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzF:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzG:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzH:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzI:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzJ:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzK:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzL:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzN:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbhc;->zze()Lcom/google/android/gms/internal/gtm/zzbhc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzP:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbde;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbde;->zza:Lcom/google/android/gms/internal/gtm/zzbde;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbde;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbde;->zza:Lcom/google/android/gms/internal/gtm/zzbde;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzQ:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbde;->zza:Lcom/google/android/gms/internal/gtm/zzbde;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbda;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbda;-><init>(Lcom/google/android/gms/internal/gtm/zzbcl;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbde;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbde;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x27

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzj"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzk"

    aput-object p2, p1, v2

    const-string p2, "zzl"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbdd;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-class p3, Lcom/google/android/gms/internal/gtm/zzbei;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbde;->zza:Lcom/google/android/gms/internal/gtm/zzbde;

    new-instance p3, Lcom/google/android/gms/internal/gtm/zzbhd;

    const-string v0, "\u0001#\u0000\u0002\u0001\u03e7#\u0000\u0001\u0001\u0001\u1008\u0002\u0002\u1004\u0000\u0005\u1004\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1008\u0008\t\u100c\r\n\u1007\t\u000b\u1008\u000e\u000c\u1008\u0010\u000e\u1004\u0011\u0010\u1007\u0012\u0011\u1007\u0013\u0012\u1007\u0014\u0013\u1008\u0006\u0017\u1007\u0016\u0018\u1007\u0001\u001a\u1007\u0007\u001b\u1007\n\u001c\u1007\u000b\u001d\u1008\u000c\u001f\u1007\u0017$\u1008\u0018%\u1008\u0019\'\u1008\u001a(\u1008\u001b)\u1008\u001c*\u1007\u0015,\u1008\u001d-\u1008\u001e.\u1008\u000f/\u1007\u001f0\u1007 1\u1007!\u03e7\u041b"

    .line 3
    invoke-direct {p3, p2, v0, p1}, Lcom/google/android/gms/internal/gtm/zzbhd;-><init>(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbde;->zzQ:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
