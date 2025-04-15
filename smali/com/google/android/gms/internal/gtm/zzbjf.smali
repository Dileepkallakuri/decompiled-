.class public final enum Lcom/google/android/gms/internal/gtm/zzbjf;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/gtm/zzbjf;",
        ">;",
        "Lcom/google/android/gms/internal/gtm/zzbfh;"
    }
.end annotation


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzbjf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzbjf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzq:Lcom/google/android/gms/internal/gtm/zzbjf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum zzr:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzs:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzt:Lcom/google/android/gms/internal/gtm/zzbjf;

.field public static final enum zzu:Lcom/google/android/gms/internal/gtm/zzbjf;

.field private static final zzv:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzw:[Lcom/google/android/gms/internal/gtm/zzbjf;


# instance fields
.field private final zzx:I


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v1, "EC_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjf;->zza:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v3, "EC_CROSS_PRODUCT_PERSONALIZATION"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbjf;->zzb:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v5, "EC_3P_SHARING_APP_FUNCTIONALITY"

    const/4 v6, 0x2

    const/16 v7, 0x9

    .line 3
    invoke-direct {v3, v5, v6, v7}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbjf;->zzc:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v8, "EC_3P_SHARING_ANALYTICS"

    const/4 v9, 0x3

    const/16 v10, 0xa

    .line 4
    invoke-direct {v5, v8, v9, v10}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbjf;->zzd:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v11, "EC_3P_SHARING_DEVELOPER_COMMS"

    const/4 v12, 0x4

    const/16 v13, 0xb

    .line 5
    invoke-direct {v8, v11, v12, v13}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzbjf;->zze:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v14, "EC_3P_SHARING_FRAUD_SECURITY_COMPLIANCE"

    const/4 v15, 0x5

    const/16 v4, 0xc

    .line 6
    invoke-direct {v11, v14, v15, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzbjf;->zzf:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v2, "EC_3P_SHARING_ADVERTISING_MARKETING"

    const/4 v4, 0x6

    const/16 v13, 0xd

    .line 7
    invoke-direct {v14, v2, v4, v13}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzbjf;->zzg:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v13, "EC_3P_SHARING_PERSONALIZATION"

    const/4 v4, 0x7

    const/16 v15, 0xe

    .line 8
    invoke-direct {v2, v13, v4, v15}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzbjf;->zzh:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v15, "EC_3P_SHARING"

    const/16 v4, 0x8

    .line 9
    invoke-direct {v13, v15, v4, v6}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzbjf;->zzi:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v6, "EC_3P_SHARING_AGGREGATED"

    .line 10
    invoke-direct {v15, v6, v7, v9}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzbjf;->zzj:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v7, "EC_ADS_DELIVERY"

    .line 11
    invoke-direct {v6, v7, v10, v12}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzbjf;->zzk:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_ADS_GENERAL_TARGETING"

    const/4 v9, 0x5

    const/16 v12, 0xb

    .line 12
    invoke-direct {v7, v10, v12, v9}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbjf;->zzl:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_ADS_PERSONALIZATION"

    const/4 v4, 0x6

    const/16 v12, 0xc

    .line 13
    invoke-direct {v9, v10, v12, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbjf;->zzm:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_ADS_MEASUREMENT"

    move-object/from16 v17, v9

    const/4 v9, 0x7

    const/16 v12, 0xd

    .line 14
    invoke-direct {v4, v10, v12, v9}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbjf;->zzn:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_ADS_EXTERNAL_INTEGRATION"

    move-object/from16 v18, v4

    const/16 v4, 0x8

    const/16 v12, 0xe

    .line 15
    invoke-direct {v9, v10, v12, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbjf;->zzo:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_DEVELOPER_COMMS"

    const/16 v12, 0xf

    .line 16
    invoke-direct {v4, v10, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbjf;->zzp:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v12, "EC_MARKETING_ENGAGEMENT_GROWTH_COMMS"

    move-object/from16 v19, v4

    const/16 v4, 0x10

    .line 17
    invoke-direct {v10, v12, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzbjf;->zzq:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v4, "EC_SEARCH_HISTORY"

    move-object/from16 v20, v10

    const/16 v10, 0x11

    .line 18
    invoke-direct {v12, v4, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzbjf;->zzr:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v10, "EC_VOICE_AND_APP_ACTIVITY_FOOTPRINTS"

    move-object/from16 v21, v12

    const/16 v12, 0x12

    .line 19
    invoke-direct {v4, v10, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbjf;->zzs:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v12, "EC_PAY_OFFERS_AND_REWARDS"

    move-object/from16 v22, v4

    const/16 v4, 0x13

    .line 20
    invoke-direct {v10, v12, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzbjf;->zzt:Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzbjf;

    const-string v4, "EC_PAY_PERSONALIZATION"

    move-object/from16 v23, v10

    const/16 v10, 0x14

    .line 21
    invoke-direct {v12, v4, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbjf;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzbjf;->zzu:Lcom/google/android/gms/internal/gtm/zzbjf;

    const/16 v4, 0x15

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzbjf;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v11, v4, v0

    const/4 v0, 0x6

    aput-object v14, v4, v0

    const/4 v0, 0x7

    aput-object v2, v4, v0

    const/16 v0, 0x8

    aput-object v13, v4, v0

    const/16 v0, 0x9

    aput-object v15, v4, v0

    const/16 v0, 0xa

    aput-object v6, v4, v0

    const/16 v0, 0xb

    aput-object v7, v4, v0

    const/16 v0, 0xc

    aput-object v17, v4, v0

    const/16 v0, 0xd

    aput-object v18, v4, v0

    const/16 v0, 0xe

    aput-object v9, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    aput-object v12, v4, v10

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbjf;->zzw:[Lcom/google/android/gms/internal/gtm/zzbjf;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbjd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzv:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzx:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbjf;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzw:[Lcom/google/android/gms/internal/gtm/zzbjf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbjf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbje;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbjf;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzu:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzt:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzs:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzr:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzq:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzp:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzh:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzg:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzf:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zze:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzd:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzc:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzo:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzn:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzm:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzl:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzk:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzj:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_12
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzi:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_13
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzb:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_14
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zza:Lcom/google/android/gms/internal/gtm/zzbjf;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzx:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbjf;->zzx:I

    return v0
.end method
