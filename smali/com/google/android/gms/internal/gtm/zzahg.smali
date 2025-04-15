.class public final Lcom/google/android/gms/internal/gtm/zzahg;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzahg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzahg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzahg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzahg;->zza:Lcom/google/android/gms/internal/gtm/zzahg;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzahg;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzahg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzahg;->zza:Lcom/google/android/gms/internal/gtm/zzahg;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 p2, 0x2

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzahg;->zza:Lcom/google/android/gms/internal/gtm/zzahg;

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahf;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzahf;-><init>(Lcom/google/android/gms/internal/gtm/zzahe;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahg;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzahg;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzahg;->zza:Lcom/google/android/gms/internal/gtm/zzahg;

    const-string p2, "\u0001\u0000"

    .line 2
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/gtm/zzahg;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    const/4 p1, 0x1

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
