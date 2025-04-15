.class public final Lcom/google/android/gms/internal/gtm/zzavi;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzavi;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzB:I

.field private zzC:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzD:I

.field private zzE:Z

.field private zzF:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzG:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzH:Z

.field private zzI:I

.field private zzJ:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzK:Lcom/google/android/gms/internal/gtm/zzbfk;

.field private zzL:I

.field private zzM:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzN:Lcom/google/android/gms/internal/gtm/zzaky;

.field private zzO:Lcom/google/android/gms/internal/gtm/zzaky;

.field private zzP:I

.field private zzQ:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzR:I

.field private zzS:I

.field private zzT:I

.field private zzU:Lcom/google/android/gms/internal/gtm/zzaqf;

.field private zzV:Z

.field private zzW:I

.field private zzX:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzY:F

.field private zzZ:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzaa:F

.field private zzab:F

.field private zzac:F

.field private zzad:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzae:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzaf:Lcom/google/android/gms/internal/gtm/zzzc;

.field private zzag:B

.field private zzb:I

.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzamq;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzi:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzj:I

.field private zzk:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzamq;

.field private zzm:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzn:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzo:Z

.field private zzp:F

.field private zzq:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzr:Z

.field private zzs:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzt:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzu:Lcom/google/android/gms/internal/gtm/zzbfp;

.field private zzv:F

.field private zzw:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzx:I

.field private zzy:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzavi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzavi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzavi;->zza:Lcom/google/android/gms/internal/gtm/zzavi;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzavi;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzag:B

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzh:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzi:Lcom/google/android/gms/internal/gtm/zzbfp;

    const/16 v0, 0x11

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzj:I

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzm:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzn:Lcom/google/android/gms/internal/gtm/zzbfp;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzo:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzr:Z

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzs:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzt:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzu:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzx:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzz:I

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzF:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzG:Lcom/google/android/gms/internal/gtm/zzbfp;

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzI:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzag()Lcom/google/android/gms/internal/gtm/zzbfk;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzK:Lcom/google/android/gms/internal/gtm/zzbfk;

    const/4 v1, 0x3

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzL:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzP:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzR:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzS:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzT:I

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzW:I

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzX:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzad:Lcom/google/android/gms/internal/gtm/zzbfp;

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavi;->zzaj()Lcom/google/android/gms/internal/gtm/zzbfp;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzae:Lcom/google/android/gms/internal/gtm/zzbfp;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzavi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzavi;->zza:Lcom/google/android/gms/internal/gtm/zzavi;

    return-object v0
.end method


