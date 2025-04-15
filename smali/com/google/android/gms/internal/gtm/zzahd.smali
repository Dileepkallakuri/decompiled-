.class public final Lcom/google/android/gms/internal/gtm/zzahd;
.super Lcom/google/android/gms/internal/gtm/zzbff;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbgt;


# static fields
.field public static final zza:Lcom/google/android/gms/internal/gtm/zzbfd;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzahd;


# instance fields
.field private zzf:I

.field private zzg:Lcom/google/android/gms/internal/gtm/zzahb;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/gtm/zzahd;

    invoke-direct {v2}, Lcom/google/android/gms/internal/gtm/zzahd;-><init>()V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzahd;->zzb:Lcom/google/android/gms/internal/gtm/zzahd;

    const-class v0, Lcom/google/android/gms/internal/gtm/zzahd;

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/gtm/zzbff;->zzan(Ljava/lang/Class;Lcom/google/android/gms/internal/gtm/zzbff;)V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/gtm/zzbmd;->zze()Lcom/google/android/gms/internal/gtm/zzbmd;

    move-result-object v0

    const/4 v3, 0x0

    const v4, 0x17bab7e

    .line 3
    sget-object v5, Lcom/google/android/gms/internal/gtm/zzbip;->zzk:Lcom/google/android/gms/internal/gtm/zzbip;

    const-class v6, Lcom/google/android/gms/internal/gtm/zzahd;

    move-object v1, v2

    .line 4
    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/gtm/zzbff;->zzac(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/Object;Lcom/google/android/gms/internal/gtm/zzbgs;Lcom/google/android/gms/internal/gtm/zzbfi;ILcom/google/android/gms/internal/gtm/zzbip;Ljava/lang/Class;)Lcom/google/android/gms/internal/gtm/zzbfd;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzahd;->zza:Lcom/google/android/gms/internal/gtm/zzbfd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/gtm/zzbff;-><init>()V

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/gtm/zzahd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzahd;->zzb:Lcom/google/android/gms/internal/gtm/zzahd;

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
    sget-object p1, Lcom/google/android/gms/internal/gtm/zzahd;->zzb:Lcom/google/android/gms/internal/gtm/zzahd;

    return-object p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahc;

    .line 3
    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/gtm/zzahc;-><init>(Lcom/google/android/gms/internal/gtm/zzagw;)V

    return-object p1

    .line 1
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/gtm/zzahd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/gtm/zzahd;-><init>()V

    return-object p1

    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzf"

    aput-object v0, p1, p3

    const-string p3, "zzg"

    aput-object p3, p1, p2

    .line 2
    sget-object p2, Lcom/google/android/gms/internal/gtm/zzahd;->zzb:Lcom/google/android/gms/internal/gtm/zzahd;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u1009\u0000"

    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/gtm/zzahd;->zzam(Lcom/google/android/gms/internal/gtm/zzbgs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
