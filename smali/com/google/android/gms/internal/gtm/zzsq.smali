.class public final enum Lcom/google/android/gms/internal/gtm/zzsq;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzq:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzr:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzs:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzt:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzu:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzv:Lcom/google/android/gms/internal/gtm/zzsq;

.field public static final enum zzw:Lcom/google/android/gms/internal/gtm/zzsq;

.field private static final zzx:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzy:[Lcom/google/android/gms/internal/gtm/zzsq;


# instance fields
.field private final zzz:I


# direct methods
.method static constructor <clinit>()V
    .locals 26

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v1, "BUILD_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsq;->zza:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v3, "BUILD_TYPE_PROD"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzsq;->zzb:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v5, "BUILD_TYPE_INTERNAL"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzsq;->zzc:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v7, "BUILD_TYPE_PRODLMP"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzsq;->zzd:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v9, "BUILD_TYPE_THINGS"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzsq;->zze:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v11, "BUILD_TYPE_PRODMNC"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzsq;->zzf:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v13, "BUILD_TYPE_WEARABLE"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzsq;->zzg:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v15, "BUILD_TYPE_AUTO"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzsq;->zzh:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v14, "BUILD_TYPE_ATV"

    const/16 v12, 0x8

    const/16 v10, 0x9

    .line 9
    invoke-direct {v15, v14, v12, v10}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzsq;->zzi:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v12, "BUILD_TYPE_PRODPIX"

    const/16 v8, 0xa

    .line 10
    invoke-direct {v14, v12, v10, v8}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzsq;->zzj:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v10, "BUILD_TYPE_PRODPI"

    const/16 v6, 0xb

    .line 11
    invoke-direct {v12, v10, v8, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzsq;->zzk:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_PRODGO"

    const/16 v4, 0xc

    .line 12
    invoke-direct {v10, v8, v6, v4}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzsq;->zzl:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v6, "BUILD_TYPE_PRODQT"

    const/16 v2, 0xd

    .line 13
    invoke-direct {v8, v6, v4, v2}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzsq;->zzm:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v4, "BUILD_TYPE_PRODNEXT"

    move-object/from16 v16, v8

    const/16 v8, 0xf

    .line 14
    invoke-direct {v6, v4, v2, v8}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzsq;->zzn:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v2, "BUILD_TYPE_PRODRVC"

    const/16 v8, 0xe

    move-object/from16 v17, v6

    const/16 v6, 0x10

    .line 15
    invoke-direct {v4, v2, v8, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzsq;->zzo:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_BSTAR"

    const/16 v6, 0x11

    move-object/from16 v18, v4

    const/16 v4, 0xf

    .line 16
    invoke-direct {v2, v8, v4, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzsq;->zzp:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_PRODGOR"

    const/16 v6, 0x12

    move-object/from16 v19, v2

    const/16 v2, 0x10

    .line 17
    invoke-direct {v4, v8, v2, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzsq;->zzq:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_ATVR"

    const/16 v6, 0x13

    move-object/from16 v20, v4

    const/16 v4, 0x11

    .line 18
    invoke-direct {v2, v8, v4, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzsq;->zzr:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_PRODSC"

    const/16 v6, 0x14

    move-object/from16 v21, v2

    const/16 v2, 0x12

    .line 19
    invoke-direct {v4, v8, v2, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzsq;->zzs:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_PRODGOS"

    const/16 v6, 0x15

    move-object/from16 v22, v4

    const/16 v4, 0x13

    .line 20
    invoke-direct {v2, v8, v4, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzsq;->zzt:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_ATVS"

    const/16 v6, 0x16

    move-object/from16 v23, v2

    const/16 v2, 0x14

    .line 21
    invoke-direct {v4, v8, v2, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzsq;->zzu:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v8, "BUILD_TYPE_WEARABLERVC"

    const/16 v6, 0x17

    move-object/from16 v24, v4

    const/16 v4, 0x15

    .line 22
    invoke-direct {v2, v8, v4, v6}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzsq;->zzv:Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzsq;

    const-string v6, "BUILD_TYPE_AUTORVC"

    const/16 v8, 0x18

    move-object/from16 v25, v2

    const/16 v2, 0x16

    .line 23
    invoke-direct {v4, v6, v2, v8}, Lcom/google/android/gms/internal/gtm/zzsq;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzsq;->zzw:Lcom/google/android/gms/internal/gtm/zzsq;

    const/16 v2, 0x17

    new-array v2, v2, [Lcom/google/android/gms/internal/gtm/zzsq;

    const/4 v6, 0x0

    aput-object v0, v2, v6

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    const/16 v0, 0x14

    aput-object v24, v2, v0

    const/16 v0, 0x15

    aput-object v25, v2, v0

    const/16 v0, 0x16

    aput-object v4, v2, v0

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzsq;->zzy:[Lcom/google/android/gms/internal/gtm/zzsq;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzso;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzso;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsq;->zzx:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzz:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzsq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsq;->zzy:[Lcom/google/android/gms/internal/gtm/zzsq;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzsq;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzsq;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzsq;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzw:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzv:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzu:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzt:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzs:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzr:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzq:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzp:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzo:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzn:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzm:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzl:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzk:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzj:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzi:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzh:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzg:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzf:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zze:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzd:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_15
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzc:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_16
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzb:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_17
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsq;->zza:Lcom/google/android/gms/internal/gtm/zzsq;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsp;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzz:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsq;->zzz:I

    return v0
.end method
