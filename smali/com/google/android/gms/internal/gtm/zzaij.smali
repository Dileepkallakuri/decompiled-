.class public final Lcom/google/android/gms/internal/gtm/zzaij;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbfm;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzaij;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzaqi;

.field private zzh:Lcom/google/android/gms/internal/gtm/zzamq;

.field private zzi:I

.field private zzj:F

.field private zzk:Lcom/google/android/gms/internal/gtm/zzaqi;

.field private zzl:Lcom/google/android/gms/internal/gtm/zzaqi;

.field private zzm:Z

.field private zzn:Z

.field private zzo:I

.field private zzp:Lcom/google/android/gms/internal/gtm/zzbfl;

.field private zzq:Lcom/google/android/gms/internal/gtm/zzamq;

.field private zzr:Lcom/google/android/gms/internal/gtm/zzana;

.field private zzs:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaij$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaij$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaij;->zza:Lcom/google/android/gms/internal/gtm/zzbfm;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaij;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaij;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaij;->zzb:Lcom/google/android/gms/internal/gtm/zzaij;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzaij;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzaij;->zzs:B

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/gtm/zzaij;->zzo:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaij;->zzah()Lcom/google/android/gms/internal/gtm/zzbfl;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzaij;->zzp:Lcom/google/android/gms/internal/gtm/zzbfl;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzaij;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaij;->zzb:Lcom/google/android/gms/internal/gtm/zzaij;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzaij;->zzs:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzaij;->zzb:Lcom/google/android/gms/internal/gtm/zzaij;

    return-object p1

    .line 6
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaik;

    .line 5
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzaik;-><init>(Lcom/google/android/gms/internal/gtm/zzaii;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzaij;

    .line 6
    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzaij;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xf

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzj"

    aput-object p2, p1, p3

    const-string p2, "zzk"

    aput-object p2, p1, v4

    const-string p2, "zzl"

    aput-object p2, p1, v3

    const-string p2, "zzm"

    aput-object p2, p1, v2

    const-string p2, "zzn"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzo"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzain;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzg"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzh"

    aput-object p3, p1, p2

    const/16 p2, 0xa

    const-string p3, "zzi"

    aput-object p3, p1, p2

    const/16 p2, 0xb

    const-string p3, "zzp"

    aput-object p3, p1, p2

    const/16 p2, 0xc

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzaiq;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0xd

    const-string p3, "zzq"

    aput-object p3, p1, p2

    const/16 p2, 0xe

    const-string p3, "zzr"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzaij;->zzb:Lcom/google/android/gms/internal/gtm/zzaij;

    const-string p3, "\u0001\u000c\u0000\u0001\u0002\u01f4\u000c\u0000\u0001\u0005\u0002\u1001\u0003\u0003\u1409\u0004\u0004\u1409\u0005\u0005\u1007\u0006\u0006\u1007\u0007\u0008\u100c\u0008\t\u1409\u0000\n\u1409\u0001\u000b\u1004\u0002\u000c\u001e\r\u1409\t\u01f4\u1009\n"

    .line 4
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzaij;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzaij;->zzs:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
