.class public final enum Lcom/google/android/gms/internal/gtm/zzasn;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzasn;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzasn;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzasn;

.field public static final enum zzd:Lcom/google/android/gms/internal/gtm/zzasn;

.field private static final zze:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzf:[Lcom/google/android/gms/internal/gtm/zzasn;


# instance fields
.field private final zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzasn;

    const-string v1, "STYLE_CONTIGUOUS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzasn;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzasn;->zza:Lcom/google/android/gms/internal/gtm/zzasn;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzasn;

    const-string v3, "STYLE_SINGLE"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzasn;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzasn;->zzb:Lcom/google/android/gms/internal/gtm/zzasn;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzasn;

    const-string v5, "STYLE_TURN"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzasn;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzasn;->zzc:Lcom/google/android/gms/internal/gtm/zzasn;

    new-instance v5, Lcom/google/android/gms/internal/gtm/zzasn;

    const-string v7, "STYLE_IN_OUT"

    const/4 v8, 0x3

    .line 4
    invoke-direct {v5, v7, v8, v8}, Lcom/google/android/gms/internal/gtm/zzasn;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzasn;->zzd:Lcom/google/android/gms/internal/gtm/zzasn;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/google/android/gms/internal/gtm/zzasn;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/google/android/gms/internal/gtm/zzasn;->zzf:[Lcom/google/android/gms/internal/gtm/zzasn;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzasl;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzasl;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzasn;->zze:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzg:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzasn;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzasn;->zzf:[Lcom/google/android/gms/internal/gtm/zzasn;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzasn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzasn;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzasn;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzd:Lcom/google/android/gms/internal/gtm/zzasn;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzc:Lcom/google/android/gms/internal/gtm/zzasn;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzb:Lcom/google/android/gms/internal/gtm/zzasn;

    return-object p0

    :cond_3
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzasn;->zza:Lcom/google/android/gms/internal/gtm/zzasn;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzasm;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzg:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzasn;->zzg:I

    return v0
.end method
