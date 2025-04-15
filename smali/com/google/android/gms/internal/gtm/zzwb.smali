.class public final enum Lcom/google/android/gms/internal/gtm/zzwb;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzn:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzo:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzp:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzq:Lcom/google/android/gms/internal/gtm/zzwb;

.field public static final enum zzr:Lcom/google/android/gms/internal/gtm/zzwb;

.field private static final zzs:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzt:[Lcom/google/android/gms/internal/gtm/zzwb;


# instance fields
.field private final zzu:I


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v1, "TYPE_NULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwb;->zza:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v3, "TYPE_ID"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzwb;->zzb:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v5, "TYPE_TEXT"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzwb;->zzc:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v7, "TYPE_ENUM"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzwb;->zzd:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v9, "TYPE_KEY"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzwb;->zze:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v11, "TYPE_URI"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzwb;->zzf:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v13, "TYPE_DATETIME"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzwb;->zzg:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v15, "TYPE_BOOL"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzwb;->zzh:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v14, "TYPE_INT"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzwb;->zzi:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v12, "TYPE_FLOAT"

    const/16 v10, 0x9

    .line 10
    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzwb;->zzj:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v10, "TYPE_COMPOUND"

    const/16 v8, 0xa

    .line 11
    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzwb;->zzk:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v8, "TYPE_PROTO"

    const/16 v6, 0xb

    .line 12
    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzwb;->zzl:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v6, "TYPE_EXTENSION"

    const/16 v4, 0xc

    const/16 v2, 0x10

    .line 13
    invoke-direct {v8, v6, v4, v2}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzwb;->zzm:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v2, "TYPE_NESTED_STRUCT"

    const/16 v4, 0xd

    move-object/from16 v16, v8

    const/16 v8, 0x11

    .line 14
    invoke-direct {v6, v2, v4, v8}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzwb;->zzn:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v4, "TYPE_LAT_LONG"

    const/16 v8, 0xe

    .line 15
    invoke-direct {v2, v4, v8, v8}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzwb;->zzo:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v8, "TYPE_MEASUREMENT"

    move-object/from16 v17, v2

    const/16 v2, 0xf

    .line 16
    invoke-direct {v4, v8, v2, v2}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzwb;->zzp:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v2, "TYPE_HAS_VALUE"

    move-object/from16 v18, v4

    move-object/from16 v19, v6

    const/16 v4, 0xc

    const/16 v6, 0x10

    .line 17
    invoke-direct {v8, v2, v6, v4}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzwb;->zzq:Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v2, Lcom/google/android/gms/internal/gtm/zzwb;

    const-string v4, "TYPE_HAS_NO_VALUE"

    move-object/from16 v20, v8

    const/16 v6, 0xd

    const/16 v8, 0x11

    .line 18
    invoke-direct {v2, v4, v8, v6}, Lcom/google/android/gms/internal/gtm/zzwb;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/android/gms/internal/gtm/zzwb;->zzr:Lcom/google/android/gms/internal/gtm/zzwb;

    const/16 v4, 0x12

    new-array v4, v4, [Lcom/google/android/gms/internal/gtm/zzwb;

    const/4 v6, 0x0

    aput-object v0, v4, v6

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

    aput-object v19, v4, v0

    const/16 v0, 0xe

    aput-object v17, v4, v0

    const/16 v0, 0xf

    aput-object v18, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v2, v4, v0

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzwb;->zzt:[Lcom/google/android/gms/internal/gtm/zzwb;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzvz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzvz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzwb;->zzs:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzu:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzwb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzwb;->zzt:[Lcom/google/android/gms/internal/gtm/zzwb;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzwb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzwb;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzwb;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzn:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzm:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzp:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzo:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzr:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzq:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzl:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzk:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzj:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzi:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzh:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzg:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzf:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_d
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zze:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_e
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzd:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_f
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzc:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_10
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzb:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    :pswitch_11
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzwb;->zza:Lcom/google/android/gms/internal/gtm/zzwb;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzwa;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzu:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzwb;->zzu:I

    return v0
.end method
