.class public final Lcom/google/android/gms/internal/gtm/zzaxi;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzaxi;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzg:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaxi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaxi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaxi;->zza:Lcom/google/android/gms/internal/gtm/zzaxi;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzaxi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzaxi;->zzg:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaxi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaxi;->zzb:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaxi;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaxi;->zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzaxi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaxi;->zza:Lcom/google/android/gms/internal/gtm/zzaxi;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzaxi;->zzg:B

    return-object v2

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzaxi;->zza:Lcom/google/android/gms/internal/gtm/zzaxi;

    return-object p1

    .line 4
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaxh;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/gtm/zzaxh;-><init>(Lcom/google/android/gms/internal/gtm/zzaxe;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaxi;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzaxi;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzaxg;

    aput-object p2, p1, p3

    const-string p2, "zzf"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzaxi;->zza:Lcom/google/android/gms/internal/gtm/zzaxi;

    const-string p3, "\u0001\u0002\u0000\u0000\u0007\u0008\u0002\u0000\u0002\u0001\u0007\u041b\u0008\u0016"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzaxi;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzaxi;->zzg:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
