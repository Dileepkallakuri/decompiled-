.class public final Lcom/google/android/gms/internal/gtm/zzacx;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzg:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzh:Lcom/google/android/gms/internal/gtm/zzacx;


# instance fields
.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzaqx;

.field private zzl:I

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzo:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzp:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzq:Lcom/google/android/gms/internal/gtm/zzaci;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzs:I

.field private zzt:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzu:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzv:Lcom/google/android/gms/internal/gtm/zzadi;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacx$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacx$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacx$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacx$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacx$3;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacx$3;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zzf:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacx$4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacx$4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zzg:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zzh:Lcom/google/android/gms/internal/gtm/zzacx;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzacx;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzn:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzo:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzp:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzr:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzt:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacx;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzacx;->zzu:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzacx;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzacx;->zzh:Lcom/google/android/gms/internal/gtm/zzacx;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzacx;->zzh:Lcom/google/android/gms/internal/gtm/zzacx;

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzacy;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzacy;-><init>(Lcom/google/android/gms/internal/gtm/zzacm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzacx;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzacx;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x16

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzi"

    aput-object v4, p1, v3

    const-string v3, "zzj"

    aput-object v3, p1, p2

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzaee;

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const-string p2, "zzl"

    aput-object p2, p1, v0

    const-string p2, "zzm"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzadl;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzade;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzade;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzadb;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-class p3, Lcom/google/android/gms/internal/gtm/zzadg;

    aput-object p3, p1, p2

    const/16 p2, 0x10

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacl;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    const-class p3, Lcom/google/android/gms/internal/gtm/zzady;

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzv"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzacx;->zzh:Lcom/google/android/gms/internal/gtm/zzacx;

    const-string p3, "\u0001\r\u0000\u0001\u0001\r\r\u0000\u0007\u0000\u0001\u001b\u0002\u1009\u0000\u0003\u1004\u0001\u0004\u100c\u0002\u0005\u001e\u0006\u001e\u0007\u001e\u0008\u1009\u0003\t\u001b\n\u1004\u0004\u000b\u001e\u000c\u001b\r\u1009\u0005"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzacx;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
