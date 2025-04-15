.class public final Lcom/google/android/gms/internal/gtm/zzacr;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzacr;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:Ljava/lang/Object;

.field private zzh:I

.field private zzi:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzacr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzacr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzacr;->zza:Lcom/google/android/gms/internal/gtm/zzacr;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzacr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzacr;->zzf:I

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzacr;->zzi:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzacr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzacr;->zza:Lcom/google/android/gms/internal/gtm/zzacr;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzacr;->zzi:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzacr;->zza:Lcom/google/android/gms/internal/gtm/zzacr;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzacn;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzacn;-><init>(Lcom/google/android/gms/internal/gtm/zzacm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzacr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzacr;-><init>()V

    return-object p1

    :cond_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzb"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzacq;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/gtm/zzayv;

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzacr;->zza:Lcom/google/android/gms/internal/gtm/zzacr;

    const-string p3, "\u0001\u0002\u0001\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u100c\u0000\u0002\u143c\u0000"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzacr;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzacr;->zzi:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
