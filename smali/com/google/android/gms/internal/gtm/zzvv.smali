.class public final Lcom/google/android/gms/internal/gtm/zzvv;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzvv;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzvi;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzi:J

.field private zzj:I

.field private zzk:B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzvv;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzvv;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzvv;->zzb:Lcom/google/android/gms/internal/gtm/zzvv;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzvv;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbmd;->zze()Lcom/google/android/gms/internal/gtm/zzbmd;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x6de32bc

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzvv;

    move-object v1, v2

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzvv;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzvv;->zzk:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvv;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzvv;->zzh:Lcom/google/android/gms/internal/gtm/zzbfp;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzvv;->zzj:I

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzvv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzvv;->zzb:Lcom/google/android/gms/internal/gtm/zzvv;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzvv;->zzk:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzvv;->zzb:Lcom/google/android/gms/internal/gtm/zzvv;

    return-object p1

    .line 5
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzvr;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzvr;-><init>(Lcom/google/android/gms/internal/gtm/zzve;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzvv;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzvv;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    aput-object p2, p1, p3

    const-string p2, "zzh"

    aput-object p2, p1, v4

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzwc;

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzvu;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzvv;->zzb:Lcom/google/android/gms/internal/gtm/zzvv;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0002\u0001\u1409\u0000\u0002\u041b\u0003\u1002\u0001\u0004\u100c\u0002"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzvv;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzvv;->zzk:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
