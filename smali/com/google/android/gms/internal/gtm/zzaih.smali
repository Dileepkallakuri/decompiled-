.class public final Lcom/google/android/gms/internal/gtm/zzaih;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzaih;


# instance fields
.field private zzb:I

.field private zzf:Lcom/google/android/gms/internal/gtm/zzahd;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzaez;

.field private zzh:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaih;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaih;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaih;->zza:Lcom/google/android/gms/internal/gtm/zzaih;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzaih;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaih;->zzh:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzaih;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaih;->zza:Lcom/google/android/gms/internal/gtm/zzaih;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    return-object p2

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzaih;->zza:Lcom/google/android/gms/internal/gtm/zzaih;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaig;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzaig;-><init>(Lcom/google/android/gms/internal/gtm/zzaif;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaih;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzaih;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v2, "zzb"

    aput-object v2, p1, p3

    const-string p3, "zzf"

    aput-object p3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v1

    const-string p2, "zzh"

    aput-object p2, p1, v0

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzaih;->zza:Lcom/google/android/gms/internal/gtm/zzaih;

    const-string p3, "\u0001\u0003\u0000\u0001\u0004\r\u0003\u0000\u0000\u0000\u0004\u1009\u0000\u000c\u1009\u0001\r\u1008\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzaih;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
