.class public final enum Lcom/google/android/gms/internal/gtm/zzub;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzj:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzk:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzl:Lcom/google/android/gms/internal/gtm/zzub;

.field public static final enum zzm:Lcom/google/android/gms/internal/gtm/zzub;

.field private static final zzn:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzo:[Lcom/google/android/gms/internal/gtm/zzub;


# instance fields
.field private final zzp:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zza:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v3, "EXTRA_SMALL"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzub;->zzb:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v5, "SMALL"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzub;->zzc:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v7, "MEDIUM"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzub;->zzd:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v9, "LARGE"

    const/4 v10, 0x4

    .line 5
    invoke-direct {v7, v9, v10, v10}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v9, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v11, "EXTRA_LARGE"

    const/4 v12, 0x5

    .line 6
    invoke-direct {v9, v11, v12, v12}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzub;->zzf:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v11, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v13, "EXTRA_EXTRA_LARGE"

    const/4 v14, 0x6

    .line 7
    invoke-direct {v11, v13, v14, v14}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzub;->zzg:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v15, "EXTRA_EXTRA_EXTRA_LARGE"

    const/4 v14, 0x7

    .line 8
    invoke-direct {v13, v15, v14, v14}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzub;->zzh:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v15, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v14, "ACCESSIBILITY_MEDIUM"

    const/16 v12, 0x8

    .line 9
    invoke-direct {v15, v14, v12, v12}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/google/android/gms/internal/gtm/zzub;->zzi:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v12, "ACCESSIBILITY_LARGE"

    const/16 v10, 0x9

    .line 10
    invoke-direct {v14, v12, v10, v10}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzub;->zzj:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v10, "ACCESSIBILITY_EXTRA_LARGE"

    const/16 v8, 0xa

    .line 11
    invoke-direct {v12, v10, v8, v8}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzub;->zzk:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v8, "ACCESSIBILITY_EXTRA_EXTRA_LARGE"

    const/16 v6, 0xb

    .line 12
    invoke-direct {v10, v8, v6, v6}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzub;->zzl:Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzub;

    const-string v6, "ACCESSIBILITY_EXTRA_EXTRA_EXTRA_LARGE"

    const/16 v4, 0xc

    .line 13
    invoke-direct {v8, v6, v4, v4}, Lcom/google/android/gms/internal/gtm/zzub;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzub;->zzm:Lcom/google/android/gms/internal/gtm/zzub;

    const/16 v6, 0xd

    new-array v6, v6, [Lcom/google/android/gms/internal/gtm/zzub;

    aput-object v0, v6, v2

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    aput-object v8, v6, v4

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzub;->zzo:[Lcom/google/android/gms/internal/gtm/zzub;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zztz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zztz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zzn:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzp:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzub;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzub;->zzo:[Lcom/google/android/gms/internal/gtm/zzub;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzub;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzub;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzub;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzm:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzl:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzk:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzj:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzi:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzh:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzg:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzf:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zze:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzd:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_a
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzc:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_b
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zzb:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_c
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzub;->zza:Lcom/google/android/gms/internal/gtm/zzub;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzua;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzp:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzub;->zzp:I

    return v0
.end method
