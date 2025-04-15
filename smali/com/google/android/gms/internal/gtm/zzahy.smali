.class public final Lcom/google/android/gms/internal/gtm/zzahy;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzahy;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzaie;

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzahy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzahy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzahy;->zza:Lcom/google/android/gms/internal/gtm/zzahy;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzahy;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzahy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzahy;->zza:Lcom/google/android/gms/internal/gtm/zzahy;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzahy;->zza:Lcom/google/android/gms/internal/gtm/zzahy;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahx;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzahx;-><init>(Lcom/google/android/gms/internal/gtm/zzahw;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzahy;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzwu;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbki;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzahy;->zza:Lcom/google/android/gms/internal/gtm/zzahy;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u1009\u0001\u0003\u100c\u0002"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzahy;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
