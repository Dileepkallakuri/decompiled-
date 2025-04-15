.class public final Lcom/google/android/gms/internal/gtm/zzbaw;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbaw;


# instance fields
.field private zzf:I

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbaw;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzbaw;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzbaw;->zzb:Lcom/google/android/gms/internal/gtm/zzbaw;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzbaw;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbmd;->zze()Lcom/google/android/gms/internal/gtm/zzbmd;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x361d84

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzbaw;

    move-object v1, v2

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbaw;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbaw;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbaw;->zzi:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzbaw;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbaw;->zzk:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzbaw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbaw;->zzb:Lcom/google/android/gms/internal/gtm/zzbaw;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbaw;->zzb:Lcom/google/android/gms/internal/gtm/zzbaw;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbav;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbav;-><init>(Lcom/google/android/gms/internal/gtm/zzbau;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbaw;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbaw;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

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

    const-string p2, "zzk"

    aput-object p2, p1, p3

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbaw;->zzb:Lcom/google/android/gms/internal/gtm/zzbaw;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u1008\u0003"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbaw;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
