.class public final Lcom/google/android/gms/internal/gtm/zzane;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzane;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:I

.field private zzh:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzane;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzane;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzane;->zza:Lcom/google/android/gms/internal/gtm/zzane;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzane;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzane;->zzh:B

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzane;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzane;->zza:Lcom/google/android/gms/internal/gtm/zzane;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzane;->zzh:B

    return-object v2

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzane;->zza:Lcom/google/android/gms/internal/gtm/zzane;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzand;

    .line 3
    invoke-direct {p1, v2}, Lcom/google/android/gms/internal/gtm/zzand;-><init>(Lcom/google/android/gms/internal/gtm/zzanc;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzane;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzane;-><init>()V

    return-object p1

    :cond_4
    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzane;->zza:Lcom/google/android/gms/internal/gtm/zzane;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1504\u0001"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzane;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzane;->zzh:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
