.class public final Lcom/google/android/gms/internal/gtm/zzbva;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbva;


# instance fields
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

.field private zzq:I

.field private zzr:Ljava/lang/String;

.field private zzs:Z

.field private zzt:I

.field private zzu:I

.field private zzv:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbva;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbva;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbva;->zza:Lcom/google/android/gms/internal/gtm/zzbva;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbva;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbva;->zzr:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbva;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbva;->zza:Lcom/google/android/gms/internal/gtm/zzbva;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbva;->zza:Lcom/google/android/gms/internal/gtm/zzbva;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbuw;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbuw;-><init>(Lcom/google/android/gms/internal/gtm/zzbte;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbva;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbva;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x15

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzg"

    aput-object v3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzl"

    aput-object p2, p1, v1

    const-string p2, "zzm"

    aput-object p2, p1, v0

    const-string p2, "zzn"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbuv;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zztq;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbuz;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbva;->zza:Lcom/google/android/gms/internal/gtm/zzbva;

    const-string p3, "\u0001\u0011\u0000\u0001\u0001\u0012\u0011\u0000\u0000\u0000\u0001\u1008\u0001\u0002\u1008\u0002\u0003\u1008\u0006\u0004\u1008\u0007\u0005\u1008\u0008\u0006\u1008\t\u0007\u1008\n\u0008\u100c\u000b\t\u1008\u0000\u000b\u1008\u000c\u000c\u1007\r\r\u100c\u000e\u000e\u100c\u000f\u000f\u1007\u0010\u0010\u1008\u0003\u0011\u1008\u0005\u0012\u1008\u0004"

    .line 5
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbva;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
