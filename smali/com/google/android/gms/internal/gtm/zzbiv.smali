.class public final Lcom/google/android/gms/internal/gtm/zzbiv;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzbiv;


# instance fields
.field private zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzi:Lcom/google/android/gms/internal/gtm/zzbfl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbiv$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbiv$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbiv;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbiv$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbiv$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzb:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbiv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbiv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzf:Lcom/google/android/gms/internal/gtm/zzbiv;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbiv;

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

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzg:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbiv;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbiv;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zzc()Lcom/google/android/gms/internal/gtm/zzbiv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzf:Lcom/google/android/gms/internal/gtm/zzbiv;

    return-object v0
.end method

.method public static zze()Lcom/google/android/gms/internal/gtm/zzbiv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbiv;->zzf:Lcom/google/android/gms/internal/gtm/zzbiv;

    return-object v0
.end method


# virtual methods
.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbiv;->zzf:Lcom/google/android/gms/internal/gtm/zzbiv;

    return-object p1

    .line 6
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbiw;

    .line 5
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzbiw;-><init>(Lcom/google/android/gms/internal/gtm/zzbiu;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbiv;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbiv;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v3, "zzg"

    aput-object v3, p1, p3

    const-string p3, "zzh"

    aput-object p3, p1, p2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbjc;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbjf;->zzb()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbiv;->zzf:Lcom/google/android/gms/internal/gtm/zzbiv;

    const-string p3, "\u0001\u0003\u0000\u0000\u0001\u0005\u0003\u0000\u0003\u0000\u0001\u001a\u0002\u001e\u0005,"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbiv;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
