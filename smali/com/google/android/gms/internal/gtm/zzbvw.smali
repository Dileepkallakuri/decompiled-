.class public final enum Lcom/google/android/gms/internal/gtm/zzbvw;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzbvw;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzbvw;

.field private static final zzh:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzi:[Lcom/google/android/gms/internal/gtm/zzbvw;


# instance fields
.field private final zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v1, "OS_TYPE_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbvw;->zza:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v3, "OS_TYPE_MAC"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzbvw;->zzb:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v5, "OS_TYPE_WINDOWS"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzbvw;->zzc:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v7, "OS_TYPE_ANDROID"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzbvw;->zzd:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v9, "OS_TYPE_CROS"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzbvw;->zze:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v11, "OS_TYPE_LINUX"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzbvw;->zzf:Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzbvw;

    const-string v13, "OS_TYPE_OPENBSD"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzbvw;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzbvw;->zzg:Lcom/google/android/gms/internal/gtm/zzbvw;

    const/4 v13, 0x7

    new-array v13, v13, [Lcom/google/android/gms/internal/gtm/zzbvw;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzbvw;->zzi:[Lcom/google/android/gms/internal/gtm/zzbvw;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzbvu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzbvu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzh:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzj:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzbvw;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzi:[Lcom/google/android/gms/internal/gtm/zzbvw;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzbvw;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzbvv;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/gtm/zzbvw;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzg:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzf:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zze:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzd:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzc:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzb:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zza:Lcom/google/android/gms/internal/gtm/zzbvw;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzj:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzbvw;->zzj:I

    return v0
.end method
