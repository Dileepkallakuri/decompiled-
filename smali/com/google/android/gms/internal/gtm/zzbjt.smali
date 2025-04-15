.class public final enum Lcom/google/android/gms/internal/gtm/zzbjt;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzbjt;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzbjt;

.field private static final zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/gtm/zzbjt;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v1, "DF_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjt;->zza:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v3, "DF_HTTPHEADER"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbjt;->zzb:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v5, "DF_COOKIE"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbjt;->zzc:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v7, "DF_URL"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbjt;->zzd:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v9, "DF_CGI_ARGS"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbjt;->zze:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v11, "DF_HOST_ORDER"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbjt;->zzf:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v13, "DF_BYTE_SWAPPED"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzbjt;->zzg:Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzbjt;

    const-string v15, "DF_LOGGING_ELEMENT_TYPE_ID"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/gtm/zzbjt;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzbjt;->zzh:Lcom/google/android/gms/internal/gtm/zzbjt;

    const/16 v15, 0x8

    new-array v15, v15, [Lcom/google/android/gms/internal/gtm/zzbjt;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzbjt;->zzj:[Lcom/google/android/gms/internal/gtm/zzbjt;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbjs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbjs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzk:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbjt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzj:[Lcom/google/android/gms/internal/gtm/zzbjt;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbjt;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbjt;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzh:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzg:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzf:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zze:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzd:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzc:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzb:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zza:Lcom/google/android/gms/internal/gtm/zzbjt;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzk:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbjt;->zzk:I

    return v0
.end method
