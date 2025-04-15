.class public final enum Lcom/google/android/gms/internal/gtm/zzaot;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzaot;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzaot;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzaot;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzaot;

.field private static final zze:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/gtm/zzaot;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaot;

    const-string v1, "CROSSING_ALLOWED"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzaot;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaot;->zza:Lcom/google/android/gms/internal/gtm/zzaot;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaot;

    const-string v4, "CROSSING_DISALLOWED"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzaot;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzaot;->zzb:Lcom/google/android/gms/internal/gtm/zzaot;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzaot;

    const-string v6, "CROSSING_LEGALLY_DISALLOWED"

    const/16 v7, 0x21

    .line 3
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/gtm/zzaot;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzaot;->zzc:Lcom/google/android/gms/internal/gtm/zzaot;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzaot;

    const/16 v7, 0x22

    const-string v8, "CROSSING_PHYSICALLY_IMPOSSIBLE"

    const/4 v9, 0x3

    .line 4
    invoke-direct {v6, v8, v9, v7}, Lcom/google/android/gms/internal/gtm/zzaot;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzaot;->zzd:Lcom/google/android/gms/internal/gtm/zzaot;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/gtm/zzaot;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v5

    aput-object v6, v7, v9

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzaot;->zzf:[Lcom/google/android/gms/internal/gtm/zzaot;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaor;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaor;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaot;->zze:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzaot;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaot;->zzf:[Lcom/google/android/gms/internal/gtm/zzaot;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzaot;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzaot;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzaot;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/16 v0, 0x21

    if-eq p0, v0, :cond_1

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzd:Lcom/google/android/gms/internal/gtm/zzaot;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzc:Lcom/google/android/gms/internal/gtm/zzaot;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzb:Lcom/google/android/gms/internal/gtm/zzaot;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaot;->zza:Lcom/google/android/gms/internal/gtm/zzaot;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaos;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaot;->zzg:I

    return v0
.end method
