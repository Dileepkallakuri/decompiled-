.class public final Lcom/google/android/gms/internal/gtm/zzadp;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzadp;


# instance fields
.field private zzb:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbem;

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzadp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzadp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzadp;->zza:Lcom/google/android/gms/internal/gtm/zzadp;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzadp;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzadp;->zzf:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzadp;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzadp;->zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzadp;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzadp;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzadp;->zza:Lcom/google/android/gms/internal/gtm/zzadp;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzadp;->zza:Lcom/google/android/gms/internal/gtm/zzadp;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzado;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzado;-><init>(Lcom/google/android/gms/internal/gtm/zzacm;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzadp;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzadp;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzadr;

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzadp;->zza:Lcom/google/android/gms/internal/gtm/zzadp;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1009\u0001\u0004\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzadp;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