# virtual methods
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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzag:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzavi;->zza:Lcom/google/android/gms/internal/gtm/zzavi;

    return-object p1

    .line 16
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaug;

    .line 15
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzaug;-><init>(Lcom/google/android/gms/internal/gtm/zzatm;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzavi;

    .line 16
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzavi;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0x4e

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    .line 2
    const-class p2, Lcom/google/android/gms/internal/gtm/zzamq;

    aput-object p2, p1, v2

    const-string p2, "zzj"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaus;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-class p3, Lcom/google/android/gms/internal/gtm/zzasg;

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzn"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-class p3, Lcom/google/android/gms/internal/gtm/zzapa;

    aput-object p3, p1, p2

    const/16 p2, 0xc

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzv"

    aput-object p3, p1, p2

    const/16 p2, 0xf

    const-string p3, "zzz"

    aput-object p3, p1, p2

    const/16 p2, 0x10

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzave;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x11

    const-string p3, "zzx"

    aput-object p3, p1, p2

    const/16 p2, 0x12

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaup;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x13

    const-string p3, "zzB"

    aput-object p3, p1, p2

    const/16 p2, 0x14

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavb;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x15

    const-string p3, "zzD"

    aput-object p3, p1, p2

    const/16 p2, 0x16

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzavh;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x17

    const-string p3, "zzE"

    aput-object p3, p1, p2

    const/16 p2, 0x18

    const-string p3, "zzF"

    aput-object p3, p1, p2

    const/16 p2, 0x19

    const-class p3, Lcom/google/android/gms/internal/gtm/zzamq;

    aput-object p3, p1, p2

    const/16 p2, 0x1a

    const-string p3, "zzG"

    aput-object p3, p1, p2

    const/16 p2, 0x1b

    const-class p3, Lcom/google/android/gms/internal/gtm/zzane;

    aput-object p3, p1, p2

    const/16 p2, 0x1c

    const-string p3, "zzH"

    aput-object p3, p1, p2

    const/16 p2, 0x1d

    const-string p3, "zzI"

    aput-object p3, p1, p2

    const/16 p2, 0x1e

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzatz;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x1f

    const-string p3, "zzK"

    aput-object p3, p1, p2

    const/16 p2, 0x20

    const-string p3, "zzL"

    aput-object p3, p1, p2

    const/16 p2, 0x21

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaum;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x22

    const-string p3, "zzN"

    aput-object p3, p1, p2

    const/16 p2, 0x23

    const-string p3, "zzO"

    aput-object p3, p1, p2

    const/16 p2, 0x24

    const-string p3, "zzP"

    aput-object p3, p1, p2

    const/16 p2, 0x25

    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzauj;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x26

    const-string p3, "zzR"

    aput-object p3, p1, p2

    const/16 p2, 0x27

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzauc;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x28

    const-string p3, "zzS"

    aput-object p3, p1, p2

    const/16 p2, 0x29

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzauf;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x2a

    const-string p3, "zzT"

    aput-object p3, p1, p2

    const/16 p2, 0x2b

    .line 12
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzauv;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x2c

    const-string p3, "zzV"

    aput-object p3, p1, p2

    const/16 p2, 0x2d

    const-string p3, "zzW"

    aput-object p3, p1, p2

    const/16 p2, 0x2e

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzauy;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x2f

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0x30

    const-class p3, Lcom/google/android/gms/internal/gtm/zzatw;

    aput-object p3, p1, p2

    const/16 p2, 0x31

    const-string p3, "zzX"

    aput-object p3, p1, p2

    const/16 p2, 0x32

    const-class p3, Lcom/google/android/gms/internal/gtm/zzatn;

    aput-object p3, p1, p2

    const/16 p2, 0x33

    const-string p3, "zzY"

    aput-object p3, p1, p2

    const/16 p2, 0x34

    const-string p3, "zzr"

    aput-object p3, p1, p2

    const/16 p2, 0x35

    const-string p3, "zzU"

    aput-object p3, p1, p2

    const/16 p2, 0x36

    const-string p3, "zzac"

    aput-object p3, p1, p2

    const/16 p2, 0x37

    const-string p3, "zzad"

    aput-object p3, p1, p2

    const/16 p2, 0x38

    const-class p3, Lcom/google/android/gms/internal/gtm/zzavk;

    aput-object p3, p1, p2

    const/16 p2, 0x39

    const-string p3, "zzae"

    aput-object p3, p1, p2

    const/16 p2, 0x3a

    const-class p3, Lcom/google/android/gms/internal/gtm/zzamq;

    aput-object p3, p1, p2

    const/16 p2, 0x3b

    const-string p3, "zzs"

    aput-object p3, p1, p2

    const/16 p2, 0x3c

    const-class p3, Lcom/google/android/gms/internal/gtm/zzwl;

    aput-object p3, p1, p2

    const/16 p2, 0x3d

    const-string p3, "zzt"

    aput-object p3, p1, p2

    const/16 p2, 0x3e

    const-class p3, Lcom/google/android/gms/internal/gtm/zzwl;

    aput-object p3, p1, p2

    const/16 p2, 0x3f

    const-string p3, "zzu"

    aput-object p3, p1, p2

    const/16 p2, 0x40

    const-class p3, Lcom/google/android/gms/internal/gtm/zzwl;

    aput-object p3, p1, p2

    const/16 p2, 0x41

    const-string p3, "zzaa"

    aput-object p3, p1, p2

    const/16 p2, 0x42

    const-string p3, "zzab"

    aput-object p3, p1, p2

    const/16 p2, 0x43

    const-string p3, "zzaf"

    aput-object p3, p1, p2

    const/16 p2, 0x44

    const-string p3, "zzk"

    aput-object p3, p1, p2

    const/16 p2, 0x45

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0x46

    const-string p3, "zzw"

    aput-object p3, p1, p2

    const/16 p2, 0x47

    const-string p3, "zzy"

    aput-object p3, p1, p2

    const/16 p2, 0x48

    const-string p3, "zzA"

    aput-object p3, p1, p2

    const/16 p2, 0x49

    const-string p3, "zzC"

    aput-object p3, p1, p2

    const/16 p2, 0x4a

    const-string p3, "zzJ"

    aput-object p3, p1, p2

    const/16 p2, 0x4b

    const-string p3, "zzM"

    aput-object p3, p1, p2

    const/16 p2, 0x4c

    const-string p3, "zzQ"

    aput-object p3, p1, p2

    const/16 p2, 0x4d

    const-string p3, "zzZ"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzavi;->zza:Lcom/google/android/gms/internal/gtm/zzavi;

    const-string p3, "\u00014\u0000\u0002\u0001\u01fe4\u0000\r\u000f\u0001\u1509\u0000\u0002\u041b\u0003\u100c\u0001\u0004\u1409\u0003\u0005\u041b\u0006\u041b\u0008\u1007\u0004\t\u1001\u0005\n\u1001\u0008\u000c\u100c\u000c\r\u100c\n\u000e\u100c\u000e\u000f\u100c\u0010\u0010\u1007\u0011\u0011\u041b\u0012\u041b\u0013\u1007\u0012\u0015\u100c\u0013\u0016\u0013\u0017\u100c\u0015\u0018\u1409\u0017\u0019\u1409\u0018\u001a\u100c\u0019\u001b\u100c\u001b\u001c\u100c\u001c\u001d\u100c\u001d\u001e\u1007\u001f\u001f\u100c  \u041b\"\u041b#\u1001!$\u1007\u0007%\u1409\u001e&\u1001%\'\u041b(\u041b)\u001b*\u001b+\u001b,\u1001#-\u1001$d\u1409&\u01f4\u1009\u0002\u01f5\u1009\u0006\u01f6\u1009\t\u01f7\u1009\u000b\u01f8\u1009\r\u01f9\u1009\u000f\u01fb\u1009\u0014\u01fc\u1009\u0016\u01fd\u1009\u001a\u01fe\u1009\""

    .line 14
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzavi;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzavi;->zzag:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
