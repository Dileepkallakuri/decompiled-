.class public final enum Lcom/google/android/gms/internal/gtm/zzayo;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzq:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzr:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzs:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzt:Lcom/google/android/gms/internal/gtm/zzayo;

.field public static final enum zzu:Lcom/google/android/gms/internal/gtm/zzayo;

.field private static final zzv:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzw:[Lcom/google/android/gms/internal/gtm/zzayo;


# instance fields
.field private final zzx:I


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v1, "VEHICLE_TYPE_ANY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzayo;->zza:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v3, "VEHICLE_TYPE_RAIL"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzayo;->zzb:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v5, "VEHICLE_TYPE_METRO_RAIL"

    const/4 v6, 0x2

    const/16 v7, 0x11

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzayo;->zzc:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v8, 0x111

    const-string v9, "VEHICLE_TYPE_SUBWAY"

    const/4 v10, 0x3

    .line 4
    invoke-direct {v5, v9, v10, v8}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzayo;->zzd:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v9, 0x112

    const-string v11, "VEHICLE_TYPE_TRAM"

    const/4 v12, 0x4

    .line 5
    invoke-direct {v8, v11, v12, v9}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzayo;->zze:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v11, 0x113

    const-string v13, "VEHICLE_TYPE_MONORAIL"

    const/4 v14, 0x5

    .line 6
    invoke-direct {v9, v13, v14, v11}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzayo;->zzf:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v13, "VEHICLE_TYPE_HEAVY_RAIL"

    const/4 v15, 0x6

    const/16 v4, 0x12

    .line 7
    invoke-direct {v11, v13, v15, v4}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzayo;->zzg:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v2, 0x121

    const-string v15, "VEHICLE_TYPE_COMMUTER_TRAIN"

    const/4 v4, 0x7

    .line 8
    invoke-direct {v13, v15, v4, v2}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzayo;->zzh:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v15, 0x122

    const-string v4, "VEHICLE_TYPE_HIGH_SPEED_TRAIN"

    const/16 v14, 0x8

    .line 9
    invoke-direct {v2, v4, v14, v15}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzayo;->zzi:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v15, 0x123

    const-string v14, "VEHICLE_TYPE_LONG_DISTANCE_TRAIN"

    const/16 v7, 0x9

    .line 10
    invoke-direct {v4, v14, v7, v15}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzayo;->zzj:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v15, "VEHICLE_TYPE_BUS"

    const/16 v7, 0xa

    .line 11
    invoke-direct {v14, v15, v7, v6}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzayo;->zzk:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v7, 0x21

    const-string v6, "VEHICLE_TYPE_INTERCITY_BUS"

    const/16 v12, 0xb

    .line 12
    invoke-direct {v15, v6, v12, v7}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzayo;->zzl:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v7, 0x22

    const-string v12, "VEHICLE_TYPE_TROLLEYBUS"

    const/16 v10, 0xc

    .line 13
    invoke-direct {v6, v12, v10, v7}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzayo;->zzm:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v12, 0x23

    const-string v10, "VEHICLE_TYPE_SHARE_TAXI"

    move-object/from16 v17, v6

    const/16 v6, 0xd

    .line 14
    invoke-direct {v7, v10, v6, v12}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzayo;->zzn:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v12, "VEHICLE_TYPE_FERRY"

    const/16 v6, 0xe

    move-object/from16 v18, v7

    const/4 v7, 0x3

    .line 15
    invoke-direct {v10, v12, v6, v7}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzayo;->zzo:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v12, "VEHICLE_TYPE_CABLE_CAR"

    const/16 v6, 0xf

    move-object/from16 v19, v10

    const/4 v10, 0x4

    .line 16
    invoke-direct {v7, v12, v6, v10}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzayo;->zzp:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v12, 0x41

    const-string v6, "VEHICLE_TYPE_GONDOLA_LIFT"

    move-object/from16 v20, v7

    const/16 v7, 0x10

    .line 17
    invoke-direct {v10, v6, v7, v12}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzayo;->zzq:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v12, "VEHICLE_TYPE_FUNICULAR"

    const/16 v7, 0x42

    move-object/from16 v21, v10

    const/16 v10, 0x11

    .line 18
    invoke-direct {v6, v12, v10, v7}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzayo;->zzr:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v10, "VEHICLE_TYPE_SPECIAL"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    const/4 v12, 0x5

    .line 19
    invoke-direct {v7, v10, v6, v12}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzayo;->zzs:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v10, 0x51

    const-string v12, "VEHICLE_TYPE_HORSE_CARRIAGE"

    move-object/from16 v23, v7

    const/16 v7, 0x13

    .line 20
    invoke-direct {v6, v12, v7, v10}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzayo;->zzt:Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzayo;

    const-string v12, "VEHICLE_TYPE_AIRPLANE"

    const/16 v7, 0x14

    move-object/from16 v24, v6

    const/4 v6, 0x6

    .line 21
    invoke-direct {v10, v12, v7, v6}, Lcom/google/android/gms/internal/gtm/zzayo;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzayo;->zzu:Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v12, 0x15

    new-array v12, v12, [Lcom/google/android/gms/internal/gtm/zzayo;

    const/16 v16, 0x0

    aput-object v0, v12, v16

    const/4 v0, 0x1

    aput-object v1, v12, v0

    const/4 v0, 0x2

    aput-object v3, v12, v0

    const/4 v0, 0x3

    aput-object v5, v12, v0

    const/4 v0, 0x4

    aput-object v8, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    aput-object v11, v12, v6

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v2, v12, v0

    const/16 v0, 0x9

    aput-object v4, v12, v0

    const/16 v0, 0xa

    aput-object v14, v12, v0

    const/16 v0, 0xb

    aput-object v15, v12, v0

    const/16 v0, 0xc

    aput-object v17, v12, v0

    const/16 v0, 0xd

    aput-object v18, v12, v0

    const/16 v0, 0xe

    aput-object v19, v12, v0

    const/16 v0, 0xf

    aput-object v20, v12, v0

    const/16 v0, 0x10

    aput-object v21, v12, v0

    const/16 v0, 0x11

    aput-object v22, v12, v0

    const/16 v0, 0x12

    aput-object v23, v12, v0

    const/16 v0, 0x13

    aput-object v24, v12, v0

    aput-object v10, v12, v7

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzayo;->zzw:[Lcom/google/android/gms/internal/gtm/zzayo;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzaym;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzaym;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzayo;->zzv:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzx:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzayo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzayo;->zzw:[Lcom/google/android/gms/internal/gtm/zzayo;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzayo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzayo;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzayo;
    .locals 1

    const/16 v0, 0x11

    if-eq p0, v0, :cond_4

    const/16 v0, 0x12

    if-eq p0, v0, :cond_3

    const/16 v0, 0x41

    if-eq p0, v0, :cond_2

    const/16 v0, 0x42

    if-eq p0, v0, :cond_1

    const/16 v0, 0x51

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzj:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzi:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzh:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzf:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zze:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzd:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzn:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzm:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzl:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzu:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzs:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzp:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzo:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzk:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzb:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zza:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzt:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzr:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzq:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzg:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    :cond_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzc:Lcom/google/android/gms/internal/gtm/zzayo;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x111
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x121
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzayn;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzx:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzayo;->zzx:I

    return v0
.end method
