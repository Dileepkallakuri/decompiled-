.class public final enum Lcom/google/android/gms/internal/gtm/zzbwk;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbwk;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbwk;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbwk;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbwk;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbwk;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzbwk;

.field private static final zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/gtm/zzbwk;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbwk;->zza:Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v3, "ANDROID_CARDBOARD_SDK"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbwk;->zzb:Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v5, "IOS_CARDBOARD_SDK"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbwk;->zzc:Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v7, "ANDROID_UNITY_SDK"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbwk;->zzd:Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v9, "IOS_UNITY_SDK"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbwk;->zze:Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbwk;

    const-string v11, "WINDOWS"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbwk;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbwk;->zzf:Lcom/google/android/gms/internal/gtm/zzbwk;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/gtm/zzbwk;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzbwk;->zzh:[Lcom/google/android/gms/internal/gtm/zzbwk;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbwi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbwi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbwk;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzh:[Lcom/google/android/gms/internal/gtm/zzbwk;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbwk;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbwj;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbwk;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzf:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zze:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzd:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzc:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzb:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zza:Lcom/google/android/gms/internal/gtm/zzbwk;

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzi:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbwk;->zzi:I

    return v0
.end method
