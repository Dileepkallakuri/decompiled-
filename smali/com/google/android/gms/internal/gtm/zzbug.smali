.class public final Lcom/google/android/gms/internal/gtm/zzbug;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbug;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/gtm/zzbub;

.field private zzB:J

.field private zzC:B

.field private zzf:I

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbti;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbtu;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbtz;

.field private zzm:Lcom/google/android/gms/internal/gtm/zzbui;

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbun;

.field private zzo:Lcom/google/android/gms/internal/gtm/zzbus;

.field private zzp:Lcom/google/android/gms/internal/gtm/zzbva;

.field private zzq:Lcom/google/android/gms/internal/gtm/zzbvc;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbvo;

.field private zzs:Lcom/google/android/gms/internal/gtm/zzbvq;

.field private zzt:Lcom/google/android/gms/internal/gtm/zzbvs;

.field private zzu:Lcom/google/android/gms/internal/gtm/zzbvx;

.field private zzv:Lcom/google/android/gms/internal/gtm/zzbvz;

.field private zzw:Lcom/google/android/gms/internal/gtm/zzbwb;

.field private zzx:Lcom/google/android/gms/internal/gtm/zzbwg;

.field private zzy:Lcom/google/android/gms/internal/gtm/zzbwl;

.field private zzz:Lcom/google/android/gms/internal/gtm/zzbwn;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbug;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzbug;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzbug;->zzb:Lcom/google/android/gms/internal/gtm/zzbug;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbug;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbmd;->zze()Lcom/google/android/gms/internal/gtm/zzbmd;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x3f3fd17

    .line 3
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzbug;

    move-object v1, v2

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbug;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbug;->zzC:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbug;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbug;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbug;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbug;->zzb:Lcom/google/android/gms/internal/gtm/zzbug;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbug;->zzC:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbug;->zzb:Lcom/google/android/gms/internal/gtm/zzbug;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbuc;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbuc;-><init>(Lcom/google/android/gms/internal/gtm/zzbte;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbug;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbug;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x18

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbuf;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "zzj"

    aput-object p2, p1, v3

    const-string p2, "zzm"

    aput-object p2, p1, v2

    const-string p2, "zzq"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzo"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbug;->zzb:Lcom/google/android/gms/internal/gtm/zzbug;

    const-string p3, "\u0001\u0016\u0000\u0001\u0001\u0019\u0016\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u1409\u0003\u0003\u1009\u0006\u0004\u1009\n\u0005\u1009\u000f\u0006\u1008\u0001\u0007\u1008\u0002\u0008\u1009\u0012\t\u1009\u0014\n\u1009\u000e\u000b\u1009\u000b\u000c\u1002\u0015\r\u1009\r\u000e\u1009\u0005\u000f\u1009\u0013\u0010\u1009\t\u0012\u1009\u0011\u0014\u1009\u000c\u0016\u1009\u0004\u0017\u1009\u0010\u0018\u1009\u0007\u0019\u1009\u0008"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbug;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbug;->zzC:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
