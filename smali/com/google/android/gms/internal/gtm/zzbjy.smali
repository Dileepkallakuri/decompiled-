.class public final Lcom/google/android/gms/internal/gtm/zzbjy;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbjy;


# instance fields
.field private zzf:Lcom/google/android/gms/internal/gtm/zzbfl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjy$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbjy$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjy;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbjy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjy;->zzb:Lcom/google/android/gms/internal/gtm/zzbjy;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbjy;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbjy;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbjy;->zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbjy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbjy;->zzb:Lcom/google/android/gms/internal/gtm/zzbjy;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbjy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbjy;->zzb:Lcom/google/android/gms/internal/gtm/zzbjy;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    const/4 p3, 0x0

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    return-object p3

    .line 1
    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbjy;->zzb:Lcom/google/android/gms/internal/gtm/zzbjy;

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbjz;

    .line 4
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzbjz;-><init>(Lcom/google/android/gms/internal/gtm/zzbjr;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbjy;

    .line 5
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbjy;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzf"

    aput-object v0, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbke;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbjy;->zzb:Lcom/google/android/gms/internal/gtm/zzbjy;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001e"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbjy;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
