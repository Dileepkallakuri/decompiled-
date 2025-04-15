.class public final Lcom/google/android/gms/internal/gtm/zzbwb;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbwb;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbwb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbwb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbwb;->zza:Lcom/google/android/gms/internal/gtm/zzbwb;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbwb;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzbwb;->zzf:I

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbwb;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbwb;->zza:Lcom/google/android/gms/internal/gtm/zzbwb;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbwb;->zza:Lcom/google/android/gms/internal/gtm/zzbwb;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbwa;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbwa;-><init>(Lcom/google/android/gms/internal/gtm/zzbte;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbwb;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbwb;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzg"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzb"

    aput-object p2, p1, v2

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzbtu;

    aput-object p2, p1, v1

    const-class p2, Lcom/google/android/gms/internal/gtm/zzbun;

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/gtm/zzbus;

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbwb;->zza:Lcom/google/android/gms/internal/gtm/zzbwb;

    const-string p3, "\u0001\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u103c\u0000\u0002\u103c\u0000\u0003\u103c\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbwb;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
