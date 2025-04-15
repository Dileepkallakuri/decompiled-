.class public final Lcom/google/android/gms/internal/gtm/zzam;
.super Lcom/google/android/gms/internal/gtm/zzbfb;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzam;


# instance fields
.field private zzg:I

.field private zzh:I

.field private zzi:Ljava/lang/String;

.field private zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzm:Ljava/lang/String;

.field private zzn:Ljava/lang/String;

.field private zzo:J

.field private zzp:Z

.field private zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzs:Z

.field private zzt:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzam$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzam$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzam;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzam;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzam;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzam;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbfb;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzt:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzh:I

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzi:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzm:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzn:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zzA(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzar()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzS(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzB(Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzC(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzD(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzn:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzE(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-object p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzi:Ljava/lang/String;

    return-void
.end method

.method static synthetic zzF(Lcom/google/android/gms/internal/gtm/zzam;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzo:J

    return-void
.end method

.method static synthetic zzG(Lcom/google/android/gms/internal/gtm/zzam;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzp:Z

    return-void
.end method

.method static synthetic zzH(Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzak(Lcom/google/android/gms/internal/gtm/zzbfp;)Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 4
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzI(Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzJ(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/Iterable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfl;->zzc()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfl;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :cond_0
    add-int/2addr v1, v1

    .line 3
    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/gtm/zzbfl;->zzg(I)Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 4
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzaq;->zza()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbfl;->zzh(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic zzK(Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zzL(Lcom/google/android/gms/internal/gtm/zzam;Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzs:Z

    return-void
.end method

.method static synthetic zzM(Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzap()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzN(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzap()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzS(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private final zzap()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzak(Lcom/google/android/gms/internal/gtm/zzbfp;)Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    :cond_0
    return-void
.end method

.method private final zzaq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzak(Lcom/google/android/gms/internal/gtm/zzbfp;)Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    :cond_0
    return-void
.end method

.method private final zzar()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzak(Lcom/google/android/gms/internal/gtm/zzbfp;)Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    :cond_0
    return-void
.end method

.method public static zzg()Lcom/google/android/gms/internal/gtm/zzan;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzZ()Lcom/google/android/gms/internal/gtm/zzbez;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/gtm/zzan;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    return-object v0
.end method

.method public static zzj()Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    return-object v0
.end method

.method static synthetic zzu(Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/internal/gtm/zzat;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/gtm/zzat;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzh:I

    iget p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzg:I

    return-void
.end method

.method static synthetic zzv(Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzw(Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzaq()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic zzx(Lcom/google/android/gms/internal/gtm/zzam;Ljava/lang/Iterable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzaq()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 2
    invoke-static {p1, p0}, Lcom/google/android/gms/internal/gtm/zzbay;->zzS(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method static synthetic zzy(Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzam;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zzz(Lcom/google/android/gms/internal/gtm/zzam;Lcom/google/android/gms/internal/gtm/zzam;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzam;->zzar()V

    iget-object p0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final zzO()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzp:Z

    return v0
.end method

.method public final zzP()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzs:Z

    return v0
.end method

.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->size()I

    move-result v0

    return v0
.end method

.method protected final zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_5

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    if-nez p2, :cond_0

    move p3, v0

    .line 2
    :cond_0
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzt:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzan;

    .line 5
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzan;-><init>(Lcom/google/android/gms/internal/gtm/zzal;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzam;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzam;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x13

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzg"

    aput-object p2, p1, v0

    const-string p2, "zzh"

    aput-object p2, p1, p3

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzat;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p2

    aput-object p2, p1, v4

    const-string p2, "zzi"

    aput-object p2, p1, v3

    const-string p2, "zzj"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/android/gms/internal/gtm/zzam;

    aput-object p2, p1, v1

    const/4 p3, 0x6

    const-string v0, "zzk"

    aput-object v0, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const/16 p3, 0x8

    const-string v0, "zzl"

    aput-object v0, p1, p3

    const/16 p3, 0x9

    aput-object p2, p1, p3

    const/16 p3, 0xa

    const-string v0, "zzm"

    aput-object v0, p1, p3

    const/16 p3, 0xb

    const-string v0, "zzn"

    aput-object v0, p1, p3

    const/16 p3, 0xc

    const-string v0, "zzo"

    aput-object v0, p1, p3

    const/16 p3, 0xd

    const-string v0, "zzs"

    aput-object v0, p1, p3

    const/16 p3, 0xe

    const-string v0, "zzr"

    aput-object v0, p1, p3

    const/16 p3, 0xf

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaq;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object v0

    aput-object v0, p1, p3

    const/16 p3, 0x10

    const-string v0, "zzq"

    aput-object v0, p1, p3

    const/16 p3, 0x11

    aput-object p2, p1, p3

    const/16 p2, 0x12

    const-string p3, "zzp"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzam;->zzf:Lcom/google/android/gms/internal/gtm/zzam;

    const-string p3, "\u0001\u000c\u0000\u0001\u0001\u000c\u000c\u0000\u0005\u0005\u0001\u150c\u0000\u0002\u1008\u0001\u0003\u041b\u0004\u041b\u0005\u041b\u0006\u1008\u0002\u0007\u1008\u0003\u0008\u1002\u0004\t\u1007\u0006\n\u001e\u000b\u041b\u000c\u1007\u0005"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzam;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzt:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final zzc()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->size()I

    move-result v0

    return v0
.end method

.method public final zzd()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->size()I

    move-result v0

    return v0
.end method

.method public final zze()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/gtm/zzbfp;->size()I

    move-result v0

    return v0
.end method

.method public final zzf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzo:J

    return-wide v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/gtm/zzat;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzh:I

    invoke-static {v0}, Lcom/google/android/gms/internal/gtm/zzat;->zzb(I)Lcom/google/android/gms/internal/gtm/zzat;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    :cond_0
    return-object v0
.end method

.method public final zzk(I)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p1
.end method

.method public final zzl(I)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzk:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p1
.end method

.method public final zzm(I)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzl:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p1
.end method

.method public final zzn(I)Lcom/google/android/gms/internal/gtm/zzam;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/gtm/zzbfp;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/gtm/zzam;

    return-object p1
.end method

.method public final zzo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzn:Ljava/lang/String;

    return-object v0
.end method

.method public final zzp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzm:Ljava/lang/String;

    return-object v0
.end method

.method public final zzq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final zzr()Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbfn;

    iget-object v1, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzr:Lcom/google/android/gms/internal/gtm/zzbfl;

    sget-object v2, Lcom/google/android/gms/internal/gtm/zzam;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/gtm/zzbfn;-><init>(Ljava/util/List;Lcom/google/android/gms/internal/gtm/zzbfm;)V

    return-object v0
.end method

.method public final zzs()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzj:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-object v0
.end method

.method public final zzt()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/gtm/zzam;->zzq:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-object v0
.end method
