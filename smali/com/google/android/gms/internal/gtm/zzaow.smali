.class public final enum Lcom/google/android/gms/internal/gtm/zzaow;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzaow;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzaow;

.field private static final zzm:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzn:[Lcom/google/android/gms/internal/gtm/zzaow;


# instance fields
.field private final zzo:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaow;

    const-string v1, "SURFACE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaow;->zza:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzaow;

    const-string v3, "SURFACE_PAVED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzaow;->zzb:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v5, 0x11

    const-string v6, "SURFACE_ASPHALT"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzaow;->zzc:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v6, 0x12

    const-string v8, "SURFACE_CONCRETE"

    const/4 v9, 0x3

    .line 4
    invoke-direct {v5, v8, v9, v6}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzaow;->zzd:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v8, 0x13

    const-string v10, "SURFACE_CHIPSEAL"

    const/4 v11, 0x4

    .line 5
    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzaow;->zze:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v10, 0x14

    const-string v12, "SURFACE_BRICK"

    const/4 v13, 0x5

    .line 6
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzaow;->zzf:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v12, 0x15

    const-string v14, "SURFACE_SETT"

    const/4 v15, 0x6

    .line 7
    invoke-direct {v10, v14, v15, v12}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzaow;->zzg:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v14, 0x16

    const-string v15, "SURFACE_COBBLESTONE"

    const/4 v13, 0x7

    .line 8
    invoke-direct {v12, v15, v13, v14}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzaow;->zzh:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzaow;

    const-string v15, "SURFACE_UNPAVED"

    const/16 v13, 0x8

    .line 9
    invoke-direct {v14, v15, v13, v7}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzaow;->zzi:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v13, 0x21

    const-string v11, "SURFACE_GRAVEL"

    const/16 v9, 0x9

    .line 10
    invoke-direct {v15, v11, v9, v13}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzaow;->zzj:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v13, 0x22

    const-string v9, "SURFACE_DIRT"

    const/16 v7, 0xa

    .line 11
    invoke-direct {v11, v9, v7, v13}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzaow;->zzk:Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v13, 0x23

    const-string v7, "SURFACE_SAND"

    const/16 v4, 0xb

    .line 12
    invoke-direct {v9, v7, v4, v13}, Lcom/google/android/gms/internal/gtm/zzaow;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzaow;->zzl:Lcom/google/android/gms/internal/gtm/zzaow;

    const/16 v7, 0xc

    new-array v7, v7, [Lcom/google/android/gms/internal/gtm/zzaow;

    aput-object v0, v7, v2

    const/4 v0, 0x1

    aput-object v1, v7, v0

    const/4 v0, 0x2

    aput-object v3, v7, v0

    const/4 v0, 0x3

    aput-object v5, v7, v0

    const/4 v0, 0x4

    aput-object v6, v7, v0

    const/4 v0, 0x5

    aput-object v8, v7, v0

    const/4 v0, 0x6

    aput-object v10, v7, v0

    const/4 v0, 0x7

    aput-object v12, v7, v0

    const/16 v0, 0x8

    aput-object v14, v7, v0

    const/16 v0, 0x9

    aput-object v15, v7, v0

    const/16 v0, 0xa

    aput-object v11, v7, v0

    aput-object v9, v7, v4

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzaow;->zzn:[Lcom/google/android/gms/internal/gtm/zzaow;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaou;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaou;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzaow;->zzm:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzo:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzaow;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaow;->zzn:[Lcom/google/android/gms/internal/gtm/zzaow;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzaow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzaow;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzaow;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzl:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzk:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzj:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzh:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzg:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzf:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zze:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzd:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzc:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzi:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzb:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzaow;->zza:Lcom/google/android/gms/internal/gtm/zzaow;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaov;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzo:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzaow;->zzo:I

    return v0
.end method
