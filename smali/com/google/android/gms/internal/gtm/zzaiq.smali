.class public final enum Lcom/google/android/gms/internal/gtm/zzaiq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzaiq;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzbfh;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzaiq;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzaiq;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzaiq;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzaiq;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzaiq;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzaiq;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/gtm/zzaiq;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaiq;

    const-string v1, "TRAVEL_MODE_MOTOR_VEHICLE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaiq;->zza:Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaiq;

    const-string v4, "TRAVEL_MODE_AUTO"

    const/16 v5, 0x11

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzaiq;->zzb:Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzaiq;

    const/16 v5, 0x12

    const-string v6, "TRAVEL_MODE_TWO_WHEELER"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v4, v6, v7, v5}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzaiq;->zzc:Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzaiq;

    const-string v6, "TRAVEL_MODE_BICYCLE"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v6, v8, v7}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzaiq;->zzd:Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzaiq;

    const-string v9, "TRAVEL_MODE_PEDESTRIAN"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v6, v9, v10, v8}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzaiq;->zze:Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzaiq;

    const-string v11, "TRAVEL_MODE_PUBLIC_TRANSIT"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v10}, Lcom/google/android/gms/internal/gtm/zzaiq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzaiq;->zzf:Lcom/google/android/gms/internal/gtm/zzaiq;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/google/android/gms/internal/gtm/zzaiq;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v7

    aput-object v5, v11, v8

    aput-object v6, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzaiq;->zzh:[Lcom/google/android/gms/internal/gtm/zzaiq;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaio;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaio;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzaiq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzh:[Lcom/google/android/gms/internal/gtm/zzaiq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzaiq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzaiq;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/16 v0, 0x11

    if-eq p0, v0, :cond_1

    const/16 v0, 0x12

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzc:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzb:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzf:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zze:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzd:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0

    :cond_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zza:Lcom/google/android/gms/internal/gtm/zzaiq;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaip;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzi:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaiq;->zzi:I

    return v0
.end method
