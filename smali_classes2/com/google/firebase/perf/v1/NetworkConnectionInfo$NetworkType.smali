.class public final enum Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
.super Ljava/lang/Enum;
.source "NetworkConnectionInfo.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkConnectionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$NetworkTypeVerifier;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final enum BLUETOOTH:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final BLUETOOTH_VALUE:I = 0x7

.field public static final enum DUMMY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final DUMMY_VALUE:I = 0x8

.field public static final enum ETHERNET:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final ETHERNET_VALUE:I = 0x9

.field public static final enum MOBILE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final enum MOBILE_CBS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_CBS_VALUE:I = 0xc

.field public static final enum MOBILE_DUN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_DUN_VALUE:I = 0x4

.field public static final enum MOBILE_EMERGENCY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_EMERGENCY_VALUE:I = 0xf

.field public static final enum MOBILE_FOTA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_FOTA_VALUE:I = 0xa

.field public static final enum MOBILE_HIPRI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_HIPRI_VALUE:I = 0x5

.field public static final enum MOBILE_IA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_IA_VALUE:I = 0xe

.field public static final enum MOBILE_IMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_IMS_VALUE:I = 0xb

.field public static final enum MOBILE_MMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_MMS_VALUE:I = 0x2

.field public static final enum MOBILE_SUPL:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final MOBILE_SUPL_VALUE:I = 0x3

.field public static final MOBILE_VALUE:I = 0x0

.field public static final enum NONE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final NONE_VALUE:I = -0x1

.field public static final enum PROXY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final PROXY_VALUE:I = 0x10

.field public static final enum VPN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final VPN_VALUE:I = 0x11

.field public static final enum WIFI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final enum WIFI_P2P:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final WIFI_P2P_VALUE:I = 0xd

.field public static final WIFI_VALUE:I = 0x1

.field public static final enum WIMAX:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

.field public static final WIMAX_VALUE:I = 0x6

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 31
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const/4 v1, -0x1

    const-string v2, "NONE"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 35
    new-instance v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v2, "MOBILE"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 39
    new-instance v2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v5, "WIFI"

    const/4 v6, 0x2

    invoke-direct {v2, v5, v6, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIFI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 43
    new-instance v5, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v7, "MOBILE_MMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_MMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 47
    new-instance v7, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v9, "MOBILE_SUPL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_SUPL:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 51
    new-instance v9, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v11, "MOBILE_DUN"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v10}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_DUN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 55
    new-instance v11, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v13, "MOBILE_HIPRI"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v12}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_HIPRI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 59
    new-instance v13, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v15, "WIMAX"

    const/4 v12, 0x7

    invoke-direct {v13, v15, v12, v14}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIMAX:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 63
    new-instance v15, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v14, "BLUETOOTH"

    const/16 v10, 0x8

    invoke-direct {v15, v14, v10, v12}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->BLUETOOTH:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 67
    new-instance v14, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v12, "DUMMY"

    const/16 v8, 0x9

    invoke-direct {v14, v12, v8, v10}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->DUMMY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 71
    new-instance v12, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v10, "ETHERNET"

    const/16 v6, 0xa

    invoke-direct {v12, v10, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->ETHERNET:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 75
    new-instance v10, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v8, "MOBILE_FOTA"

    const/16 v4, 0xb

    invoke-direct {v10, v8, v4, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_FOTA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 79
    new-instance v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v6, "MOBILE_IMS"

    const/16 v3, 0xc

    invoke-direct {v8, v6, v3, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_IMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 83
    new-instance v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v4, "MOBILE_CBS"

    move-object/from16 v17, v8

    const/16 v8, 0xd

    invoke-direct {v6, v4, v8, v3}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_CBS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 87
    new-instance v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v3, "WIFI_P2P"

    move-object/from16 v18, v6

    const/16 v6, 0xe

    invoke-direct {v4, v3, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIFI_P2P:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 91
    new-instance v3, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v8, "MOBILE_IA"

    move-object/from16 v19, v4

    const/16 v4, 0xf

    invoke-direct {v3, v8, v4, v6}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_IA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 95
    new-instance v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v6, "MOBILE_EMERGENCY"

    move-object/from16 v20, v3

    const/16 v3, 0x10

    invoke-direct {v8, v6, v3, v4}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_EMERGENCY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 99
    new-instance v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v4, "PROXY"

    move-object/from16 v21, v8

    const/16 v8, 0x11

    invoke-direct {v6, v4, v8, v3}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->PROXY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 103
    new-instance v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const-string v3, "VPN"

    move-object/from16 v22, v6

    const/16 v6, 0x12

    invoke-direct {v4, v3, v6, v8}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->VPN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const/16 v3, 0x13

    new-array v3, v3, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    const/16 v16, 0x0

    aput-object v0, v3, v16

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v7, v3, v0

    const/4 v0, 0x5

    aput-object v9, v3, v0

    const/4 v0, 0x6

    aput-object v11, v3, v0

    const/4 v0, 0x7

    aput-object v13, v3, v0

    const/16 v0, 0x8

    aput-object v15, v3, v0

    const/16 v0, 0x9

    aput-object v14, v3, v0

    const/16 v0, 0xa

    aput-object v12, v3, v0

    const/16 v0, 0xb

    aput-object v10, v3, v0

    const/16 v0, 0xc

    aput-object v17, v3, v0

    const/16 v0, 0xd

    aput-object v18, v3, v0

    const/16 v0, 0xe

    aput-object v19, v3, v0

    const/16 v0, 0xf

    aput-object v20, v3, v0

    const/16 v0, 0x10

    aput-object v21, v3, v0

    aput-object v22, v3, v8

    aput-object v4, v3, v6

    .line 26
    sput-object v3, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->$VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    .line 229
    new-instance v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$1;

    invoke-direct {v0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$1;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 254
    iput p3, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 219
    :pswitch_0
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->VPN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 218
    :pswitch_1
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->PROXY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 217
    :pswitch_2
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_EMERGENCY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 216
    :pswitch_3
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_IA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 215
    :pswitch_4
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIFI_P2P:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 214
    :pswitch_5
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_CBS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 213
    :pswitch_6
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_IMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 212
    :pswitch_7
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_FOTA:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 211
    :pswitch_8
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->ETHERNET:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 210
    :pswitch_9
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->DUMMY:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 209
    :pswitch_a
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->BLUETOOTH:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 208
    :pswitch_b
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIMAX:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 207
    :pswitch_c
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_HIPRI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 206
    :pswitch_d
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_DUN:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 205
    :pswitch_e
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_SUPL:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 204
    :pswitch_f
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE_MMS:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 203
    :pswitch_10
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->WIFI:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 202
    :pswitch_11
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->MOBILE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    .line 201
    :pswitch_12
    sget-object p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->NONE:Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
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

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;",
            ">;"
        }
    .end annotation

    .line 226
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 239
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType$NetworkTypeVerifier;->INSTANCE:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    invoke-static {p0}, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->forNumber(I)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
    .locals 1

    .line 26
    const-class v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;
    .locals 1

    .line 26
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->$VALUES:[Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/google/firebase/perf/v1/NetworkConnectionInfo$NetworkType;->value:I

    return v0
.end method
