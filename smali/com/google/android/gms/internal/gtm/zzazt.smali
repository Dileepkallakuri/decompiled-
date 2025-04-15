.class public final Lcom/google/android/gms/internal/gtm/zzazt;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzazt;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/gtm/zzbfp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzazt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzazt;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzazt;->zza:Lcom/google/android/gms/internal/gtm/zzazt;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzazt;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzazt;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzazt;->zzb:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzazt;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzazt;->zza:Lcom/google/android/gms/internal/gtm/zzazt;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzazt;->zza:Lcom/google/android/gms/internal/gtm/zzazt;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzazs;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzazs;-><init>(Lcom/google/android/gms/internal/gtm/zzazr;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzazt;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzazt;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzb"

    aput-object v0, p1, p3

    .line 2
    const-class p3, Lcom/google/android/gms/internal/gtm/zzazw;

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzazt;->zza:Lcom/google/android/gms/internal/gtm/zzazt;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzazt;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
