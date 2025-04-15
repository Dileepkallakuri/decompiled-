.class public final Lcom/google/android/gms/internal/gtm/zzapo;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzapo;


# instance fields
.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbmd;

.field private zzo:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzapo$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzapo$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzapo;->zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzapo;

    invoke-direct {v3}, Lcom/google/android/gms/internal/gtm/zzapo;-><init>()V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzapo;->zzf:Lcom/google/android/gms/internal/gtm/zzapo;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzapo;

    .line 2
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbmd;->zze()Lcom/google/android/gms/internal/gtm/zzbmd;

    move-result-object v1

    const/4 v4, 0x0

    const v5, 0x12660614

    .line 4
    sget-object v6, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v7, Lcom/google/android/gms/internal/gtm/zzapo;

    move-object v2, v3

    .line 5
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzapo;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzo:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzi:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzapo;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzapo;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzapo;->zzf:Lcom/google/android/gms/internal/gtm/zzapo;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzo:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzapo;->zzf:Lcom/google/android/gms/internal/gtm/zzapo;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzapp;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzapp;-><init>(Lcom/google/android/gms/internal/gtm/zzapn;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzapo;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzapo;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const-string p2, "zzi"

    aput-object p2, p1, v4

    const-string p2, "zzj"

    aput-object p2, p1, v3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaps;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzapo;->zzf:Lcom/google/android/gms/internal/gtm/zzapo;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u01f4\u0007\u0000\u0001\u0002\u0001\u1508\u0000\u0002\u1008\u0001\u0003\u001e\u0005\u1008\u0002\u0006\u1008\u0003\u000f\u1409\u0005\u01f4\u1009\u0004"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzapo;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzapo;->zzo:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
