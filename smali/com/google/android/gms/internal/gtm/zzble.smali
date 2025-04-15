.class public final Lcom/google/android/gms/internal/gtm/zzble;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzble;


# instance fields
.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:I

.field private zzk:J

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzm:Z

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/gtm/zzbtd;

.field private zzp:Ljava/lang/String;

.field private zzq:Lcom/google/android/gms/internal/gtm/zzbso;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbsu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzble$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzble$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzble;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzble;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzble;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzble;->zzb:Lcom/google/android/gms/internal/gtm/zzble;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzble;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzble;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzble;->zzh:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzble;->zzj:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzble;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzble;->zzl:Lcom/google/android/gms/internal/gtm/zzbfl;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzble;->zzp:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzble;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzble;->zzb:Lcom/google/android/gms/internal/gtm/zzble;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzble;->zzb:Lcom/google/android/gms/internal/gtm/zzble;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzblf;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzblf;-><init>(Lcom/google/android/gms/internal/gtm/zzbku;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzble;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzble;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzf"

    aput-object v4, p1, v3

    const-string v3, "zzg"

    aput-object v3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbll;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbli;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

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

    const-string p3, "zzr"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzble;->zzb:Lcom/google/android/gms/internal/gtm/zzble;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u100c\u0003\u0005\u1003\u0004\u0006\u001e\u0007\u1007\u0005\u0008\u1004\u0006\t\u1009\u0007\n\u1008\u0008\u000b\u1009\t\u000c\u1009\n"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzble;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
