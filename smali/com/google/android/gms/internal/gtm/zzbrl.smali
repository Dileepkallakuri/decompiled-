.class public final enum Lcom/google/android/gms/internal/gtm/zzbrl;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzbrl;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzbrl;

.field private static final zzq:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzr:[Lcom/google/android/gms/internal/gtm/zzbrl;


# instance fields
.field private final zzs:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v1, "DEFAULT_FORMAT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbrl;->zza:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v3, "DATE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbrl;->zzb:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v5, "TIMESTAMP_SECONDS"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbrl;->zzc:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v7, "TIMESTAMP_MILLIS"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbrl;->zzd:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v9, "TIMESTAMP_MICROS"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbrl;->zze:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v11, "TIMESTAMP_NANOS"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbrl;->zzf:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v13, "DATE_DECIMAL"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzbrl;->zzg:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v15, "TIME_MICROS"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzbrl;->zzh:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v14, "DATETIME_MICROS"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzbrl;->zzi:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v12, "ST_GEOGRAPHY_ENCODED"

    const/16 v10, 0x9

    .line 10
    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzbrl;->zzj:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v10, "NUMERIC"

    const/16 v8, 0xa

    .line 11
    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzbrl;->zzk:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v8, "BIGNUMERIC"

    const/16 v6, 0xb

    .line 12
    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzbrl;->zzl:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v6, "JSON"

    const/16 v4, 0xc

    .line 13
    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzbrl;->zzm:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v4, "INTERVAL"

    const/16 v2, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0xe

    .line 14
    invoke-direct {v6, v4, v2, v8}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzbrl;->zzn:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v2, "TOKENLIST"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    .line 15
    invoke-direct {v4, v2, v8, v6}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbrl;->zzo:Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzbrl;

    const-string v8, "__FieldFormat_Type__switch_must_have_a_default__"

    move-object/from16 v18, v4

    const/4 v4, -0x1

    .line 16
    invoke-direct {v2, v8, v6, v4}, Lcom/google/android/gms/internal/gtm/zzbrl;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzbrl;->zzp:Lcom/google/android/gms/internal/gtm/zzbrl;

    const/16 v4, 0x10

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzbrl;

    const/4 v8, 0x0

    aput-object v0, v4, v8

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    aput-object v2, v4, v6

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzbrl;->zzr:[Lcom/google/android/gms/internal/gtm/zzbrl;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbrk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbrk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzq:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzs:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbrl;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzr:[Lcom/google/android/gms/internal/gtm/zzbrl;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbrl;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzq:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbrl;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzo:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzn:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzm:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzl:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzk:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzj:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzi:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzh:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzg:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzf:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zze:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzd:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzc:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzb:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zza:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzp:Lcom/google/android/gms/internal/gtm/zzbrl;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
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
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzs:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbrl;->zzs:I

    return v0
.end method
