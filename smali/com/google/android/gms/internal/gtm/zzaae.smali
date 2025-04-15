.class public final enum Lcom/google/android/gms/internal/gtm/zzaae;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzaae;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzaae;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzaae;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzaae;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzaae;

.field private static final zzf:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzg:[Lcom/google/android/gms/internal/gtm/zzaae;


# instance fields
.field private final zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaae;

    const-string v1, "UNKNOWN_DASH_PATTERN"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzaae;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaae;->zza:Lcom/google/android/gms/internal/gtm/zzaae;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaae;

    const-string v4, "SOLID"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzaae;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzaae;->zzb:Lcom/google/android/gms/internal/gtm/zzaae;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzaae;

    const-string v6, "DASHED"

    const/4 v7, 0x3

    .line 3
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/gtm/zzaae;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzaae;->zzc:Lcom/google/android/gms/internal/gtm/zzaae;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzaae;

    const-string v8, "DOTTED"

    const/4 v9, 0x4

    .line 4
    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/gtm/zzaae;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzaae;->zzd:Lcom/google/android/gms/internal/gtm/zzaae;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzaae;

    const-string v10, "DOTTED_DASHED"

    const/4 v11, 0x5

    .line 5
    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/gtm/zzaae;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzaae;->zze:Lcom/google/android/gms/internal/gtm/zzaae;

    new-array v10, v11, [Lcom/google/android/gms/internal/gtm/zzaae;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v9

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzaae;->zzg:[Lcom/google/android/gms/internal/gtm/zzaae;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaac;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaac;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaae;->zzf:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzh:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzaae;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaae;->zzg:[Lcom/google/android/gms/internal/gtm/zzaae;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzaae;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzaae;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzaae;
    .locals 1

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
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaae;->zze:Lcom/google/android/gms/internal/gtm/zzaae;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzd:Lcom/google/android/gms/internal/gtm/zzaae;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzc:Lcom/google/android/gms/internal/gtm/zzaae;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzb:Lcom/google/android/gms/internal/gtm/zzaae;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaae;->zza:Lcom/google/android/gms/internal/gtm/zzaae;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaad;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzh:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaae;->zzh:I

    return v0
.end method
