.class public final Lcom/google/android/gms/internal/gtm/zzbai;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/gtm/zzbai;


# instance fields
.field private zzb:I

.field private zzf:I

.field private zzg:J

.field private zzh:Ljava/lang/String;

.field private zzi:Z

.field private zzj:I

.field private zzk:Ljava/lang/String;

.field private zzl:I

.field private zzm:Ljava/lang/String;

.field private zzn:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbai;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbai;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbai;->zza:Lcom/google/android/gms/internal/gtm/zzbai;

    const-class v1, Lcom/google/android/gms/internal/gtm/zzbai;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzn:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzh:Ljava/lang/String;

    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzj:I

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzm:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzbai;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbai;->zza:Lcom/google/android/gms/internal/gtm/zzbai;

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
    iput-byte p3, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzn:B

    return-object v3

    .line 1
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzbai;->zza:Lcom/google/android/gms/internal/gtm/zzbai;

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbae;

    .line 4
    invoke-direct {p1, v3}, Lcom/google/android/gms/internal/gtm/zzbae;-><init>(Lcom/google/android/gms/internal/gtm/zzbad;)V

    return-object p1

    .line 1
    :cond_3
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzbai;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzbai;-><init>()V

    return-object p1

    :cond_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzb"

    aput-object p2, p1, v0

    const-string p2, "zzf"

    aput-object p2, p1, p3

    const-string p2, "zzg"

    aput-object p2, p1, v4

    const-string p2, "zzh"

    aput-object p2, p1, v3

    const-string p2, "zzi"

    aput-object p2, p1, v2

    const-string p2, "zzk"

    aput-object p2, p1, v1

    const/4 p2, 0x6

    const-string p3, "zzl"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbah;->zzc()Lcom/google/android/gms/internal/gtm/zzbfj;

    move-result-object p3

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "zzm"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "zzj"

    aput-object p3, p1, p2

    sget-object p2, Lcom/google/android/gms/internal/gtm/zzbai;->zza:Lcom/google/android/gms/internal/gtm/zzbai;

    const-string p3, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0002\u0001\u1504\u0000\u0002\u1503\u0001\u0003\u1008\u0002\u0004\u1007\u0003\u0005\u1008\u0005\u0006\u100c\u0006\u0007\u1008\u0007\u0008\u1004\u0004"

    .line 3
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzbai;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    iget-byte p1, p0, Lcom/google/android/gms/internal/gtm/zzbai;->zzn:B

    .line 1
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
