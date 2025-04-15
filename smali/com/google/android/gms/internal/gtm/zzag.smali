.class public final Lcom/google/android/gms/internal/gtm/zzag;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzag;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzl:I

.field private zzm:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzag;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzag;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzag;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzag;

    .line 2
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzj()Lcom/google/android/gms/internal/gtm/zzam;

    move-result-object v0

    const/4 v3, 0x0

    const/16 v4, 0x65

    .line 4
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzag;

    move-object v1, v2

    .line 5
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzag;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzag;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzag;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzag;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zze()Lcom/google/android/gms/internal/gtm/zzag;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzag;

    return-object v0
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzl:I

    return v0
.end method

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzag;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaf;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzaf;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzag;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzag;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzf"

    aput-object v4, p1, v3

    const-string v3, "zzg"

    aput-object v3, p1, p2

    const-string p2, "zzh"

    aput-object p2, p1, v2

    const-string p2, "zzi"

    aput-object p2, p1, v1

    const-string p2, "zzj"

    aput-object p2, p1, v0

    const-string p2, "zzk"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzm"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzag;->zzb:Lcom/google/android/gms/internal/gtm/zzag;

    const-string p3, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0004\u0000\u0001\u0016\u0002\u0016\u0003\u0016\u0004\u1004\u0000\u0005\u0016\u0006\u1004\u0001\u0007\u1004\u0002"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzag;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfl;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfl;->size()I

    move-result v0

    return v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzag;->zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method
