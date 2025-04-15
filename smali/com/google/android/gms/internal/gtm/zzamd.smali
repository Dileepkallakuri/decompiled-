.class public final enum Lcom/google/android/gms/internal/gtm/zzamd;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzamd;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzamd;

.field public static final enum zzc:Lcom/google/android/gms/internal/gtm/zzamd;

.field private static final zzd:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zze:[Lcom/google/android/gms/internal/gtm/zzamd;


# instance fields
.field private final zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzamd;

    const-string v1, "CLOSED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/android/gms/internal/gtm/zzamd;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzamd;->zza:Lcom/google/android/gms/internal/gtm/zzamd;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzamd;

    const-string v3, "MOVED"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v1, v3, v4, v4}, Lcom/google/android/gms/internal/gtm/zzamd;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzamd;->zzb:Lcom/google/android/gms/internal/gtm/zzamd;

    new-instance v3, Lcom/google/android/gms/internal/gtm/zzamd;

    const-string v5, "REBRANDED"

    const/4 v6, 0x2

    .line 3
    invoke-direct {v3, v5, v6, v6}, Lcom/google/android/gms/internal/gtm/zzamd;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/android/gms/internal/gtm/zzamd;->zzc:Lcom/google/android/gms/internal/gtm/zzamd;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/gtm/zzamd;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/gtm/zzamd;->zze:[Lcom/google/android/gms/internal/gtm/zzamd;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzamb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzamb;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzamd;->zzd:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzamd;->zzf:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzamd;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzamd;->zze:[Lcom/google/android/gms/internal/gtm/zzamd;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzamd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzamd;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzamd;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzamd;->zzc:Lcom/google/android/gms/internal/gtm/zzamd;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzamd;->zzb:Lcom/google/android/gms/internal/gtm/zzamd;

    return-object p0

    :cond_2
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzamd;->zza:Lcom/google/android/gms/internal/gtm/zzamd;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzamc;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzamd;->zzf:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzamd;->zzf:I

    return v0
.end method
