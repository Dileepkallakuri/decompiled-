.class public final enum Lcom/google/android/gms/internal/gtm/zzat;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzg:Lcom/google/android/gms/internal/gtm/zzat;

.field public static final enum zzh:Lcom/google/android/gms/internal/gtm/zzat;

.field private static final zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzj:[Lcom/google/android/gms/internal/gtm/zzat;


# instance fields
.field private final zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v1, "STRING"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v4, "LIST"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzat;->zzb:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v4, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v6, "MAP"

    const/4 v7, 0x3

    .line 3
    invoke-direct {v4, v6, v5, v7}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzat;->zzc:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v8, "MACRO_REFERENCE"

    const/4 v9, 0x4

    .line 4
    invoke-direct {v6, v8, v7, v9}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzat;->zzd:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v10, "FUNCTION_ID"

    const/4 v11, 0x5

    .line 5
    invoke-direct {v8, v10, v9, v11}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzat;->zze:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v10, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v12, "INTEGER"

    const/4 v13, 0x6

    .line 6
    invoke-direct {v10, v12, v11, v13}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzat;->zzf:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v12, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v14, "TEMPLATE"

    const/4 v15, 0x7

    .line 7
    invoke-direct {v12, v14, v13, v15}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/google/android/gms/internal/gtm/zzat;->zzg:Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v14, Lcom/google/android/gms/internal/gtm/zzat;

    const-string v13, "BOOLEAN"

    const/16 v11, 0x8

    .line 8
    invoke-direct {v14, v13, v15, v11}, Lcom/google/android/gms/internal/gtm/zzat;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/google/android/gms/internal/gtm/zzat;->zzh:Lcom/google/android/gms/internal/gtm/zzat;

    new-array v11, v11, [Lcom/google/android/gms/internal/gtm/zzat;

    aput-object v0, v11, v2

    aput-object v1, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v7

    aput-object v8, v11, v9

    const/4 v0, 0x5

    aput-object v10, v11, v0

    const/4 v0, 0x6

    aput-object v12, v11, v0

    aput-object v14, v11, v15

    sput-object v11, Lcom/google/android/gms/internal/gtm/zzat;->zzj:[Lcom/google/android/gms/internal/gtm/zzat;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzar;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzar;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzat;->zzi:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzk:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzat;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzat;->zzj:[Lcom/google/android/gms/internal/gtm/zzat;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzat;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzat;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzh:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzg:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzf:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zze:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_4
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzd:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_5
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzc:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_6
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zzb:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    :pswitch_7
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzat;->zza:Lcom/google/android/gms/internal/gtm/zzat;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzas;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzk:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzat;->zzk:I

    return v0
.end method
