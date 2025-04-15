.class public final Lcom/google/android/gms/internal/gtm/zzakp;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzakp;


# instance fields
.field private zzb:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:Lcom/google/android/gms/internal/gtm/zzaky;

.field private zzj:Ljava/lang/String;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzl:I

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/lang/String;

.field private zzp:Ljava/lang/String;

.field private zzq:Ljava/lang/String;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzs:Ljava/lang/String;

.field private zzt:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzakp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzakp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzakp;->zza:Lcom/google/android/gms/internal/gtm/zzakp;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzakp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzt:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzj:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzakp;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    const/16 v1, 0x1111

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzl:I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzn:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzo:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzp:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzq:Ljava/lang/String;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzakp;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzs:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzakp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzakp;->zza:Lcom/google/android/gms/internal/gtm/zzakp;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzt:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzakp;->zza:Lcom/google/android/gms/internal/gtm/zzakp;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzako;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzako;-><init>(Lcom/google/android/gms/internal/gtm/zzakn;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzakp;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzakp;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x12

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    .line 2
    const-class p3, Lcom/google/android/gms/internal/gtm/zzarv;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaks;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

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

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-class p3, Lcom/google/android/gms/internal/gtm/zzayv;

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzs"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzakp;->zza:Lcom/google/android/gms/internal/gtm/zzakp;

    const-string p3, "\u0001\u000e\u0000\u0001\u0001\u000f\u000e\u0000\u0002\u0003\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1004\u0002\u0004\u1409\u0003\u0006\u041b\u0007\u100c\u0005\u0008\u1008\u0006\t\u1008\u0007\n\u1008\u0008\u000b\u1008\t\u000c\u1008\n\r\u1008\u0004\u000e\u041b\u000f\u1008\u000b"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzakp;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzakp;->zzt:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
