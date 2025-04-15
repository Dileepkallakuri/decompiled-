.class public final Lcom/google/android/gms/internal/gtm/zzbqb;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbqb;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbox;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbqe;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbpj;

.field private zzm:Lcom/google/android/gms/internal/gtm/zzbpm;

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbpa;

.field private zzo:Lcom/google/android/gms/internal/gtm/zzbpp;

.field private zzp:Lcom/google/android/gms/internal/gtm/zzbqh;

.field private zzq:Lcom/google/android/gms/internal/gtm/zzbpg;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbou;

.field private zzs:Lcom/google/android/gms/internal/gtm/zzbpd;

.field private zzt:Lcom/google/android/gms/internal/gtm/zzbpy;

.field private zzu:I

.field private zzv:Lcom/google/android/gms/internal/gtm/zzbpv;

.field private zzw:Lcom/google/android/gms/internal/gtm/zzbng;

.field private zzx:Lcom/google/android/gms/internal/gtm/zzbbe;

.field private zzy:I

.field private zzz:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbqb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbqb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbqb;->zza:Lcom/google/android/gms/internal/gtm/zzbqb;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbqb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbqb;->zzz:B

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbqb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbqb;->zza:Lcom/google/android/gms/internal/gtm/zzbqb;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbqb;->zzz:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbqb;->zza:Lcom/google/android/gms/internal/gtm/zzbqb;

    return-object p1

    .line 9
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbqa;

    .line 8
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbqa;-><init>(Lcom/google/android/gms/internal/gtm/zzbpz;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbqb;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbqb;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x19

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbrf;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbqw;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbrc;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbqz;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbne;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbqb;->zza:Lcom/google/android/gms/internal/gtm/zzbqb;

    const-string p3, "\u0001\u0013\u0000\u0001\u0001+\u0013\u0000\u0000\u0002\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u100c\u0002\u000c\u1009\u0003\r\u1009\u0004\u000e\u1009\u0005\u000f\u1009\u0006\u0012\u1009\u0007\u0015\u1009\u0008\u0016\u1009\t\u0017\u1409\n\u0018\u1009\u000b\u0019\u1009\u000c\u001e\u1009\r\u001f\u100c\u000e(\u1409\u000f)\u1009\u0010*\u1009\u0011+\u100c\u0012"

    .line 7
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbqb;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbqb;->zzz:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
