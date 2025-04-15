.class public final enum Lcom/google/android/gms/internal/gtm/zzakx;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzakx;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzakx;

.field private static final zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/gtm/zzakx;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v1, 0x64

    const-string v2, "PRECISION_CENTURY"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzakx;->zza:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v2, 0xc8

    const-string v4, "PRECISION_DECADE"

    const/4 v5, 0x1

    .line 2
    invoke-direct {v1, v4, v5, v2}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzakx;->zzb:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v4, 0x12c

    const-string v6, "PRECISION_YEAR"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v2, v6, v7, v4}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzakx;->zzc:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v6, 0x190

    const-string v8, "PRECISION_MONTH"

    const/4 v9, 0x3

    .line 4
    invoke-direct {v4, v8, v9, v6}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzakx;->zzd:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v8, 0x1f4

    const-string v10, "PRECISION_DAY"

    const/4 v11, 0x4

    .line 5
    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzakx;->zze:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v10, 0x258

    const-string v12, "PRECISION_HOUR"

    const/4 v13, 0x5

    .line 6
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzakx;->zzf:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v12, 0x2bc

    const-string v14, "PRECISION_MINUTE"

    const/4 v15, 0x6

    .line 7
    invoke-direct {v10, v14, v15, v12}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzakx;->zzg:Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v14, 0x320

    const-string v15, "PRECISION_SECOND"

    const/4 v13, 0x7

    .line 8
    invoke-direct {v12, v15, v13, v14}, Lcom/google/android/gms/internal/gtm/zzakx;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzakx;->zzh:Lcom/google/android/gms/internal/gtm/zzakx;

    const/16 v14, 0x8

    new-array v14, v14, [Lcom/google/android/gms/internal/gtm/zzakx;

    aput-object v0, v14, v3

    aput-object v1, v14, v5

    aput-object v2, v14, v7

    aput-object v4, v14, v9

    aput-object v6, v14, v11

    const/4 v0, 0x5

    aput-object v8, v14, v0

    const/4 v0, 0x6

    aput-object v10, v14, v0

    aput-object v12, v14, v13

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzakx;->zzj:[Lcom/google/android/gms/internal/gtm/zzakx;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzakv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzakv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzakx;->zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzk:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzakx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzakx;->zzj:[Lcom/google/android/gms/internal/gtm/zzakx;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzakx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzakx;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzakx;
    .locals 1

    const/16 v0, 0x64

    if-eq p0, v0, :cond_7

    const/16 v0, 0xc8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x12c

    if-eq p0, v0, :cond_5

    const/16 v0, 0x190

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x258

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2bc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x320

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzh:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzg:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzf:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zze:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzd:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzc:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzb:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0

    :cond_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzakx;->zza:Lcom/google/android/gms/internal/gtm/zzakx;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzakw;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzk:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzakx;->zzk:I

    return v0
.end method
