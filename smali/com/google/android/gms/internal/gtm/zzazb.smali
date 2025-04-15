.class public final Lcom/google/android/gms/internal/gtm/zzazb;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field public static final zzb:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzazb;


# instance fields
.field private zzg:I

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbbw;

.field private zzi:Ljava/lang/String;

.field private zzj:I

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzazb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzazb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzazb;->zzf:Lcom/google/android/gms/internal/gtm/zzazb;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzazb;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbcz;->zze()Lcom/google/android/gms/internal/gtm/zzbcz;

    move-result-object v2

    const/4 v0, 0x0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xc7c5067

    sget-object v7, Lcom/google/android/gms/internal/gtm/zzbip;->zze:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v8, Ljava/lang/Integer;

    move-object v3, v0

    .line 5
    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzazb;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbcz;->zze()Lcom/google/android/gms/internal/gtm/zzbcz;

    move-result-object v3

    const/4 v6, 0x0

    const v7, 0x12b516c6

    sget-object v8, Lcom/google/android/gms/internal/gtm/zzbip;->zze:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v9, Ljava/lang/Integer;

    move-object v4, v0

    .line 6
    invoke-static/range {v3 .. v9}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzazb;->zzb:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbbw;->zzb:Lcom/google/android/gms/internal/gtm/zzbbw;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzazb;->zzh:Lcom/google/android/gms/internal/gtm/zzbbw;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzazb;->zzi:Ljava/lang/String;

    const v1, 0x117dc

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzazb;->zzj:I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzazb;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzazb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzazb;->zzf:Lcom/google/android/gms/internal/gtm/zzazb;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzazb;->zzf:Lcom/google/android/gms/internal/gtm/zzazb;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaza;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzaza;-><init>(Lcom/google/android/gms/internal/gtm/zzayz;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzazb;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzazb;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzg"

    aput-object v3, p1, p3

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzazb;->zzf:Lcom/google/android/gms/internal/gtm/zzazb;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0006\u0004\u0000\u0000\u0000\u0001\u100a\u0000\u0002\u1008\u0001\u0003\u1008\u0003\u0006\u1004\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzazb;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
