.class public final enum Lcom/google/android/gms/internal/gtm/zzxr;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzxr;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzxr;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzxr;

.field private static final zzd:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/gtm/zzxr;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxr;

    const-string v1, "UNIT_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzxr;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzxr;->zza:Lcom/google/android/gms/internal/gtm/zzxr;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzxr;

    const-string v3, "METERS"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzxr;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzxr;->zzb:Lcom/google/android/gms/internal/gtm/zzxr;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzxr;

    const-string v5, "FEET"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzxr;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzxr;->zzc:Lcom/google/android/gms/internal/gtm/zzxr;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/gtm/zzxr;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzxr;->zze:[Lcom/google/android/gms/internal/gtm/zzxr;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzxp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzxp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzxr;->zzd:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzxr;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzxr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzxr;->zze:[Lcom/google/android/gms/internal/gtm/zzxr;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzxr;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzxr;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzxr;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzxr;->zzc:Lcom/google/android/gms/internal/gtm/zzxr;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzxr;->zzb:Lcom/google/android/gms/internal/gtm/zzxr;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzxr;->zza:Lcom/google/android/gms/internal/gtm/zzxr;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzxq;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxr;->zzf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzxr;->zzf:I

    return v0
.end method
