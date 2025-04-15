.class public final enum Lcom/google/android/gms/internal/gtm/zzsn;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzsn;

.field public static final enum zzi:Lcom/google/android/gms/internal/gtm/zzsn;

.field private static final zzj:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzk:[Lcom/google/android/gms/internal/gtm/zzsn;


# instance fields
.field private final zzl:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v1, "ARCH_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v3, "ARCH_NON_NATIVE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v5, "ARCH_ARMV5"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v7, "ARCH_ARMV7"

    const/4 v8, 0x3

    const/4 v9, 0x4

    .line 4
    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v7, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v10, "ARCH_ARM64"

    const/4 v11, 0x5

    .line 5
    invoke-direct {v7, v10, v9, v11}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzsn;->zze:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v12, "ARCH_MIPS"

    const/4 v13, 0x6

    .line 6
    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzsn;->zzf:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v14, "ARCH_MIPS_64"

    const/4 v15, 0x7

    .line 7
    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzsn;->zzg:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v13, "ARCH_X86"

    const/16 v11, 0x8

    .line 8
    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzsn;->zzh:Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v13, Lcom/google/android/gms/internal/gtm/zzsn;

    const-string v15, "ARCH_X86_64"

    const/16 v9, 0x9

    .line 9
    invoke-direct {v13, v15, v11, v9}, Lcom/google/android/gms/internal/gtm/zzsn;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/android/gms/internal/gtm/zzsn;->zzi:Lcom/google/android/gms/internal/gtm/zzsn;

    new-array v9, v9, [Lcom/google/android/gms/internal/gtm/zzsn;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    const/4 v0, 0x4

    aput-object v7, v9, v0

    const/4 v0, 0x5

    aput-object v10, v9, v0

    const/4 v0, 0x6

    aput-object v12, v9, v0

    const/4 v0, 0x7

    aput-object v14, v9, v0

    aput-object v13, v9, v11

    sput-object v9, Lcom/google/android/gms/internal/gtm/zzsn;->zzk:[Lcom/google/android/gms/internal/gtm/zzsn;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzsl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzsl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzsn;->zzj:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzl:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzsn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsn;->zzk:[Lcom/google/android/gms/internal/gtm/zzsn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzsn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzsn;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzsn;
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzi:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzh:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzg:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzf:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zze:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzd:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzc:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_8
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzb:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_9
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzsn;->zza:Lcom/google/android/gms/internal/gtm/zzsn;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
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

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzsm;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzl:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzsn;->zzl:I

    return v0
.end method
