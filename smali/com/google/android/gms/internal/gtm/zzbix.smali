.class public final Lcom/google/android/gms/internal/gtm/zzbix;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzbix;


# instance fields
.field private zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbfp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbix$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbix$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbix;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbix$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbix$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbix;->zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbix;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbix;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbix;->zzf:Lcom/google/android/gms/internal/gtm/zzbix;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbix;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbix;->zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbix;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbix;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbix;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbix;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbix;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbix;->zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbff;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbix;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbix;->zzf:Lcom/google/android/gms/internal/gtm/zzbix;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbix;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbix;->zzf:Lcom/google/android/gms/internal/gtm/zzbix;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbix;->zzf:Lcom/google/android/gms/internal/gtm/zzbix;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbiy;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbiy;-><init>(Lcom/google/android/gms/internal/gtm/zzbiu;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbix;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbix;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzg"

    aput-object v4, p1, v3

    const-string v3, "zzh"

    aput-object v3, p1, p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbjc;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const-string p2, "zzk"

    aput-object p2, p1, v0

    const-string p2, "zzi"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbjf;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbix;->zzf:Lcom/google/android/gms/internal/gtm/zzbix;

    const-string p3, "\u0001\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0005\u0000\u0001\u001a\u0002\u001e\u0003\u0016\u0004\u001a\u0005,"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbix;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
