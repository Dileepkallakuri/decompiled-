.class public final enum Lcom/google/android/gms/internal/gtm/zzauc;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzauc;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzauc;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzauc;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzauc;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzauc;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzauc;

.field private static final zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/gtm/zzauc;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzauc;

    const-string v1, "BICYCLE_FACILITY_SEPARATE_TRAIL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzauc;->zza:Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzauc;

    const-string v4, "BICYCLE_FACILITY_PEDESTRIAN_PATH"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzauc;->zzb:Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzauc;

    const-string v6, "BICYCLE_FACILITY_SHARED_ROAD"

    const/4 v7, 0x3

    .line 3
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzauc;->zzc:Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzauc;

    const-string v8, "BICYCLE_FACILITY_BIKE_LANE"

    const/16 v9, 0x31

    .line 4
    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzauc;->zzd:Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzauc;

    const/16 v9, 0x32

    const-string v10, "BICYCLE_FACILITY_WIDE_SHOULDER"

    const/4 v11, 0x4

    .line 5
    invoke-direct {v8, v10, v11, v9}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzauc;->zze:Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzauc;

    const/16 v10, 0x33

    const-string v12, "BICYCLE_FACILITY_SHARROW"

    const/4 v13, 0x5

    .line 6
    invoke-direct {v9, v12, v13, v10}, Lcom/google/android/gms/internal/gtm/zzauc;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzauc;->zzf:Lcom/google/android/gms/internal/gtm/zzauc;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/google/android/gms/internal/gtm/zzauc;

    aput-object v0, v10, v2

    aput-object v1, v10, v3

    aput-object v4, v10, v5

    aput-object v6, v10, v7

    aput-object v8, v10, v11

    aput-object v9, v10, v13

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzauc;->zzh:[Lcom/google/android/gms/internal/gtm/zzauc;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaua;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaua;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzauc;->zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzauc;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzauc;->zzh:[Lcom/google/android/gms/internal/gtm/zzauc;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzauc;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzauc;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzauc;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzf:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zze:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzd:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzc:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzb:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzauc;->zza:Lcom/google/android/gms/internal/gtm/zzauc;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaub;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzi:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzauc;->zzi:I

    return v0
.end method
