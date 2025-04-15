.class public final enum Lcom/google/android/gms/internal/gtm/zzbah;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbah;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbah;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbah;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbah;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbah;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/gtm/zzbah;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbah;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbah;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbah;->zza:Lcom/google/android/gms/internal/gtm/zzbah;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbah;

    const-string v3, "FROM_NUMBER_WITH_PLUS_SIGN"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbah;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbah;->zzb:Lcom/google/android/gms/internal/gtm/zzbah;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbah;

    const-string v5, "FROM_NUMBER_WITH_IDD"

    const/4 v6, 0x2

    const/4 v7, 0x5

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/gtm/zzbah;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbah;->zzc:Lcom/google/android/gms/internal/gtm/zzbah;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbah;

    const/16 v8, 0xa

    const-string v9, "FROM_NUMBER_WITHOUT_PLUS_SIGN"

    const/4 v10, 0x3

    .line 4
    invoke-direct {v5, v9, v10, v8}, Lcom/google/android/gms/internal/gtm/zzbah;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbah;->zzd:Lcom/google/android/gms/internal/gtm/zzbah;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzbah;

    const/16 v9, 0x14

    const-string v11, "FROM_DEFAULT_COUNTRY"

    const/4 v12, 0x4

    .line 5
    invoke-direct {v8, v11, v12, v9}, Lcom/google/android/gms/internal/gtm/zzbah;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzbah;->zze:Lcom/google/android/gms/internal/gtm/zzbah;

    new-array v7, v7, [Lcom/google/android/gms/internal/gtm/zzbah;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v10

    aput-object v8, v7, v12

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbah;->zzg:[Lcom/google/android/gms/internal/gtm/zzbah;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbaf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbaf;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbah;->zzf:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbah;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbah;->zzg:[Lcom/google/android/gms/internal/gtm/zzbah;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbah;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbah;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzbah;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbah;->zze:Lcom/google/android/gms/internal/gtm/zzbah;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzd:Lcom/google/android/gms/internal/gtm/zzbah;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzc:Lcom/google/android/gms/internal/gtm/zzbah;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzb:Lcom/google/android/gms/internal/gtm/zzbah;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbah;->zza:Lcom/google/android/gms/internal/gtm/zzbah;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbag;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbah;->zzh:I

    return v0
.end method
