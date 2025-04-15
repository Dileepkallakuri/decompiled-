.class public final Lcom/google/android/gms/internal/gtm/zzbti;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbti;


# instance fields
.field private zzA:J

.field private zzB:I

.field private zzC:Lcom/google/android/gms/internal/gtm/zzsu;

.field private zzD:Lcom/google/android/gms/internal/gtm/zzta;

.field private zzE:Z

.field private zzF:Z

.field private zzG:I

.field private zzH:Lcom/google/android/gms/internal/gtm/zzbtk;

.field private zzI:Lcom/google/android/gms/internal/gtm/zztw;

.field private zzJ:Ljava/lang/String;

.field private zzK:Ljava/lang/String;

.field private zzL:Ljava/lang/String;

.field private zzM:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzN:I

.field private zzO:Lcom/google/android/gms/internal/gtm/zzbom;

.field private zzP:J

.field private zzQ:B

.field private zzf:I

.field private zzg:I

.field private zzh:J

.field private zzi:Ljava/lang/String;

.field private zzj:J

.field private zzk:I

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/lang/String;

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:Ljava/lang/String;

.field private zzw:Ljava/lang/String;

.field private zzx:Ljava/lang/String;

.field private zzy:Ljava/lang/String;

.field private zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbti;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbti;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbti;->zza:Lcom/google/android/gms/internal/gtm/zzbti;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbti;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzQ:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzi:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbti;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzu:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzv:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzw:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzx:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzz:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzJ:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzK:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzL:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzM:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbti;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbti;->zza:Lcom/google/android/gms/internal/gtm/zzbti;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzQ:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbti;->zza:Lcom/google/android/gms/internal/gtm/zzbti;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbtf;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbtf;-><init>(Lcom/google/android/gms/internal/gtm/zzbte;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbti;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbti;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x27

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzh"

    aput-object p2, p1, v4

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzk"

    aput-object p2, p1, v2

    const-string p2, "zzm"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbwq;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-class p3, Lcom/google/android/gms/internal/gtm/zzbth;

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzA"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbti;->zza:Lcom/google/android/gms/internal/gtm/zzbti;

    const-string p3, "\u0001#\u0000\u0002\u0001&#\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1004\u0003\u0004\u1008\u0004\u0005\u1008\u0005\u0006\u1008\u0008\u0007\u1008\t\u0008\u1008\u0006\t\u1008\u0007\n\u1008\n\u000b\u1008\u000b\u000c\u1008\u000c\r\u1008\r\u000e\u1008\u000e\u000f\u1008\u000f\u0010\u1008\u0010\u0011\u1008\u0011\u0012\u1002\u0002\u0013\u1004\u0013\u0014\u1007\u0016\u0016\u1007\u0017\u0017\u100c\u0018\u0018\u1009\u0019\u0019\u1009\u001a\u001a\u1008\u001b\u001b\u1008\u001c\u001c\u1008\u001d\u001f\u001a \u1009\u0014!\u1004\u001e\"\u001b#\u1009\u001f$\u1003 %\u1009\u0015&\u1002\u0012"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbti;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbti;->zzQ:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
