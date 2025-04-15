.class public final enum Lcom/google/android/gms/internal/gtm/zzbqz;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbqz;

.field private static final zzb:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzc:[Lcom/google/android/gms/internal/gtm/zzbqz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbqz;

    const-string v1, "NIST_800_108_KDF_CTR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbqz;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbqz;->zza:Lcom/google/android/gms/internal/gtm/zzbqz;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/android/gms/internal/gtm/zzbqz;

    aput-object v0, v1, v2

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbqz;->zzc:[Lcom/google/android/gms/internal/gtm/zzbqz;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbqx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbqx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbqz;->zzb:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    const-string p1, "NIST_800_108_KDF_CTR"

    const/4 p2, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbqz;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbqz;->zzc:[Lcom/google/android/gms/internal/gtm/zzbqz;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbqz;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbqz;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbqy;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbqz;
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbqz;->zza:Lcom/google/android/gms/internal/gtm/zzbqz;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
