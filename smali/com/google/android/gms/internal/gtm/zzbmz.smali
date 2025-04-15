.class public final Lcom/google/android/gms/internal/gtm/zzbmz;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbmz;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbbw;

.field private zzi:I

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbng;

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbmz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbmz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbmz;->zza:Lcom/google/android/gms/internal/gtm/zzbmz;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbmz;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbmz;->zzf:I

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbbw;->zzb:Lcom/google/android/gms/internal/gtm/zzbbw;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbmz;->zzh:Lcom/google/android/gms/internal/gtm/zzbbw;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbmz;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbmz;->zza:Lcom/google/android/gms/internal/gtm/zzbmz;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbmz;->zza:Lcom/google/android/gms/internal/gtm/zzbmz;

    return-object p1

    .line 8
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbmy;

    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbmy;-><init>(Lcom/google/android/gms/internal/gtm/zzbmo;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbmz;

    .line 8
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbmz;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbqt;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbqw;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbrf;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzj"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbqq;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbmz;->zza:Lcom/google/android/gms/internal/gtm/zzbmz;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001\u0003\u100a\u0002\u0004\u100c\u0003\u0005\u1009\u0004\u0006\u100c\u0005"

    .line 6
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbmz;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
