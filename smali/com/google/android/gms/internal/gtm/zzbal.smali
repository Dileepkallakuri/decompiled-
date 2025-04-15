.class public final Lcom/google/android/gms/internal/gtm/zzbal;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbal;


# instance fields
.field private zzA:Z

.field private zzB:Ljava/lang/String;

.field private zzC:Z

.field private zzD:Ljava/lang/String;

.field private zzE:Ljava/lang/String;

.field private zzF:Ljava/lang/String;

.field private zzG:Ljava/lang/String;

.field private zzH:Z

.field private zzI:Ljava/lang/String;

.field private zzJ:Ljava/lang/String;

.field private zzK:I

.field private zzL:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzM:Z

.field private zzb:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Ljava/lang/String;

.field private zzs:Ljava/lang/String;

.field private zzt:Ljava/lang/String;

.field private zzu:Ljava/lang/String;

.field private zzv:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzw:Z

.field private zzx:Z

.field private zzy:Ljava/lang/String;

.field private zzz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbal;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbal;->zza:Lcom/google/android/gms/internal/gtm/zzbal;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbal;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzr:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzt:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzu:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbal;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzv:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzB:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzD:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzE:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzF:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzG:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzI:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzJ:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbal;->zzL:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzbal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbal;->zza:Lcom/google/android/gms/internal/gtm/zzbal;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbal;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbal;->zza:Lcom/google/android/gms/internal/gtm/zzbal;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbal;->zza:Lcom/google/android/gms/internal/gtm/zzbal;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbak;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbak;-><init>(Lcom/google/android/gms/internal/gtm/zzbaj;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbal;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbal;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x24

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzl"

    aput-object p2, p1, v2

    const-string p2, "zzm"

    aput-object p2, p1, v1

    const-string p2, "zzn"

    aput-object p2, p1, v0

    const-string p2, "zzo"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 2
    const-class p3, Lcom/google/android/gms/internal/gtm/zzbal;

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzH"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbal;->zza:Lcom/google/android/gms/internal/gtm/zzbal;

    const-string p3, "\u0001\"\u0000\u0001\u0001/\"\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u1008\u0006\u0007\u1008\u0007\u0008\u1008\u0008\n\u1008\t\u000b\u1008\u0004\u000e\u1008\u000b\u000f\u1008\u000e\u0010\u1008\u0005\u0011\u1008\u000f\u0013\u001b\u0014\u1007\u0010\u0015\u1008\u0001\u0016\u1008\u0002\u0017\u1008\u0003\u0018\u1008\u001c\u0019\u1008\u001d\u001b\u1004\u001e\u001e\u1008\u000c\u001f\u1008\r \u1007\u0011!\u1008\u0012\"\u1007\u0013#\u1007\u0014$\u1008\u0015%\u1007\u0016&\u1008\n\'\u001a(\u1008\u0017*\u1007\u001f+\u1008\u0018-\u1008\u0019.\u1008\u001a/\u1007\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbal;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
