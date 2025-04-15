.class public final Lcom/google/android/gms/internal/gtm/zzae;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzae;


# instance fields
.field private zzb:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzm:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbfl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzae;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzae;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzae;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzae;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzb:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzl:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzm:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzae;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzn:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzae;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzae;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzae;

    return-object p1

    .line 4
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzad;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/gtm/zzad;-><init>(Lcom/google/android/gms/internal/gtm/zzn;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzae;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzae;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "zzb"

    aput-object v4, p1, v3

    const-string v3, "zzf"

    aput-object v3, p1, p2

    const-string p2, "zzg"

    aput-object p2, p1, v2

    const-string p2, "zzh"

    aput-object p2, p1, v1

    const-string p2, "zzi"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const/4 p2, 0x6

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzn"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzae;->zza:Lcom/google/android/gms/internal/gtm/zzae;

    const-string p3, "\u0001\n\u0000\u0000\u0001\n\n\u0000\n\u0000\u0001\u0016\u0002\u0016\u0003\u0016\u0004\u0016\u0005\u0016\u0006\u0016\u0007\u0016\u0008\u0016\t\u0016\n\u0016"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzae;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzk:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzm:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zze()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzg:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzf()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzi:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzf:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzb:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzi()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzl:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzj()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzn:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzk()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzh:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method

.method public final zzl()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzae;->zzj:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-object v0
.end method
