.class public final enum Lcom/google/android/gms/internal/gtm/zzabg;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzabg;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzabg;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzabg;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzabg;

.field public static final enum zze:Lcom/google/android/gms/internal/gtm/zzabg;

.field public static final enum zzf:Lcom/google/android/gms/internal/gtm/zzabg;

.field private static final zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzh:[Lcom/google/android/gms/internal/gtm/zzabg;


# instance fields
.field private final zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzabg;

    const-string v1, "RESTRICTION_UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzabg;->zza:Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzabg;

    const-string v3, "RESTRICTION_PARKING"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzabg;->zzb:Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzabg;

    const/16 v5, 0x11

    const-string v6, "RESTRICTION_STANDING"

    const/4 v7, 0x2

    .line 3
    invoke-direct {v3, v6, v7, v5}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzabg;->zzc:Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzabg;

    const/16 v6, 0x111

    const-string v8, "RESTRICTION_STOPPING"

    const/4 v9, 0x3

    .line 4
    invoke-direct {v5, v8, v9, v6}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzabg;->zzd:Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v6, Lcom/google/android/gms/internal/gtm/zzabg;

    const/16 v8, 0x12

    const-string v10, "RESTRICTION_PICKUP_GOODS"

    const/4 v11, 0x4

    .line 5
    invoke-direct {v6, v10, v11, v8}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/google/android/gms/internal/gtm/zzabg;->zze:Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v8, Lcom/google/android/gms/internal/gtm/zzabg;

    const/16 v10, 0x13

    const-string v12, "RESTRICTION_PICKUP_PASSENGERS"

    const/4 v13, 0x5

    .line 6
    invoke-direct {v8, v12, v13, v10}, Lcom/google/android/gms/internal/gtm/zzabg;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/google/android/gms/internal/gtm/zzabg;->zzf:Lcom/google/android/gms/internal/gtm/zzabg;

    const/4 v10, 0x6

    new-array v10, v10, [Lcom/google/android/gms/internal/gtm/zzabg;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    aput-object v3, v10, v7

    aput-object v5, v10, v9

    aput-object v6, v10, v11

    aput-object v8, v10, v13

    sput-object v10, Lcom/google/android/gms/internal/gtm/zzabg;->zzh:[Lcom/google/android/gms/internal/gtm/zzabg;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzabe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzabe;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzabg;->zzg:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzi:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzabg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzabg;->zzh:[Lcom/google/android/gms/internal/gtm/zzabg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzabg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzabg;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzabg;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x111

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzf:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :pswitch_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zze:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :pswitch_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzc:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzd:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzb:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzabg;->zza:Lcom/google/android/gms/internal/gtm/zzabg;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzabf;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzi:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzabg;->zzi:I

    return v0
.end method
