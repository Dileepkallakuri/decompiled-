.class public final Lcom/google/android/gms/internal/gtm/zzbmd;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbmd;


# instance fields
.field private zzf:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbmd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbmd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbmd;->zza:Lcom/google/android/gms/internal/gtm/zzbmd;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbmd;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbmd;->zzf:B

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbmd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbmd;->zza:Lcom/google/android/gms/internal/gtm/zzbmd;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbmd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbmd;->zza:Lcom/google/android/gms/internal/gtm/zzbmd;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x2

    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    :goto_0
    iput-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbmd;->zzf:B

    return-object v0

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbmd;->zza:Lcom/google/android/gms/internal/gtm/zzbmd;

    return-object p1

    .line 2
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbmc;

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/gtm/zzbmc;-><init>(Lcom/google/android/gms/internal/gtm/zzbmb;)V

    return-object p1

    .line 4
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbmd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbmd;-><init>()V

    return-object p1

    .line 1
    :cond_4
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbmd;->zza:Lcom/google/android/gms/internal/gtm/zzbmd;

    const-string p2, "\u0003\u0000"

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/gtm/zzbmd;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbmd;->zzf:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
