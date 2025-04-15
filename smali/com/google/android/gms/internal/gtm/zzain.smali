.class public final enum Lcom/google/android/gms/internal/gtm/zzain;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-analytics-impl@@18.0.2"

# interfaces
.implements Lcom/google/android/gms/internal/gtm/zzbfh;


# static fields
.field public static final enum zza:Lcom/google/android/gms/internal/gtm/zzain;

.field public static final enum zzb:Lcom/google/android/gms/internal/gtm/zzain;

.field private static final zzc:Lcom/google/android/gms/internal/gtm/zzbfi;

.field private static final synthetic zzd:[Lcom/google/android/gms/internal/gtm/zzain;


# instance fields
.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/gtm/zzain;

    const-string v1, "TYPE_PRIMARY"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/gtm/zzain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzain;->zza:Lcom/google/android/gms/internal/gtm/zzain;

    new-instance v1, Lcom/google/android/gms/internal/gtm/zzain;

    const-string v4, "TYPE_SECONDARY"

    const/4 v5, 0x2

    .line 2
    invoke-direct {v1, v4, v3, v5}, Lcom/google/android/gms/internal/gtm/zzain;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/android/gms/internal/gtm/zzain;->zzb:Lcom/google/android/gms/internal/gtm/zzain;

    new-array v4, v5, [Lcom/google/android/gms/internal/gtm/zzain;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/google/android/gms/internal/gtm/zzain;->zzd:[Lcom/google/android/gms/internal/gtm/zzain;

    new-instance v0, Lcom/google/android/gms/internal/gtm/zzail;

    invoke-direct {v0}, Lcom/google/android/gms/internal/gtm/zzail;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/gtm/zzain;->zzc:Lcom/google/android/gms/internal/gtm/zzbfi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/android/gms/internal/gtm/zzain;->zze:I

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/gtm/zzain;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/gtm/zzain;->zzd:[Lcom/google/android/gms/internal/gtm/zzain;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/gtm/zzain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/gtm/zzain;

    return-object v0
.end method

.method public static zzb(I)Lcom/google/android/gms/internal/gtm/zzain;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzain;->zzb:Lcom/google/android/gms/internal/gtm/zzain;

    return-object p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/gtm/zzain;->zza:Lcom/google/android/gms/internal/gtm/zzain;

    return-object p0
.end method

.method public static zzc()Lcom/google/android/gms/internal/gtm/zzbfj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/gtm/zzaim;->zza:Lcom/google/android/gms/internal/gtm/zzbfj;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzain;->zze:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/gtm/zzain;->zze:I

    return v0
.end method
